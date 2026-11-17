PROTO_0:
        0 GETTABLE                         R2 R1 R0
        1 JUMPIFNOT                        R2 ; [+1]
        2 RETURN                           R1 1
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K0 ["getDestination"]
        7 MOVE                             R4 R2
        8 CALL                             R3 1 1
        9 JUMPIFEQKNIL                     R3 ; [+10]
       11 SETTABLE                         R3 R1 R2
       12 MOVE                             R2 R3
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R4 R4 K0 ["getDestination"]
       16 MOVE                             R5 R2
       17 CALL                             R4 1 1
       18 MOVE                             R3 R4
       19 JUMPBACK                         ; [-11]
       20 RETURN                           R1 1

PROTO_1:
        0 LENGTH                           R2 R0
        1 JUMPIFEQKN                       R2 K0 [0] ; [+4]
        3 LENGTH                           R2 R1
        4 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        6 LOADNIL                          R2
        7 RETURN                           R2 1
        8 LENGTH                           R3 R0
        9 GETTABLE                         R2 R0 R3
       10 GETTABLEN                        R3 R1 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K1 ["connectByWire"]
       14 MOVE                             R5 R2
       15 MOVE                             R6 R3
       16 CALL                             R4 2 -1
       17 RETURN                           R4 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Parent"]
        2 LOADNIL                          R2
        3 LOADK                            R5 K1 ["EchoSoundEffect"]
        4 NAMECALL                         R3 R0 K2 ["IsA"]
        6 CALL                             R3 2 1
        7 JUMPIFNOT                        R3 ; [+28]
        8 GETIMPORT                        R3 K5 [Instance.new]
       10 LOADK                            R4 K6 ["AudioEcho"]
       11 MOVE                             R5 R1
       12 CALL                             R3 2 1
       13 GETTABLEKS                       R4 R0 K7 ["DryLevel"]
       15 SETTABLEKS                       R4 R3 K7 ["DryLevel"]
       17 GETTABLEKS                       R4 R0 K8 ["WetLevel"]
       19 SETTABLEKS                       R4 R3 K8 ["WetLevel"]
       21 GETTABLEKS                       R4 R0 K9 ["Feedback"]
       23 SETTABLEKS                       R4 R3 K9 ["Feedback"]
       25 GETTABLEKS                       R4 R0 K10 ["Delay"]
       27 SETTABLEKS                       R4 R3 K11 ["DelayTime"]
       29 GETTABLEKS                       R5 R0 K12 ["Enabled"]
       31 NOT                              R4 R5
       32 SETTABLEKS                       R4 R3 K13 ["Bypass"]
       34 MOVE                             R2 R3
       35 JUMP                             ; [+242]
       36 LOADK                            R5 K14 ["ChorusSoundEffect"]
       37 NAMECALL                         R3 R0 K2 ["IsA"]
       39 CALL                             R3 2 1
       40 JUMPIFNOT                        R3 ; [+24]
       41 GETIMPORT                        R3 K5 [Instance.new]
       43 LOADK                            R4 K15 ["AudioChorus"]
       44 MOVE                             R5 R1
       45 CALL                             R3 2 1
       46 GETTABLEKS                       R4 R0 K16 ["Mix"]
       48 SETTABLEKS                       R4 R3 K16 ["Mix"]
       50 GETTABLEKS                       R4 R0 K17 ["Rate"]
       52 SETTABLEKS                       R4 R3 K17 ["Rate"]
       54 GETTABLEKS                       R4 R0 K18 ["Depth"]
       56 SETTABLEKS                       R4 R3 K18 ["Depth"]
       58 GETTABLEKS                       R5 R0 K12 ["Enabled"]
       60 NOT                              R4 R5
       61 SETTABLEKS                       R4 R3 K13 ["Bypass"]
       63 MOVE                             R2 R3
       64 JUMP                             ; [+213]
       65 LOADK                            R5 K19 ["FlangeSoundEffect"]
       66 NAMECALL                         R3 R0 K2 ["IsA"]
       68 CALL                             R3 2 1
       69 JUMPIFNOT                        R3 ; [+24]
       70 GETIMPORT                        R3 K5 [Instance.new]
       72 LOADK                            R4 K20 ["AudioFlanger"]
       73 MOVE                             R5 R1
       74 CALL                             R3 2 1
       75 GETTABLEKS                       R4 R0 K16 ["Mix"]
       77 SETTABLEKS                       R4 R3 K16 ["Mix"]
       79 GETTABLEKS                       R4 R0 K17 ["Rate"]
       81 SETTABLEKS                       R4 R3 K17 ["Rate"]
       83 GETTABLEKS                       R4 R0 K18 ["Depth"]
       85 SETTABLEKS                       R4 R3 K18 ["Depth"]
       87 GETTABLEKS                       R5 R0 K12 ["Enabled"]
       89 NOT                              R4 R5
       90 SETTABLEKS                       R4 R3 K13 ["Bypass"]
       92 MOVE                             R2 R3
       93 JUMP                             ; [+184]
       94 LOADK                            R5 K21 ["ReverbSoundEffect"]
       95 NAMECALL                         R3 R0 K2 ["IsA"]
       97 CALL                             R3 2 1
       98 JUMPIFNOT                        R3 ; [+32]
       99 GETIMPORT                        R3 K5 [Instance.new]
      101 LOADK                            R4 K22 ["AudioReverb"]
      102 MOVE                             R5 R1
      103 CALL                             R3 2 1
      104 GETTABLEKS                       R4 R0 K23 ["Diffusion"]
      106 SETTABLEKS                       R4 R3 K23 ["Diffusion"]
      108 GETTABLEKS                       R4 R0 K24 ["Density"]
      110 SETTABLEKS                       R4 R3 K24 ["Density"]
      112 GETTABLEKS                       R4 R0 K8 ["WetLevel"]
      114 SETTABLEKS                       R4 R3 K8 ["WetLevel"]
      116 GETTABLEKS                       R4 R0 K7 ["DryLevel"]
      118 SETTABLEKS                       R4 R3 K7 ["DryLevel"]
      120 GETTABLEKS                       R4 R0 K25 ["DecayTime"]
      122 SETTABLEKS                       R4 R3 K25 ["DecayTime"]
      124 GETTABLEKS                       R5 R0 K12 ["Enabled"]
      126 NOT                              R4 R5
      127 SETTABLEKS                       R4 R3 K13 ["Bypass"]
      129 MOVE                             R2 R3
      130 JUMP                             ; [+147]
      131 LOADK                            R5 K26 ["EqualizerSoundEffect"]
      132 NAMECALL                         R3 R0 K2 ["IsA"]
      134 CALL                             R3 2 1
      135 JUMPIFNOT                        R3 ; [+24]
      136 GETIMPORT                        R3 K5 [Instance.new]
      138 LOADK                            R4 K27 ["AudioEqualizer"]
      139 MOVE                             R5 R1
      140 CALL                             R3 2 1
      141 GETTABLEKS                       R4 R0 K28 ["LowGain"]
      143 SETTABLEKS                       R4 R3 K28 ["LowGain"]
      145 GETTABLEKS                       R4 R0 K29 ["MidGain"]
      147 SETTABLEKS                       R4 R3 K29 ["MidGain"]
      149 GETTABLEKS                       R4 R0 K30 ["HighGain"]
      151 SETTABLEKS                       R4 R3 K30 ["HighGain"]
      153 GETTABLEKS                       R5 R0 K12 ["Enabled"]
      155 NOT                              R4 R5
      156 SETTABLEKS                       R4 R3 K13 ["Bypass"]
      158 MOVE                             R2 R3
      159 JUMP                             ; [+118]
      160 LOADK                            R5 K31 ["CompressorSoundEffect"]
      161 NAMECALL                         R3 R0 K2 ["IsA"]
      163 CALL                             R3 2 1
      164 JUMPIFNOT                        R3 ; [+32]
      165 GETIMPORT                        R3 K5 [Instance.new]
      167 LOADK                            R4 K32 ["AudioCompressor"]
      168 MOVE                             R5 R1
      169 CALL                             R3 2 1
      170 GETTABLEKS                       R4 R0 K33 ["Threshold"]
      172 SETTABLEKS                       R4 R3 K33 ["Threshold"]
      174 GETTABLEKS                       R4 R0 K34 ["Ratio"]
      176 SETTABLEKS                       R4 R3 K34 ["Ratio"]
      178 GETTABLEKS                       R4 R0 K35 ["Attack"]
      180 SETTABLEKS                       R4 R3 K35 ["Attack"]
      182 GETTABLEKS                       R4 R0 K36 ["Release"]
      184 SETTABLEKS                       R4 R3 K36 ["Release"]
      186 GETTABLEKS                       R4 R0 K37 ["GainMakeup"]
      188 SETTABLEKS                       R4 R3 K38 ["MakeupGain"]
      190 GETTABLEKS                       R5 R0 K12 ["Enabled"]
      192 NOT                              R4 R5
      193 SETTABLEKS                       R4 R3 K13 ["Bypass"]
      195 MOVE                             R2 R3
      196 JUMP                             ; [+81]
      197 LOADK                            R5 K39 ["DistortionSoundEffect"]
      198 NAMECALL                         R3 R0 K2 ["IsA"]
      200 CALL                             R3 2 1
      201 JUMPIFNOT                        R3 ; [+16]
      202 GETIMPORT                        R3 K5 [Instance.new]
      204 LOADK                            R4 K40 ["AudioDistortion"]
      205 MOVE                             R5 R1
      206 CALL                             R3 2 1
      207 GETTABLEKS                       R4 R0 K41 ["Level"]
      209 SETTABLEKS                       R4 R3 K41 ["Level"]
      211 GETTABLEKS                       R5 R0 K12 ["Enabled"]
      213 NOT                              R4 R5
      214 SETTABLEKS                       R4 R3 K13 ["Bypass"]
      216 MOVE                             R2 R3
      217 JUMP                             ; [+60]
      218 LOADK                            R5 K42 ["PitchShiftSoundEffect"]
      219 NAMECALL                         R3 R0 K2 ["IsA"]
      221 CALL                             R3 2 1
      222 JUMPIFNOT                        R3 ; [+16]
      223 GETIMPORT                        R3 K5 [Instance.new]
      225 LOADK                            R4 K43 ["AudioPitchShifter"]
      226 MOVE                             R5 R1
      227 CALL                             R3 2 1
      228 GETTABLEKS                       R4 R0 K44 ["Octave"]
      230 SETTABLEKS                       R4 R3 K45 ["Pitch"]
      232 GETTABLEKS                       R5 R0 K12 ["Enabled"]
      234 NOT                              R4 R5
      235 SETTABLEKS                       R4 R3 K13 ["Bypass"]
      237 MOVE                             R2 R3
      238 JUMP                             ; [+39]
      239 LOADK                            R5 K46 ["TremoloSoundEffect"]
      240 NAMECALL                         R3 R0 K2 ["IsA"]
      242 CALL                             R3 2 1
      243 JUMPIFNOT                        R3 ; [+34]
      244 GETIMPORT                        R3 K5 [Instance.new]
      246 LOADK                            R4 K47 ["AudioFader"]
      247 MOVE                             R5 R1
      248 CALL                             R3 2 1
      249 LOADK                            R6 K48 ["Duty"]
      250 GETTABLEKS                       R7 R0 K48 ["Duty"]
      252 NAMECALL                         R4 R3 K49 ["SetAttribute"]
      254 CALL                             R4 3 0
      255 LOADK                            R6 K18 ["Depth"]
      256 GETTABLEKS                       R7 R0 K18 ["Depth"]
      258 NAMECALL                         R4 R3 K49 ["SetAttribute"]
      260 CALL                             R4 3 0
      261 LOADK                            R6 K50 ["Frequency"]
      262 GETTABLEKS                       R7 R0 K50 ["Frequency"]
      264 NAMECALL                         R4 R3 K49 ["SetAttribute"]
      266 CALL                             R4 3 0
      267 GETTABLEKS                       R5 R0 K12 ["Enabled"]
      269 NOT                              R4 R5
      270 SETTABLEKS                       R4 R3 K13 ["Bypass"]
      272 GETUPVAL                         R4 0
      273 GETTABLEKS                       R4 R4 K51 ["makeTremoloScript"]
      275 MOVE                             R5 R3
      276 CALL                             R4 1 0
      277 MOVE                             R2 R3
      278 NEWTABLE                         R3 0 1
      280 MOVE                             R4 R2
      281 SETLIST                          R3 R4 1 [1]
      283 RETURN                           R3 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Parent"]
        4 JUMPIFEQKNIL                     R2 ; [+9]
        6 LOADK                            R5 K1 ["SoundGroup"]
        7 NAMECALL                         R3 R2 K2 ["IsA"]
        9 CALL                             R3 2 1
       10 JUMPIFNOT                        R3 ; [+3]
       11 GETTABLEKS                       R2 R2 K0 ["Parent"]
       13 JUMPBACK                         ; [-10]
       14 GETIMPORT                        R3 K5 [Instance.new]
       16 LOADK                            R4 K6 ["AudioFader"]
       17 MOVE                             R5 R2
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R4 R0 K7 ["Volume"]
       21 SETTABLEKS                       R4 R3 K7 ["Volume"]
       23 GETTABLEKS                       R4 R0 K8 ["Name"]
       25 JUMPIFEQKS                       R4 K1 ["SoundGroup"] ; [+5]
       27 GETTABLEKS                       R4 R0 K8 ["Name"]
       29 SETTABLEKS                       R4 R3 K8 ["Name"]
       31 GETUPVAL                         R4 0
       32 GETTABLEKS                       R4 R4 K9 ["getEffects"]
       34 MOVE                             R5 R0
       35 CALL                             R4 1 1
       36 MOVE                             R5 R4
       37 LOADNIL                          R6
       38 LOADNIL                          R7
       39 FORGPREP                         R5
       40 GETUPVAL                         R10 1
       41 MOVE                             R11 R9
       42 CALL                             R10 1 1
       43 LENGTH                           R11 R1
       44 JUMPIFEQKN                       R11 K10 [0] ; [+14]
       46 LENGTH                           R11 R10
       47 JUMPIFNOTEQKN                    R11 K10 [0] ; [+2]
       49 JUMP                             ; [+9]
       50 LENGTH                           R12 R1
       51 GETTABLE                         R11 R1 R12
       52 GETTABLEN                        R12 R10 1
       53 GETUPVAL                         R13 2
       54 GETTABLEKS                       R13 R13 K11 ["connectByWire"]
       56 MOVE                             R14 R11
       57 MOVE                             R15 R12
       58 CALL                             R13 2 1
       59 MOVE                             R11 R10
       60 LOADNIL                          R12
       61 LOADNIL                          R13
       62 FORGPREP                         R11
       63 SETTABLEKS                       R3 R15 K0 ["Parent"]
       65 FASTCALL2                        TABLE_INSERT R1 R15 ; [+5]
       67 MOVE                             R17 R1
       68 MOVE                             R18 R15
       69 GETIMPORT                        R16 K14 [table.insert]
       71 CALL                             R16 2 0
       72 FORGLOOP                         R11 2 ; [-10]
       74 FORGLOOP                         R5 2 ; [-35]
       76 NEWTABLE                         R5 0 1
       78 MOVE                             R6 R3
       79 SETLIST                          R5 R6 1 [1]
       81 LENGTH                           R6 R1
       82 JUMPIFEQKN                       R6 K10 [0] ; [+14]
       84 LENGTH                           R6 R5
       85 JUMPIFNOTEQKN                    R6 K10 [0] ; [+2]
       87 JUMP                             ; [+9]
       88 LENGTH                           R7 R1
       89 GETTABLE                         R6 R1 R7
       90 GETTABLEN                        R7 R5 1
       91 GETUPVAL                         R8 2
       92 GETTABLEKS                       R8 R8 K11 ["connectByWire"]
       94 MOVE                             R9 R6
       95 MOVE                             R10 R7
       96 CALL                             R8 2 1
       97 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
       99 MOVE                             R6 R1
      100 MOVE                             R7 R3
      101 GETIMPORT                        R5 K14 [table.insert]
      103 CALL                             R5 2 0
      104 RETURN                           R1 1

PROTO_4:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["Parent"]
        4 GETIMPORT                        R3 K3 [Instance.new]
        6 LOADK                            R4 K4 ["AudioFader"]
        7 MOVE                             R5 R2
        8 CALL                             R3 2 1
        9 GETIMPORT                        R4 K3 [Instance.new]
       11 LOADK                            R5 K5 ["AudioPlayer"]
       12 MOVE                             R6 R3
       13 CALL                             R4 2 1
       14 FASTCALL2                        TABLE_INSERT R1 R4 ; [+5]
       16 MOVE                             R6 R1
       17 MOVE                             R7 R4
       18 GETIMPORT                        R5 K8 [table.insert]
       20 CALL                             R5 2 0
       21 GETTABLEKS                       R5 R0 K9 ["SoundId"]
       23 SETTABLEKS                       R5 R4 K10 ["Asset"]
       25 GETTABLEKS                       R5 R0 K11 ["PlaybackSpeed"]
       27 SETTABLEKS                       R5 R4 K11 ["PlaybackSpeed"]
       29 GETTABLEKS                       R5 R0 K12 ["Looped"]
       31 SETTABLEKS                       R5 R4 K13 ["Looping"]
       33 GETTABLEKS                       R5 R0 K14 ["TimePosition"]
       35 SETTABLEKS                       R5 R4 K14 ["TimePosition"]
       37 GETTABLEKS                       R5 R0 K15 ["Name"]
       39 JUMPIFEQKS                       R5 K16 ["Sound"] ; [+11]
       41 GETTABLEKS                       R5 R0 K15 ["Name"]
       43 SETTABLEKS                       R5 R4 K15 ["Name"]
       45 GETTABLEKS                       R6 R0 K15 ["Name"]
       47 LOADK                            R7 K17 [" Fader"]
       48 CONCAT                           R5 R6 R7
       49 SETTABLEKS                       R5 R3 K15 ["Name"]
       51 GETTABLEKS                       R5 R0 K18 ["Playing"]
       53 JUMPIFNOT                        R5 ; [+5]
       54 GETUPVAL                         R5 0
       55 GETTABLEKS                       R5 R5 K19 ["makeAutoplayScript"]
       57 MOVE                             R6 R4
       58 CALL                             R5 1 0
       59 GETTABLEKS                       R5 R0 K20 ["PlaybackRegionsEnabled"]
       61 JUMPIFNOT                        R5 ; [+8]
       62 GETTABLEKS                       R5 R0 K21 ["PlaybackRegion"]
       64 SETTABLEKS                       R5 R4 K21 ["PlaybackRegion"]
       66 GETTABLEKS                       R5 R0 K22 ["LoopRegion"]
       68 SETTABLEKS                       R5 R4 K22 ["LoopRegion"]
       70 GETUPVAL                         R5 0
       71 GETTABLEKS                       R5 R5 K23 ["getEffects"]
       73 MOVE                             R6 R0
       74 CALL                             R5 1 1
       75 MOVE                             R6 R5
       76 LOADNIL                          R7
       77 LOADNIL                          R8
       78 FORGPREP                         R6
       79 GETUPVAL                         R11 1
       80 MOVE                             R12 R10
       81 CALL                             R11 1 1
       82 LENGTH                           R12 R1
       83 JUMPIFEQKN                       R12 K24 [0] ; [+14]
       85 LENGTH                           R12 R11
       86 JUMPIFNOTEQKN                    R12 K24 [0] ; [+2]
       88 JUMP                             ; [+9]
       89 LENGTH                           R13 R1
       90 GETTABLE                         R12 R1 R13
       91 GETTABLEN                        R13 R11 1
       92 GETUPVAL                         R14 2
       93 GETTABLEKS                       R14 R14 K25 ["connectByWire"]
       95 MOVE                             R15 R12
       96 MOVE                             R16 R13
       97 CALL                             R14 2 1
       98 MOVE                             R12 R11
       99 LOADNIL                          R13
      100 LOADNIL                          R14
      101 FORGPREP                         R12
      102 SETTABLEKS                       R3 R16 K0 ["Parent"]
      104 FASTCALL2                        TABLE_INSERT R1 R16 ; [+5]
      106 MOVE                             R18 R1
      107 MOVE                             R19 R16
      108 GETIMPORT                        R17 K8 [table.insert]
      110 CALL                             R17 2 0
      111 FORGLOOP                         R12 2 ; [-10]
      113 FORGLOOP                         R6 2 ; [-35]
      115 GETTABLEKS                       R6 R0 K26 ["Volume"]
      117 SETTABLEKS                       R6 R3 K26 ["Volume"]
      119 NEWTABLE                         R6 0 1
      121 MOVE                             R7 R3
      122 SETLIST                          R6 R7 1 [1]
      124 LENGTH                           R7 R1
      125 JUMPIFEQKN                       R7 K24 [0] ; [+14]
      127 LENGTH                           R7 R6
      128 JUMPIFNOTEQKN                    R7 K24 [0] ; [+2]
      130 JUMP                             ; [+9]
      131 LENGTH                           R8 R1
      132 GETTABLE                         R7 R1 R8
      133 GETTABLEN                        R8 R6 1
      134 GETUPVAL                         R9 2
      135 GETTABLEKS                       R9 R9 K25 ["connectByWire"]
      137 MOVE                             R10 R7
      138 MOVE                             R11 R8
      139 CALL                             R9 2 1
      140 FASTCALL2                        TABLE_INSERT R1 R3 ; [+5]
      142 MOVE                             R7 R1
      143 MOVE                             R8 R3
      144 GETIMPORT                        R6 K8 [table.insert]
      146 CALL                             R6 2 0
      147 GETUPVAL                         R6 0
      148 GETTABLEKS                       R6 R6 K27 ["is3d"]
      150 MOVE                             R7 R0
      151 CALL                             R6 1 1
      152 JUMPIFNOT                        R6 ; [+120]
      153 GETIMPORT                        R6 K3 [Instance.new]
      155 LOADK                            R7 K28 ["AudioEmitter"]
      156 MOVE                             R8 R2
      157 CALL                             R6 2 1
      158 SETTABLEKS                       R6 R4 K0 ["Parent"]
      160 SETTABLEKS                       R6 R3 K0 ["Parent"]
      162 GETTABLEKS                       R7 R0 K15 ["Name"]
      164 JUMPIFEQKS                       R7 K16 ["Sound"] ; [+7]
      166 GETTABLEKS                       R8 R0 K15 ["Name"]
      168 LOADK                            R9 K29 [" Emitter"]
      169 CONCAT                           R7 R8 R9
      170 SETTABLEKS                       R7 R6 K15 ["Name"]
      172 GETUPVAL                         R9 0
      173 GETTABLEKS                       R9 R9 K30 ["serializeRolloffMode"]
      175 GETTABLEKS                       R10 R0 K31 ["RollOffMode"]
      177 GETTABLEKS                       R11 R0 K32 ["RollOffMinDistance"]
      179 GETTABLEKS                       R12 R0 K33 ["RollOffMaxDistance"]
      181 CALL                             R9 3 1
      182 NAMECALL                         R7 R6 K34 ["SetDistanceAttenuation"]
      184 CALL                             R7 2 0
      185 NEWTABLE                         R7 0 1
      187 MOVE                             R8 R6
      188 SETLIST                          R7 R8 1 [1]
      190 LENGTH                           R8 R1
      191 JUMPIFEQKN                       R8 K24 [0] ; [+14]
      193 LENGTH                           R8 R7
      194 JUMPIFNOTEQKN                    R8 K24 [0] ; [+2]
      196 JUMP                             ; [+9]
      197 LENGTH                           R9 R1
      198 GETTABLE                         R8 R1 R9
      199 GETTABLEN                        R9 R7 1
      200 GETUPVAL                         R10 2
      201 GETTABLEKS                       R10 R10 K25 ["connectByWire"]
      203 MOVE                             R11 R8
      204 MOVE                             R12 R9
      205 CALL                             R10 2 1
      206 FASTCALL2                        TABLE_INSERT R1 R6 ; [+5]
      208 MOVE                             R8 R1
      209 MOVE                             R9 R6
      210 GETIMPORT                        R7 K8 [table.insert]
      212 CALL                             R7 2 0
      213 GETUPVAL                         R7 0
      214 GETTABLEKS                       R7 R7 K35 ["getDestination"]
      216 MOVE                             R8 R0
      217 CALL                             R7 1 1
      218 JUMPIFNOT                        R7 ; [+3]
      219 GETTABLEKS                       R8 R7 K15 ["Name"]
      221 JUMP                             ; [+1]
      222 LOADK                            R8 K36 [""]
      223 GETIMPORT                        R9 K38 [workspace]
      225 MOVE                             R12 R8
      226 LOADK                            R13 K39 [" Listener"]
      227 CONCAT                           R11 R12 R13
      228 NAMECALL                         R9 R9 K40 ["FindFirstChild"]
      230 CALL                             R9 2 1
      231 JUMPIF                           R9 ; [+29]
      232 GETIMPORT                        R10 K3 [Instance.new]
      234 LOADK                            R11 K41 ["AudioListener"]
      235 GETIMPORT                        R12 K38 [workspace]
      237 CALL                             R10 2 1
      238 MOVE                             R9 R10
      239 FASTCALL2K                       ASSERT R9 K42 ; [+5]
      241 MOVE                             R11 R9
      242 LOADK                            R12 K42 ["audioListener was nil"]
      243 GETIMPORT                        R10 K44 [assert]
      245 CALL                             R10 2 0
      246 MOVE                             R11 R8
      247 LOADK                            R12 K39 [" Listener"]
      248 CONCAT                           R10 R11 R12
      249 SETTABLEKS                       R10 R9 K15 ["Name"]
      251 MOVE                             R11 R8
      252 LOADK                            R12 K45 [" Interactions"]
      253 CONCAT                           R10 R11 R12
      254 SETTABLEKS                       R10 R9 K46 ["AudioInteractionGroup"]
      256 GETUPVAL                         R10 0
      257 GETTABLEKS                       R10 R10 K47 ["makeListenerScript"]
      259 MOVE                             R11 R9
      260 CALL                             R10 1 0
      261 MOVE                             R11 R8
      262 LOADK                            R12 K45 [" Interactions"]
      263 CONCAT                           R10 R11 R12
      264 SETTABLEKS                       R10 R6 K46 ["AudioInteractionGroup"]
      266 FASTCALL2                        TABLE_INSERT R1 R9 ; [+5]
      268 MOVE                             R11 R1
      269 MOVE                             R12 R9
      270 GETIMPORT                        R10 K8 [table.insert]
      272 CALL                             R10 2 0
      273 RETURN                           R1 1

PROTO_5:
        0 LOADK                            R3 K0 ["AudioDeviceOutput"]
        1 NAMECALL                         R1 R0 K1 ["FindFirstChildWhichIsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+14]
        5 GETIMPORT                        R2 K4 [Instance.new]
        7 LOADK                            R3 K0 ["AudioDeviceOutput"]
        8 CALL                             R2 1 1
        9 MOVE                             R1 R2
       10 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       12 MOVE                             R3 R1
       13 LOADK                            R4 K5 ["output was nil"]
       14 GETIMPORT                        R2 K7 [assert]
       16 CALL                             R2 2 0
       17 SETTABLEKS                       R0 R1 K8 ["Parent"]
       19 FASTCALL2K                       ASSERT R1 K5 ; [+5]
       21 MOVE                             R3 R1
       22 LOADK                            R4 K5 ["output was nil"]
       23 GETIMPORT                        R2 K7 [assert]
       25 CALL                             R2 2 0
       26 NEWTABLE                         R2 0 1
       28 MOVE                             R3 R1
       29 SETLIST                          R2 R3 1 [1]
       31 RETURN                           R2 1

PROTO_6:
        0 LOADK                            R3 K0 ["Sound"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+4]
        5 GETUPVAL                         R1 0
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 RETURN                           R1 1
        9 LOADK                            R3 K2 ["SoundGroup"]
       10 NAMECALL                         R1 R0 K1 ["IsA"]
       12 CALL                             R1 2 1
       13 JUMPIFNOT                        R1 ; [+4]
       14 GETUPVAL                         R1 1
       15 MOVE                             R2 R0
       16 CALL                             R1 1 1
       17 RETURN                           R1 1
       18 LOADK                            R3 K3 ["SoundService"]
       19 NAMECALL                         R1 R0 K1 ["IsA"]
       21 CALL                             R1 2 1
       22 JUMPIFNOT                        R1 ; [+4]
       23 GETUPVAL                         R1 2
       24 MOVE                             R2 R0
       25 CALL                             R1 1 1
       26 RETURN                           R1 1
       27 NEWTABLE                         R1 0 0
       29 RETURN                           R1 1

PROTO_7:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 MOVE                             R8 R6
        8 MOVE                             R9 R1
        9 CALL                             R7 2 1
       10 MOVE                             R1 R7
       11 NAMECALL                         R7 R6 K0 ["GetChildren"]
       13 CALL                             R7 1 3
       14 FORGPREP                         R7
       15 GETUPVAL                         R12 0
       16 MOVE                             R13 R6
       17 MOVE                             R14 R1
       18 CALL                             R12 2 1
       19 MOVE                             R1 R12
       20 FORGLOOP                         R7 2 ; [-6]
       22 FORGLOOP                         R2 2 ; [-17]
       24 NEWTABLE                         R2 0 0
       26 MOVE                             R3 R1
       27 LOADNIL                          R4
       28 LOADNIL                          R5
       29 FORGPREP                         R3
       30 GETTABLE                         R8 R2 R6
       31 JUMPIF                           R8 ; [+4]
       32 GETUPVAL                         R8 1
       33 MOVE                             R9 R6
       34 CALL                             R8 1 1
       35 SETTABLE                         R8 R2 R6
       36 GETTABLE                         R8 R2 R7
       37 JUMPIF                           R8 ; [+4]
       38 GETUPVAL                         R8 1
       39 MOVE                             R9 R7
       40 CALL                             R8 1 1
       41 SETTABLE                         R8 R2 R7
       42 GETTABLE                         R8 R2 R6
       43 GETTABLE                         R9 R2 R7
       44 LENGTH                           R10 R8
       45 JUMPIFEQKN                       R10 K1 [0] ; [+14]
       47 LENGTH                           R10 R9
       48 JUMPIFNOTEQKN                    R10 K1 [0] ; [+2]
       50 JUMP                             ; [+9]
       51 LENGTH                           R11 R8
       52 GETTABLE                         R10 R8 R11
       53 GETTABLEN                        R11 R9 1
       54 GETUPVAL                         R12 2
       55 GETTABLEKS                       R12 R12 K2 ["connectByWire"]
       57 MOVE                             R13 R10
       58 MOVE                             R14 R11
       59 CALL                             R12 2 1
       60 FORGLOOP                         R3 2 ; [-31]
       62 MOVE                             R3 R0
       63 LOADNIL                          R4
       64 LOADNIL                          R5
       65 FORGPREP                         R3
       66 LOADK                            R10 K3 ["SoundEffect"]
       67 NAMECALL                         R8 R7 K4 ["IsA"]
       69 CALL                             R8 2 1
       70 JUMPIFNOT                        R8 ; [+11]
       71 GETTABLEKS                       R8 R7 K5 ["Parent"]
       73 JUMPIFNOT                        R8 ; [+4]
       74 GETTABLEKS                       R9 R7 K5 ["Parent"]
       76 GETTABLE                         R8 R1 R9
       77 JUMPIF                           R8 ; [+4]
       78 GETUPVAL                         R8 3
       79 MOVE                             R9 R7
       80 CALL                             R8 1 1
       81 SETTABLE                         R8 R2 R7
       82 FORGLOOP                         R3 2 ; [-17]
       84 NEWTABLE                         R3 0 0
       86 MOVE                             R4 R2
       87 LOADNIL                          R5
       88 LOADNIL                          R6
       89 FORGPREP                         R4
       90 MOVE                             R9 R8
       91 LOADNIL                          R10
       92 LOADNIL                          R11
       93 FORGPREP                         R9
       94 FASTCALL2                        TABLE_INSERT R3 R13 ; [+5]
       96 MOVE                             R15 R3
       97 MOVE                             R16 R13
       98 GETIMPORT                        R14 K8 [table.insert]
      100 CALL                             R14 2 0
      101 FORGLOOP                         R9 2 ; [-8]
      103 FORGLOOP                         R4 2 ; [-14]
      105 RETURN                           R3 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Migrate Sounds"]
        2 NAMECALL                         R0 R0 K1 ["TryBeginRecording"]
        4 CALL                             R0 2 1
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 2
        7 NAMECALL                         R2 R2 K2 ["Get"]
        9 CALL                             R2 1 -1
       10 CALL                             R1 -1 1
       11 LENGTH                           R3 R1
       12 LOADN                            R4 0
       13 JUMPIFLT                         R4 R3 ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 JUMPIFNOT                        R2 ; [+5]
       18 GETUPVAL                         R3 2
       19 MOVE                             R5 R1
       20 NAMECALL                         R3 R3 K3 ["Set"]
       22 CALL                             R3 2 0
       23 JUMPIFNOT                        R0 ; [+12]
       24 JUMPIFNOT                        R2 ; [+3]
       25 GETIMPORT                        R3 K7 [Enum.FinishRecordingOperation.Commit]
       27 JUMP                             ; [+2]
       28 GETIMPORT                        R3 K9 [Enum.FinishRecordingOperation.Cancel]
       30 GETUPVAL                         R4 0
       31 MOVE                             R6 R0
       32 MOVE                             R7 R3
       33 NAMECALL                         R4 R4 K10 ["FinishRecording"]
       35 CALL                             R4 3 0
       36 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R0 0
        1 GETUPVAL                         R1 0
        2 NAMECALL                         R1 R1 K0 ["Get"]
        4 CALL                             R1 1 3
        5 FORGPREP                         R1
        6 GETUPVAL                         R6 1
        7 GETTABLEKS                       R6 R6 K1 ["isSoundApi"]
        9 MOVE                             R7 R5
       10 CALL                             R6 1 1
       11 JUMPIFNOT                        R6 ; [+2]
       12 LOADB                            R0 1
       13 JUMP                             ; [+2]
       14 FORGLOOP                         R1 2 ; [-9]
       16 DUPTABLE                         R1 K11 [{["Uri"], ["Enabled"], ["Visible"] = True, ["Text"], ["Tooltip"], ["Icon"] = "Sound", ["Shortcuts"]}]
       17 DUPTABLE                         R2 K20 [{["DataModel"] = "Standalone", ["PluginId"] = "Audio", ["Category"] = "Actions", ["ItemId"] = "Migrate"}]
       18 SETTABLEKS                       R2 R1 K2 ["Uri"]
       20 SETTABLEKS                       R0 R1 K3 ["Enabled"]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R2 R2 K21 ["action"]
       25 LOADK                            R3 K22 ["MigrateSounds"]
       26 CALL                             R2 1 1
       27 SETTABLEKS                       R2 R1 K6 ["Text"]
       29 GETUPVAL                         R2 2
       30 GETTABLEKS                       R2 R2 K23 ["tooltip"]
       32 LOADK                            R3 K22 ["MigrateSounds"]
       33 CALL                             R2 1 1
       34 SETTABLEKS                       R2 R1 K7 ["Tooltip"]
       36 NEWTABLE                         R2 0 0
       38 SETTABLEKS                       R2 R1 K10 ["Shortcuts"]
       40 GETUPVAL                         R2 3
       41 JUMPIFNOT                        R2 ; [+6]
       42 GETUPVAL                         R2 3
       43 NAMECALL                         R2 R2 K24 ["Disconnect"]
       45 CALL                             R2 1 0
       46 LOADNIL                          R2
       47 SETUPVAL                         R2 3
       48 GETUPVAL                         R3 4
       49 MOVE                             R5 R1
       50 LOADB                            R6 1
       51 NAMECALL                         R3 R3 K25 ["CreateAsync"]
       53 CALL                             R3 3 1
       54 GETTABLEN                        R2 R3 1
       55 DUPCLOSURE                       R4 K26 [PROTO_9]
       56 CAPTURE                          UPVAL U5
       57 NAMECALL                         R2 R2 K27 ["Connect"]
       59 CALL                             R2 2 1
       60 SETUPVAL                         R2 3
       61 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R3 K0 ["Actions"]
        1 NAMECALL                         R1 R0 K1 ["GetPluginComponent"]
        3 CALL                             R1 2 1
        4 NEWCLOSURE                       R2 P0
        5 CAPTURE                          UPVAL U0
        6 CAPTURE                          UPVAL U1
        7 CAPTURE                          UPVAL U2
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U4
       11 MOVE                             R3 R2
       12 CALL                             R3 0 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K2 ["SelectionChanged"]
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          VAL R2
       18 NAMECALL                         R3 R3 K3 ["Connect"]
       20 CALL                             R3 2 1
       21 SETUPVAL                         R3 5
       22 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["Disconnect"]
        5 CALL                             R0 1 0
        6 LOADNIL                          R0
        7 SETUPVAL                         R0 0
        8 GETUPVAL                         R0 1
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETUPVAL                         R0 1
       11 NAMECALL                         R0 R0 K0 ["Disconnect"]
       13 CALL                             R0 1 0
       14 LOADNIL                          R0
       15 SETUPVAL                         R0 1
       16 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ChangeHistoryService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["Selection"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [script]
       15 LOADK                            R4 K7 ["AudioActions"]
       16 NAMECALL                         R2 R2 K8 ["FindFirstAncestor"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K10 [require]
       21 GETTABLEKS                       R4 R2 K11 ["Src"]
       23 GETTABLEKS                       R4 R4 K12 ["Util"]
       25 GETTABLEKS                       R4 R4 K13 ["LocalizationUtil"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K10 [require]
       30 GETTABLEKS                       R5 R2 K11 ["Src"]
       32 GETTABLEKS                       R5 R5 K12 ["Util"]
       34 GETTABLEKS                       R5 R5 K14 ["SoundUtil"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K10 [require]
       39 GETTABLEKS                       R6 R2 K11 ["Src"]
       41 GETTABLEKS                       R6 R6 K12 ["Util"]
       43 GETTABLEKS                       R6 R6 K15 ["WiringUtil"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K10 [require]
       48 GETTABLEKS                       R7 R2 K11 ["Src"]
       50 GETTABLEKS                       R7 R7 K16 ["Types"]
       52 CALL                             R6 1 1
       53 DUPCLOSURE                       R7 K17 [PROTO_0]
       54 CAPTURE                          VAL R4
       55 DUPCLOSURE                       R8 K18 [PROTO_1]
       56 CAPTURE                          VAL R5
       57 DUPCLOSURE                       R9 K19 [PROTO_2]
       58 CAPTURE                          VAL R4
       59 DUPCLOSURE                       R10 K20 [PROTO_3]
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R5
       63 DUPCLOSURE                       R11 K21 [PROTO_4]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R5
       67 DUPCLOSURE                       R12 K22 [PROTO_5]
       68 DUPCLOSURE                       R13 K23 [PROTO_6]
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R10
       71 CAPTURE                          VAL R12
       72 DUPCLOSURE                       R14 K24 [PROTO_7]
       73 CAPTURE                          VAL R7
       74 CAPTURE                          VAL R13
       75 CAPTURE                          VAL R5
       76 CAPTURE                          VAL R9
       77 DUPCLOSURE                       R15 K25 [PROTO_8]
       78 CAPTURE                          VAL R0
       79 CAPTURE                          VAL R14
       80 CAPTURE                          VAL R1
       81 LOADNIL                          R16
       82 LOADNIL                          R17
       83 NEWTABLE                         R18 2 0
       85 NEWCLOSURE                       R19 P9
       86 CAPTURE                          VAL R1
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R3
       89 CAPTURE                          REF R16
       90 CAPTURE                          VAL R15
       91 CAPTURE                          REF R17
       92 SETTABLEKS                       R19 R18 K26 ["register"]
       94 NEWCLOSURE                       R19 P10
       95 CAPTURE                          REF R17
       96 CAPTURE                          REF R16
       97 SETTABLEKS                       R19 R18 K27 ["deregister"]
       99 CLOSEUPVALS                      R16
      100 RETURN                           R18 1
