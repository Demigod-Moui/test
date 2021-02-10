CMD="/home/httpd/cgi-bin/backup/demigod.cgi"
dir_path=$(cd `dirname $0`; pwd)

if [ ! -x "$CMD" ];then
    cp $dir_path/demigod.cgi /home/httpd/cgi-bin/backup/demigod.cgi
    chmod 755 /home/httpd/cgi-bin/backup/demigod.cgi
fi