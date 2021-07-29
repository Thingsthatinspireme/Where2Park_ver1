### Where2Park (어따세워?)
1.기간 : 2021.02.24-2021.04.20
2.환경 : Apache Tomcat 8.0
3.주제 : 일정시간 쓰지않는 주차공간을 공유하여 주차문제를 해결하기
4.개발 : STS, MySQL
5.사용언어 : JAVA, MySQL, JSP, HTML5, CSS3, JavaScript
6.사용기술 : Spring MVC, Ajax, Open Api(GeoLocation)


#### 구현 기능
1. 오너(주차장 주인)와 파커(주차장을 대여하는 사람)간의 의사소통을 돕기위한 채팅기능
2. 예약 알림, 예약 알림, 리뷰 알림, 채팅 알림 기능
3. 위치와 날짜를 지정하여 주차장을 검색할 수 있는 기능
4. 접속위치를 기반으로한 인근 주차장 추천 기능

####데이터베이스 논리적 모델
<img width="959" alt="Where2Park DBtable" src="https://user-images.githubusercontent.com/73827546/127425987-c8ae479f-43a2-40cf-920f-73d921bfa631.png">


####구동화면
1. 메인화면의 검색기능과 주차장 추천 기능
 - 주소와 대여시각 반납시각을 검색하여 그 조건에 해당하는 주차장을 출력
 - 사용자가 홈페이지에 접속했을때의 위도와 경도를 geoLocation API를 이용하여 얻어내고 쿼리문을 통해
   계산 후 가까운 주차장 3곳을 추천
![index](https://user-images.githubusercontent.com/73827546/127428192-2bf3efe3-e1bb-4bb1-af3c-22d2a0eb4a9c.png)
