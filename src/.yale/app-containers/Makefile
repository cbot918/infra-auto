p4admin:
	docker pull dpage/pgadmin4 && \
	docker run -p 8081:80 \
    --network igcgo_igcgo \
    --name p4admin \
    -e 'PGADMIN_DEFAULT_EMAIL=yale@gmail.com' \
    -e 'PGADMIN_DEFAULT_PASSWORD=12345' \
    -d dpage/pgadmin4