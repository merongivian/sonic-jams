live_loop :kick_drum do
  sample :bd_haus, amp: 20
  sleep 0.6
end

live_loop :snare do
  sync :kick_drum
  sample :elec_hi_snare, amp: 10, attack: 0.1
  sleep 1.2
end

live_loop :soft_snare do
  sync :kick_drum
  sample :bd_tek, rate: 0.1, attack: 0.1
  sleep 0.2
end

with_fx :distortion do
  live_loop :base do
    sync :kick_drum
    bass_line
  end
end

with_fx :reverb, mix: 0.5, room: 0.9, damp: 1, amp: 4 do
  live_loop :melody do
    sync :kick_drum
    #play_pattern_timed chord(:c4, :major), 0.4, amp: 0.3

    #random_solo
    #solo
  end
end

define :bass_line do
  play :c3, amp: 0.9, release: 2
  sleep 2.4
  play :d3, amp: 0.9, release: 2
  sleep 2.4
  play :a2, amp: 0.9, release: 2
  sleep 2.4
  play :a2, amp: 0.9, release: 2
  sleep 2.4
end

define :random_solo do
  if one_in(2)
    melody_solo
  else
    scale_solo
  end
end

define :solo do
  play choose(chord(:c5, :major)), release: 0.1, amp: 0.7
  play choose(chord(:c6, :major)), release: 0.1, amp: 0.4
  #play choose(chord(:c4, :major)), release: 0.1, amp: 0.4
end

define :scale_solo do
  play_pattern_timed scale(:c5, :major), 0.6, release: 0.1
end
