set DOCKER_BUILDKIT=1
docker build --output "type=tar,dest=alpine.tar" .
move alpine.tar ../3-convert-docker-export-to-qemu
pause