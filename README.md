# Unifound Printing Management System

SUSTech Unifound Printing Management System Backend for Mac OS.

南方科技大学联创打印系统 Mac OS 驱动

This driver can be also used in any Unix system that supports CUPS with slightly different configuration

## Requirements

- Python >= 3.6 [should be installed in `/usr/local/bin/python3`]
- Python requests
- PyQt5 [only in [Qt](https://github.com/dizzam/upmclient/tree/qt) version]

## Installation

Please follow the steps below to finish the installation.

### Install Requirements

1. Install [Python](https://www.python.org/downloads/mac-osx/) if you haven't.

2. Run the following command in the terminal.

        pip3 install requests

    When using [Qt](https://github.com/dizzam/upmclient/tree/qt) version, `pyqt5` is also required to be installed.

3. Install [Gutenprint](http://gimp-print.sourceforge.net/MacOSX.php)

### Install Printing Backend

Run the following command in the terminal.

    git clone https://github.com/dizzam/upmclient.git
    cd upmclient
    sudo ./install.sh

### Add a new printer

1. Run `cupsctl WebInterface=yes` in terminal to enable web admin
2. Visit `http://localhost:631/admin` in your browser.
3. Click *Add Printer* and choose *Unifound Printing Backend* on the next page. You may be asked for the username and password of your computer.
4. Input the URI for the printer

        upm://<server host>:<port>/[username[:password]]

    For SUSTech users, use `<server host>=172.18.1.141` and `<port>=9130` or `<port>=80`. `<username>` and `<password>` are your account for the printing system and are optional **only** in [Qt](https://github.com/dizzam/upmclient/tree/qt) version.
5. Next, input the printer name, description and location as you like.
6. On the next page, it's recommended to choose `Gestetner > Gestetner DSc1030 - CUPS+Gutenprint` as printer make and module.
7. Finally, On the option page, change *Media Size* to A4 and change *Color Model* to Grayscale if you are not going to print color pages.

## Bugs

- Supporting A4 Paper only
- "切换到黑白输出" not working
- **when printing application-level grayscale documents, this driver fails to identify color properly and may produce extra charge. To avoid this, be sure to use system-level printing setting dialog for color management. and double check the page and color information at the terminal machine.**
