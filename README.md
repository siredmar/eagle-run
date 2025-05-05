# eagle-run

Run legacy Cadsoft Eagle in Docker Container
This container is only a runtime environment with all dependencies and libraries needed to run some older eagle version.
It does not contain eagle itself. This is tested with eagle 6.6.0 with Xorg. Wayland is not tested - PRs are welcome!

## Building

```sh
$ docker build -t eagle .
```

## Running



Make sure that you installed eagle somewhere, e.g. `/opt/eagle-6.6.0`

```sh
# Allow X11 local connections
$ xhost +local:docker
# Set directories
$ export EAGLE_INSTALLATION_PATH=/opt/eagle-6.6.0
$ export EAGLE_PROJECTS=/home/user/projects
# Run eagle withing the runtime
$ docker run --rm -it \
  -v ${EAGLE_INSTALLATION_PATH}:/app \
  -v ${EAGLE_PROJECTS}:/projects \
  -e DISPLAY=$DISPLAY \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -e QT_X11_NO_MITSHM=1 \
  eagle /app/bin/eagle
```
