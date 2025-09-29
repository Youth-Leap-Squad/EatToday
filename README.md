# 오늘! 뭐랑? : 술-안주 페어링 커뮤니티 & 추천 서비스

<p align="center">
  <!-- 프로젝트 대표 이미지/포스터가 있다면 아래 src 교체 -->
  <img src="https://github.com/Youth-Leap-Squad/Dream-High/blob/main/src/assets/img/포스터_초안.jpg?raw=true" width="45%"/>
</p>

> 한 마디: **오늘 마실 술, 뭐랑 먹을까?** 취향 기반으로 술-안주 페어링을 추천하고, 후기와 레시피, 페어링 팁을 공유하는 커뮤니티입니다.

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

**오늘! 뭐랑?**은 사용자의 **술 취향(도수/향/바디감/탄산감/당도)**과 **상황(예산/인원/분위기/계절)**을 기반으로, 가장 잘 어울리는 **안주/요리 페어링**을 추천하고 그 결과를 **커뮤니티**에서 공유·토론할 수 있게 만든 서비스입니다.

* 🧪 **페어링 추천 엔진**: 술(소주/맥주/와인/사케/위스키 등)과 안주 태그(매콤/담백/기름짐/바삭/풍미 등) 매칭 점수 기반 추천
* 📝 **레시피/후기/사진 공유**: 누구나 요리·페어링 레시피와 맛 노트를 카드 형태로 게시
* 💬 **취향형 반응(리액션) 4종**: `술술 들어가요` · `참신해요` · `맛없어요` · `궁금해요`
* 🛡️ **안전한 커뮤니티**: 신고/블랙리스트, 운영자 승인(confirmed_yn) 로직, 버전 이력 관리
* 📅 **마이페이지**: 내가 쓴 글/댓글/북마크/팔로우, 개인 일정과 시음 기록

> 슬로건: **“오늘의 술, 딱 맞는 안주. 오늘! 뭐랑?”**

---

## 🧷 프로젝트 배경

### (1) 페어링 정보의 파편화

* 블로그/영상/커뮤니티에 정보가 흩어져 **검색 비용**이 큼 → **한 곳에서 맞춤 추천 & 후기 집계** 필요

### (2) 취향의 다양성과 설명 가능 추천

* 같은 술도 **매운맛/담백/튀김** 등 선호가 다름 → 태그 기반 **설명 가능한(Explainable)** 추천 지향

### (3) 건전한 주류 문화

* 과음 지양, **적정 음주 가이드**와 **논알콜/저알콜 대안** 제시, 안주 칼로리/영양 정보 안내(선택)

---

## 😊 조원 소개

<table style="width:100%;">
  <thead>
    <tr align="center">
      <th>팀장</th>
      <th>백엔드</th>
      <th>백엔드</th>
      <th>프론트엔드</th>
      <th>기획/데이터</th>
    </tr>
  </thead>
  <tbody>
    <tr align="center">
      <td>
        <a href="https://github.com/Yunji458" target="_blank">
          <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyNDA2MTBfMjA3%2FMDAxNzE4MDI5OTA1NzI4.RSKA7rjFVY8n4Zi2wUzlakJGgeUKq0zuiF_yhrDebTcg.hRl-TQCTrjwGayAPRsjojqpOjGPEUWvldyx2FJ5NDksg.JPEG%2F1718029903817.jpg&type=sc960_832" width="210" style="border-radius:100%" alt="김윤지"/><br/>
          <b>김윤지</b>
        </a>
      </td>
      <td>
        <a href="https://github.com/pilltong22" target="_blank">
          <img src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA1MDlfODEg%2FMDAxNjIwNDg4NTgwODUx.hjU2s6bLflkLU0IdbkIC4P8QV82sPFcUZFo2RHC1BKMg.wjzdf9woxbYPlqS-hoGefXvN-t2Ld2OaW5ocfDxRBTwg.PNG.hksong4907%2FKakaoTalk_20210509_003923593_21.png&type=ff332_332" width="210" style="border-radius:100%" alt="김진호"/><br/>
          <b>김진호</b>
        </a>
      </td>
      <td>
        <a href="https://github.com/HoodRyan" target="_blank">
          <img src="https://i.namu.wiki/i/ZogbltHyK04eTu2NPNWvK9iX3X3Rge5JmaD5y2WvuZWf_jysIij8FmDEoOUfYOnYTTD-z84nvoTZ8HHlStPwpw.webp" width="210" style="border-radius:100%" alt="배태용"/><br/>
          <b>남우경</b>
        </a>
      </td>
      <td>
        <a href="https://github.com/thdgudtjr0415" target="_blank">
          <img src="https://r2.jjalbot.com/2023/03/cBoF02SUG1.jpeg" width="210" style="border-radius:100%" alt="송형석"/><br/>
          <b>이재근</b>
        </a>
      </td>
      <td>
        <a href="https://github.com/huni2" target="_blank">
          <img src="https://mblogthumb-phinf.pstatic.net/MjAyMTA4MjJfMzMg/MDAxNjI5NTYxNTc3NDMw.7riwbpY2GBf3fDkZKRn2ZcQCr175OpO1iGvJjFbIAZ8g.QPUGevGXt5DBFDmgRV7a1_d0jbqlubauJtNCP3t9mHkg.JPEG.chooddingg/IMG_5764.JPG?type=w800" width="210" style="border-radius:100%" alt="허창훈"/><br/>
          <b>이현수수</b>
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

* **게시글/댓글/파일첨부** CRUD
* **리액션 4종(ENUM)**: `술술 들어가요` · `참신해요` · `맛없어요` · `궁금해요`
* **신고/블랙리스트**: 운영자 승인(confirmed_yn=true 시 게시글 수정 금지)

### 👤 마이페이지

* 내 페어링 기록, 즐겨찾기(북마크), 작성글/댓글/신고내역
* 알림: 즐겨찾기 메뉴 리마인드, 마감 임박 이벤트(예: 예약/행사)

### 📅 개인 일정(선택)

* 약속/모임 캘린더, 페어링 제안 초대, 체크리스트

---

## 📡 기술 스택

**Backend**: Java 17, Spring Boot 3.x, Spring MVC, Spring Security(JWT), Validation<br>
**Persistence**: **CQRS** (Command=JPA/Hibernate, Query=MyBatis), MariaDB 10.x, MySQL Driver<br>
**Infra/Dev**: Gradle, IntelliJ, Lombok, Spring DevTools, ERDCloud, DA# Modeler, Draw.io<br>
**Ops**: Linux/Ubuntu, GitHub Projects/Issues, (옵션) Nginx, Docker, (옵션) Redis Cache<br>
**Testing**: JUnit5, MockMvc, RestDocs(옵션)

Badges: ![linux](https://img.shields.io/badge/linux-%23FCC624.svg?\&style=for-the-badge\&logo=linux\&logoColor=black) ![ubuntu](https://img.shields.io/badge/ubuntu-%23E95420.svg?\&style=for-the-badge\&logo=ubuntu\&logoColor=white) ![mariadb](https://img.shields.io/badge/mariadb-%23003545.svg?\&style=for-the-badge\&logo=mariadb\&logoColor=white) ![github](https://img.shields.io/badge/github-%23181717.svg?\&style=for-the-badge\&logo=github\&logoColor=white) ![notion](https://img.shields.io/badge/notion-%23000000.svg?\&style=for-the-badge\&logo=notion\&logoColor=white)

---

## 🧱 아키텍처 & CQRS

* **Command(JPA)**: 회원가입/로그인, 게시글/댓글 생성·수정·삭제, 리액션 생성 등 **상태 변경** 처리
* **Query(MyBatis)**: 페어링 추천 결과, 게시글 목록·검색, 통계/집계, 신고내역 등 **조회 최적화**
* **도메인 규칙**: `approved(post.confirmed_yn=true)`가 되면 **수정 불가** (이력만 추가)
* **리액션 스키마 예시**: `food_post_likes(member_no, board_no, likes_type ENUM('술술 들어가요','참신해요','맛없어요','궁금해요'), PK(member_no,board_no,likes_type))`

---

## 📊 요구사항 명세서

* 문서/시트 링크: *(추가 예정)*
* 핵심 요구사항 요약

  * [R01] 술-안주 페어링 추천: 필터(술/상황/예산) 입력 → Top-N 추천
  * [R02] 게시판 CRUD + 파일업로드 + 검색 + 신고
  * [R03] 리액션 4종 ENUM 및 중복 방지(PK 복합키)
  * [R04] 운영 승인(confirmed_yn) 로직 & 수정 제한
  * [R05] 마이페이지: 작성글/댓글/북마크/일정 조회

---

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
