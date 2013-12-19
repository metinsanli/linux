In a previous post on my blog I posted about setting up a home server with the ability to stream music, video and pictures to devices connected to the same network.

I previously used MediaTomb, of which to be honest was rather complex to set-up and manage and now due to the fact that I am about to buy an XBOX (mainly to play GTA 5) I found that MediaTomb does not support XBOX and will not work.

So some research on the internet led me to look at and install ReadyDLNA (previously named ‘miniDLNA’) of which is super-simple to install and configure and works great.. a much smaller resource footprint too!

So lets get on and install it, on this set-up I am running a Ubuntu Server 12.04 LTS machine of which hosts all my shared files, movies, photos and various other things.

So first up we need to install the software, so now run the following command from the terminal:

$ **sudo apt-get install minidlna**

If you don’t already have folders for storing your movies, music and photo’s you should create them like so:

$ **mkdir /home/metin/Müzik/**

$ **mkdir /home/metin/Resimler/**

$ **mkdir /home/metin/Videolar/**

Now we need to edit the **/etc/minidlna.conf** file, you should edit it to make it look as follows:-

*port=8200*

*media_dir=A,/home/metin/Müzik/*

*media_dir=P,/home/metin/Resimler/*

*media_dir=V,/home/metin/Videolar/*

*friendly_name=Bobbys DLNA Server*

*inotify=yes*

*enable_tivo=no*

*strict_dlna=no*

*notify_interval=900*

*serial=12345678*

*model_number=1*

Now it’s time to reload the minidlna daemon and all should now be working, try connecting and streaming some content from one of you devices!

$ **sudo service minidlna force-reload**

Please note that when changing the settings (such as media paths) in the configuration file you should execute the following command to rebuild the media database:

$ **sudo minidlna -R**

You may find that adding the above command as a daily cronjob will keep your media library in sync and keeping track of all new movies, videos and photos.

So your new DLNA server should now be found on your devices and you should now be able to browse your media and stream them!

minidlna database folder : **/var/lib/minidlna/**

Hope you enjoy!


>metin@mt:~$ **sudo service minidlna force-reload**
>Usage: /etc/init.d/minidlna {start|stop|status|restart|force-reload}

