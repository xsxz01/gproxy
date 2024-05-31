#!/bin/bash  
  
# 定义脚本和函数的路径  
SCRIPT_NAME="gproxy.sh"  
SCRIPT_DEST="$HOME/bin/$SCRIPT_NAME"  
BASHRC_PATH="$HOME/.bashrc"  
  
# 检查bin目录是否存在，如果不存在则创建它  
mkdir -p "$HOME/bin"  
  
# 将脚本复制到用户的bin目录中  
cp "$SCRIPT_NAME" "$SCRIPT_DEST"  
  
# 检查是否复制成功  
if [ $? -ne 0 ]; then  
   echo "复制脚本到$SCRIPT_DEST失败"  
   exit 1  
fi  
  
# 检查脚本是否有执行权限，并添加执行权限  
chmod +x "$SCRIPT_DEST"  
  
# 在.bashrc中添加gproxy函数  
cat >> "$BASHRC_PATH" <<EOL  
gproxy() {  
    "$SCRIPT_DEST" "\$@"  # 使用"\$@"来传递所有参数给脚本  
}  
# 如果你希望在子shell或脚本中也能使用这个函数，可以加上这一行（通常不需要）  
# export -f gproxy  
EOL
  
# 提示用户source .bashrc或重新登录以使更改生效  
echo "gproxy函数已添加到$BASHRC_PATH"  
echo "请运行'source $BASHRC_PATH'或重新登录以使更改生效"