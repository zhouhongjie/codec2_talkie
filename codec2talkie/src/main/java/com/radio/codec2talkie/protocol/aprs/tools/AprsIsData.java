package com.radio.codec2talkie.protocol.aprs.tools;

import android.util.Log;

import kotlin.text.Regex;
import kotlin.text.RegexOption;

public class AprsIsData {
    public String src;
    public String dst;
    public String path;
    public String data;

    public static AprsIsData fromString(String textData) {
        AprsIsData aprsIsData = new AprsIsData();
        // N0CALL>PATH:DATA
        String[] callsignData = textData.split(">");
        if (callsignData.length < 2) return null;
        aprsIsData.src = callsignData[0];
        // PATH:DATA
        String[] digipathData = joinTail(callsignData, ">", ".*").split(":");
        if (digipathData.length < 2) return null;
        // DST,PATH1,PATH2,...
        String[] path = digipathData[0].split(",");
        if (path.length == 0) return null;
        aprsIsData.dst = path[0];
        aprsIsData.path = joinTail(path, ",", "^WIDE.+$");
        aprsIsData.data = joinTail(digipathData, ":", ".*");
        return aprsIsData;
    }

    private static String joinTail(String[] data, String separator, String filterRegex) {
        StringBuilder result = new StringBuilder();
        if (data.length < 2) return result.toString();
        String[] tail = new String[data.length - 1];
        System.arraycopy(data, 1, tail, 0, data.length - 1);
        String sep = "";
        Regex regex = new Regex(filterRegex, RegexOption.DOT_MATCHES_ALL);
        for (String p : tail) {
            if (regex.matches(filterRegex)) {
                result.append(sep);
                result.append(p);
                sep = separator;
            }
        }
        return result.toString();
    }
}
