"C:\Program Files\qemu\qemu-img" convert alpine-large.qcow2 -O qcow2 alpine.qcow2 &&^
move alpine.qcow2 ../4-qemu-boot &&^
del alpine-large.qcow2
del alpine.tar
pause