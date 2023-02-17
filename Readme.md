	Open Sorce SoftWare Memo

				201820715 유성수
		
------------------ 9월16일 수업 ------------------

ls -al 습관적으로 쳐야함, 내가 어디에있는지? 무슨파일이 있는지?
control + G -> 띠링소라
cd -> 홈 디렉토리
touch 파일 만들기
cat -> 파일 두개를 병합
cp -> copy
-a 시간유지
rm 파일 삭제
link -->바로가기랑 비슷

파일 읽는법 
맨 앞자리 d -> 디렉토리 - -> 파일

파일의 소유자 ,소유 그룹, 파일크기 byte ,마지막으로 modify 된 날짜, 파일이름

oss038@git:~/foss_lab/lab0916$ ls file.txt file.c
ls: cannot access 'file.c': No such file or directory #첫번째
file.txt #두번째

첫번째줄 어디에 출력? std err
두번째줄 어디에 출력? std output 디바이스

 mv dir2 test_dir  --> dir2의 이름을 test_dir로 변경하는 명령어
 mv dir3 test_dir  --> dir3라는 디렉토리를 test_dir이라는 디렉토리로 옮긴다.
 mv file2.txt file3.txt test --> file2.txt 와 file3.txt를 test 디렉토리로 옮긴다

oss038@git:~/foss_lab/lab0916$ rm file.txt test2.txt --> 파일삭제
rm: cannot remove 'test2.txt': No such file or directory  --> file.txt는 있으니까 삭제 test2.txt는 없으니 오류
oss038@git:~/foss_lab/lab0916$ echo fmkewfk > link1
oss038@git:~/foss_lab/lab0916$ ls- al
total 20
drwxr-xr-x 3 oss038 foss 4096  9월 17 02:05 .
drwxr-xr-x 3 oss038 foss 4096  9월 16 20:46 ..
-rw-r--r-- 2 oss038 foss    8  9월 17 02:06 file.txt
-rw-r--r-- 2 oss038 foss    8  9월 17 02:06 link1
drwxr-xr-x 2 oss038 foss 4096  9월 17 01:57 test
-rw-r--r-- 1 oss038 foss    0  9월 17 01:59 test4.txt
oss038@git:~/foss_lab/lab0916$ ls
file.txt  link1  test  test4.txt
oss038@git:~/foss_lab/lab0916$ ls -a
.  ..  file.txt  link1  test  test4.txt
oss038@git:~/foss_lab/lab0916$ ls-a;
ls-a: command not found
oss038@git:~/foss_lab/lab0916$ ls -al
total 20
drwxr-xr-x 3 oss038 foss 4096  9월 17 02:05 .
drwxr-xr-x 3 oss038 foss 4096  9월 16 20:46 ..
-rw-r--r-- 2 oss038 foss    8  9월 17 02:06 file.txt
-rw-r--r-- 2 oss038 foss    8  9월 17 02:06 link1
drwxr-xr-x 2 oss038 foss 4096  9월 17 01:57 test
-rw-r--r-- 1 oss038 foss    0  9월 17 01:59 test4.txt
oss038@git:~/foss_lab/lab0916$ cat link1
fmkewfk
oss038@git:~/foss_lab/lab0916$ cat file.txt
fmkewfk
oss038@git:~/foss_lab/lab0916$ ls -ali
total 20
24907688 drwxr-xr-x 3 oss038 foss 4096  9월 17 02:05 .
24907687 drwxr-xr-x 3 oss038 foss 4096  9월 16 20:46 ..
24907689 -rw-r--r-- 2 oss038 foss    8  9월 17 02:06 file.txt ->8 같아야
24907689 -rw-r--r-- 2 oss038 foss    8  9월 17 02:06 link1  ->8
24907692 drwxr-xr-x 2 oss038 foss 4096  9월 17 01:57 test
24907712 -rw-r--r-- 1 oss038 foss    0  9월 17 01:59 test4.txt
 
 24907688 drwxr-xr-x 3 oss038 foss 4096  9월 17 02:10 .
24907687 drwxr-xr-x 3 oss038 foss 4096  9월 16 20:46 ..
24907689 -rw-r--r-- 2 oss038 foss    8  9월 17 02:06 file.txt
24907689 -rw-r--r-- 2 oss038 foss    8  9월 17 02:06 link1
24907695 lrwxrwxrwx 1 oss038 foss    8  9월 17 02:10 slink1 -> file.txt  --> 소프트링크 or 심볼릭 링크
24907692 drwxr-xr-x 2 oss038 foss 4096  9월 17 01:57 test
24907712 -rw-r--r-- 1 oss038 foss    0  9월 17 01:59 test4.txt
oss038@git:~/foss_lab/lab0916$

ln -s ../../foss_lab/lab0916/file.txt slink2  -> 윗 디렉토리에 올라가서 foss_lab에 가서 lab0916에 가서 file.txt를 slink로 만듭니다.

심볼릭은 데스티네이션 파일이 존재하지않아도 만들 수 있음


oss038@git:~/foss_backup$ ls -al
total 12
drwxr-xr-x 3 oss038 foss 4096  9월 16 20:46 .
drwx------ 9 oss038 foss 4096  9월 17 02:20 ..
drwxr-xr-x 3 oss038 foss 4096  9월 17 02:19 lab0916
oss038@git:~/foss_backup$ cd lab0916
oss038@git:~/foss_backup/lab0916$ ls -al
total 32
drwxr-xr-x 3 oss038 foss  4096  9월 17 02:19 .
drwxr-xr-x 3 oss038 foss  4096  9월 16 20:46 ..
-rw------- 1 oss038 foss 12288  9월 17 02:17 .file123.txt.swp
-rw-r--r-- 2 oss038 foss     8  9월 17 02:06 file.txt
-rw-r--r-- 2 oss038 foss     8  9월 17 02:06 link1
lrwxrwxrwx 1 oss038 foss     7  9월 17 02:19 link2 -> file123
lrwxrwxrwx 1 oss038 foss     8  9월 17 02:10 slink1 -> file.txt
lrwxrwxrwx 1 oss038 foss    31  9월 17 02:12 slink2 -> ../../foss_lab/lab0916/file.txt
lrwxrwxrwx 1 oss038 foss    34  9월 17 02:15 slink3 -> ../../foss_lab/lab0916/file123.txt
drwxr-xr-x 2 oss038 foss  4096  9월 17 01:57 test
-rw-r--r-- 1 oss038 foss     0  9월 17 01:59 test4.txt
oss038@git:~/foss_backup/lab0916$

slink1은 file.txt 를 가르키지만 slink2는 원본파일에있는 파일을 가르킨다

oss038@git:/home/course/foss/oss000/www$ ls -ald .
d---rwxrw- 3 oss000 foss 4096  9월 17 02:36 .  --> 이 파일에 대한 퍼미션을 설명하시오

.디렉토리에 오너인 oss000은 읽을수도 쓸수도 들어갈수도 없습니다. foss에 속한 사용자들은 읽을수도 쓸수도 있습니다. 나머지사람은은 read write 만 하고 디렉토리에 들어갈 수는 없다.

------------------ 9월21일 수업 ------------------

std input 

std output

std error

번호가 0,1,2

input output 컨트롤 하는 것은 메모리는 버퍼

pri → 우선순위

프로세스 상태

R - run   //  run 은 fg와 bg로 나뉜다

S - stop  

K - kill

redirection << 중요

job, process, processer

a.out > out1 은 무슨명령어?

a.out 프로그램을 실행하여 a.out프로그램 안에서 std out으로 출력되는 내용을 out1이라는 파일에 저장합니다. 후에 777

stderr: Hello 201820715 777 

a.out이 출력하는 부분이 두부분인데 하나는 std out이고 하나는std err입니다.

std err은 현재 디폴트로 정해져있는 터미널로 출력되었습니다.

a.out < infile9899 

a.out에 std input 대신 infile에 들어가있는 내용이 들어가게 됩니다.

ls -l 후 맨 첫글짜가 l이면 soft link!!!

ps : 돌고 있는 프로세스

sleep 숫자 :  숫자만큼 자라 

sleep 3 ; echo 3 sec

sleep 3 &

control + c : 종료

jobs : 돌고있는 명령어

fg %숫자, bg %숫자  백그라운드 or 포그라운드

echo: 문자열을 std out에 출력

1 = >

history - 내가 썻던 명령어

popd - 나의 디렉토리로 돌아가기

------------------ 9월27일 수업 ------------------

root 밑 - 절대위치

터미널 실행 std out in err  softlink형태

![Untitled](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/f54f2e53-814a-443e-b0c0-74be4df98adc/Untitled.png)

이 그림 시험에 나옴

c코드가 정상적으로 실행되면 echo true 아니면 echo false 를 짜라. 중간고사

echo $? - 0이나오면 에러없이 실행,  1이 나오면 1번 에러가있음

oss038@git:~/foss_lab$ mkdir lab0926 ; cd lab0926 세미콜론은 명령어를 이어줌

oss038@git:~/foss_lab$ mkdir lab0926 && cd lab0926 엔드로 묶으면 앞이 참이야 뒤가 실행

oss038@git:~/foss_lab$ mkdir lab0926 || cd lab0926 오어로 묶으면  앞이 false여도 뒤의 걸 실행하세요~

ps라고 썻더니

oss038@git:~/foss_lab/lab0926$ ps
PID TTY          TIME CMD
1953156 pts/47   00:00:00 bash
1954571 pts/47   00:00:00 ps
oss038@git:~/foss_lab/lab0926$ bash  —>bash가 하나 추가됫네?
oss038@git:~/foss_lab/lab0926$ ps
PID TTY          TIME CMD
1953156 pts/47   00:00:00 bash
1955027 pts/47   00:00:00 bash
1955083 pts/47   00:00:00 ps

bash lsli  → bash를 실행 후 

결과가 이렇게 나왔다. ps를 치면 어떻게 나오나? → 중간고사

디렉토리가 옮겨진다?

bash와 같은 명령어 ( 새로운 shell을 연다)

passwd : user accout의 비밀번호 변경

------------------ 9월28일 수업 ------------------

ls * -내용물을 보여준다

*는 shell의 기능 / 현재 디렉토리에 있는 파일을 찾아 string으로 보여준다 but 히든파일을 찾아주진 않는다.

echo - 문자열을 컴퓨터 터미널에 출력하는 명령어

touch - 파일의 생성과 파일의 날짜, 시간을 변경하는 명령어

shopt

l - symboloc link - 중간고사

cat hello.c hello.c hello.c - hello.c의 내용을 3번 std output에 출력합니다.

파이프 

wc - 줄 ,바이트, 단어개수 등등

정답쓸때 std in out err 중요

basic command file 숙지

------------------ 10월5일 수업 ------------------

tar 중간고사 나옴

tar c 파일 만들기

shopt - shell의 설정 보기

tar x 

tar t 무슨파일있음?

bash문제에서 띄어쓰기 잘못쓰면 무조건 x

source : bash 파일 실행

cat 하고 enter치면 std input에서 키보드 입력을 받아 std output으로 출력합니다

bash 하고 엔터치면 bash라는 프로그렘을 실행하구요 프롬프트라는 것을 보여줍니다 . 후에 std input을 기다리며 유저가 입력하면 실행합니다.

bash syntax 학습

------------------ 10월12일 수업 ------------------

{    ;}

띄어쓰기 매우 중요

shell script 실행하는방법 3가지

change mode, source, () subshell

기본적으로 value값은 string

oss038@git:~/foss_lab/lab1012$ A=200
oss038@git:~/foss_lab/lab1012$ ps
PID TTY          TIME CMD
931718 pts/1    00:00:00 bash
946890 pts/1    00:00:00 ps
oss038@git:~/foss_lab/lab1012$ bash
oss038@git:~/foss_lab/lab1012$ echo $A

oss038@git:~/foss_lab/lab1012$ ps
PID TTY          TIME CMD
931718 pts/1    00:00:00 bash
946926 pts/1    00:00:00 bash
946965 pts/1    00:00:00 ps
oss038@git:~/foss_lab/lab1012$ exit
exit
oss038@git:~/foss_lab/lab1012$ export A
oss038@git:~/foss_lab/lab1012$ bash
oss038@git:~/foss_lab/lab1012$ echo $A
200
oss038@git:~/foss_lab/lab1012$ A=900
oss038@git:~/foss_lab/lab1012$ echo $A
900
oss038@git:~/foss_lab/lab1012$ exit
exit
oss038@git:~/foss_lab/lab1012$ echo $A
200

bash에 따라 A값이 변화 여부 중간

Globing → 와일드카드를 써서 파일들을 선택

리눅스에서는 .파일이 히든파일인데 *로 글로빙하고싶으면

shopt -s dotglob라는것을   꺼야한다.

oss038@git:~/foss_lab/lab1012$ ls -a
.  ..  .a  .aa  ...aaa  aaabbb  aabb  ab  [hello.sh](http://hello.sh/)
oss038@git:~/foss_lab/lab1012$ ls *
aaabbb  aabb  ab  [hello.sh](http://hello.sh/)                                         .이 안나옴
oss038@git:~/foss_lab/lab1012$ ls -a *
aaabbb  aabb  ab  [hello.sh](http://hello.sh/)                                         .이 안나옴
oss038@git:~/foss_lab/lab1012$

parameter expanstion 공부

파일 1000개를 만드는 script를 쓰시오

이 파일중에 03으로 시작하는파일들을 .c에서.java로 바꾸시오

loop공부

for f in file_03*; do mv $f ${f%c}java; done →03으로시작하는 파일을 java로바꿈

pipe는 왼쪽명령어에 stdoutput 오른쪽명령어에stdinput을 집어넣음 |

forground background

jobs라고 쳣더니 %1, %2가 나왓다.

2번작업을 forground로 돌리시오

fg %2

oss038@git:~/foss_lab/lab1012$ source [hello.sh](http://hello.sh/)
Sungsoo Yoo
0 : -bash : : :
oss038@git:~/foss_lab/lab1012$ fadd 100 200
300
oss038@git:~/foss_lab/lab1012$ fadd 100 300
400
oss038@git:~/foss_lab/lab1012$ echo $?
100
oss038@git:~/foss_lab/lab1012$ cat [hello.sh](http://hello.sh/)
#! /bin/bash
NAME="Sungsoo Yoo"
echo $NAME
echo $# : $0 : $1 : $2 : $3
function fadd()
{
echo $(($1+$2))
return 100
}

------------------ 10월17일 수업 ------------------

redirection

conditional command

[[ -z STRING ]] 띄어쓰기 매우 중요

shopt dotglob 설정해야 히든 파일 볼 수 있음

. ..은 없음

echo aaa > aaa

aaa라는 문자열을 std output으로 내는데 redirection해서 aaa라는 파일에 집어넣는다.

후에

echo bbb > aaa

aaa라는 파일을 지우고 다시 만들어서 bbb라는 string을 집어넣습니다.

ex) 덮어쓰기

loop statement (( ))중요

1에서 1000까지 7의배수를 구하시오

cd ~oss000 → oss000디렉토리로

history

‘’  no ex
------------------ Bash 강의 메모 ------------------

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

------------------Mid Study Memo------------------

cc hello.c 빌드

echo $? → 직전 커맨드 실행 되면 0 안 되면 1

리눅스 return 0 → true 다른 숫자 → false

if a.out; then echo true; esle echo false; fi 

echo “” > /dev/pty1 - pty1 터미널에 메세지를 보냄

컴퓨터 구성요소 - user,hardware,data,software(program)

hardware system - memory에 cpu,input device,output device,storage device가 연결된 상태

input 버퍼 - ~를 하는 ‘메모리’이다. ex) 카메라에서 가져온 이미지를 저장하는 메모리입니다(이미지 버퍼)

terminal - 번역 단말기 -입출력 장치

stdio standard I/O (in 입력 out 출력 err err출력)

리눅스는 모든 entries가 파일처럼 취급됨

window file system (c:: d:: 으로 나누어져 있음) -forest 구조 tree가 여러개

linux file system - tree 구조

linux파일 시스템은 모든 엔트리가 파일로 관리가 된다. 그 파일들은 inode라고 하는 숫자로 관리된다.

→ ls -ali 하면 맨 앞에 해당 파일의 inode가 나온다.

link

 명령어 0 ln → 바로가기와 비슷함 진짜 파일로 가는 파일의 별명을 지은 것

ln file.txt link1 → link1과 file.txt 두 파일의 크기와 inode가 같음 - 하드링크(하드링크는 modified 시간이 원래 파일과 같고 soft는 해당 링크를 만든 시간이랑 같다)

소프트 링크는 연결하려고 하는 파일이 없어도 만들 수 있고 두 inode 가 다름

소프트 링크의 파일을 ../test/123.txt이런 식으로 꼬았을 때 복사해도 원본 파일을 가리킴

cp

시간 고정하는 법 cp -a

dir 복사하는 법 cp -r

overwrite 할 지 말 지 정하는 법 cp -i

chmod ( -R 하위 dir의 mod도 변경) ~~~ .(현재 dir의 모든 파일)

user group another 각자 3비트로 권환 설정 가능 read,write,execute

mv

옮길 dir가 있으면 파일을 옮기고 없으면 이름을 변경함

redirection

0< or < stdin

1> or > stdout

2> stderr

2>&1 err를 out으로 보내라 

<<< ~ : ~를 input으로

<< ~ : ~를 쓰기 전까지 input을 받아라

&> stdout,stderr 둘 다 (저장 순서는 달라질 수 있다)

set -o noclobber (overwrite 금지 - >> 하면 강제 overwrite 가능 원래 있던 거에 이어서 써짐)

“> output 2>&1 ls -l a.out b.out”

output을 stdout으로 하고 ls-l a.out b.out의 stdout,stderr모두 stdout에 저장

“2>&1 output > ls -l a.out b.out”

err는 출력되고 out만 output에 저장됨

jobs로 백그라운드로 실행중인 작업 보여줌 

실행 명령어 뒤에 &를 붙이면 백그라운드로 실행됨

ps로 pid를 찾아서 kill 할 수 있음 (terminate)

stdin을 사용하는 작업은 bg로 돌릴 수 없음(2개 이상의 terminal이 stdin을 동시에 사용 불가)

mkdir lab0922 && cd lab0922

dir을 만들고 만들어 지면 이동하라. 이미 dir이 있으면 cd가 되지 않음

cd lab0923 || mkdir lab0923

앞이 성공하지 않아도 뒤에 성공

cat < today > yesterday = cp today yesterday (같은 일을 함)

pipe

ps -ael | grep | wc (process중에 bash인 것을 골라서 라인수,word수, byte수 출력)

{} (띄어쓰기 중요)

묶어서 실행 ex) { ls ; ps ; } > result → cat result하면 ls,ps 결과가 출력됨 

파일 만들기

touch file{0..999..1}.c →0부터 999까지 1간격으로 file0.c 이런식의 파일 생성

()

shell을 하나 더 띄어서 안의 명령을 실행

A=200 하고 (A=400; echo $A;ps)하면 400 출력되고 bash가 2개 출력되지만 shell을 하나 더 연거라 원래 A값은 바뀌지 않음

tar

tar cvzf(create,versus(진행 상황 출력),f(file로 stdout지정),z(압축)) [만들 파일 이름] [묶을 폴더명]

tar x로 풀기 가능 (diff 로 두 파일의 차이점 알 수 있음)

변수에 저장

A=NAJOO 변수 A에 NAJOO 저장 ehco $A로 확인 가능

A=`ls` `를 이용해서 명령어 저장 가능

“Hello $A” 사용해야 변수 출력 ‘$A’ 하면 $A출력됨

shopt -s dotglob (.으로 시작하는 것도 나옴) 원래대로 하는 법은 -u

shopt -s nullglob(없는 건 공백으로 출력)

echo * 하면 모든 파일 출력

A=zzz*

echo $A (-s nullglob 이후에 하면 공백 출력)

bash

bash하면 새로운 shell 여는데 내가 저장한 변수를 들고 가려면 a=300, export a 한 후  bash를 열어야 함

새로운 bash에서 a값을 바꾸고 exit로 나와도 원래 bash에서의 a값은 변하지 않음

파일 찾기

echo a* a* +(aa|bb)* !(aa|bb) 등등 

파일명 바꾸기

mv $filename ${filename%.c}.java

for fn in file_3*.c; do mv $fn ${fn%.c}.java; done

file_3으로 시작하는 파일이름을 .c에서 .java로 바꾼다.

alias ls=“ls -al” 하면 ls 할 떄 기본적으로 -al 옵션을 붙여줌(띄어쓰기 하면 안 됨)

조건문 [] 사용법 체크

[[ -z string ]] empty string -n : not empty string

-eq -ne -lt - le(작거나 같) -gt -ge 

------------------ 10월31일 수업 ------------------

이론 중심으로 기말고사

리눅스가 무엇? 유닉스가 무엇?

BSD? GNU?

Unix는 ATMT회사 bell lab의 등록 상표

C → 운영체제를 만들기 위한 언어

software는 Systemsoftware , Application 두 가지로 나뉨

오픈소스운동 - 공개/공유, 참여/기여, TCO증가

License(라이센스)

권리를 허여

라이센스 주요 의무사항 (PPT) 중요 → 기말고사

복제 배포 수정의 권한을 주지 않으면 상업적 라이센스

배포시 라이센스 사본첨부 → 이 sw는 이 라이센스를 사용 

------------------ 11월2일 수업 ------------------

라이센스 → 두 당사자 사이에는 법적인 관계 존재 (라이센스 계약서)

라이센서 →준사람, 라이센시→받은사람

라이센시는 배포,수정 권리가 있음(라이센스 문서를 같이줘야함 BSD는 제외)

저작권을 인정받기 위한 조건 → 소스코드에 이름 적기(유지의무)

특허는 특허청에 출원해야 함(3가지 종류)

보증을 부인할 수 있다(라이센서) 

OSS소프트웨어 조건 및 내용 무조건 시험나옴 PPT 공부

중간고사 내용도 기말에 나옴

Git → 저장소 (형상관리)

기하학적 불변이론

SW를 수정할때 분기(branch, 포크)   기말고사

branch와 포크의 구분 #

git bash실행시 터미널이 만들어짐

std in std out std err이 만들어짐

git 실습

-----------------11월7일수업----------------

기말 프로젝트에 교수님 라이센스 허용

git 에 보고서 및 PPT파일 업로드

구글 드라이브에 영상파일 업로드

bb에 git project 링크 포함

출처 표시

obs studio

필기한 것 정리

Readme.md파일 하나에 정리

git commit 횟수 등 평가요소…

.git이 파일의 핵심

git commit 미리미리 공부하자…

Git Status

unstacked, unmodified, modified, staged

-------------------11월9일수업---------------------

중간고사 문제의 절반이 기말고사에 나옴

중간고사 풀이 영상 보기

if문

Git PPT

Branch
Clone 
Fork
Merge

Push 

Pull

Stage

Snapshot

각 기능 차이

Fork와Branch는 기능 상 비슷하다. 어떤 상황에 따라 다른 것을 쓰는가?

간단한 하나의 버그를 고치거나 잠시 다른 트랙에서 개발을 하여

혼돈을 피하고 싶을 때 branch를 쓰고 프로젝트 자체를 다른 프로젝트로 만들

가능성이 있을 때는 Fork를 사용.

ex) 아이폰, 안드로이드

알파 테스트 : 개발팀 내부에서 하는 테스트

베타 테스트 : 개발팀이 아닌 사용 대상자에게 공개하는 테스트

오픈베타(모두모두해봐), 클로즈베타(너네만 해봐)

블랙박스테스트(실행만 가능), 화이트박스테스트(소스코드보면서)

스테틱테스트, 다이나믹테스트

git cheat-sheet - Git 용어 정리 시험에 나옴

—global

-------------------------------11월14일-----------------------------

cat [readme.md](http://readme.md) 현재 상태가 이와 같았다.

git log를 했더니 이와 같았다.

지금 git서버의 내용과 나의 파일은 어떤 차이가 있나?

66666 commit, 77777 commit 두번 더한 상태이다.

origin에 있는것과 동일하게 head를 내리시오

git reset —hard 메모리주소

다시 77777commit으로 돌아가시오

git reset —hard 메모리주소

origin의 head위치를 a메모리주소로 옮기시오

git push

git —all log를 햇더니 이렇게 나왔다

이 local의 헤드를 origin과 같게 만드시오

git clone

-----------------11월16일-------------------

Git command 숙지

commit 순서 관련

commit 충돌시?

Auto-merging foss_lab/lab1116/readme.md
CONFLICT (content): Merge conflict in foss_lab/lab1116/readme.md
Automatic merge failed; fix conflicts and then commit the result.

vi 에디터에 충돌난 내용을 보여줌

바로 수정하고 add 가능

git show 0000

git log —follow 0000

git checkout br_a

--------------------11월21일--------------------------

rebase와 merge는 같은 의미지만 rebase는 history를 rewrith한다

conflic발생 여부 파악

Fast-forward → 깔끔

git stash

git stash drop

git tag

git command 숙지할것 