# docker-hexo
Dockerfile to build a HEXO container image.

## Contributing
If you find this image useful here's how you can help:

- Send a Pull Request with your awesome new features and bug fixes
- Be a part of the community and help resolve [Issues](https://github.com/croef/docker-hexo/issues)

## Installation
Automated builds of the image are available on [Dockerhub](https://hub.docker.com/r/croef/hexo) and is the recommended method of installation.

```bash
docker pull croef/hexo
```

Alternatively you can build the image locally.

```bash
docker build -t croef/gitlab github.com/croef/docker-croef
```

Start Hexo:

1. Init Hexo for the first time
	
	```bash
	docker run -it --rm \
   		-v /path/to/hexo:/root/blog \
   		croef/hexo init
	```

2. Run Hexo as daemon process
	
	```bash
	docker run -d --name blog -p 4000:4000 \
   		-v /path/to/hexo:/root/blog \
   		croef/hexo
	```

Then you can open [http://localhost:4000/](http://localhost:4000/)  to watch your blog. Have fun! 

## Commands
If you want to use any commands, you can type it behand the run script, such as:

```bash
docker run -it --rm \
   -v /path/to/hexo:/root/blog \
   croef/hexo generate
```

or

```bash
docker run -it --rm \
   -v /path/to/hexo:/root/blog \
   croef/hexo deploy
```
