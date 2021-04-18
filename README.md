# automine
A simple script to launch your mining software automatically after inactivity.



1 : Install xautolock here :https://doc.ubuntu-fr.org/xautolock

2 : Download the 2 files miner.sh and find_miner.sh, put this 2 files in /home/user/ for example.

 Modify miner.sh:
 
      #!/bin/sh
      /usr/bin/xautolock -time 1 -locker  ' /home/user/find_miner.sh' &

Modify find_miner.sh to find if the process are already running:

      var=$(ps -aux | grep [k]awpow) # here i use kawpow, but you can use another keyword to find the process.The [.] are important , for Ethash, write '[E]thash'
      ---
      gnome-terminal --window-with-profile=miner -- bash -c '~/Bureau/gminer/miner --algo kawpow --server raven.f2pool.com:3636 --user user.worker1 -w 0 --log_newjob 0'        & # create a window profile in your terminal, modifiy with your personnal miner

In crontab -e  , add the line:

      @reboot sleep 15 && DISPLAY =: 0 sh /home/user/miner.sh
And :

      reboot
