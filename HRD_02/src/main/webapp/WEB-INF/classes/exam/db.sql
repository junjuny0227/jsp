--학생 테이블 생성
create table tbl_student_202210(
	stuid char(8) not null,
	sname varchar2(20),
	deptname varchar2(20),
	jumin char(13),
	phone char(13),
	email char(30),
	primary key(stuid)
);

--학생 테이블 제거
drop table tbl_student_202210;

--학생 테이블 샘플데이터 입력
insert into tbl_student_202210 values('20220011', '김한국', '사회복지학과', '0301013111111', '010-1111-1111', 'hankuk@naver.com');
insert into tbl_student_202210 values('20220012', '홍길동', '관광과', '0202013222222', '010-2222-2222', 'hongkil@naver.com');
insert into tbl_student_202210 values('20220013', '김미자', '패션디자인과', '0203014333333', '010-3333-3333', 'kimja@naver.com');
insert into tbl_student_202210 values('20220014', '윤한얼', '물리치료과', '0204014444444', '010-4444-4444', 'yoon@naver.com');
insert into tbl_student_202210 values('20220015', '김성진', '모던음악과', '0205013555555', '010-5555-5555', 'kimsj@naver.com');
insert into tbl_student_202210 values('20220016', '조민지', '건축과', '0206014666666', '010-6666-6666', 'jmg@naver.com');

--입력 확인(저장)
commit;

--전체 학생현황 조회
select * from tbl_student_202210 order by stuid asc;

--점수 테이블 생성
create table tbl_score_202210(
	stuid char(8) not null,
	subcode char(4),
	midscore number,
	finalscore number,
	attend number,
	report number,
	etc number,
	primary key(stuid)
);

--점수 테이블 제거
drop table tbl_score_202210;

--점수 테이블 샘플데이터 입력
insert into tbl_score_202210 values('20220011', 'A001', 80, 90, 100, 100, 100);
insert into tbl_score_202210 values('20220012', 'A001', 85, 90, 90, 90, 80);
insert into tbl_score_202210 values('20220013', 'A001', 75, 90, 80, 77, 80);
insert into tbl_score_202210 values('20220014', 'A001', 90, 90, 100, 100, 70);
insert into tbl_score_202210 values('20220015', 'A002', 70, 70, 80, 80, 90);
insert into tbl_score_202210 values('20220016', 'A002', 96, 95, 100, 100, 90);

--과목 테이블 생성
create table tbl_subject_202210(
	subcode char(4) not null,
	subname varchar2(30),
	proname varchar2(20)
);

--과목 테이블 제거
drop table tbl_subject_202210;

--점수 테이블 샘플데이터 입력
insert into tbl_subject_202210 values('A001', '자바', '정명석');
insert into tbl_subject_202210 values('A002', 'C언어', '김미숙');
insert into tbl_subject_202210 values('A003', '데이터베이스', '서길동');
insert into tbl_subject_202210 values('A004', '웹프로그래밍', '이건원');
insert into tbl_subject_202210 values('A005', '영어', '박태민');

--성적현황 조회
select student.stuid, student.sname, 
	subject.subname, subject.subcode, subject.proname, 
	score.midscore, score.finalscore, score.attend, score.report, score.etc
from tbl_student_202210 student, tbl_subject_202210 subject, tbl_score_202210 score 
where student.stuid = score.stuid and score.subcode = subject.subcode 
order by student.sname asc;

--과목별 성적조회
select student.stuid, student.sname, student.deptname, 
subject.subname, 
score.midscore, score.finalscore, score.attend, score.report, score.etc 
from tbl_student_202210 student, tbl_score_202210 score, tbl_subject_202210 subject 
where student.stuid = score.stuid and score.subcode = subject.subcode and subject.subcode = 'A001' 
order by student.stuid asc;
