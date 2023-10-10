sudo apt update

sudo snap install maas --channel=3.3/stable
sudo apt install postgresql

sudo su - postgres
createuser --createdb --username postgres --no-createrole --no-superuser --pwprompt maas
createdb --username postgres --owner maas maasdb
exit

sudo maas init region+rack --maas-url http://localhost:5240/MAAS --database-uri postgres://maas:123@localhost/maasdb

sudo maas createadmin --username admin --password 123 --email 20004128@st.vlute.edu.vn --ssh-import sh:NguyenHNhan

sudo maas init region+rack --maas-url http://localhost:5240/MAAS --database-uri postgres://maas:123@localhost/maasdb
