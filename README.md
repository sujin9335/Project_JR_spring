# :office: 자격증 정보 관리 시스템
....
# 1. 기획 의도
**정보 제공** : 자격증에 대한 종합정보(시험일, 시험과목, 응시료 등)을 제공합니다.<br>
**추천 서비스** : 직무에 따른 자격증 추천 서비스를 제공합니다<br>
**스터디** : 자격증 관련 질문 및 의견을 공유하며 서로의 지식과 경험을 소통 합니다.<br>
**기술** : Servlet+JSP 기반으로 Oracle로 데이터 관리를 하여 정보를 제공하는 프로젝트 입니다.

# 2. 🛠개발 환경
 
<img src="https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white"> 
<img src="https://img.shields.io/badge/OracleDeveloper-007396?style=for-the-badge&logo=devlop&logoColor=white">
<img src="https://img.shields.io/badge/eXERD-C28F2C?style=for-the-badge&logo=exerd&logoColor=white"> 
<img src="https://img.shields.io/badge/window-0078D4?style=for-the-badge&logo=windows&logoColor=white"> 
<img src="https://img.shields.io/badge/mac-000000?style=for-the-badge&logo=macos&logoColor=white">
<img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white">
<img src="https://img.shields.io/badge/Tomcat-333333?style=for-the-badge&logo=apachetomcat&logoColor=white">
<img src="https://img.shields.io/badge/HTML-1572B6?style=for-the-badge&logo=html5&logoColor=white">
<img src="https://img.shields.io/badge/CSS-E34F26?style=for-the-badge&logo=css3&logoColor=white">
<img src="https://img.shields.io/badge/JS-F7DF1E?style=for-the-badge&logo=javascript&logoColor=white">
<img src="https://img.shields.io/badge/jQuery-0769AD?style=for-the-badge&logo=jquery&logoColor=white">
<img src="https://img.shields.io/badge/Spring-6DB33F?style=for-the-badge&logo=spring&logoColor=white">
<img src="https://img.shields.io/badge/AWS-232F3E?style=for-the-badge&logo=amazonaws&logoColor=white
">


# 3. 👯‍♂️역할 분담
- 김수진 : 기초코드, My스터디, My교재학습, 직업검색<br>
- 염현빈 : 회원가입, 로그인, 로그아웃, <br>
- 오승현 : FAQ, QNA <br>
- 이도훈 : 자격증관리, 시험관리, 일정관리, FAQ관리, 금지어 관리<br>
- 이슬아 : 교재조회, My교재등록<br>
- 허수경 : 자격증조회, 자격증 스터디 신청, 자격증 후기, 자격증 일정, 자격증 추천<br>
- 황유진 : 메인화면, 학원조회, 자유게시판<br>

# 4. 데이터 구조
## 1. 순서도
> ![sun1](./images/sun.png)

## 2. eXERD
> ![erd](./images/erd1.png)

# 5. 기능 구현
## 1. 초기 화면
> - main page <br>
> ![m](./images/main.png)
> - login page <br>
> ![log](./images/log.png)

## 2. 기능 화면
> - 자격증 조회<br>
> ![ja1](./images/ja1.png)
> ![ja2](./images/ja2.png)
> - 자격증 추천<br>
> ![ja3](./images/ja3.png)
> - 교재 조회<br>
> ![book1](./images/book1.png)
> ![book2](./images/book2.png)
> - 학원 조회<br>
> ![aca](./images/aca1.png)
> - 직업 조회<br>
> ![job1](./images/job11.png)
> ![job2](./images/job22.png)
> - 자유 게시판 <br>
> ![board1](./images/board1.png)
> - My페이지 스터디 <br>
> ![study1](./images/study11.png)
> ![study2](./images/study22.png)
> ![study2](./images/study33.png)

# 6. 기능 분석
> <strong>MVC Model</strong><br>
>> - Model, View, Controller 세가지 구성 요소로 나누어 개발하는 방법
>> ![mvc](./images/mvc.png)

> <strong>Ajax</strong><br>
>> - 웹 페이지에서 비동기적으로 서버와 통신하는 기술
>> ![ajax](./images/ajax.png)

> <strong>Autocomplete</strong><br>
>> - 사용자가 입력한 내용에 따라 자동 완성 기능을 제공하는 기능
>> ![auto](./images/auto.png)

> <strong>Elasticsearch</strong><br>
>> - 분산형 검색 엔진이자 데이터 분석 엔진으로, 오픈 소스 소프트웨어
>> ![auto](./images/ela.png)

> <strong>KAKAO Map openAPI</strong><br>
>> - 카카오맵 오픈 API
>> ![auto](./images/ka.png)

> <strong>RESTFul server</strong><br>
>> - 두 컴퓨터 시스템이 인터넷을 통해 정보를 안전하게 교환하기 위해 사용하는 인터페이스
>> ![auto](./images/rest.png)

> <strong>WebSocket</strong><br>
>> - 서버와 클라이언트간의 메시지 교환을 위한 통신규약(프로토콜) 
>> ![auto](./images/webs.png)

# 7. 📜세부 일정
> <strong>12월 18일 ~ 12월 20일</strong><br>
>> - 요구 분석 수정
>> - ERD 수정<br>

> <strong>12월 20일 ~ 12월 22일</strong><br>
>> - 더미 데이터 추가
>> - 테이블 정의서 작성(DDL) 수정
>> - 데이터 정의서 작성(DML) 수정<br>

> <strong>12월 22일 ~ 12월 26일</strong><br>
>> - 개발진행
>> - 데이터 통합 및 디버깅
>> - PPT 작성<br>

> <strong>12월 27일</strong><br>
>> - 발표 <br>
  
  # 핵심 트러블 슈팅
<details>
<summary> <strong>1. 스프링 구조 이해</strong> </summary>
  - 스프링이 servlet 셋팅 하는 면에서 시간이 오래걸리고 구조를 만드는데 어려움이 있었다.<br>수업필기를 열심히 한 것이 도움이 되어 기초코드및 셋팅을 이해하는데 도움이 되었다. <br><br>
</details>



# 그 외 이슈
<details>
<summary><strong>
  </strong> </summary>
 <br>
</details>
  
  

  
