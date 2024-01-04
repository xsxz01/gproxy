<h1 align="center">gproxy</h1>
一个简单的工具，一条命令控制是否启用系统代理。预设是Clash的系统代理，后面可能会允许自定义启用什么系统代理，以及端口控制，自定义代理预设。
<p align="center">
<a href="readme-en.md">English</a> | 中文
</p>

# 使用方式

## 1. 安装
克隆项目
```
git clone https://github.com/xsxz01/gproxy.git
```
进入目录
```
cd gproxy
```
编译代码
```
shc -r -f gproxy.sh
```
将文件放到/bin或者/usr/bin目录下
```
sudo mv gproxy.sh.x /bin/gproxy
```
赋予执行权限
```
sudo chmod +x /bin/gproxy
```
## 2. 启用系统代理
```
gproxy start
```

## 3. 关闭系统代理
```
gproxy stop
```