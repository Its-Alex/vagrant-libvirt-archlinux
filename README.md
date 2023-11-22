# Vagrant archlinux (libvirt)

This repo aim to try [vagrant-libvirt](https://github.com/vagrant-libvirt/vagrant-libvirt)

## Requirements

- [`direnv`](https://direnv.net/)
- [`libvirt`](https://libvirt.org/) - installed and working, the socket must be available
    at `/var/run/libvirt/`

This repo use `vagrant-libvirt` in `docker`, uncomment
[this line](/.envrc#3) if you want to run it locally.

`vagrant-libvirt` docker can be configured in [`/scripts/vagrant`](/scripts/vagrant).

Finally execute those commands:


```bash
$ direnv allow
```

## Getting started

By default VM are configured to run `archlinux`, you can launch the VM with:

```bash
$ vagrant up
```

To destroy VM, use:

```bash
$ vagrant destroy -f
```

## Test archlinux installation

You can perform an install of archlinux with the official ISO in this repo.

1. First you must download the official ISO:
    ```bash
    $ ./scripts/download-archlinux-iso.sh
    ```
2. Then uncomment [code to allow booting on ISO](/Vagrantfile#L23-L25).
3. Next launch the VM:
    ```bash
    $ vagrant up
    ```
4. Open a graphical interface and perform a normal installation
5. Destroy the VM
    ```bash
    $ vagrant destroy -f
    ```

## License

[MIT]()