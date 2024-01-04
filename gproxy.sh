#!/bin/bash
# 获取命令行参数
param1=$1
# 判断参数是否为空
if [ -z "$param1" ]; then
  echo "参数1为空"
else
  # 判断参数一是否等于start
  if [ "$param1" == "start" ]; then
    export https_proxy=http://127.0.0.1:7890 http_proxy=http://127.0.0.1:7890 all_proxy=socks5://127.0.0.1:7891 || { echo "command failed"; exit 1; }
    # 输出启用全局代理成功
    echo "启用全局代理成功"
    # 输出三个环境变量https_proxy，http_proxy，all_proxy，并且加上缩进与颜色
    echo -e "\e[32mhttps_proxy=$https_proxy\e[0m"
    echo -e "\e[32mhttp_proxy=$http_proxy\e[0m"
    echo -e "\e[32mall_proxy=$all_proxy\e[0m"
  elif [ "$param1" == "stop" ]; then
    unset  http_proxy  https_proxy  all_proxy || { echo "command failed"; exit 1; }
    # 输出以停用全局代理
    echo "已停用全局代理"
  else
    echo "语法错误: 参数1的选项应为start或stop"
  fi

fi