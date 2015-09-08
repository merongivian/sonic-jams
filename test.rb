#sample :ambi_lunar_land
#with_fx :echo, mix: 0.5, phase: 0.3, decay: 9 do
  #with_fx :reverb, mix: 0.5, room: 0.9, damp: 1, amp: 13 do
    #sample :loop_amen, rate: 1.9,
      #start: 0.2,
      #finish: 1.3,
      #rate: 0.5,
      #attack: 0.5,
      #sustain: 0
      ##release: 0.3
      ##attack + release should be <= sample_duration :loop_amen
      ##sample :loop_amen,
        ##sustain: 0,
        ##attack: 0.2,
        ##release: 1.25
      ##sample :drum_cymbal_open,
        ##attack: 0.01,
        ##sustain: 0,
        ##release: 0.1
      #sleep 3
      #sample :ambi_choir, amp: 0.2, pan: -1, rate: 1.4, attack: 0.5
      #sample :ambi_dark_woosh, amp: 0.2, pan: 1
      #sleep 2
      ##use_synth :fm
      ##use_synth :hollow
      ##use_synth :dark_ambience
      ##use_synth :tb303
      #use_synth :subpulse
      ##use_synth :prophet
      ##use_synth :mod_fm
      #play 72, amp: 0.1, pan: -1, attack: 0.3
      #sleep 0.5
      #play 75, amp: 0.1, pan: 1, release: 0.3
      #sleep 0.5
      #play 79, amp: 0.1, pan: 0, attack: 0.3,
                                 #attack_level: 1,
                                 #decay: 0.2, # time from attack level to sustain level
                                 #sustain_level: 0.4,
               #sustain:1, release: 4
  #end
#end
#
#

#play_pattern chord(:E3, :m7)
#
#play_pattern_timed chord(:E3, :m7), 0.2
#play_pattern_timed scale(:c3, :major_pentatonic, num_octaves: 3), 0.125, release: 0.1
#play_pattern_timed scale(:c3, :major, num_octaves: 3), 0.125, release: 0.1
#play_pattern_timed scale(:c3, :major), 0.125, release: 0.1
#play chord(:E3, :m7)

#define :my_loop do
  #use_synth :tb303
  #play choose(chord(:e3, :minor))
  #sleep 0.25
#end

#loop do
  #my_loop
#end
#

live_loop :kick_drum do
  sync :melody
  sample :drum_heavy_kick, amp: 50
  sleep 0.2
end

#with_fx :echo, mix: 0.5, phase: 0.3, decay: 9 do
  #live_loop :snare_drum do
    #sync :melody
    #sample :drum_snare_hard, amp: 20
    #sleep 0.7
  #end
#end

live_loop :snare_drum do
  sync :melody
end

with_fx :reverb, mix: 0.5, room: 0.9, damp: 1, amp: 4 do
  live_loop :melody do
    melody
    sleep 0.2
  end
end

define :melody do
  #use_synth :mod_beep
  #use_synth :mod_fm
  use_synth :mod_saw

  #play choose(chord(:a, :minor)), release: 0.1, cutoff: rrand(60, 120), amp: 9
  #play choose(chord(:a, :m7)), release: 0.1, cutoff: rrand(60, 120), amp: 9
  #play choose(chord(:a, :m13)), release: 0.1, cutoff: rrand(60, 120), amp: 9

  #play choose(chord(:e3, :minor)), release: 0.1, cutoff: rrand(60, 120), amp: 9
  #play choose(chord(:e4, :minor)), release: 0.1, cutoff: rrand(60, 120), amp: 9

  #play choose(chord(:g3, :minor)), release: 0.1, cutoff: rrand(60, 120), amp: 9
end

#s = play 60, release: 5, note_slide: 1
#sleep 0.5
#control s, note: 65
#sleep 0.5
#control s, note: 67
#sleep 3
#control s, note: 72

#loop do
  #if one_in(2)
    #sample :drum_heavy_kick
    #sleep 0.5
  #else
    #sample :drum_cymbal_closed
    #sleep 0.25
  #end
#end

#loop do
  #with_fx :echo, mix: 0.5, phase: 0.3, decay: 9 do
    #with_fx :reverb, mix: 0.5, room: 0.9, damp: 1, amp: 7 do
      ##play rrand(50, 100)
      #play choose([60, 65, 72]), release: 0.1, cutoff: rrand(60, 120), amp: 13
      ##sample :perc_bell, rate: (rrand 0.1, 1.5)
      #sleep 0.2
    #end
  #end
#end

