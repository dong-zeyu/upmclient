# Unifound Printing Management System

SUSTech Unifound Printing Management System Backend for Mac OS.

南方科技大学联创打印系统 Mac OS 驱动

This driver can be also used in any Unix system that supports CUPS with slightly different configuration

## Requirements

- Python >= 3.6 [should be installed in `/usr/local/bin/python3`]
- Python requests

## How To

### Install

Run `install.sh` as super user to install the printing backend.

### Add a new printer

Visit `http://localhost:631/admin` to add a new printer.

You may need to run `cupsctl WebInterface=yes` to enable web admin.

#### URI specification

`upm://<server host>:<port>/<username>:<password>`

For SUSTech students, use `<server host>=172.18.1.141` and `<port>=9130` or `<port>=80`

#### Printer Description File

`Generic > Generic PCL Laster Printer` is usable, but [Gutenprint](http://gimp-print.sourceforge.net/) is recommended. After installing Gutenprint, you can choose `Gestetner > Gestetner DSc1030 - CUPS+Gutenprint` for most of the printers in SUSTech.

## Bugs

- Supporting A4 Paper only
- "切换到黑白输出" not working
