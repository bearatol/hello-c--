run: build start
build:
	@g++ ./main.cpp -g -o ./bin/main
start:
	@./bin/main