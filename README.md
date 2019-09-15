# Unifound Printing Management System

SUSTech Unifound Printing Management System Backend for Mac OS.

南方科技大学联创打印系统Mac OS驱动

This driver can be also used in any Unix system that support CUPS with slightly different configuration

## Requirements

- Python >= 3.5 [should be installed in `/usr/local/bin/`]
- Python requests

## How To

### Install
Run `install.sh` as super user to install printing backend.

### Add new printer
Visit `http://localhost:631/admin` to add new printer.

You may need to run `cupsctl WebInterface=yes` to enable web admin.

#### URI specification
`upm://<server host>:<port>/username:password`

For SUSTech students, `<server host>=172.18.1.141` and `<port>=9130`

#### Printer Description File
`Generic > Generic PCL Laster Printer` is usable, but [Gutenprint](http://gimp-print.sourceforge.net/) is recommanded. After installing Gutenprint, you can choose `Gestetner > Gestetner DSc1030 - CUPS+Gutenprint` for most of the printers in SUSTech.
