run:
	docker build -t swaggeri .
	echo "docker build done"
	docker-compose up -d
	echo ""
	echo "usecase: "
	echo "  - browse: http://localhost:8081 "
	echo "  - make clean for tearing down"

clean:
	docker-compose down
	docker image rm swaggeri

test:
	echo "hihi"

.PHONY: run clean test
.SILENT: run