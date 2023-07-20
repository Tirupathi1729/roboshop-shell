yum install nginx -y
cp nginx-roboshop.conf /etc/nginx/dafault.d/roboshop.conf

rm -rf /usr/share/nginx/html/*
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip
cd /usr/share/nginx/html
unzip /tmp/frontend.zip

systemctl enable nginx
systemctl restart nginx1

