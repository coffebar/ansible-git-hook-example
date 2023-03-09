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
