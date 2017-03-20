# pro-desktop: Ansible-Provisioned Desktop Environment

## Summary

This project provides easy provisioning of my standard desktop configuration.

## Usage

From scratch:

```
$ provision.sh
```

Once you've got these prerequisites installed, set the provisioning to run
periodically to stay in compliance, by setting your root crontab as so:

```
0-59/30 * * * * ansible-pull -U https://github.com/dgorley/pro-desktop.git
```

