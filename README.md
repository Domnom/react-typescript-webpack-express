Development:

- Add to docker-compose.yml
    react-dev:
        build:
            context: ./react-typescript-webpack-express
            dockerfile: Dockerfile.dev
        ports:
        - "8081:8081"
        volumes:
        - ./react-typescript-webpack-express:/app

OR

- Run using CLI with:
    - cd ./react-typescript-webpack-express
    - docker image build --tag react-dev-docker --file Dockerfile.dev .
    - docker container run -d -p 8081:8081 --name react-dev -v $(PWD):/app react-dev-docker

Production:

- Build the Dockerfile and then run
    - cd ./react-typescript-webpack-express
    - docker image build --tag react-prod-docker .
    - docker container run -d -p 8080:80 --name react-prod react-prod-docker


Master branch will contain the minimal number of dependencies to get this all working.

TODO: Add branches with additional react features