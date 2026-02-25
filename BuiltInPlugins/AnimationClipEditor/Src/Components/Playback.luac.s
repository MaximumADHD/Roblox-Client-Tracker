PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Playhead"]
        5 GETTABLEKS                       R2 R0 K2 ["PlaybackSpeed"]
        7 GETTABLEKS                       R3 R0 K3 ["PlaybackStartInfo"]
        9 LOADNIL                          R4
       10 GETUPVAL                         R5 1
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+23]
       13 LOADB                            R5 1
       14 GETTABLEKS                       R6 R0 K4 ["PlayState"]
       16 GETUPVAL                         R9 2
       17 GETTABLEKS                       R8 R9 K5 ["PLAY_STATE"]
       19 GETTABLEKS                       R7 R8 K6 ["Play"]
       21 JUMPIFEQ                         R6 R7 ; [+12]
       23 GETTABLEKS                       R6 R0 K4 ["PlayState"]
       25 GETUPVAL                         R9 2
       26 GETTABLEKS                       R8 R9 K5 ["PLAY_STATE"]
       28 GETTABLEKS                       R7 R8 K7 ["Reverse"]
       30 JUMPIFEQ                         R6 R7 ; [+2]
       32 LOADB                            R5 0 +1
       33 LOADB                            R5 1
       34 MOVE                             R4 R5
       35 JUMP                             ; [+11]
       36 GETTABLEKS                       R5 R0 K4 ["PlayState"]
       38 GETUPVAL                         R8 2
       39 GETTABLEKS                       R7 R8 K5 ["PLAY_STATE"]
       41 GETTABLEKS                       R6 R7 K8 ["Pause"]
       43 JUMPIFNOTEQ                      R5 R6 ; [+2]
       45 LOADB                            R4 0 +1
       46 LOADB                            R4 1
       47 JUMPIFNOT                        R4 ; [+146]
       48 GETTABLEKS                       R5 R0 K9 ["AnimationData"]
       50 JUMPIFEQKNIL                     R5 ; [+143]
       52 GETTABLEKS                       R6 R0 K9 ["AnimationData"]
       54 GETTABLEKS                       R5 R6 K10 ["Metadata"]
       56 GETTABLEKS                       R6 R5 K11 ["EndTick"]
       58 LOADN                            R7 0
       59 JUMPIFNOTLT                      R7 R6 ; [+125]
       61 GETIMPORT                        R6 K13 [tick]
       63 CALL                             R6 0 1
       64 GETTABLEKS                       R7 R5 K11 ["EndTick"]
       66 GETTABLEKS                       R8 R3 K14 ["startTime"]
       68 JUMPIF                           R8 ; [+46]
       69 MOVE                             R8 R1
       70 GETTABLEKS                       R9 R0 K4 ["PlayState"]
       72 GETUPVAL                         R12 2
       73 GETTABLEKS                       R11 R12 K5 ["PLAY_STATE"]
       75 GETTABLEKS                       R10 R11 K6 ["Play"]
       77 JUMPIFNOTEQ                      R9 R10 ; [+9]
       79 FASTCALL1                        MATH_FLOOR R7 ; [+3]
       80 MOVE                             R10 R7
       81 GETIMPORT                        R9 K17 [math.floor]
       83 CALL                             R9 1 1
       84 JUMPIFNOTLE                      R9 R8 ; [+2]
       86 LOADN                            R8 0
       87 GETTABLEKS                       R9 R0 K4 ["PlayState"]
       89 GETUPVAL                         R12 2
       90 GETTABLEKS                       R11 R12 K5 ["PLAY_STATE"]
       92 GETTABLEKS                       R10 R11 K7 ["Reverse"]
       94 JUMPIFNOTEQ                      R9 R10 ; [+10]
       96 LOADN                            R9 0
       97 JUMPIFNOTLE                      R8 R9 ; [+7]
       99 FASTCALL1                        MATH_FLOOR R7 ; [+3]
      100 MOVE                             R10 R7
      101 GETIMPORT                        R9 K17 [math.floor]
      103 CALL                             R9 1 1
      104 MOVE                             R8 R9
      105 DUPTABLE                         R9 K19 [{"startTime", "startPlayhead"}]
      106 SETTABLEKS                       R6 R9 K14 ["startTime"]
      108 SETTABLEKS                       R8 R9 K18 ["startPlayhead"]
      110 MOVE                             R3 R9
      111 GETTABLEKS                       R9 R0 K20 ["SetPlaybackStartInfo"]
      113 MOVE                             R10 R3
      114 CALL                             R9 1 0
      115 GETTABLEKS                       R10 R3 K14 ["startTime"]
      117 SUB                              R9 R6 R10
      118 MUL                              R8 R9 R2
      119 GETTABLEKS                       R9 R0 K4 ["PlayState"]
      121 GETUPVAL                         R12 2
      122 GETTABLEKS                       R11 R12 K5 ["PLAY_STATE"]
      124 GETTABLEKS                       R10 R11 K7 ["Reverse"]
      126 JUMPIFNOTEQ                      R9 R10 ; [+2]
      128 MINUS                            R8 R8
      129 GETTABLEKS                       R10 R3 K18 ["startPlayhead"]
      131 GETUPVAL                         R13 2
      132 GETTABLEKS                       R12 R13 K21 ["TICK_FREQUENCY"]
      134 MUL                              R11 R8 R12
      135 ADD                              R9 R10 R11
      136 GETTABLEKS                       R10 R5 K22 ["Looping"]
      138 JUMPIFNOT                        R10 ; [+2]
      139 MOD                              R9 R9 R7
      140 JUMP                             ; [+39]
      141 LOADN                            R12 0
      142 FASTCALL3                        MATH_CLAMP R9 R12 R7
      144 MOVE                             R11 R9
      145 MOVE                             R13 R7
      146 GETIMPORT                        R10 K24 [math.clamp]
      148 CALL                             R10 3 1
      149 MOVE                             R9 R10
      150 JUMPIFNOTEQ                      R9 R7 ; [+10]
      152 GETTABLEKS                       R10 R0 K4 ["PlayState"]
      154 GETUPVAL                         R13 2
      155 GETTABLEKS                       R12 R13 K5 ["PLAY_STATE"]
      157 GETTABLEKS                       R11 R12 K6 ["Play"]
      159 JUMPIFEQ                         R10 R11 ; [+12]
      161 JUMPIFNOTEQKN                    R9 K25 [0] ; [+18]
      163 GETTABLEKS                       R10 R0 K4 ["PlayState"]
      165 GETUPVAL                         R13 2
      166 GETTABLEKS                       R12 R13 K5 ["PLAY_STATE"]
      168 GETTABLEKS                       R11 R12 K7 ["Reverse"]
      170 JUMPIFNOTEQ                      R10 R11 ; [+9]
      172 GETTABLEKS                       R10 R0 K26 ["SetPlayState"]
      174 GETUPVAL                         R13 2
      175 GETTABLEKS                       R12 R13 K5 ["PLAY_STATE"]
      177 GETTABLEKS                       R11 R12 K8 ["Pause"]
      179 CALL                             R10 1 0
      180 GETTABLEKS                       R10 R0 K27 ["StepAnimation"]
      182 MOVE                             R11 R9
      183 CALL                             R10 1 0
      184 RETURN                           R0 0
      185 GETTABLEKS                       R6 R0 K26 ["SetPlayState"]
      187 GETUPVAL                         R9 2
      188 GETTABLEKS                       R8 R9 K5 ["PLAY_STATE"]
      190 GETTABLEKS                       R7 R8 K8 ["Pause"]
      192 CALL                             R6 1 0
      193 RETURN                           R0 0
      194 GETTABLEKS                       R5 R0 K20 ["SetPlaybackStartInfo"]
      196 NEWTABLE                         R6 0 0
      198 CALL                             R5 1 0
      199 RETURN                           R0 0

PROTO_1:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["StartTime"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["Heartbeat"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 CAPTURE                          UPVAL U2
       10 NAMECALL                         R1 R1 K2 ["Connect"]
       12 CALL                             R1 2 1
       13 SETTABLEKS                       R1 R0 K3 ["Stepped"]
       15 RETURN                           R0 0

PROTO_2:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["Stepped"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["Stepped"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K6 [{"AnimationData", "IsPlaying", "PlayState", "Playhead", "PlaybackSpeed", "PlaybackStartInfo"}]
        1 GETTABLEKS                       R2 R0 K0 ["AnimationData"]
        3 SETTABLEKS                       R2 R1 K0 ["AnimationData"]
        5 GETTABLEKS                       R3 R0 K7 ["Status"]
        7 GETTABLEKS                       R2 R3 K1 ["IsPlaying"]
        9 SETTABLEKS                       R2 R1 K1 ["IsPlaying"]
       11 GETTABLEKS                       R3 R0 K7 ["Status"]
       13 GETTABLEKS                       R2 R3 K2 ["PlayState"]
       15 SETTABLEKS                       R2 R1 K2 ["PlayState"]
       17 GETTABLEKS                       R3 R0 K7 ["Status"]
       19 GETTABLEKS                       R2 R3 K3 ["Playhead"]
       21 SETTABLEKS                       R2 R1 K3 ["Playhead"]
       23 GETTABLEKS                       R3 R0 K7 ["Status"]
       25 GETTABLEKS                       R2 R3 K4 ["PlaybackSpeed"]
       27 SETTABLEKS                       R2 R1 K4 ["PlaybackSpeed"]
       29 GETTABLEKS                       R3 R0 K7 ["Status"]
       31 GETTABLEKS                       R2 R3 K5 ["PlaybackStartInfo"]
       33 SETTABLEKS                       R2 R1 K5 ["PlaybackStartInfo"]
       35 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_8:
        0 DUPTABLE                         R1 K3 [{"StepAnimation", "SetPlaybackStartInfo", "SetPlayState"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["StepAnimation"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["SetPlaybackStartInfo"]
       11 NEWCLOSURE                       R2 P2
       12 CAPTURE                          VAL R0
       13 CAPTURE                          UPVAL U2
       14 SETTABLEKS                       R2 R1 K2 ["SetPlayState"]
       16 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["RoactRodux"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R7 R0 K9 ["Src"]
       25 GETTABLEKS                       R6 R7 K10 ["Thunks"]
       27 GETTABLEKS                       R5 R6 K11 ["Playback"]
       29 GETTABLEKS                       R4 R5 K12 ["StepAnimation"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K9 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Actions"]
       38 GETTABLEKS                       R5 R6 K14 ["SetPlayState"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K9 ["Src"]
       45 GETTABLEKS                       R7 R8 K13 ["Actions"]
       47 GETTABLEKS                       R6 R7 K15 ["SetPlaybackStartInfo"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K9 ["Src"]
       54 GETTABLEKS                       R8 R9 K16 ["Util"]
       56 GETTABLEKS                       R7 R8 K17 ["Constants"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R9 R0 K18 ["LuaFlags"]
       63 GETTABLEKS                       R8 R9 K19 ["GetFFlagFacialAnimationRecordingInStudio"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K21 [game]
       68 LOADK                            R10 K22 ["RunService"]
       69 NAMECALL                         R8 R8 K23 ["GetService"]
       71 CALL                             R8 2 1
       72 GETTABLEKS                       R9 R1 K24 ["PureComponent"]
       74 LOADK                            R11 K11 ["Playback"]
       75 NAMECALL                         R9 R9 K25 ["extend"]
       77 CALL                             R9 2 1
       78 DUPCLOSURE                       R10 K26 [PROTO_1]
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R6
       82 SETTABLEKS                       R10 R9 K27 ["didMount"]
       84 DUPCLOSURE                       R10 K28 [PROTO_2]
       85 SETTABLEKS                       R10 R9 K29 ["render"]
       87 DUPCLOSURE                       R10 K30 [PROTO_3]
       88 SETTABLEKS                       R10 R9 K31 ["willUnmount"]
       90 DUPCLOSURE                       R10 K32 [PROTO_4]
       91 DUPCLOSURE                       R11 K33 [PROTO_8]
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 GETTABLEKS                       R12 R2 K34 ["connect"]
       97 MOVE                             R13 R10
       98 MOVE                             R14 R11
       99 CALL                             R12 2 1
      100 MOVE                             R13 R9
      101 CALL                             R12 1 -1
      102 RETURN                           R12 -1
