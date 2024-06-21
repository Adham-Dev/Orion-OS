#!/bin/bash

# تثبيت Zsh إذا لم يكن مثبتًا بالفعل
sudo pacman -S --noconfirm zsh

# تثبيت Oh My Zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# تثبيت Powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# تعديل ملف .zshrc لاستخدام Powerlevel10k
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="powerlevel10k\/powerlevel10k"/g' ~/.zshrc

# تشغيل p10k configure لتكوين Powerlevel10k
echo '[[ ! -f ~/.p10k.zsh ]] && p10k configure' >> ~/.zshrc

# إعادة تشغيل Zsh
source ~/.zshrc
