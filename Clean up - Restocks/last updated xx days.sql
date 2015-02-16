DELETE FROM `object_data`
WHERE `LastUpdated` < DATE_SUB(CURRENT_TIMESTAMP, INTERVAL 20 DAY)
AND `Classname`
NOT REGEXP 'land|storage|shed|bench|wall|floor|fence|pump|wood|hrescue|stick|pole|generator|panel|house|rack|bag|stand|barrel|canvas|wire|hedgehog|net|trap|ramp|fort|sand|scaffold';