#! /bin/bash
# Bu komut dosyası, MySQL'in kurulu olduğu ana bilgisayarları bulmak için tasarlanmıştır.

nmap -sT 172.20.104.81/24 -p 3306 >/dev/null -oG MySQLscan
cat MySQLscan | grep open > MySQLscan2
cat MySQLscan2
