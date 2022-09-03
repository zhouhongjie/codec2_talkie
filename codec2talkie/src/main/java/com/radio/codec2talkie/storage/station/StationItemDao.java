package com.radio.codec2talkie.storage.station;

import androidx.lifecycle.LiveData;
import androidx.room.Dao;
import androidx.room.Insert;
import androidx.room.OnConflictStrategy;
import androidx.room.Query;
import androidx.room.Update;

import java.util.List;

@Dao
public interface StationItemDao {

    @Insert(onConflict = OnConflictStrategy.IGNORE)
    void insertStationItem(StationItem stationItem);

    @Update(onConflict = OnConflictStrategy.IGNORE)
    void updateStationItem(StationItem stationItem);

    @Query("SELECT * FROM StationItem WHERE srcCallsign = :srcCallsign")
    StationItem getStationItem(String srcCallsign);

    @Query("SELECT * FROM StationItem ORDER BY srcCallsign ASC")
    LiveData<List<StationItem>> getAllStationItems();

    @Query("DELETE FROM StationItem WHERE srcCallsign = :srcCallsign")
    void deleteStationItemsFromCallsign(String srcCallsign);

    @Query("DELETE FROM StationItem WHERE timestampEpoch < :timestamp")
    void deleteStationItemsOlderThanTimestamp(long timestamp);

    @Query("DELETE FROM StationItem")
    void deleteAllStationItems();
}