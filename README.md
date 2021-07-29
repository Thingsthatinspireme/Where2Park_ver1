### Where2Park (어따세워?)
1.기간 : 2021.02.24-2021.04.20
2.환경 : Apache Tomcat 8.0
3.주제 : 일정시간 쓰지않는 주차공간을 공유하여 주차문제를 해결하기
4.개발 : STS, MySQL
5.사용언어 : JAVA, MySQL, JSP, HTML5, CSS3, JavaScript
6.사용기술 : Spring MVC, Ajax, Open Api(GeoLocation)


#### 구현 기능
1. 오너(주차장 주인)와 파커(주차장을 대여하는 사람)간의 의사소통을 돕기위한 채팅기능
2. 예약 알림, 예약취소 알림, 리뷰 알림, 채팅 알림 기능
3. 위치와 날짜를 지정하여 주차장을 검색할 수 있는 기능
4. 접속위치를 기반으로한 인근 주차장 추천 기능

#### 데이터베이스 논리적 모델
<img width="959" alt="Where2Park DBtable" src="https://user-images.githubusercontent.com/73827546/127425987-c8ae479f-43a2-40cf-920f-73d921bfa631.png">


#### 구동화면
1. 메인화면의 검색기능과 주차장 추천 기능
 - 주소와 대여시각 반납시각을 검색하여 그 조건에 해당하는 주차장을 출력
 - 사용자가 홈페이지에 접속했을때의 위도와 경도를 geoLocation API를 이용하여 얻어내고 쿼리문을 통해
   계산 후 가까운 주차장 3곳을 추천
![index](https://user-images.githubusercontent.com/73827546/127428192-2bf3efe3-e1bb-4bb1-af3c-22d2a0eb4a9c.png)

2. 알림페이지와 예약 알림, 예약취소 알림, 리뷰 알림, 채팅 알림
 - 웹소켓을 이용한 예약 생성, 취소, 리뷰작성, 새로온 채팅 알림 기능 
 - 알림페이지는 ajax를 통해서 알림이 도착하면 동적생성, 삭제가 가능하게 구현
![notice2](https://user-images.githubusercontent.com/73827546/127428584-197c76e2-413d-4476-b1da-440360611367.png)
<img width="283" alt="notice3" src="https://user-images.githubusercontent.com/73827546/127430399-fec71dd0-5dad-4745-8628-e653f5d7a152.png">

3. 예약건간 일대일 채팅 구현
- 채팅을 읽지 않았을 때 채팅하기 옆에 읽지않은 채팅의 갯수가 표시기능
- 채팅창을 켜지 않았을때 채팅이 도착하면 알림이 도착해서 해당하는 채팅방으로 이동할수 있는 기능
- 채팅을 보냈을 때 상대방이 채팅방 접속 상태에 따라 읽음, 읽지않음으로 표시되는 기능
![chat](https://user-images.githubusercontent.com/73827546/127430184-27a0f11c-7fa8-4f69-a1c5-4a396495208e.png)
<img width="956" alt="chatNotice" src="https://user-images.githubusercontent.com/73827546/127430699-71b66c58-71e2-4867-936d-21a6e0962661.png">
<img width="944" alt="chatNotice" src="https://user-images.githubusercontent.com/73827546/127430507-2aa68362-d942-4ccb-a66e-87cb02bc90ef.png">

#### 동영상 
▽아래의 이미지를 클릭하면 홈페이지 시연영상 링크로 연결됩니다!
[![ㅇㄸㅅㅇ동영상](https://img.youtube.com/vi/0s3gGtqJO2E/0.jpg)](https://youtu.be/0s3gGtqJO2E)

