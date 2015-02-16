DROP EVENT IF EXISTS removeAbandonedVehicles;
CREATE EVENT removeAbandonedVehicles
ON SCHEDULE EVERY 1 DAY
COMMENT 'Removes vehicles that have been abandoned'
DO
DELETE FROM object_data WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 8 DAY) AND `Datestamp` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 7 DAY) AND ((classname = "Old_bike_TK_INS_EP1" or classname = "MMT_CIV") or (fuel <> 0.0000));