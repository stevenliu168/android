//adb连接到71.14.16.202机子的8501端口
adb connect 71.14.16.202:8501
adb connect 71.14.16.202:8501
adb connect 127.0.0.1:8501
adb connect 127.0.0.1:8502
adb connect 127.0.0.1:8503
adb connect 127.0.0.1:8504
adb connect 127.0.0.1:8505

#将71.14.16.202机子的/vendor/build.prop文件下载到本地机d:/project/KBox/vendor目录下
adb pull /vendor/build.prop d:/project/KBox/vendor

#将本地机d:/project/KBox/vendor目录下的build.prop上传到71.14.16.202机子的/vendor目录下
adb push d:/project/KBox/vendor/build.prop /vendor

#adb -s 指定设备 进行连接
adb -s 71.14.16.215:8531

#断开当前连接设备
adb disconnect

#获取root权限
adb root
adb -s 127.0.0.1:8531 root

# 重新挂载 
adb remount

# 列出所有连接的adb 设备
adb devices

#登录设备shell 　　
adb shell 　　
adb shell <command命令> 　　
这个命令将登录设备的shell. 　　
后面加<command命令>将是直接运行设备命令, 相当于执行远程命令
如: adb shell cat /proc/kmsg 

#在设备上执行shell命令whoami
adb -s 127.0.0.1:8531 shell whoami

#在71.14.16.215:8531设备上安装apk
adb -s 71.14.16.215:8531 install /home/lxn/CTS/android-cts/testcases/CtsJvmtiRunTest1900DeviceApp.apk
adb -s 127.0.0.1:8531 install /home/lxn/CTS/android-cts/testcases/CtsJvmtiRunTest1900DeviceApp.apk 

*********************************************************************************************************
https://blog.csdn.net/u013512708/article/details/46757961
adb 常用命令和获取系统root权限
*********************************************************************************************************

*********************************************************************************************************
https://blog.csdn.net/tjcwt2011/article/details/126330483
adb命令 android 串口_「Android」Android常规adb命令
*********************************************************************************************************

*********************************************************************************************************
search key:pm set-install-location option 2

https://blog.csdn.net/fishing_monster/article/details/118407056
安卓5.0设置安装位置后使用安装命令应用未安装在SD卡

https://blog.csdn.net/weixin_34253539/article/details/91598714
使用pm命令安装或者卸载APK

https://www.cnblogs.com/FlyToDream/p/10419755.html
adb shell 命令之----pm
*********************************************************************************************************
