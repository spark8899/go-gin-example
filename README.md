# go-gin-blog
lean gin blog

# create mysql
```mysql
mysql> CREATE DATABASE IF NOT EXISTS blog DEFAULT CHARSET utf8 COLLATE utf8_general_ci;
mysql> create user 'blog'@'%' identified by 'blog888';
mysql> ALTER USER 'blog'@'%' IDENTIFIED WITH mysql_native_password BY 'blog888';
mysql> GRANT ALL PRIVILEGES ON blog.* TO 'blog'@'%';

CREATE TABLE `blog_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '' COMMENT '标签名称',
  `created_on` int(10) unsigned DEFAULT '0' COMMENT '创建时间',
  `created_by` varchar(100) DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  `modified_by` varchar(100) DEFAULT '' COMMENT '修改人',
  `deleted_on` int(10) unsigned DEFAULT '0',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT '状态 0为禁用、1为启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章标签管理';

CREATE TABLE `blog_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned DEFAULT '0' COMMENT '标签ID',
  `title` varchar(100) DEFAULT '' COMMENT '文章标题',
  `desc` varchar(255) DEFAULT '' COMMENT '简述',
  `content` text,
  `created_on` int(11) DEFAULT NULL,
  `created_by` varchar(100) DEFAULT '' COMMENT '创建人',
  `modified_on` int(10) unsigned DEFAULT '0' COMMENT '修改时间',
  `modified_by` varchar(255) DEFAULT '' COMMENT '修改人',
  `deleted_on` int(10) unsigned DEFAULT '0',
  `state` tinyint(3) unsigned DEFAULT '1' COMMENT '状态 0为禁用1为启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章管理';

CREATE TABLE `blog_auth` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT '' COMMENT '账号',
  `password` varchar(50) DEFAULT '' COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `blog`.`blog_auth` (`id`, `username`, `password`) VALUES (null, 'test', 'test123456');
```

# tags api test
## get tags
```shell
curl -v '127.0.0.1:8000/api/v1/tags'
```

## post tag
```shell
curl -v -XPOST 'http://127.0.0.1:8000/api/v1/tags?name=1&state=1&created_by=test'
curl -v -XPOST 'http://127.0.0.1:8000/api/v1/tags?name=2&state=1&created_by=test'
```

## put tag
```shell
curl -v -XPUT 'http://127.0.0.1:8000/api/v1/tags/1?name=edit&state=0&modified_by=test'
```

## delete tag
```shell
curl -v -XDELETE 'http://127.0.0.1:8000/api/v1/tags/1'
```

# articles api test
## get articles
```shell
curl -v 'http://127.0.0.1:8000/api/v1/articles'
curl -v 'http://127.0.0.1:8000/api/v1/articles/1'
```

## post articles
```shell
curl -v -XPOST 'http://127.0.0.1:8000/api/v1/articles?tag_id=2&title=test1&desc=test-desc&content=test-content&created_by=test-created&state=1'
```

## put tag
```shell
curl -v -XPUT 'http://127.0.0.1:8000/api/v1/articles/1?tag_id=2&title=test-edit1&desc=test-desc-edit&content=test-content-edit&modified_by=test-created-edit&state=0'
```

## delete tag
```shell
curl -v -XDELETE 'http://127.0.0.1:8000/api/v1/articles/1'
```

# user api test
## get token
```shell
curl -v -XPOST 'http://127.0.0.1:8000/auth' -d 'username=test&password=test123456'
```

# install swag
## install swag cmd
```
go install github.com/swaggo/swag/cmd/swag@latest
swag -v
```

## install gin-swagger
```
go get -u github.com/swaggo/gin-swagger
go get -u github.com/swaggo/files
go get -u github.com/alecthomas/template

swag init
```
open http://127.0.0.1:8000/swagger/index.html

# build docker
```
docker pull mysql
docker run --name mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=root1234 -d mysql

docker build -t gin-blog-docker .
docker run -p 8000:8000 gin-blog-docker

docker run --link mysql:mysql -p 8000:8000 gin-blog-docker
```
