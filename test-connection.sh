PORT=7777
echo ""
echo "++++++++++++++++++++++++++++++++++++++++++"
echo " Make sure you're using the correct port! "
echo "++++++++++++++++++++++++++++++++++++++++++"
echo ""
curl --location "http://127.0.0.1:${PORT}" \
--data '{"jsonrpc": "1.0", "id":"rpc_server_test", "method": "getblockchaininfo", "params": [] }'