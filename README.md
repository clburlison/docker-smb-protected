# docker-smb-protected

A simple SMB docker container for sharing data with authorized users. This branch is for usage with [Imagr](https://github.com/grahamgilbert/imagr) and [BSDPy](https://bitbucket.org/bruienne/bsdpy). 

Default username: ``admin``  
Default password: ``letmein``  

Usage:
----
Assuming you want to share ``/usr/local/docker/imagr`` and ``/usr/local/docker/nbi`` on your docker host:  

```bash
docker run -d \
  --restart="always" \
  --name smb-protected \
  -v /usr/local/docker/imagr:/imagr \
  -v /usr/local/docker/nbi:/nbi \
  -p 445:445 \
  clburlison/smb-protected:imagr_bsdpy
```

If you wish to change the admin password:  
``echo -ne "newpassword\nnewpassword\n" | docker exec -i smb smbpasswd -a -s admin``  

_Note:_ The password is being set to ``newpassword`` in the above example. The "\n" are enter characters that are needed to enter the password without user interaction.

From an OS X client:  
Finder -> Go -> Connect to Server -> smb://docker-host-ip/