# Deployment to server by git push

This is just example code.

Servers list (inventory file) with root users:
`ansible/hosts`

Nodejs, npm and axios will be installed as example.

### How to set up this example on server

- You need to have ansible installed on local machine.
- Clone repo and run './ansible/first-deploy.sh
- When it succeeds, add remote repo to git, for example:
```bash
git remote add live ssh://git@us2/home/git/project.git
```

When you commit and push some changes to live, it will be on server.

```bash
git push live master
```

### SSH key

By default, git user will be authorized to log-in 
by ssh with you key located at ~/.ssh/id_rsa
You may change this.

You also can make some adjustments like this:

git config --add --local core.sshCommand 'ssh -i ~/.ssh/id_rsa'

Or configure it globally in ~/.ssh/config
