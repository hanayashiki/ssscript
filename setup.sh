apt update
apt install -y shadowsocks
cat > shadowsocks.json <<EOF
{
    "server":"0.0.0.0",
    "server_port":3389,
    "local_address": "127.0.0.1",
    "local_port":1080,
    "password":"boynextdoor",
    "timeout":300,
    "method":"aes-256-cfb",
    "fast_open": false,
    "workers": 5
}
EOF
ssserver -d restart -c shadowsocks.json
