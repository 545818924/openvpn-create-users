# openvpn-create-users
**作用为批量添加用户**

1. 搭建openvpn 引用的脚本为:

   >  https://github.com/Nyr/openvpn-install

2. 目录结构为

```|-- root

	|-- openvpn-install

	|	  |-- create_user.sh

	|	  |-- users.txt

	|	  ......

	|--  vpnuser
  ```

3. 用户信息填入users.txt中，一个用户占一行

4. ```bash
   bash create_user.sh
   ```

   用户配置文件会移动到vpnuser目录下
