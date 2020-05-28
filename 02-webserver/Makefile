COMPOSE_UP_CMD = docker-compose up --detach
COMPOSE_DOWN_CMD = docker-compose down --remove-orphans

all: run test destroy

run:
	${COMPOSE_UP_CMD}

destroy: 
	${COMPOSE_DOWN_CMD}

test:
	make -f ./test.Makefile all

help:
	echo "Targets:"
	echo "    run: launches the app"
	echo "destroy: destroys the app"
	echo "   test: runs the application tests"
	echo "    all: executes run, test, destroy in that order"
	echo "   help: prints this message"

