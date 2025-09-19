DROP TABLE IF EXISTS `secession`;
CREATE TABLE `secession` (
                             `member_no` VARCHAR(255) NOT NULL,
                             `secession_at` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
                          `member_no` VARCHAR(255) NOT NULL,
                          `member_role_no` VARCHAR(255) NOT NULL,
                          `member_id` VARCHAR(255) NOT NULL,
                          `member_pw` VARCHAR(255) NOT NULL,
                          `member_name` VARCHAR(255) NOT NULL,
                          `member_birth` VARCHAR(255) NOT NULL,
                          `member_status` VARCHAR(255) NOT NULL,
                          `member_active` VARCHAR(255) NOT NULL,
                          `member_at` VARCHAR(255) NOT NULL,
                          `member_level` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
                          `Key` VARCHAR(255) NOT NULL,
                          `notification_id` VARCHAR(255) NOT NULL,
                          `sender_id` VARCHAR(255) NOT NULL,
                          `type` VARCHAR(255),
                          `is_read` VARCHAR(255)
);

DROP TABLE IF EXISTS `photo_review`;
CREATE TABLE `photo_review` (
                                `review_no` VARCHAR(255) NOT NULL,
                                `board_no` VARCHAR(255) NOT NULL,
                                `riview_title` VARCHAR(255) NOT NULL,
                                `review_data` VARCHAR(255) NOT NULL,
                                `review_content` VARCHAR(255) NOT NULL,
                                `review_like` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `lounge`;
CREATE TABLE `lounge` (
                          `review_no` VARCHAR(255) NOT NULL,
                          `alcohol_no` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `qnd_post`;
CREATE TABLE `qnd_post` (
                            `Key` VARCHAR(255) NOT NULL,
                            `member_no` VARCHAR(255) NOT NULL,
                            `Inquiry_content` VARCHAR(255) NOT NULL,
                            `Inquiry_at` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `follow`;
CREATE TABLE `follow` (
                          `Following` VARCHAR(255) NOT NULL,
                          `follower` VARCHAR(255) NOT NULL,
                          `member_no` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `Individual_world_cup_food`;
CREATE TABLE `Individual_world_cup_food` (
                                             `Individual_food` VARCHAR(255) NOT NULL,
                                             `worldcup_no` VARCHAR(255) NOT NULL,
                                             `food_no` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `pr_file_upload`;
CREATE TABLE `pr_file_upload` (
                                  `pr_file_no` VARCHAR(255) NOT NULL,
                                  `pr_file_name` VARCHAR(255) NOT NULL,
                                  `pr_file_type` VARCHAR(255) NOT NULL,
                                  `pr_file_rename` VARCHAR(255) NOT NULL,
                                  `pr_file_path` VARCHAR(255) NOT NULL,
                                  `pr_file_at` VARCHAR(255) NOT NULL,
                                  `review_no` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `worldcup_join_member`;
CREATE TABLE `worldcup_join_member` (
                                        `worldcup_join_member_no` VARCHAR(255) NOT NULL,
                                        `worldcup_no` VARCHAR(255) NOT NULL,
                                        `member_no` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
                        `role_no` VARCHAR(255) NOT NULL,
                        `role_name` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `reportHistory`;
CREATE TABLE `reportHistory` (
                                 `report_no` VARCHAR(255) NOT NULL,
                                 `member_no` VARCHAR(255) NOT NULL,
                                 `report_count` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `food_post`;
CREATE TABLE `food_post` (
                             `board_no` VARCHAR(255) NOT NULL,
                             `alcohol_no2` VARCHAR(255) NOT NULL,
                             `borad_title` VARCHAR(255) NOT NULL,
                             `board_content` VARCHAR(255) NOT NULL,
                             `food_explain` VARCHAR(255) NOT NULL,
                             `member_no` VARCHAR(255) NOT NULL,
                             `food_picture` VARCHAR(255),
                             `board_date` VARCHAR(255) NOT NULL,
                             `board_seq` VARCHAR(255) NOT NULL,
                             `confirmed_yn` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `bookmark`;
CREATE TABLE `bookmark` (
                            `favorites` VARCHAR(255) NOT NULL,
                            `member_no` VARCHAR(255) NOT NULL,
                            `board_no` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `aibti_join_member`;
CREATE TABLE `aibti_join_member` (
                                     `alBIT_member_no` VARCHAR(255) NOT NULL,
                                     `member_no` VARCHAR(255) NOT NULL,
                                     `alBTI_no` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `worldCup`;
CREATE TABLE `worldCup` (
                            `worldcup_no` VARCHAR(255) NOT NULL,
                            `worldcup_start_date` VARCHAR(255) NOT NULL,
                            `worldcup_finish_date` VARCHAR(255) NOT NULL,
                            `winningfood` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `alBTI`;
CREATE TABLE `alBTI` (
                         `alBTI_no` VARCHAR(255) NOT NULL,
                         `alBTI_category` VARCHAR(255) NOT NULL,
                         `alBTI_detail` VARCHAR(255) NOT NULL,
                         `alcohol_no` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `alcohol`;
CREATE TABLE `alcohol` (
                           `alcohol_no` VARCHAR(255) NOT NULL,
                           `alcohol_type` VARCHAR(255) NOT NULL,
                           `alcohol_explain` VARCHAR(255) NOT NULL,
                           `alcohol_picture` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `photo_review_comment`;
CREATE TABLE `photo_review_comment` (
                                        `pr_no` VARCHAR(255) NOT NULL,
                                        `pr_detail` VARCHAR(255) NOT NULL,
                                        `pr_at` VARCHAR(255) NOT NULL,
                                        `review_no` VARCHAR(255) NOT NULL,
                                        `pr_deleted` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `eventFood`;
CREATE TABLE `eventFood` (
                             `food_no` VARCHAR(255) NOT NULL,
                             `board_no` VARCHAR(255) NOT NULL,
                             `food_content` VARCHAR(255) NOT NULL,
                             `num_of_wins` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `report`;
CREATE TABLE `report` (
                          `report_no` VARCHAR(255) NOT NULL,
                          `member_no2` VARCHAR(255) NOT NULL,
                          `member_no` VARCHAR(255) NOT NULL,
                          `report_title` VARCHAR(255) NOT NULL,
                          `report_content` VARCHAR(255) NOT NULL,
                          `report_yn` VARCHAR(255) NOT NULL,
                          `report_date` VARCHAR(255) NOT NULL,
                          `report_source` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `worldcup_alcohol`;
CREATE TABLE `worldcup_alcohol` (
                                    `worldcup_alcohol_no` VARCHAR(255) NOT NULL,
                                    `alcohol_no` VARCHAR(255) NOT NULL,
                                    `worldcup_no` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `dm_file_upload`;
CREATE TABLE `dm_file_upload` (
                                  `dm_file_no` VARCHAR(255) NOT NULL,
                                  `dm_file_name` VARCHAR(255) NOT NULL,
                                  `dm_file_type` VARCHAR(255) NOT NULL,
                                  `dm_file_rename` VARCHAR(255) NOT NULL,
                                  `dm_file_path` VARCHAR(255) NOT NULL,
                                  `dm_file_at` VARCHAR(255) NOT NULL,
                                  `Key` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `direct_message`;
CREATE TABLE `direct_message` (
                                  `message_no` VARCHAR(255) NOT NULL,
                                  `member_id` VARCHAR(255) NOT NULL,
                                  `code2` VARCHAR(255) NOT NULL,
                                  `dm_content` VARCHAR(255) NOT NULL,
                                  `dm_date` VARCHAR(255) NOT NULL,
                                  `dm_read` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `food_post_likes`;
CREATE TABLE `food_post_likes` (
                                   `member_no` VARCHAR(255) NOT NULL,
                                   `board_no` VARCHAR(255) NOT NULL,
                                   `likes_type` VARCHAR(255) NOT NULL,
                                   `likes_` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
                         `record_id` VARCHAR(255) NOT NULL,
                         `last_login_time` VARCHAR(255) NOT NULL,
                         `member_no` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `division`;
CREATE TABLE `division` (
                            `division_no` VARCHAR(255) NOT NULL,
                            `division` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `food_comment`;
CREATE TABLE `food_comment` (
                                `member_no` VARCHAR(255) NOT NULL,
                                `board_no` VARCHAR(255) NOT NULL,
                                `fc_content` VARCHAR(255) NOT NULL,
                                `fc_date` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `world_cup_picks`;
CREATE TABLE `world_cup_picks` (
                                   `world_cup_picks_no` VARCHAR(255) NOT NULL,
                                   `worldcup_join_member_no` VARCHAR(255) NOT NULL,
                                   `worldcup_alcohol_no` VARCHAR(255) NOT NULL,
                                   `Individual_food` VARCHAR(255) NOT NULL
);

DROP TABLE IF EXISTS `albti_output`;
CREATE TABLE `albti_output` (
                                `alBTI_no` VARCHAR(255) NOT NULL,
                                `alBTI_alcohol_explain` VARCHAR(255) NOT NULL,
                                `board_no` VARCHAR(255) NOT NULL
);

-- 이후 ALTER TABLE 구문 그대로 붙여서 실행
ALTER TABLE `member` ADD CONSTRAINT `PK_MEMBER` PRIMARY KEY (`member_no`);
ALTER TABLE `notice` ADD CONSTRAINT `PK_NOTICE` PRIMARY KEY (`Key`);
ALTER TABLE `photo_review` ADD CONSTRAINT `PK_PHOTO_REVIEW` PRIMARY KEY (`review_no`);
ALTER TABLE `qnd_post` ADD CONSTRAINT `PK_QND_POST` PRIMARY KEY (`Key`);
ALTER TABLE `Individual_world_cup_food` ADD CONSTRAINT `PK_INDIVIDUAL_WORLD_CUP_FOOD` PRIMARY KEY (`Individual_food`);
ALTER TABLE `pr_file_upload` ADD CONSTRAINT `PK_PR_FILE_UPLOAD` PRIMARY KEY (`pr_file_no`);
ALTER TABLE `worldcup_join_member` ADD CONSTRAINT `PK_WORLDCUP_JOIN_MEMBER` PRIMARY KEY (`worldcup_join_member_no`);
ALTER TABLE `role` ADD CONSTRAINT `PK_ROLE` PRIMARY KEY (`role_no`);
ALTER TABLE `food_post` ADD CONSTRAINT `PK_FOOD_POST` PRIMARY KEY (`board_no`);
ALTER TABLE `bookmark` ADD CONSTRAINT `PK_BOOKMARK` PRIMARY KEY (`favorites`);
ALTER TABLE `aibti_join_member` ADD CONSTRAINT `PK_AIBTI_JOIN_MEMBER` PRIMARY KEY (`alBIT_member_no`);
ALTER TABLE `worldCup` ADD CONSTRAINT `PK_WORLDCUP` PRIMARY KEY (`worldcup_no`);
ALTER TABLE `alBTI` ADD CONSTRAINT `PK_ALBTI` PRIMARY KEY (`alBTI_no`);
ALTER TABLE `alcohol` ADD CONSTRAINT `PK_ALCOHOL` PRIMARY KEY (`alcohol_no`);
ALTER TABLE `photo_review_comment` ADD CONSTRAINT `PK_PHOTO_REVIEW_COMMENT` PRIMARY KEY (`pr_no`);
ALTER TABLE `eventFood` ADD CONSTRAINT `PK_EVENTFOOD` PRIMARY KEY (`food_no`);
ALTER TABLE `report` ADD CONSTRAINT `PK_REPORT` PRIMARY KEY (`report_no`);
ALTER TABLE `worldcup_alcohol` ADD CONSTRAINT `PK_WORLDCUP_ALCOHOL` PRIMARY KEY (`worldcup_alcohol_no`);
ALTER TABLE `dm_file_upload` ADD CONSTRAINT `PK_DM_FILE_UPLOAD` PRIMARY KEY (`dm_file_no`);
ALTER TABLE `direct_message` ADD CONSTRAINT `PK_DIRECT_MESSAGE` PRIMARY KEY (`message_no`);
ALTER TABLE `food_post_likes` ADD CONSTRAINT `PK_FOOD_POST_LIKES` PRIMARY KEY (`member_no`, `board_no`);
ALTER TABLE `login` ADD CONSTRAINT `PK_LOGIN` PRIMARY KEY (`record_id`);
ALTER TABLE `division` ADD CONSTRAINT `PK_DIVISION` PRIMARY KEY (`division_no`);
ALTER TABLE `world_cup_picks` ADD CONSTRAINT `PK_WORLD_CUP_PICKS` PRIMARY KEY (`world_cup_picks_no`);

ALTER TABLE `food_post_likes` ADD CONSTRAINT `FK_member_TO_food_post_likes_1`
    FOREIGN KEY (`member_no`) REFERENCES `member` (`member_no`);

ALTER TABLE `food_post_likes` ADD CONSTRAINT `FK_food_post_TO_food_post_likes_1`
    FOREIGN KEY (`board_no`) REFERENCES `food_post` (`board_no`);