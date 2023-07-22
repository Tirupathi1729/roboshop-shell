echo -e "\e[35m<<<<<<<<<<copy successfully>>>>>>>>>\e[0m"
cp cart.service /etc/systemd/system/cart.service

echo -e "\e[35m<<<<<<<<<<setup repo successfully>>>>>>>>>\e[0m"
curl -sL https://rpm.nodesource.com/setup_lts.x | bash

echo -e "\e[35m<<<<<<<<<<nodejs installation successfully>>>>>>>>>\e[0m"
yum install nodejs -y

echo -e "\e[35m<<<<<<<<<<Adding user successfully>>>>>>>>>\e[0m"
useradd roboshop

echo -e "\e[35m<<<<<<<<<<making directiory successfully>>>>>>>>>\e[0m"
mkdir /app

echo -e "\e[35m<<<<<<<<<<downloading and zipping successfully>>>>>>>>>\e[0m"
curl -o /tmp/cart.zip https://roboshop-artifacts.s3.amazonaws.com/cart.zip
cd /app
unzip /tmp/user.zip
cd /app

echo -e "\e[35m<<<<<<<<<<dependencies installation successfully>>>>>>>>>\e[0m"
npm install

echo -e "\e[35m<<<<<<<<<<user start  successfully>>>>>>>>>\e[0m"
systemctl daemon-reload
systemctl enable cart
systemctl restart cart