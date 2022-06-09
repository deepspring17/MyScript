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


yum install -y squid

service squid start
service squid restart

chkconfig --add squid
chkconfig squid on
chkconfig --list

visible_hostname yourhostname.com
vim /etc/squid/squid.conf
acl Safe_ports port 80
acl guests src 43.134.209.194
http_access allow guests


curl -x 104.168.137.25:3128 http://httpbin.org/get
tail -f /var/log/squid/access.log

request_header_access X-Forwarded-For deny all  
request_header_access From deny all  
request_header_access Via deny all

# ipv6 服务器本身也无法访问
dns_v4_first on

service iptables status
service iptables stop

