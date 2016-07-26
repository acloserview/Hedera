[![alt text](https://raw.githubusercontent.com/sixsixfive/Hedera/master/.sshot.png)](https://raw.githubusercontent.com/sixsixfive/Hedera/master/.shot.png)

##### Themes available:

* Plasma Look'n'Feel
* Konsole/Yakuake/Qterm ColorScheme
* KDE ColorScheme
* Aurorae theme
* LXQt 0.10 theme
* [SLiM](https://github.com/iwamatsu/slim) theme
* A classic Icon theme
* GTK 3.20 theme
	* made for use with [GTK3-nocsd](https://github.com/PCMan/gtk3-nocsd)
	* needs disabled overlay schrollbars (export GTK_OVERLAY_SCROLLING=0)
	* keep in mind that the theme won't work in GNOME

### How to Install?

Just clone(git clone https://github.com/sixsixfive/Hedera.git) or [download](https://github.com/sixsixfive/Hedera/archive/master.zip) 
the theme and move the wanted files inside of the CP_TO_DATADIRS folder to your SYSDATADIR(usually /usr/share or /usr/local/share) or your XDG_DATADIR (usually (~/.local/share).

Note: there is no easier way todo this since every KDE application uses different theme paths!

_Some themes like SLIM need to be placed into the sysprefix_

##### Packages(use at your own risk)

###### Chakra

* [CCR](https://chakralinux.org/ccr/packages.php?ID=7780)

###### Devuan/Debian/Neon and other deb-based systems

* [Data](https://github.com/sixsixfive/Hedera/raw/master/dist/hedera-theme_1.0-1_all.deb)
* [Config](https://github.com/sixsixfive/Hedera/raw/master/dist/hedera-theme-default_1.0-1_all.deb)

_The Config package includes all config files to set Hedera as default theme, If your Distribution uses heavy customization this package could also conflict with some of your distribution packages!_

### Suggested Settings to match the GTK theme

#### Breeze KStyle settings (LANG=en kcmshell5 breezestyleconfig)

##### General:

* Center tabbar tabs: OFF

##### Frames:

* Draw frame around dockable panels: OFF
* Draw frame around page titles: OFF
* Draw frame around side panels: ON

#### KColor Settings (LANG=en kcmshell5 colors)

##### Options:

* Apply inactive window color effects: OFF
* Inactive selection changes color: OFF
* Shade sorted column in lists: OFF
* Apply colors to non-Qt applications: OFF
* Contrast: Maximum

### FAQ

* [Icon theme FAQ](https://github.com/sixsixfive/Ivy/blob/master/faq.md)

##### Will there ever be an easier way to install this?:

No sorry, KDE fu**ed this up - every other Desktop/WM can use SYSPREFIX/DATADIR/THEMES so why not KDE? 
