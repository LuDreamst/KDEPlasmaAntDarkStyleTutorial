#!/bin/bash

SRC_DIR=$(cd $(dirname $0) && pwd)
ROOT_UID=0

# 检查是否已经是root用户，如果不是，则请求sudo权限
if [ "$EUID" -ne 0 ]
  then echo "请以root用户运行此脚本"
  sudo -v
  exit
fi

# Destination directory
AURORAE_DIR="$HOME/.local/share/aurorae/themes"
SCHEMES_DIR="$HOME/.local/share/color-schemes"
PLASMA_DIR="$HOME/.local/share/plasma/desktoptheme"
LOOKFEEL_DIR="$HOME/.local/share/plasma/look-and-feel"
KVANTUM_DIR="$HOME/.config/Kvantum"
WALLPAPER_DIR="$HOME/.local/share/wallpapers"
KONSOLE_DIR="$HOME/.local/share/konsole"
NEOFETCH_DIR="$HOME/.config/neofetch"
PLASMOLDS_DIR="$HOME/.local/share/plasma/plasmoids"
ICONS_DIR="$HOME/.local/share/icons"
SDDM_DIR="/usr/share/sddm/themes"
ANT_DARK_DIR="$HOME/.themes"

THEME_NAME=Ant-Dark

[[ ! -d ${AURORAE_DIR} ]] && mkdir -p ${AURORAE_DIR}
[[ ! -d ${SCHEMES_DIR} ]] && mkdir -p ${SCHEMES_DIR}
[[ ! -d ${PLASMA_DIR} ]] && mkdir -p ${PLASMA_DIR}
[[ ! -d ${LOOKFEEL_DIR} ]] && mkdir -p ${LOOKFEEL_DIR}
[[ ! -d ${KVANTUM_DIR} ]] && mkdir -p ${KVANTUM_DIR}
[[ ! -d ${WALLPAPER_DIR} ]] && mkdir -p ${WALLPAPER_DIR}
[[ ! -d ${KONSOLE_DIR} ]] && mkdir -p ${KONSOLE_DIR}
[[ ! -d ${NEOFETCH_DIR} ]] && mkdir -p ${NEOFETCH_DIR}
[[ ! -d ${PLASMOLDS_DIR} ]] && mkdir -p ${PLASMOLDS_DIR}
[[ ! -d ${ICONS_DIR} ]] && mkdir -p ${ICONS_DIR}
[[ ! -d ${SDDM_DIR} ]] && mkdir -p ${SDDM_DIR}
[[ ! -d ${ANT_DARK_DIR} ]] && mkdir -p ${ANT_DARK_DIR}

install() {
  local name=${1}

  [[ -d ${AURORAE_DIR}/${name} ]] && rm -rf ${AURORAE_DIR}/${name}*
  [[ -f ${SCHEMES_DIR}/${name}.colors ]] && rm -rf ${SCHEMES_DIR}/${name}*.colors
  [[ -d ${PLASMA_DIR}/${name} ]] && rm -rf ${PLASMA_DIR}/${name}*
  [[ -d ${LOOKFEEL_DIR}/${name} ]] && rm -rf ${LOOKFEEL_DIR}/${name}*
  [[ -d ${KVANTUM_DIR}/${name} ]] && rm -rf ${KVANTUM_DIR}/${name}*
  [[ -d ${WALLPAPER_DIR}/${name} ]] && rm -rf ${WALLPAPER_DIR}/${name}
  [[ -d ${KONSOLE_DIR}/${name} ]] && rm -rf ${KONSOLE_DIR}/${name}*
  [[ -d ${NEOFETCH_DIR}/${name} ]] && rm -rf ${NEOFETCH_DIR}/${name}*
  [[ -d ${PLASMOLDS_DIR}/${name} ]] && rm -rf ${PLASMOLDS_DIR}/${name}*
  [[ -d ${ICONS_DIR}/${name} ]] && rm -rf ${ICONS_DIR}/${name}*
  [[ -d ${SDDM_DIR}/${name} ]] && rm -rf ${SDDM_DIR}/${name}*
  [[ -d ${ANT_DARK_DIR}/${name} ]] && rm -rf ${ANT_DARK_DIR}/${name}*

  cp -r ${SRC_DIR}/aurorae/*                                                         ${AURORAE_DIR}
  cp -r ${SRC_DIR}/color-schemes/*.colors                                            ${SCHEMES_DIR}
  cp -r ${SRC_DIR}/plasma/desktoptheme/*                                             ${PLASMA_DIR}
  cp -r ${SRC_DIR}/plasma/look-and-feel/*                                            ${LOOKFEEL_DIR}
  cp -r ${SRC_DIR}/Kvantum/*                                                         ${KVANTUM_DIR}
  cp -r ${SRC_DIR}/wallpaper/*                                                       ${WALLPAPER_DIR}
  cp -r ${SRC_DIR}/konsole/*                                                         ${KONSOLE_DIR}
  cp -r ${SRC_DIR}/neofetch/*                                                        ${NEOFETCH_DIR}
  cp -r ${SRC_DIR}/plasmolds/*                                                       ${PLASMOLDS_DIR}
  cp -r ${SRC_DIR}/icons/*                                                           ${ICONS_DIR}
  cp -r ${SRC_DIR}/sddm/*                                                            ${SDDM_DIR}
  cp -r ${SRC_DIR}/Ant-Dark/*                                                        ${ANT_DARK_DIR}
}

echo "Installing '${THEME_NAME} kde themes'..."

install "${name:-${THEME_NAME}}"

echo "Install finished..."