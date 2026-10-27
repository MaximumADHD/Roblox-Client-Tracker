PROTO_0:
        0 JUMPIFNOTEQKS                    R1 K0 ["start"] ; [+4]
        2 GETTABLEKS                       R2 R0 K1 ["startTime"]
        4 RETURN                           R2 1
        5 JUMPIFNOTEQKS                    R1 K2 ["holdStart"] ; [+4]
        7 GETTABLEKS                       R2 R0 K3 ["holdStartTime"]
        9 RETURN                           R2 1
       10 JUMPIFNOTEQKS                    R1 K4 ["holdEnd"] ; [+4]
       12 GETTABLEKS                       R2 R0 K5 ["holdEndTime"]
       14 RETURN                           R2 1
       15 GETTABLEKS                       R2 R0 K6 ["endTime"]
       17 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 GETUPVAL                         R0 2
       11 LOADNIL                          R1
       12 CALL                             R0 1 0
       13 GETUPVAL                         R0 3
       14 LOADB                            R1 0
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R1 R0 K0 ["current"]
        3 ADDK                             R1 R1 K1 [1]
        4 SETTABLEKS                       R1 R0 K0 ["current"]
        6 GETUPVAL                         R0 1
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K0 ["current"]
       10 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["KeyCode"]
        2 GETIMPORT                        R2 K3 [Enum.KeyCode.Escape]
        4 JUMPIFNOTEQ                      R1 R2 ; [+3]
        6 GETUPVAL                         R1 0
        7 CALL                             R1 0 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["planMove"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["intervals"]
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R5 2
        8 ADD                              R4 R5 R0
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["duration"]
       12 CALL                             R1 4 -1
       13 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R3 R0 K0 ["poseTime"]
        4 GETUPVAL                         R4 2
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["planResize"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["intervals"]
        6 GETUPVAL                         R3 2
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R6 4
        9 ADD                              R5 R6 R0
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R6 R6 K2 ["duration"]
       13 CALL                             R1 5 -1
       14 RETURN                           R1 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETUPVAL                         R3 2
        3 GETTABLEKS                       R5 R0 K0 ["bounds"]
        5 GETUPVAL                         R6 2
        6 JUMPIFNOTEQKS                    R6 K1 ["start"] ; [+4]
        8 GETTABLEKS                       R4 R5 K2 ["startTime"]
       10 JUMP                             ; [+12]
       11 JUMPIFNOTEQKS                    R6 K3 ["holdStart"] ; [+4]
       13 GETTABLEKS                       R4 R5 K4 ["holdStartTime"]
       15 JUMP                             ; [+7]
       16 JUMPIFNOTEQKS                    R6 K5 ["holdEnd"] ; [+4]
       18 GETTABLEKS                       R4 R5 K6 ["holdEndTime"]
       20 JUMP                             ; [+2]
       21 GETTABLEKS                       R4 R5 K7 ["endTime"]
       23 GETUPVAL                         R5 3
       24 CALL                             R1 4 -1
       25 RETURN                           R1 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["trackRef"]
        3 GETTABLEKS                       R3 R3 K1 ["current"]
        5 GETUPVAL                         R5 0
        6 GETTABLEKS                       R5 R5 K2 ["fps"]
        8 DIV                              R4 R0 R5
        9 GETUPVAL                         R6 0
       10 GETTABLEKS                       R6 R6 K3 ["intervals"]
       12 GETTABLE                         R5 R6 R4
       13 GETUPVAL                         R6 0
       14 GETTABLEKS                       R6 R6 K4 ["disabled"]
       16 JUMPIF                           R6 ; [+24]
       17 GETUPVAL                         R6 1
       18 JUMPIF                           R6 ; [+22]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R6 R6 K1 ["current"]
       22 JUMPIFNOTEQKNIL                  R6 ; [+18]
       24 JUMPIFEQKNIL                     R5 ; [+16]
       26 JUMPIFEQKNIL                     R3 ; [+14]
       28 GETTABLEKS                       R6 R3 K5 ["AbsoluteSize"]
       30 GETTABLEKS                       R6 R6 K6 ["X"]
       32 LOADN                            R7 0
       33 JUMPIFLE                         R6 R7 ; [+7]
       35 GETTABLEKS                       R6 R2 K7 ["UserInputType"]
       37 GETIMPORT                        R7 K10 [Enum.UserInputType.MouseButton1]
       39 JUMPIFEQ                         R6 R7 ; [+2]
       41 RETURN                           R0 0
       42 DUPTABLE                         R6 K13 [{"poseTime", "bounds"}]
       43 SETTABLEKS                       R4 R6 K11 ["poseTime"]
       45 SETTABLEKS                       R5 R6 K12 ["bounds"]
       47 LOADNIL                          R7
       48 LOADNIL                          R8
       49 JUMPIFNOTEQKS                    R1 K14 ["move"] ; [+16]
       51 GETUPVAL                         R9 0
       52 GETTABLEKS                       R9 R9 K15 ["onMove"]
       54 JUMPIFNOTEQKNIL                  R9 ; [+2]
       56 RETURN                           R0 0
       57 NEWCLOSURE                       R7 P0
       58 CAPTURE                          UPVAL U3
       59 CAPTURE                          UPVAL U0
       60 CAPTURE                          VAL R4
       61 NEWCLOSURE                       R8 P1
       62 CAPTURE                          VAL R9
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R5
       65 JUMP                             ; [+34]
       66 GETUPVAL                         R9 0
       67 GETTABLEKS                       R9 R9 K16 ["onResize"]
       69 JUMPIFNOTEQKNIL                  R9 ; [+2]
       71 RETURN                           R0 0
       72 JUMPIFNOTEQKS                    R1 K17 ["start"] ; [+4]
       74 GETTABLEKS                       R10 R5 K18 ["startTime"]
       76 JUMP                             ; [+12]
       77 JUMPIFNOTEQKS                    R1 K19 ["holdStart"] ; [+4]
       79 GETTABLEKS                       R10 R5 K20 ["holdStartTime"]
       81 JUMP                             ; [+7]
       82 JUMPIFNOTEQKS                    R1 K21 ["holdEnd"] ; [+4]
       84 GETTABLEKS                       R10 R5 K22 ["holdEndTime"]
       86 JUMP                             ; [+2]
       87 GETTABLEKS                       R10 R5 K23 ["endTime"]
       89 NEWCLOSURE                       R7 P2
       90 CAPTURE                          UPVAL U3
       91 CAPTURE                          UPVAL U0
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R10
       95 NEWCLOSURE                       R8 P3
       96 CAPTURE                          VAL R9
       97 CAPTURE                          VAL R0
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R5
      100 GETUPVAL                         R9 0
      101 GETTABLEKS                       R9 R9 K24 ["onPause"]
      103 CALL                             R9 0 0
      104 GETUPVAL                         R9 2
      105 DUPTABLE                         R10 K35 [{["frameIndex"], ["kind"], ["startX"], ["secondsPerPixel"], ["original"], ["placement"], ["moved"] = False, ["evaluate"], ["commit"]}]
      106 SETTABLEKS                       R0 R10 K25 ["frameIndex"]
      108 SETTABLEKS                       R1 R10 K26 ["kind"]
      110 GETTABLEKS                       R11 R2 K36 ["Position"]
      112 GETTABLEKS                       R11 R11 K6 ["X"]
      114 SETTABLEKS                       R11 R10 K27 ["startX"]
      116 GETUPVAL                         R12 0
      117 GETTABLEKS                       R12 R12 K37 ["duration"]
      119 GETTABLEKS                       R13 R3 K5 ["AbsoluteSize"]
      121 GETTABLEKS                       R13 R13 K6 ["X"]
      123 DIV                              R11 R12 R13
      124 SETTABLEKS                       R11 R10 K28 ["secondsPerPixel"]
      126 SETTABLEKS                       R6 R10 K29 ["original"]
      128 SETTABLEKS                       R6 R10 K30 ["placement"]
      130 SETTABLEKS                       R7 R10 K33 ["evaluate"]
      132 SETTABLEKS                       R8 R10 K34 ["commit"]
      134 SETTABLEKS                       R10 R9 K1 ["current"]
      136 GETUPVAL                         R9 4
      137 DUPTABLE                         R10 K38 [{"frameIndex", "kind", "poseTime", "bounds"}]
      138 SETTABLEKS                       R0 R10 K25 ["frameIndex"]
      140 SETTABLEKS                       R1 R10 K26 ["kind"]
      142 SETTABLEKS                       R4 R10 K11 ["poseTime"]
      144 SETTABLEKS                       R5 R10 K12 ["bounds"]
      146 CALL                             R9 1 0
      147 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 LOADK                            R4 K0 ["move"]
        3 MOVE                             R5 R1
        4 CALL                             R2 3 0
        5 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R0
        2 MOVE                             R5 R1
        3 MOVE                             R6 R2
        4 CALL                             R3 3 0
        5 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
        7 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseMovement]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 RETURN                           R0 0
       12 GETTABLEKS                       R3 R0 K5 ["Position"]
       14 GETTABLEKS                       R3 R3 K6 ["X"]
       16 GETTABLEKS                       R4 R1 K7 ["startX"]
       18 SUB                              R2 R3 R4
       19 GETTABLEKS                       R3 R1 K8 ["moved"]
       21 JUMPIF                           R3 ; [+9]
       22 FASTCALL1                        MATH_ABS R2 ; [+3]
       23 MOVE                             R4 R2
       24 GETIMPORT                        R3 K11 [math.abs]
       26 CALL                             R3 1 1
       27 LOADN                            R4 4
       28 JUMPIFNOTLT                      R3 R4 ; [+2]
       30 RETURN                           R0 0
       31 LOADB                            R3 1
       32 SETTABLEKS                       R3 R1 K8 ["moved"]
       34 GETTABLEKS                       R3 R1 K12 ["evaluate"]
       36 GETTABLEKS                       R5 R1 K13 ["secondsPerPixel"]
       38 MUL                              R4 R2 R5
       39 CALL                             R3 1 1
       40 JUMPIFEQKNIL                     R3 ; [+22]
       42 SETTABLEKS                       R3 R1 K14 ["placement"]
       44 GETUPVAL                         R4 1
       45 DUPTABLE                         R5 K19 [{"frameIndex", "kind", "poseTime", "bounds"}]
       46 GETTABLEKS                       R6 R1 K15 ["frameIndex"]
       48 SETTABLEKS                       R6 R5 K15 ["frameIndex"]
       50 GETTABLEKS                       R6 R1 K16 ["kind"]
       52 SETTABLEKS                       R6 R5 K16 ["kind"]
       54 GETTABLEKS                       R6 R3 K17 ["poseTime"]
       56 SETTABLEKS                       R6 R5 K17 ["poseTime"]
       58 GETTABLEKS                       R6 R3 K18 ["bounds"]
       60 SETTABLEKS                       R6 R5 K18 ["bounds"]
       62 CALL                             R4 1 0
       63 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["current"]
        3 JUMPIFEQKNIL                     R1 ; [+7]
        5 GETTABLEKS                       R2 R0 K1 ["UserInputType"]
        7 GETIMPORT                        R3 K4 [Enum.UserInputType.MouseButton1]
        9 JUMPIFEQ                         R2 R3 ; [+2]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 0
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K0 ["current"]
       16 GETTABLEKS                       R2 R1 K5 ["moved"]
       18 JUMPIFNOT                        R2 ; [+13]
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K6 ["areBoundsEqual"]
       22 GETTABLEKS                       R3 R1 K7 ["original"]
       24 GETTABLEKS                       R3 R3 K8 ["bounds"]
       26 GETTABLEKS                       R4 R1 K9 ["placement"]
       28 GETTABLEKS                       R4 R4 K8 ["bounds"]
       30 CALL                             R2 2 1
       31 JUMPIFNOT                        R2 ; [+13]
       32 GETUPVAL                         R2 2
       33 LOADNIL                          R3
       34 CALL                             R2 1 0
       35 GETTABLEKS                       R2 R1 K5 ["moved"]
       37 JUMPIF                           R2 ; [+6]
       38 GETUPVAL                         R2 3
       39 GETTABLEKS                       R2 R2 K10 ["onActivate"]
       41 GETTABLEKS                       R3 R1 K11 ["frameIndex"]
       43 CALL                             R2 1 0
       44 RETURN                           R0 0
       45 GETUPVAL                         R2 4
       46 LOADB                            R3 1
       47 CALL                             R2 1 0
       48 GETUPVAL                         R2 5
       49 GETTABLEKS                       R2 R2 K0 ["current"]
       51 GETIMPORT                        R3 K13 [pcall]
       53 GETTABLEKS                       R4 R1 K14 ["commit"]
       55 GETTABLEKS                       R5 R1 K9 ["placement"]
       57 CALL                             R3 2 2
       58 GETUPVAL                         R5 5
       59 GETTABLEKS                       R5 R5 K0 ["current"]
       61 JUMPIFNOTEQ                      R2 R5 ; [+15]
       63 GETUPVAL                         R5 2
       64 LOADNIL                          R6
       65 CALL                             R5 1 0
       66 GETUPVAL                         R5 4
       67 LOADB                            R6 0
       68 CALL                             R5 1 0
       69 JUMPIFNOT                        R3 ; [+7]
       70 JUMPIFEQKNIL                     R4 ; [+6]
       72 GETUPVAL                         R5 3
       73 GETTABLEKS                       R5 R5 K15 ["onSelect"]
       75 MOVE                             R6 R4
       76 CALL                             R5 1 0
       77 JUMPIF                           R3 ; [+5]
       78 GETIMPORT                        R5 K17 [warn]
       80 LOADK                            R6 K18 ["[AnimationGen] Could not update the pose interval:"]
       81 MOVE                             R7 R4
       82 CALL                             R5 2 0
       83 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K2 ["useRef"]
       10 LOADNIL                          R3
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K2 ["useRef"]
       15 LOADN                            R4 0
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K3 ["useState"]
       20 LOADNIL                          R5
       21 CALL                             R4 1 2
       22 GETUPVAL                         R6 0
       23 GETTABLEKS                       R6 R6 K3 ["useState"]
       25 LOADB                            R7 0
       26 CALL                             R6 1 2
       27 GETUPVAL                         R8 0
       28 GETTABLEKS                       R8 R8 K4 ["useCallback"]
       30 NEWCLOSURE                       R9 P0
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R5
       34 CAPTURE                          VAL R7
       35 NEWTABLE                         R10 0 0
       37 CALL                             R8 2 1
       38 GETUPVAL                         R9 0
       39 GETTABLEKS                       R9 R9 K5 ["useEffect"]
       41 NEWCLOSURE                       R10 P1
       42 CAPTURE                          VAL R8
       43 NEWTABLE                         R11 0 6
       45 GETTABLEKS                       R12 R0 K6 ["intervals"]
       47 GETTABLEKS                       R13 R0 K7 ["duration"]
       49 GETTABLEKS                       R14 R0 K8 ["disabled"]
       51 GETTABLEKS                       R15 R0 K9 ["toolUseId"]
       53 GETTABLEKS                       R16 R0 K10 ["revision"]
       55 MOVE                             R17 R8
       56 SETLIST                          R11 R12 6 [1]
       58 CALL                             R9 2 0
       59 GETUPVAL                         R9 0
       60 GETTABLEKS                       R9 R9 K5 ["useEffect"]
       62 NEWCLOSURE                       R10 P2
       63 CAPTURE                          VAL R3
       64 CAPTURE                          VAL R2
       65 NEWTABLE                         R11 0 0
       67 CALL                             R9 2 0
       68 GETUPVAL                         R9 2
       69 GETTABLEKS                       R10 R1 K11 ["inputBeganSignal"]
       71 NEWCLOSURE                       R11 P3
       72 CAPTURE                          VAL R8
       73 NEWTABLE                         R12 0 1
       75 MOVE                             R13 R8
       76 SETLIST                          R12 R13 1 [1]
       78 CALL                             R9 3 0
       79 GETUPVAL                         R9 0
       80 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       82 NEWCLOSURE                       R10 P4
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R2
       86 CAPTURE                          UPVAL U3
       87 CAPTURE                          VAL R5
       88 NEWTABLE                         R11 0 9
       90 GETTABLEKS                       R12 R0 K12 ["trackRef"]
       92 GETTABLEKS                       R13 R0 K13 ["fps"]
       94 GETTABLEKS                       R14 R0 K6 ["intervals"]
       96 GETTABLEKS                       R15 R0 K8 ["disabled"]
       98 GETTABLEKS                       R16 R0 K7 ["duration"]
      100 GETTABLEKS                       R17 R0 K14 ["onMove"]
      102 GETTABLEKS                       R18 R0 K15 ["onResize"]
      104 GETTABLEKS                       R19 R0 K16 ["onPause"]
      106 MOVE                             R20 R6
      107 SETLIST                          R11 R12 9 [1]
      109 CALL                             R9 2 1
      110 GETUPVAL                         R10 0
      111 GETTABLEKS                       R10 R10 K4 ["useCallback"]
      113 NEWCLOSURE                       R11 P5
      114 CAPTURE                          VAL R9
      115 NEWTABLE                         R12 0 1
      117 MOVE                             R13 R9
      118 SETLIST                          R12 R13 1 [1]
      120 CALL                             R10 2 1
      121 GETUPVAL                         R11 0
      122 GETTABLEKS                       R11 R11 K4 ["useCallback"]
      124 NEWCLOSURE                       R12 P6
      125 CAPTURE                          VAL R9
      126 NEWTABLE                         R13 0 1
      128 MOVE                             R14 R9
      129 SETLIST                          R13 R14 1 [1]
      131 CALL                             R11 2 1
      132 GETUPVAL                         R12 2
      133 GETTABLEKS                       R13 R1 K17 ["inputChangedSignal"]
      135 NEWCLOSURE                       R14 P7
      136 CAPTURE                          VAL R2
      137 CAPTURE                          VAL R5
      138 NEWTABLE                         R15 0 0
      140 CALL                             R12 3 0
      141 GETUPVAL                         R12 2
      142 GETTABLEKS                       R13 R1 K18 ["inputEndedSignal"]
      144 NEWCLOSURE                       R14 P8
      145 CAPTURE                          VAL R2
      146 CAPTURE                          UPVAL U3
      147 CAPTURE                          VAL R5
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R7
      150 CAPTURE                          VAL R3
      151 NEWTABLE                         R15 0 2
      153 GETTABLEKS                       R16 R0 K19 ["onSelect"]
      155 GETTABLEKS                       R17 R0 K20 ["onActivate"]
      157 SETLIST                          R15 R16 2 [1]
      159 CALL                             R12 3 0
      160 DUPTABLE                         R12 K26 [{"preview", "busy", "beginMove", "beginResize", "cancel"}]
      161 SETTABLEKS                       R4 R12 K21 ["preview"]
      163 LOADB                            R13 1
      164 JUMPIFNOTEQKNIL                  R4 ; [+2]
      166 MOVE                             R13 R6
      167 SETTABLEKS                       R13 R12 K22 ["busy"]
      169 SETTABLEKS                       R10 R12 K23 ["beginMove"]
      171 SETTABLEKS                       R11 R12 K24 ["beginResize"]
      173 SETTABLEKS                       R8 R12 K25 ["cancel"]
      175 RETURN                           R12 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["AnimationGen"]
       13 GETTABLEKS                       R2 R2 K8 ["Posing"]
       15 GETTABLEKS                       R2 R2 K9 ["PoseInterval"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Parent"]
       22 GETTABLEKS                       R3 R3 K11 ["React"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K12 ["Components"]
       29 GETTABLEKS                       R4 R4 K13 ["Contexts"]
       31 GETTABLEKS                       R4 R4 K14 ["WindowInputContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K15 ["Hooks"]
       38 GETTABLEKS                       R5 R5 K16 ["useEventConnection"]
       40 CALL                             R4 1 1
       41 DUPCLOSURE                       R5 K17 [PROTO_0]
       42 DUPCLOSURE                       R6 K18 [PROTO_15]
       43 CAPTURE                          VAL R2
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R4
       46 CAPTURE                          VAL R1
       47 RETURN                           R6 1
