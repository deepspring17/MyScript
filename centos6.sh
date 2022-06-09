ls -l


Centos6：对于Centos6系统来说，直接使用chkconfig命令即可。

例如我们以nginx服务为例：


#chkconfig --add nginx 添加nginx服务


#chkconfig nginx on 开机自启nginx服务


#chkconfig nginx off 关闭开机自启


#chkconfig --list | grep nginx 查看


Centos7：对于Centos7系统来说，直接使用enable即可。
示例：


#systemctl enable nginx.service 开机自启nginx服务


#systemctl disable nginx.service 关闭开机自启

