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
```

## Ref  
* https://github.com/weimingtom/q90_playground  
* https://www.cnblogs.com/jeason1997/p/17849600.html   
开源掌机程序编译 - JeasonBoy - 博客园  
