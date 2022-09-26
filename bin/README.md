# Useful One-Liners

## List all manually installed packages

```bash
apt list --manual-installed | sed 's/Listing\.\.\.//g' | awk -F '/' '{ print $1 }' | xargs
```

# Purge all packages that were uninstalled

```bash
sudo apt purge -y $(dpkg  --get-selections | grep deinstall | awk '$2 == "deinstall" { print $1 }')
```
