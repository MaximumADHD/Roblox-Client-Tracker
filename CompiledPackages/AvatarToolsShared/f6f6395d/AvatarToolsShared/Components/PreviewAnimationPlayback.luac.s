PROTO_0:
        0 DUPTABLE                         R1 K5 [{[1] = 0, ["trackLength"] = 0, ["isPlaying"] = False}]
        1 SETTABLEKS                       R1 R0 K6 ["state"]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K7 ["tracks"]
        7 NEWTABLE                         R1 0 0
        9 SETTABLEKS                       R1 R0 K8 ["animations"]
       11 LOADNIL                          R1
       12 SETTABLEKS                       R1 R0 K9 ["previousAnimationURL"]
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K10 ["previousPreviewAvatars"]
       17 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [next]
        2 GETTABLEKS                       R3 R0 K2 ["tracks"]
        4 CALL                             R2 1 2
        5 JUMPIFNOT                        R3 ; [+10]
        6 GETTABLEKS                       R6 R0 K3 ["StartTime"]
        8 SUB                              R5 R1 R6
        9 GETTABLEKS                       R6 R3 K4 ["Length"]
       11 JUMPIFLT                         R6 R5 ; [+2]
       13 LOADB                            R4 0 +1
       14 LOADB                            R4 1
       15 RETURN                           R4 1
       16 LOADB                            R4 0
       17 RETURN                           R4 1

PROTO_2:
        0 JUMPIF                           R2 ; [+6]
        1 DUPTABLE                         R5 K1 [{"playhead"}]
        2 SETTABLEKS                       R1 R5 K0 ["playhead"]
        4 NAMECALL                         R3 R0 K2 ["setState"]
        6 CALL                             R3 2 0
        7 GETTABLEKS                       R3 R0 K3 ["props"]
        9 GETTABLEKS                       R3 R3 K4 ["OnPlayheadChanged"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_3:
        0 JUMPIF                           R2 ; [+6]
        1 DUPTABLE                         R5 K1 [{"trackLength"}]
        2 SETTABLEKS                       R1 R5 K0 ["trackLength"]
        4 NAMECALL                         R3 R0 K2 ["setState"]
        6 CALL                             R3 2 0
        7 GETTABLEKS                       R3 R0 K3 ["props"]
        9 GETTABLEKS                       R3 R3 K4 ["OnTrackLengthChanged"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 JUMPIF                           R2 ; [+6]
        1 DUPTABLE                         R5 K1 [{"isPlaying"}]
        2 SETTABLEKS                       R1 R5 K0 ["isPlaying"]
        4 NAMECALL                         R3 R0 K2 ["setState"]
        6 CALL                             R3 2 0
        7 GETTABLEKS                       R3 R0 K3 ["props"]
        9 GETTABLEKS                       R3 R3 K4 ["OnIsPlayingChanged"]
       11 MOVE                             R4 R1
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["state"]
        6 GETTABLEKS                       R2 R1 K2 ["playhead"]
        8 GETIMPORT                        R3 K4 [next]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K5 ["tracks"]
       13 CALL                             R3 1 2
       14 GETTABLEKS                       R5 R1 K6 ["isPlaying"]
       16 JUMPIFNOT                        R5 ; [+83]
       17 JUMPIFNOT                        R4 ; [+82]
       18 GETTABLEKS                       R5 R4 K7 ["Length"]
       20 LOADN                            R6 0
       21 JUMPIFNOTLT                      R6 R5 ; [+78]
       23 GETTABLEKS                       R5 R4 K7 ["Length"]
       25 GETTABLEKS                       R6 R1 K8 ["trackLength"]
       27 JUMPIFEQ                         R5 R6 ; [+16]
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R6 R4 K7 ["Length"]
       32 DUPTABLE                         R9 K9 [{"trackLength"}]
       33 SETTABLEKS                       R6 R9 K8 ["trackLength"]
       35 NAMECALL                         R7 R5 K10 ["setState"]
       37 CALL                             R7 2 0
       38 GETTABLEKS                       R7 R5 K0 ["props"]
       40 GETTABLEKS                       R7 R7 K11 ["OnTrackLengthChanged"]
       42 MOVE                             R8 R6
       43 CALL                             R7 1 0
       44 GETIMPORT                        R5 K13 [tick]
       46 CALL                             R5 0 1
       47 GETUPVAL                         R6 0
       48 GETTABLEKS                       R6 R6 K14 ["StartTime"]
       50 JUMPIF                           R6 ; [+4]
       51 GETUPVAL                         R6 0
       52 SUB                              R7 R5 R2
       53 SETTABLEKS                       R7 R6 K14 ["StartTime"]
       55 GETUPVAL                         R7 0
       56 GETIMPORT                        R8 K4 [next]
       58 GETTABLEKS                       R9 R7 K5 ["tracks"]
       60 CALL                             R8 1 2
       61 JUMPIFNOT                        R9 ; [+10]
       62 GETTABLEKS                       R11 R7 K14 ["StartTime"]
       64 SUB                              R10 R5 R11
       65 GETTABLEKS                       R11 R9 K7 ["Length"]
       67 JUMPIFLT                         R11 R10 ; [+2]
       69 LOADB                            R6 0 +1
       70 LOADB                            R6 1
       71 JUMP                             ; [+1]
       72 LOADB                            R6 0
       73 JUMPIFNOT                        R6 ; [+8]
       74 GETUPVAL                         R6 0
       75 GETTABLEKS                       R7 R6 K14 ["StartTime"]
       77 GETTABLEKS                       R8 R4 K7 ["Length"]
       79 ADD                              R7 R7 R8
       80 SETTABLEKS                       R7 R6 K14 ["StartTime"]
       82 GETUPVAL                         R7 0
       83 GETTABLEKS                       R7 R7 K14 ["StartTime"]
       85 SUB                              R6 R5 R7
       86 GETUPVAL                         R7 0
       87 DUPTABLE                         R10 K15 [{"playhead"}]
       88 SETTABLEKS                       R6 R10 K2 ["playhead"]
       90 NAMECALL                         R8 R7 K10 ["setState"]
       92 CALL                             R8 2 0
       93 GETTABLEKS                       R8 R7 K0 ["props"]
       95 GETTABLEKS                       R8 R8 K16 ["OnPlayheadChanged"]
       97 MOVE                             R9 R6
       98 CALL                             R8 1 0
       99 RETURN                           R0 0
      100 GETUPVAL                         R5 0
      101 GETTABLEKS                       R5 R5 K14 ["StartTime"]
      103 JUMPIFEQKNIL                     R5 ; [+5]
      105 GETUPVAL                         R5 0
      106 LOADNIL                          R6
      107 SETTABLEKS                       R6 R5 K14 ["StartTime"]
      109 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Heartbeat"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 NAMECALL                         R1 R1 K1 ["Connect"]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R1 R0 K2 ["Stepped"]
       10 RETURN                           R0 0

PROTO_7:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 LOADK                            R3 K0 ["Humanoid"]
        4 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
        6 CALL                             R1 2 1
        7 JUMPIF                           R1 ; [+4]
        8 LOADK                            R3 K2 ["AnimationController"]
        9 NAMECALL                         R1 R0 K1 ["FindFirstChildOfClass"]
       11 CALL                             R1 2 1
       12 MOVE                             R2 R1
       13 JUMPIFNOT                        R2 ; [+4]
       14 LOADK                            R4 K3 ["Animator"]
       15 NAMECALL                         R2 R1 K1 ["FindFirstChildOfClass"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+1]
       19 RETURN                           R2 1
       20 GETIMPORT                        R3 K6 [Instance.new]
       22 LOADK                            R4 K3 ["Animator"]
       23 MOVE                             R5 R1
       24 CALL                             R3 2 -1
       25 RETURN                           R3 -1

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["PreviewAvatars"]
        6 GETIMPORT                        R4 K4 [ipairs]
        8 MOVE                             R5 R3
        9 CALL                             R4 1 3
       10 FORGPREP_INEXT                   R4
       11 GETTABLEKS                       R9 R8 K5 ["model"]
       13 GETUPVAL                         R10 0
       14 MOVE                             R11 R9
       15 CALL                             R10 1 1
       16 JUMPIFNOT                        R10 ; [+19]
       17 GETTABLEKS                       R12 R0 K6 ["tracks"]
       19 GETTABLE                         R11 R12 R9
       20 JUMPIFNOT                        R11 ; [+15]
       21 GETTABLEKS                       R12 R0 K6 ["tracks"]
       23 GETTABLE                         R11 R12 R9
       24 NAMECALL                         R11 R11 K7 ["Play"]
       26 CALL                             R11 1 0
       27 LOADN                            R13 0
       28 NAMECALL                         R11 R10 K8 ["StepAnimations"]
       30 CALL                             R11 2 0
       31 GETTABLEKS                       R13 R2 K9 ["playhead"]
       33 NAMECALL                         R11 R10 K8 ["StepAnimations"]
       35 CALL                             R11 2 0
       36 FORGLOOP                         R4 2 [inext] ; [-26]
       38 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R2 K1 [pairs]
        2 GETTABLEKS                       R3 R0 K2 ["tracks"]
        4 CALL                             R2 1 3
        5 FORGPREP_NEXT                    R2
        6 LOADN                            R9 0
        7 NAMECALL                         R7 R6 K3 ["Stop"]
        9 CALL                             R7 2 0
       10 NAMECALL                         R7 R6 K4 ["Destroy"]
       12 CALL                             R7 1 0
       13 FORGLOOP                         R2 2 ; [-8]
       15 NEWTABLE                         R2 0 0
       17 SETTABLEKS                       R2 R0 K2 ["tracks"]
       19 GETTABLEKS                       R2 R0 K5 ["props"]
       21 GETTABLEKS                       R2 R2 K6 ["PreviewAvatars"]
       23 GETIMPORT                        R3 K8 [ipairs]
       25 MOVE                             R4 R2
       26 CALL                             R3 1 3
       27 FORGPREP_INEXT                   R3
       28 GETTABLEKS                       R8 R7 K9 ["model"]
       30 GETUPVAL                         R9 0
       31 MOVE                             R10 R8
       32 CALL                             R9 1 1
       33 JUMPIFNOT                        R9 ; [+4]
       34 LOADN                            R12 0
       35 NAMECALL                         R10 R9 K10 ["StepAnimations"]
       37 CALL                             R10 2 0
       38 JUMPIFNOT                        R8 ; [+22]
       39 GETIMPORT                        R10 K1 [pairs]
       41 NAMECALL                         R11 R8 K11 ["GetDescendants"]
       43 CALL                             R11 1 -1
       44 CALL                             R10 -1 3
       45 FORGPREP_NEXT                    R10
       46 LOADK                            R17 K12 ["Motor6D"]
       47 NAMECALL                         R15 R14 K13 ["IsA"]
       49 CALL                             R15 2 1
       50 JUMPIFNOT                        R15 ; [+8]
       51 LOADN                            R15 0
       52 SETTABLEKS                       R15 R14 K14 ["CurrentAngle"]
       54 GETIMPORT                        R15 K17 [CFrame.new]
       56 CALL                             R15 0 1
       57 SETTABLEKS                       R15 R14 K18 ["Transform"]
       59 FORGLOOP                         R10 2 ; [-14]
       61 FORGLOOP                         R3 2 [inext] ; [-34]
       63 GETIMPORT                        R3 K1 [pairs]
       65 GETTABLEKS                       R4 R0 K19 ["animations"]
       67 CALL                             R3 1 3
       68 FORGPREP_NEXT                    R3
       69 NAMECALL                         R8 R7 K4 ["Destroy"]
       71 CALL                             R8 1 0
       72 FORGLOOP                         R3 2 ; [-4]
       74 NEWTABLE                         R3 0 0
       76 SETTABLEKS                       R3 R0 K19 ["animations"]
       78 LOADNIL                          R3
       79 SETTABLEKS                       R3 R0 K20 ["StartTime"]
       81 JUMPIF                           R1 ; [+4]
       82 DUPTABLE                         R5 K23 [{["trackLength"] = 0}]
       83 NAMECALL                         R3 R0 K24 ["setState"]
       85 CALL                             R3 2 0
       86 GETTABLEKS                       R3 R0 K5 ["props"]
       88 GETTABLEKS                       R3 R3 K25 ["OnTrackLengthChanged"]
       90 LOADN                            R4 0
       91 CALL                             R3 1 0
       92 JUMPIF                           R1 ; [+4]
       93 DUPTABLE                         R5 K28 [{["isPlaying"] = False}]
       94 NAMECALL                         R3 R0 K24 ["setState"]
       96 CALL                             R3 2 0
       97 GETTABLEKS                       R3 R0 K5 ["props"]
       99 GETTABLEKS                       R3 R3 K29 ["OnIsPlayingChanged"]
      101 LOADB                            R4 0
      102 CALL                             R3 1 0
      103 JUMPIF                           R1 ; [+4]
      104 DUPTABLE                         R5 K31 [{["playhead"] = 0}]
      105 NAMECALL                         R3 R0 K24 ["setState"]
      107 CALL                             R3 2 0
      108 GETTABLEKS                       R3 R0 K5 ["props"]
      110 GETTABLEKS                       R3 R3 K32 ["OnPlayheadChanged"]
      112 LOADN                            R4 0
      113 CALL                             R3 1 0
      114 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R2 K0 ["http://www.roblox.com/asset/?id="]
        1 FASTCALL1                        TOSTRING R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K2 [tostring]
        5 CALL                             R3 1 1
        6 CONCAT                           R1 R2 R3
        7 RETURN                           R1 1

PROTO_11:
        0 JUMPIFNOT                        R1 ; [+3]
        1 GETTABLEKS                       R2 R0 K0 ["previousPreviewAvatars"]
        3 JUMPIFNOT                        R2 ; [+6]
        4 LENGTH                           R2 R1
        5 GETTABLEKS                       R4 R0 K0 ["previousPreviewAvatars"]
        7 LENGTH                           R3 R4
        8 JUMPIFEQ                         R2 R3 ; [+3]
       10 LOADB                            R2 1
       11 RETURN                           R2 1
       12 GETIMPORT                        R2 K2 [ipairs]
       14 MOVE                             R3 R1
       15 CALL                             R2 1 3
       16 FORGPREP_INEXT                   R2
       17 GETTABLEKS                       R8 R0 K0 ["previousPreviewAvatars"]
       19 GETTABLE                         R7 R8 R5
       20 JUMPIFEQ                         R6 R7 ; [+3]
       22 LOADB                            R7 1
       23 RETURN                           R7 1
       24 FORGLOOP                         R2 2 [inext] ; [-8]
       26 LOADB                            R2 0
       27 RETURN                           R2 1

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R3 K1 ["PreviewAvatars"]
        4 GETTABLEKS                       R5 R3 K2 ["AnimationId"]
        6 JUMPIFNOT                        R5 ; [+140]
        7 LENGTH                           R6 R4
        8 LOADN                            R7 0
        9 JUMPIFNOTLT                      R7 R6 ; [+137]
       11 LOADK                            R7 K3 ["http://www.roblox.com/asset/?id="]
       12 FASTCALL1                        TOSTRING R5 ; [+3]
       13 MOVE                             R9 R5
       14 GETIMPORT                        R8 K5 [tostring]
       16 CALL                             R8 1 1
       17 CONCAT                           R6 R7 R8
       18 GETTABLEKS                       R8 R0 K6 ["previousAnimationURL"]
       20 NOT                              R7 R8
       21 JUMPIF                           R7 ; [+6]
       22 GETTABLEKS                       R8 R0 K6 ["previousAnimationURL"]
       24 JUMPIFNOTEQ                      R8 R6 ; [+2]
       26 LOADB                            R7 0 +1
       27 LOADB                            R7 1
       28 GETUPVAL                         R8 0
       29 MOVE                             R9 R0
       30 MOVE                             R10 R4
       31 CALL                             R8 2 1
       32 SETTABLEKS                       R6 R0 K6 ["previousAnimationURL"]
       34 SETTABLEKS                       R4 R0 K7 ["previousPreviewAvatars"]
       36 JUMPIF                           R7 ; [+1]
       37 JUMPIFNOT                        R8 ; [+59]
       38 NAMECALL                         R9 R0 K8 ["cleanOldAnims"]
       40 CALL                             R9 1 0
       41 GETIMPORT                        R9 K10 [ipairs]
       43 MOVE                             R10 R4
       44 CALL                             R9 1 3
       45 FORGPREP_INEXT                   R9
       46 GETTABLEKS                       R14 R13 K11 ["model"]
       48 JUMPIFNOT                        R14 ; [+46]
       49 LOADK                            R17 K12 ["Humanoid"]
       50 NAMECALL                         R15 R14 K13 ["FindFirstChildOfClass"]
       52 CALL                             R15 2 1
       53 JUMPIFNOT                        R15 ; [+41]
       54 GETTABLEKS                       R16 R0 K14 ["animations"]
       56 GETIMPORT                        R17 K17 [Instance.new]
       58 LOADK                            R18 K18 ["Animation"]
       59 CALL                             R17 1 1
       60 SETTABLE                         R17 R16 R14
       61 GETTABLEKS                       R17 R0 K14 ["animations"]
       63 GETTABLE                         R16 R17 R14
       64 SETTABLEKS                       R6 R16 K2 ["AnimationId"]
       66 GETTABLEKS                       R16 R0 K19 ["tracks"]
       68 GETTABLEKS                       R20 R0 K14 ["animations"]
       70 GETTABLE                         R19 R20 R14
       71 NAMECALL                         R17 R15 K20 ["LoadAnimation"]
       73 CALL                             R17 2 1
       74 SETTABLE                         R17 R16 R14
       75 DUPTABLE                         R18 K23 [{["isPlaying"] = True}]
       76 NAMECALL                         R16 R0 K24 ["setState"]
       78 CALL                             R16 2 0
       79 GETTABLEKS                       R16 R0 K0 ["props"]
       81 GETTABLEKS                       R16 R16 K25 ["OnIsPlayingChanged"]
       83 LOADB                            R17 1
       84 CALL                             R16 1 0
       85 DUPTABLE                         R18 K28 [{["playhead"] = 0}]
       86 NAMECALL                         R16 R0 K24 ["setState"]
       88 CALL                             R16 2 0
       89 GETTABLEKS                       R16 R0 K0 ["props"]
       91 GETTABLEKS                       R16 R16 K29 ["OnPlayheadChanged"]
       93 LOADN                            R17 0
       94 CALL                             R16 1 0
       95 FORGLOOP                         R9 2 [inext] ; [-50]
       97 GETTABLEKS                       R9 R1 K30 ["PlayheadOverride"]
       99 GETTABLEKS                       R10 R3 K30 ["PlayheadOverride"]
      101 JUMPIFEQ                         R9 R10 ; [+20]
      103 GETTABLEKS                       R9 R3 K30 ["PlayheadOverride"]
      105 LOADN                            R10 0
      106 JUMPIFNOTLE                      R10 R9 ; [+15]
      108 GETTABLEKS                       R9 R3 K30 ["PlayheadOverride"]
      110 DUPTABLE                         R12 K31 [{"playhead"}]
      111 SETTABLEKS                       R9 R12 K26 ["playhead"]
      113 NAMECALL                         R10 R0 K24 ["setState"]
      115 CALL                             R10 2 0
      116 GETTABLEKS                       R10 R0 K0 ["props"]
      118 GETTABLEKS                       R10 R10 K29 ["OnPlayheadChanged"]
      120 MOVE                             R11 R9
      121 CALL                             R10 1 0
      122 GETTABLEKS                       R9 R1 K32 ["IsPlayingOverride"]
      124 GETTABLEKS                       R10 R3 K32 ["IsPlayingOverride"]
      126 JUMPIFEQ                         R9 R10 ; [+34]
      128 GETTABLEKS                       R9 R3 K32 ["IsPlayingOverride"]
      130 JUMPIFEQKNIL                     R9 ; [+30]
      132 GETTABLEKS                       R9 R3 K32 ["IsPlayingOverride"]
      134 DUPTABLE                         R12 K33 [{"isPlaying"}]
      135 SETTABLEKS                       R9 R12 K21 ["isPlaying"]
      137 NAMECALL                         R10 R0 K24 ["setState"]
      139 CALL                             R10 2 0
      140 GETTABLEKS                       R10 R0 K0 ["props"]
      142 GETTABLEKS                       R10 R10 K25 ["OnIsPlayingChanged"]
      144 MOVE                             R11 R9
      145 CALL                             R10 1 0
      146 RETURN                           R0 0
      147 GETTABLEKS                       R6 R0 K34 ["state"]
      149 GETTABLEKS                       R6 R6 K21 ["isPlaying"]
      151 JUMPIFNOT                        R6 ; [+9]
      152 NAMECALL                         R6 R0 K8 ["cleanOldAnims"]
      154 CALL                             R6 1 0
      155 LOADNIL                          R6
      156 SETTABLEKS                       R6 R0 K6 ["previousAnimationURL"]
      158 LOADNIL                          R6
      159 SETTABLEKS                       R6 R0 K7 ["previousPreviewAvatars"]
      161 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R3 1
        1 NAMECALL                         R1 R0 K0 ["cleanOldAnims"]
        3 CALL                             R1 2 0
        4 GETTABLEKS                       R1 R0 K1 ["Stepped"]
        6 JUMPIFNOT                        R1 ; [+5]
        7 GETTABLEKS                       R1 R0 K1 ["Stepped"]
        9 NAMECALL                         R1 R1 K2 ["Disconnect"]
       11 CALL                             R1 1 0
       12 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R0 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K4 [require]
       16 GETTABLEKS                       R4 R1 K6 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K7 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K8 ["withContext"]
       23 GETTABLEKS                       R6 R2 K9 ["PureComponent"]
       25 LOADK                            R8 K10 ["AnimationPlayback"]
       26 NAMECALL                         R6 R6 K11 ["extend"]
       28 CALL                             R6 2 1
       29 GETIMPORT                        R7 K13 [game]
       31 LOADK                            R9 K14 ["RunService"]
       32 NAMECALL                         R7 R7 K15 ["GetService"]
       34 CALL                             R7 2 1
       35 GETTABLEKS                       R8 R3 K16 ["Util"]
       37 GETTABLEKS                       R9 R8 K17 ["Typecheck"]
       39 GETTABLEKS                       R10 R9 K18 ["wrap"]
       41 MOVE                             R11 R6
       42 GETIMPORT                        R12 K1 [script]
       44 CALL                             R10 2 0
       45 DUPCLOSURE                       R10 K19 [PROTO_0]
       46 SETTABLEKS                       R10 R6 K20 ["init"]
       48 DUPCLOSURE                       R10 K21 [PROTO_1]
       49 DUPCLOSURE                       R11 K22 [PROTO_2]
       50 DUPCLOSURE                       R12 K23 [PROTO_3]
       51 DUPCLOSURE                       R13 K24 [PROTO_4]
       52 DUPCLOSURE                       R14 K25 [PROTO_6]
       53 CAPTURE                          VAL R7
       54 SETTABLEKS                       R14 R6 K26 ["didMount"]
       56 DUPCLOSURE                       R14 K27 [PROTO_7]
       57 DUPCLOSURE                       R15 K28 [PROTO_8]
       58 CAPTURE                          VAL R14
       59 SETTABLEKS                       R15 R6 K29 ["render"]
       61 DUPCLOSURE                       R15 K30 [PROTO_9]
       62 CAPTURE                          VAL R14
       63 SETTABLEKS                       R15 R6 K31 ["cleanOldAnims"]
       65 DUPCLOSURE                       R15 K32 [PROTO_10]
       66 DUPCLOSURE                       R16 K33 [PROTO_11]
       67 DUPCLOSURE                       R17 K34 [PROTO_12]
       68 CAPTURE                          VAL R16
       69 SETTABLEKS                       R17 R6 K35 ["didUpdate"]
       71 DUPCLOSURE                       R17 K36 [PROTO_13]
       72 SETTABLEKS                       R17 R6 K37 ["willUnmount"]
       74 RETURN                           R6 1
