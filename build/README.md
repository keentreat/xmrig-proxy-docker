# Building xmrig-proxy

The build process uses docker. We start a new container using the `alpine` image, install some build dependencies, build the app, and finally distribute the app to the configured dist path (default is `/xmrig-proxy`). This process can automatically update the pre-compiled binary that is injected into the standard `patsissons/xmrig-proxy` image.

## Example

```bash
# build the xmrig-proxy development container image and generate the binaries
docker pull alpine
docker build -t patsissons/xmrig-proxy:build build
docker run --rm -v $PWD/root/xmrig-proxy:/xmrig-proxy patsissons/xmrig-proxy:build

# build the xmrig-proxy runtime container image
docker pull alpine
docker build -t patsissons/xmrig-proxy .
```

## Environment

You can adjust the following docker environment variables to customize the build process.

* `REPO_URI`: use a custom git repo for `xmrig-proxy` (default is `https://github.com/xmrig/xmrig-proxy.git`)
* `DIST_PATH`: use a custom dist path (default is `/xmrig-proxy`)

## Development Notes

If you want to play around with the development environment, simply run the container with a shell command. All scripts related to the build process are located in `/scripts`.

```bash
docker run --rm -it patsissons/xmrig-proxy:build /bin/sh
```
