<h1 align="center">CMI Remote Access</h1>

Automation scripts to handle various tasks for CMI Remote Access

_Note: Run the scripts on a CS Lab Machine or the Access Server (access2.cmi.ac.in) via ssh_

## SSH

To setup ssh access to the CMI access server, run:
```sh
curl -sSfl https://raw.githubusercontent.com/arghyadipchak/cmi-remote-access/main/setup_ssh.sh | bash
```

You will receive an email with the key file `cmi.key`, download it on your machine. Now you can ssh to the access server from your machine using:
```sh
ssh -I <path-to-key-file> <username>@access2.cmi.ac.in
```

## Email Forwarding

To setup email forwarding, run:
```sh
curl -sSfl https://raw.githubusercontent.com/arghyadipchak/cmi-remote-access/main/email_forward.sh | bash
```

## Homepage

To setup a basic homepage, run:
```sh
curl -sSfl https://raw.githubusercontent.com/arghyadipchak/cmi-remote-access/main/homepage_basic.sh | bash
```

You can then edit the `~/.www/index.html` as needed

To setup a homepage that redirects to another website, run:
```sh
curl -sSfl https://raw.githubusercontent.com/arghyadipchak/cmi-remote-access/main/homepage_forward.sh | bash
```
