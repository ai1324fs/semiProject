create table board (
B_NO varchar2(50),
WRITER varchar2(50),
SUBJECT varchar2(15),
REG_DATE sysdate(),
REF number,
RE_STEP number,
RE_LEVEL number,
READCOUNT number,
CONTENT	varchar2(500)
);


create sequence board_num
   start with 1
   increment by 1
   minvalue 1
   maxvalue 1000
   cycle;

  select * from board;
  
  
  
  create table board(
   B_NO   number not null primary key,
   WRITER   varchar2(50) not null,
   SUBJECT   varchar2(15) not null,
   password varchar(15) not null,
   REG_DATE   date, 
   REF   number, 
   RE_STEP   number, 
   RE_LEVEL   number,
   READCOUNT   number,
   CONTENT   varchar2(500) not null
);

drop table board;