PORT=8888
# PORT=9999
echo ""
echo "++++++++++++++++++++++++++++++++++++++++++"
echo " Make sure you're using the correct port! "
echo "++++++++++++++++++++++++++++++++++++++++++"
echo ""
echo "[ Running in port ${PORT} ]"
echo ""
curl --location "http://127.0.0.1:${PORT}" \
--data '{"jsonrpc": "1.0", "id":"rpc_server_test", "method": "getblockchaininfo", "params": [] }'