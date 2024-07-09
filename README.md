# Rust Verusd RPC Server

This repository contains a Rust library for creating a Verus RPC server. The library is designed to be simple to use, yet flexible enough to handle the needs of a variety of applications.

## Getting Started

To get started with this library, you'll need to have Rust installed on your machine. If you don't have Rust installed, you can download it from the [official website](https://www.rust-lang.org/tools/install).

### Prerequisites

- [Rust](https://www.rust-lang.org/tools/install)
- Git
- Verusd Node

### Installation

1. Clone the repository to your local machine:

```bash
git clone https://github.com/VerusCoin/rust_verusd_rpc_server.git
```

2. Navigate into the project directory:

```bash
cd rust_verusd_rpc_server
```

3. Build the project:

```bash
cargo build --release
```

### ✅ Run Manually
[![Rust](https://skillicons.dev/icons?i=rust)](https://www.rust-lang.org/)

1. Configure the server by editing the `Conf.toml` file

2. Run the release build

```bash
cargo run
```

### ✅ Run using Docker
[![Docker](https://skillicons.dev/icons?i=docker)](https://docs.docker.com/get-docker/)

### Requirement:
- [`Docker`](https://docs.docker.com/get-docker/) - `v24.0.5+`

There are 2 ways you can build and run the image.
Depending on your Linux installation, you might need to use `sudo` for running your `docker`.

### [ 📌 OPTION 1 of 2 ]
<hr/>

### Build Image
This uses the `Conf.toml` values directly.
```bash
docker build -t verus-rpc-server .
```

### Execute
```bash
docker run -d --network host --name verus-rpc-server verus-rpc-server
```
> Network `host` is used to enable direct communication to the Verus Node


### [ 📌 OPTION 2 of 2 ]
<hr/>

This allows customization of the image by enabling the use of an environment file.

- Execute the following script to build the image. (this uses the `Dockerfile.v2`)
```bash
chmod +x docker_build.sh && ./docker_build.sh v0.0.1
```

- Copy the `env.temp` then rename it to `.env`.
- Update the values of `.env` file.
- Run the image.

> 🟠 Using `docker run`
<hr/>

```bash
docker run --network host --name vrsc-rpc-server --env-file .env pangzlab/verus-rpc-server
```

> 🟢 Using `docker-compose`
<hr/>

- Update the value of `env_file` of `compose.yaml` for the configuration to use.
- `docker-compose` is the suggested way as you can setup multiple rpc-servers instantly with different environment file.
```bash
docker-compose up
```
or
```bash
docker compose up
```

### Test Connection
- Update the `PORT` based on the value of `rpc_server.port` in `Conf.toml` or the `SERVER_PORT` defined in the `.env` file.
- Set the port to test.
- Execute the script.
```
./test_connection.sh <PORT>
```

A JSON response without an error like the following should be returned
```json
{"result":{"bestblockhash":"000000000003d164827f0c01ad880e28ee06deb76b768bf7bd64048d6595215d","blocks":3125473,"chain":"main","chainid":"i5w5MuNik5NtLcYmNzcvaoixooEebB6MGV","chainstake":"8000000000000000000000000000000000000000000d79c190fa8bb155c3f4b1","chainwork":"00000000000000000000000000000000000000026e5624a3d7097c8bbba239ee","commitments":377270,"consensus":{"chaintip":"76b809bb","nextblock":"76b809bb"},"difficulty":2930135766945.239,"headers":3125473,"name":"VRSC","pruned":false,"size_on_disk":12285510877,"softforks":[{"enforce":{"found":4000,"required":750,"status":true,"window":4000},"id":"bip34","reject":{"found":4000,"required":950,"status":true,"window":4000},"version":2},{"enforce":{"found":4000,"required":750,"status":true,"window":4000},"id":"bip66","reject":{"found":4000,"required":950,"status":true,"window":4000},"version":3},{"enforce":{"found":4000,"required":750,"status":true,"window":4000},"id":"bip65","reject":{"found":4000,"required":950,"status":true,"window":4000},"version":4}],"upgrades":{"5ba81b19":{"activationheight":227520,"info":"See https://z.cash/upgrade/overwinter.html for details.","name":"Overwinter","status":"active"},"76b809bb":{"activationheight":227520,"info":"See https://z.cash/upgrade/sapling.html for details.","name":"Sapling","status":"active"}},"valuePools":[{"chainValue":24547.99070065,"chainValueZat":2454799070065,"id":"sprout","monitored":true},{"chainValue":531657.19804577,"chainValueZat":53165719804577,"id":"sapling","monitored":true}],"verificationprogress":1}}
```


### Contributing
Contributions are welcome! Please feel free to submit a pull request.

