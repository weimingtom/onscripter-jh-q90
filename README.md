# onscripter-jh-q90
[WIP] My ONScripter-jh Q90 with MiyooCFW musl and NxHope port  
NxHope is the stock OS (official factory firmware), and stable.   
MiyooCFW musl version need to be installed manually, and not stable,   
I don't use uclibc version because uclibc gcc toolchains not provided.  
```
我测试过，可以通过miyoocfw的musl工具链，编译出onscripter-jh可以
同时运行在两种系统的q90掌机，
刷miyoocfw系统，或者用自带的nxhope系统。区别只是，如果要用nxhope运行，
需要加上全局环境变量SDL_NOMOUSE=1，并且可以直接在
文件管理器commander中运行sh文件。
具体我会记录到gh上

miyoocfw可能只能通过add link操作在桌面添加快捷方式来运行，
直接用文件管理器commander运行sh文件可能会运行不了
```

## Ref  
* https://github.com/weimingtom/q90_playground  
* https://www.cnblogs.com/jeason1997/p/17849600.html   
开源掌机程序编译 - JeasonBoy - 博客园  

## How to build for PC debugging  
* Xubuntu 20.04 64bit
* sudo apt-get install libsdl-dev libsdl-image1.2-dev libsdl-ttf2.0-dev libsdl-mixer1.2-dev libbz2-dev libfreetype-dev
* make GCWZERO=0 clean && make GCWZERO=0 -j8
* ./onscripter  

## How to build for Q90  
* Xubuntu 20.04 64bit
* Modify Makefile to point to the cross compiling toolchain  
```
SYSROOT?=/home/wmt/work_q90/arm-buildroot-linux-musleabi_sdk-buildroot/arm-buildroot-linux-musleabi/sysroot  
CC = /home/wmt/work_q90/arm-buildroot-linux-musleabi_sdk-buildroot/bin/arm-buildroot-linux-musleabi-g++
LD = /home/wmt/work_q90/arm-buildroot-linux-musleabi_sdk-buildroot/bin/arm-buildroot-linux-musleabi-g++ -o
```
* make GCWZERO=1 clean && make GCWZERO=1 -j8
