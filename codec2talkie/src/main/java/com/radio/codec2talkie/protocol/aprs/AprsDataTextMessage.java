package com.radio.codec2talkie.protocol.aprs;

import com.radio.codec2talkie.protocol.message.TextMessage;
import com.radio.codec2talkie.protocol.position.Position;

import java.nio.ByteBuffer;

public class AprsDataTextMessage implements AprsData {

    public String srcCallsign;
    public String dstCallsign;
    public String textMessage;

    private boolean _isValid;

    @Override
    public void fromPosition(Position position) {
        _isValid = false;
    }

    @Override
    public void fromTextMessage(TextMessage textMessage) {
        this.dstCallsign = textMessage.dst;
        this.textMessage = textMessage.text;
        _isValid = true;
    }

    @Override
    public Position toPosition() {
        return null;
    }

    @Override
    public TextMessage toTextMessage() {
        TextMessage textMessage = new TextMessage();
        textMessage.src = this.srcCallsign;
        textMessage.dst = this.dstCallsign;
        textMessage.text = this.textMessage;
        return textMessage;
    }

    @Override
    public void fromBinary(String srcCallsign, String dstCallsign, byte[] infoData) {
        _isValid = false;
        if (infoData.length < 10) return;
        this.srcCallsign = srcCallsign;
        ByteBuffer buffer = ByteBuffer.wrap(infoData);
        // callsign, trim ending spaces
        byte[] callsign = new byte[9];
        buffer.get(callsign);
        this.dstCallsign = new String(callsign).replaceAll("\\s+$", "");
        // ':' separator
        byte b = buffer.get();
        if (b != ':') return;
        // message
        byte[] message = new byte[buffer.remaining()];
        buffer.get(message);
        textMessage = new String(message);
        // TODO, message id: {xxxxx
        _isValid = true;
    }

    @Override
    public byte[] toBinary() {
        return String.format(":%-9s:%s", dstCallsign, textMessage).getBytes();
    }

    @Override
    public boolean isValid() {
        return _isValid;
    }
}