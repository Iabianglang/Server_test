cd /c/client_test

git clone https://github.com/Iabianglang/Client_test.git

git remote rm origin

git filter-branch --subdirectory-filter dist -- --all

mv * /c/server_test/public

cd /c/server_test

git add .

git pull origin main --allow-unrelated-histories

git status
