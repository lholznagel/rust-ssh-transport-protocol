profile:
	cargo build
	valgrind --tool=massif target/debug/examples/server

server:
	cargo run --example server

ssh:
	ssh 0.0.0.0 -p 1337 -vvv -o "UserKnownHostsFile /dev/null" -o "StrictHostKeyChecking=no"
