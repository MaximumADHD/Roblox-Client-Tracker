PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["time"]
        2 GETTABLEKS                       R4 R1 K0 ["time"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 NAMECALL                         R2 R0 K0 ["GetKeyframes"]
        4 CALL                             R2 1 3
        5 FORGPREP                         R2
        6 NAMECALL                         R7 R6 K1 ["GetDescendants"]
        8 CALL                             R7 1 3
        9 FORGPREP                         R7
       10 LOADK                            R14 K2 ["Pose"]
       11 NAMECALL                         R12 R11 K3 ["IsA"]
       13 CALL                             R12 2 1
       14 JUMPIFNOT                        R12 ; [+28]
       15 GETTABLEKS                       R12 R11 K4 ["Weight"]
       17 LOADN                            R13 0
       18 JUMPIFNOTLT                      R13 R12 ; [+24]
       20 GETTABLEKS                       R13 R11 K5 ["Name"]
       22 GETTABLE                         R12 R1 R13
       23 JUMPIFNOTEQKNIL                  R12 ; [+6]
       25 NEWTABLE                         R12 0 0
       27 GETTABLEKS                       R13 R11 K5 ["Name"]
       29 SETTABLE                         R12 R1 R13
       30 DUPTABLE                         R15 K8 [{"time", "pose"}]
       31 GETTABLEKS                       R16 R6 K9 ["Time"]
       33 SETTABLEKS                       R16 R15 K6 ["time"]
       35 SETTABLEKS                       R11 R15 K7 ["pose"]
       37 FASTCALL2                        TABLE_INSERT R12 R15 ; [+4]
       39 MOVE                             R14 R12
       40 GETIMPORT                        R13 K12 [table.insert]
       42 CALL                             R13 2 0
       43 FORGLOOP                         R7 2 ; [-34]
       45 FORGLOOP                         R2 2 ; [-40]
       47 MOVE                             R2 R1
       48 LOADNIL                          R3
       49 LOADNIL                          R4
       50 FORGPREP                         R2
       51 GETIMPORT                        R7 K14 [table.sort]
       53 MOVE                             R8 R6
       54 DUPCLOSURE                       R9 K15 [PROTO_0]
       55 CALL                             R7 2 0
       56 FORGLOOP                         R2 2 ; [-6]
       58 RETURN                           R1 1

PROTO_2:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 LENGTH                           R2 R0
        3 JUMPIFNOTEQKN                    R2 K0 [0] ; [+3]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETTABLEN                        R2 R0 1
        8 LENGTH                           R4 R0
        9 GETTABLE                         R3 R0 R4
       10 GETTABLEKS                       R4 R2 K1 ["time"]
       12 JUMPIFNOTLE                      R1 R4 ; [+15]
       14 DUPTABLE                         R4 K4 [{"cframe", "weight"}]
       15 GETTABLEKS                       R5 R2 K5 ["pose"]
       17 GETTABLEKS                       R5 R5 K6 ["CFrame"]
       19 SETTABLEKS                       R5 R4 K2 ["cframe"]
       21 GETTABLEKS                       R5 R2 K5 ["pose"]
       23 GETTABLEKS                       R5 R5 K7 ["Weight"]
       25 SETTABLEKS                       R5 R4 K3 ["weight"]
       27 RETURN                           R4 1
       28 GETTABLEKS                       R4 R3 K1 ["time"]
       30 JUMPIFNOTLE                      R4 R1 ; [+15]
       32 DUPTABLE                         R4 K4 [{"cframe", "weight"}]
       33 GETTABLEKS                       R5 R3 K5 ["pose"]
       35 GETTABLEKS                       R5 R5 K6 ["CFrame"]
       37 SETTABLEKS                       R5 R4 K2 ["cframe"]
       39 GETTABLEKS                       R5 R3 K5 ["pose"]
       41 GETTABLEKS                       R5 R5 K7 ["Weight"]
       43 SETTABLEKS                       R5 R4 K3 ["weight"]
       45 RETURN                           R4 1
       46 LOADN                            R6 1
       47 LENGTH                           R7 R0
       48 SUBK                             R4 R7 K8 [1]
       49 LOADN                            R5 1
       50 FORNPREP                         R4
       51 GETTABLE                         R7 R0 R6
       52 ADDK                             R9 R6 K8 [1]
       53 GETTABLE                         R8 R0 R9
       54 GETTABLEKS                       R9 R7 K1 ["time"]
       56 JUMPIFNOTLE                      R9 R1 ; [+85]
       58 GETTABLEKS                       R9 R8 K1 ["time"]
       60 JUMPIFNOTLT                      R1 R9 ; [+81]
       62 GETTABLEKS                       R11 R7 K1 ["time"]
       64 SUB                              R10 R1 R11
       65 GETTABLEKS                       R12 R8 K1 ["time"]
       67 GETTABLEKS                       R13 R7 K1 ["time"]
       69 SUB                              R11 R12 R13
       70 DIV                              R9 R10 R11
       71 GETTABLEKS                       R10 R7 K5 ["pose"]
       73 GETTABLEKS                       R11 R10 K9 ["EasingStyle"]
       75 GETIMPORT                        R12 K13 [Enum.PoseEasingStyle.Constant]
       77 JUMPIFNOTEQ                      R11 R12 ; [+3]
       79 LOADN                            R9 0
       80 JUMP                             ; [+34]
       81 GETTABLEKS                       R11 R10 K9 ["EasingStyle"]
       83 GETIMPORT                        R12 K15 [Enum.PoseEasingStyle.Linear]
       85 JUMPIFEQ                         R11 R12 ; [+29]
       87 GETTABLEKS                       R12 R10 K9 ["EasingStyle"]
       89 GETIMPORT                        R13 K17 [Enum.PoseEasingStyle.CubicV2]
       91 JUMPIFNOTEQ                      R12 R13 ; [+3]
       93 LOADK                            R11 K18 ["Cubic"]
       94 JUMP                             ; [+4]
       95 GETTABLEKS                       R11 R10 K9 ["EasingStyle"]
       97 GETTABLEKS                       R11 R11 K19 ["Name"]
       99 GETUPVAL                         R12 0
      100 MOVE                             R14 R9
      101 GETIMPORT                        R16 K20 [Enum.EasingStyle]
      103 GETTABLE                         R15 R16 R11
      104 GETIMPORT                        R17 K22 [Enum.EasingDirection]
      106 GETTABLEKS                       R18 R10 K21 ["EasingDirection"]
      108 GETTABLEKS                       R18 R18 K19 ["Name"]
      110 GETTABLE                         R16 R17 R18
      111 NAMECALL                         R12 R12 K23 ["GetValue"]
      113 CALL                             R12 4 1
      114 MOVE                             R9 R12
      115 DUPTABLE                         R11 K4 [{"cframe", "weight"}]
      116 GETTABLEKS                       R12 R10 K6 ["CFrame"]
      118 GETTABLEKS                       R14 R8 K5 ["pose"]
      120 GETTABLEKS                       R14 R14 K6 ["CFrame"]
      122 MOVE                             R15 R9
      123 NAMECALL                         R12 R12 K24 ["Lerp"]
      125 CALL                             R12 3 1
      126 SETTABLEKS                       R12 R11 K2 ["cframe"]
      128 GETTABLEKS                       R13 R10 K7 ["Weight"]
      130 GETTABLEKS                       R16 R8 K5 ["pose"]
      132 GETTABLEKS                       R16 R16 K7 ["Weight"]
      134 GETTABLEKS                       R17 R10 K7 ["Weight"]
      136 SUB                              R15 R16 R17
      137 MUL                              R14 R15 R9
      138 ADD                              R12 R13 R14
      139 SETTABLEKS                       R12 R11 K3 ["weight"]
      141 RETURN                           R11 1
      142 FORNLOOP                         R4
      143 LOADNIL                          R4
      144 RETURN                           R4 1

PROTO_3:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R6 0
        3 GETTABLEKS                       R9 R2 K1 ["aiGeneratedDuration"]
        5 MULK                             R8 R9 K0 [60]
        6 FASTCALL1                        MATH_FLOOR R8 ; [+2]
        7 GETIMPORT                        R7 K4 [math.floor]
        9 CALL                             R7 1 1
       10 MOVE                             R4 R7
       11 LOADN                            R5 1
       12 FORNPREP                         R4
       13 DIVK                             R9 R6 K0 [60]
       14 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       16 MOVE                             R8 R3
       17 GETIMPORT                        R7 K7 [table.insert]
       19 CALL                             R7 2 0
       20 FORNLOOP                         R4
       21 GETTABLEKS                       R4 R2 K8 ["r6Duration"]
       23 LOADN                            R5 0
       24 JUMPIFNOTLT                      R5 R4 ; [+19]
       26 NAMECALL                         R4 R1 K9 ["GetKeyframes"]
       28 CALL                             R4 1 3
       29 FORGPREP                         R4
       30 MOVE                             R10 R3
       31 GETUPVAL                         R11 0
       32 GETTABLEKS                       R11 R11 K10 ["fromR6Time"]
       34 MOVE                             R12 R2
       35 GETTABLEKS                       R13 R8 K11 ["Time"]
       37 CALL                             R11 2 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R9 K7 [table.insert]
       41 CALL                             R9 -1 0
       42 FORGLOOP                         R4 2 ; [-13]
       44 GETIMPORT                        R4 K13 [table.sort]
       46 MOVE                             R5 R3
       47 CALL                             R4 1 0
       48 NEWTABLE                         R4 0 0
       50 MOVE                             R5 R0
       51 LOADNIL                          R6
       52 LOADNIL                          R7
       53 FORGPREP                         R5
       54 GETTABLEKS                       R12 R9 K11 ["Time"]
       56 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       58 MOVE                             R11 R4
       59 GETIMPORT                        R10 K7 [table.insert]
       61 CALL                             R10 2 0
       62 FORGLOOP                         R5 2 ; [-9]
       64 GETIMPORT                        R5 K13 [table.sort]
       66 MOVE                             R6 R4
       67 CALL                             R5 1 0
       68 NEWTABLE                         R5 0 0
       70 LOADN                            R6 1
       71 LOADK                            R7 K14 [-∞]
       72 MOVE                             R8 R3
       73 LOADNIL                          R9
       74 LOADNIL                          R10
       75 FORGPREP                         R8
       76 LENGTH                           R13 R4
       77 JUMPIFNOTLE                      R6 R13 ; [+7]
       79 GETTABLE                         R13 R4 R6
       80 SUBK                             R14 R12 K15 [1E-06]
       81 JUMPIFNOTLT                      R13 R14 ; [+3]
       83 ADDK                             R6 R6 K16 [1]
       84 JUMPBACK                         ; [-9]
       85 LOADB                            R13 0
       86 LENGTH                           R14 R4
       87 JUMPIFNOTLE                      R6 R14 ; [+12]
       89 GETTABLE                         R16 R4 R6
       90 SUB                              R15 R16 R12
       91 FASTCALL1                        MATH_ABS R15 ; [+2]
       92 GETIMPORT                        R14 K18 [math.abs]
       94 CALL                             R14 1 1
       95 LOADK                            R15 K15 [1E-06]
       96 JUMPIFLT                         R14 R15 ; [+2]
       98 LOADB                            R13 0 +1
       99 LOADB                            R13 1
      100 JUMPIF                           R13 ; [+12]
      101 SUB                              R14 R12 R7
      102 LOADK                            R15 K15 [1E-06]
      103 JUMPIFNOTLE                      R15 R14 ; [+9]
      105 FASTCALL2                        TABLE_INSERT R5 R12 ; [+5]
      107 MOVE                             R15 R5
      108 MOVE                             R16 R12
      109 GETIMPORT                        R14 K7 [table.insert]
      111 CALL                             R14 2 0
      112 MOVE                             R7 R12
      113 FORGLOOP                         R8 2 ; [-38]
      115 RETURN                           R5 1

PROTO_4:
        0 GETTABLEN                        R1 R0 1
        1 NAMECALL                         R1 R1 K0 ["Clone"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K1 ["Keyframe"]
        5 SETTABLEKS                       R2 R1 K2 ["Name"]
        7 NAMECALL                         R2 R1 K3 ["GetMarkers"]
        9 CALL                             R2 1 3
       10 FORGPREP                         R2
       11 NAMECALL                         R7 R6 K4 ["Destroy"]
       13 CALL                             R7 1 0
       14 FORGLOOP                         R2 2 ; [-4]
       16 NEWTABLE                         R2 0 0
       18 NAMECALL                         R3 R1 K5 ["GetDescendants"]
       20 CALL                             R3 1 3
       21 FORGPREP                         R3
       22 LOADK                            R10 K6 ["Pose"]
       23 NAMECALL                         R8 R7 K7 ["IsA"]
       25 CALL                             R8 2 1
       26 JUMPIFNOT                        R8 ; [+3]
       27 GETTABLEKS                       R8 R7 K2 ["Name"]
       29 SETTABLE                         R7 R2 R8
       30 FORGLOOP                         R3 2 ; [-9]
       32 LOADN                            R5 2
       33 LENGTH                           R3 R0
       34 LOADN                            R4 1
       35 FORNPREP                         R3
       36 GETTABLE                         R6 R0 R5
       37 NAMECALL                         R6 R6 K5 ["GetDescendants"]
       39 CALL                             R6 1 3
       40 FORGPREP                         R6
       41 LOADK                            R13 K6 ["Pose"]
       42 NAMECALL                         R11 R10 K7 ["IsA"]
       44 CALL                             R11 2 1
       45 JUMPIFNOT                        R11 ; [+32]
       46 GETTABLEKS                       R12 R10 K2 ["Name"]
       48 GETTABLE                         R11 R2 R12
       49 JUMPIFNOTEQKNIL                  R11 ; [+28]
       51 GETTABLEKS                       R11 R10 K8 ["Parent"]
       53 JUMPIFEQKNIL                     R11 ; [+10]
       55 LOADK                            R15 K6 ["Pose"]
       56 NAMECALL                         R13 R11 K7 ["IsA"]
       58 CALL                             R13 2 1
       59 JUMPIFNOT                        R13 ; [+4]
       60 GETTABLEKS                       R13 R11 K2 ["Name"]
       62 GETTABLE                         R12 R2 R13
       63 JUMP                             ; [+1]
       64 MOVE                             R12 R1
       65 JUMPIFEQKNIL                     R12 ; [+12]
       67 NAMECALL                         R13 R10 K0 ["Clone"]
       69 CALL                             R13 1 1
       70 NAMECALL                         R14 R13 K9 ["ClearAllChildren"]
       72 CALL                             R14 1 0
       73 SETTABLEKS                       R12 R13 K8 ["Parent"]
       75 GETTABLEKS                       R14 R13 K2 ["Name"]
       77 SETTABLE                         R13 R2 R14
       78 FORGLOOP                         R6 2 ; [-38]
       80 FORNLOOP                         R3
       81 RETURN                           R1 1

PROTO_5:
        0 JUMPIFEQKNIL                     R1 ; [+5]
        2 GETTABLEKS                       R5 R1 K0 ["weight"]
        4 MUL                              R4 R5 R3
        5 JUMP                             ; [+1]
        6 LOADN                            R4 0
        7 JUMPIFEQKNIL                     R2 ; [+6]
        9 GETTABLEKS                       R6 R2 K0 ["weight"]
       11 SUBRK                            R7 K1 [1] R3
       12 MUL                              R5 R6 R7
       13 JUMP                             ; [+1]
       14 LOADN                            R5 0
       15 ADD                              R6 R4 R5
       16 LOADN                            R9 0
       17 LOADN                            R10 1
       18 FASTCALL3                        MATH_CLAMP R6 R9 R10
       20 MOVE                             R8 R6
       21 GETIMPORT                        R7 K4 [math.clamp]
       23 CALL                             R7 3 1
       24 SETTABLEKS                       R7 R0 K5 ["Weight"]
       26 GETIMPORT                        R7 K9 [Enum.PoseEasingStyle.Linear]
       28 SETTABLEKS                       R7 R0 K10 ["EasingStyle"]
       30 GETIMPORT                        R7 K13 [Enum.PoseEasingDirection.In]
       32 SETTABLEKS                       R7 R0 K14 ["EasingDirection"]
       34 LOADN                            R7 0
       35 JUMPIFNOTLT                      R7 R6 ; [+22]
       37 JUMPIFEQKNIL                     R1 ; [+4]
       39 GETTABLEKS                       R7 R1 K15 ["cframe"]
       41 JUMP                             ; [+2]
       42 GETIMPORT                        R7 K18 [CFrame.identity]
       44 JUMPIFEQKNIL                     R2 ; [+4]
       46 GETTABLEKS                       R8 R2 K15 ["cframe"]
       48 JUMP                             ; [+2]
       49 GETIMPORT                        R8 K18 [CFrame.identity]
       51 MOVE                             R11 R7
       52 DIV                              R12 R4 R6
       53 NAMECALL                         R9 R8 K19 ["Lerp"]
       55 CALL                             R9 3 1
       56 SETTABLEKS                       R9 R0 K16 ["CFrame"]
       58 RETURN                           R0 0

PROTO_6:
        0 LOADN                            R6 0
        1 LOADN                            R7 1
        2 FASTCALL3                        MATH_CLAMP R2 R6 R7
        4 MOVE                             R5 R2
        5 GETIMPORT                        R4 K2 [math.clamp]
        7 CALL                             R4 3 1
        8 LOADN                            R7 0
        9 LOADN                            R8 1
       10 FASTCALL3                        MATH_CLAMP R3 R7 R8
       12 MOVE                             R6 R3
       13 GETIMPORT                        R5 K2 [math.clamp]
       15 CALL                             R5 3 1
       16 NAMECALL                         R6 R1 K3 ["Clone"]
       18 CALL                             R6 1 1
       19 JUMPIFNOTEQKN                    R4 K4 [1] ; [+4]
       21 JUMPIFNOTEQKN                    R5 K4 [1] ; [+2]
       23 RETURN                           R6 1
       24 NAMECALL                         R7 R6 K5 ["GetKeyframes"]
       26 CALL                             R7 1 1
       27 LENGTH                           R8 R7
       28 JUMPIFNOTEQKN                    R8 K6 [0] ; [+2]
       30 RETURN                           R6 1
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K7 ["new"]
       34 MOVE                             R9 R1
       35 MOVE                             R10 R0
       36 CALL                             R8 2 1
       37 GETUPVAL                         R9 1
       38 MOVE                             R10 R7
       39 CALL                             R9 1 1
       40 GETUPVAL                         R10 2
       41 MOVE                             R11 R7
       42 MOVE                             R12 R0
       43 MOVE                             R13 R8
       44 CALL                             R10 3 3
       45 FORGPREP                         R10
       46 NAMECALL                         R15 R9 K3 ["Clone"]
       48 CALL                             R15 1 1
       49 SETTABLEKS                       R14 R15 K8 ["Time"]
       51 MOVE                             R18 R15
       52 NAMECALL                         R16 R6 K9 ["AddKeyframe"]
       54 CALL                             R16 2 0
       55 FASTCALL2                        TABLE_INSERT R7 R15 ; [+5]
       57 MOVE                             R17 R7
       58 MOVE                             R18 R15
       59 GETIMPORT                        R16 K12 [table.insert]
       61 CALL                             R16 2 0
       62 FORGLOOP                         R10 2 ; [-17]
       64 NAMECALL                         R10 R9 K13 ["Destroy"]
       66 CALL                             R10 1 0
       67 GETUPVAL                         R10 3
       68 MOVE                             R11 R0
       69 CALL                             R10 1 1
       70 GETUPVAL                         R11 3
       71 MOVE                             R12 R1
       72 CALL                             R11 1 1
       73 MOVE                             R12 R7
       74 LOADNIL                          R13
       75 LOADNIL                          R14
       76 FORGPREP                         R12
       77 GETUPVAL                         R17 0
       78 GETTABLEKS                       R17 R17 K14 ["toR6Time"]
       80 MOVE                             R18 R8
       81 GETTABLEKS                       R19 R16 K8 ["Time"]
       83 CALL                             R17 2 1
       84 NAMECALL                         R18 R16 K15 ["GetDescendants"]
       86 CALL                             R18 1 3
       87 FORGPREP                         R18
       88 LOADK                            R25 K16 ["Pose"]
       89 NAMECALL                         R23 R22 K17 ["IsA"]
       91 CALL                             R23 2 1
       92 JUMPIFNOT                        R23 ; [+27]
       93 GETUPVAL                         R24 4
       94 GETTABLEKS                       R24 R24 K18 ["ofPose"]
       96 MOVE                             R25 R22
       97 CALL                             R24 1 1
       98 JUMPIFNOTEQKS                    R24 K19 ["upper"] ; [+3]
      100 MOVE                             R23 R4
      101 JUMP                             ; [+1]
      102 MOVE                             R23 R5
      103 GETUPVAL                         R24 5
      104 MOVE                             R25 R22
      105 GETUPVAL                         R26 6
      106 GETTABLEKS                       R28 R22 K20 ["Name"]
      108 GETTABLE                         R27 R11 R28
      109 GETTABLEKS                       R28 R16 K8 ["Time"]
      111 CALL                             R26 2 1
      112 GETUPVAL                         R27 6
      113 GETTABLEKS                       R29 R22 K20 ["Name"]
      115 GETTABLE                         R28 R10 R29
      116 MOVE                             R29 R17
      117 CALL                             R27 2 1
      118 MOVE                             R28 R23
      119 CALL                             R24 4 0
      120 FORGLOOP                         R18 2 ; [-33]
      122 FORGLOOP                         R12 2 ; [-46]
      124 RETURN                           R6 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["TweenService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AssistantUI"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Util"]
       17 GETTABLEKS                       R3 R3 K11 ["AnimationGen"]
       19 GETTABLEKS                       R3 R3 K12 ["BlendTimeline"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R1 K10 ["Util"]
       26 GETTABLEKS                       R4 R4 K11 ["AnimationGen"]
       28 GETTABLEKS                       R4 R4 K13 ["BodyRegions"]
       30 CALL                             R3 1 1
       31 DUPCLOSURE                       R4 K14 [PROTO_1]
       32 DUPCLOSURE                       R5 K15 [PROTO_2]
       33 CAPTURE                          VAL R0
       34 DUPCLOSURE                       R6 K16 [PROTO_3]
       35 CAPTURE                          VAL R2
       36 DUPCLOSURE                       R7 K17 [PROTO_4]
       37 DUPCLOSURE                       R8 K18 [PROTO_5]
       38 DUPCLOSURE                       R9 K19 [PROTO_6]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R7
       41 CAPTURE                          VAL R6
       42 CAPTURE                          VAL R4
       43 CAPTURE                          VAL R3
       44 CAPTURE                          VAL R8
       45 CAPTURE                          VAL R5
       46 RETURN                           R9 1
