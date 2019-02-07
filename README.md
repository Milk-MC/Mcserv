mcserv
======

A Linux Minecraft server launcher write in Bash. When the server crashed, the launcher can restart it.

写于2015年，尝试理解并运用于1.13.2

## 特性：
* 崩溃自动重启，正常退出则不重启
* 配合自己写的插件可以实现正常的/restart 命令（已有的重启插件是不能用在这种循环的启动脚本上的）
* 清晰记录服务器启动日志（$DIR/srvlog/launcher.log）
* 易于移植
* 可以在任意目录下运行
* 奇葩的程序逻辑

自 http://www.mcbbs.net/thread-388584-1-1.html 的ylmars
