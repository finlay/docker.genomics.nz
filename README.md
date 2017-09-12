# GFANZ docker files

There are some dockers maintained in this repository. Dockers built here are available from https://docker.genomics.nz.

### Running in a docker context

To use a docker to run a particular project, you can use the following command:

```
docker run -it --rm --net=host --user=$$(id -u):$$(id -g) -v$$(pwd):/work -w /work DOCKER CMD
```
where `DOCKER` is the name of the docker that you want to run, and `CMD` is the command that you want
to be executed when the docker starts. This mounts the current directory into a directory called
`work` and the command will be run with the same user and group as in the host. Make sure
that you write any files that you want to keep somewhere under the work directory, otherwise
you will lose them when the docker finishes.

