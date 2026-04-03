PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Time"]
        2 GETTABLEKS                       R4 R1 K0 ["Time"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R1 R0 K0 ["GetKeyframes"]
        2 CALL                             R1 1 1
        3 GETIMPORT                        R2 K3 [table.sort]
        5 MOVE                             R3 R1
        6 DUPCLOSURE                       R4 K4 [PROTO_0]
        7 CALL                             R2 2 0
        8 LOADNIL                          R2
        9 LOADN                            R3 0
       10 GETIMPORT                        R4 K6 [pairs]
       12 MOVE                             R5 R1
       13 CALL                             R4 1 3
       14 FORGPREP_NEXT                    R4
       15 GETTABLEKS                       R10 R8 K7 ["Time"]
       17 SUB                              R9 R10 R3
       18 JUMPIFEQKN                       R9 K8 [0] ; [+5]
       20 JUMPIFNOT                        R2 ; [+2]
       21 JUMPIFNOTLT                      R9 R2 ; [+2]
       23 MOVE                             R2 R9
       24 GETTABLEKS                       R3 R8 K7 ["Time"]
       26 FORGLOOP                         R4 2 ; [-12]
       28 GETUPVAL                         R5 0
       29 GETTABLEKS                       R4 R5 K9 ["DEFAULT_FRAMERATE"]
       31 JUMPIFNOT                        R2 ; [+9]
       32 LOADN                            R5 0
       33 JUMPIFNOTLT                      R5 R2 ; [+7]
       35 GETUPVAL                         R6 1
       36 GETTABLEKS                       R5 R6 K10 ["round"]
       38 DIVRK                            R6 R11 K2 ["sort"]
       39 CALL                             R5 1 1
       40 MOVE                             R4 R5
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R7 R8 K12 ["FRAMERATES"]
       44 GETTABLEKS                       R6 R7 K13 ["FPS_30"]
       46 MOD                              R5 R6 R4
       47 JUMPIFNOTEQKN                    R5 K8 [0] ; [+7]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K12 ["FRAMERATES"]
       52 GETTABLEKS                       R4 R5 K13 ["FPS_30"]
       54 JUMP                             ; [+27]
       55 GETUPVAL                         R8 0
       56 GETTABLEKS                       R7 R8 K12 ["FRAMERATES"]
       58 GETTABLEKS                       R6 R7 K14 ["FPS_24"]
       60 MOD                              R5 R6 R4
       61 JUMPIFNOTEQKN                    R5 K8 [0] ; [+7]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R5 R6 K12 ["FRAMERATES"]
       66 GETTABLEKS                       R4 R5 K14 ["FPS_24"]
       68 JUMP                             ; [+13]
       69 GETUPVAL                         R8 0
       70 GETTABLEKS                       R7 R8 K12 ["FRAMERATES"]
       72 GETTABLEKS                       R6 R7 K15 ["FPS_60"]
       74 MOD                              R5 R6 R4
       75 JUMPIFNOTEQKN                    R5 K8 [0] ; [+6]
       77 GETUPVAL                         R6 0
       78 GETTABLEKS                       R5 R6 K12 ["FRAMERATES"]
       80 GETTABLEKS                       R4 R5 K15 ["FPS_60"]
       82 LOADN                            R7 1
       83 GETUPVAL                         R9 0
       84 GETTABLEKS                       R8 R9 K16 ["MAX_FRAMERATE"]
       86 FASTCALL3                        MATH_CLAMP R4 R7 R8
       88 MOVE                             R6 R4
       89 GETIMPORT                        R5 K19 [math.clamp]
       91 CALL                             R5 3 1
       92 RETURN                           R5 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 LOADK                            R5 K0 ["Keyframe"]
        3 NAMECALL                         R3 R0 K1 ["IsA"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+5]
        7 NAMECALL                         R3 R0 K2 ["GetPoses"]
        9 CALL                             R3 1 1
       10 MOVE                             R2 R3
       11 JUMP                             ; [+21]
       12 LOADK                            R5 K3 ["PoseBase"]
       13 NAMECALL                         R3 R0 K1 ["IsA"]
       15 CALL                             R3 2 1
       16 JUMPIF                           R3 ; [+12]
       17 LOADK                            R5 K4 ["Folder"]
       18 NAMECALL                         R3 R0 K1 ["IsA"]
       20 CALL                             R3 2 1
       21 JUMPIFNOT                        R3 ; [+11]
       22 GETTABLEKS                       R3 R0 K5 ["Name"]
       24 GETUPVAL                         R5 0
       25 GETTABLEKS                       R4 R5 K6 ["FACE_CONTROLS_FOLDER"]
       27 JUMPIFNOTEQ                      R3 R4 ; [+5]
       29 NAMECALL                         R3 R0 K7 ["GetChildren"]
       31 CALL                             R3 1 1
       32 MOVE                             R2 R3
       33 GETIMPORT                        R3 K9 [pairs]
       35 MOVE                             R4 R2
       36 CALL                             R3 1 3
       37 FORGPREP_NEXT                    R3
       38 LOADK                            R10 K3 ["PoseBase"]
       39 NAMECALL                         R8 R7 K1 ["IsA"]
       41 CALL                             R8 2 1
       42 JUMPIFNOT                        R8 ; [+3]
       43 MOVE                             R8 R1
       44 MOVE                             R9 R7
       45 CALL                             R8 1 0
       46 GETUPVAL                         R8 1
       47 MOVE                             R9 R7
       48 MOVE                             R10 R1
       49 CALL                             R8 2 0
       50 FORGLOOP                         R3 2 ; [-13]
       52 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K1 [pairs]
        2 NAMECALL                         R3 R0 K2 ["GetChildren"]
        4 CALL                             R3 1 -1
        5 CALL                             R2 -1 3
        6 FORGPREP_NEXT                    R2
        7 LOADK                            R9 K3 ["KeyframeMarker"]
        8 NAMECALL                         R7 R6 K4 ["IsA"]
       10 CALL                             R7 2 1
       11 JUMPIFNOT                        R7 ; [+3]
       12 MOVE                             R7 R1
       13 MOVE                             R8 R6
       14 CALL                             R7 1 0
       15 FORGLOOP                         R2 2 ; [-9]
       17 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 1
        3 GETIMPORT                        R3 K2 [pairs]
        5 MOVE                             R4 R2
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 LOADK                            R10 K3 ["Folder"]
        9 NAMECALL                         R8 R7 K4 ["IsA"]
       11 CALL                             R8 2 1
       12 JUMPIFNOT                        R8 ; [+11]
       13 MOVE                             R8 R1
       14 MOVE                             R9 R7
       15 CALL                             R8 1 1
       16 GETUPVAL                         R9 0
       17 CALL                             R9 0 1
       18 JUMPIFNOT                        R9 ; [+1]
       19 JUMPIF                           R8 ; [+4]
       20 GETUPVAL                         R9 1
       21 MOVE                             R10 R7
       22 MOVE                             R11 R1
       23 CALL                             R9 2 0
       24 FORGLOOP                         R3 2 ; [-17]
       26 RETURN                           R0 0

PROTO_5:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 JUMPIFEQKNIL                     R2 ; [+39]
        5 GETUPVAL                         R4 0
        6 GETTABLE                         R3 R4 R2
        7 GETUPVAL                         R5 1
        8 GETTABLE                         R4 R5 R2
        9 GETUPVAL                         R5 2
       10 JUMPIFNOT                        R5 ; [+2]
       11 GETUPVAL                         R6 2
       12 GETTABLE                         R5 R6 R2
       13 JUMPIFNOT                        R3 ; [+5]
       14 GETTABLEKS                       R6 R3 K0 ["Part0"]
       16 GETTABLEKS                       R2 R6 K1 ["Name"]
       18 JUMP                             ; [+15]
       19 JUMPIFNOT                        R4 ; [+5]
       20 GETTABLEKS                       R6 R4 K2 ["Parent"]
       22 GETTABLEKS                       R2 R6 K1 ["Name"]
       24 JUMP                             ; [+9]
       25 JUMPIFNOT                        R5 ; [+17]
       26 GETTABLEKS                       R7 R5 K3 ["Attachment0"]
       28 GETTABLEKS                       R6 R7 K2 ["Parent"]
       30 GETTABLEKS                       R2 R6 K1 ["Name"]
       32 JUMP                             ; [+1]
       33 RETURN                           R1 1
       34 LOADN                            R8 1
       35 FASTCALL3                        TABLE_INSERT R1 R8 R2
       37 MOVE                             R7 R1
       38 MOVE                             R9 R2
       39 GETIMPORT                        R6 K6 [table.insert]
       41 CALL                             R6 3 0
       42 JUMPBACK                         ; [-40]
       43 RETURN                           R1 1

PROTO_6:
        0 NEWTABLE                         R5 0 0
        2 LOADNIL                          R6
        3 NEWCLOSURE                       R7 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 GETIMPORT                        R8 K1 [pairs]
        9 MOVE                             R9 R0
       10 CALL                             R8 1 3
       11 FORGPREP_NEXT                    R8
       12 GETTABLEKS                       R13 R12 K2 ["Type"]
       14 GETUPVAL                         R16 0
       15 GETTABLEKS                       R15 R16 K3 ["TRACK_TYPES"]
       17 GETTABLEKS                       R14 R15 K4 ["CFrame"]
       19 JUMPIFNOTEQ                      R13 R14 ; [+6]
       21 MOVE                             R13 R7
       22 MOVE                             R14 R11
       23 CALL                             R13 1 1
       24 SETTABLE                         R13 R5 R11
       25 JUMP                             ; [+97]
       26 GETTABLEKS                       R13 R12 K2 ["Type"]
       28 GETUPVAL                         R16 0
       29 GETTABLEKS                       R15 R16 K3 ["TRACK_TYPES"]
       31 GETTABLEKS                       R14 R15 K5 ["Facs"]
       33 JUMPIFNOTEQ                      R13 R14 ; [+89]
       35 GETUPVAL                         R13 1
       36 CALL                             R13 0 1
       37 JUMPIFNOT                        R13 ; [+45]
       38 JUMPIFEQKNIL                     R4 ; [+17]
       40 LENGTH                           R13 R4
       41 LOADN                            R14 0
       42 JUMPIFNOTLT                      R14 R13 ; [+13]
       44 GETUPVAL                         R15 2
       45 GETTABLEKS                       R14 R15 K6 ["List"]
       47 GETTABLEKS                       R13 R14 K7 ["join"]
       49 MOVE                             R14 R7
       50 GETTABLEN                        R15 R4 1
       51 CALL                             R14 1 1
       52 MOVE                             R15 R4
       53 CALL                             R13 2 1
       54 SETTABLE                         R13 R5 R11
       55 JUMP                             ; [+67]
       56 GETUPVAL                         R15 2
       57 GETTABLEKS                       R14 R15 K6 ["List"]
       59 GETTABLEKS                       R13 R14 K7 ["join"]
       61 MOVE                             R14 R7
       62 GETUPVAL                         R17 0
       63 GETTABLEKS                       R16 R17 K8 ["R15_PARTS"]
       65 GETTABLEKS                       R15 R16 K9 ["Head"]
       67 CALL                             R14 1 1
       68 NEWTABLE                         R15 0 2
       70 GETUPVAL                         R18 0
       71 GETTABLEKS                       R17 R18 K8 ["R15_PARTS"]
       73 GETTABLEKS                       R16 R17 K9 ["Head"]
       75 GETUPVAL                         R18 0
       76 GETTABLEKS                       R17 R18 K10 ["FACE_CONTROLS_FOLDER"]
       78 SETLIST                          R15 R16 2 [1]
       80 CALL                             R13 2 1
       81 SETTABLE                         R13 R5 R11
       82 JUMP                             ; [+40]
       83 JUMPIFNOTEQKNIL                  R6 ; [+24]
       85 GETUPVAL                         R15 2
       86 GETTABLEKS                       R14 R15 K6 ["List"]
       88 GETTABLEKS                       R13 R14 K7 ["join"]
       90 MOVE                             R14 R7
       91 GETUPVAL                         R17 0
       92 GETTABLEKS                       R16 R17 K8 ["R15_PARTS"]
       94 GETTABLEKS                       R15 R16 K9 ["Head"]
       96 CALL                             R14 1 1
       97 NEWTABLE                         R15 0 1
       99 GETUPVAL                         R18 0
      100 GETTABLEKS                       R17 R18 K8 ["R15_PARTS"]
      102 GETTABLEKS                       R16 R17 K9 ["Head"]
      104 SETLIST                          R15 R16 1 [1]
      106 CALL                             R13 2 1
      107 MOVE                             R6 R13
      108 GETUPVAL                         R15 2
      109 GETTABLEKS                       R14 R15 K6 ["List"]
      111 GETTABLEKS                       R13 R14 K7 ["join"]
      113 MOVE                             R14 R6
      114 NEWTABLE                         R15 0 1
      116 GETUPVAL                         R17 0
      117 GETTABLEKS                       R16 R17 K10 ["FACE_CONTROLS_FOLDER"]
      119 SETLIST                          R15 R16 1 [1]
      121 CALL                             R13 2 1
      122 SETTABLE                         R13 R5 R11
      123 FORGLOOP                         R8 2 ; [-112]
      125 RETURN                           R5 1

PROTO_7:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Keyframe"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R1 R2 K4 ["Time"]
        6 SETTABLEKS                       R0 R2 K5 ["Parent"]
        8 RETURN                           R2 1

PROTO_8:
        0 GETTABLE                         R5 R4 R1
        1 JUMPIFNOTEQKNIL                  R5 ; [+2]
        3 RETURN                           R0 0
        4 MOVE                             R6 R0
        5 GETIMPORT                        R7 K1 [ipairs]
        7 MOVE                             R8 R5
        8 CALL                             R7 1 3
        9 FORGPREP_INEXT                   R7
       10 MOVE                             R14 R11
       11 NAMECALL                         R12 R6 K2 ["FindFirstChild"]
       13 CALL                             R12 2 1
       14 JUMPIFNOTEQKNIL                  R12 ; [+24]
       16 GETUPVAL                         R14 0
       17 GETTABLEKS                       R13 R14 K3 ["FACE_CONTROLS_FOLDER"]
       19 JUMPIFNOTEQ                      R11 R13 ; [+8]
       21 GETIMPORT                        R13 K6 [Instance.new]
       23 LOADK                            R14 K7 ["Folder"]
       24 MOVE                             R15 R6
       25 CALL                             R13 2 1
       26 MOVE                             R12 R13
       27 JUMP                             ; [+9]
       28 GETIMPORT                        R13 K6 [Instance.new]
       30 LOADK                            R14 K8 ["Pose"]
       31 MOVE                             R15 R6
       32 CALL                             R13 2 1
       33 MOVE                             R12 R13
       34 LOADN                            R13 0
       35 SETTABLEKS                       R13 R12 K9 ["Weight"]
       37 SETTABLEKS                       R11 R12 K10 ["Name"]
       39 MOVE                             R6 R12
       40 FORGLOOP                         R7 2 [inext] ; [-31]
       42 MOVE                             R9 R1
       43 NAMECALL                         R7 R6 K2 ["FindFirstChild"]
       45 CALL                             R7 2 1
       46 GETUPVAL                         R10 0
       47 GETTABLEKS                       R9 R10 K11 ["TRACK_TYPES"]
       49 GETTABLEKS                       R8 R9 K12 ["Facs"]
       51 JUMPIFNOTEQ                      R2 R8 ; [+14]
       53 MOVE                             R8 R7
       54 JUMPIF                           R8 ; [+5]
       55 GETIMPORT                        R8 K6 [Instance.new]
       57 LOADK                            R9 K13 ["NumberPose"]
       58 MOVE                             R10 R6
       59 CALL                             R8 2 1
       60 MOVE                             R7 R8
       61 GETTABLEKS                       R8 R3 K14 ["Value"]
       63 SETTABLEKS                       R8 R7 K14 ["Value"]
       65 JUMP                             ; [+19]
       66 GETUPVAL                         R10 0
       67 GETTABLEKS                       R9 R10 K11 ["TRACK_TYPES"]
       69 GETTABLEKS                       R8 R9 K15 ["CFrame"]
       71 JUMPIFNOTEQ                      R2 R8 ; [+13]
       73 MOVE                             R8 R7
       74 JUMPIF                           R8 ; [+5]
       75 GETIMPORT                        R8 K6 [Instance.new]
       77 LOADK                            R9 K8 ["Pose"]
       78 MOVE                             R10 R6
       79 CALL                             R8 2 1
       80 MOVE                             R7 R8
       81 GETTABLEKS                       R8 R3 K14 ["Value"]
       83 SETTABLEKS                       R8 R7 K15 ["CFrame"]
       85 SETTABLEKS                       R1 R7 K10 ["Name"]
       87 LOADN                            R8 1
       88 SETTABLEKS                       R8 R7 K9 ["Weight"]
       90 GETTABLEKS                       R9 R3 K16 ["EasingStyle"]
       92 GETTABLEKS                       R8 R9 K10 ["Name"]
       94 SETTABLEKS                       R8 R7 K16 ["EasingStyle"]
       96 GETTABLEKS                       R9 R3 K17 ["EasingDirection"]
       98 GETTABLEKS                       R8 R9 K10 ["Name"]
      100 SETTABLEKS                       R8 R7 K17 ["EasingDirection"]
      102 RETURN                           R0 0

PROTO_9:
        0 GETTABLE                         R3 R2 R1
        1 JUMPIFNOTEQKNIL                  R3 ; [+2]
        3 RETURN                           R0 0
        4 MOVE                             R4 R0
        5 GETIMPORT                        R5 K1 [ipairs]
        7 MOVE                             R6 R3
        8 CALL                             R5 1 3
        9 FORGPREP_INEXT                   R5
       10 MOVE                             R12 R9
       11 NAMECALL                         R10 R4 K2 ["FindFirstChild"]
       13 CALL                             R10 2 1
       14 JUMPIF                           R10 ; [+5]
       15 GETIMPORT                        R10 K5 [Instance.new]
       17 LOADK                            R11 K6 ["Folder"]
       18 MOVE                             R12 R4
       19 CALL                             R10 2 1
       20 MOVE                             R4 R10
       21 SETTABLEKS                       R9 R4 K7 ["Name"]
       23 FORGLOOP                         R5 2 [inext] ; [-14]
       25 RETURN                           R4 1

PROTO_10:
        0 JUMPIFNOT                        R0 ; [+73]
        1 LOADNIL                          R2
        2 GETIMPORT                        R3 K1 [ipairs]
        4 GETTABLEKS                       R4 R0 K2 ["Keyframes"]
        6 CALL                             R3 1 3
        7 FORGPREP_INEXT                   R3
        8 GETTABLEKS                       R9 R0 K3 ["Data"]
       10 GETTABLE                         R8 R9 R7
       11 GETUPVAL                         R11 0
       12 GETTABLEKS                       R10 R11 K4 ["TICK_FREQUENCY"]
       14 DIV                              R9 R7 R10
       15 GETIMPORT                        R10 K7 [FloatCurveKey.new]
       17 MOVE                             R11 R9
       18 GETTABLEKS                       R12 R8 K8 ["Value"]
       20 GETTABLEKS                       R13 R8 K9 ["InterpolationMode"]
       22 JUMPIF                           R13 ; [+2]
       23 GETIMPORT                        R13 K13 [Enum.KeyInterpolationMode.Cubic]
       25 CALL                             R10 3 1
       26 JUMPIFNOT                        R2 ; [+18]
       27 GETTABLEKS                       R11 R2 K9 ["InterpolationMode"]
       29 GETIMPORT                        R12 K13 [Enum.KeyInterpolationMode.Cubic]
       31 JUMPIFNOTEQ                      R11 R12 ; [+13]
       33 GETTABLEKS                       R11 R8 K14 ["LeftSlope"]
       35 JUMPIFNOT                        R11 ; [+9]
       36 GETTABLEKS                       R12 R8 K14 ["LeftSlope"]
       38 GETUPVAL                         R14 0
       39 GETTABLEKS                       R13 R14 K4 ["TICK_FREQUENCY"]
       41 MUL                              R11 R12 R13
       42 SETTABLEKS                       R11 R10 K15 ["LeftTangent"]
       44 JUMP                             ; [+3]
       45 LOADNIL                          R11
       46 SETTABLEKS                       R11 R10 K15 ["LeftTangent"]
       48 GETTABLEKS                       R11 R8 K9 ["InterpolationMode"]
       50 GETIMPORT                        R12 K13 [Enum.KeyInterpolationMode.Cubic]
       52 JUMPIFNOTEQ                      R11 R12 ; [+14]
       54 GETTABLEKS                       R12 R8 K16 ["RightSlope"]
       56 JUMPIFNOT                        R12 ; [+7]
       57 GETTABLEKS                       R12 R8 K16 ["RightSlope"]
       59 GETUPVAL                         R14 0
       60 GETTABLEKS                       R13 R14 K4 ["TICK_FREQUENCY"]
       62 MUL                              R11 R12 R13
       63 JUMPIF                           R11 ; [+1]
       64 LOADNIL                          R11
       65 SETTABLEKS                       R11 R10 K17 ["RightTangent"]
       67 MOVE                             R13 R10
       68 NAMECALL                         R11 R1 K18 ["InsertKey"]
       70 CALL                             R11 2 0
       71 MOVE                             R2 R8
       72 FORGLOOP                         R3 2 [inext] ; [-65]
       74 RETURN                           R0 0

PROTO_11:
        0 LOADNIL                          R2
        1 GETIMPORT                        R3 K1 [ipairs]
        3 GETTABLEKS                       R4 R0 K2 ["Keyframes"]
        5 CALL                             R3 1 3
        6 FORGPREP_INEXT                   R3
        7 GETTABLEKS                       R9 R0 K3 ["Data"]
        9 GETTABLE                         R8 R9 R7
       10 GETUPVAL                         R11 0
       11 GETTABLEKS                       R10 R11 K4 ["TICK_FREQUENCY"]
       13 DIV                              R9 R7 R10
       14 GETIMPORT                        R10 K7 [RotationCurveKey.new]
       16 MOVE                             R11 R9
       17 GETTABLEKS                       R12 R8 K8 ["Value"]
       19 GETTABLEKS                       R13 R8 K9 ["InterpolationMode"]
       21 CALL                             R10 3 1
       22 JUMPIFNOT                        R2 ; [+18]
       23 GETTABLEKS                       R11 R2 K9 ["InterpolationMode"]
       25 GETIMPORT                        R12 K13 [Enum.KeyInterpolationMode.Cubic]
       27 JUMPIFNOTEQ                      R11 R12 ; [+13]
       29 GETTABLEKS                       R11 R8 K14 ["LeftSlope"]
       31 JUMPIFNOT                        R11 ; [+9]
       32 GETTABLEKS                       R12 R8 K14 ["LeftSlope"]
       34 GETUPVAL                         R14 0
       35 GETTABLEKS                       R13 R14 K4 ["TICK_FREQUENCY"]
       37 MUL                              R11 R12 R13
       38 SETTABLEKS                       R11 R10 K15 ["LeftTangent"]
       40 JUMP                             ; [+3]
       41 LOADNIL                          R11
       42 SETTABLEKS                       R11 R10 K15 ["LeftTangent"]
       44 GETTABLEKS                       R11 R8 K9 ["InterpolationMode"]
       46 GETIMPORT                        R12 K13 [Enum.KeyInterpolationMode.Cubic]
       48 JUMPIFNOTEQ                      R11 R12 ; [+14]
       50 GETTABLEKS                       R12 R8 K16 ["RightSlope"]
       52 JUMPIFNOT                        R12 ; [+7]
       53 GETTABLEKS                       R12 R8 K16 ["RightSlope"]
       55 GETUPVAL                         R14 0
       56 GETTABLEKS                       R13 R14 K4 ["TICK_FREQUENCY"]
       58 MUL                              R11 R12 R13
       59 JUMPIF                           R11 ; [+1]
       60 LOADNIL                          R11
       61 SETTABLEKS                       R11 R10 K17 ["RightTangent"]
       63 MOVE                             R13 R10
       64 NAMECALL                         R11 R1 K18 ["InsertKey"]
       66 CALL                             R11 2 0
       67 MOVE                             R2 R8
       68 FORGLOOP                         R3 2 [inext] ; [-62]
       70 RETURN                           R0 0

PROTO_12:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [Instance.new]
        5 LOADK                            R2 K3 ["Vector3Curve"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R4 R0 K4 ["Components"]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R6 R7 K5 ["PROPERTY_KEYS"]
       13 GETTABLEKS                       R5 R6 K6 ["X"]
       15 GETTABLE                         R3 R4 R5
       16 NAMECALL                         R4 R1 K6 ["X"]
       18 CALL                             R4 1 -1
       19 CALL                             R2 -1 0
       20 GETUPVAL                         R2 0
       21 GETTABLEKS                       R4 R0 K4 ["Components"]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R6 R7 K5 ["PROPERTY_KEYS"]
       26 GETTABLEKS                       R5 R6 K7 ["Y"]
       28 GETTABLE                         R3 R4 R5
       29 NAMECALL                         R4 R1 K7 ["Y"]
       31 CALL                             R4 1 -1
       32 CALL                             R2 -1 0
       33 GETUPVAL                         R2 0
       34 GETTABLEKS                       R4 R0 K4 ["Components"]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K5 ["PROPERTY_KEYS"]
       39 GETTABLEKS                       R5 R6 K8 ["Z"]
       41 GETTABLE                         R3 R4 R5
       42 NAMECALL                         R4 R1 K8 ["Z"]
       44 CALL                             R4 1 -1
       45 CALL                             R2 -1 0
       46 RETURN                           R1 1

PROTO_13:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [Instance.new]
        5 LOADK                            R2 K3 ["RotationCurve"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_14:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [Instance.new]
        5 LOADK                            R2 K3 ["EulerRotationCurve"]
        6 CALL                             R1 1 1
        7 GETTABLEKS                       R2 R0 K4 ["EulerAnglesOrder"]
        9 SETTABLEKS                       R2 R1 K5 ["RotationOrder"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R4 R0 K6 ["Components"]
       14 GETUPVAL                         R7 1
       15 GETTABLEKS                       R6 R7 K7 ["PROPERTY_KEYS"]
       17 GETTABLEKS                       R5 R6 K8 ["X"]
       19 GETTABLE                         R3 R4 R5
       20 NAMECALL                         R4 R1 K8 ["X"]
       22 CALL                             R4 1 -1
       23 CALL                             R2 -1 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R4 R0 K6 ["Components"]
       27 GETUPVAL                         R7 1
       28 GETTABLEKS                       R6 R7 K7 ["PROPERTY_KEYS"]
       30 GETTABLEKS                       R5 R6 K9 ["Y"]
       32 GETTABLE                         R3 R4 R5
       33 NAMECALL                         R4 R1 K9 ["Y"]
       35 CALL                             R4 1 -1
       36 CALL                             R2 -1 0
       37 GETUPVAL                         R2 0
       38 GETTABLEKS                       R4 R0 K6 ["Components"]
       40 GETUPVAL                         R7 1
       41 GETTABLEKS                       R6 R7 K7 ["PROPERTY_KEYS"]
       43 GETTABLEKS                       R5 R6 K10 ["Z"]
       45 GETTABLE                         R3 R4 R5
       46 NAMECALL                         R4 R1 K10 ["Z"]
       48 CALL                             R4 1 -1
       49 CALL                             R2 -1 0
       50 RETURN                           R1 1

PROTO_15:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETTABLEKS                       R1 R0 K0 ["Type"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["TRACK_TYPES"]
        8 GETTABLEKS                       R2 R3 K2 ["Quaternion"]
       10 JUMPIFNOTEQ                      R1 R2 ; [+14]
       12 JUMPIF                           R0 ; [+2]
       13 LOADNIL                          R1
       14 RETURN                           R1 1
       15 GETIMPORT                        R2 K5 [Instance.new]
       17 LOADK                            R3 K6 ["RotationCurve"]
       18 CALL                             R2 1 1
       19 GETUPVAL                         R3 1
       20 MOVE                             R4 R0
       21 MOVE                             R5 R2
       22 CALL                             R3 2 0
       23 MOVE                             R1 R2
       24 RETURN                           R1 1
       25 GETUPVAL                         R1 2
       26 MOVE                             R2 R0
       27 CALL                             R1 1 1
       28 RETURN                           R1 1

PROTO_16:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [Instance.new]
        5 LOADK                            R2 K3 ["FloatCurve"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_17:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [Instance.new]
        5 LOADK                            R2 K3 ["FloatCurve"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 0
       11 RETURN                           R1 1

PROTO_18:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 NEWTABLE                         R1 4 0
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["TRACK_TYPES"]
        8 GETTABLEKS                       R2 R3 K1 ["Position"]
       10 GETUPVAL                         R3 1
       11 SETTABLE                         R3 R1 R2
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["TRACK_TYPES"]
       15 GETTABLEKS                       R2 R3 K2 ["Quaternion"]
       17 GETUPVAL                         R3 2
       18 SETTABLE                         R3 R1 R2
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K0 ["TRACK_TYPES"]
       22 GETTABLEKS                       R2 R3 K3 ["EulerAngles"]
       24 GETUPVAL                         R3 3
       25 SETTABLE                         R3 R1 R2
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R3 R4 K0 ["TRACK_TYPES"]
       29 GETTABLEKS                       R2 R3 K4 ["Number"]
       31 GETUPVAL                         R3 4
       32 SETTABLE                         R3 R1 R2
       33 GETTABLEKS                       R3 R0 K5 ["Type"]
       35 GETTABLE                         R2 R1 R3
       36 MOVE                             R3 R0
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1

PROTO_19:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [Instance.new]
        5 LOADK                            R2 K3 ["Folder"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R5 R6 K4 ["COMPONENT_TRACK_TYPES"]
       10 GETUPVAL                         R8 0
       11 GETTABLEKS                       R7 R8 K5 ["TRACK_TYPES"]
       13 GETTABLEKS                       R6 R7 K6 ["IkTarget"]
       15 GETTABLE                         R2 R5 R6
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETUPVAL                         R7 1
       20 GETTABLEKS                       R9 R0 K7 ["Components"]
       22 GETTABLE                         R8 R9 R5
       23 CALL                             R7 1 1
       24 JUMPIFNOT                        R7 ; [+4]
       25 SETTABLEKS                       R5 R7 K8 ["Name"]
       27 SETTABLEKS                       R1 R7 K9 ["Parent"]
       29 FORGLOOP                         R2 1 ; [-11]
       31 RETURN                           R1 1

PROTO_20:
        0 JUMPIF                           R0 ; [+2]
        1 LOADNIL                          R1
        2 RETURN                           R1 1
        3 GETIMPORT                        R1 K2 [Instance.new]
        5 LOADK                            R2 K3 ["Folder"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K4 ["FOLDERS"]
       10 GETTABLEKS                       R2 R3 K5 ["IkData"]
       12 SETTABLEKS                       R2 R1 K6 ["Name"]
       14 GETTABLEKS                       R2 R0 K7 ["Components"]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETUPVAL                         R7 1
       20 MOVE                             R8 R6
       21 CALL                             R7 1 1
       22 SETTABLEKS                       R5 R7 K6 ["Name"]
       24 SETTABLEKS                       R1 R7 K8 ["Parent"]
       26 FORGLOOP                         R2 2 ; [-8]
       28 RETURN                           R1 1

PROTO_21:
        0 GETTABLEKS                       R3 R0 K0 ["Metadata"]
        2 GETTABLEKS                       R2 R3 K1 ["IkTargets"]
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETIMPORT                        R2 K3 [next]
        7 GETTABLEKS                       R4 R0 K0 ["Metadata"]
        9 GETTABLEKS                       R3 R4 K1 ["IkTargets"]
       11 CALL                             R2 1 1
       12 JUMPIF                           R2 ; [+1]
       13 RETURN                           R0 0
       14 GETIMPORT                        R2 K6 [Instance.new]
       16 LOADK                            R3 K7 ["Folder"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R6 R0 K0 ["Metadata"]
       20 GETTABLEKS                       R3 R6 K1 ["IkTargets"]
       22 LOADNIL                          R4
       23 LOADNIL                          R5
       24 FORGPREP                         R3
       25 GETIMPORT                        R8 K6 [Instance.new]
       27 LOADK                            R9 K8 ["ObjectValue"]
       28 CALL                             R8 1 1
       29 SETTABLEKS                       R6 R8 K9 ["Name"]
       31 SETTABLEKS                       R7 R8 K10 ["Value"]
       33 SETTABLEKS                       R2 R8 K11 ["Parent"]
       35 FORGLOOP                         R3 2 ; [-11]
       37 GETUPVAL                         R5 0
       38 GETTABLEKS                       R4 R5 K12 ["FOLDERS"]
       40 GETTABLEKS                       R3 R4 K1 ["IkTargets"]
       42 SETTABLEKS                       R3 R2 K9 ["Name"]
       44 SETTABLEKS                       R1 R2 K11 ["Parent"]
       46 RETURN                           R0 0

PROTO_22:
        0 LOADN                            R3 0
        1 LOADN                            R4 0
        2 LOADB                            R5 1
        3 SETTABLEKS                       R5 R0 K0 ["IsCurveTrack"]
        5 GETUPVAL                         R5 0
        6 CALL                             R5 0 1
        7 JUMPIFNOT                        R5 ; [+21]
        8 LOADK                            R7 K1 ["RotationCurve"]
        9 NAMECALL                         R5 R1 K2 ["IsA"]
       11 CALL                             R5 2 1
       12 JUMPIFNOT                        R5 ; [+6]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K3 ["TRACK_TYPES"]
       16 GETTABLEKS                       R2 R5 K4 ["Quaternion"]
       18 JUMP                             ; [+10]
       19 LOADK                            R7 K5 ["EulerRotationCurve"]
       20 NAMECALL                         R5 R1 K2 ["IsA"]
       22 CALL                             R5 2 1
       23 JUMPIFNOT                        R5 ; [+5]
       24 GETUPVAL                         R6 1
       25 GETTABLEKS                       R5 R6 K3 ["TRACK_TYPES"]
       27 GETTABLEKS                       R2 R5 K6 ["EulerAngles"]
       29 GETUPVAL                         R7 1
       30 GETTABLEKS                       R6 R7 K3 ["TRACK_TYPES"]
       32 GETTABLEKS                       R5 R6 K7 ["Number"]
       34 JUMPIFEQ                         R2 R5 ; [+22]
       36 GETUPVAL                         R7 1
       37 GETTABLEKS                       R6 R7 K3 ["TRACK_TYPES"]
       39 GETTABLEKS                       R5 R6 K8 ["Angle"]
       41 JUMPIFEQ                         R2 R5 ; [+15]
       43 GETUPVAL                         R7 1
       44 GETTABLEKS                       R6 R7 K3 ["TRACK_TYPES"]
       46 GETTABLEKS                       R5 R6 K9 ["Facs"]
       48 JUMPIFEQ                         R2 R5 ; [+8]
       50 GETUPVAL                         R7 1
       51 GETTABLEKS                       R6 R7 K3 ["TRACK_TYPES"]
       53 GETTABLEKS                       R5 R6 K4 ["Quaternion"]
       55 JUMPIFNOTEQ                      R2 R5 ; [+91]
       57 NEWTABLE                         R5 0 0
       59 SETTABLEKS                       R5 R0 K10 ["Keyframes"]
       61 NEWTABLE                         R5 0 0
       63 SETTABLEKS                       R5 R0 K11 ["Data"]
       65 JUMPIFNOT                        R1 ; [+4]
       66 NAMECALL                         R5 R1 K12 ["GetKeys"]
       68 CALL                             R5 1 1
       69 JUMP                             ; [+2]
       70 NEWTABLE                         R5 0 0
       72 GETIMPORT                        R6 K14 [ipairs]
       74 MOVE                             R7 R5
       75 CALL                             R6 1 3
       76 FORGPREP_INEXT                   R6
       77 GETUPVAL                         R12 2
       78 GETTABLEKS                       R11 R12 K15 ["getNearestTick"]
       80 GETTABLEKS                       R13 R10 K16 ["Time"]
       82 GETUPVAL                         R15 1
       83 GETTABLEKS                       R14 R15 K17 ["TICK_FREQUENCY"]
       85 MUL                              R12 R13 R14
       86 CALL                             R11 1 1
       87 GETUPVAL                         R12 0
       88 CALL                             R12 0 1
       89 JUMPIFNOT                        R12 ; [+9]
       90 FASTCALL2                        MATH_MAX R3 R11 ; [+5]
       92 MOVE                             R13 R3
       93 MOVE                             R14 R11
       94 GETIMPORT                        R12 K20 [math.max]
       96 CALL                             R12 2 1
       97 MOVE                             R3 R12
       98 JUMP                             ; [+3]
       99 JUMPIFNOTLT                      R3 R11 ; [+2]
      101 MOVE                             R3 R11
      102 GETTABLEKS                       R13 R10 K21 ["LeftTangent"]
      104 JUMPIFNOT                        R13 ; [+7]
      105 GETTABLEKS                       R13 R10 K21 ["LeftTangent"]
      107 GETUPVAL                         R15 1
      108 GETTABLEKS                       R14 R15 K17 ["TICK_FREQUENCY"]
      110 DIV                              R12 R13 R14
      111 JUMPIF                           R12 ; [+1]
      112 LOADNIL                          R12
      113 GETTABLEKS                       R14 R10 K22 ["RightTangent"]
      115 JUMPIFNOT                        R14 ; [+7]
      116 GETTABLEKS                       R14 R10 K22 ["RightTangent"]
      118 GETUPVAL                         R16 1
      119 GETTABLEKS                       R15 R16 K17 ["TICK_FREQUENCY"]
      121 DIV                              R13 R14 R15
      122 JUMPIF                           R13 ; [+1]
      123 LOADNIL                          R13
      124 DUPTABLE                         R14 K27 [{"Value", "InterpolationMode", "LeftSlope", "RightSlope"}]
      125 GETTABLEKS                       R15 R10 K23 ["Value"]
      127 SETTABLEKS                       R15 R14 K23 ["Value"]
      129 GETTABLEKS                       R15 R10 K28 ["Interpolation"]
      131 SETTABLEKS                       R15 R14 K24 ["InterpolationMode"]
      133 SETTABLEKS                       R12 R14 K25 ["LeftSlope"]
      135 SETTABLEKS                       R13 R14 K26 ["RightSlope"]
      137 GETUPVAL                         R16 3
      138 GETTABLEKS                       R15 R16 K29 ["addKeyframe"]
      140 MOVE                             R16 R0
      141 MOVE                             R17 R11
      142 MOVE                             R18 R14
      143 CALL                             R15 3 0
      144 FORGLOOP                         R6 2 [inext] ; [-68]
      146 RETURN                           R3 1
      147 GETUPVAL                         R5 0
      148 CALL                             R5 0 1
      149 JUMPIFNOT                        R5 ; [+3]
      150 GETTABLEKS                       R5 R0 K30 ["Components"]
      152 JUMPIF                           R5 ; [+4]
      153 NEWTABLE                         R5 0 0
      155 SETTABLEKS                       R5 R0 K30 ["Components"]
      157 GETIMPORT                        R5 K14 [ipairs]
      159 GETUPVAL                         R10 1
      160 GETTABLEKS                       R9 R10 K31 ["COMPONENT_TRACK_TYPES"]
      162 GETTABLE                         R8 R9 R2
      163 GETTABLEKS                       R6 R8 K32 ["_Order"]
      165 CALL                             R5 1 3
      166 FORGPREP_INEXT                   R5
      167 MOVE                             R10 R1
      168 JUMPIFNOT                        R10 ; [+4]
      169 MOVE                             R12 R9
      170 NAMECALL                         R10 R1 K33 ["FindFirstChild"]
      172 CALL                             R10 2 1
      173 JUMPIFEQKNIL                     R10 ; [+83]
      175 LOADNIL                          R11
      176 GETTABLEKS                       R12 R10 K34 ["ClassName"]
      178 JUMPIFNOTEQKS                    R12 K1 ["RotationCurve"] ; [+7]
      180 GETUPVAL                         R13 1
      181 GETTABLEKS                       R12 R13 K3 ["TRACK_TYPES"]
      183 GETTABLEKS                       R11 R12 K4 ["Quaternion"]
      185 JUMP                             ; [+15]
      186 GETTABLEKS                       R12 R10 K34 ["ClassName"]
      188 JUMPIFNOTEQKS                    R12 K5 ["EulerRotationCurve"] ; [+7]
      190 GETUPVAL                         R13 1
      191 GETTABLEKS                       R12 R13 K3 ["TRACK_TYPES"]
      193 GETTABLEKS                       R11 R12 K6 ["EulerAngles"]
      195 JUMP                             ; [+5]
      196 GETUPVAL                         R14 1
      197 GETTABLEKS                       R13 R14 K31 ["COMPONENT_TRACK_TYPES"]
      199 GETTABLE                         R12 R13 R2
      200 GETTABLE                         R11 R12 R9
      201 LOADNIL                          R12
      202 GETUPVAL                         R13 0
      203 CALL                             R13 0 1
      204 JUMPIFNOT                        R13 ; [+11]
      205 GETTABLEKS                       R14 R0 K30 ["Components"]
      207 GETTABLE                         R13 R14 R9
      208 JUMPIF                           R13 ; [+5]
      209 GETUPVAL                         R14 4
      210 GETTABLEKS                       R13 R14 K35 ["track"]
      212 MOVE                             R14 R11
      213 CALL                             R13 1 1
      214 MOVE                             R12 R13
      215 JUMP                             ; [+6]
      216 GETUPVAL                         R14 4
      217 GETTABLEKS                       R13 R14 K35 ["track"]
      219 MOVE                             R14 R11
      220 CALL                             R13 1 1
      221 MOVE                             R12 R13
      222 LOADB                            R13 1
      223 SETTABLEKS                       R13 R12 K0 ["IsCurveTrack"]
      225 GETUPVAL                         R13 0
      226 CALL                             R13 0 1
      227 JUMPIFNOT                        R13 ; [+14]
      228 JUMPIFEQKNIL                     R10 ; [+19]
      230 MOVE                             R14 R3
      231 GETUPVAL                         R15 5
      232 MOVE                             R16 R12
      233 MOVE                             R17 R10
      234 MOVE                             R18 R11
      235 CALL                             R15 3 -1
      236 FASTCALL                         MATH_MAX ; [+2]
      237 GETIMPORT                        R13 K20 [math.max]
      239 CALL                             R13 -1 1
      240 MOVE                             R3 R13
      241 JUMP                             ; [+6]
      242 GETUPVAL                         R13 5
      243 MOVE                             R14 R12
      244 MOVE                             R15 R10
      245 MOVE                             R16 R11
      246 CALL                             R13 3 1
      247 MOVE                             R4 R13
      248 GETTABLEKS                       R13 R0 K30 ["Components"]
      250 SETTABLE                         R12 R13 R9
      251 GETUPVAL                         R13 0
      252 CALL                             R13 0 1
      253 JUMPIF                           R13 ; [+3]
      254 JUMPIFNOTLT                      R3 R4 ; [+2]
      256 MOVE                             R3 R4
      257 FORGLOOP                         R5 2 [inext] ; [-91]
      259 GETUPVAL                         R10 1
      260 GETTABLEKS                       R9 R10 K31 ["COMPONENT_TRACK_TYPES"]
      262 GETTABLE                         R8 R9 R2
      263 GETTABLEKS                       R5 R8 K36 ["_OptionalOrder"]
      265 JUMPIF                           R5 ; [+2]
      266 NEWTABLE                         R5 0 0
      268 LOADNIL                          R6
      269 LOADNIL                          R7
      270 FORGPREP                         R5
      271 MOVE                             R12 R9
      272 NAMECALL                         R10 R1 K33 ["FindFirstChild"]
      274 CALL                             R10 2 1
      275 JUMPIFEQKNIL                     R10 ; [+18]
      277 GETUPVAL                         R13 1
      278 GETTABLEKS                       R12 R13 K37 ["PROPERTY_KEYS"]
      280 GETTABLEKS                       R11 R12 K38 ["IkData"]
      282 JUMPIFNOTEQ                      R9 R11 ; [+11]
      284 MOVE                             R12 R3
      285 GETUPVAL                         R13 6
      286 MOVE                             R14 R0
      287 MOVE                             R15 R10
      288 CALL                             R13 2 -1
      289 FASTCALL                         MATH_MAX ; [+2]
      290 GETIMPORT                        R11 K20 [math.max]
      292 CALL                             R11 -1 1
      293 MOVE                             R3 R11
      294 FORGLOOP                         R5 2 ; [-24]
      296 JUMPIFNOT                        R1 ; [+11]
      297 GETUPVAL                         R7 1
      298 GETTABLEKS                       R6 R7 K3 ["TRACK_TYPES"]
      300 GETTABLEKS                       R5 R6 K6 ["EulerAngles"]
      302 JUMPIFNOTEQ                      R2 R5 ; [+5]
      304 GETTABLEKS                       R5 R1 K39 ["RotationOrder"]
      306 SETTABLEKS                       R5 R0 K40 ["EulerAnglesOrder"]
      308 RETURN                           R3 1

PROTO_23:
        0 LOADN                            R2 0
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R3 R4 K0 ["track"]
        4 GETUPVAL                         R6 1
        5 GETTABLEKS                       R5 R6 K1 ["TRACK_TYPES"]
        7 GETTABLEKS                       R4 R5 K2 ["IkData"]
        9 CALL                             R3 1 1
       10 LOADB                            R4 1
       11 SETTABLEKS                       R4 R3 K3 ["IsCurveTrack"]
       13 NEWTABLE                         R4 0 0
       15 SETTABLEKS                       R4 R3 K4 ["Components"]
       17 NAMECALL                         R4 R1 K5 ["GetChildren"]
       19 CALL                             R4 1 1
       20 MOVE                             R5 R4
       21 LOADNIL                          R6
       22 LOADNIL                          R7
       23 FORGPREP                         R5
       24 GETUPVAL                         R11 0
       25 GETTABLEKS                       R10 R11 K0 ["track"]
       27 GETUPVAL                         R13 1
       28 GETTABLEKS                       R12 R13 K1 ["TRACK_TYPES"]
       30 GETTABLEKS                       R11 R12 K6 ["IkTarget"]
       32 CALL                             R10 1 1
       33 LOADB                            R11 1
       34 SETTABLEKS                       R11 R10 K3 ["IsCurveTrack"]
       36 GETUPVAL                         R11 2
       37 MOVE                             R12 R10
       38 MOVE                             R13 R9
       39 GETUPVAL                         R16 1
       40 GETTABLEKS                       R15 R16 K1 ["TRACK_TYPES"]
       42 GETTABLEKS                       R14 R15 K6 ["IkTarget"]
       44 CALL                             R11 3 1
       45 JUMPIFNOTLT                      R2 R11 ; [+2]
       47 MOVE                             R2 R11
       48 GETTABLEKS                       R12 R3 K4 ["Components"]
       50 GETTABLEKS                       R13 R9 K7 ["Name"]
       52 SETTABLE                         R10 R12 R13
       53 FORGLOOP                         R5 2 ; [-30]
       55 GETTABLEKS                       R5 R0 K4 ["Components"]
       57 GETUPVAL                         R8 1
       58 GETTABLEKS                       R7 R8 K8 ["PROPERTY_KEYS"]
       60 GETTABLEKS                       R6 R7 K2 ["IkData"]
       62 SETTABLE                         R3 R5 R6
       63 RETURN                           R2 1

PROTO_24:
        0 NAMECALL                         R2 R1 K0 ["GetChildren"]
        2 CALL                             R2 1 1
        3 MOVE                             R3 R2
        4 LOADNIL                          R4
        5 LOADNIL                          R5
        6 FORGPREP                         R3
        7 LOADK                            R10 K1 ["ObjectValue"]
        8 NAMECALL                         R8 R7 K2 ["IsA"]
       10 CALL                             R8 2 1
       11 JUMPIFNOT                        R8 ; [+28]
       12 GETTABLEKS                       R9 R0 K3 ["Metadata"]
       14 GETTABLEKS                       R8 R9 K4 ["IkTargets"]
       16 JUMPIF                           R8 ; [+6]
       17 GETTABLEKS                       R8 R0 K3 ["Metadata"]
       19 NEWTABLE                         R9 0 0
       21 SETTABLEKS                       R9 R8 K4 ["IkTargets"]
       23 GETTABLEKS                       R10 R0 K3 ["Metadata"]
       25 GETTABLEKS                       R9 R10 K4 ["IkTargets"]
       27 FASTCALL1                        ASSERT R9 ; [+2]
       28 GETIMPORT                        R8 K6 [assert]
       30 CALL                             R8 1 0
       31 GETTABLEKS                       R9 R0 K3 ["Metadata"]
       33 GETTABLEKS                       R8 R9 K4 ["IkTargets"]
       35 GETTABLEKS                       R9 R7 K7 ["Name"]
       37 GETTABLEKS                       R10 R7 K8 ["Value"]
       39 SETTABLE                         R10 R8 R9
       40 FORGLOOP                         R3 2 ; [-34]
       42 RETURN                           R0 0

PROTO_25:
        0 LOADN                            R2 0
        1 NAMECALL                         R3 R1 K0 ["GetChildren"]
        3 CALL                             R3 1 1
        4 GETIMPORT                        R4 K2 [pairs]
        6 MOVE                             R5 R3
        7 CALL                             R4 1 3
        8 FORGPREP_NEXT                    R4
        9 LOADK                            R11 K3 ["FloatCurve"]
       10 NAMECALL                         R9 R8 K4 ["IsA"]
       12 CALL                             R9 2 1
       13 JUMPIFNOT                        R9 ; [+25]
       14 GETTABLEKS                       R9 R8 K5 ["Name"]
       16 GETUPVAL                         R11 0
       17 GETTABLEKS                       R10 R11 K6 ["addTrack"]
       19 MOVE                             R11 R0
       20 MOVE                             R12 R9
       21 GETUPVAL                         R15 1
       22 GETTABLEKS                       R14 R15 K7 ["TRACK_TYPES"]
       24 GETTABLEKS                       R13 R14 K8 ["Facs"]
       26 CALL                             R10 3 1
       27 GETUPVAL                         R11 2
       28 MOVE                             R12 R10
       29 MOVE                             R13 R8
       30 GETUPVAL                         R16 1
       31 GETTABLEKS                       R15 R16 K7 ["TRACK_TYPES"]
       33 GETTABLEKS                       R14 R15 K8 ["Facs"]
       35 CALL                             R11 3 1
       36 JUMPIFNOTLT                      R2 R11 ; [+2]
       38 MOVE                             R2 R11
       39 FORGLOOP                         R4 2 ; [-31]
       41 RETURN                           R2 1

PROTO_26:
        0 GETTABLEKS                       R1 R0 K0 ["Name"]
        2 LOADK                            R5 K1 ["Pose"]
        3 NAMECALL                         R3 R0 K2 ["IsA"]
        5 CALL                             R3 2 1
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K3 ["TRACK_TYPES"]
       10 GETTABLEKS                       R2 R3 K4 ["CFrame"]
       12 JUMPIF                           R2 ; [+5]
       13 GETUPVAL                         R4 0
       14 GETTABLEKS                       R3 R4 K3 ["TRACK_TYPES"]
       16 GETTABLEKS                       R2 R3 K5 ["Facs"]
       18 JUMPIFNOTEQKS                    R1 K6 ["HumanoidRootPart"] ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 JUMPIFNOT                        R3 ; [+55]
       23 GETTABLEKS                       R4 R0 K7 ["Weight"]
       25 JUMPIFEQKN                       R4 K8 [0] ; [+52]
       27 GETUPVAL                         R5 1
       28 GETTABLE                         R4 R5 R1
       29 JUMPIFNOTEQKNIL                  R4 ; [+15]
       31 GETUPVAL                         R5 2
       32 GETTABLEKS                       R4 R5 K9 ["addTrack"]
       34 GETUPVAL                         R5 1
       35 MOVE                             R6 R1
       36 MOVE                             R7 R2
       37 LOADB                            R8 0
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R10 R11 K3 ["TRACK_TYPES"]
       41 GETTABLEKS                       R9 R10 K10 ["Quaternion"]
       43 LOADNIL                          R10
       44 CALL                             R4 6 0
       45 GETUPVAL                         R5 1
       46 GETTABLE                         R4 R5 R1
       47 DUPTABLE                         R5 K14 [{"Value", "EasingStyle", "EasingDirection"}]
       48 LOADK                            R9 K1 ["Pose"]
       49 NAMECALL                         R7 R0 K2 ["IsA"]
       51 CALL                             R7 2 1
       52 JUMPIFNOT                        R7 ; [+3]
       53 GETTABLEKS                       R6 R0 K4 ["CFrame"]
       55 JUMPIF                           R6 ; [+2]
       56 GETTABLEKS                       R6 R0 K11 ["Value"]
       58 SETTABLEKS                       R6 R5 K11 ["Value"]
       60 GETTABLEKS                       R6 R0 K12 ["EasingStyle"]
       62 SETTABLEKS                       R6 R5 K12 ["EasingStyle"]
       64 GETTABLEKS                       R6 R0 K13 ["EasingDirection"]
       66 SETTABLEKS                       R6 R5 K13 ["EasingDirection"]
       68 GETUPVAL                         R7 2
       69 GETTABLEKS                       R6 R7 K15 ["addKeyframe"]
       71 MOVE                             R7 R4
       72 GETUPVAL                         R8 3
       73 MOVE                             R9 R5
       74 CALL                             R6 3 0
       75 GETUPVAL                         R7 4
       76 ADDK                             R6 R7 K16 [1]
       77 SETUPVAL                         R6 4
       78 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["addEvent"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Events"]
        6 GETUPVAL                         R3 2
        7 GETTABLEKS                       R4 R0 K2 ["Name"]
        9 GETTABLEKS                       R5 R0 K3 ["Value"]
       11 CALL                             R1 4 0
       12 GETUPVAL                         R2 3
       13 ADDK                             R1 R2 K4 [1]
       14 SETUPVAL                         R1 3
       15 RETURN                           R0 0

PROTO_28:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 NAMECALL                         R2 R0 K0 ["GetKeyframes"]
        5 CALL                             R2 1 1
        6 LOADN                            R3 0
        7 LOADNIL                          R4
        8 GETUPVAL                         R6 1
        9 GETTABLEKS                       R5 R6 K1 ["new"]
       11 GETTABLEKS                       R6 R0 K2 ["Name"]
       13 GETTABLEKS                       R7 R0 K3 ["Guid"]
       15 CALL                             R5 2 1
       16 LOADN                            R6 0
       17 LOADN                            R7 0
       18 GETTABLEKS                       R10 R5 K4 ["Instances"]
       20 GETTABLEKS                       R9 R10 K5 ["Root"]
       22 GETTABLEKS                       R8 R9 K6 ["Tracks"]
       24 GETIMPORT                        R9 K8 [pairs]
       26 MOVE                             R10 R2
       27 CALL                             R9 1 3
       28 FORGPREP_NEXT                    R9
       29 GETTABLEKS                       R14 R13 K9 ["Time"]
       31 GETUPVAL                         R16 2
       32 GETTABLEKS                       R15 R16 K10 ["getNearestTick"]
       34 GETUPVAL                         R18 3
       35 GETTABLEKS                       R17 R18 K11 ["TICK_FREQUENCY"]
       37 MUL                              R16 R14 R17
       38 CALL                             R15 1 1
       39 GETUPVAL                         R16 4
       40 MOVE                             R17 R13
       41 NEWCLOSURE                       R18 P0
       42 CAPTURE                          UPVAL U3
       43 CAPTURE                          VAL R8
       44 CAPTURE                          UPVAL U1
       45 CAPTURE                          VAL R15
       46 CAPTURE                          REF R6
       47 CALL                             R16 2 0
       48 GETUPVAL                         R16 5
       49 MOVE                             R17 R13
       50 NEWCLOSURE                       R18 P1
       51 CAPTURE                          UPVAL U1
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R15
       54 CAPTURE                          REF R7
       55 CALL                             R16 2 0
       56 JUMPIFNOTLT                      R3 R14 ; [+11]
       58 MOVE                             R4 R13
       59 GETTABLEKS                       R18 R13 K9 ["Time"]
       61 FASTCALL2                        MATH_MAX R3 R18 ; [+4]
       63 MOVE                             R17 R3
       64 GETIMPORT                        R16 K14 [math.max]
       66 CALL                             R16 2 1
       67 MOVE                             R3 R16
       68 GETTABLEKS                       R16 R13 K2 ["Name"]
       70 GETUPVAL                         R18 3
       71 GETTABLEKS                       R17 R18 K15 ["DEFAULT_KEYFRAME_NAME"]
       73 JUMPIFEQ                         R16 R17 ; [+9]
       75 GETUPVAL                         R17 1
       76 GETTABLEKS                       R16 R17 K16 ["setKeyframeName"]
       78 MOVE                             R17 R5
       79 MOVE                             R18 R15
       80 GETTABLEKS                       R19 R13 K2 ["Name"]
       82 CALL                             R16 3 0
       83 FORGLOOP                         R9 2 ; [-55]
       85 GETUPVAL                         R10 2
       86 GETTABLEKS                       R9 R10 K10 ["getNearestTick"]
       88 GETUPVAL                         R12 3
       89 GETTABLEKS                       R11 R12 K11 ["TICK_FREQUENCY"]
       91 MUL                              R10 R3 R11
       92 CALL                             R9 1 1
       93 JUMPIFNOT                        R4 ; [+41]
       94 NAMECALL                         R11 R4 K17 ["GetChildren"]
       96 CALL                             R11 1 1
       97 LENGTH                           R10 R11
       98 JUMPIFNOTEQKN                    R10 K18 [0] ; [+36]
      100 GETIMPORT                        R10 K8 [pairs]
      102 MOVE                             R11 R8
      103 CALL                             R10 1 3
      104 FORGPREP_NEXT                    R10
      105 GETTABLEKS                       R16 R14 K19 ["Keyframes"]
      107 GETTABLEKS                       R18 R14 K19 ["Keyframes"]
      109 LENGTH                           R17 R18
      110 GETTABLE                         R15 R16 R17
      111 GETTABLEKS                       R18 R14 K20 ["Data"]
      113 GETTABLE                         R17 R18 R15
      114 GETTABLEKS                       R16 R17 K21 ["Value"]
      116 GETUPVAL                         R18 1
      117 GETTABLEKS                       R17 R18 K22 ["addKeyframe"]
      119 MOVE                             R18 R14
      120 MOVE                             R19 R9
      121 DUPTABLE                         R20 K25 [{"Value", "EasingStyle", "EasingDirection"}]
      122 SETTABLEKS                       R16 R20 K21 ["Value"]
      124 GETIMPORT                        R21 K29 [Enum.PoseEasingStyle.Linear]
      126 SETTABLEKS                       R21 R20 K23 ["EasingStyle"]
      128 GETIMPORT                        R21 K32 [Enum.PoseEasingDirection.In]
      130 SETTABLEKS                       R21 R20 K24 ["EasingDirection"]
      132 CALL                             R17 3 0
      133 FORGLOOP                         R10 2 ; [-29]
      135 GETTABLEKS                       R10 R5 K33 ["Metadata"]
      137 SETTABLEKS                       R9 R10 K34 ["EndTick"]
      139 GETTABLEKS                       R10 R5 K33 ["Metadata"]
      141 GETTABLEKS                       R11 R0 K35 ["Priority"]
      143 SETTABLEKS                       R11 R10 K35 ["Priority"]
      145 GETTABLEKS                       R10 R5 K33 ["Metadata"]
      147 GETTABLEKS                       R11 R0 K36 ["Loop"]
      149 SETTABLEKS                       R11 R10 K37 ["Looping"]
      151 GETTABLEKS                       R10 R5 K33 ["Metadata"]
      153 GETTABLEKS                       R11 R0 K2 ["Name"]
      155 SETTABLEKS                       R11 R10 K2 ["Name"]
      157 GETTABLEKS                       R10 R5 K33 ["Metadata"]
      159 GETTABLEKS                       R11 R0 K3 ["Guid"]
      161 SETTABLEKS                       R11 R10 K3 ["Guid"]
      163 LOADK                            R12 K38 ["AnimationRigData"]
      164 NAMECALL                         R10 R0 K39 ["FindFirstChildOfClass"]
      166 CALL                             R10 2 1
      167 JUMPIFNOT                        R10 ; [+4]
      168 GETTABLEKS                       R11 R5 K33 ["Metadata"]
      170 SETTABLEKS                       R10 R11 K40 ["AnimationRig"]
      172 MOVE                             R11 R5
      173 MOVE                             R12 R1
      174 LENGTH                           R13 R2
      175 MOVE                             R14 R6
      176 MOVE                             R15 R7
      177 CLOSEUPVALS                      R6
      178 RETURN                           R11 5

PROTO_29:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        6 LOADK                            R5 K0 ["No data table was provided."]
        7 GETIMPORT                        R3 K2 [assert]
        9 CALL                             R3 2 0
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       16 LOADK                            R5 K3 ["Exporting to KeyframeSequence requires a reference rig."]
       17 GETIMPORT                        R3 K2 [assert]
       19 CALL                             R3 2 0
       20 LOADNIL                          R3
       21 GETUPVAL                         R4 0
       22 JUMPIFNOT                        R4 ; [+30]
       23 JUMPIFNOT                        R2 ; [+29]
       24 LOADK                            R7 K4 ["KeyframeSequence"]
       25 NAMECALL                         R5 R2 K5 ["IsA"]
       27 CALL                             R5 2 1
       28 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       30 LOADK                            R6 K6 ["Expected a KeyframeSequence for prevAnimation."]
       31 GETIMPORT                        R4 K2 [assert]
       33 CALL                             R4 2 0
       34 MOVE                             R3 R2
       35 GETIMPORT                        R4 K8 [pairs]
       37 NAMECALL                         R5 R3 K9 ["GetChildren"]
       39 CALL                             R5 1 -1
       40 CALL                             R4 -1 3
       41 FORGPREP_NEXT                    R4
       42 LOADK                            R11 K10 ["Keyframe"]
       43 NAMECALL                         R9 R8 K5 ["IsA"]
       45 CALL                             R9 2 1
       46 JUMPIFNOT                        R9 ; [+3]
       47 NAMECALL                         R9 R8 K11 ["Destroy"]
       49 CALL                             R9 1 0
       50 FORGLOOP                         R4 2 ; [-9]
       52 JUMP                             ; [+5]
       53 GETIMPORT                        R4 K14 [Instance.new]
       55 LOADK                            R5 K4 ["KeyframeSequence"]
       56 CALL                             R4 1 1
       57 MOVE                             R3 R4
       58 GETTABLEKS                       R4 R0 K15 ["Metadata"]
       60 GETTABLEKS                       R5 R0 K16 ["Events"]
       62 GETTABLEKS                       R6 R5 K17 ["NamedKeyframes"]
       64 GETTABLEKS                       R7 R4 K18 ["Name"]
       66 SETTABLEKS                       R7 R3 K18 ["Name"]
       68 GETTABLEKS                       R7 R4 K19 ["Looping"]
       70 SETTABLEKS                       R7 R3 K20 ["Loop"]
       72 GETTABLEKS                       R7 R4 K21 ["Priority"]
       74 SETTABLEKS                       R7 R3 K21 ["Priority"]
       76 GETTABLEKS                       R8 R4 K23 ["Guid"]
       78 ORK                              R7 R8 K22 [""]
       79 SETTABLEKS                       R7 R3 K23 ["Guid"]
       81 LOADN                            R7 0
       82 LOADN                            R8 0
       83 GETUPVAL                         R10 1
       84 GETTABLEKS                       R9 R10 K24 ["getRigInfo"]
       86 MOVE                             R10 R1
       87 CALL                             R9 1 1
       88 GETTABLEKS                       R10 R9 K25 ["PartNameToMotor"]
       90 GETTABLEKS                       R11 R9 K26 ["PartNameToAnimConstraint"]
       92 GETTABLEKS                       R12 R9 K27 ["BoneNameToBone"]
       94 GETTABLEKS                       R13 R9 K28 ["FaceControlsPath"]
       96 NEWTABLE                         R14 0 0
       98 GETTABLEKS                       R16 R0 K29 ["Instances"]
      100 GETTABLEKS                       R15 R16 K30 ["Root"]
      102 GETTABLEKS                       R16 R15 K31 ["Tracks"]
      104 GETUPVAL                         R17 2
      105 MOVE                             R18 R16
      106 MOVE                             R19 R10
      107 MOVE                             R20 R12
      108 MOVE                             R21 R11
      109 MOVE                             R22 R13
      110 CALL                             R17 5 1
      111 GETIMPORT                        R18 K8 [pairs]
      113 MOVE                             R19 R16
      114 CALL                             R18 1 3
      115 FORGPREP_NEXT                    R18
      116 GETIMPORT                        R23 K8 [pairs]
      118 GETTABLEKS                       R24 R22 K32 ["Keyframes"]
      120 CALL                             R23 1 3
      121 FORGPREP_NEXT                    R23
      122 GETUPVAL                         R30 3
      123 GETTABLEKS                       R29 R30 K33 ["TICK_FREQUENCY"]
      125 DIV                              R28 R27 R29
      126 GETTABLE                         R29 R14 R27
      127 JUMPIF                           R29 ; [+11]
      128 MOVE                             R30 R3
      129 GETIMPORT                        R31 K14 [Instance.new]
      131 LOADK                            R32 K10 ["Keyframe"]
      132 CALL                             R31 1 1
      133 SETTABLEKS                       R28 R31 K34 ["Time"]
      135 SETTABLEKS                       R30 R31 K35 ["Parent"]
      137 MOVE                             R29 R31
      138 SETTABLE                         R29 R14 R27
      139 GETTABLEKS                       R30 R22 K36 ["Type"]
      141 GETTABLEKS                       R32 R22 K37 ["Data"]
      143 GETTABLE                         R31 R32 R27
      144 GETUPVAL                         R32 4
      145 MOVE                             R33 R29
      146 MOVE                             R34 R21
      147 MOVE                             R35 R30
      148 MOVE                             R36 R31
      149 MOVE                             R37 R17
      150 CALL                             R32 5 0
      151 GETTABLE                         R32 R6 R27
      152 JUMPIFNOT                        R32 ; [+3]
      153 GETTABLE                         R32 R6 R27
      154 SETTABLEKS                       R32 R29 K18 ["Name"]
      156 ADDK                             R7 R7 K38 [1]
      157 FORGLOOP                         R23 2 ; [-36]
      159 FORGLOOP                         R18 2 ; [-44]
      161 GETIMPORT                        R18 K40 [ipairs]
      163 GETTABLEKS                       R19 R5 K32 ["Keyframes"]
      165 CALL                             R18 1 3
      166 FORGPREP_INEXT                   R18
      167 GETTABLEKS                       R24 R5 K37 ["Data"]
      169 GETTABLE                         R23 R24 R22
      170 GETIMPORT                        R24 K8 [pairs]
      172 MOVE                             R25 R23
      173 CALL                             R24 1 3
      174 FORGPREP_NEXT                    R24
      175 GETUPVAL                         R31 3
      176 GETTABLEKS                       R30 R31 K33 ["TICK_FREQUENCY"]
      178 DIV                              R29 R22 R30
      179 GETTABLE                         R30 R14 R22
      180 JUMPIF                           R30 ; [+11]
      181 MOVE                             R31 R3
      182 GETIMPORT                        R32 K14 [Instance.new]
      184 LOADK                            R33 K10 ["Keyframe"]
      185 CALL                             R32 1 1
      186 SETTABLEKS                       R29 R32 K34 ["Time"]
      188 SETTABLEKS                       R31 R32 K35 ["Parent"]
      190 MOVE                             R30 R32
      191 SETTABLE                         R30 R14 R22
      192 GETIMPORT                        R31 K14 [Instance.new]
      194 LOADK                            R32 K41 ["KeyframeMarker"]
      195 MOVE                             R33 R30
      196 CALL                             R31 2 1
      197 SETTABLEKS                       R27 R31 K18 ["Name"]
      199 SETTABLEKS                       R28 R31 K42 ["Value"]
      201 ADDK                             R8 R8 K38 [1]
      202 FORGLOOP                         R24 2 ; [-28]
      204 FORGLOOP                         R18 2 [inext] ; [-38]
      206 NAMECALL                         R18 R3 K43 ["GetKeyframes"]
      208 CALL                             R18 1 1
      209 MOVE                             R19 R3
      210 LENGTH                           R20 R18
      211 MOVE                             R21 R7
      212 MOVE                             R22 R8
      213 RETURN                           R19 4

PROTO_30:
        0 LOADN                            R1 0
        1 LOADB                            R2 0
        2 GETTABLEKS                       R3 R0 K0 ["Name"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R4 R5 K1 ["FACE_CONTROLS_FOLDER"]
        7 JUMPIFNOTEQ                      R3 R4 ; [+23]
        9 GETUPVAL                         R3 1
       10 CALL                             R3 0 1
       11 JUMPIFNOT                        R3 ; [+12]
       12 GETUPVAL                         R4 2
       13 GETUPVAL                         R5 3
       14 GETUPVAL                         R6 4
       15 MOVE                             R7 R0
       16 CALL                             R5 2 1
       17 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       19 GETIMPORT                        R3 K4 [math.max]
       21 CALL                             R3 2 1
       22 SETUPVAL                         R3 2
       23 JUMP                             ; [+5]
       24 GETUPVAL                         R3 3
       25 GETUPVAL                         R4 4
       26 MOVE                             R5 R0
       27 CALL                             R3 2 1
       28 MOVE                             R1 R3
       29 LOADB                            R2 1
       30 JUMP                             ; [+124]
       31 GETUPVAL                         R3 1
       32 CALL                             R3 0 1
       33 JUMPIFNOT                        R3 ; [+15]
       34 GETTABLEKS                       R3 R0 K0 ["Name"]
       36 GETUPVAL                         R6 0
       37 GETTABLEKS                       R5 R6 K5 ["FOLDERS"]
       39 GETTABLEKS                       R4 R5 K6 ["IkTargets"]
       41 JUMPIFNOTEQ                      R3 R4 ; [+7]
       43 GETUPVAL                         R3 5
       44 GETUPVAL                         R4 6
       45 MOVE                             R5 R0
       46 CALL                             R3 2 0
       47 LOADB                            R2 1
       48 JUMP                             ; [+106]
       49 GETUPVAL                         R7 0
       50 GETTABLEKS                       R6 R7 K7 ["PROPERTY_KEYS"]
       52 GETTABLEKS                       R5 R6 K8 ["Position"]
       54 NAMECALL                         R3 R0 K9 ["FindFirstChild"]
       56 CALL                             R3 2 1
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R7 R8 K7 ["PROPERTY_KEYS"]
       60 GETTABLEKS                       R6 R7 K10 ["Rotation"]
       62 NAMECALL                         R4 R0 K9 ["FindFirstChild"]
       64 CALL                             R4 2 1
       65 GETUPVAL                         R9 0
       66 GETTABLEKS                       R8 R9 K5 ["FOLDERS"]
       68 GETTABLEKS                       R7 R8 K11 ["IkData"]
       70 NAMECALL                         R5 R0 K9 ["FindFirstChild"]
       72 CALL                             R5 2 1
       73 JUMPIF                           R3 ; [+5]
       74 JUMPIF                           R4 ; [+4]
       75 GETUPVAL                         R6 1
       76 CALL                             R6 0 1
       77 JUMPIFNOT                        R6 ; [+77]
       78 JUMPIFNOT                        R5 ; [+76]
       79 LOADNIL                          R6
       80 JUMPIFNOT                        R4 ; [+19]
       81 GETTABLEKS                       R7 R4 K12 ["ClassName"]
       83 JUMPIFNOTEQKS                    R7 K13 ["RotationCurve"] ; [+7]
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R7 R8 K14 ["TRACK_TYPES"]
       88 GETTABLEKS                       R6 R7 K15 ["Quaternion"]
       90 JUMP                             ; [+9]
       91 GETTABLEKS                       R7 R4 K12 ["ClassName"]
       93 JUMPIFNOTEQKS                    R7 K16 ["EulerRotationCurve"] ; [+6]
       95 GETUPVAL                         R8 0
       96 GETTABLEKS                       R7 R8 K14 ["TRACK_TYPES"]
       98 GETTABLEKS                       R6 R7 K17 ["EulerAngles"]
      100 GETUPVAL                         R8 7
      101 GETTABLEKS                       R7 R8 K18 ["addTrack"]
      103 GETUPVAL                         R8 4
      104 GETTABLEKS                       R9 R0 K0 ["Name"]
      106 GETUPVAL                         R12 0
      107 GETTABLEKS                       R11 R12 K14 ["TRACK_TYPES"]
      109 GETTABLEKS                       R10 R11 K19 ["CFrame"]
      111 LOADB                            R11 1
      112 MOVE                             R12 R6
      113 CALL                             R7 5 1
      114 GETUPVAL                         R8 1
      115 CALL                             R8 0 1
      116 JUMPIFNOT                        R8 ; [+17]
      117 GETUPVAL                         R9 2
      118 GETUPVAL                         R10 8
      119 MOVE                             R11 R7
      120 MOVE                             R12 R0
      121 GETUPVAL                         R15 0
      122 GETTABLEKS                       R14 R15 K14 ["TRACK_TYPES"]
      124 GETTABLEKS                       R13 R14 K19 ["CFrame"]
      126 CALL                             R10 3 1
      127 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
      129 GETIMPORT                        R8 K4 [math.max]
      131 CALL                             R8 2 1
      132 SETUPVAL                         R8 2
      133 JUMP                             ; [+10]
      134 GETUPVAL                         R8 8
      135 MOVE                             R9 R7
      136 MOVE                             R10 R0
      137 GETUPVAL                         R13 0
      138 GETTABLEKS                       R12 R13 K14 ["TRACK_TYPES"]
      140 GETTABLEKS                       R11 R12 K19 ["CFrame"]
      142 CALL                             R8 3 1
      143 MOVE                             R1 R8
      144 GETUPVAL                         R8 9
      145 ADDK                             R8 R8 K20 [1]
      146 SETUPVAL                         R8 9
      147 GETUPVAL                         R8 10
      148 GETUPVAL                         R10 11
      149 GETTABLEKS                       R9 R10 K21 ["countKeyframes"]
      151 MOVE                             R10 R7
      152 CALL                             R9 1 1
      153 ADD                              R8 R8 R9
      154 SETUPVAL                         R8 10
      155 GETUPVAL                         R3 1
      156 CALL                             R3 0 1
      157 JUMPIF                           R3 ; [+4]
      158 GETUPVAL                         R3 2
      159 JUMPIFNOTLT                      R3 R1 ; [+2]
      161 SETUPVAL                         R1 2
      162 RETURN                           R2 1

PROTO_31:
        0 LOADB                            R2 0
        1 JUMPIFEQKNIL                     R0 ; [+15]
        3 LOADB                            R2 0
        4 FASTCALL1                        TYPEOF R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K1 [typeof]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQKS                    R3 K2 ["Instance"] ; [+7]
       11 GETTABLEKS                       R3 R0 K3 ["ClassName"]
       13 JUMPIFEQKS                       R3 K4 ["CurveAnimation"] ; [+2]
       15 LOADB                            R2 0 +1
       16 LOADB                            R2 1
       17 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       19 LOADK                            R3 K5 ["Expected a CurveAnimation for the AnimationData."]
       20 GETIMPORT                        R1 K7 [assert]
       22 CALL                             R1 2 0
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K8 ["new"]
       26 GETTABLEKS                       R2 R0 K9 ["Name"]
       28 GETTABLEKS                       R3 R0 K10 ["Guid"]
       30 CALL                             R1 2 1
       31 GETTABLEKS                       R4 R1 K11 ["Instances"]
       33 GETTABLEKS                       R3 R4 K12 ["Root"]
       35 GETTABLEKS                       R2 R3 K13 ["Tracks"]
       37 LOADN                            R3 0
       38 LOADN                            R4 0
       39 LOADN                            R5 0
       40 LOADN                            R6 0
       41 GETUPVAL                         R7 1
       42 MOVE                             R8 R0
       43 NEWCLOSURE                       R9 P0
       44 CAPTURE                          UPVAL U2
       45 CAPTURE                          UPVAL U3
       46 CAPTURE                          REF R3
       47 CAPTURE                          UPVAL U4
       48 CAPTURE                          VAL R2
       49 CAPTURE                          UPVAL U5
       50 CAPTURE                          VAL R1
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U6
       53 CAPTURE                          REF R5
       54 CAPTURE                          REF R4
       55 CAPTURE                          UPVAL U7
       56 CALL                             R7 2 0
       57 NAMECALL                         R7 R0 K14 ["GetChildren"]
       59 CALL                             R7 1 1
       60 GETIMPORT                        R8 K16 [ipairs]
       62 MOVE                             R9 R7
       63 CALL                             R8 1 3
       64 FORGPREP_INEXT                   R8
       65 LOADK                            R15 K17 ["MarkerCurve"]
       66 NAMECALL                         R13 R12 K18 ["IsA"]
       68 CALL                             R13 2 1
       69 JUMPIFNOT                        R13 ; [+65]
       70 NAMECALL                         R13 R12 K19 ["GetMarkers"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K16 [ipairs]
       75 MOVE                             R15 R13
       76 CALL                             R14 1 3
       77 FORGPREP_INEXT                   R14
       78 GETUPVAL                         R20 8
       79 GETTABLEKS                       R19 R20 K20 ["getNearestTick"]
       81 GETTABLEKS                       R21 R18 K21 ["Time"]
       83 GETUPVAL                         R23 2
       84 GETTABLEKS                       R22 R23 K22 ["TICK_FREQUENCY"]
       86 MUL                              R20 R21 R22
       87 CALL                             R19 1 1
       88 GETUPVAL                         R20 3
       89 CALL                             R20 0 1
       90 JUMPIF                           R20 ; [+3]
       91 JUMPIFNOTLT                      R3 R19 ; [+2]
       93 MOVE                             R3 R19
       94 GETTABLEKS                       R20 R12 K9 ["Name"]
       96 GETUPVAL                         R22 2
       97 GETTABLEKS                       R21 R22 K23 ["NAMED_KEYFRAMES_CHANNEL"]
       99 JUMPIFNOTEQ                      R20 R21 ; [+10]
      101 GETUPVAL                         R21 0
      102 GETTABLEKS                       R20 R21 K24 ["setKeyframeName"]
      104 MOVE                             R21 R1
      105 MOVE                             R22 R19
      106 GETTABLEKS                       R23 R18 K25 ["Value"]
      108 CALL                             R20 3 0
      109 JUMP                             ; [+12]
      110 GETUPVAL                         R21 0
      111 GETTABLEKS                       R20 R21 K26 ["addEvent"]
      113 GETTABLEKS                       R21 R1 K27 ["Events"]
      115 MOVE                             R22 R19
      116 GETTABLEKS                       R23 R12 K9 ["Name"]
      118 GETTABLEKS                       R24 R18 K25 ["Value"]
      120 CALL                             R20 4 0
      121 ADDK                             R6 R6 K28 [1]
      122 GETUPVAL                         R20 3
      123 CALL                             R20 0 1
      124 JUMPIFNOT                        R20 ; [+8]
      125 FASTCALL2                        MATH_MAX R3 R19 ; [+5]
      127 MOVE                             R21 R3
      128 MOVE                             R22 R19
      129 GETIMPORT                        R20 K31 [math.max]
      131 CALL                             R20 2 1
      132 MOVE                             R3 R20
      133 FORGLOOP                         R14 2 [inext] ; [-56]
      135 FORGLOOP                         R8 2 [inext] ; [-71]
      137 GETTABLEKS                       R8 R1 K32 ["Metadata"]
      139 GETTABLEKS                       R9 R0 K9 ["Name"]
      141 SETTABLEKS                       R9 R8 K9 ["Name"]
      143 GETTABLEKS                       R9 R0 K33 ["Loop"]
      145 SETTABLEKS                       R9 R8 K34 ["Looping"]
      147 GETTABLEKS                       R9 R0 K35 ["Priority"]
      149 SETTABLEKS                       R9 R8 K35 ["Priority"]
      151 SETTABLEKS                       R3 R8 K36 ["EndTick"]
      153 LOADB                            R9 1
      154 SETTABLEKS                       R9 R8 K37 ["IsChannelAnimation"]
      156 GETTABLEKS                       R9 R0 K10 ["Guid"]
      158 SETTABLEKS                       R9 R8 K10 ["Guid"]
      160 LOADK                            R11 K38 ["AnimationRigData"]
      161 NAMECALL                         R9 R0 K39 ["FindFirstChildOfClass"]
      163 CALL                             R9 2 1
      164 JUMPIFNOT                        R9 ; [+2]
      165 SETTABLEKS                       R9 R8 K40 ["AnimationRig"]
      167 MOVE                             R10 R1
      168 MOVE                             R11 R4
      169 MOVE                             R12 R5
      170 MOVE                             R13 R6
      171 CLOSEUPVALS                      R3
      172 RETURN                           R10 4

PROTO_32:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R4 0 +1
        3 LOADB                            R4 1
        4 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        6 LOADK                            R5 K0 ["No data table was provided."]
        7 GETIMPORT                        R3 K2 [assert]
        9 CALL                             R3 2 0
       10 JUMPIFNOTEQKNIL                  R1 ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 FASTCALL2K                       ASSERT R4 K3 ; [+4]
       16 LOADK                            R5 K3 ["Exporting to CurveAnimation requires a reference rig."]
       17 GETIMPORT                        R3 K2 [assert]
       19 CALL                             R3 2 0
       20 LOADNIL                          R3
       21 GETUPVAL                         R4 0
       22 JUMPIFNOT                        R4 ; [+30]
       23 JUMPIFNOT                        R2 ; [+29]
       24 LOADK                            R7 K4 ["CurveAnimation"]
       25 NAMECALL                         R5 R2 K5 ["IsA"]
       27 CALL                             R5 2 1
       28 FASTCALL2K                       ASSERT R5 K6 ; [+4]
       30 LOADK                            R6 K6 ["Expected a CurveAnimation for prevAnimation."]
       31 GETIMPORT                        R4 K2 [assert]
       33 CALL                             R4 2 0
       34 MOVE                             R3 R2
       35 GETIMPORT                        R4 K8 [ipairs]
       37 NAMECALL                         R5 R3 K9 ["GetChildren"]
       39 CALL                             R5 1 -1
       40 CALL                             R4 -1 3
       41 FORGPREP_INEXT                   R4
       42 LOADK                            R11 K10 ["AnimationRigData"]
       43 NAMECALL                         R9 R8 K5 ["IsA"]
       45 CALL                             R9 2 1
       46 JUMPIF                           R9 ; [+3]
       47 NAMECALL                         R9 R8 K11 ["Destroy"]
       49 CALL                             R9 1 0
       50 FORGLOOP                         R4 2 [inext] ; [-9]
       52 JUMP                             ; [+5]
       53 GETIMPORT                        R4 K14 [Instance.new]
       55 LOADK                            R5 K4 ["CurveAnimation"]
       56 CALL                             R4 1 1
       57 MOVE                             R3 R4
       58 GETTABLEKS                       R4 R0 K15 ["Metadata"]
       60 GETTABLEKS                       R5 R4 K16 ["Name"]
       62 SETTABLEKS                       R5 R3 K16 ["Name"]
       64 GETTABLEKS                       R5 R4 K17 ["Looping"]
       66 SETTABLEKS                       R5 R3 K18 ["Loop"]
       68 GETTABLEKS                       R5 R4 K19 ["Priority"]
       70 SETTABLEKS                       R5 R3 K19 ["Priority"]
       72 GETTABLEKS                       R6 R4 K21 ["Guid"]
       74 ORK                              R5 R6 K20 [""]
       75 SETTABLEKS                       R5 R3 K21 ["Guid"]
       77 GETUPVAL                         R6 1
       78 GETTABLEKS                       R5 R6 K22 ["getRigInfo"]
       80 MOVE                             R6 R1
       81 CALL                             R5 1 1
       82 GETTABLEKS                       R6 R5 K23 ["PartNameToMotor"]
       84 GETTABLEKS                       R7 R5 K24 ["PartNameToAnimConstraint"]
       86 GETTABLEKS                       R8 R5 K25 ["BoneNameToBone"]
       88 GETTABLEKS                       R9 R5 K26 ["FaceControlsPath"]
       90 LOADN                            R10 0
       91 LOADN                            R11 0
       92 LOADN                            R12 0
       93 GETTABLEKS                       R14 R0 K27 ["Instances"]
       95 GETTABLEKS                       R13 R14 K28 ["Root"]
       97 GETTABLEKS                       R14 R13 K29 ["Tracks"]
       99 GETUPVAL                         R15 2
      100 MOVE                             R16 R14
      101 MOVE                             R17 R6
      102 MOVE                             R18 R8
      103 MOVE                             R19 R7
      104 MOVE                             R20 R9
      105 CALL                             R15 5 1
      106 GETIMPORT                        R16 K31 [pairs]
      108 MOVE                             R17 R14
      109 CALL                             R16 1 3
      110 FORGPREP_NEXT                    R16
      111 GETUPVAL                         R21 3
      112 MOVE                             R22 R3
      113 MOVE                             R23 R19
      114 MOVE                             R24 R15
      115 CALL                             R21 3 1
      116 GETTABLEKS                       R22 R20 K32 ["Type"]
      118 GETUPVAL                         R25 4
      119 GETTABLEKS                       R24 R25 K33 ["TRACK_TYPES"]
      121 GETTABLEKS                       R23 R24 K34 ["CFrame"]
      123 JUMPIFNOTEQ                      R22 R23 ; [+98]
      125 MOVE                             R24 R19
      126 NAMECALL                         R22 R21 K35 ["FindFirstChild"]
      128 CALL                             R22 2 1
      129 JUMPIF                           R22 ; [+5]
      130 GETIMPORT                        R22 K14 [Instance.new]
      132 LOADK                            R23 K36 ["Folder"]
      133 MOVE                             R24 R21
      134 CALL                             R22 2 1
      135 MOVE                             R21 R22
      136 SETTABLEKS                       R19 R21 K16 ["Name"]
      138 GETUPVAL                         R22 5
      139 GETTABLEKS                       R24 R20 K37 ["Components"]
      141 GETUPVAL                         R27 4
      142 GETTABLEKS                       R26 R27 K38 ["PROPERTY_KEYS"]
      144 GETTABLEKS                       R25 R26 K39 ["Position"]
      146 GETTABLE                         R23 R24 R25
      147 CALL                             R22 1 1
      148 JUMPIFNOT                        R22 ; [+9]
      149 GETUPVAL                         R25 4
      150 GETTABLEKS                       R24 R25 K38 ["PROPERTY_KEYS"]
      152 GETTABLEKS                       R23 R24 K39 ["Position"]
      154 SETTABLEKS                       R23 R22 K16 ["Name"]
      156 SETTABLEKS                       R21 R22 K40 ["Parent"]
      158 GETTABLEKS                       R25 R20 K37 ["Components"]
      160 GETUPVAL                         R28 4
      161 GETTABLEKS                       R27 R28 K38 ["PROPERTY_KEYS"]
      163 GETTABLEKS                       R26 R27 K41 ["Rotation"]
      165 GETTABLE                         R24 R25 R26
      166 JUMPIF                           R24 ; [+2]
      167 LOADNIL                          R23
      168 JUMP                             ; [+26]
      169 GETTABLEKS                       R25 R24 K32 ["Type"]
      171 GETUPVAL                         R28 4
      172 GETTABLEKS                       R27 R28 K33 ["TRACK_TYPES"]
      174 GETTABLEKS                       R26 R27 K42 ["Quaternion"]
      176 JUMPIFNOTEQ                      R25 R26 ; [+14]
      178 JUMPIF                           R24 ; [+2]
      179 LOADNIL                          R23
      180 JUMP                             ; [+14]
      181 GETIMPORT                        R25 K14 [Instance.new]
      183 LOADK                            R26 K43 ["RotationCurve"]
      184 CALL                             R25 1 1
      185 GETUPVAL                         R26 6
      186 MOVE                             R27 R24
      187 MOVE                             R28 R25
      188 CALL                             R26 2 0
      189 MOVE                             R23 R25
      190 JUMP                             ; [+4]
      191 GETUPVAL                         R25 7
      192 MOVE                             R26 R24
      193 CALL                             R25 1 1
      194 MOVE                             R23 R25
      195 JUMPIFNOT                        R23 ; [+9]
      196 GETUPVAL                         R26 4
      197 GETTABLEKS                       R25 R26 K38 ["PROPERTY_KEYS"]
      199 GETTABLEKS                       R24 R25 K41 ["Rotation"]
      201 SETTABLEKS                       R24 R23 K16 ["Name"]
      203 SETTABLEKS                       R21 R23 K40 ["Parent"]
      205 GETUPVAL                         R24 8
      206 CALL                             R24 0 1
      207 JUMPIFNOT                        R24 ; [+56]
      208 GETUPVAL                         R24 9
      209 GETTABLEKS                       R26 R20 K37 ["Components"]
      211 GETUPVAL                         R29 4
      212 GETTABLEKS                       R28 R29 K38 ["PROPERTY_KEYS"]
      214 GETTABLEKS                       R27 R28 K44 ["IkData"]
      216 GETTABLE                         R25 R26 R27
      217 CALL                             R24 1 1
      218 JUMPIFNOT                        R24 ; [+45]
      219 SETTABLEKS                       R21 R24 K40 ["Parent"]
      221 JUMP                             ; [+42]
      222 GETTABLEKS                       R22 R20 K32 ["Type"]
      224 GETUPVAL                         R25 4
      225 GETTABLEKS                       R24 R25 K33 ["TRACK_TYPES"]
      227 GETTABLEKS                       R23 R24 K45 ["Facs"]
      229 JUMPIFNOTEQ                      R22 R23 ; [+34]
      231 GETUPVAL                         R23 8
      232 CALL                             R23 0 1
      233 JUMPIFNOT                        R23 ; [+13]
      234 JUMPIF                           R20 ; [+2]
      235 LOADNIL                          R22
      236 JUMP                             ; [+22]
      237 GETIMPORT                        R23 K14 [Instance.new]
      239 LOADK                            R24 K46 ["FloatCurve"]
      240 CALL                             R23 1 1
      241 GETUPVAL                         R24 10
      242 MOVE                             R25 R20
      243 MOVE                             R26 R23
      244 CALL                             R24 2 0
      245 MOVE                             R22 R23
      246 JUMP                             ; [+12]
      247 JUMPIF                           R20 ; [+2]
      248 LOADNIL                          R22
      249 JUMP                             ; [+9]
      250 GETIMPORT                        R23 K14 [Instance.new]
      252 LOADK                            R24 K46 ["FloatCurve"]
      253 CALL                             R23 1 1
      254 GETUPVAL                         R24 10
      255 MOVE                             R25 R20
      256 MOVE                             R26 R23
      257 CALL                             R24 2 0
      258 MOVE                             R22 R23
      259 JUMPIFNOT                        R22 ; [+4]
      260 SETTABLEKS                       R19 R22 K16 ["Name"]
      262 SETTABLEKS                       R21 R22 K40 ["Parent"]
      264 GETUPVAL                         R23 11
      265 GETTABLEKS                       R22 R23 K47 ["countKeyframes"]
      267 MOVE                             R23 R20
      268 CALL                             R22 1 1
      269 ADD                              R10 R10 R22
      270 ADDK                             R11 R11 K48 [1]
      271 FORGLOOP                         R16 2 ; [-161]
      273 NEWTABLE                         R16 0 0
      275 GETTABLEKS                       R17 R0 K49 ["Events"]
      277 GETIMPORT                        R18 K31 [pairs]
      279 GETTABLEKS                       R19 R17 K50 ["Data"]
      281 CALL                             R18 1 3
      282 FORGPREP_NEXT                    R18
      283 GETIMPORT                        R23 K31 [pairs]
      285 MOVE                             R24 R22
      286 CALL                             R23 1 3
      287 FORGPREP_NEXT                    R23
      288 GETTABLE                         R28 R16 R26
      289 JUMPIF                           R28 ; [+3]
      290 NEWTABLE                         R28 0 0
      292 SETTABLE                         R28 R16 R26
      293 GETTABLE                         R28 R16 R26
      294 SETTABLE                         R27 R28 R21
      295 FORGLOOP                         R23 2 ; [-8]
      297 FORGLOOP                         R18 2 ; [-15]
      299 GETTABLEKS                       R18 R17 K51 ["NamedKeyframes"]
      301 JUMPIFNOT                        R18 ; [+15]
      302 NEWTABLE                         R18 0 0
      304 GETIMPORT                        R19 K31 [pairs]
      306 GETTABLEKS                       R20 R17 K51 ["NamedKeyframes"]
      308 CALL                             R19 1 3
      309 FORGPREP_NEXT                    R19
      310 SETTABLE                         R23 R18 R22
      311 FORGLOOP                         R19 2 ; [-2]
      313 GETUPVAL                         R20 4
      314 GETTABLEKS                       R19 R20 K52 ["NAMED_KEYFRAMES_CHANNEL"]
      316 SETTABLE                         R18 R16 R19
      317 GETIMPORT                        R18 K31 [pairs]
      319 MOVE                             R19 R16
      320 CALL                             R18 1 3
      321 FORGPREP_NEXT                    R18
      322 GETIMPORT                        R23 K14 [Instance.new]
      324 LOADK                            R24 K53 ["MarkerCurve"]
      325 CALL                             R23 1 1
      326 SETTABLEKS                       R21 R23 K16 ["Name"]
      328 SETTABLEKS                       R3 R23 K40 ["Parent"]
      330 GETIMPORT                        R24 K31 [pairs]
      332 MOVE                             R25 R22
      333 CALL                             R24 1 3
      334 FORGPREP_NEXT                    R24
      335 GETUPVAL                         R31 4
      336 GETTABLEKS                       R30 R31 K54 ["TICK_FREQUENCY"]
      338 DIV                              R29 R27 R30
      339 MOVE                             R32 R29
      340 MOVE                             R33 R28
      341 NAMECALL                         R30 R23 K55 ["InsertMarkerAtTime"]
      343 CALL                             R30 3 0
      344 ADDK                             R12 R12 K48 [1]
      345 FORGLOOP                         R24 2 ; [-11]
      347 FORGLOOP                         R18 2 ; [-26]
      349 GETUPVAL                         R18 8
      350 CALL                             R18 0 1
      351 JUMPIFNOT                        R18 ; [+4]
      352 GETUPVAL                         R18 12
      353 MOVE                             R19 R0
      354 MOVE                             R20 R3
      355 CALL                             R18 2 0
      356 MOVE                             R18 R3
      357 MOVE                             R19 R10
      358 MOVE                             R20 R11
      359 MOVE                             R21 R12
      360 RETURN                           R18 4

PROTO_33:
        0 LOADNIL                          R3
        1 LOADNIL                          R4
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 GETUPVAL                         R8 0
        5 GETTABLEKS                       R7 R8 K0 ["isChannelAnimation"]
        7 MOVE                             R8 R0
        8 CALL                             R7 1 1
        9 JUMPIFNOT                        R7 ; [+12]
       10 GETUPVAL                         R8 1
       11 GETTABLEKS                       R7 R8 K1 ["toCurveAnimation"]
       13 MOVE                             R8 R0
       14 MOVE                             R9 R1
       15 MOVE                             R10 R2
       16 CALL                             R7 3 4
       17 MOVE                             R3 R7
       18 MOVE                             R4 R8
       19 MOVE                             R5 R9
       20 MOVE                             R6 R10
       21 JUMP                             ; [+11]
       22 GETUPVAL                         R8 1
       23 GETTABLEKS                       R7 R8 K2 ["toKeyframeSequence"]
       25 MOVE                             R8 R0
       26 MOVE                             R9 R1
       27 MOVE                             R10 R2
       28 CALL                             R7 3 4
       29 MOVE                             R3 R7
       30 MOVE                             R4 R8
       31 MOVE                             R5 R9
       32 MOVE                             R6 R10
       33 GETUPVAL                         R7 2
       34 JUMPIFNOT                        R7 ; [+9]
       35 JUMPIF                           R2 ; [+15]
       36 GETUPVAL                         R8 3
       37 GETTABLEKS                       R7 R8 K3 ["addAnimationRigToAnimationClip"]
       39 MOVE                             R8 R0
       40 MOVE                             R9 R1
       41 MOVE                             R10 R3
       42 CALL                             R7 3 0
       43 RETURN                           R3 4
       44 GETUPVAL                         R8 3
       45 GETTABLEKS                       R7 R8 K3 ["addAnimationRigToAnimationClip"]
       47 MOVE                             R8 R0
       48 MOVE                             R9 R1
       49 MOVE                             R10 R3
       50 CALL                             R7 3 0
       51 RETURN                           R3 4

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R4 R2 K9 ["Util"]
       23 GETTABLEKS                       R3 R4 K10 ["Math"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R7 R0 K11 ["Src"]
       29 GETTABLEKS                       R6 R7 K9 ["Util"]
       31 GETTABLEKS                       R5 R6 K12 ["AnimationData"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K5 [require]
       36 GETTABLEKS                       R8 R0 K11 ["Src"]
       38 GETTABLEKS                       R7 R8 K9 ["Util"]
       40 GETTABLEKS                       R6 R7 K13 ["Constants"]
       42 CALL                             R5 1 1
       43 GETIMPORT                        R6 K5 [require]
       45 GETTABLEKS                       R9 R0 K11 ["Src"]
       47 GETTABLEKS                       R8 R9 K9 ["Util"]
       49 GETTABLEKS                       R7 R8 K14 ["KeyframeUtils"]
       51 CALL                             R6 1 1
       52 GETIMPORT                        R7 K5 [require]
       54 GETTABLEKS                       R10 R0 K11 ["Src"]
       56 GETTABLEKS                       R9 R10 K9 ["Util"]
       58 GETTABLEKS                       R8 R9 K15 ["RigInfo"]
       60 CALL                             R7 1 1
       61 GETIMPORT                        R8 K5 [require]
       63 GETTABLEKS                       R11 R0 K11 ["Src"]
       65 GETTABLEKS                       R10 R11 K9 ["Util"]
       67 GETTABLEKS                       R9 R10 K16 ["RigUtils"]
       69 CALL                             R8 1 1
       70 GETIMPORT                        R9 K5 [require]
       72 GETTABLEKS                       R12 R0 K11 ["Src"]
       74 GETTABLEKS                       R11 R12 K9 ["Util"]
       76 GETTABLEKS                       R10 R11 K17 ["Templates"]
       78 CALL                             R9 1 1
       79 GETIMPORT                        R10 K5 [require]
       81 GETTABLEKS                       R13 R0 K11 ["Src"]
       83 GETTABLEKS                       R12 R13 K9 ["Util"]
       85 GETTABLEKS                       R11 R12 K18 ["TrackUtils"]
       87 CALL                             R10 1 1
       88 GETIMPORT                        R11 K5 [require]
       90 GETTABLEKS                       R13 R0 K19 ["LuaFlags"]
       92 GETTABLEKS                       R12 R13 K20 ["GetFFlagControlRig"]
       94 CALL                             R11 1 1
       95 GETIMPORT                        R12 K5 [require]
       97 GETTABLEKS                       R14 R0 K19 ["LuaFlags"]
       99 GETTABLEKS                       R13 R14 K21 ["GetFFlagFaceControlsBoneParent"]
      101 CALL                             R12 1 1
      102 GETIMPORT                        R13 K23 [game]
      104 LOADK                            R15 K24 ["LiveAnimationUpdateSupport"]
      105 NAMECALL                         R13 R13 K25 ["GetFastFlag"]
      107 CALL                             R13 2 1
      108 GETIMPORT                        R14 K5 [require]
      110 GETTABLEKS                       R16 R0 K11 ["Src"]
      112 GETTABLEKS                       R15 R16 K26 ["Types"]
      114 CALL                             R14 1 1
      115 NEWTABLE                         R15 8 0
      117 DUPCLOSURE                       R16 K27 [PROTO_1]
      118 CAPTURE                          VAL R5
      119 CAPTURE                          VAL R3
      120 DUPCLOSURE                       R17 K28 [PROTO_2]
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R17
      123 DUPCLOSURE                       R18 K29 [PROTO_3]
      124 DUPCLOSURE                       R19 K30 [PROTO_4]
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R19
      127 DUPCLOSURE                       R20 K31 [PROTO_6]
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R12
      130 CAPTURE                          VAL R1
      131 DUPCLOSURE                       R21 K32 [PROTO_7]
      132 DUPCLOSURE                       R22 K33 [PROTO_8]
      133 CAPTURE                          VAL R5
      134 DUPCLOSURE                       R23 K34 [PROTO_9]
      135 DUPCLOSURE                       R24 K35 [PROTO_10]
      136 CAPTURE                          VAL R5
      137 DUPCLOSURE                       R25 K36 [PROTO_11]
      138 CAPTURE                          VAL R5
      139 DUPCLOSURE                       R26 K37 [PROTO_12]
      140 CAPTURE                          VAL R24
      141 CAPTURE                          VAL R5
      142 DUPCLOSURE                       R27 K38 [PROTO_13]
      143 CAPTURE                          VAL R25
      144 DUPCLOSURE                       R28 K39 [PROTO_14]
      145 CAPTURE                          VAL R24
      146 CAPTURE                          VAL R5
      147 DUPCLOSURE                       R29 K40 [PROTO_15]
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R25
      150 CAPTURE                          VAL R28
      151 DUPCLOSURE                       R30 K41 [PROTO_16]
      152 CAPTURE                          VAL R24
      153 DUPCLOSURE                       R31 K42 [PROTO_17]
      154 CAPTURE                          VAL R24
      155 DUPCLOSURE                       R32 K43 [PROTO_18]
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R26
      158 CAPTURE                          VAL R27
      159 CAPTURE                          VAL R28
      160 CAPTURE                          VAL R31
      161 DUPCLOSURE                       R33 K44 [PROTO_19]
      162 CAPTURE                          VAL R5
      163 CAPTURE                          VAL R32
      164 DUPCLOSURE                       R34 K45 [PROTO_20]
      165 CAPTURE                          VAL R5
      166 CAPTURE                          VAL R33
      167 DUPCLOSURE                       R35 K46 [PROTO_21]
      168 CAPTURE                          VAL R5
      169 LOADNIL                          R36
      170 NEWCLOSURE                       R37 P20
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R5
      173 CAPTURE                          VAL R6
      174 CAPTURE                          VAL R4
      175 CAPTURE                          VAL R9
      176 CAPTURE                          VAL R37
      177 CAPTURE                          REF R36
      178 DUPCLOSURE                       R36 K47 [PROTO_23]
      179 CAPTURE                          VAL R9
      180 CAPTURE                          VAL R5
      181 CAPTURE                          VAL R37
      182 DUPCLOSURE                       R38 K48 [PROTO_24]
      183 DUPCLOSURE                       R39 K49 [PROTO_25]
      184 CAPTURE                          VAL R4
      185 CAPTURE                          VAL R5
      186 CAPTURE                          VAL R37
      187 DUPCLOSURE                       R40 K50 [PROTO_28]
      188 CAPTURE                          VAL R16
      189 CAPTURE                          VAL R4
      190 CAPTURE                          VAL R6
      191 CAPTURE                          VAL R5
      192 CAPTURE                          VAL R17
      193 CAPTURE                          VAL R18
      194 SETTABLEKS                       R40 R15 K51 ["fromKeyframeSequence"]
      196 DUPCLOSURE                       R40 K52 [PROTO_29]
      197 CAPTURE                          VAL R13
      198 CAPTURE                          VAL R7
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R22
      202 SETTABLEKS                       R40 R15 K53 ["toKeyframeSequence"]
      204 DUPCLOSURE                       R40 K54 [PROTO_31]
      205 CAPTURE                          VAL R4
      206 CAPTURE                          VAL R19
      207 CAPTURE                          VAL R5
      208 CAPTURE                          VAL R11
      209 CAPTURE                          VAL R39
      210 CAPTURE                          VAL R38
      211 CAPTURE                          VAL R37
      212 CAPTURE                          VAL R10
      213 CAPTURE                          VAL R6
      214 SETTABLEKS                       R40 R15 K55 ["fromCurveAnimation"]
      216 DUPCLOSURE                       R40 K56 [PROTO_32]
      217 CAPTURE                          VAL R13
      218 CAPTURE                          VAL R7
      219 CAPTURE                          VAL R20
      220 CAPTURE                          VAL R23
      221 CAPTURE                          VAL R5
      222 CAPTURE                          VAL R26
      223 CAPTURE                          VAL R25
      224 CAPTURE                          VAL R28
      225 CAPTURE                          VAL R11
      226 CAPTURE                          VAL R34
      227 CAPTURE                          VAL R24
      228 CAPTURE                          VAL R10
      229 CAPTURE                          VAL R35
      230 SETTABLEKS                       R40 R15 K57 ["toCurveAnimation"]
      232 DUPCLOSURE                       R40 K58 [PROTO_33]
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R13
      236 CAPTURE                          VAL R8
      237 SETTABLEKS                       R40 R15 K59 ["toAnimationAsset"]
      239 CLOSEUPVALS                      R36
      240 RETURN                           R15 1
