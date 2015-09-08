live_loop :kick_drum do
  sync :melody
  sample :drum_heavy_kick, amp: 50
  sleep 0.2
end

with_fx :echo, mix: 0.5, phase: 0.3, decay: 9 do
  live_loop :snare_drum do
    sync :melody
    sample :drum_snare_hard, amp: 20
    sleep 0.7
  end
end

#live_loop :snare_drum do
  #sync :melody
#end

with_fx :reverb, mix: 0.5, room: 0.9, damp: 1, amp: 4 do
  live_loop :melody do
    melody
    sleep 0.2
  end
end

define :melody do
  #use_synth :mod_beep
  use_synth :mod_fm
  #use_synth :mod_saw

  #play choose(chord(:a, :minor)), release: 0.1, cutoff: rrand(60, 120), amp: 9
  #play choose(chord(:a, :m7)), release: 0.1, cutoff: rrand(60, 120), amp: 9
  #play choose(chord(:a, :m13)), release: 0.1, cutoff: rrand(60, 120), amp: 9

  #play choose(chord(:e3, :minor)), release: 0.1, cutoff: rrand(60, 120), amp: 9
  #play choose(chord(:e4, :minor)), release: 0.1, cutoff: rrand(60, 120), amp: 9

  #play choose(chord(:g3, :minor)), release: 0.1, cutoff: rrand(60, 120), amp: 9
end
