# Deployment to server by git push

This is example how to configure simple deployment with git:

#### When you commit and push some changes to live, it will be on server.

Nodejs, npm and axios will be installed 
for example.

### How to set up this example on server


- You need to have ansible installed on local machine.
- Edit servers list (inventory file) with root users:
`ansible/hosts`
- Clone repo and run './ansible/first-deploy.sh
- When it succeeds, add remote repo to git, for example:
```bash
git remote add live ssh://git@us2/home/git/project.git
```
If your ssh configuration is correct, you can commit some changes and push it:

```bash
git push live master
```

### SSH configuration

By default, git user will be authorized to log-in 
by ssh with you key located at ~/.ssh/id_rsa

You may change this.

You also can make some adjustments like this:

```bash
git config --add --local core.sshCommand 'ssh -i ~/.ssh/id_rsa'
```

Or configure it globally in ~/.ssh/config
