# packt-books-free-daily-Telegram
Packt Books Free - Auto-Send Daily Telegram

--------------------------------
### (1) install [telegram-cli](https://github.com/vysheng/tg#installation)
Clone GitHub Repository

`` git clone --recursive https://github.com/vysheng/tg.git && cd tg``

Ubuntu/Debian use: 

` sudo apt-get install libreadline-dev libconfig-dev libssl-dev lua5.2 liblua5.2-dev libevent-dev libjansson-dev libpython-dev make `

```
./configure
make
```
 
 `bin/telegram-cli -k tg-server.pub`
 
--------------------------------
### (2) install [Free Learning PacktPublishing script](https://github.com/igbt6/Packt-Publishing-Free-Learning)
Clone GitHub

`git clone https://github.com/igbt6/Packt-Publishing-Free-Learning.git && cd Packt-Publishing-Free-Learning && pip install -r requirements.txt && mv configFileTemplate.cfg configFile.cfg`

change your login credentials in configFile.cfg file

--------------------------------
### (3) download daily-Telegram.sh

`wget https://raw.githubusercontent.com/Saleh7/packt-books-free-daily-Telegram/master/daily-Telegram.sh `

Change your all path in the daily-Telegram file

`chmod a+x daily-Telegram.sh`

--------------------------------
### (4) cron setup [CronHowto?](https://help.ubuntu.com/community/CronHowto)

`crontab -e`

Insert a line:

`0 12 * * * /bin/sh /root/daily-Telegram.sh`

--------------------------------
