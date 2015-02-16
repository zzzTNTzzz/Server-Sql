DROP EVENT IF EXISTS removeDamagedBikes;
CREATE EVENT removeDamagedBikes
ON SCHEDULE EVERY 1 DAY
COMMENT 'Removes bikes with damaged tires'
DO
DELETE FROM object_data WHERE (classname = "Old_bike_TK_INS_EP1" or classname = "MMT_CIV") and (hitpoints like "%[\"wheel_1_damper\",1]%" and hitpoints like "%[\"wheel_2_damper\",1]%");
