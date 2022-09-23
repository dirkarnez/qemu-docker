docker build -t my-kernel .
docker run --rm -it -v "%cd%/../2-export-docker:/output-for-docker" -v "%cd%/../4-qemu-boot:/output-for-qemu" my-kernel
pause