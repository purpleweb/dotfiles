# dotfiles

Créez vous un fichier .gitignore_global à la racine de votre répertoire utilisateur :

* Pour windows: `c:/Users/<username>/.gitignore_global`
* Pour linux: `~/.gitignore_global`

Déclarez le auprès de git : `git config --global core.excludesfile ~/.gitignore_global`

# Apps

- DBeaver-ce
- Filezilla
- VS Code
- CopyQ
- GParted

# NVidia drivers

https://askubuntu.com/questions/1443251/ubuntu-22-04-1-lts-freezes-few-times-per-hour-and-very-unstable

Might be your Nvidia drivers. Try nvidia-smi in terminal.

If it says something like "nvidia-smi not installed" or "can't communicate with drivers", that means your Nvidia driver is either not installed or disabled.

To install them run apt search nvidia-driver. A list should come up, and usually it's the best idea to install the latest driver unless your hardware is very old. The name of the driver will be something like nvidia-driver-520. Just type sudo apt install nvidia-driver-520 to install the drivers.

Then make sure to reboot.

Since you have a GTX 650Ti though, probably older drivers like nvidia-driver-470should also work well, maybe even better for your hardware.

EDIT: I just saw you were also using Wayland? Probably not a good idea considering you have an Nvidia GPU. Wayland support is horrible for Nvidia and whenever I tried using it I experienced really bad instability. To switch to XOrg, at the login screen choose your user, and in the bottom right, click the gear icon. Choose XOrg and log in.

# Config carte WIFI

✅ Étape 1 — Appliquer les options rtw88 (priorité absolue)

Crée le fichier :

```
sudo nano /etc/modprobe.d/rtw88.conf
```

Ajoute :

```
options rtw88_core disable_lps_deep=1
options rtw88_core disable_lps=1
options rtw88_pci disable_aspm=1
```

Puis :

```
sudo update-initramfs -u
sudo reboot
```

👉 Ça corrige la majorité des RTL8822CE instables sous 24.04.

✅ Étape 2 — Désactiver le powersave NetworkManager
sudo nano /etc/NetworkManager/conf.d/wifi-powersave.conf

Ajoute :

```
[connection]
wifi.powersave = 2
```

Puis :

```
sudo systemctl restart NetworkManager
```

✅ Sinon acheter une nouvvelle carte => carte pcie intel ax200
 https://www.amazon.fr/s?k=carte+pcie+intel+ax200&crid=3VUNNNFAOBAQP&sprefix=carte+PCIe+Intel+AX200%2Caps%2C340&ref=nb_sb_ss_mvt-t11-ranker_1_22
