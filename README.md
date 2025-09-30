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
* 🛡️ **안전한 커뮤니티**: 신고/블랙리스트, 운영자 승인 게시물 업로드 로직, 버전 이력 관리
<br><br>
* 📅 **SNS 기능**: 내가 쓴 글/댓글/즐겨찾기/팔로우, 사진 리뷰와 라운지 기능
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
        <a href="https://github.com/woo-kyoung-nam" target="_blank">
          <img src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/%EA%B5%90%EB%A9%94%EC%9D%B4_%EC%9A%B0%E3%85%95%E3%84%B1%E3%85%87.jpg" width="210" style="border-radius:100%" alt="배태용"/><br/>
          <b>남우경</b>
        </a>
      </td>
      <td>
        <a href="https://github.com/leejaeguen" target="_blank">
          <img src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/%EC%A0%A0%EC%9D%B4%EC%B8%A0.jpg" width="210" style="border-radius:100%" alt="송형석"/><br/>
          <b>이재근</b>
        </a>
      </td>
      <td>
        <a href="https://github.com/golealda" target="_blank">
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

* **즉석 추천**: 술 종류 선택 → 안주 후보 (조회순/최신순) 탐색 가능 

* **카테고리 브라우즈**: 술 종류/조리법/맛 태그/지역 안주 필터

* **설명 가능한 추천**: 매칭 근거(향/지방/매운맛 등 점수) 배지 표기

### 📰 커뮤니티

* **게시글/댓글/파일첨부/라운지**: 자유로운 정보 공유와 참여
  
* **리액션 4종**: `술술 들어가요` · `참신해요` · `맛없어요` · `궁금해요`
  
* **신고/블랙리스트**: 운영자 승인시 게시글 게시 / 신고 일정 횟수시 활동정지

### 📸 SNS

* 내 페어링 기록, 즐겨찾기(북마크), 작성글/댓글/신고내역
  
* **사진 리뷰/라운지**: 다른 사용자에게 추천받은 안주에 대한 리뷰 / 리뷰들을 한눈에 볼 수 있는 라운지 기능

### 🎉 이벤트

* **술BTI**:  설문 기반으로 주량·주종 성향을 재미있게 알아보는 테스트
* 
* **월드컵 게임**: 후보(술/안주)를 토너먼트 방식으로 선택해 최종 우승자 결정 -> 랭킹으로 조회 가능

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
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS,%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C,%20ERD,%20DDD%20%EB%93%B1%EB%93%B1/WBS.png?raw=true" />
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
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS%2C%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C%2C%20ERD%2C%20DDD%20%EB%93%B1%EB%93%B1/ERD.png" />
</details>

---
## 🏗️ 설계 및 아키텍처 (Design & Architecture)

### DDD [상세보기](https://miro.com/app/board/uXjVJM9P4HM=/?share_link_id=369149134500)
<details>
  <summary><b>DDD</b></summary>
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS%2C%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C%2C%20ERD%2C%20DDD%20%EB%93%B1%EB%93%B1/ERD.png" />
</details>

---
## 🔌 인터페이스 및 API (Interfaces & APIs)

### REST API 문서 [상세보기]()
<details>
  <summary><b>DM</b></summary>
- DM 추가
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/postman/DM/DM-%EC%B6%94%EA%B0%80.png" />

- DM 삭제
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/postman/DM/DM-%EC%82%AD%EC%A0%9C.png" />
</details>

<details>
  <summary><b>게시글</b></summary>
- 안주 추가
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/postman/%EA%B2%8C%EC%8B%9C%EA%B8%80/%EC%95%88%EC%A3%BC%20%EC%B6%94%EA%B0%80.png" />

- 반응 추가
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/postman/%EA%B2%8C%EC%8B%9C%EA%B8%80/%EB%B0%98%EC%9D%91%20%EC%B6%94%EA%B0%80.png" />
</details>

<details>
  <summary><b>라운지</b></summary>
- 라운지 조회(좋아요 순)
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/postman/%EB%9D%BC%EC%9A%B4%EC%A7%80/%EB%9D%BC%EC%9A%B4%EC%A7%80%20%EC%A1%B0%ED%9A%8C(%EC%A2%8B%EC%95%84%EC%9A%94%20%EC%88%9C).png" />

- 라운지 조회(술 종류 별)
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/postman/%EB%9D%BC%EC%9A%B4%EC%A7%80/%EB%9D%BC%EC%9A%B4%EC%A7%80%20%EC%A1%B0%ED%9A%8C(%EC%88%A0%20%EC%A2%85%EB%A5%98%20%EB%B3%84).png" />
</details>

<details>
  <summary><b>문의사항</b></summary>
- 문의사항 등록
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/postman/%EB%AC%B8%EC%9D%98%EC%82%AC%ED%95%AD/%EB%AC%B8%EC%9D%98%20%EB%93%B1%EB%A1%9D.png" />

- 문의사항 수정
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/postman/%EB%AC%B8%EC%9D%98%EC%82%AC%ED%95%AD/%EB%AC%B8%EC%9D%98%EC%82%AC%ED%95%AD%20%EC%88%98%EC%A0%95.png" />
</details>

<details>
  <summary><b>사진리뷰</b></summary>
- 
<img width="1714" height="1863" src="" />

- 
<img width="1714" height="1863" src="" />
</details>

<details>
  <summary><b>사진리뷰댓글</b></summary>
- 
<img width="1714" height="1863" src="" />

- 
<img width="1714" height="1863" src="" />
</details>

<details>
  <summary><b>신고</b></summary>
- 
<img width="1714" height="1863" src="" />

- 
<img width="1714" height="1863" src="" />
</details>

<details>
  <summary><b>이벤트</b></summary>
- 
<img width="1714" height="1863" src="" />

- 
<img width="1714" height="1863" src="" />
</details>

<details>
  <summary><b>팔로우</b></summary>
- 
<img width="1714" height="1863" src="" />

- 
<img width="1714" height="1863" src="" />
</details>

<details>
  <summary><b>회원, 관리자</b></summary>
- 
<img width="1714" height="1863" src="" />

- 
<img width="1714" height="1863" src="" />
</details>

<details>
  <summary><b>테스트 케이스</b></summary>
- 
<img width="1714" height="1863" src="" />

- 
<img width="1714" height="1863" src="" />
</details>








---
## ✅ 테스트 및 품질 (Testing & Quality Assurance)

### TEST 코드 
<details>
  <summary><b>POSTMAN</b></summary>
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS%2C%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C%2C%20ERD%2C%20DDD%20%EB%93%B1%EB%93%B1/ERD.png" />

  <summary><b>POSTMAN</b></summary>
<img width="1714" height="1863" src="https://github.com/Youth-Leap-Squad/EatToday_store/blob/main/src/assets/img/WBS%2C%20%EC%9A%94%EA%B5%AC%EC%82%AC%ED%95%AD%20%EB%AA%85%EC%84%B8%EC%84%9C%2C%20ERD%2C%20DDD%20%EB%93%B1%EB%93%B1/ERD.png" />
  
</details>





---



## 🎞 Replication

* MariaDB Master-Slave Replication 구성으로 **읽기 부하 분산** 및 **백업 안정성** 확보
* 앱 레이어에서 **쓰기=Master / 읽기=Slave** 라우팅 (MyBatis 주 조회 바인딩 권장)

---

## 🔭 회고록

|   조원 이름	| 회고  	 |
|---	|-------|
|   **김윤지**   | 조장으로서 부족한 점이 많았지만, 팀원들이 적극적으로 따라와 주고 협력해 준 덕분에 프로젝트를 잘 마무리할 수 있었습니다. 이번 프로젝트에서는 처음 보는 기술들을 사용하며 많은 것을 배웠고, 이를 통해 앞으로 있을 프로젝트에서도 더 효과적으로 적용하고 개선할 수 있는 자신감을 얻었습니다. 무엇보다 팀워크와 소통의 중요성을 다시 한 번 느꼈고, 함께 노력한 경험이 큰 자산이 되었습니다. 비욘드 캠프, 화이팅! SpecGuard, 파이팅! |
|   **김진호**   | 이번 프로젝트에서 나는 Spring Security 기반 인증·인가와 SpecGuard 제출 파이프라인을 맡았다. 회원 가입·로그인 시 JWT 발급과 검증 로직을 구현해 보안 체계를 세웠고, OAuth2.0 소셜 로그인을 성공적으로 붙여 사용자 경험을 개선했다. 제출 파이프라인은 이력서 제출 시 크롤링·자격증 검증·NLP 분석을 자동으로 수행하도록 이벤트 기반으로 설계했으며, 초기 병목 구조를 단순화하고 스케줄러를 개선해 안정성을 높였다.진행 과정에서 @Async 동작 한계를 뒤늦게 깨닫고 비동기 로직을 재설계해야 했고, 통합 테스트 부족으로 팀 코드에 영향을 준 점은 아쉬움으로 남는다. Kafka 같은 메시지 브로커를 도입하지 못해 확장성 면에서도 아쉬웠지만, 대신 이벤트 아키텍처와 동시성 제어에 대한 실제 경험을 쌓을 수 있었다. 무엇보다 협력적인 팀 분위기 덕분에 끝까지 지치지 않고 완주할 수 있었고, 이번 경험은 안정적인 인증 체계와 자동화된 프로세스를 직접 구현한 값진 배움으로 남았다. |
|   **남우경**   | 이번 프로젝트는 제가 처음 경험한 비교적 큰 규모의 작업이었고, 이를 통해 전체적인 큰 틀과 흐름을 이해하는 데 큰 도움을 얻을 수 있었습니다. 또한 처음 접하는 기술 스택들이 많아 다양한 지식을 새롭게 습득할 수 있었습니다. 다만 시간이 촉박해 설계를 빠르게 마무리하다 보니 개발 과정에서 일부 허점이 드러났고, 이를 통해 설계의 중요성을 다시 한번 깊이 깨닫게 되었습니다. 개발 과정 중 가장 기억에 남는 점은 크롤링 성능 향상을 위해 비동기 처리를 적용하는 과정에서 Windows의 EventLoop와 Playwright 간의 호환성 문제를 겪었을 때입니다. 이를 별도의 Thread를 활용하여 해결하면서 성능을 약 8배 향상시켰고, 큰 성취감을 느낄 수 있었습니다. 앞으로 진행할 프로젝트들에서 이번 프로젝트를 하면서 느낀 점들과 배운 점들을 잊지 않고 계속해서 활용하고 발전해 나가겠습니다. 다들 고생하셨습니다~! |
|   **이재근**   | 	 특히 백엔드(Spring Boot)와 파이썬(FastAPI) 마이크로서비스를 처음으로 연동하면서 많은 시행착오를 겪었습니다. 그러나 API 요청과 응답이 잘 맞지 않아 여러 번 에러가 발생했음에도 불구하고, 원인을 하나씩 찾아 해결하는 과정을 통해 데이터 흐름과 서비스 구조를 더욱 깊이 이해할 수 있었습니다. 또한 협업 면에서는 Git 브랜치 전략을 지키며 개발을 진행한 것이 큰 도움이 되었습니다. 처음에는 브랜치를 세분화하는 일이 다소 번거롭게 느껴졌지만, 시간이 지남에 따라 충돌이 줄고 작업 내역을 훨씬 더 체계적으로 관리할 수 있다는 장점을 체감했습니다. 더불어 프론트엔드(Vue)와의 연동 과정에서도 예상치 못한 오류가 자주 발생했지만, 팀원들과 적극적으로 소통하면서 문제를 해결해 나간 덕분에 협업 능력 역시 크게 성장할 수 있었습니다.    |
|   **이현수** 	 | 스펙가드에서 나는 FE·BE 사이 연결과 인증 파이프라인을 맡았다. 이메일·휴대폰 인증을 Redis로 묶어 TTL과 시도 제한을 정리했고, RS256 키와 JWKS 캐시 운영 초안도 만들었다. MariaDB를 .env 기반으로 통일해 마이그레이션을 반복 가능하게 했고, 템플릿 검색·슬러그 조회·Resume 리스트·검증 결과 API를 다듬으며 Vue 3 화면 바인딩과 라우팅, Axios 로깅도 손봤다. 잘 굴러가긴 했지만 OpenAPI 계약을 먼저 못 잡아 프론트 재작업이 생겼고, 통합·E2E 테스트가 부족해 회귀가 몇 번 있었다. 덕분에 “명세 우선+계약 테스트”가 팀 속도를 좌우한다는 걸 체감했고, 짧은 TTL 인증은 재전송·시도 제한·지연 큐까지 미리 설계해야 안정적이라는 것도 배웠다. 다음 프로젝트에선 OpenAPI 단일 소스와 Pact를 도입하고, OpenTelemetry+ELK와 표준 에러 스키마로 로그·추적을 통합하고, 인증 재발급 한도와 리플레이 방지는 게이트웨이에서 확실히 막을 생각이다.  	 |

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
