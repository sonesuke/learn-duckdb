

# preparation

```bash

git clone --recursive https://github.com/sonesuke/learn-duckdb.git

```


# development

```bash

docker compose run app bash

... in the container

cd duckdb

GEN=ninja make debug

cd build/debug

./duckdb

```

