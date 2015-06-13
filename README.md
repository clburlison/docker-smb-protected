# docker-smb-protected

A simple SMB docker container for sharing data with authorized users.

Default username: ``admin``  
Default password: ``letmein``  

Usage:
----
Assuming you want to share ``/usr/local/docker/data`` on your docker host:  

```bash
docker run -d \
  --restart="always" \
  --name smb-protected \
  -v /usr/local/docker/data:/repo \
  -p 445:445 \
  clburlison/smb-protected
```

If you wish to change the admin password:  
``echo -ne "newpassword\nnewpassword\n" | docker exec -i smb smbpasswd -a -s admin``  

_Note:_ The password is being set to ``newpassword`` in the above example. The "\n" are enter characters that are needed to enter the password without user interaction.

From an OS X client:  
Finder -> Go -> Connect to Server -> smb://docker-host-ip/