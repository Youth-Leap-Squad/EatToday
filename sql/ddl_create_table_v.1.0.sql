DROP TABLE IF EXISTS `secession`;
DROP TABLE IF EXISTS `member`;
DROP TABLE IF EXISTS `photo_review`;
DROP TABLE IF EXISTS `lounge`;
DROP TABLE IF EXISTS `qnd_post`;
DROP TABLE IF EXISTS `follow`;
DROP TABLE IF EXISTS `Individual_world_cup_food`;
DROP TABLE IF EXISTS `pr_file_upload`;
DROP TABLE IF EXISTS `worldcup_join_member`;
DROP TABLE IF EXISTS `role`;
DROP TABLE IF EXISTS `report_history`;
DROP TABLE IF EXISTS `food_post`;
DROP TABLE IF EXISTS `bookmark`;
DROP TABLE IF EXISTS `aibti_join_member`;
DROP TABLE IF EXISTS `world_cup`;
DROP TABLE IF EXISTS `alBTI`;
DROP TABLE IF EXISTS `alcohol`;
DROP TABLE IF EXISTS `photo_review_comment`;
DROP TABLE IF EXISTS `eventFood`;
DROP TABLE IF EXISTS `report`;
DROP TABLE IF EXISTS `worldcup_alcohol`;
DROP TABLE IF EXISTS `dm_file_upload`;
DROP TABLE IF EXISTS `direct_message`;
DROP TABLE IF EXISTS `food_post_likes`;
DROP TABLE IF EXISTS `login`;
DROP TABLE IF EXISTS `food_comment`;
DROP TABLE IF EXISTS `world_cup_picks`;
DROP TABLE IF EXISTS `albti_output`;

CREATE TABLE `role` (
                        role_no INT NOT NULL AUTO_INCREMENT COMMENT '권한번호',
                        role_name VARCHAR(255) NOT NULL COMMENT '권한명',
                        CONSTRAINT `PK_role` PRIMARY KEY (role_no)
) ENGINE=INNODB COMMENT '권한 정보';

CREATE TABLE `member` (
                          member_no INT NOT NULL AUTO_INCREMENT COMMENT '회원번호',
                          member_role_no INT NOT NULL COMMENT '권한번호',
                          member_id VARCHAR(255) NOT NULL COMMENT '아이디',
                          member_pw VARCHAR(255) NOT NULL COMMENT '비밀번호',
                          member_name VARCHAR(255) NOT NULL COMMENT '회원명',
                          member_birth VARCHAR(255) NOT NULL COMMENT '생년월일',
                          member_status VARCHAR(255) NOT NULL DEFAULT 'normal' COMMENT '회원상태',
                          member_active BOOLEAN NOT NULL DEFAULT TRUE COMMENT '회원 활동여부',
                          member_at VARCHAR(255) NOT NULL DEFAULT 0 COMMENT '계정 생성일',
                          member_level VARCHAR(255) NOT NULL DEFAULT '브론즈' COMMENT '회원등급',
                          CONSTRAINT PK_member PRIMARY KEY (member_no),
                          CONSTRAINT FK_member_role FOREIGN KEY (member_role_no) REFERENCES role(role_no)
) ENGINE=INNODB COMMENT '회원 정보';

CREATE TABLE `secession` (
                             member_no INT NOT NULL COMMENT '회원번호',
                             secession_at VARCHAR(255) NOT NULL DEFAULT 0 COMMENT '탈퇴 일자',
                             CONSTRAINT FK_SECESSION_MEMBER FOREIGN KEY (member_no)REFERENCES member(member_no)
) ENGINE=INNODB COMMENT '탈퇴 회원 정보';

CREATE TABLE `photo_review` (
                                review_no     INT NOT NULL AUTO_INCREMENT,
                                board_no      INT NOT NULL,
                                review_title  VARCHAR(255)  NOT NULL,
                                review_data   VARCHAR(255) NOT NULL,
                                review_content VARCHAR(255) NOT NULL,
                                review_like   INT NOT NULL,
                                CONSTRAINT PK_photo_review PRIMARY KEY (review_no),
                                CONSTRAINT FK_pr_board FOREIGN KEY (board_no) REFERENCES food_post(board_no)
)ENGINE=INNODB COMMENT '사진 리뷰';


CREATE TABLE `lounge` (
                          review_no  INT NOT NULL,
                          alcohol_no INT NOT NULL,
                          CONSTRAINT PK_lounge PRIMARY KEY (review_no, alcohol_no),
                          CONSTRAINT FK_lounge_review  FOREIGN KEY (review_no)  REFERENCES photo_review(review_no),
                          CONSTRAINT FK_lounge_alcohol FOREIGN KEY (alcohol_no) REFERENCES alcohol(alcohol_no)
)ENGINE=INNODB COMMENT '라운지';

CREATE TABLE `qnd_post` (
                            qna_post_no INT NOT NULL AUTO_INCREMENT COMMENT '문의사항 번호',
                            member_no INT NOT NULL COMMENT '문의자',
                            inquiry_content VARCHAR(255) NOT NULL COMMENT '문의 내용',
                            inquiry_at VARCHAR(255) NOT NULL DEFAULT 0 COMMENT '작성 일자',
                            CONSTRAINT PK_qnd_post PRIMARY KEY (qna_post_no),
                            CONSTRAINT FK_qnd_post_member FOREIGN KEY (member_no) REFERENCES member (member_no)
) ENGINE=INNODB COMMENT '문의사항 게시글';


CREATE TABLE `follow` (
                          following INT NOT NULL DEFAULT 0 COMMENT '팔로잉',
                          follower INT NOT NULL DEFAULT 0 COMMENT '팔로워',
                          CONSTRAINT FK_follow_following FOREIGN KEY (following) REFERENCES member(member_no),
                          CONSTRAINT FK_follow_follower  FOREIGN KEY (follower)  REFERENCES member(member_no)
) ENGINE=INNODB COMMENT '팔로잉';


CREATE TABLE `Individual_world_cup_food` (
                                             `Individual_food` VARCHAR(255) NOT NULL AUTO_INCREMENT,
                                             `worldcup_no` INT NOT NULL,
                                             `food_no` INT NOT NULL,
                                             CONSTRAINT PK_INDIVIDUAL_FOOD PRIMARY KEY(Individual_food),
                                             CONSTRAINT FK_WORLDCUP_NO     FOREIGN KEY(worldcup_no) REFERENCES worldcup(worldcup_no),
                                             CONSTRAINT FK_FOOD_NO     FOREIGN KEY(food_no) REFERENCES eventfood(food_no)
)ENGINE=INNODB COMMENT '개인별 월드컵 각각의 게임의 안주';

CREATE TABLE `pr_file_upload` (
                                  pr_file_no   INT NOT NULL AUTO_INCREMENT,
                                  pr_file_name VARCHAR(255) NOT NULL,
                                  pr_file_type VARCHAR(255) NOT NULL,
                                  pr_file_rename VARCHAR(255) NOT NULL,
                                  pr_file_path VARCHAR(255) NOT NULL,
                                  pr_file_at   VARCHAR(255) NOT NULL,
                                  review_no    INT NOT NULL,
                                  CONSTRAINT PK_pr_file_upload PRIMARY KEY (pr_file_no),
                                  CONSTRAINT FK_prfile_review FOREIGN KEY (review_no) REFERENCES photo_review(review_no)
)ENGINE=INNODB COMMENT '사진 리뷰 파일 업로드';


CREATE TABLE `worldcup_join_member` (
                                        `worldcup_join_member_no` INT NOT NULL AUTO_INCREMENT,
                                        `worldcup_no` INT NOT NULL,
                                        `member_no` INT NOT NULL,
                                        CONSTRAINT PK_WORLDCUP_JOIN_MEMBER_NO PRIMARY KEY(worldcup_join_member_no),
                                        CONSTRAINT FK_MESSAGE_NO_MEMBER_NO FOREIGN KEY(worldcup_no) REFERENCES worldcup(worldcup_no),
                                        CONSTRAINT FK_MESSAGE_NO_MEMBER_NO FOREIGN KEY(member_no) REFERENCES member(member_no)
)ENGINE=INNODB COMMENT '주간 월드컵 게임 참여회원';

CREATE TABLE IF NOT EXISTS `report_history` (
                                                `report_no` INT NOT NULL,
                                                `member_no` INT NOT NULL,
                                                `report_count` INT DEFAULT 0,
                                                CONSTRAINT PK_report_history PRIMARY KEY (report_no, member_no),
    CONSTRAINT FK_report_history_REPORT FOREIGN KEY (report_no) REFERENCES report(report_no)
    ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_report_history_MEMBER FOREIGN KEY (member_no) REFERENCES member(member_no)
    ON UPDATE CASCADE ON DELETE CASCADE
    ) ENGINE=INNODB COMMENT '게시글 신고이력';

CREATE TABLE `food_post` (
                             `board_no` INT NOT NULL AUTO_INCREMENT,
                             `alcohol_no` INT NOT NULL,
                             `borad_title` VARCHAR(255) NOT NULL,
                             `board_content` VARCHAR(255) NOT NULL,
                             `food_explain` VARCHAR(255) NOT NULL,
                             `member_no` VARCHAR(255) NOT NULL,
                             `food_picture` VARCHAR(255),
                             `board_date` VARCHAR(255) NOT NULL,
                             `board_seq` INT NOT NULL DEFAULT 0,
                             `confirmed_yn` BOOLEAN NOT NULL DEFAULT FALSE,
                             CONSTRAINT PK_FOOD_POST  PRIMARY KEY (board_no),
                             CONSTRAINT FK_FOOD_POST_MEMBER  FOREIGN KEY (alcohol_no) REFERENCES alcohol(alcohol_no)
) ENGINE=INNODB COMMENT '안주 게시글';


CREATE TABLE `bookmark` (
                            `favorites` INT NOT NULL AUTO_INCREMENT,
                            `member_no` INT NOT NULL,
                            `board_no` INT NOT NULL,
                            CONSTRAINT PK_BOOKMARK  PRIMARY KEY (favorites),
                            CONSTRAINT FK_BOOKMARK_MEMBER  FOREIGN KEY (member_no) REFERENCES member(member_no),
                            CONSTRAINT FK_BOOKMARK_FOOD_POST  FOREIGN KEY (board_no) REFERENCES food_post(board_no)
) ENGINE=INNODB COMMENT '즐겨찾기';

CREATE TABLE `albti_join_member` (
                                     alBIT_member_no INT NOT NULL AUTO_INCREMENT,
                                     member_no       INT NOT NULL,
                                     alBTI_no        INT NOT NULL,
                                     CONSTRAINT PK_albti_join_member PRIMARY KEY (alBIT_member_no),
                                     CONSTRAINT FK_ajm_member FOREIGN KEY (member_no) REFERENCES member(member_no),
                                     CONSTRAINT FK_ajm_albti  FOREIGN KEY (alBTI_no)  REFERENCES alBTI(alBTI_no)
)ENGINE=INNODB COMMENT '술BTI게임 참여회원';

CREATE TABLE `world_cup` (
                             worldcup_no           INT NOT NULL AUTO_INCREMENT,
                             worldcup_start_date   VARCHAR(255) NOT NULL,
                             worldcup_finish_date  VARCHAR(255) NOT NULL,
                             worldcup_winning_food VARCHAR(255) NOT NULL,
                             CONSTRAINT PK_WORLD_CUP PRIMARY KEY (worldcup_no)
)ENGINE=INNODB COMMENT '주간월드컵 게임';


CREATE TABLE `alBTI` (
                         alBTI_no      INT NOT NULL AUTO_INCREMENT,
                         alBTI_category VARCHAR(255) NOT NULL,
                         alBTI_detail   VARCHAR(255) NOT NULL,
                         alcohol_no     INT NOT NULL,
                         CONSTRAINT PK_alBTI PRIMARY KEY (alBTI_no),
                         CONSTRAINT FK_albti_alcohol FOREIGN KEY (alcohol_no) REFERENCES alcohol(alcohol_no)
)ENGINE=INNODB COMMENT '술BTI';


CREATE TABLE `alcohol` (
                           `alcohol_no` INT NOT NULL AUTO_INCREMENT,
                           `alcohol_type` INT NOT NULL,
                           `alcohol_explain` VARCHAR(255) NOT NULL,
                           `alcohol_picture` VARCHAR(255) NOT NULL,
                           CONSTRAINT PK_ALCOHOL PRIMARY KEY (alcohol_no)
) ENGINE=INNODB COMMENT '술';

CREATE TABLE `photo_review_comment` (
                                        pr_no     INT NOT NULL AUTO_INCREMENT,
                                        pr_detail VARCHAR(255) NOT NULL,
                                        pr_at     VARCHAR(255) NOT NULL,
                                        review_no INT NOT NULL,
                                        pr_deleted BOOLEAN NOT NULL,
                                        CONSTRAINT PK_photo_review_comment PRIMARY KEY (pr_no),
                                        CONSTRAINT FK_prc_review FOREIGN KEY (review_no) REFERENCES photo_review(review_no)
)ENGINE=INNODB COMMENT '사진리뷰댓글';



CREATE TABLE `eventFood` (
                             `food_no` INT NOT NULL AUTO_INCREMENT,
                             `board_no` INT NOT NULL,
                             `food_content` VARCHAR(255) NOT NULL,
                             `num_of_wins` INT NOT NULL DEFAULT 0,
                             CONSTRAINT PK_EVENT_FOOD  PRIMARY KEY (food_no,board_no),
                             CONSTRAINT FK_EVENT_FOOD_FOOD_POST FOREIGN KEY (board_no) REFERENCES food_post(board_no)
) ENGINE=INNODB COMMENT '이벤트안주';

CREATE TABLE IF NOT EXISTS `report` (
                                        `report_no` INT NOT NULL AUTO_INCREMENT,
                                        `member_no` INT NOT NULL,
                                        `member_no2` INT NOT NULL,
                                        `report_title` VARCHAR(255) NOT NULL,
    `report_content` VARCHAR(255) NOT NULL,
    `report_yn` BOOLEAN DEFAULT FALSE,
    `report_date` VARCHAR(255) NOT NULL,
    `report_source` VARCHAR(255) NOT NULL,
    CONSTRAINT PK_REPORT PRIMARY KEY (report_no),
    CONSTRAINT FK_REPORT_MEMBER2 FOREIGN KEY (member_no2) REFERENCES member(member_no)
    ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK_REPORT_MEMBER FOREIGN KEY (member_no) REFERENCES member(member_no)
    ON UPDATE CASCADE ON DELETE CASCADE
    ) ENGINE=INNODB COMMENT '신고';

CREATE TABLE `worldcup_alcohol` (
                                    `worldcup_alcohol_no` INT NOT NULL AUTO_INCREMENT,
                                    `alcohol_no` INT NOT NULL,
                                    `worldcup_no` INT NOT NULL,
                                    CONSTRAINT PK_WORLDCUP_ALCOHOL  PRIMARY KEY (worldcup_alcohol_no,alcohol_no,worldcup_no),
                                    CONSTRAINT FK_WORLDCUP_ALCOHOL_ALCOHOL FOREIGN KEY (alcohol_no) REFERENCES alcohol(alcohol_no),
                                    CONSTRAINT FK_WORLDCUP_ALCOHOL_WORLDCUP FOREIGN KEY (worldcup_no) REFERENCES worldcup(worldcup_no)
) ENGINE=INNODB COMMENT '월드컵술';

CREATE TABLE `dm_file_upload` (
                                  `dm_file_no` INT NOT NULL AUTO_INCREMENT,
                                  `dm_file_name` VARCHAR(255) NOT NULL,
                                  `dm_file_type` VARCHAR(255) NOT NULL,
                                  `dm_file_rename` VARCHAR(255) NOT NULL,
                                  `dm_file_path` VARCHAR(255) NOT NULL,
                                  `dm_file_at` VARCHAR(255) NOT NULL,
                                  `key` INT NOT NULL,
                                  CONSTRAINT  PK_DM_FILE_UPLOAD  PRIMARY KEY (dm_file_no),
                                  CONSTRAINT  FK_DM_FILE_UPLOAD_DIRECT_MESSAGE  FOREIGN KEY (key) REFERENCES direct_message(message_no)
)ENGINE=INNODB COMMENT 'DM파일업로드';

CREATE TABLE `direct_message` (
                                  `message_no` INT NOT NULL AUTO_INCREMENT,
                                  `send_member_id` VARCHAR(255) NOT NULL,
                                  `recive_member_id` VARCHAR(255) NOT NULL,
                                  `dm_content` VARCHAR(255) NOT NULL,
                                  `dm_date` VARCHAR(255) NOT NULL,
                                  `dm_read` BOOLEAN NOT NULL DEFAULT 'n' COMMENT '메세지 읽음 여부' CHECK(dm_read IN ('y', 'n')),
                                  CONSTRAINT PK_MESSAGE_NO PRIMARY KEY (message_no),
                                  CONSTRAINT FK_MESSAGE_NO_MEMBER_NO FOREIGN KEY(send_member_id) REFERENCES member(member_no),
                                  CONSTRAINT FK_MESSAGE_NO_MEMBER_NO FOREIGN KEY(recive_member_id) REFERENCES member(member_no)
)ENGINE=INNODB COMMENT 'DM';


CREATE TABLE `food_post_likes` (
                                   `member_no` INT NOT NULL,
                                   `board_no` INT NOT NULL,
                                   `likes_type` VARCHAR(255) NOT NULL,
                                   `likes_count` INT,
                                   CONSTRAINT PK_FOOD_LIKES PRIMARY KEY(member_no,board_no),
                                   CONSTRAINT FK_FOOD_POST_LIKES_MEMBER  FOREIGN KEY (member_no) REFERENCES member(member_no),
                                   CONSTRAINT FK_FOOD_POST_LIKES_FOOD_POST  FOREIGN KEY (board_no) REFERENCES food_post(board_no)
) ENGINE=INNODB COMMENT '안주게시글반응';


CREATE TABLE `login` (
                         record_id INT NOT NULL AUTO_INCREMENT COMMENT '내역 번호 ',
                         member_no INT NOT NULL COMMENT '회원 번호',
                         last_login_time VARCHAR(255) NOT NULL DEFAULT 0 COMMENT '마지막 로그인 시각',
                         CONSTRAINT PK_login PRIMARY KEY (record_id),
                         CONSTRAINT FK_login_member FOREIGN KEY (member_no) REFERENCES member (member_no)
) ENGINE=INNODB COMMENT '로그인 내역';

CREATE TABLE `food_comment` (
                                `member_no` INT NOT NULL,
                                `board_no` INT NOT NULL,
                                `fc_content` VARCHAR(255) NOT NULL,
                                `fc_date` VARCHAR(255) NOT NULL,
                                CONSTRAINT PK_FOOD_COMMENT PRIMARY KEY(member_no,board_no),
                                CONSTRAINT FK_FOOD_COMMENT_MEMBER  FOREIGN KEY (member_no) REFERENCES member(member_no),
                                CONSTRAINT FK_FOOD_COMMENT_FOOD_POST  FOREIGN KEY (board_no) REFERENCES food_post(board_no)
) ENGINE=INNODB COMMENT '안주게시글댓글';


CREATE TABLE `world_cup_picks` (
                                   `world_cup_picks_no` INT NOT NULL AUTO_INCREMENT,
                                   `worldcup_join_member_no` INT NOT NULL,
                                   `worldcup_alcohol_no` INT NOT NULL,
                                   `Individual_food` INT NOT NULL,
                                   CONSTRAINT PK_WORLD_CUP_PICKS  PRIMARY KEY (world_cup_picks_no,worldcup_join_member_no,worldcup_alcohol_no,Individual_food),
                                   CONSTRAINT FK_WORLD_CUP_PICKS_MEMBER FOREIGN KEY (worldcup_join_member_no) REFERENCES worldcup_join_member(worldcup_join_member_no),
                                   CONSTRAINT FK_WORLD_CUP_PICKS_ALCOHOL FOREIGN KEY (worldcup_alcohol_no) REFERENCES worldcup_alcohol(worldcup_alcohol_no),
                                   CONSTRAINT FK_WORLD_CUP_PICKS_INDIVIDUAL_FOOD FOREIGN KEY (Individual_food) REFERENCES Individual_world_cup_food(Individual_food)
) ENGINE=INNODB COMMENT '월드컵별 회원이 고른 술과 안주';

CREATE TABLE `albti_output` (
                                alBTI_no           INT NOT NULL,
                                alBTI_alcohol_explain VARCHAR(255) NOT NULL,
                                board_no           INT NOT NULL,
                                CONSTRAINT PK_albti_output PRIMARY KEY (alBTI_no, board_no),
                                CONSTRAINT FK_albtiout_albti FOREIGN KEY (alBTI_no) REFERENCES alBTI(alBTI_no),
                                CONSTRAINT FK_albtiout_board FOREIGN KEY (board_no) REFERENCES food_post(board_no)
)ENGINE=INNODB COMMENT '개인별 술BTI 설문 결과(술 출력)';
