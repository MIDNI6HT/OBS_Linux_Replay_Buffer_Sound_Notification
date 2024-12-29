# OBS Linux Replay Buffer Sound Notifications
A simple Lua script which plays a .wav sound whenever replay buffer is saved, enabled or disabled adapted for Linux support using PulseAudio or ALSA.

## Installation

1. Ensure that aplay (ALSA) or paplay (PulseAudio) is installed on your system. For example:

`sudo apt install alsa-utils  # For aplay`

`sudo apt install pulseaudio-utils  # For paplay`

Ensure that the sound file is in a format supported by the utility (e.g., .wav for aplay and .wav/.ogg for paplay).

2. Use the sounds in the repo or any .wav sound but make sure to match its name either in "BReplay_Buffer_Sound.lua" (edit with any text editor) or rename your .wav files.

3. Put it in the same location with "Replay_Buffer_Sound.lua"
   - A good way is to create a separate "scripts" folder in your Home and keep all your scripts there in case you need to backup your OBS Settings.

4. OBS → Tools → Scripts → +

This Lua script was forked from https://gist.github.com/snakecase/e816384a071cec31efbb4b9e429c108d

Credits:

* [upgradeQ](https://gist.github.com/upgradeQ/b2412242d76790d7618d6b0996c4562f)
* [gima](https://gitlab.com/gima/obsnotification)
* [AkazaRenn](https://gist.github.com/AkazaRenn/98871c04daef7130ffa25b3f47bf1dbc)
* [GTMoraes](https://github.com/GTMoraes)

Thank you guys!
