rm -rf .next
yarn install
yarn build
pm2 stop v1-ok-chat-tool || true
pm2 delete v1-ok-chat-tool || true
pm2 start yarn --name "v1-ok-chat-tool" -- start
pm2 startup
pm2 save