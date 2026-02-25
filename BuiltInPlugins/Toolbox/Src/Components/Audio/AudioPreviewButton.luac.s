PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["assetId"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["currentSoundId"]
       10 JUMPIFNOTEQ                      R1 R0 ; [+29]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["props"]
       15 GETTABLEKS                       R2 R3 K3 ["isPlaying"]
       17 JUMPIFNOT                        R2 ; [+11]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R3 R4 K0 ["props"]
       21 GETTABLEKS                       R2 R3 K4 ["pauseASound"]
       23 CALL                             R2 0 0
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K5 ["onSoundPausedCounter"]
       27 CALL                             R2 0 0
       28 RETURN                           R0 0
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R3 R4 K0 ["props"]
       32 GETTABLEKS                       R2 R3 K6 ["resumeASound"]
       34 CALL                             R2 0 0
       35 GETUPVAL                         R3 1
       36 GETTABLEKS                       R2 R3 K7 ["onSoundPlayedCounter"]
       38 CALL                             R2 0 0
       39 RETURN                           R0 0
       40 GETUPVAL                         R4 0
       41 GETTABLEKS                       R3 R4 K0 ["props"]
       43 GETTABLEKS                       R2 R3 K8 ["playASound"]
       45 MOVE                             R3 R0
       46 CALL                             R2 1 0
       47 GETUPVAL                         R3 1
       48 GETTABLEKS                       R2 R3 K7 ["onSoundPlayedCounter"]
       50 CALL                             R2 0 0
       51 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["onPreviewAudioButtonClicked"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["onPreviewAudioButtonClicked"]
        3 CALL                             R1 0 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETIMPORT                        R3 K4 [UDim2.new]
        6 LOADN                            R4 1
        7 LOADN                            R5 0
        8 LOADN                            R6 1
        9 LOADN                            R7 0
       10 CALL                             R3 4 1
       11 GETIMPORT                        R4 K4 [UDim2.new]
       13 LOADN                            R5 0
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K5 ["ASSET_PLAY_AUDIO_ICON_SIZE"]
       17 LOADN                            R7 0
       18 GETUPVAL                         R9 0
       19 GETTABLEKS                       R8 R9 K5 ["ASSET_PLAY_AUDIO_ICON_SIZE"]
       21 CALL                             R4 4 1
       22 GETTABLEKS                       R6 R1 K7 ["ZIndex"]
       24 ORK                              R5 R6 K6 [0]
       25 GETTABLEKS                       R6 R1 K8 ["assetId"]
       27 GETTABLEKS                       R7 R1 K9 ["isLoading"]
       29 GETTABLEKS                       R8 R1 K10 ["currentSoundId"]
       31 GETTABLEKS                       R9 R1 K11 ["isPlaying"]
       33 LOADB                            R10 0
       34 JUMPIFNOTEQ                      R8 R6 ; [+2]
       36 MOVE                             R10 R9
       37 JUMPIFNOT                        R10 ; [+4]
       38 GETUPVAL                         R12 1
       39 GETTABLEKS                       R11 R12 K12 ["AUDIO_PREVIEW_PAUSE"]
       41 JUMPIF                           R11 ; [+3]
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R11 R12 K13 ["AUDIO_PREVIEW_PLAY"]
       45 GETTABLEKS                       R13 R2 K14 ["asset"]
       47 GETTABLEKS                       R12 R13 K15 ["icon"]
       49 JUMPIFNOT                        R7 ; [+45]
       50 GETUPVAL                         R14 2
       51 GETTABLEKS                       R13 R14 K16 ["createElement"]
       53 GETUPVAL                         R14 3
       54 DUPTABLE                         R15 K20 [{"AnchorPoint", "Position", "Size"}]
       55 GETIMPORT                        R16 K22 [Vector2.new]
       57 LOADN                            R17 1
       58 LOADN                            R18 1
       59 CALL                             R16 2 1
       60 SETTABLEKS                       R16 R15 K17 ["AnchorPoint"]
       62 GETIMPORT                        R16 K4 [UDim2.new]
       64 GETTABLEKS                       R17 R3 K23 ["X"]
       66 GETIMPORT                        R18 K25 [UDim.new]
       68 GETTABLEKS                       R20 R3 K26 ["Y"]
       70 GETTABLEKS                       R19 R20 K27 ["Scale"]
       72 GETTABLEKS                       R22 R3 K26 ["Y"]
       74 GETTABLEKS                       R21 R22 K29 ["Offset"]
       76 SUBK                             R20 R21 K28 [5]
       77 CALL                             R18 2 -1
       78 CALL                             R16 -1 1
       79 SETTABLEKS                       R16 R15 K18 ["Position"]
       81 GETIMPORT                        R16 K4 [UDim2.new]
       83 GETTABLEKS                       R17 R4 K23 ["X"]
       85 GETIMPORT                        R18 K25 [UDim.new]
       87 LOADN                            R19 0
       88 LOADN                            R20 10
       89 CALL                             R18 2 -1
       90 CALL                             R16 -1 1
       91 SETTABLEKS                       R16 R15 K19 ["Size"]
       93 CALL                             R13 2 -1
       94 RETURN                           R13 -1
       95 GETUPVAL                         R14 2
       96 GETTABLEKS                       R13 R14 K16 ["createElement"]
       98 LOADK                            R14 K30 ["ImageButton"]
       99 NEWTABLE                         R15 8 0
      101 GETIMPORT                        R16 K22 [Vector2.new]
      103 LOADN                            R17 1
      104 LOADN                            R18 1
      105 CALL                             R16 2 1
      106 SETTABLEKS                       R16 R15 K17 ["AnchorPoint"]
      108 SETTABLEKS                       R3 R15 K18 ["Position"]
      110 SETTABLEKS                       R4 R15 K19 ["Size"]
      112 SETTABLEKS                       R5 R15 K7 ["ZIndex"]
      114 SETTABLEKS                       R11 R15 K31 ["Image"]
      116 GETTABLEKS                       R16 R12 K32 ["buttonColor"]
      118 SETTABLEKS                       R16 R15 K33 ["ImageColor3"]
      120 LOADN                            R16 1
      121 SETTABLEKS                       R16 R15 K34 ["BackgroundTransparency"]
      123 GETUPVAL                         R18 2
      124 GETTABLEKS                       R17 R18 K35 ["Event"]
      126 GETTABLEKS                       R16 R17 K36 ["MouseButton1Click"]
      128 NEWCLOSURE                       R17 P0
      129 CAPTURE                          VAL R0
      130 SETTABLE                         R17 R15 R16
      131 CALL                             R13 2 -1
      132 RETURN                           R13 -1

PROTO_4:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R0 R2
        5 GETTABLEKS                       R2 R0 K0 ["sound"]
        7 JUMPIF                           R2 ; [+2]
        8 NEWTABLE                         R2 0 0
       10 DUPTABLE                         R3 K2 [{"isPlaying"}]
       11 GETTABLEKS                       R5 R2 K1 ["isPlaying"]
       13 ORK                              R4 R5 K3 [False]
       14 SETTABLEKS                       R4 R3 K1 ["isPlaying"]
       16 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K3 [{"pauseASound", "playASound", "resumeASound"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["pauseASound"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["playASound"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["resumeASound"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R5 R1 K9 ["RoactRodux"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R6 R3 K10 ["UI"]
       26 GETTABLEKS                       R5 R6 K11 ["LoadingIndicator"]
       28 GETIMPORT                        R6 K6 [require]
       30 GETTABLEKS                       R9 R0 K12 ["Src"]
       32 GETTABLEKS                       R8 R9 K13 ["Util"]
       34 GETTABLEKS                       R7 R8 K14 ["Images"]
       36 CALL                             R6 1 1
       37 GETIMPORT                        R7 K6 [require]
       39 GETTABLEKS                       R10 R0 K12 ["Src"]
       41 GETTABLEKS                       R9 R10 K13 ["Util"]
       43 GETTABLEKS                       R8 R9 K15 ["Constants"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R3 K16 ["ContextServices"]
       48 GETTABLEKS                       R9 R8 K17 ["withContext"]
       50 GETIMPORT                        R10 K6 [require]
       52 GETTABLEKS                       R14 R0 K12 ["Src"]
       54 GETTABLEKS                       R13 R14 K13 ["Util"]
       56 GETTABLEKS                       R12 R13 K18 ["Analytics"]
       58 GETTABLEKS                       R11 R12 K18 ["Analytics"]
       60 CALL                             R10 1 1
       61 GETTABLEKS                       R12 R0 K12 ["Src"]
       63 GETTABLEKS                       R11 R12 K19 ["Actions"]
       65 GETIMPORT                        R12 K6 [require]
       67 GETTABLEKS                       R13 R11 K20 ["PlayPreviewSound"]
       69 CALL                             R12 1 1
       70 GETIMPORT                        R13 K6 [require]
       72 GETTABLEKS                       R14 R11 K21 ["PausePreviewSound"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K6 [require]
       77 GETTABLEKS                       R15 R11 K22 ["ResumePreviewSound"]
       79 CALL                             R14 1 1
       80 GETTABLEKS                       R15 R2 K23 ["PureComponent"]
       82 LOADK                            R17 K24 ["AudioPreviewButton"]
       83 NAMECALL                         R15 R15 K25 ["extend"]
       85 CALL                             R15 2 1
       86 DUPCLOSURE                       R16 K26 [PROTO_1]
       87 CAPTURE                          VAL R10
       88 SETTABLEKS                       R16 R15 K27 ["init"]
       90 DUPCLOSURE                       R16 K28 [PROTO_3]
       91 CAPTURE                          VAL R7
       92 CAPTURE                          VAL R6
       93 CAPTURE                          VAL R2
       94 CAPTURE                          VAL R5
       95 SETTABLEKS                       R16 R15 K29 ["render"]
       97 MOVE                             R16 R9
       98 DUPTABLE                         R17 K31 [{"Stylizer"}]
       99 GETTABLEKS                       R18 R8 K30 ["Stylizer"]
      101 SETTABLEKS                       R18 R17 K30 ["Stylizer"]
      103 CALL                             R16 1 1
      104 MOVE                             R17 R15
      105 CALL                             R16 1 1
      106 MOVE                             R15 R16
      107 DUPCLOSURE                       R16 K32 [PROTO_4]
      108 DUPCLOSURE                       R17 K33 [PROTO_8]
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R14
      112 GETTABLEKS                       R18 R4 K34 ["connect"]
      114 MOVE                             R19 R16
      115 MOVE                             R20 R17
      116 CALL                             R18 2 1
      117 MOVE                             R19 R15
      118 CALL                             R18 1 -1
      119 RETURN                           R18 -1
