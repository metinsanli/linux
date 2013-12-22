Fix Plymouth Splash Screen In Ubuntu On GRUB and BURG
For those who have experienced an ugly Plymouth screen when booting into Ubuntu, there are plenty of fixes and scripts out there that are proven to fix the resolution but there are a few who still struggle with fixing it.

The following procedure will help you to fix the ugly resolution by editing GRUB and BURG, yes BURG affects the Plymouth as well.




First, open terminal then input:

__sudo apt-get install v86d hwinfo__

After the installation run in terminal:

__sudo hwinfo --framebuffer__

* take note of the highest resolution that your display can support when running Plymouth.

----------------------------------------------------------------------------------

Still in terminal:

__gksu gedit /etc/default/grub__

* this will bring up the text editor for GRUB configuration.

On the text editor find the line:

**GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"**

with:

**GRUB_CMDLINE_LINUX_DEFAULT="quiet splash nomodeset video=uvesafb:mode_option=1024x768-24,mtrr=3,scroll=ywrap"**

then find the line that says:

**GRUB_GFXMODE=640x480**

and change it into:

**GRUB_GFXMODE=1024x768**

save and exit.

* replace the resolution with the highest resolution that your display supports as listed in **hwinfo --framebuffer**.

----------------------------------------------------------------------------------

Still in terminal input:

__gksu gedit /etc/initramfs-tools/modules__

this will again bring you a text editor. Scroll to the end of the page and insert:

**uvesafb mode_option=1024x768-24 mtrr=3 scroll=ywrap**

save and exit.

----------------------------------------------------------------------------------

Type in terminal:

__echo FRAMEBUFFER=y | sudo tee /etc/initramfs-tools/conf.d/splash__

__sudo update-grub__

__sudo update-initramfs -u__

This will fix the resolution when you have GRUB.
