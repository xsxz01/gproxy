English [中文](./readme.md)
# gproxy
A simple tool that controls whether to enable system agents with a single command. The preset is Clash's system agent, which may allow customization of which system agent to enable, as well as port control and custom agent presets.
# Usage

## 1. Setup
Clone the repository
```
git clone https://github.com/xsxz01/gproxy.git
```
Enter the directory
```
cd gproxy
```
Compile the script
```
shc -r -f gproxy.sh
```
Place the file in the/bin or/usr/bin directory
```
sudo mv gproxy.sh.x /bin/gproxy
```
Granting execution permissions
```
sudo chmod +x /bin/gproxy
```
## 2. Enable System Agent
```
gproxy start
```

## 3. turn off system agent
```
gproxy stop
```