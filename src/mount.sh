# Create the local mount point
mkdir /home/myUser/my-remote-dir/
# Mount as user myUser with group myUser into dir /home/myUser/my-remote-dir/
sudo mount -t davfs https://cloud.example.org/remote.php/webdav/my-dir/ /home/myUser/my-remote-dir/ -o uid=myUser -o gid=myUser
# To unmount the directrory run.
sudo umount /home/myUser/my-remote-dir/
# if the mount is hanging and does not unmount
lsof | grep 'my-remote-dir'
# this will output the process that blocks the umount