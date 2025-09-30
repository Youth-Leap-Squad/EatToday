# 오늘! 뭐랑? : 술-안주 페어링 커뮤니티 & 추천 서비스

<p align="center">
  <!-- 프로젝트 대표 이미지/포스터가 있다면 아래 src 교체 -->
  <img src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/%ED%8F%AC%EC%8A%A4%ED%84%B0_%EC%9C%84%EC%95%84%EB%9E%98%20%EC%9E%90%EB%A5%B8%20%EB%B2%84%EC%A0%84.jpg" width="45%"/>
</p>


<h1>오늘의 술, 딱 맞는 안주. 오늘! 뭐랑?</h1>

> **오늘 마실 술, 뭐랑 먹을까?** 취향 기반으로 술-안주 페어링을 추천하고, 후기와 레시피, 페어링 팁을 공유하는 커뮤니티입니다.

---

## 📖 목차

#### [📌 프로젝트 소개](#-프로젝트-소개)  <br>

#### [🧷 프로젝트 배경](#-프로젝트-배경)  <br>

#### [😊 조원 소개](#-조원-소개)  <br>

#### [⭐ 주요 기능](#-주요-기능)  <br>

#### [🛠️ 기술 스택](#-기술-스택)  <br>

#### [🧱 아키텍처 & CQRS](#-아키텍처--cqrs)  <br>

#### [📊 요구사항 명세서](#-요구사항-명세서)  <br>

#### [🔗 UML](#-uml)  <br>

#### [📋 테스트 CASE](#-테스트-case) <br>

#### [📊 DB 설계](#-db-설계)  <br>

#### [📑 테이블 정의서](#-테이블-정의서)  <br>

#### [🎞 Replication](#-replication)  <br>

#### [🔭 동료 평가](#-동료-평가)  <br>

---

## 📌 **프로젝트 소개**

**오늘! 뭐랑?** 은 사용자의 **술 취향**과 **상황**을 기반으로, 가장 잘 어울리는 **안주/요리 페어링**을 추천하고 그 결과를 **커뮤니티**에서 공유·토론할 수 있게 만든 서비스입니다.
<br>
* 🧪 **페어링 추천 엔진**: 술(소주/맥주/와인/사케/위스키 등)과 안주 태그(매콤/담백/기름짐/바삭/풍미 등) 매칭 점수 기반 추천
<br><br>
* 📝 **레시피/후기/사진 공유**: 누구나 요리·페어링 레시피와 맛 노트를 카드 형태로 게시
<br><br>
* 💬 **취향형 반응(리액션) 4종**: `술술 들어가요` · `참신해요` · `맛없어요` · `궁금해요`
<br><br>
* 🛡️ **안전한 커뮤니티**: 신고/블랙리스트, 운영자 승인 로직, 버전 이력 관리
<br><br>
* 📅 **SNS 기능**: 내가 쓴 글/댓글/북마크/팔로우, 개인 일정과 시음 기록
<br><br>
  
   

---

## 🧷 프로젝트 배경

<div style="display: flex; justify-content: center; gap: 20px;">
  <img src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/%EC%88%A0%20%EA%B5%AC%EB%8F%85%20%EC%84%9C%EB%B9%84%EC%8A%A4%20%EC%9D%B4%EC%9A%A9%20%EA%B3%A0%EA%B0%9D%20%EB%B9%84%EC%A4%91%20%EC%A6%9D%EA%B0%80(20,30%EB%8C%80).jpg?raw=true" width="400" />
  <img src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/%ED%99%88%EC%88%A0%20%ED%8A%B8%EB%A0%8C%EB%93%9C_%EC%88%98%EC%A0%95%EB%B3%B8.jpg?raw=true" width="400" />
</div>


### (1). 20‧30대 술 구독 서비스 증가 → 다양한 술과 안주에 대한 관심 증가

* 구독 서비스로 접하는 새로운 주류가 많아지면서, 소비자들은 어떤 안주와 조합해야 할지 고민이 늘어남.

### (2). 홈술 / 혼술 트렌드 → 집에서 즐길 수 있는 술-안주 페어링 수요 증가

* 집에서 혼자 또는 소규모로 술을 즐기는 문화 확산 → 간편하지만 잘 어울리는 안주 정보 필요.

### (3). 후기·레시피 공유 니즈 증가 → 커뮤니티 기반 페어링 플랫폼 필요

*  사용자들은 단순히 먹고 마시는 것을 넘어서 직접 경험을 공유하고 싶어 함.

*  SNS, 블로그 등 파편화된 정보 대신 한 곳에서 후기·레시피·페어링 팁을 교류할 수 있는 장이 부족함.

---

## 😊 조원 소개

<table style="width:100%;">
  <thead>
    <tr align="center">
      <th>팀원</th>
      <th>팀원</th>
      <th>팀원</th>
      <th>팀원</th>
      <th>팀원</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td>
        <a href="https://github.com/Yunji458" target="_blank">
          <img src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/%EC%9D%B4%EA%B5%AC%EB%A1%9C.jpg" width="210" style="border-radius:100%" alt="김윤지"/><br/>
          <b>김윤지</b>
        </a>
      </td>
      <td>
        <a href="https://github.com/pilltong22" target="_blank">
          <img src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/%ED%95%98%EC%BF%A0%EC%A7%80.jpg" width="210" style="border-radius:100%" alt="김진호"/><br/>
          <b>김진호</b>
        </a>
      </td>
      <td>
        <a href="https://github.com/HoodRyan" target="_blank">
          <img src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/%EA%B5%90%EB%A9%94%EC%9D%B4_%EC%9A%B0%E3%85%95%E3%84%B1%E3%85%87.jpg" width="210" style="border-radius:100%" alt="배태용"/><br/>
          <b>남우경</b>
        </a>
      </td>
      <td>
        <a href="https://github.com/thdgudtjr0415" target="_blank">
          <img src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/%EC%A0%A0%EC%9D%B4%EC%B8%A0.jpg" width="210" style="border-radius:100%" alt="송형석"/><br/>
          <b>이재근</b>
        </a>
      </td>
      <td>
        <a href="https://github.com/huni2" target="_blank">
          <img src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/%ED%98%84%EC%88%98_%EC%9D%B4%EB%85%B8%EC%8A%A4%EC%BC%80.jpg" width="210" style="border-radius:100%" alt="허창훈"/><br/>
          <b>이현수</b>
        </a>
      </td>
    </tr>
  </tbody>
</table>

---

## ⭐ 주요 기능

### 🧪 추천 & 탐색

* **즉석 추천**: 술 선택 → 상황(예산/인원/분위기) → 안주 후보 TOP5 + 설명

* **카테고리 브라우즈**: 술 종류/조리법/맛 태그/지역 안주 필터


* **설명 가능한 추천**: 매칭 근거(향/지방/매운맛 등 점수) 배지 표기

### 📰 커뮤니티

* **게시글/댓글/파일첨부**
  
* **리액션 4종**: `술술 들어가요` · `참신해요` · `맛없어요` · `궁금해요`
  
* **신고/블랙리스트**: 운영자 승인시 게시글 게시 / 신고 일정 횟수시 활동정지

### 📸 SNS

* 내 페어링 기록, 즐겨찾기(북마크), 작성글/댓글/신고내역
  
* 알림: 즐겨찾기 메뉴 리마인드, 마감 임박 이벤트(예: 예약/행사)

### 🎉 이벤트

* **술BTI**: 
* **월드컵 게임**: 

---


## 📡 기술 스택

### Backend
![Java 17](https://img.shields.io/badge/Java%2017-007396?style=for-the-badge&logo=openjdk&logoColor=white)
![Spring Boot](https://img.shields.io/badge/Spring%20Boot%203.5-6DB33F?style=for-the-badge&logo=springboot&logoColor=white)
![Spring Security](https://img.shields.io/badge/Spring%20Security-6DB33F?style=for-the-badge&logo=springsecurity&logoColor=white)
![Spring Data JPA](https://img.shields.io/badge/Spring%20Data%20JPA-59666C?style=for-the-badge&logo=hibernate&logoColor=white)
![Hibernate](https://img.shields.io/badge/Hibernate-59666C?style=for-the-badge&logo=hibernate&logoColor=white)
![MariaDB](https://img.shields.io/badge/MariaDB-003545?style=for-the-badge&logo=mariadb&logoColor=white)
![JWT](https://img.shields.io/badge/JWT-black?style=for-the-badge&logo=jsonwebtokens&logoColor=white)

### Test & Docs
![Postman](https://img.shields.io/badge/Postman-FF6C37?style=for-the-badge&logo=postman&logoColor=white)


###  Tools & Collaboration
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)
![Notion](https://img.shields.io/badge/Notion-000000?style=for-the-badge&logo=notion&logoColor=white)
![Discord](https://img.shields.io/badge/Discord-5865F2?style=for-the-badge&logo=discord&logoColor=white)
![Figma](https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white)
![ERD_Cloud](https://img.shields.io/badge/ERD_Cloud-4A90E2?style=for-the-badge&logo=cloud&logoColor=white)
![IntelliJ](https://img.shields.io/badge/IntelliJIDEA-4CAF50.svg?style=for-the-badge&logo=intellij-idea&logoColor=white)
![HeidiSQL](https://img.shields.io/badge/HeidiSQL-4479A1?style=for-the-badge&logo=mysql&logoColor=white)

<br>


## 🧱 아키텍처 & CQRS

* **Command(JPA)**: 회원가입/로그인, 게시글/댓글 생성·수정·삭제, 리액션 생성 등 **상태 변경** 처리
  
* **Query(MyBatis)**: 페어링 추천 결과, 게시글 목록·검색, 통계/집계, 신고내역 등 **조회 최적화**
  
* **도메인 규칙**: `approved(post.confirmed_yn=true)`가 되면 **수정 불가** (이력만 추가)
  
* **리액션 스키마 예시**: `food_post_likes(member_no, board_no, likes_type ENUM('술술 들어가요','참신해요','맛없어요','궁금해요'), PK(member_no,board_no,likes_type))`

---

## 📋 관리 및 계획 (Management & Planning)

### WBS [상세보기](https://docs.google.com/spreadsheets/d/1wRZSPEhjhj0SsW3NB7papSM6vu2WulmTOoR9Q8WDOJY/edit?gid=0#gid=0)
<details>
  <summary><b>WBS</b></summary>
<img width="1714" height="1863" alt="KakaoTalk_20250911_120034881" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS%2C%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C%2C%20ERD%2C%20DDD%20%EB%93%B1%EB%93%B1/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EA%B8%B0%EB%8A%A5%20%EB%AA%85%EC%84%B8%EC%84%9C_1.png" />

<img width="1714" height="1863" alt="KakaoTalk_20250911_120034881" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS%2C%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C%2C%20ERD%2C%20DDD%20%EB%93%B1%EB%93%B1/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EA%B8%B0%EB%8A%A5%20%EB%AA%85%EC%84%B8%EC%84%9C_2.png" />

<img width="1714" height="1863" alt="KakaoTalk_20250911_120034881" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS%2C%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C%2C%20ERD%2C%20DDD%20%EB%93%B1%EB%93%B1/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EA%B8%B0%EB%8A%A5%20%EB%AA%85%EC%84%B8%EC%84%9C_3.png" />
</details>


### 요구사항 기능 명세서 [상세보기](https://docs.google.com/spreadsheets/d/1wRZSPEhjhj0SsW3NB7papSM6vu2WulmTOoR9Q8WDOJY/edit?gid=0#gid=0)
<details>
  <summary><b>요구사항 명세서</b></summary>
<img width="1714" height="1863" alt="KakaoTalk_20250911_120034881" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS%2C%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C%2C%20ERD%2C%20DDD%20%EB%93%B1%EB%93%B1/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EA%B8%B0%EB%8A%A5%20%EB%AA%85%EC%84%B8%EC%84%9C_1.png" />

<img width="1714" height="1863" alt="KakaoTalk_20250911_120034881" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS%2C%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C%2C%20ERD%2C%20DDD%20%EB%93%B1%EB%93%B1/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EA%B8%B0%EB%8A%A5%20%EB%AA%85%EC%84%B8%EC%84%9C_2.png" />

<img width="1714" height="1863" alt="KakaoTalk_20250911_120034881" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS%2C%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C%2C%20ERD%2C%20DDD%20%EB%93%B1%EB%93%B1/%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EA%B8%B0%EB%8A%A5%20%EB%AA%85%EC%84%B8%EC%84%9C_3.png" />
</details>

---

## 🗂️ 데이터 및 구조 (Data & Structure)

### ERD [상세보기](https://docs.google.com/spreadsheets/d/1wRZSPEhjhj0SsW3NB7papSM6vu2WulmTOoR9Q8WDOJY/edit?gid=0#gid=0)
<details>
  <summary><b>ERD</b></summary>
<img width="1714" height="1863" alt="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS%2C%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C%2C%20ERD%2C%20DDD%20%EB%93%B1%EB%93%B1/ERD.png" />
</details>


## 🔗 UML

* 유스케이스/클래스/시퀀스 다이어그램: *(이미지/링크 추가 예정)*

---

## 📋 테스트 CASE

* 테스트 케이스 시트: *(링크 추가 예정)*
* GIF 시연 (예시 경로 유지)

  * 로그인 / 회원가입 / 게시글 CRUD / 파일첨부 / 신고 / 리액션 / 검색

---

## 📊 DB 설계

* 논리/물리 ERD: *(이미지 연결 예정)*
* 핵심 테이블(요약)

  * `member`, `role`, `post`, `post_file`, `post_comment`, `food_post_likes`, `report`, `report_history`, `bookmark`
  * 제약: `food_post_likes`는 **삼중 PK**로 중복 리액션 방지, `post.confirmed_yn` 승인 후 수정 금지

---

## 📑 테이블 정의서

* DA# 산출물 이미지 / 표: *(추가 예정)*

---

## 🎞 Replication

* MariaDB Master-Slave Replication 구성으로 **읽기 부하 분산** 및 **백업 안정성** 확보
* 앱 레이어에서 **쓰기=Master / 읽기=Slave** 라우팅 (MyBatis 주 조회 바인딩 권장)

---

## 🔭 동료 평가

* 프로젝트 종료 후 팀원 피드백 정리 예정

---

### 📎 부록: API 스케치(요약)

```http
POST   /api/auth/login
POST   /api/auth/signup

GET    /api/pairings?drink=soju&tags=매콤,바삭&budget=20000

GET    /api/posts?category=pairing&query=치킨
POST   /api/posts
PUT    /api/posts/{id}      // confirmed_yn=true 면 409
DELETE /api/posts/{id}

POST   /api/posts/{id}/files
GET    /api/posts/{id}/comments
POST   /api/posts/{id}/comments

POST   /api/posts/{id}/likes   // likes_type in {술술 들어가요, 참신해요, 맛없어요, 궁금해요}

POST   /api/reports
GET    /api/reports/pending     // report_yn = 0

GET    /api/me/profile
GET    /api/me/bookmarks
```
