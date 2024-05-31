# 获取命令行参数
param1=$1
# 判断参数是否为空
if [ -z "$param1" ]; then
  echo "参数1为空"
else
  # 判断参数一是否等于start
  if [ "$param1" = "start" ]; then
    # 启用全局代理
    export http_proxy="http://127.0.0.1:10801"
    export https_proxy="http://127.0.0.1:10801"
    export all_proxy="socks5://127.0.0.1:10801"
    # 检查
    echo $http_proxy
    echo $https_proxy
    echo $all_proxy

    # 输出以启用全局代理
    echo "已启用全局代理"
  elif [ "$param1" = "stop" ]; then
    unset  http_proxy  https_proxy  all_proxy || { echo "command failed"; exit 1; }
    # 输出以停用全局代理
    echo "已停用全局代理"
  else
    echo "语法错误: 参数1的选项应为start或stop"
  fi

fi