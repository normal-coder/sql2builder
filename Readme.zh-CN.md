# SQL2Builder

[SQL2Builder](https://github.com/sql2builder/sql2builder.github.io) 可以将 SQL 转换为 Laravel 查询构造器 (Query Builder)。

## 快速开始

基于 Docker 运行 SQL2Builder

```bash
docker run --name sql2builder -d -p 8877:80 normalcoder/sql2builder:v1.0
```

容器启动后，访问 [http://loclahost:8877](http://loclahost:8877) 即可

## 自行构建

```bash
docker build -t normalcoder/sql2builder:v1.0 .
```

## 致谢

项目 Fork 自 [sql2builder/sql2builder.github.io](https://github.com/sql2builder/sql2builder.github.io)
