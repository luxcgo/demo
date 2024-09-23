SHELL_PATH = /bin/ash

tidy:
	go mod tidy

dev-gotooling:
	go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
	go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest

dev-brew:
	brew update
	brew list protobuf || brew install protobuf