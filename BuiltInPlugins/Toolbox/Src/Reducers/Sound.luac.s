PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["currentSoundId"]
        2 GETTABLEKS                       R3 R1 K0 ["currentSoundId"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+12]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K1 ["shouldDebugWarnings"]
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+6]
       11 GETIMPORT                        R2 K3 [warn]
       13 LOADK                            R3 K4 ["Trying to play the same sound instead of resuming it. Current SoundId : "]
       14 GETTABLEKS                       R4 R1 K0 ["currentSoundId"]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K5 ["Dictionary"]
       20 GETTABLEKS                       R2 R3 K6 ["join"]
       22 MOVE                             R3 R0
       23 DUPTABLE                         R4 K8 [{"currentSoundId", "isPlaying"}]
       24 GETTABLEKS                       R5 R1 K0 ["currentSoundId"]
       26 SETTABLEKS                       R5 R4 K0 ["currentSoundId"]
       28 LOADB                            R5 1
       29 SETTABLEKS                       R5 R4 K7 ["isPlaying"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["isPlaying"]
        2 JUMPIF                           R2 ; [+14]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["shouldDebugWarnings"]
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+9]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Trying to pause a sound that is not playing! Current SoundId : %d"]
       11 GETTABLEKS                       R5 R0 K5 ["currentSoundId"]
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K7 ["Dictionary"]
       20 GETTABLEKS                       R2 R3 K8 ["join"]
       22 MOVE                             R3 R0
       23 DUPTABLE                         R4 K9 [{"isPlaying"}]
       24 LOADB                            R5 0
       25 SETTABLEKS                       R5 R4 K0 ["isPlaying"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["isPlaying"]
        2 JUMPIF                           R2 ; [+14]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["shouldDebugWarnings"]
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+9]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Trying to stop a sound that is not playing! Current SoundId : %d"]
       11 GETTABLEKS                       R5 R0 K5 ["currentSoundId"]
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K7 ["Dictionary"]
       20 GETTABLEKS                       R2 R3 K8 ["join"]
       22 MOVE                             R3 R0
       23 DUPTABLE                         R4 K10 [{"currentSoundId", "elapsedTime", "isPlaying"}]
       24 LOADN                            R5 0
       25 SETTABLEKS                       R5 R4 K5 ["currentSoundId"]
       27 LOADN                            R5 0
       28 SETTABLEKS                       R5 R4 K9 ["elapsedTime"]
       30 LOADB                            R5 0
       31 SETTABLEKS                       R5 R4 K0 ["isPlaying"]
       33 CALL                             R2 2 -1
       34 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["isPlaying"]
        2 JUMPIFNOT                        R2 ; [+14]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["shouldDebugWarnings"]
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+9]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Trying to resume a sound which is playing! Current SoundId : %d"]
       11 GETTABLEKS                       R5 R0 K5 ["currentSoundId"]
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K7 ["Dictionary"]
       20 GETTABLEKS                       R2 R3 K8 ["join"]
       22 MOVE                             R3 R0
       23 DUPTABLE                         R4 K9 [{"isPlaying"}]
       24 LOADB                            R5 1
       25 SETTABLEKS                       R5 R4 K0 ["isPlaying"]
       27 CALL                             R2 2 -1
       28 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"currentSoundId", "isPlaying"}]
        7 LOADN                            R5 0
        8 SETTABLEKS                       R5 R4 K2 ["currentSoundId"]
       10 LOADB                            R5 0
       11 SETTABLEKS                       R5 R4 K3 ["isPlaying"]
       13 CALL                             R2 2 -1
       14 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isLoading"}]
        7 GETTABLEKS                       R5 R1 K2 ["isLoading"]
        9 SETTABLEKS                       R5 R4 K2 ["isLoading"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"elapsedTime"}]
        7 GETTABLEKS                       R5 R1 K2 ["elapsedTime"]
        9 SETTABLEKS                       R5 R4 K2 ["elapsedTime"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R3 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K4 [{"elapsedTime", "totalTime"}]
        7 LOADN                            R5 0
        8 SETTABLEKS                       R5 R4 K2 ["elapsedTime"]
       10 GETTABLEKS                       R5 R1 K3 ["totalTime"]
       12 SETTABLEKS                       R5 R4 K3 ["totalTime"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R7 R0 K8 ["Src"]
       25 GETTABLEKS                       R6 R7 K9 ["Util"]
       27 GETTABLEKS                       R5 R6 K10 ["DebugFlags"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R8 R0 K8 ["Src"]
       34 GETTABLEKS                       R7 R8 K11 ["Actions"]
       36 GETTABLEKS                       R6 R7 K12 ["PlayPreviewSound"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R9 R0 K8 ["Src"]
       43 GETTABLEKS                       R8 R9 K11 ["Actions"]
       45 GETTABLEKS                       R7 R8 K13 ["PausePreviewSound"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R10 R0 K8 ["Src"]
       52 GETTABLEKS                       R9 R10 K11 ["Actions"]
       54 GETTABLEKS                       R8 R9 K14 ["StopPreviewSound"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R11 R0 K8 ["Src"]
       61 GETTABLEKS                       R10 R11 K11 ["Actions"]
       63 GETTABLEKS                       R9 R10 K15 ["ResumePreviewSound"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R12 R0 K8 ["Src"]
       70 GETTABLEKS                       R11 R12 K11 ["Actions"]
       72 GETTABLEKS                       R10 R11 K16 ["StopAllSounds"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R13 R0 K8 ["Src"]
       79 GETTABLEKS                       R12 R13 K11 ["Actions"]
       81 GETTABLEKS                       R11 R12 K17 ["SetSoundLoading"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K5 [require]
       86 GETTABLEKS                       R14 R0 K8 ["Src"]
       88 GETTABLEKS                       R13 R14 K11 ["Actions"]
       90 GETTABLEKS                       R12 R13 K18 ["SetSoundElapsedTime"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K5 [require]
       95 GETTABLEKS                       R15 R0 K8 ["Src"]
       97 GETTABLEKS                       R14 R15 K11 ["Actions"]
       99 GETTABLEKS                       R13 R14 K19 ["SetSoundTotalTime"]
      101 CALL                             R12 1 1
      102 GETTABLEKS                       R13 R3 K20 ["createReducer"]
      104 DUPTABLE                         R14 K26 [{"currentSoundId", "elapsedTime", "isPlaying", "isLoading", "totalTime"}]
      105 LOADN                            R15 0
      106 SETTABLEKS                       R15 R14 K21 ["currentSoundId"]
      108 LOADN                            R15 0
      109 SETTABLEKS                       R15 R14 K22 ["elapsedTime"]
      111 LOADB                            R15 0
      112 SETTABLEKS                       R15 R14 K23 ["isPlaying"]
      114 LOADB                            R15 0
      115 SETTABLEKS                       R15 R14 K24 ["isLoading"]
      117 LOADN                            R15 0
      118 SETTABLEKS                       R15 R14 K25 ["totalTime"]
      120 NEWTABLE                         R15 8 0
      122 GETTABLEKS                       R16 R5 K27 ["name"]
      124 DUPCLOSURE                       R17 K28 [PROTO_0]
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R2
      127 SETTABLE                         R17 R15 R16
      128 GETTABLEKS                       R16 R6 K27 ["name"]
      130 DUPCLOSURE                       R17 K29 [PROTO_1]
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R2
      133 SETTABLE                         R17 R15 R16
      134 GETTABLEKS                       R16 R7 K27 ["name"]
      136 DUPCLOSURE                       R17 K30 [PROTO_2]
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R2
      139 SETTABLE                         R17 R15 R16
      140 GETTABLEKS                       R16 R8 K27 ["name"]
      142 DUPCLOSURE                       R17 K31 [PROTO_3]
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R2
      145 SETTABLE                         R17 R15 R16
      146 GETTABLEKS                       R16 R9 K27 ["name"]
      148 DUPCLOSURE                       R17 K32 [PROTO_4]
      149 CAPTURE                          VAL R2
      150 SETTABLE                         R17 R15 R16
      151 GETTABLEKS                       R16 R10 K27 ["name"]
      153 DUPCLOSURE                       R17 K33 [PROTO_5]
      154 CAPTURE                          VAL R2
      155 SETTABLE                         R17 R15 R16
      156 GETTABLEKS                       R16 R11 K27 ["name"]
      158 DUPCLOSURE                       R17 K34 [PROTO_6]
      159 CAPTURE                          VAL R2
      160 SETTABLE                         R17 R15 R16
      161 GETTABLEKS                       R16 R12 K27 ["name"]
      163 DUPCLOSURE                       R17 K35 [PROTO_7]
      164 CAPTURE                          VAL R2
      165 SETTABLE                         R17 R15 R16
      166 CALL                             R13 2 -1
      167 RETURN                           R13 -1
