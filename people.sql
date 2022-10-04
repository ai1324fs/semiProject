-- table people--

create table people(
    ID   varchar2(50) primary key not null,
    PW   varchar2(50) not null,
    NAME   varchar2(15) not null,
    GENDER   varchar2(6) not null,
    AGE   number(3) not null,
    GENRE   varchar2(500) not null
);

drop table people;
select * from people;

insert into people values('admin','1234','관리자','남자','30','all');
insert into people values('aaa','1234','관리자','남자','30','all');
insert into people values('bbb','1234','관리자','남자','30','all');
insert into people values('ccc','1234','관리자','남자','30','all');
insert into people values('ddd','1234','관리자','남자','30','all');
insert into people values('eee','1234','관리자','남자','30','all');
insert into people values('fff','1234','관리자','남자','30','all');


commit;
--------------------------------------------------------------------------------------------


-- table board--
create table board(
   B_NO   number primary key not null,
   WRITER   varchar2(50) not null,
   SUBJECT   varchar2(300) not null,
   password varchar(50) not null,
   REG_DATE   date, 
   REF   number, 
   RE_STEP   number, 
   RE_LEVEL   number,
   READCOUNT   number,
   CONTENT   varchar2(500) not null
);

drop table board;
drop sequence board_num;

select * from board;

create sequence board_num
   start with 1
   increment by 1
   minvalue 1
   maxvalue 1000
   cycle;


insert into board values(board_num.nextval, 'admin', '공지사항', '1234', sysdate, 1, 1, 1, 0, '안녕하세요.');

--------------------------------------------------------------------------------------------------


--table movie--
create table movie(
   mno varchar2(7) primary key not null,
   title varchar2(500) not null,
   genre varchar2(1000) not null,
   country varchar2(500) not null,
   runtime varchar2(500) not null,
   age varchar2(100) not null,
    opendate varchar2(500) not null,
    director varchar2(500) not null,
    actor varchar2(500) not null,
    story varchar2(2000) not null,
    poster varchar2(500) not null,
    love number(2,1) not null
);    

drop table movie;

 select * from movie;   

insert into movie values('1','브로커','드라마','국내','129분','12세 관람가',' 2022.06.08','고레에다 히로카즈','송강호,강동원,배두나','세탁소를 운영하지만 늘 빚에 시달리는 상현(송강호)과 베이비 박스 시설에서 일하는 보육원 출신의 동수(강동원). 거센 비가 내리는 어느 날 밤 그들은 베이비 박스에 놓인 한 아기를 몰래 데려간다. 하지만 이튿날 생각지 못하게 엄마 소영(이지은)이 아기 우성을 찾으러 돌아온다. 아기가 사라진 것을 안 소영이 경찰에 신고하려 하자 솔직하게 털어놓는 두 사람. 우성이를 잘 키울 적임자를 찾아 주기 위해서 그랬다는 변명이 기가 막히지만 소영은 우성이의 새 부모를 찾는 여정에 상현 동수와 함께하기로 한다. 한편 이 모든 과정을 지켜본 형사 수진(배두나)과 후배 이형사(이주영). 이들을 현행범으로 잡고 반 년째 이어온 수사를 마무리하기 위해 조용히 뒤를 쫓는다. 베이비 박스 그곳에서 의도치 않게 만난 이들의 예기치 못한 특별한 여정이 시작된다.','./movieDB/1.jpg','6.68');
insert into movie values('2','공작','드라마','국내','137분','12세 관람가',' 2018.08.08','윤종빈','황정민,이성민,조진웅','1993년 북한 핵 개발을 둘러싸고 한반도의 위기가 고조된다. 정보사 소령 출신으로 안기부에 스카우트된 박석영(황정민)은 흑금성이라는 암호명으로 북핵의 실체를 캐기 위해 북의 고위층 내부로 잠입하라는 지령을 받는다. 안기부 해외실장 최학성(조진웅)과 대통령 외에는 가족조차도 그의 실체를 모르는 가운데 대북사업가로 위장해 베이징 주재 북 고위간부 리명운(이성민)에게 접근한 흑금성. 그는 수 년에 걸친 공작 끝에 리명운과 두터운 신의를 쌓고 그를 통해서 북한 권력층의 신뢰를 얻는데 성공한다. 그러나 1997년. 남의 대선 직전에 흑금성은 남과 북의 수뇌부 사이 은밀한 거래를 감지한다. 조국을 위해 굳은 신념으로 모든 것을 걸고 공작을 수행했던 그는 걷잡을 수 없는 갈등에 휩싸이는데…','./movieDB/2.jpg','7.86');
insert into movie values('3','북샵','드라마','해외','112분 ','전체 관람가',' 2021.06.24','이자벨 코이젯트','에밀리 모티머, 빌 나이, 패트리시아 클락슨','영화 <캐롤>의 토드헤인즈 감독이 영감을 받았다고 밝힌 사진가.  50년대 뉴욕의 일상을 담은 사진들로 컬러 사진의 선구자 뉴욕의 전설이라 불리는 사울 레이터.  하지만 그는 뉴욕 이스트 빌리지 주변에서만 사진 촬영을 하며 80대가 되어서야 명성을 얻기 시작한 은둔의 사진가이다. 뚜렷한 목적 없이 세상을 관찰한 사진가 사울 레이터 수많은 아티스트들의 영감의 원천이 된 그의 삶과 예술 세계가 스크린에 펼쳐진다.','./movieDB/3.jpg','8.86');
insert into movie values('4','피닉스','드라마','해외','98분 ','12세 관람가',' 2021.07.22','크리스티안 펫졸드','니나 호스, 로날드 제르필드, 니나 쿤젠도르프','플로렌스는 남편과 처음 만나 사랑에 빠진 특별한 장소이기도 했던 작은 바닷가 마을 하드버러에서 영리한 소녀 크리스틴을 채용해 서점을 운영하기 시작한다. 작고 외진 마을에서 서점을 운영한다는 사실이 알려지자 마을 최고 권력자인 가맛 부인은 서점 자리에 문화센터를 세운다는 핑계로 온갖 경제력과 인맥을 동원해 방해하기 시작하는데…!  책을 통해 삶의 희망을 찾아나선 플로렌스의 용기 있는 도전이 시작된다!','./movieDB/4.jpg','8.6');
insert into movie values('5','다만 악에서 구하소서','드라마','국내','108분 ','15세 관람가',' 2020.08.05','홍원찬','황정민,이정재,박정민','태국에서 충격적인 납치사건이 발생하고 마지막 청부살인 미션을 끝낸 암살자 인남(황정민)은 그것이 자신과 관계된 것임을 알게 된다. 인남은 곧바로 태국으로 향하고 조력자 유이(박정민)를 만나 사건을 쫓기 시작한다. 한편 자신의 형제가 인남에게 암살당한 것을 알게 된 레이(이정재). 무자비한 복수를 계획한 레이는 인남을 추격하기 위해 태국으로 향하는데... 처절한 암살자 VS 무자비한 추격자 멈출 수 없는 두 남자의 지독한 추격이 시작된다!','./movieDB/5.jpg','8.54');
insert into movie values('6','해피 아워','드라마','해외','328분 ','15세 관람가',' 2021.12.09','하마구치 류스케','타나카 사치에, 기쿠치 하즈키, 미하라 마이코','산속에서 삶의 마지막을 준비하고 있는 희태(송재룡)에게 헤어진 아내로부터 온 뜻밖의 편지와 함께 낯선 아들 민상(지대한)이 찾아온다. 단 한 번도 만난 적 없는 두 사람의 어색한 2박 3일이 시작되면서 희태가 매일 홀로 다녔던 그 산길을 민상과 함께 걷고 홀로 먹던 밥을 함께 나눠 먹으며 묘한 유대감을 느끼게 된다.  어두운 밤 혼자였던 희태를 지켜주었던 밤빛은 민상과 함께할 때 더없이 아름다웠다.','./movieDB/6.jpg','8.76');
insert into movie values('7','프로페서 앤 매드맨','드라마','해외','124분 ','15세 관람가',' 2021.06.02','P.B. 셰므란','멜 깁슨, 숀 펜','까치발로 걸음마를 시작한 딸 지후 엄마 우정은 의사에게 충격적인 선언을 듣는다!  아이가 뇌성마비일 수 있어요  크면서 자연스레 없어질 수 있다는 말 한마디에 모든 것을 걸었지만 6살이 된 지금까지도 지후는 까치발로 걷는데…  엄마에게 괜찮아라는 말을 듣고 싶은 딸들의 이야기','./movieDB/7.jpg','8.81');
insert into movie values('8','서복','드라마','국내','114분 ','15세 관람가',' 2021.04.15','이용주','공유, 박보검, 조우진','서울에 사는 다섯 명의 사람들 그들은 처음으로 자신의 불안에 관해서 이야기한다.  카메라 앞에서 들려주는 그들의 목소리는 마치 시를 읽는 것 같다.  고단한 직장생활에 대해 약을 먹으며 버텨야 할지를 고민하는 30대 여성  선택을 생각할 틈도 없이 기계처럼 일했지만 해고자 신세가 된 노동자  20년 넘게 안정된 직장을 다니지만 알 수 없는 죄의식으로 공황 장애를 앓은 50대 남자  불안한 현실보다는 게임 속 세상에서 안정을 찾는 남자  자신이 겪은 혐오와 차별을 모든 약자의 고통과 동일시하는 여성까지. 이들은 각자 다른 처지이지만 불확실과 비참한 현실 앞에 선 자기 자신을 바라본다.','./movieDB/8.jpg','6.33');
insert into movie values('9','이상한 나라의 수학자','드라마','국내','117분','12세 관람가',' 2022.03.09','박동훈','최민식,김동휘','학문의 자유를 갈망하며 탈북한 천재 수학자 이학성(최민식). 그는 자신의 신분과 사연을 숨긴 채 상위 1%의 영재들이 모인 자사고의 경비원으로 살아간다. 차갑고 무뚝뚝한 표정으로 학생들의 기피 대상 1호인 이학성은 어느 날 자신의 정체를 알게 된 뒤 수학을 가르쳐 달라 조르는 수학을 포기한 고등학생 한지우(김동휘)를 만난다. 정답만을 찾는 세상에서 방황하던 한지우에게 올바른 풀이 과정을 찾아나가는 법을 가르치며 이학성 역시 뜻하지 않은 삶의 전환점을 맞게 된다.','./movieDB/9.jpg','7.89');
insert into movie values('10','피넛 버터 팔콘','드라마','해외','97분 ','12세 관람가',' 2021.04.07','타일러 닐슨, 마이크 슈왈츠','샤이아 라보프, 다코타 존슨, 잭 고츠아전','모든 생각이 실시간으로 노출되는 노이즈에 감염된 세상 뉴 월드. 토드(톰 홀랜드)는 이 곳에 불시착한 의문의 유입자 바이올라(데이지 리들리)와 마주하게 된다.  혼돈의 세상 속 숨겨진 비밀에 의문을 품은 두 사람은 뉴 월드를 탈출할 계획을 세우고  뉴 월드의 통치자 데이비드(매즈 미켈슨)는 위험을 직감하고 이들을 추격하기 위해 모든 수단을 동원하는데…   살고 싶다면 반드시 탈출해야만 한다!','./movieDB/10.jpg','8.84');
insert into movie values('11','은교','멜로','국내','129분','청소년 관람불가',' 2012.04.25','정지우','박해일,김우열,김고은','스승의 천재적인 재능을 질투한 패기 넘치는 제자 서지우 그리고 위대한 시인의 세계를 동경한 싱그러운 관능의 열일곱 소녀 은교 서로 갖지 못한 것을 탐하다. 질투와 매혹으로 뒤얽힌 세 사람의 숨겨진 도발!','./movieDB/11.jpg','7.06');
insert into movie values('12','건축학개론','멜로','국내','118분','12세 관람가',' 2012.03.22','이용주','엄태웅,한가인,이제훈','생기 넘치지만 숫기 없던 스무 살 건축학과 승민은 건축학개론 수업에서 처음 만난 음대생 서연에게 반한다. 함께 숙제를 하게 되면서 차츰 마음을 열고 친해지지만 자신의 마음을 표현하는 데 서툰 순진한 승민은 입 밖에 낼 수 없었던 고백을 마음 속에 품은 채 작은 오해로 인해 서연과 멀어지게 된다. 어쩌면 다시…사랑할 수 있을까? 15년 만에 그녀를 다시 만났다 서른 다섯의 건축가가 된 승민 앞에 15년 만에 불쑥 나타난 서연. 당황스러움을 감추지 못하는 승민에게 서연은 자신을 위한 집을 설계해달라고 한다. 자신의 이름을 건 첫 작품으로 서연의 집을 짓게 된 승민 함께 집을 완성해 가는 동안 어쩌면 사랑이었을지 모를 그때의 기억이 되살아나 두 사람 사이에 새로운 감정이 쌓이기 시작하는데…','./movieDB/12.jpg','8.68');
insert into movie values('13','내 머리 속의 지우개','멜로','국내','117분','12세 관람가',' 2004.11.05','이재한','정우성,손예진','수진은 유달리 건망증이 심하다. 편의점에 가면 산 물건과 지갑까지 놓고 나오기 일쑤다. 그 날도 어김없이 산 콜라와 지갑을 놓고 온 것을 깨닫고 다시 편의점에 들어선 순간 맞닥뜨린 남자. 그의 손엔 콜라가 들려있고 콜라가 있어야 할 편의점 카운터는 비어있다. 덥수룩한 수염에 남루한 옷차림 영락없는 부랑자다. 그가 자신의 콜라를 훔쳤다고 생각한 수진 그의 손에 들린 콜라를 뺏어 단숨에 들이킨다.게다가 트림까지.... 보란 듯이 빈 캔을 돌려주고 수진은 버스정류장으로 향한다. 하지만 버스에 탄 순간 또 지갑을 챙겨오지 않은 걸 깨닫는다. 다시 돌아간 편의점에서 직원은 수진을 보더니 지갑과 콜라를 내놓는다. 그제서야 자신의 실수를 깨닫는 수진. 그를 찾아보지만 이미 그는 없다. 수진의 회사 전시장 수리를 위해 온 편의점의 그 남자! 하지만 그는 수진을 기억하지 못하는 듯하다. ','./movieDB/13.jpg','9.09');
insert into movie values('14','8월의 크리스마스','멜로','국내','97분 ','12세 관람가',' 1998.01.24','허진호','한석규,심은하','좋아하는 남자 친구 없어요? 그 남자 l 한석규 변두리 사진관에서 아버지를 모시고 사는 노총각 정원. 시한부 인생을 받아들이고 가족 친구들과 담담한 이별을 준비하던 어느 날 주차단속요원 다림을 만나게 되고 차츰 평온했던 일상이 흔들리기 시작한다. 아저씨 왜 나만 보면 웃어요? 그 여자 l 심은하 밝고 씩씩하지만 무료한 일상에 지쳐가던 스무 살 주차 단속요원 다림. 단속차량 사진의 필름을 맡기기 위해 드나들던 사진관의 주인 정원에게 어느새 특별한 감정을 갖게 되는데... 2013년 가을 사랑을 간직한 채 떠나갔던 그 사람이 다시 돌아옵니다.','./movieDB/14.jpg','9.31');
insert into movie values('15','라스트 레터','멜로','해외','120분 ','전체 관람가',' 2021.02.24','이와이 슌지','마츠 다카코, 히로세 스즈, 안노 히데아키','출구 없는 탈출 게임에서 가까스로 살아남은 조이와 벤. 게임을 설계한 의문의 조직 미노스의 실체를 밝히기 위해 뉴욕에 도착한 두 사람은 정체불명의 남자에게 휘말려 지하철에 갇히고 만다.  순간 다른 칸과 분리된 열차 안에는 초고압 전류가 흐르기 시작하고 그곳에 있는 6명 모두 게임의 생존자라는 것이 밝혀진다. 목숨을 건 탈출 게임이 다시 시작됐음을 직감한 그들은 뉴욕을 배경으로 벌어지는 극한의 상황에서 살아남기 위한 사투를 벌이는데….','./movieDB/15.jpg','7.86');
insert into movie values('16','킬링 오브 투 러버스','멜로','해외','84분 ','12세 관람가',' 2021.10.14','로버트 맥호이안','클레인 크로포드, 세피데 모아피, 크리스 코이','타인의 몸을 훔쳐 암살의 도구로 사용하는 조직 포제서. 고위층 암살에 이용되며 증거인멸 탈출구도 필요 없다.  이들은 타겟의 가족이나 지인들을 납치 후 요원의 의식을 심고 암살에 침투시킨다.  도용된 몸의 제한 시간은 3일. 시간을 넘기면 인격에 동화되어 빠져나올 수 없게 되는데..  제한된 시간 새로운 작전  당신의 몸을 도용하는 암살자들이 온다!','./movieDB/16.jpg','8.49');
insert into movie values('17','괴짜들의 로맨스','멜로','해외','100분 ','12세 관람가',' 2021.11.17','류명의','사흔영, 임백굉','서로의 가장 소중한 친구인 12살 소년 플로와 천재견 래시. 아버지가 실직해 작은 집으로 이사하자 플로는 더 이상 반려견을 키울 수 없게 되고 래시는 다른 사람의 저택에 맡겨진다. 갑작스러운 이별로 래시와 플로가 서로를 그리워하던 어느 날 돈에 눈이 먼 저택의 직원이 래시를 팔아 넘기려 하고 래시는 이를 피해 도망친다. 이 소식을 들은 플로는 래시를 찾기 위해 용감한 모험을 떠나는데…  약속해 다신 혼자 두지 않을게 함께라서 행복한 플로와 래시의 눈부신 우정이 시작된다!','./movieDB/17.jpg','7.13');
insert into movie values('18','봄날은 간다','멜로','국내','106분','15세 관람가',' 2001.09.28','허진호','유지태,이영애','사운드 엔지니어 상우(유지태 분)는 치매에 걸린 할머니(백성희 분)와 젊은 시절 상처한 한 아버지(박인환 분) 고모(신신애 분)와 함께 살고 있다. 어느 겨울 그는 지방 방송국 라디오 PD 은수(이영애 분)를 만난다. 자연의 소리를 채집해 틀어주는 라디오 프로그램을 준비하는 은수는 상우와 녹음 여행을 떠난다. 자연스레 가까워지는 두 사람은 어느 날 은수의 아파트에서 밤을 보낸다. 너무 쉽게 사랑에 빠진 두 사람... 상우는 주체할 수 없을 정도로 그녀에게 빨려든다. 그러나 겨울에 만난 두 사람의 관계는 봄을 지나 여름을 맞이하면서 삐걱거린다. 이혼 경험이 있는 은수는 상우에게 결혼할 생각이 없다며 부담스러운 표정을 내비친다. 어떻게 사랑이 변하니?...라고 묻는 상우에게 은수는 그저 헤어져 라고 단호하게 말한다. 영원히 변할 것 같지 않던 사랑이 변하고 그 사실을 받아들이지 못하는 상우는 어찌 할 바를 모른다. 은수를 잊지 못하는 상우는 미련과 집착의 감정을 이기지 못하고 서울과 강릉을 오간다.','./movieDB/18.jpg','9.31');
insert into movie values('19','유어 아이즈 텔','멜로','해외','123분 ','15세 관람가',' 2021.03.11','미키 타카히로','요시타카 유리코, 요코하마 류세이, 마치다 케이타','아시아에 전운이 감돌던 1940년 무역상 유사쿠는 사업차 만주국으로 향한다. 이곳에서 벌어지는 갖가지 참상을 목격한 유사쿠는 현실을 바꾸기 위해 직접 나서고 유사쿠의 이러한 위험한 행동은 일본에 살고 있는 아내 사토코의 일상에도 영향을 미친다. NHK TV 드라마를 영화로 다시 만든 작품으로 2020년 베니스영화제에서 감독상을 수상했다.','./movieDB/19.jpg','9.35');
insert into movie values('20','늑대소년','멜로','해외','91분 ','12세 관람가',' 2021.09.22','알리체 필리피','루도비카 프란체스코니, 주세페 마조','요양 차 가족들과 한적한 마을로 이사 간 소녀는 어둠 속에 몸을 숨긴 의문의 늑대소년을 발견한다. 야생의 눈빛으로 사람 같지 않은 행동을 보이는 소년에게 왠지 마음이 쓰이는 소녀는 먹을 것을 보고 기다리는 법, 옷 입는 법, 글을 읽고 쓰는 법 등 소년에게 세상에서 살아가는 방법들을 하나씩 가르쳐준다. 태어나 처음으로 자신을 향해 손을 내밀어준 소녀에게 애틋한 감정이 싹트는 소년. 그러던 어느 날 예기치 못한 위기 속에 소년의 숨겨져 있던 위험한 본성이 드러나고, 소년은 순식간에 마을 사람들에게 두려움과 공포의 대상이 되어버리는데……','./movieDB/20.jpg','7.12');
insert into movie values('21','극한직업','코미디','국내','111분 ','15세 관람가',' 2019.01.23','이병헌','류승룡,이하늬,진선규','불철주야 달리고 구르지만 실적은 바닥 급기야 해체 위기를 맞는 마약반! 더 이상 물러설 곳이 없는 팀의 맏형 고반장은 국제 범죄조직의 국내 마약 밀반입 정황을 포착하고 장형사 마형사 영호 재훈까지 4명의 팀원들과 함께 잠복 수사에 나선다. 마약반은 24시간 감시를 위해 범죄조직의 아지트 앞 치킨집을 인수해 위장 창업을 하게 되고 뜻밖의 절대미각을 지닌 마형사의 숨은 재능으로 치킨집은 일약 맛집으로 입소문이 나기 시작한다. 수사는 뒷전 치킨장사로 눈코 뜰 새 없이 바빠진 마약반에게 어느 날 절호의 기회가 찾아오는데… 범인을 잡을 것인가 닭을 잡을 것인가!','./movieDB/21.jpg','9.2');
insert into movie values('22','정직한 후보','코미디','국내','104분 ','12세 관람가',' 2020.02.12','장유정','라미란,김무열,나문희','거짓말이 제일 쉬운 3선 국회의원 주상숙에게 청천벽력이 떨어진다. 하루아침에 거짓말은 1도 할 수 없는 진실의 주둥이를 갖게 된 것! 최고의 무기인 거짓말을 잃자 그녀의 인생은 송두리째 흔들리게 되는데… 웃음 빵! 속이 뻥! 뚫리는 통쾌한 웃음 폭격이 시작된다!','./movieDB/22.jpg','8.36');
insert into movie values('23','럭키','코미디','국내','112분 ','15세 관람가',' 2016.10.13','이계벽','유해진,이준,조윤희','냉혹한 킬러 형욱(유해진)은 사건 처리 후 우연히 들른 목욕탕에서 비누를 밟고 넘어져 과거의 기억을 잃게 된다. 인기도 삶의 의욕도 없어 죽기로 결심한 무명배우 재성(이준)은 신변 정리를 위해 들른 목욕탕에서 그런 형욱을 보게 되고 자신과 그의 목욕탕 키를 바꿔 도망친다. 이후 형욱은 자신이 재성이라고 생각한 채 배우로 성공하기 위해 노력하는데… 인생에 단 한번 찾아온 초대형 기회! 초특급 반전! 이것이 LUCK.KEY다!','./movieDB/23.jpg','8.76');
insert into movie values('24','내겐 너무 어려운 연애','코미디','해외','84분 ','12세 관람가',' 2021.02.04','파임 부이얀','파임 부이얀','세계적인 마에스트로 에두아르트는 평화 콘서트를 위해  오디션을 거쳐 이스라엘과 팔레스타인의 재능 있는 연주자들을 뽑는다.  수십 년간 이어온 분쟁과 갈등을 넘어 오직 음악을 바라보고 모였지만  깊이 담겨 있던 분노와 증오는 이내 서로를 공격한다.   하나의 오케스트라를 위해 지휘자 에두아르트는 진심을 담아 노력하고 영원히 평행선을 걸을 것 같던 이들은 조금씩 서로를 이해하기 시작한다.   그러나 공연을 하루 앞두고  팔레스타인 클라리넷 연주자 오마르와 이스라엘 프렌치 호른 연주가 쉬라가 사라지는데… 오케스트라 공연은 무사히 열릴 수 있을까?  평화를 향한 희망의 멜로디가 울려 퍼진다!','./movieDB/24.jpg','7.4');
insert into movie values('25','프렌치 디스패치','코미디','해외','107분 ','15세 관람가',' 2021.11.18','웨스 앤더슨','틸다 스윈튼, 프란시스 맥도맨드, 빌 머레이','미나리는 어디서든 잘 자라  낯선 미국 아칸소로 떠나온 한국 가족. 가족들에게 뭔가 해내는 걸 보여주고 싶은 아빠 제이콥(스티븐 연)은 자신만의 농장을 가꾸기 시작하고 엄마 모니카(한예리)도 다시 일자리를 찾는다.  아직 어린 아이들을 위해 모니카의 엄마 순자(윤여정)가 함께 살기로 하고 가방 가득 고춧가루 멸치 한약 그리고 미나리씨를 담은 할머니가 도착한다.  의젓한 큰딸 앤(노엘 케이트 조)과 장난꾸러기 막내아들 데이빗(앨런 김)은 여느 그랜마같지 않은 할머니가 영- 못마땅한데…  함께 있다면 새로 시작할 수 있다는 희망으로 하루하루 뿌리 내리며 살아가는 어느 가족의 아주 특별한 여정이 시작된다!','./movieDB/25.jpg','7.96');
insert into movie values('26','걸캅스','코미디','국내','107분 ','15세 관람가',' 2019.05.09','정다원','라미란,이성경','민원실 퇴출 0순위 전직 전설의 형사 미영과 민원실로 밀려난 현직 꼴통 형사 지혜 집에서는 눈만 마주쳐도 으르렁 대는 시누이 올케 사이인 두 사람은 민원실에 신고접수를 하기 위해 왔다가 차도에 뛰어든 한 여성을 목격하고 그녀가 48시간 후 업로드가 예고된 디지털 성범죄 사건의 피해자란 사실을 알게 된다. 강력반 사이버 범죄 수사대 여성청소년계까지 경찰 내 모든 부서들에서 복잡한 절차와 인력 부족을 이유로 사건이 밀려나자 미영과 지혜는 비공식 수사에 나서기로 결심한다. 수사가 진전될수록 형사의 본능이 꿈틀대는 미영과 정의감에 활활 불타는 지혜는 드디어 용의자들과 마주할 기회를 잡게 되는데… 걸크러시 콤비의 비공식 합동 수사가 펼쳐진다!','./movieDB/26.jpg','9.01');
insert into movie values('27','팜 스프링스','코미디','해외','90분 ','15세 관람가',' 2021.08.19','맥스 바바코우','앤디 샘버그, 크리스틴 밀리오티, J.K. 시몬스','하루 동안 정기적인 보고를 하지 않으면 터지게 되는  폭탄을 가슴속에 지닌 채 기밀 정보를 알아내는 AN통신.  요원 타카노(후지와라 타츠야)와 타오카(타케우치 료마)는 대기업 CNOX와 태양광 에너지가 관련된 엄청난 비밀을 알게 된다. 여기에 정체불명의 여인 아야코(한효주)와 일급 스파이인 데이비드 킴(변요한)까지 관련 정보를 노리면서 상황은 걷잡을 수 없게 되는데…  차세대 에너지를 둘러싼 보이지 않는 전쟁이 시작된다!','./movieDB/27.jpg','7.69');
insert into movie values('28','돈 룩 업','코미디','해외','139분 ','15세 관람가',' 2021.12.08','아담 맥케이','레오나르도 디카프리오, 제니퍼 로렌스, 롭 모건','어둠이 깃든 땅을 학생들의 맑은 기운으로 봉인한 연두고등학교.  최근의 원인을 알 수 없는 사건이 연속되는 가운데 오늘 희민이라는 아이가 전학 왔다.  본인의 운명이 뒤바뀔 것이라는 사실은 모른 채…  결계가 깨진 그날 밤 마침내 그가 각성한다!','./movieDB/28.jpg','8.65');
insert into movie values('29','트립 투 그리스','코미디','해외','103분 ','15세 관람가',' 2021.07.08','마이클 윈터바텀','스티브 쿠건, 롭 브라이든','개인이 마약을 하든 뭘 하든 국가의 통제는 억압이라 생각하는  상위 1% 비합법적 천재 로스.  뛰어난 두뇌와 치밀한 계획으로 비트코인을 이용해 흔적 없이  마약 쿨거래가 가능한 다크 웹사이트 실크로드를 만든다.  실크로드로 돈맛을 알고 세상을 향한 X를 날렸다고 생각한 바로 그 순간 정체불명 누군가가 말을 걸어오는데…','./movieDB/29.jpg','5.83');
insert into movie values('30','청년경찰','코미디','국내','109분 ','15세 관람가',' 2017.08.09','김주환','박서준,강하늘','의욕충만 경찰대생 기준(박서준) X 이론백단 경찰대생 희열(강하늘) 둘도 없는 친구인 두 사람은 외출을 나왔다 우연히 납치 사건을 목격하게 된다. 목격자는 오직 두 사람 뿐! 기준과 희열은 학교에서 배운 대로 지체 없이 경찰에 신고한다. 하지만 복잡한 절차와 부족한 증거로 수사는 전혀 진행될 기미가 보이지 않는 상황! 1분 1초가 급박한 상황에서 아까운 시간만 흘러가자 기준과 희열은 직접 발로 뛰는 수사에 나서기로 하고 예측 불가능한 상황을 마주하게 되는데… 전공지식 총동원! 파릇파릇한 놈들의 혈기왕성 실전수사가 시작된다!','./movieDB/30.jpg','9.03');
insert into movie values('31','바쿠라우','공포','해외','131분 ','청소년 관람불가',' 2021.09.02','클레버 멘돈사 필로, 줄리아노 도르넬레스','우도 키에르, 소냐 브라가, 토마스 아퀴노','동굴을 떠나 새로운 거주지를 찾아 나선 크루즈 패밀리. 우여곡절 끝에 찾은 완벽한 트리 하우스에서 진화된 인류 베터맨 패밀리와 마주한다. 도구를 사용하고 집에서 안전하게 살아가는 지능형 베터맨 패밀리와 맨손으로 사냥하고 자연과 함께 살아가는 본능형 크루즈 패밀리는 너무나도 다른 삶의 방식으로 사사건건 부딪힌다.  반면 처음으로 여자 사람친구를 만난 이프와 던은 가족들과 달리 우정을 쌓아가지만 점점 두 가족에게 예상치 못한 위협이 닥쳐오는데…','./movieDB/31.jpg','7.7');
insert into movie values('32','알포인트','공포','국내','106분','15세 관람가',' 2004.08.20','공수창','감우성,손병호,박원상','1972년 베트남 전쟁의 막바지 200명의 부대원 중 혼자 살아 남은 혼바우 전투의 생존자 최태인 중위(감우성)는 악몽에 시달리며 괴로워한다. 그러나 그의 본대 복귀 요청은 철회되고 CID 부대장(기주봉)은 그에게 비밀 수색 명령을 내린다. 72년 2월 2일 밤 10시. 이날도 사단본부 통신부대의 무전기엔 당나귀 삼공...을 외치는 비명이 들어오고 있다. 6개월 전 작전 지역명 로미오 포인트에서 사망한 것으로 추정되는 18명의 수색대원들로부터 계속적인 구조요청이 오고 있었던 것. 그 흔적 없는 병사들의 생사를 확인할 수 있는 증거물을 확보하는 것이 이번 작전의 목표다. 3일 후 좌표 63도 32분 53도 27분 _ 로미오 포인트 입구. 어둠이 밀려오는 밀림으로 들어가는 9명의 병사들 뒤로 나뭇잎에 가려졌던 낡은 비문이 드러난다. 不歸! 손에 피 묻은 자 돌아갈 수 없다!!! 7일간의 작전 첫 야영지엔 10명의 병사가 보이고... 그러나 이제 하루가 시작되고 있을 뿐이다. ','./movieDB/32.jpg','8.77');
insert into movie values('33','아이 씨 유','공포','해외','97분 ','15세 관람가',' 2021.03.11','아담 랜달','헬렌 헌트, 존 테니, 주다 루이스','이탈리아에서 태어나 로마에서 방글라데시 출신 가족들과 함께 이슬람 커뮤니티에서 살고 있는 파임은 콘서트에서 만난 반항적이고 매력적인 아시아와 사랑에 빠지게 된다. 하지만 이슬람 율법에서는 절대 혼전 성관계를 허락하지 않는다! 종교와 열정 사이 어떤 선택을 할 것인가?','./movieDB/33.jpg','7.69');
insert into movie values('34','곡성','공포','국내','156분','15세 관람가',' 2016.05.12','나홍진','곽도원,황정민,쿠나무라 준','낯선 외지인(쿠니무라 준)이 나타난 후 벌어지는 의문의 연쇄 사건들로 마을이 발칵 뒤집힌다. 경찰은 집단 야생 버섯 중독으로 잠정적 결론을 내리지만 모든 사건의 원인이 그 외지인 때문이라는 소문과 의심이 걷잡을 수 없이 퍼져 나간다. 경찰 종구(곽도원)는 현장을 목격했다는 여인 무명(천우희)을 만나면서 외지인에 대한 소문을 확신하기 시작한다. 딸 효진(김환희)이 피해자들과 비슷한 증상으로 아파오기 시작하자 다급해진 종구. 외지인을 찾아 난동을 부리고 무속인 일광(황정민)을 불러들이는데...','./movieDB/34.jpg','8.23');
insert into movie values('35','고사: 피의 중간고사','공포','국내','85분','15세 관람가',' 2008.08.07','창감독','이범수,윤정희,남규리','수능을 약 200여일 앞둔 어느 토요일 전교 1등부터 20등까지의 모범생들만을 위한 특별엘리트 수업이 진행중이다. 의리파 여고생 이나 교내 킹카 반항아 강현을 비롯 늘 이나에 대한 질투에 시달리는 단짝친구 명효 전교 1등에 집착하는 편집증 혜영 환각과 망상에 시달리는 정신분열증을 앓고 있는 조범 불면증에 시달리는 전교 2등 동혁 소심증이 병이 된 전교 3등 재욱 신경증 증세를 앓고 있는 전교 4등 수진 등의 문제적 모범생 20명과 교내 최고 인기샘 창욱과 엘리트반 수업을 맞은 신입 영어선생 소영 학생주임 치영이 전부이다. 그러나 수업 중 갑자기 교실 TV와 교내 스피커에서 엘리제를 위하여가 울려퍼지고 화면에는 물이 점점 차오르고 있는 수조 안에 갇혀 몸부림치며 괴로워하는 전교 1등 혜영의 모습이 보인다. 그리고 한 목소리가 학생들에게 혜영의 목숨을 건 중간고사 문제를 출제한다. 도망칠 곳도 없고 학교 안에는 선생님과 학생 24명 뿐. 그렇게 우리들만을 위해 준비된 피의 중간고사가 다시 시작된다. 주어진 시간 안에 정답을 맞추지 않으면 여러분의 친구는 죽게 됩니다 살고 싶다면 정답을 맞춰라! 전교 1등 혜영뿐만이 아니다. 하나 둘 씩 친구들이 없어지기 시작하고 친구를 살리기 위해서 그리고 내가 살아남기 위해서는 문제의 해답을 찾아야만 한다! 한정된 시간! 한정된 장소! 카운트다운은 이미 시작됐다. 친구의 목숨을 건 피의 중간고死가 시작된다.','./movieDB/35.jpg','6.82');
insert into movie values('36','곤지암','공포','국내','94분 ','15세 관람가',' 2018.03.28','정범식','위하준,박지현,오아연','1979년 환자 42명의 집단 자살과 병원장의 실종 이후 섬뜩한 괴담으로 둘러싸인 곤지암 정신병원으로 공포체험을 떠난 7명의 멤버들 원장실 집단 치료실 실험실 열리지 않는 402호… 괴담의 실체를 담아내기 위해 병원 내부를 촬영하기 시작하던 멤버들에게 상상도 못한 기이하고 공포스러운 일들이 실제로 벌어지기 시작 하는데… 가지 말라는 곳에는 반드시 이유가 있다. 소름 끼치는 곤지암 정신병원 의 실체를 체험하라!','./movieDB/36.jpg','7.51');
insert into movie values('37','도어락','공포','국내','102분','15세 관람가',' 2018.12.05','이권','공효진,김예원,김성오','오피스텔에 혼자 살고 있는 평범한 직장인 경민(공효진). 퇴근 후 집에 돌아온 경민은 원룸의 도어락 덮개가 열려있는 것을 발견한다. 불안한 마음에 도어락 비밀번호를 변경해보지만 그날 밤 잠들기 전 문 밖에서 들리는 소리 삐-삐-삐-삐- 잘못 누르셨습니다 공포감에 휩싸인 경민은 경찰에 신고를 하지만 그들은 경민의 잦은 신고를 귀찮아 할 뿐 대수롭지 않게 여긴다. 그리고 얼마 뒤 경민의 원룸에서 낯선 사람의 침입 흔적과 함께 의문의 살인 사건이 발생하고 자신도 안전하지 않음을 직감한 경민은 직접 사건의 실체를 쫓게 되는데..! 열려 있는 도어락 덮개 지문으로 뒤덮인 키패드 현관 앞 담배꽁초 혼자 사는 원룸 이곳에 누군가 숨어있다!','./movieDB/37.jpg','7.69');
insert into movie values('38','캔디맨','공포','해외','91분 ','15세 관람가',' 2021.09.22','니아 다코스타','야히아 압둘 마틴 2세, 테요나 패리스','취미도 요요 특기도 요요! 요요로 한국을 주름잡던 다섯 명의 요요소년 대열 동훈 현웅 동건 종기. 요요를 잘하면 자랑이 되었던 어린 시절을 지나 20대 후반이 된 그들에게 세상은 (살길을 찾는) 어른이 되길 요구한다.  2011년 여름 다섯 사람은 대학 졸업을 앞두고 마지막으로 자신들이 꿈꿔온 무대에 도전하고 요요를 그만두기로 결심하는데…  요요길만 걷고 싶은 요요덕후들의 꿈과 현실에 대한 이야기! 요요 마음 편히 그만둘 수 있을까?  어디로 향하든 다시 돌아오게 돼 있어! 꿈과 현실의 무한루프 <요요현상>','./movieDB/38.jpg','5.57');
insert into movie values('39','컨저링 3: 악마가 시켰다','공포','해외','111분 ','15세 관람가',' 2021.06.03','마이클 차베즈','베라 파미가, 패트릭 윌슨, 줄리안 힐리아드','들어봤니? 미지의 존재 캔디맨 비주얼 아티스트 안소니는 새 작품 구상을 위해 어릴 적 살던 도시로 돌아가고 그곳에서 오래 전부터 떠돈 괴담을 듣고 매혹되면서 캔디맨에 대한 충격적인 비밀을 알게 되는데...  불러봤니? 죽음을 부르는 남자 캔디맨 세상을 뒤흔든 미지의 존재 캔디맨 캔디맨 캔디맨 캔디맨... 한 번만 더 부르면 그가 나타나게 되는데… 용기가 있다면 그의 이름을 불러봐','./movieDB/39.jpg','6.52');
insert into movie values('40','할로윈 킬즈','공포','해외','105분 ','청소년 관람불가',' 2021.10.27','데이빗 고든 그린','제이미 리 커티스, 주디 그리어, 앤디 마티첵','1981년 미국 역사상 최초로 잔혹한 살인사건의 용의자가 악마가 살해하도록 시켰다고 주장하는 초유의 사태가 일어난다! 그리고 사건의 배후에는 악마에게 빙의된 소년이 있었는데…  초자연 현상 연구가 워렌 부부의 사건 파일 중 여전히 미스터리로 남아있는 실화! 진실 혹은 거짓? 살인사건의 범인 인간인가 악마인가...','./movieDB/40.jpg','4.53');
insert into movie values('41','범죄도시','액션','국내','121분 ','청소년 관람불가',' 2017.10.03','강윤성','마동성,윤계상','2004년 서울… 하얼빈에서 넘어와 단숨에 기존 조직들을 장악하고 가장 강력한 세력인 춘식이파 보스 황사장(조재윤 분)까지 위협하며 도시 일대의 최강자로 급부상한 신흥범죄조직의 악랄한 보스 장첸(윤계상 분). 대한민국을 뒤흔든 장첸(윤계상 분) 일당을 잡기 위해 오직 주먹 한방으로 도시의 평화를 유지해 온 괴물형사 마석도(마동석 분)와 인간미 넘치는 든든한 리더 전일만(최귀화 분) 반장이 이끄는 강력반은 나쁜 놈들을 한방에 쓸어버릴 끝.짱.나.는. 작전을 세우는데… 통쾌하고! 화끈하고! 살벌하게! 나쁜 놈들 때려잡는 강력반 형사들의 조폭소탕작전이 시작된다!','./movieDB/41.jpg','9.28');
insert into movie values('42','베테랑','액션','국내','123분 ','15세 관람가',' 2015.08.05','류승완','황정민,유아인,유해진','한 번 꽂힌 것은 무조건 끝을 보는 행동파 서도철(황정민) 20년 경력의 승부사 오팀장(오달수) 위장 전문 홍일점 미스봉(장윤주) 육체파 왕형사(오대환) 막내 윤형사(김시후)까지 겁 없고 못 잡는 것 없고 봐 주는 것 없는 특수 강력사건 담당 광역수사대. 오랫동안 쫓던 대형 범죄를 해결한 후 숨을 돌리려는 찰나 서도철은 재벌 3세 조태오(유아인)를 만나게 된다. 세상 무서울 것 없는 안하무인의 조태오와 언제나 그의 곁을 지키는 오른팔 최상무(유해진). 서도철은 의문의 사건을 쫓던 중 그들이 사건의 배후에 있음을 직감한다. 건들면 다친다는 충고에도 불구하고 포기하지 않는 서도철의 집념에 판은 걷잡을 수 없이 커져가고 조태오는 이를 비웃기라도 하듯 유유히 포위망을 빠져 나가는데… 베테랑 광역수사대 VS 유아독존 재벌 3세 2015년 여름 자존심을 건 한판 대결이 시작된다!','./movieDB/42.jpg','9.24');
insert into movie values('43','범죄와의 전쟁 : 나쁜놈들 전성시대','액션','국내','133분','청소년 관람불가',' 2012.02.02','윤종빈','최민식,하정우','비리 세관 공무원 최익현 보스 최형배를 만나다! 1982년 부산. 해고될 위기에 처한 비리 세관원 최익현(최민식)은 순찰 중 적발한 히로뽕을 일본으로 밀수출 마지막으로 한 탕 하기 위해 부산 최대 조직의 젊은 보스 최형배(하정우)와 손을 잡는다. 머리 쓰는 나쁜 놈과 주먹 쓰는 나쁜 놈 부산을 접수하다! 익현은 탁월한 임기응변과 특유의 친화력으로 형배의 신뢰를 얻는 데 성공한다. 주먹 넘버원 형배와 로비의 신 익현은 함께 힘을 합쳐 부산을 접수하기 시작하고 두 남자 앞에 나쁜 놈들의 전성시대가 펼쳐진다. 넘버원이 되고 싶은 나쁜 놈들의 한판 승부. 범죄와의 전쟁 하지만 1990년 범죄와의 전쟁이 선포되자 조직의 의리는 금이 가고 넘버원이 되고 싶은 나쁜 놈들 사이의 배신이 시작된다. 살아남기 위해 벌이는 치열한 한판 승부 최후에 웃는 자는 과연 누가 될 것인가?','./movieDB/43.jpg','8.65');
insert into movie values('44','한산: 용의 출현','액션','국내','129분','15세 관람가',' 2022.07.27','김한민','박해일,안성기,변요한','1592년 4월 조선은 임진왜란 발발 후 단 15일 만에 왜군에 한양을 빼앗기며 절체절명의 위기에 놓인다. 조선을 단숨에 점령한 왜군은 명나라로 향하는 야망을 꿈꾸며 대규모 병역을 부산포로 집결시킨다. 한편 이순신 장군은 연이은 전쟁의 패배와 선조마저 의주로 파천하며 수세에 몰린 상황에서도 조선을 구하기 위해 전술을 고민하며 출전을 준비한다. 하지만 앞선 전투에서 손상을 입은 거북선의 출정이 어려워지고 거북선의 도면마저 왜군의 첩보에 의해 도난 당하게 되는데… 왜군은 연승에 힘입어 그 우세로 한산도 앞바다로 향하고 이순신 장군은 조선의 운명을 가를 전투를 위해 필사의 전략을 준비한다. 1592년 여름 음력 7월 8일 한산도 앞바다 압도적인 승리가 필요한 조선의 운명을 건 지상 최고의 해전이 펼쳐진다.','./movieDB/44.jpg','8.57');
insert into movie values('45','괴물','액션','국내','119분','12세 관람가',' 2006.07.27','봉준호','송강호,변희봉,박해일','햇살 가득한 평화로운 한강 둔치 아버지(변희봉)가 운영하는 한강 매점 늘어지게 낮잠 자던 강두(송강호)는 잠결에 들리는 아빠라는 소리에 벌떡 일어난다. 올해 중학생이 된 딸 현서(고아성)가 잔뜩 화가 나있다. 꺼내놓기도 창피한 오래된 핸드폰과 학부모 참관 수업에 술 냄새 풍기며 온 삼촌(박해일)때문이다. 강두는 고민 끝에 비밀리에 모아 온 동전이 가득 담긴 컵라면 그릇을 꺼내 보인다. 그러나 현서는 시큰둥할 뿐 막 시작된 고모(배두나)의 전국체전 양궁경기에 몰두해 버린다. 그곳에서 괴물이 나타났다. 한강 둔치로 오징어 배달을 나간 강두 우연히 웅성웅성 모여있는 사람들 속에서 특이한 광경을 목격하게 된다. 생전 보도 못한 무언가가 한강다리에 매달려 움직이는 것이다. 사람들은 마냥 신기해하며 핸드폰 디카로 정신 없이 찍어댄다. 그러나 그것도 잠시… 정체를 알 수 없는 괴물은 둔치 위로 올라와 사람들을 거침없이 깔아뭉개고 무차별로 물어뜯기 시작한다. 순식간에 아수라장으로 돌변하는 한강변. 강두도 뒤늦게 딸 현서를 데리고 정신 없이 도망가지만 비명을 지르며 흩어지는 사람들 속에서 꼭 잡았던 현서의 손을 놓치고 만다. 그 순간 괴물은 기다렸다는 듯이 현서를 낚아채 유유히 한강으로 사라진다. 어딘가에 있을 현서를 반드시 찾아야 한다. 갑작스런 괴물의 출현으로 한강은 모두 폐쇄되고 도시 전체는 마비된다. 하루아침에 집과 생계 그리고 가장 소중한 현서까지 모든 것을 잃게 된 강두 가족… 돈도 없고 빽도 없는 그들은 아무도 도와주지 않지만 위험구역으로 선포된 한강 어딘가에 있을 현서를 찾아 나선다.','./movieDB/45.jpg','8.63');
insert into movie values('46','어벤져스: 엔드게임','액션','해외','181분','12세 관람가',' 2019.04.24','안소니 루소','로버트 다우니 주니어,크리스 에반스,크리스 햄스워스','인피니티 워 이후 절반만 살아남은 지구 마지막 희망이 된 어벤져스 먼저 떠난 그들을 위해 모든 것을 걸었다! 위대한 어벤져스 운명을 바꿀 최후의 전쟁이 펼쳐진다!','./movieDB/46.jpg','9.5');
insert into movie values('47','내부자들','액션','국내','130분','청소년 관람불가',' 2015.11.19','우민호','이병헌,조승우,백윤식','복수극으로 가자고 화끈하게 유력한 대통령 후보와 재벌 회장 그들을 돕는 정치깡패 안상구(이병헌). 뒷거래의 판을 짠 이는 대한민국 여론을 움직이는 유명 논설주간 이강희(백윤식)다. 더 큰 성공을 원한 안상구는 이들의 비자금 파일로 거래를 준비하다 발각되고 이 일로 폐인이 되어 버려진다. 넌 복수를 원하고 난 정의를 원한다. 그림 좋잖아? 빽 없고 족보가 없어 늘 승진을 눈 앞에 두고 주저 앉는 검사 우장훈(조승우). 마침내 대선을 앞둔 대대적인 비자금 조사의 저격수가 되는 기회를 잡는다. 그러나 비자금 파일을 가로챈 안상구 때문에 수사는 종결되고 우장훈은 책임을 떠안고 좌천된다. 자신을 폐인으로 만든 일당에게 복수를 계획하는 정치깡패 안상구 비자금 파일과 안상구라는 존재를 이용해 성공하고 싶은 무족보 검사 우장훈 그리고 비자금 스캔들을 덮어야 하는 대통령 후보와 재벌 그들의 설계자 이강희 과연 살아남는 자는 누가 될 것인가?','./movieDB/47.jpg','9.06');
insert into movie values('48','고질라 VS. 콩','액션','해외','113분 ','12세 관람가',' 2021.03.25','애덤 윈가드','알렉산더 스카스가드, 밀리 바비 브라운','우스나비에겐 도미니카 해변에 아버지의 상점을 다시 열고 싶은 꿈이 있다. 어린 시절부터 좋아한 친구 바네사에게 아직 고백 한 번 못한 채 망설이며 지내고 있다. 바네사는 동네 미용실에서 패션 디자이너가 되기 위해 도시로 나가려다 예기치 못한 사랑에 빠진다. 스탠포드 대학에 진학한 니나는 가족들과 마을 사람들의 기대가 부담스럽고 연인 베니는 니나의 아버지이자 사장이 니나의 학비 마련을 위해 운수회사를 팔려고 한다는 사실을 알게 된다. 그러던 어느 날 우스나비 가게에서 복권 당첨자가 나오고 하이츠의 모든 사람들은 저 마다의 행복한 미래를 꿈꾸는데...','./movieDB/48.jpg','8.17');
insert into movie values('49','아이언맨3','액션','해외','129분','12세 관람가',' 2013.04.25','셰인 블랙','로버트 다우니 주니어','<어벤져스> 뉴욕 사건의 트라우마로 인해 영웅으로서의 삶에 회의를 느끼는 토니 스타크(로버트 다우니 주니어). 그가 혼란을 겪는 사이 최악의 테러리스트 만다린(벤 킹슬리)을 내세운 익스트리미스 집단 AIM이 스타크 저택에 공격을 퍼붓는다. 이 공격으로 그에게 남은 건 망가진 수트 한벌 뿐. 모든 것을 잃어버린 그는 다시 테러의 위험으로부터 세계와 사랑하는 여인(기네스 팰트로)를 지켜내야 하는 동시에 머릿속을 떠나지 않던 한가지 물음의 해답도 찾아야만 한다. 과연 그가 아이언맨인가? 수트가 아이언맨인가?','./movieDB/49.jpg','8.86');
insert into movie values('50','모가디슈','액션','국내','121분 ','15세 관람가',' 2021.07.28','류승완','김윤석, 조인성, 허준호','1995년 작가를 꿈꾸는 조안나는 뉴욕에서 가장 오래된 작가 에이전시에 CEO 마가렛의 조수로 입사한다.  출근 첫날 호밀밭의 파수꾼의 작가 J.D. 샐린저의 팬레터에 기계적으로 응대하라는 지시를 받지만 조안나는 그들에게 진심 어린 답장을 보내려 한다.','./movieDB/50.jpg','8.34');
insert into movie values('51','닥터 스트레인지: 대혼돈의 멀티버스','SF','해외','126분','15세 관람가',' 2022.05.04','샘 레이미','베네딕트 컴버배치,엘리자베스 올슨','끝없이 균열되는 차원과 뒤엉킨 시공간의 멀티버스가 열리며 오랜 동료들 그리고 차원을 넘어 들어온 새로운 존재들을 맞닥뜨리게 된 닥터 스트레인지. 대혼돈 속 그는 예상치 못한 극한의 적과 맞서 싸워야만 하는데….','./movieDB/51.jpg','7.77');
insert into movie values('52','승리호','SF','국내','103분 ','12세 관람가',' 2021.02.05','조성희','송중기,김태리,진선규','2092년 지구는 병들고 우주 위성궤도에 인류의 새로운 보금자리인 UTS가 만들어졌다. 돈 되는 일이라면 뭐든 하는 조종사 태호(송중기) 과거 우주 해적단을 이끌었던 장선장(김태리) 갱단 두목이었지만 이제는 기관사가 된 타이거 박(진선규) 평생 이루고 싶은 꿈을 가진 작살잡이 로봇 업동이(유해진). 이들은 우주쓰레기를 주워 돈을 버는 청소선 승리호의 선원들이다. 오지 마! 쳐다보지도 말고 숨도 조심해서 쉬어. 엉겨 붙을 생각하지 마! 어느날 사고 우주정을 수거한 승리호는 그 안에 숨어있던 대량살상무기로 알려진 인간형 로봇 도로시를 발견한다. 돈이 절실한 선원들은 도로시를 거액의 돈과 맞바꾸기 위한 위험한 거래를 계획하는데… 비켜라 이 무능한 것들아. 저건 내 거다!','./movieDB/52.jpg','7.81');
insert into movie values('53','인터스텔라','SF','해외','169분','12세 관람가',' 2014.11.06','크리스토퍼 놀란','매튜 맥커너히,앤 해서웨이,마이클 케인','세계 각국의 정부와 경제가 완전히 붕괴된 미래가 다가온다. 지난 20세기에 범한 잘못이 전 세계적인 식량 부족을 불러왔고 NASA도 해체되었다. 이때 시공간에 불가사의한 틈이 열리고 남은 자들에게는 이 곳을 탐험해 인류를 구해야 하는 임무가 지워진다. 사랑하는 가족들을 뒤로 한 채 인류라는 더 큰 가족을 위해 그들은 이제 희망을 찾아 우주로 간다. 그리고 우린 답을 찾을 것이다. 늘 그랬듯이…','./movieDB/53.jpg','9.12');
insert into movie values('54','인셉션','SF','해외','147분','12세 관람가',' 2010.07.21','크리스토퍼 놀란','레오나르도 디카프리오,와타나베 켄','타인의 꿈에 들어가 생각을 훔치는 특수 보안요원 코브. 그를 이용해 라이벌 기업의 정보를 빼내고자 하는 사이토는 코브에게 생각을 훔치는 것이 아닌 생각을 심는 인셉션 작전을 제안한다. 성공 조건으로 국제적인 수배자가 되어있는 코브의 신분을 바꿔주겠다는 거부할 수 없는 제안을 하고 사랑하는 아이들에게 돌아가기 위해 그 제안을 받아들인다. 최강의 팀을 구성 표적인 피셔에게 접근해서 인셉션 작전을 실행하지만 예기치 못한 사건들과 마주하게 되는데… 꿈 VS 현실 시간 규칙 타이밍 모든 것이 완벽해야만 하는 단 한 번도 성공한 적 없는 인셉션 작전이 시작된다!','./movieDB/54.jpg','9.6');
insert into movie values('55','퍼시픽 림: 업라이징','SF','해외','111분 ','15세 관람가',' 2018.03.21','스티븐 S.드나이트','존 보예가, 스콧 이스트우드','전 세계를 초토화시켰던 전쟁 이후 지구 종말의 위기가 다시 찾아온다. 더 강력하게 진화한 적들의 공격이 인류의 재앙을 불러오고 최정예 파일럿과 업그레이드 된 거대 로봇 예거 군단은 사상 최대의 반격을 시작한다. 하지만 아무도 예상치 못했던 또 다른 적의 등장으로 인류는 전대미문의 위기에 봉착하게 되는데…','./movieDB/55.jpg','7.94');
insert into movie values('56','토르: 러브 앤 썬더','SF','해외','119분','12세 관람가',' 2022.07.06','타이카 와이티티','크리스 햄스워스,나탈리 포트만','슈퍼 히어로 시절이여 안녕! 이너피스를 위해 자아 찾기 여정을 떠난 천둥의 신 토르 그러나 우주의 모든 신들을 몰살하려는 신 도살자 고르의 등장으로 토르의 안식년 계획은 산산조각 나버린다. 토르는 새로운 위협에 맞서기 위해 킹 발키리 코르그 그리고 전 여자친구 제인과 재회하게 되는데 그녀가 묠니르를 휘두르는 마이티 토르가 되어 나타나 모두를 놀라게 한다. 이제 팀 토르는 고르의 복수에 얽힌 미스터리를 밝히고 더 큰 전쟁을 막기 위한 전 우주적 스케일의 모험을 시작하는데... 우주 최고의 갓 매치가 시작된다!','./movieDB/56.jpg','6.72');
insert into movie values('57','베놈 2: 렛 데어 비 카니지','SF','해외','97분 ','15세 관람가',' 2021.10.13','앤디 서키스','톰 하디,미셸 윌리엄스','베놈과 완벽한 파트너가 된 에디 브록(톰 하디) 앞에 클리터스 캐서디(우디 해럴슨)가 카니지로 등장 앞으로 닥칠 대혼돈의 세상을 예고한다. 대혼돈의 시대가 시작되고 악을 악으로 처단할 것인가?','./movieDB/57.jpg','6.41');
insert into movie values('58','메가로돈','SF','해외','113분 ','12세 관람가',' 2018.08.15','존 터틀타웁','제이슨 스타뎀,레인 월슨','국제 해저 관측 프로그램으로 일환으로 심해를 탐사 중인 해저 탐험대는 정체 모를 거대 생물에게 공격을 당한다. 긴급 투입된 심해 구조 전문가 조나스(제이슨 스타뎀)는 그것이 200만년 전 멸종된 것으로 알려진 메가로돈임을 주장한다. 아무도 믿으려 하지 않지만 조나스는 역사상 가장 위대하고 가장 거대한 포식자와 두 번째로 마주하는 것인데…','./movieDB/58.jpg','7.52');
insert into movie values('59','듄','SF','해외','155분','12세 관람가',' 2021.10.20','드니 빌뇌브','티모시 샬라메,레베가 퍼거슨','10191년 아트레이데스 가문의 후계자인 폴(티모시 샬라메)은 시공을 초월한 존재이자 전 우주를 구원할 예지된 자의 운명을 타고났다. 그리고 어떤 계시처럼 매일 꿈에서 아라키스 행성에 있는 한 여인을 만난다. 모래언덕을 뜻하는 듄이라 불리는 아라키스는 물 한 방울 없는 사막이지만 우주에서 가장 비싼 물질인 신성한 환각제 스파이스의 유일한 생산지로 이를 차지하기 위한 전쟁이 치열하다. 황제의 명령으로 폴과 아트레이데스 가문은 죽음이 기다리는 아라키스로 향하는데… 위대한 자는 부름에 응답한다 두려움에 맞서라 이것은 위대한 시작이다!','./movieDB/59.jpg','8.82');
insert into movie values('60','모비우스','SF','해외','104분 ','15세 관람가',' 2022.03.30','다니엘 에스피노사','자레드 레토,아드리아 아르호나','희귀혈액병을 앓고 있는 생화학자 모비우스(자레드 레토)는 동료인 마르틴(아드리아 아르호나)과 함께 치료제 개발에 몰두한다. 흡혈 박쥐를 연구하던 중 마침내 치료제 개발에 성공한 모비우스는 새 생명과 강력한 힘을 얻게 되지만 동시에 흡혈을 하지 않고는 생명을 유지할 수 없게 된다. 그러던 중 모비우스와 같은 병을 앓고 있던 그의 친구 마일로(맷 스미스)도 모비우스와 같은 힘을 얻게 되는데… 세상을 구할 능력 파괴할 본능! 마블 최강의 안티 히어로가 탄생한다!','./movieDB/60.jpg','6.78');
insert into movie values('61','아네트','뮤지컬','해외','141분','12세 관람가',' 2021.10.27','레오 카락스','아담 드라이버,마리옹 꼬띠아르','예술가들의 도시 LA 오페라 가수 `안(마리옹 꼬띠아르)`과 스탠드업 코미디언 `헨리(아담 드라이버)`는 첫눈에 서로에게 이끌린다. 함께 인생을 노래하는 두 사람에게 무대는 계속되지만 그곳엔 빛과 어둠이 함께한다.','./movieDB/61.jpg','7.46');
insert into movie values('62','위대한 쇼맨','뮤지컬','해외','104분 ','12세 관람가',' 2017.12.20','마이클 그레이시','휴 잭맨,잭 에프론','쇼 비즈니스의 창시자이자 꿈의 무대로 전세계를 매료시킨 남자 바넘의 이야기에서 영감을 받아 탄생한 오리지널 뮤지컬 영화 <위대한 쇼맨>. <레미제라블> 이후 다시 뮤지컬 영화로 돌아온 휴 잭맨부터 잭 에프론 미셸 윌리엄스 레베카 퍼거슨 젠다야까지 할리우드 최고의 배우들이 합류해 환상적인 앙상블을 선보인다. 여기에 <미녀와 야수> 제작진과 <라라랜드> 작사팀의 합류로 더욱 풍성해진 비주얼과 스토리 음악까지 선보일 <위대한 쇼맨>은 우리는 누구나 특별하다는 메시지로 관객들에게 재미는 물론 감동까지 선사할 것이다. THIS IS ME! 우리는 누구나 특별하다!','./movieDB/62.jpg','9.31');
insert into movie values('63','리스펙트','뮤지컬','해외','145분','12세 관람가',' 2021.09.08','리슬 타미','제니퍼 허드슨','내면의 폭풍을 이겨낸 강한 여자 세상을 바꾸고 영혼을 위로한 환상의 디바 아레사 프랭클린. 그녀의 노래가 울려 퍼진다!','./movieDB/63.jpg','7.54');
insert into movie values('64','시라노','뮤지컬','해외','123분 ','12세 관람가',' 2022.02.23','조 라이트','피터 딘클리지,헤일리 베넷,켈빈 해리슨 주니어','사랑을 대신 써주는 남자 시라노! 여기 10명의 남자와 싸울 용기는 있지만 평생을 사랑해 온 한 여자에게 고백할 용기만큼은 없는 작은 시인이 있다. 그가 사랑한 여자는 바로... 진실된 사랑을 찾는 여자 록산! 아이들은 사랑이 필요하고 어른들은 돈이 필요해.라고 말하는 시대. 하지만 록산은 진짜 사랑을 원한다. 그런 그녀 앞에 눈부신 남자 크리스티앙이 나타나고 두 사람은 첫 눈에 반하고 마는데… 사랑의 시를 빌려 쓴 남자 크리스티앙! 록산을 향한 뜨거운 마음을 표현할 줄 모르는 그는 시라노가 대신 써준 편지로 그녀에게 마음을 전하기 시작한다. 지금부터 엇갈린 사랑의 노래로 전하는 화려하고 아름다운 로맨스가 펼쳐진다!','./movieDB/64.jpg','7.54');
insert into movie values('65','엘비스','뮤지컬','해외','159분','15세 관람가',' 2022.07.13','바즈 루어만','오스틴 버틀러,톰 행크스','미국 남부 멤피스에서 트럭을 몰며 음악의 꿈을 키우던 19살의 무명 가수 엘비스. 지역 라디오의 작은 무대에 서게 된 엘비스는 어디서도 본 적 없는 몸짓과 퍼포먼스로 무대를 압도하고 그에게 매료된 관객들에게 뜨거운 환호성을 받는다. 쇼 비즈니스 업계에서 일하던 톰 파커는 이를 목격하고 엘비스에게 스타로 만들어주겠다고 약속하며 함께할 것을 제안한다. 자신이 자라난 동네에서 보고 들은 흑인음악을 접목시킨 독특한 음색과 리듬 강렬한 퍼포먼스 화려한 패션까지 그의 모든 것이 대중을 사로잡으며 엘비스는 단숨에 스타의 반열에 올라선다. 그러나 시대를 앞서 나간 치명적이고 반항적인 존재감은 혼란스러운 시대 상황과 갈등을 빚게 되고 지금껏 쌓아온 모든 것이 한순간에 무너질 수 있다고 압박하는 톰 파커까지 가세해 엘비스는 그의 뜻과는 다른 선택을 하게 된다. 이로 인해 평생을 함께한 매니저 톰 파커와의 관계도 조금씩 어긋나기 시작하는데…','./movieDB/65.jpg','8.73');
insert into movie values('66','스윙키즈','뮤지컬','국내','133분','12세 관람가',' 2018.12.19','강형철','도경수,자레드 그라임스,박혜수','1951년 한국전쟁 최대 규모의 거제 포로수용소. 새로 부임해 온 소장은 수용소의 대외적 이미지 메이킹을 위해 전쟁 포로들로 댄스단을 결성하는 프로젝트를 계획한다. 수용소 내 최고 트러블메이커 로기수(도경수) 무려 4개 국어가 가능한 무허가 통역사 양판래(박혜수) 잃어버린 아내를 찾기 위해 유명해져야 하는 사랑꾼 강병삼(오정세) 반전 댄스실력 갖춘 영양실조 춤꾼 샤오팡(김민호) 그리고 이들의 리더 전직 브로드웨이 탭댄서 잭슨(자레드 그라임스)까지 우여곡절 끝에 한 자리에 모인 그들의 이름은 스윙키즈! 각기 다른 사연을 갖고 춤을 추게 된 그들에게 첫 데뷔 무대가 다가오지만 국적 언어 이념 춤 실력 모든 것이 다른 오합지졸 댄스단의 앞날은 캄캄하기만 한데…!','./movieDB/66.jpg','8.94');
insert into movie values('67','보헤미안 랩소디','뮤지컬','해외','134분','12세 관람가',' 2018.10.31','브라이언 싱어','라미 말렌,루시 보인턴','공항에서 수하물 노동자로 일하며 음악의 꿈을 키우던 이민자 출신의 아웃사이더 파록버사라 보컬을 구하던 로컬 밴드에 들어가게 되면서 프레디 머큐리라는 이름으로 밴드 퀸을 이끌게 된다. 시대를 앞서가는 독창적인 음악과 화려한 퍼포먼스로 관중들을 사로잡으며 성장하던 퀸은 라디오와 방송에서 외면을 받을 것이라는 음반사의 반대에도 불구하고 무려 6분 동안 이어지는 실험적인 곡 보헤미안 랩소디로 대성공을 거두며 월드스타 반열에 오른다. 그러나 독보적인 존재감을 뿜어내던 프레디 머큐리는 솔로 데뷔라는 유혹에 흔들리게 되고 결국 오랜 시간 함께 해왔던 멤버들과 결별을 선언하게 되는데… 세상에서 소외된 아웃사이더에서 전설의 록밴드 퀸이 되기까지 우리가 몰랐던 그들의 진짜 이야기가 시작된다!','./movieDB/67.jpg','9.45');
insert into movie values('68','레미제라블','뮤지컬','해외','158분','12세 관람가',' 2012.12.19','톰 후퍼','휴 잭맨,앤 해서웨이,러셀 크로우','빵 한 조각을 훔친 죄로 19년의 감옥살이를 한 장발장(휴 잭맨). 전과자라는 이유만으로 모두의 박해를 받던 장발장은 우연히 만난 신부의 손길 아래 구원을 받고 새로운 삶을 결심한다. 정체를 숨기고 마들렌이라는 새 이름으로 가난한 이들을 도우며 지내던 장발장은 운명의 여인 판틴(앤 해서웨이)과 마주치고 죽음을 눈앞에 둔 판틴은 자신의 유일한 희망인 딸 코제트(아만다 사이프리드)를 장발장에게 부탁한다. 그러나 코제트를 만나기도 전에 경감 자베르(러셀 크로우)는 장발장의 진짜 정체를 알아차리고 오래된 누명으로 다시 체포된 장발장은 코제트를 찾아 탈옥을 감행하는데…','./movieDB/68.jpg','9.2');
insert into movie values('69','주디','뮤지컬','해외','118분','12세 관람가',' 2020.03.25','루퍼트 굴드','르네 젤위거','<오즈의 마법사>의 영원한 도로시 시대를 초월한 히트송 오버 더 레인보우의 주인공 20세기 최고의 여배우 주디 갈랜드! 그녀는 자신의 모든 것을 담은 생애 마지막 무대를 런던에서 준비하는데… 모두가 숨죽인 가운데 막이 오르고 레전드 쇼가 시작된다. Somewhere Over the Rainbow','./movieDB/69.jpg','9.17');
insert into movie values('70','스타 이즈 본','뮤지컬','해외','135분','15세 관람가',' 2018.10.09','브래들리 쿠퍼','브래들리 쿠퍼,레이디 가가','노래에 놀라운 재능을 가졌지만 외모에는 자신이 없는 무명가수 앨리(레이디 가가)는 공연을 하던 바에서 우연히 톱스타 잭슨 메인(브래들리 쿠퍼)을 만나게 된다. 자신의 모든 것을 사랑해주는 잭슨의 도움으로 앨리는 자기 안의 열정을 폭발시키며 최고의 스타로 거듭나지만 잭슨은 어린 시절의 상처와 예술가적 고뇌 속에서 점점 무너져가는데…','./movieDB/70.jpg','9.15');
insert into movie values('71','토이스토리4','애니메이션','해외','100분 ','전체 관람가',' 2019.06.20','조시 쿨리','톰 행크스, 팀 알렌','장난감의 운명을 거부하고 떠난 새 친구 포키를 찾기 위해 길 위에 나선 우디는 우연히 오랜 친구 보핍을 만나고 그녀를 통해 새로운 세상에 눈을 뜨게 된다. 한편 버즈와 친구들은 사라진 우디와 포키를 찾아 세상 밖 위험천만한 모험을 떠나게 되는데…','./movieDB/71.jpg','9.23');
insert into movie values('72','겨울왕국2','애니메이션','해외','103분 ','전체 관람가',' 2019.11.21','크리스 벅,제니퍼 리','크리스틴 벨,이디나 멘젤','어느 날 부턴가 의문의 목소리가 엘사를 부르고 평화로운 아렌델 왕국을 위협한다. 트롤은 모든 것은 과거에서 시작되었음을 알려주며 엘사의 힘의 비밀과 진실을 찾아 떠나야한다고 조언한다. 위험에 빠진 아렌델 왕국을 구해야만 하는 엘사와 안나는 숨겨진 과거의 진실을 찾아 크리스토프 올라프 그리고 스벤과 함께 위험천만한 놀라운 모험을 떠나게 된다. 자신의 힘을 두려워했던 엘사는 이제 이 모험을 헤쳐나가기에 자신의 힘이 충분하다고 믿어야만 하는데… 두려움을 깨고 새로운 운명을 만나다!','./movieDB/72.jpg','8.95');
insert into movie values('73','너의 이름은','애니메이션','해외','106분','전체 관람가',' 2017.01.04','신카이 마코토','카미키 류노스케,카미시라이시 모네','아직 만난 적 없는 너를 찾고 있어 천년 만에 다가오는 혜성 기적이 시작된다 도쿄에 사는 소년 타키와 시골에 사는 소녀 미츠하는 서로의 몸이 뒤바뀌는 신기한 꿈을 꾼다 낯선 가족 낯선 친구들 낯선 풍경들... 반복되는 꿈과 흘러가는 시간 속 마침내 깨닫는다 우리 서로 뒤바뀐 거야? 절대 만날 리 없는 두 사람 반드시 만나야 하는 운명이 되다 서로에게 남긴 메모를 확인하며 점점 친구가 되어가는 타키와 미츠하 언제부턴가 더 이상 몸이 바뀌지 않자 자신들이 특별하게 이어져있었음을 깨달은 타키는 미츠하를 만나러 가는데... 잊고 싶지 않은 사람 잊으면 안 되는 사람 너의 이름은?','./movieDB/73.jpg','9.02');
insert into movie values('74','하울의 움직이는 성','애니메이션','해외','119분','전체 관람가',' 2004.12.23','미야자키 하야오','바이쇼 치에코,기무라 타쿠야','어느 날 영문도 모른 채 마녀의 저주로 인해 할머니가 된 소녀 소피 절망 속에서 길을 걷다가 거대한 마법의 성에 들어가게 된다. 그곳에서 자신과 마법사 하울의 계약을 깨주면 저주를 풀어주겠다는 불꽃악마 캘시퍼의 제안을 받고 청소부가 되어 움직이는 성에 머물게 되는데…','./movieDB/74.jpg','9.35');
insert into movie values('75','뽀로로 극장판 드래곤캐슬 대모험','애니메이션','국내','70분','전체 관람가',' 2022.07.28','강승훈,윤제완','이선,이미자,김현지','깊은 산속 드래곤캐슬에 꼬마 드래곤 왕 아서의 막강한 힘이 봉인된 보석 드래곤 하트를 빼앗아 왕이 되려는 수상한 마법사 게드가 나타난다. 한편 우연히 드래곤 하트의 힘을 흡수한 크롱이 자이언트 크롱으로 변하면서 뽀로로와 친구들 역시 위험에 처한다. 아서와 뽀로로와 친구들은 악당 마법사 게드로부터 힘을 되찾고 친구들을 구하기 위해 무적의 메카드래곤을 만들어 드래곤캐슬로 향하는데…! 뽀로로와 친구들의 판타지 액션 어드벤처! 과연 드래곤캐슬과 소중한 친구들을 지켜낼 수 있을까?','./movieDB/75.jpg','8.99');
insert into movie values('76','이웃집 토토로','애니메이션','해외','87분','전체 관람가',' 2001.07.28','미야자키 하야오','히다카 노리코,사카모토 치카','도시를 떠나 시골로 이사 온 사츠키와 메이는 우연히 숲속에 살고 있는 신비로운 생명체 토토로를 만나 신비한 모험을 함께 한다. 그러던 어느 날 어머니의 병원에서 위태로운 소식이 도착하고 언니 사츠키가 정신없이 아빠에게 연락을 취하는 와중에 메이가 행방불명 되는데…','./movieDB/76.jpg','9.53');
insert into movie values('77','라따뚜이','애니메이션','해외','115분','전체 관람가',' 2007.07.25','브래드 버드','패튼 오스왈트,루 로마노','절대미각 빠른 손놀림 끓어 넘치는 열정의 소유자 레미. 프랑스 최고의 요리사를 꿈꾸는 그에게 단 한가지 약점이 있었으니 바로 주방 퇴치대상 1호인 생쥐라는 것! 그러던 어느 날 하수구에서 길을 잃은 레미는 운명처럼 파리의 별 다섯개짜리 최고급 레스토랑에 떨어진다. 그러나 생쥐의 신분으로 주방이란 그저 그림의 떡. 보글거리는 수프 둑닥둑닥 도마소리 향긋한 허브 내음에 식욕이 아닌 요리욕이 북받친 레미의 작은 심장은 콩닥콩닥 뛰기 시작하는데! 쥐면 쥐답게 쓰레기나 먹고 살라는 가족들의 핀잔에도 굴하지 않고 끝내 주방으로 들어가는 레미. 깜깜한 어둠 속에서 요리에 열중하다 재능 없는 견습생 링귀니에게 딱 걸리고 만다. 하지만 해고위기에 처해있던 링귀니는 레미의 재능을 한눈에 알아보고 의기투합을 제안하는데. 과연 궁지에 몰린 둘은 환상적인 요리 실력을 발휘할 수 있을 것인가? 레니와 링귀니의 좌충우돌 공생공사 프로젝트가 아름다운 파리를 배경으로 이제 곧 펼쳐진다!','./movieDB/77.jpg','9.31');
insert into movie values('78','리틀드래곤 코코넛2: 정글대탐험','애니메이션','해외','79분 ','전체 관람가',' 2021.02.24','앤소니 파워','손선영, 원에스더, 김한나','손만 대면 대박을 터트리는 도유 업계 최고 천공기술자 핀돌이는 수천억의 기름을 빼돌리기 위해 거대한 판을 짠 대기업 후계자 건우의 거부할 수 없는 제안에 빠져 위험천만한 도유 작전에 합류한다.  프로 용접공 접새 땅 속을 장기판처럼 꿰고 있는 나과장 괴력의 인간 굴착기 큰삽 이 모든 이들을 감시하는 카운터까지!  그러나 저마다 다른 목적을 가진 이들이 서로를 속고 속이면서 계획은 예상치 못한 방향으로 흘러가기 시작하는데...  인생 역전을 꿈꾸는 여섯 명의 도유꾼들 그들의 막장 팀플레이가 시작된다!','./movieDB/78.jpg','8.52');
insert into movie values('79','보스 베이비 2','애니메이션','해외','107분 ','전체 관람가',' 2021.07.21','톰 맥그라스','알렉 볼드윈, 제임스 마스던, 에이미 세다리스','경찰서로 배달된 의문의 소포 그리고 시작된 경찰 연쇄살인 또 다른 살인이 시작되기 전 단서를 찾고 사건을 해결하라!','./movieDB/79.jpg','8.94');
insert into movie values('80','센과 치히로의 행방불명','애니메이션','해외','126분','전체 관람가',' 2002.06.28','미야자키 하야오','히이라기 루미,이리노 미유','금지된 세계의 문이 열렸다! 이사 가던 날 수상한 터널을 지나자 인간에게는 금지된 신들의 세계로 오게 된 치히로.. 신들의 음식을 먹은 치히로의 부모님은 돼지로 변해버린다. 걱정마 내가 꼭 구해줄게… 겁에 질린 치히로에게 다가온 정체불명의 소년 하쿠. 그의 따뜻한 말에 힘을 얻은 치히로는 인간 세계로 돌아가기 위해 사상 초유의 미션을 시작하는데…','./movieDB/80.jpg','9.58');


DROP TABLE movie CASCADE CONSTRAINTS;

---------------------------------------------------------------------------------

--table reword
create table reword(
     numnum number not null ,
    ID varchar2(50)  not null,
    mno varchar2(7)  not null,
    title varchar2(500) not null, 
    grade number(2,1) not null,
    writing varchar2(1000) not null
);

drop table reword;--------하지마

   select * from reword;
   
   
insert into reword values(1,'admin', '23138', '죽어도 좋은 경험', 5,'재미있어요');--이거하나만 넣기   
insert into reword values((SELECT NVL(MAX(numnum),0)+1 FROM reword),'aaa', '23138', '죽어도 좋은 경험', 5,'재미있어요');

select numnum from reword where mno = '107992' and id = 'ccc';
update reword set grade = 5, writing = '재미없다' where numnum = 10;
select numnum from reword;
SELECT MAX(numnum)+1 FROM reword;

INSERT INTO reword (numnum, id, mno, title, grade, writing)
SELECT (SELECT NVL(MAX(numnum),0)+1 FROM reword)
, 'NNN'
, '114330'
, '바쿠라우'
, 4
, '나가'  
  FROM reword
 WHERE NOT EXISTS (SELECT ID
                     FROM reword
                     where id = 'fff'
                      and mno = '114330');   
                         
INSERT INTO reword
SELECT (SELECT NVL(MAX(numnum),0)+1 FROM reword)
    , 'fff'
     , '23138'
     , '죽어도 좋은 경험'
     , 4
     , '나가'
     
  FROM reword
 WHERE NOT EXISTS (SELECT id
                     FROM reword
                     where id = 'fff'
                      and mno = '23138');                         
                    
select * from reword; 

--------------------------------------------------------------------------------
create table movieLike(
ID varchar2(50) not null,
MNO varchar2(7)not null
   );

drop table movieLike;
 



-------------------------------------------------------------------------------

-- movieLike -> (mno & movie mno) foreign key 연결
alter table movieLike
add constraint fk_mno foreign key (mno) references movie(mno);   

-- movieLike -> (id & people id) foreign key 연결
alter table movieLike
add constraint fk_id foreign key (id) references people(id);

--제약 조건 확인
select * from user_constraints;


--테이블에 외래키 제약조건을 비활성화
alter table reword
disable constraint fk_mno;

--테이블에 외래키 제약조건을 활성화
alter table reword
enable constraint fk_mno;

--테이블 모든 데이터 삭제
truncate table reword;

--테이블에 외래키 제약조건 삭제
alter table reword
drop constraint fk_mno cascade;


--오류났을 때 drop순서
people, movie 가장 마지막에
commit;