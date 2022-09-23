docker build -t virt-make-fs .
docker run --rm -it -v "%cd%:/files" virt-make-fs
pause
