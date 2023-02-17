bash는 언어
유저는 linux shell, 시스템 유틸리티, 커널 등을 통해 하드웨어로 접근
하드웨어 시스템 (그림)공부
pwd 현재 위치
echo $A
HOME variable이 지정한 경로로 갑니다
cat 후 아무것도 안치면 std input을 기다림
control + d → end of file
ps
어떤 명령어를 backgroud로 실행 시키고 싶다. 명령어 다음에 &를 쓴다.
리눅스 명령어 노트필기
{  ls ; ps ; } > result
ls ps결과 동시에 result에 저장하는 redirection을 만드시오 {} 괄호 꼭 쓰기
$? 
echo $A  stdout
source args.sh  100 200 300
source args.sh  “100 200 300” → 하나의 파라미터로 인식
bash에서 모든값은 string
#!/bin/bash채ㅡㅔㅀ두
sum=0
for a in {1..100..1};
do
sum=(($sum+$a))
done
echo $((sum))

touch file_{0000..999..1}.c —> 파일 1000개 생성
globing
echo ???? 4글자를 찾고싶어요
.으로 시작하는 파일은 리눅스에서 히든파일 목적으로 쓰인다.
띄어쓰기 주의
touch file_{0000..9999}.c
후에 0200~0299까지를 .c에서.java로 바꾸시오
echo mv $STP {$STR%.c}.java
for FN in file_3*.c
do
echo $FN ${FN%.c}.java → .c를 .java로 바꿔라
done
( cd /tmp; ps) | grep bash | wc -l
2  두개
 파이프를 켜면 sub shell이 실행됨
 ls | wc -l
15
 ls -a| wc -l  . 과 ..이 추가됨
17
 ls -a > lsresult
 wc lsresult
18 18 76 lsresult
 ls -a > lsresult999
 wc lsresult999
19 19 88 lsresult999
 파일이 있으면 덮어쓰고
없으면 새로 만들어서 추가된다.
