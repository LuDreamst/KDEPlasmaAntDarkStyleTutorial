This is a tutorial about KDEPlasmaAntDarkStyle including an install.sh  

Forgive me that I can't describe all things exactly with just words. You can watch the tutorial [video](https://www.youtube.com/watch?v=KH-VC_wWI1M) by [LinuxScoop](https://github.com/linuxscoop)   
  
Tips: Some settings have been deprecated or changed due to version changes, and you don't need to stick to the book.  
## *Appreciation: [@LinuxScoop](https://github.com/linuxscoop), [vinceliuice(Vince)](https://github.com/vinceliuice), [Fausto-Korpsvart](https://github.com/Fausto-Korpsvart), [EliverLara](https://github.com/EliverLara) and other developers and designers who I don't know their names* ##
  
# 1. Initial Setup(Workspace Behavior Settings)  
## 1.1 Workspacce Behavior Settings  
### 1.1.1 Desktop Effects Settings  
   Settings --> Workspace --> Workspace Behavior --> Desktop Effects --> Appearance --> `Background contrast` &#x2714;  
   Settings --> Workspace --> Workspace Behavior --> Desktop Effects --> Focus --> `Dim Inactive` &#x2714; `Dim Screen for Administrator Mode` &#x2714; `Slide Back` &#x2714;  
   Settings --> Workspace --> Workspace Behavior --> Desktop Effects --> Window Management --> `Overview` &#x2714;  
   Then click `Apply`;  
### 1.1.2 Screen Edge Settings  
   Settings --> Workspace --> Workspace Bahavior --> Screen Edges --> upper-left --> `no action`  
   Then click `Apply`;  
### 1.1.3 Virtual Desktops Settings  
   Change to `1 Row` from `2 Rows`, then `add` 2 more virtual desktops and rename them `01` `02` `03` `04` in turn  
   Click the Slide settings button and set Duration to `600 milliseconds`, click `OK`  
   Then click `Apply`;
## 1.2 Window Managment Settings  
### 1.2.1 Window Behavior Settings  
   Advanced --> Window placement --> `Centered`  
   Then click `Apply`;
### 1.2.2 Task Switcher Settings  
   Main --> Visualization --> `Breeze` to `Large Icons`  
   Main --> Content --> `Include "Show Desktop" icon` &#x2714;  
   Then click `Apply`;
### 1.2.3 KWin Scripts Settings
   click `Get New Scripts`, search and install `Latte Window Colors`, `Latte Activate Launcher Meun`, `Force Blur` and `Force Decorations for GTK+3`  
   apply `Activate Latte Launcher Menu`, `Desktop Change OSD`, `Force Blur`, `Force Decorations for GTK+3`, `Latte Window Colors`  
   Then click `Apply`.  
# 2. Install and Config theme, icon  
You can try this install.sh to help you install all customization files automatically.  
# 3. Apply theme, icons  
## 3.1 Change a wallpaper which you like
   Right click on the desktop, select a wallpaper and click `Apply`  
## 3.2 Switch Settings view  
   Settings --> the Settings button --> `Switch to Icon View`  
## 3.3 Appearance Application  
   Settings --> Appearance --> Global Theme --> `Ant-Dark`  
   Settings --> Appearance --> Plasma Style --> `Ant-Dark`  
   Settings --> Appearance --> Colors --> `Ant-Dark-Mod-Lightly`  
   Settings --> Appearance --> Window Decorations --> `Ant-Dark`  
   Settings --> Appearance --> Icons --> `oomox-Kanagawa`  
   Settings --> Appearance --> Splash Screen --> `None`  
# 4. Install and Config Lightly and LightlyShaders  
## 4.1 Install Lightly and LightlyShaders  
   For Manjaro and Arch users, you can run  
   ```
   sudo pacman -S lightly lightlyshaders
   ```
   or  
   ```
   paru -S lightly lightlyshaders
   ```
   or  
   ```
   yay -S lightly lightlyshaders
   ```    
   In all, you can choose a package manager you like.  
   But there will be a error while installing lightlyshaders, you may have to pass it.  
   You can find more information about packages on [AUR](https://aur.archlinux.org/packages)  
## 4.2 Config Lightly and LightlyShaders  
   Settings --> Appearance --> Application Style --> `Lightly`  
   Settings --> Appearance --> Application Style --> Configure GNOME/GTK Application Style --> `Ant-Dark`  
   And config lightly:  
   General --> `Draw highlight on active tab` &#x2714;  
   General --> `Corner radius` --> `5px`  
   Then adjust `Transparency` Watch more detail in the tutorial video  
# 5. Install Plasmoids Widgets  
   ```
   yay -S plasma5-applets-virtual-desktop-bar-git plasma5-applets-window-appmenu plasma5-applets-panon
   sudo pacman -S qt5-websockets python-docopt python-numpy python-pyaudio python-cffi python-websockets
   ```
# 6. Install and Configure Latte-Dock  
## 6.1 Install Latte-Dock  
   ```
   yay -S latte-dock
   ```
## 6.2 Configure Latte-Dock  
   Settings-Latte Dock --> import --> `cupmond-plasma-color-layout.latte`  
   Panon Settings-Latte Dock --> VisualEffects --> Download New Effects:`rbn42-bar-mirror` --> Effect:`rbn42-bar-mirror`   
   Panon Settings-Latte Dock --> VisualEffects --> bar_width:`8` --> gap_width:`4`  
P.S. You should set Latte-Dock as autostart  
# 7. Remove original panel  
# 8. Additional Settings  
   Settings --> Workspace Behavior --> Screen Locking --> choose your favorite picture  
   Settings --> Startup and Shutdown --> Login Screen(SDDM) --> `Ant-Dark` --> choose your favorite picture **(needs pwd)**  
   Konsole --> Settings --> Manage Profiles --> set `ant-dark-konsole-zsh` as default  
# 9. Firefox Customization  
   You can find whole files and usage on [WhiteSur-firefox-theme](https://github.com/vinceliuice/WhiteSur-kde)   

# HOPE YOU ENJOY IT! :smile:  

   
   
   
   
   
  
   
   
   
   
   
   
   
   
   
   
  

   
   
