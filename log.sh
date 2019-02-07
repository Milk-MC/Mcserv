#!/bin/bash
#log path is /var/log/openstack-kilo
#if commod execute sucessed,it will return 0 else return 1
# Copyright 2014 Intel Corporation, All Rights Reserved.
function log_info ()
{
if [  -d /var/log  ]
then
    mkdir -p /var/log 
fi

DATE_N=`date "+%Y-%m-%d %H:%M:%S"`
USER_N=`whoami`
echo "${DATE_N} ${USER_N} execute $0 [INFO] $@" >>/var/log/openstack-kilo #执行成功日志打印路径

}

function log_error ()
{
DATE_N=`date "+%Y-%m-%d %H:%M:%S"`
USER_N=`whoami`
echo -e "\033[41;37m ${DATE_N} ${USER_N} execute $0 [ERROR] $@ \033[0m"  >>/var/log/openstack-kilo #执行失败日志打印路径

}

function fn_log ()  {
if [  $? -eq 0  ]
then
    log_info "$@ sucessed."
    echo -e "\033[32m $@ sucessed. \033[0m"
else
    log_error "$@ failed."
    echo -e "\033[41;37m $@ failed. \033[0m"
    exit 1
fi
}
trap 'fn_log "DO NOT SEND CTR + C WHEN EXECUTE SCRIPT !!!! "'  2
--------------------- 
作者：二进制-程序猿 
来源：CSDN 
原文：https://blog.csdn.net/wylfengyujiancheng/article/details/50019299 
版权声明：本文为博主原创文章，转载请附上博文链接！