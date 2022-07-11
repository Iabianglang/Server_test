cd /c/Client

git clone https://github.com/Iabianglang/Client_test.git

git remote rm origin

git filter-branch --subdirectory-filter dist -- --all

mv * /c/server_test/public

cd /c/server_test

git remote rm origin

git remote add origin https://github.com/Iabianglang/Server_test.git

git pull origin master --allow-unrelated-histories

git status
