local obs = obslua

-- Put a sound of your choosing next to "Replay_Buffer_Sound.lua" and don't forget to match its name either in code below or rename your file.

PROP_AUDIO_SAVE = script_path() .. "Cam_SAVE.wav"
PROP_AUDIO_START = script_path() .. "Cam_ON.wav"
PROP_AUDIO_SHUTDOWN = script_path() .. "Cam_OFF.wav"

function playsound(filepath)

    -- Use os.execute to call aplay (ALSA) for sound playback
    -- os.execute(string.format("aplay '%s' 2>/dev/null &", filepath))

    -- Alternatively, if you use PulseAudio, you can replace 'aplay' with 'paplay':
    os.execute(string.format("paplay '%s' 2>/dev/null &", filepath))
end

function on_event(event) 
  if event == obs.OBS_FRONTEND_EVENT_REPLAY_BUFFER_STARTED 
    then playsound(PROP_AUDIO_START) 
  end 
  if event == obs.OBS_FRONTEND_EVENT_REPLAY_BUFFER_SAVED 
    then playsound(PROP_AUDIO_SAVE) 
  end 
  if event == obs.OBS_FRONTEND_EVENT_REPLAY_BUFFER_STOPPED
    then playsound(PROP_AUDIO_SHUTDOWN) 
  end 
end

function script_load(settings)
    obs.obs_frontend_add_event_callback(on_event)
end


-- This Lua script was forked from https://gist.github.com/snakecase/e816384a071cec31efbb4b9e429c108d

-- Credits: 
-- upgradeQ (https://gist.github.com/upgradeQ/b2412242d76790d7618d6b0996c4562f)
-- gima (https://gitlab.com/gima/obsnotification)
-- AkazaRenn (https://gist.github.com/AkazaRenn/98871c04daef7130ffa25b3f47bf1dbc)
-- GTMoraes (https://github.com/GTMoraes)
-- Thank you guys!
