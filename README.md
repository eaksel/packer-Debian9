# packer-Debian9

## What is packer-Debian9 ?

packer-Debian9 is a set of configuration files used to build an automated Debian 9 virtual machine images using [Packer](https://www.packer.io/).
This Packer configuration file allows you to build images for VMware Workstation and Oracle VM VirtualBox.

## Prerequisites

* [Packer](https://www.packer.io/downloads.html)
  * <https://www.packer.io/intro/getting-started/install.html>
* A Hypervisor
  * [VMware Workstation](https://www.vmware.com/products/workstation-pro.html)
  * [Oracle VM VirtualBox](https://www.virtualbox.org/)

## How to use Packer

Commands to create an automated VM image:

To create a Debian 9 VM image using VMware Workstation use the following commands:

```cmd
cd c:\packer-Debian9
packer build -only=vmware-iso debian9.json
```

To create a Debian 9 VM image using Oracle VM VirtualBox use the following commands:

```cmd
cd c:\packer-Debian9
packer build -only=virtualbox-iso debian9.json
```

*If you omit the keyword "-only=" both the Workstation and Virtualbox VMs will be created.*

By default the .iso of Debian 9 is pulled from <https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-9.6.0-amd64-netinst.iso>

You can change the URL to one closer to your build server. To do so change the **"iso_url"** parameter in the **"variables"** section of the debian9.json file.

```json
{
  "variables": {
      "iso_url": "https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/debian-9.6.0-amd64-netinst.iso"
  }
}
```

## Default credentials

The default credentials for this VM image are:

|Username|Password|
|--------|--------|
|packer|packer|
|root|packer|