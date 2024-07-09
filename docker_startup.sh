#!/bin/sh
BASE_DIR=.
MAIN_CONFIG_FILE=Conf.toml
MAIN_TEMP_CONFIG_FILE=Conf.docker.toml

# Replace placeholders with environment variables
sed -i "s|{{RPC_NODE_URL}}|${RPC_NODE_URL}|g" $BASE_DIR/$MAIN_TEMP_CONFIG_FILE
sed -i "s|{{RPC_NODE_USER}}|${RPC_NODE_USER}|g" $BASE_DIR/$MAIN_TEMP_CONFIG_FILE
sed -i "s|{{RPC_NODE_PASSWORD}}|${RPC_NODE_PASSWORD}|g" $BASE_DIR/$MAIN_TEMP_CONFIG_FILE
sed -i "s|{{SERVER_PORT}}|${SERVER_PORT}|g" $BASE_DIR/$MAIN_TEMP_CONFIG_FILE
sed -i "s|{{SERVER_ADDRESS}}|${SERVER_ADDRESS}|g" $BASE_DIR/$MAIN_TEMP_CONFIG_FILE

# Move the processed template to the final location
mv $BASE_DIR/$MAIN_TEMP_CONFIG_FILE $BASE_DIR/$MAIN_CONFIG_FILE

exec "$@"