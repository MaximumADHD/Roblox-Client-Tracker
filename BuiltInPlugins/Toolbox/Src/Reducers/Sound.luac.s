PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["currentSoundId"]
        2 GETTABLEKS                       R3 R1 K0 ["currentSoundId"]
        4 JUMPIFNOTEQ                      R2 R3 ; [+12]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["shouldDebugWarnings"]
        9 CALL                             R2 0 1
       10 JUMPIFNOT                        R2 ; [+6]
       11 GETIMPORT                        R2 K3 [warn]
       13 LOADK                            R3 K4 ["Trying to play the same sound instead of resuming it. Current SoundId : "]
       14 GETTABLEKS                       R4 R1 K0 ["currentSoundId"]
       16 CALL                             R2 2 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K5 ["Dictionary"]
       20 GETTABLEKS                       R2 R2 K6 ["join"]
       22 MOVE                             R3 R0
       23 DUPTABLE                         R4 K9 [{[1], ["isPlaying"] = True}]
       24 GETTABLEKS                       R5 R1 K0 ["currentSoundId"]
       26 SETTABLEKS                       R5 R4 K0 ["currentSoundId"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["isPlaying"]
        2 JUMPIF                           R2 ; [+14]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["shouldDebugWarnings"]
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+9]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Trying to pause a sound that is not playing! Current SoundId : %d"]
       11 GETTABLEKS                       R5 R0 K5 ["currentSoundId"]
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K7 ["Dictionary"]
       20 GETTABLEKS                       R2 R2 K8 ["join"]
       22 MOVE                             R3 R0
       23 DUPTABLE                         R4 K10 [{[1] = False}]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["isPlaying"]
        2 JUMPIF                           R2 ; [+14]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["shouldDebugWarnings"]
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+9]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Trying to stop a sound that is not playing! Current SoundId : %d"]
       11 GETTABLEKS                       R5 R0 K5 ["currentSoundId"]
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K7 ["Dictionary"]
       20 GETTABLEKS                       R2 R2 K8 ["join"]
       22 MOVE                             R3 R0
       23 DUPTABLE                         R4 K12 [{["currentSoundId"] = 0, ["elapsedTime"] = 0, [3] = False}]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["isPlaying"]
        2 JUMPIFNOT                        R2 ; [+14]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K1 ["shouldDebugWarnings"]
        6 CALL                             R2 0 1
        7 JUMPIFNOT                        R2 ; [+9]
        8 GETIMPORT                        R2 K3 [warn]
       10 LOADK                            R3 K4 ["Trying to resume a sound which is playing! Current SoundId : %d"]
       11 GETTABLEKS                       R5 R0 K5 ["currentSoundId"]
       13 NAMECALL                         R3 R3 K6 ["format"]
       15 CALL                             R3 2 -1
       16 CALL                             R2 -1 0
       17 GETUPVAL                         R2 1
       18 GETTABLEKS                       R2 R2 K7 ["Dictionary"]
       20 GETTABLEKS                       R2 R2 K8 ["join"]
       22 MOVE                             R3 R0
       23 DUPTABLE                         R4 K10 [{[1] = True}]
       24 CALL                             R2 2 -1
       25 RETURN                           R2 -1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K6 [{["currentSoundId"] = 0, ["isPlaying"] = False}]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"isLoading"}]
        7 GETTABLEKS                       R5 R1 K2 ["isLoading"]
        9 SETTABLEKS                       R5 R4 K2 ["isLoading"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K3 [{"elapsedTime"}]
        7 GETTABLEKS                       R5 R1 K2 ["elapsedTime"]
        9 SETTABLEKS                       R5 R4 K2 ["elapsedTime"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Dictionary"]
        3 GETTABLEKS                       R2 R2 K1 ["join"]
        5 MOVE                             R3 R0
        6 DUPTABLE                         R4 K5 [{["elapsedTime"] = 0, ["totalTime"]}]
        7 GETTABLEKS                       R5 R1 K4 ["totalTime"]
        9 SETTABLEKS                       R5 R4 K4 ["totalTime"]
       11 CALL                             R2 2 -1
       12 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R2 K5 [require]
       13 GETTABLEKS                       R3 R1 K6 ["Cryo"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K5 [require]
       18 GETTABLEKS                       R4 R1 K7 ["Rodux"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Src"]
       25 GETTABLEKS                       R5 R5 K9 ["Util"]
       27 GETTABLEKS                       R5 R5 K10 ["DebugFlags"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K5 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Src"]
       34 GETTABLEKS                       R6 R6 K11 ["Actions"]
       36 GETTABLEKS                       R6 R6 K12 ["PlayPreviewSound"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K5 [require]
       41 GETTABLEKS                       R7 R0 K8 ["Src"]
       43 GETTABLEKS                       R7 R7 K11 ["Actions"]
       45 GETTABLEKS                       R7 R7 K13 ["PausePreviewSound"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K5 [require]
       50 GETTABLEKS                       R8 R0 K8 ["Src"]
       52 GETTABLEKS                       R8 R8 K11 ["Actions"]
       54 GETTABLEKS                       R8 R8 K14 ["StopPreviewSound"]
       56 CALL                             R7 1 1
       57 GETIMPORT                        R8 K5 [require]
       59 GETTABLEKS                       R9 R0 K8 ["Src"]
       61 GETTABLEKS                       R9 R9 K11 ["Actions"]
       63 GETTABLEKS                       R9 R9 K15 ["ResumePreviewSound"]
       65 CALL                             R8 1 1
       66 GETIMPORT                        R9 K5 [require]
       68 GETTABLEKS                       R10 R0 K8 ["Src"]
       70 GETTABLEKS                       R10 R10 K11 ["Actions"]
       72 GETTABLEKS                       R10 R10 K16 ["StopAllSounds"]
       74 CALL                             R9 1 1
       75 GETIMPORT                        R10 K5 [require]
       77 GETTABLEKS                       R11 R0 K8 ["Src"]
       79 GETTABLEKS                       R11 R11 K11 ["Actions"]
       81 GETTABLEKS                       R11 R11 K17 ["SetSoundLoading"]
       83 CALL                             R10 1 1
       84 GETIMPORT                        R11 K5 [require]
       86 GETTABLEKS                       R12 R0 K8 ["Src"]
       88 GETTABLEKS                       R12 R12 K11 ["Actions"]
       90 GETTABLEKS                       R12 R12 K18 ["SetSoundElapsedTime"]
       92 CALL                             R11 1 1
       93 GETIMPORT                        R12 K5 [require]
       95 GETTABLEKS                       R13 R0 K8 ["Src"]
       97 GETTABLEKS                       R13 R13 K11 ["Actions"]
       99 GETTABLEKS                       R13 R13 K19 ["SetSoundTotalTime"]
      101 CALL                             R12 1 1
      102 GETTABLEKS                       R13 R3 K20 ["createReducer"]
      104 DUPTABLE                         R14 K28 [{["currentSoundId"] = 0, ["elapsedTime"] = 0, ["isPlaying"] = False, ["isLoading"] = False, ["totalTime"] = 0}]
      105 NEWTABLE                         R15 8 0
      107 GETTABLEKS                       R16 R5 K29 ["name"]
      109 DUPCLOSURE                       R17 K30 [PROTO_0]
      110 CAPTURE                          VAL R4
      111 CAPTURE                          VAL R2
      112 SETTABLE                         R17 R15 R16
      113 GETTABLEKS                       R16 R6 K29 ["name"]
      115 DUPCLOSURE                       R17 K31 [PROTO_1]
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R2
      118 SETTABLE                         R17 R15 R16
      119 GETTABLEKS                       R16 R7 K29 ["name"]
      121 DUPCLOSURE                       R17 K32 [PROTO_2]
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R2
      124 SETTABLE                         R17 R15 R16
      125 GETTABLEKS                       R16 R8 K29 ["name"]
      127 DUPCLOSURE                       R17 K33 [PROTO_3]
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R2
      130 SETTABLE                         R17 R15 R16
      131 GETTABLEKS                       R16 R9 K29 ["name"]
      133 DUPCLOSURE                       R17 K34 [PROTO_4]
      134 CAPTURE                          VAL R2
      135 SETTABLE                         R17 R15 R16
      136 GETTABLEKS                       R16 R10 K29 ["name"]
      138 DUPCLOSURE                       R17 K35 [PROTO_5]
      139 CAPTURE                          VAL R2
      140 SETTABLE                         R17 R15 R16
      141 GETTABLEKS                       R16 R11 K29 ["name"]
      143 DUPCLOSURE                       R17 K36 [PROTO_6]
      144 CAPTURE                          VAL R2
      145 SETTABLE                         R17 R15 R16
      146 GETTABLEKS                       R16 R12 K29 ["name"]
      148 DUPCLOSURE                       R17 K37 [PROTO_7]
      149 CAPTURE                          VAL R2
      150 SETTABLE                         R17 R15 R16
      151 CALL                             R13 2 -1
      152 RETURN                           R13 -1
