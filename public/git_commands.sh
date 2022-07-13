cd /c

mkdir Client

cd /c/Client

git clone https://github.com/Iabianglang/Client_test.git .

cd /c/Client/Client_test

git remote rm origin

git filter-branch --subdirectory-filter dist -- --all

mv * /c/Server_test/public

git add .

git commit -m "push"

cd /c/Server_test

git remote add origin https://github.com/Iabianglang/Server_test.git

git pull origin main --allow-unrelated-histories

git add .

git commit -m "commit to Server"

git push origin main

git status
