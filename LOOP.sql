DELIMITER $$
DROP PROCEDURE IF EXISTS insert_data $$
CREATE PROCEDURE insert_data(IN p_cur INT, IN p_max INT)
BEGIN
    WHILE p_cur <= p_max do
        INSERT INTO `test_table`(`id`, `data`,`ip`) VALUES (p_cur, NOW(), '192.168.0.1');
        SET p_cur = p_cur + 1;
    END WHILE;
    COMMIT;
END; $$
DELIMITER ;
CALL insert_data(1,1000);
