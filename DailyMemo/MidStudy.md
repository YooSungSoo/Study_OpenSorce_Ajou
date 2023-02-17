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
