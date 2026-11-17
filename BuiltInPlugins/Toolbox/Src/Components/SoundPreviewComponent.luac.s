PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["ref"]
        3 GETTABLEKS                       R2 R2 K1 ["current"]
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R2 K2 ["IsLoaded"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R4 R4 K3 ["props"]
       12 GETTABLEKS                       R4 R4 K4 ["isLoaded"]
       14 JUMPIFEQ                         R3 R4 ; [+10]
       16 GETUPVAL                         R3 0
       17 GETTABLEKS                       R3 R3 K3 ["props"]
       19 GETTABLEKS                       R3 R3 K5 ["setSoundLoaded"]
       21 GETTABLEKS                       R5 R2 K2 ["IsLoaded"]
       23 NOT                              R4 R5
       24 CALL                             R3 1 0
       25 JUMPIFNOTEQKS                    R1 K6 ["TimeLength"] ; [+19]
       27 GETTABLEKS                       R3 R2 K6 ["TimeLength"]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K3 ["props"]
       32 GETTABLEKS                       R4 R4 K7 ["totalTime"]
       34 JUMPIFEQ                         R3 R4 ; [+10]
       36 GETTABLEKS                       R3 R2 K6 ["TimeLength"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K3 ["props"]
       41 GETTABLEKS                       R4 R4 K8 ["setSoundTotalTime"]
       43 MOVE                             R5 R3
       44 CALL                             R4 1 0
       45 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ref"]
        3 GETTABLEKS                       R0 R0 K1 ["current"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["props"]
        8 GETTABLEKS                       R1 R1 K3 ["currentSoundId"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K2 ["props"]
       13 GETTABLEKS                       R2 R2 K4 ["isPlaying"]
       15 JUMPIF                           R0 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K5 ["lastSoundId"]
       20 JUMPIFEQKN                       R1 K6 [0] ; [+2]
       22 JUMPIF                           R2 ; [+7]
       23 GETTABLEKS                       R4 R0 K4 ["isPlaying"]
       25 JUMPIFNOT                        R4 ; [+26]
       26 LOADB                            R4 0
       27 SETTABLEKS                       R4 R0 K7 ["Playing"]
       29 RETURN                           R0 0
       30 JUMPIFNOTEQ                      R1 R3 ; [+5]
       32 LOADB                            R4 1
       33 SETTABLEKS                       R4 R0 K7 ["Playing"]
       35 RETURN                           R0 0
       36 LOADN                            R4 0
       37 SETTABLEKS                       R4 R0 K8 ["TimePosition"]
       39 LOADB                            R4 1
       40 SETTABLEKS                       R4 R0 K7 ["Playing"]
       42 GETUPVAL                         R4 1
       43 GETTABLEKS                       R4 R4 K9 ["constructAssetIdString"]
       45 MOVE                             R5 R1
       46 CALL                             R4 1 1
       47 SETTABLEKS                       R4 R0 K10 ["SoundId"]
       49 GETUPVAL                         R4 0
       50 SETTABLEKS                       R1 R4 K5 ["lastSoundId"]
       52 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["stopPreviewSound"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["ref"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K2 ["onSoundChange"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 CAPTURE                          UPVAL U1
       13 SETTABLEKS                       R1 R0 K3 ["updateSound"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K4 ["onSoundEnded"]
       19 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["ref"]
        3 GETTABLEKS                       R1 R1 K1 ["current"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["elapsedTime"]
       10 JUMPIFNOT                        R1 ; [+3]
       11 GETTABLEKS                       R3 R1 K4 ["Playing"]
       13 JUMPIF                           R3 ; [+1]
       14 RETURN                           R0 0
       15 ADD                              R3 R2 R0
       16 GETTABLEKS                       R4 R1 K5 ["TimeLength"]
       18 JUMPIFNOTLE                      R4 R3 ; [+2]
       20 MOVE                             R3 R4
       21 JUMPIFEQ                         R2 R3 ; [+8]
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K2 ["props"]
       26 GETTABLEKS                       R5 R5 K6 ["setSoundElapsedTime"]
       28 MOVE                             R6 R3
       29 CALL                             R5 1 0
       30 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["RenderStepped"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["runServiceConnection"]
       10 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["runServiceConnection"]
        2 JUMPIFNOT                        R1 ; [+8]
        3 GETTABLEKS                       R1 R0 K0 ["runServiceConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 LOADNIL                          R1
        9 SETTABLEKS                       R1 R0 K0 ["runServiceConnection"]
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Sound"]
        4 NEWTABLE                         R3 4 0
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K2 ["Ref"]
        9 GETTABLEKS                       R5 R0 K3 ["ref"]
       11 SETTABLE                         R5 R3 R4
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R4 R4 K4 ["Event"]
       15 GETTABLEKS                       R4 R4 K5 ["Ended"]
       17 GETTABLEKS                       R5 R0 K6 ["onSoundEnded"]
       19 SETTABLE                         R5 R3 R4
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K4 ["Event"]
       23 GETTABLEKS                       R4 R4 K7 ["Changed"]
       25 GETTABLEKS                       R5 R0 K8 ["onSoundChange"]
       27 SETTABLE                         R5 R3 R4
       28 GETIMPORT                        R4 K12 [Enum.UsageContext.Preview]
       30 SETTABLEKS                       R4 R3 K13 ["UsageContextPermission"]
       32 CALL                             R1 2 -1
       33 RETURN                           R1 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["updateSound"]
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_9:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["sound"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K4 [{"currentSoundId", "elapsedTime", "isPlaying"}]
       11 GETTABLEKS                       R5 R2 K1 ["currentSoundId"]
       13 ORK                              R4 R5 K5 [0]
       14 SETTABLEKS                       R4 R3 K1 ["currentSoundId"]
       16 GETTABLEKS                       R5 R2 K2 ["elapsedTime"]
       18 ORK                              R4 R5 K5 [0]
       19 SETTABLEKS                       R4 R3 K2 ["elapsedTime"]
       21 GETTABLEKS                       R5 R2 K3 ["isPlaying"]
       23 ORK                              R4 R5 K6 [False]
       24 SETTABLEKS                       R4 R3 K3 ["isPlaying"]
       26 RETURN                           R3 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_14:
        0 DUPTABLE                         R1 K4 [{"stopPreviewSound", "setSoundLoaded", "setSoundElapsedTime", "setSoundTotalTime"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["stopPreviewSound"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["setSoundLoaded"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["setSoundElapsedTime"]
       16 NEWCLOSURE                       R2 P3
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U3
       19 SETTABLEKS                       R2 R1 K3 ["setSoundTotalTime"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETTABLEKS                       R2 R1 K7 ["Packages"]
       17 GETIMPORT                        R3 K9 [require]
       19 GETTABLEKS                       R4 R2 K10 ["Roact"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K9 [require]
       24 GETTABLEKS                       R5 R2 K11 ["RoactRodux"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K9 [require]
       29 GETTABLEKS                       R6 R1 K12 ["Src"]
       31 GETTABLEKS                       R6 R6 K13 ["Util"]
       33 GETTABLEKS                       R6 R6 K14 ["Urls"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K9 [require]
       38 GETTABLEKS                       R7 R1 K12 ["Src"]
       40 GETTABLEKS                       R7 R7 K15 ["Actions"]
       42 GETTABLEKS                       R7 R7 K16 ["StopPreviewSound"]
       44 CALL                             R6 1 1
       45 GETIMPORT                        R7 K9 [require]
       47 GETTABLEKS                       R8 R1 K12 ["Src"]
       49 GETTABLEKS                       R8 R8 K15 ["Actions"]
       51 GETTABLEKS                       R8 R8 K17 ["SetSoundLoading"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K9 [require]
       56 GETTABLEKS                       R9 R1 K12 ["Src"]
       58 GETTABLEKS                       R9 R9 K15 ["Actions"]
       60 GETTABLEKS                       R9 R9 K18 ["SetSoundElapsedTime"]
       62 CALL                             R8 1 1
       63 GETIMPORT                        R9 K9 [require]
       65 GETTABLEKS                       R10 R1 K12 ["Src"]
       67 GETTABLEKS                       R10 R10 K15 ["Actions"]
       69 GETTABLEKS                       R10 R10 K19 ["SetSoundTotalTime"]
       71 CALL                             R9 1 1
       72 GETTABLEKS                       R10 R3 K20 ["Component"]
       74 LOADK                            R12 K21 ["SoundPreviewComponent"]
       75 NAMECALL                         R10 R10 K22 ["extend"]
       77 CALL                             R10 2 1
       78 DUPCLOSURE                       R11 K23 [PROTO_3]
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R5
       81 SETTABLEKS                       R11 R10 K24 ["init"]
       83 DUPCLOSURE                       R11 K25 [PROTO_5]
       84 CAPTURE                          VAL R0
       85 SETTABLEKS                       R11 R10 K26 ["didMount"]
       87 DUPCLOSURE                       R11 K27 [PROTO_6]
       88 SETTABLEKS                       R11 R10 K28 ["willUnmount"]
       90 DUPCLOSURE                       R11 K29 [PROTO_7]
       91 CAPTURE                          VAL R3
       92 SETTABLEKS                       R11 R10 K30 ["render"]
       94 DUPCLOSURE                       R11 K31 [PROTO_8]
       95 SETTABLEKS                       R11 R10 K32 ["didUpdate"]
       97 DUPCLOSURE                       R11 K33 [PROTO_9]
       98 DUPCLOSURE                       R12 K34 [PROTO_14]
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R7
      101 CAPTURE                          VAL R8
      102 CAPTURE                          VAL R9
      103 GETTABLEKS                       R13 R4 K35 ["connect"]
      105 MOVE                             R14 R11
      106 MOVE                             R15 R12
      107 CALL                             R13 2 1
      108 MOVE                             R14 R10
      109 CALL                             R13 1 -1
      110 RETURN                           R13 -1
