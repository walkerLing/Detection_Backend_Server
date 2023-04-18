# Detection_Backend_Server,

#### 介绍
这是本项目的目标检测模型服务的相关部署文件

#### 服务架构
服务架构基于Flask，进行模型部署，云服务器使用nginx+uwsgi+flask架构。

#### 仓库主功能文件介绍

| 文件名  | 文件功能  |
|---|---|
| logs/..  | 该文件夹中存储uwsgi生产环境服务器产生的日志文件  |
| app.py  | Flask运行入口及设置文件  |
| uwsgi.ini  | uwsgi生产环境服务器配置文件  |
| weights/..  | 存放的模型最终训练权重文件  |
| uploads/..  | 存放从前端网页接收到的待检测图片  |
| processer/  | 主检测功能处理相关代码  |
……

#### 运行说明
若使用Flask自带Web服务器进行测试， 在响应终端输入`python app.py`即可。
若在云服务器环境进行uwsgi生产环境服务器测试，在Linux终端下输入`./reboot.sh`即可启动服务，若要关闭服务，可以杀掉对应端口进程，也可以重启虚拟主机。


