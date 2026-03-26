PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKB                    R0 FALSE ; [+20]
        3 LOADNIL                          R0
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["get"]
        8 CALL                             R0 0 1
        9 GETTABLEKS                       R1 R0 K1 ["isDevFrameworkAvailable"]
       11 CALL                             R1 0 1
       12 JUMPIFNOT                        R1 ; [+9]
       13 GETIMPORT                        R1 K3 [require]
       15 GETUPVAL                         R4 2
       16 GETTABLEKS                       R3 R4 K4 ["Parent"]
       18 GETTABLEKS                       R2 R3 K5 ["Framework"]
       20 CALL                             R1 1 1
       21 SETUPVAL                         R1 0
       22 GETUPVAL                         R0 0
       23 RETURN                           R0 1

PROTO_1:
        0 LOADN                            R4 1
        1 GETTABLEKS                       R6 R1 K0 ["X"]
        3 GETTABLEKS                       R7 R1 K1 ["Y"]
        5 DIV                              R5 R6 R7
        6 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
        8 GETIMPORT                        R3 K4 [math.min]
       10 CALL                             R3 2 1
       11 GETTABLEKS                       R6 R2 K6 ["FieldOfView"]
       13 DIVK                             R5 R6 K5 [2]
       14 FASTCALL1                        MATH_RAD R5 ; [+2]
       15 GETIMPORT                        R4 K8 [math.rad]
       17 CALL                             R4 1 1
       18 FASTCALL1                        MATH_TAN R4 ; [+3]
       19 MOVE                             R8 R4
       20 GETIMPORT                        R7 K10 [math.tan]
       22 CALL                             R7 1 1
       23 MUL                              R6 R7 R3
       24 FASTCALL1                        MATH_ATAN R6 ; [+2]
       25 GETIMPORT                        R5 K12 [math.atan]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R8 R0 K13 ["Size"]
       30 GETTABLEKS                       R7 R8 K14 ["Magnitude"]
       32 DIVK                             R6 R7 K5 [2]
       33 FASTCALL1                        MATH_SIN R5 ; [+3]
       34 MOVE                             R9 R5
       35 GETIMPORT                        R8 K16 [math.sin]
       37 CALL                             R8 1 1
       38 DIV                              R7 R6 R8
       39 RETURN                           R7 1

PROTO_2:
        0 LOADB                            R2 1
        1 GETTABLEKS                       R3 R0 K0 ["UserInputType"]
        3 GETIMPORT                        R4 K3 [Enum.UserInputType.MouseButton2]
        5 JUMPIFEQ                         R3 R4 ; [+9]
        7 LOADB                            R2 0
        8 GETTABLEKS                       R3 R0 K0 ["UserInputType"]
       10 GETIMPORT                        R4 K5 [Enum.UserInputType.MouseButton1]
       12 JUMPIFNOTEQ                      R3 R4 ; [+2]
       14 MOVE                             R2 R1
       15 RETURN                           R2 1

PROTO_3:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["Camera"]
        3 CALL                             R0 1 1
        4 RETURN                           R0 1

PROTO_4:
        0 GETIMPORT                        R1 K2 [CFrame.Angles]
        2 LOADN                            R2 0
        3 LOADK                            R3 K3 [0.488692190558412]
        4 LOADN                            R4 0
        5 CALL                             R1 3 1
        6 GETIMPORT                        R2 K5 [CFrame.new]
        8 LOADN                            R3 0
        9 LOADN                            R4 0
       10 LOADN                            R5 255
       11 CALL                             R2 3 1
       12 MUL                              R0 R1 R2
       13 GETTABLEKS                       R1 R0 K6 ["LookVector"]
       15 RETURN                           R1 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["current"]
        3 JUMPIF                           R0 ; [+4]
        4 GETUPVAL                         R1 1
        5 LOADNIL                          R2
        6 CALL                             R1 1 0
        7 RETURN                           R0 0
        8 LOADK                            R3 K1 ["ViewportFrame"]
        9 NAMECALL                         R1 R0 K2 ["FindFirstChildOfClass"]
       11 CALL                             R1 2 1
       12 GETUPVAL                         R2 1
       13 MOVE                             R3 R1
       14 CALL                             R2 1 0
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R3 K2 [CFrame.Angles]
        3 LOADN                            R4 0
        4 MULK                             R5 R0 K3 [-0.20943951023932]
        5 LOADN                            R6 0
        6 CALL                             R3 3 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["CFrame"]
       10 MUL                              R2 R3 R4
       11 SETTABLEKS                       R2 R1 K0 ["CFrame"]
       13 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["BasePart"]
        7 NAMECALL                         R0 R0 K1 ["IsA"]
        9 CALL                             R0 2 1
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 2
       13 GETTABLEKS                       R0 R1 K2 ["Heartbeat"]
       15 NEWCLOSURE                       R2 P0
       16 CAPTURE                          UPVAL U3
       17 NAMECALL                         R0 R0 K3 ["Connect"]
       19 CALL                             R0 2 1
       20 NEWCLOSURE                       R1 P1
       21 CAPTURE                          VAL R0
       22 RETURN                           R1 1

PROTO_9:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        3 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 LOADB                            R1 0
        8 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       10 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       12 JUMPIFNOTEQ                      R2 R3 ; [+2]
       14 LOADB                            R1 1
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETUPVAL                         R1 0
       17 LOADB                            R2 0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_10:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
        3 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        5 JUMPIFEQ                         R2 R3 ; [+9]
        7 LOADB                            R1 0
        8 GETTABLEKS                       R2 R0 K0 ["UserInputType"]
       10 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       12 JUMPIFNOTEQ                      R2 R3 ; [+2]
       14 LOADB                            R1 1
       15 JUMPIFNOT                        R1 ; [+3]
       16 GETUPVAL                         R1 0
       17 LOADB                            R2 1
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R0 R1 K0 ["InputBegan"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U1
        8 NAMECALL                         R0 R0 K1 ["Connect"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K2 ["InputEnded"]
       14 NEWCLOSURE                       R3 P1
       15 CAPTURE                          UPVAL U1
       16 NAMECALL                         R1 R1 K1 ["Connect"]
       18 CALL                             R1 2 1
       19 NEWCLOSURE                       R2 P2
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R1
       22 RETURN                           R2 1

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AbsoluteSize"]
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 LOADN                            R5 1
        6 GETTABLEKS                       R7 R0 K1 ["X"]
        8 GETTABLEKS                       R8 R0 K2 ["Y"]
       10 DIV                              R6 R7 R8
       11 FASTCALL2                        MATH_MIN R5 R6 ; [+3]
       13 GETIMPORT                        R4 K5 [math.min]
       15 CALL                             R4 2 1
       16 GETTABLEKS                       R7 R3 K7 ["FieldOfView"]
       18 DIVK                             R6 R7 K6 [2]
       19 FASTCALL1                        MATH_RAD R6 ; [+2]
       20 GETIMPORT                        R5 K9 [math.rad]
       22 CALL                             R5 1 1
       23 FASTCALL1                        MATH_TAN R5 ; [+3]
       24 MOVE                             R9 R5
       25 GETIMPORT                        R8 K11 [math.tan]
       27 CALL                             R8 1 1
       28 MUL                              R7 R8 R4
       29 FASTCALL1                        MATH_ATAN R7 ; [+2]
       30 GETIMPORT                        R6 K13 [math.atan]
       32 CALL                             R6 1 1
       33 GETTABLEKS                       R9 R2 K14 ["Size"]
       35 GETTABLEKS                       R8 R9 K15 ["Magnitude"]
       37 DIVK                             R7 R8 K6 [2]
       38 FASTCALL1                        MATH_SIN R6 ; [+3]
       39 MOVE                             R9 R6
       40 GETIMPORT                        R8 K17 [math.sin]
       42 CALL                             R8 1 1
       43 DIV                              R1 R7 R8
       44 JUMPIFEQ                         R1 R1 ; [+2]
       46 RETURN                           R0 0
       47 GETUPVAL                         R2 3
       48 MOVE                             R3 R1
       49 CALL                             R2 1 0
       50 GETUPVAL                         R4 2
       51 GETTABLEKS                       R3 R4 K18 ["CFrame"]
       53 GETTABLEKS                       R2 R3 K19 ["LookVector"]
       55 GETUPVAL                         R3 2
       56 GETIMPORT                        R4 K21 [CFrame.lookAt]
       58 GETUPVAL                         R8 2
       59 GETTABLEKS                       R7 R8 K22 ["Focus"]
       61 GETTABLEKS                       R6 R7 K23 ["Position"]
       63 MUL                              R7 R2 R1
       64 SUB                              R5 R6 R7
       65 GETUPVAL                         R8 2
       66 GETTABLEKS                       R7 R8 K22 ["Focus"]
       68 GETTABLEKS                       R6 R7 K23 ["Position"]
       70 CALL                             R4 2 1
       71 SETTABLEKS                       R4 R3 K18 ["CFrame"]
       73 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R0 1
        4 JUMPIFNOT                        R0 ; [+6]
        5 GETUPVAL                         R0 1
        6 LOADK                            R2 K0 ["BasePart"]
        7 NAMECALL                         R0 R0 K1 ["IsA"]
        9 CALL                             R0 2 1
       10 JUMPIF                           R0 ; [+1]
       11 RETURN                           R0 0
       12 NEWCLOSURE                       R0 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U2
       16 CAPTURE                          UPVAL U3
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K2 ["AbsoluteSize"]
       19 NAMECALL                         R1 R1 K3 ["GetPropertyChangedSignal"]
       21 CALL                             R1 2 1
       22 MOVE                             R3 R0
       23 NAMECALL                         R1 R1 K4 ["Connect"]
       25 CALL                             R1 2 1
       26 GETUPVAL                         R3 0
       27 GETTABLEKS                       R2 R3 K2 ["AbsoluteSize"]
       29 GETUPVAL                         R4 1
       30 GETUPVAL                         R5 2
       31 LOADN                            R7 1
       32 GETTABLEKS                       R9 R2 K5 ["X"]
       34 GETTABLEKS                       R10 R2 K6 ["Y"]
       36 DIV                              R8 R9 R10
       37 FASTCALL2                        MATH_MIN R7 R8 ; [+3]
       39 GETIMPORT                        R6 K9 [math.min]
       41 CALL                             R6 2 1
       42 GETTABLEKS                       R9 R5 K11 ["FieldOfView"]
       44 DIVK                             R8 R9 K10 [2]
       45 FASTCALL1                        MATH_RAD R8 ; [+2]
       46 GETIMPORT                        R7 K13 [math.rad]
       48 CALL                             R7 1 1
       49 FASTCALL1                        MATH_TAN R7 ; [+3]
       50 MOVE                             R11 R7
       51 GETIMPORT                        R10 K15 [math.tan]
       53 CALL                             R10 1 1
       54 MUL                              R9 R10 R6
       55 FASTCALL1                        MATH_ATAN R9 ; [+2]
       56 GETIMPORT                        R8 K17 [math.atan]
       58 CALL                             R8 1 1
       59 GETTABLEKS                       R11 R4 K18 ["Size"]
       61 GETTABLEKS                       R10 R11 K19 ["Magnitude"]
       63 DIVK                             R9 R10 K10 [2]
       64 FASTCALL1                        MATH_SIN R8 ; [+3]
       65 MOVE                             R11 R8
       66 GETIMPORT                        R10 K21 [math.sin]
       68 CALL                             R10 1 1
       69 DIV                              R3 R9 R10
       70 JUMPIFEQ                         R3 R3 ; [+2]
       72 JUMP                             ; [+26]
       73 GETUPVAL                         R4 3
       74 MOVE                             R5 R3
       75 CALL                             R4 1 0
       76 GETUPVAL                         R6 2
       77 GETTABLEKS                       R5 R6 K22 ["CFrame"]
       79 GETTABLEKS                       R4 R5 K23 ["LookVector"]
       81 GETUPVAL                         R5 2
       82 GETIMPORT                        R6 K25 [CFrame.lookAt]
       84 GETUPVAL                         R10 2
       85 GETTABLEKS                       R9 R10 K26 ["Focus"]
       87 GETTABLEKS                       R8 R9 K27 ["Position"]
       89 MUL                              R9 R4 R3
       90 SUB                              R7 R8 R9
       91 GETUPVAL                         R10 2
       92 GETTABLEKS                       R9 R10 K26 ["Focus"]
       94 GETTABLEKS                       R8 R9 K27 ["Position"]
       96 CALL                             R6 2 1
       97 SETTABLEKS                       R6 R5 K22 ["CFrame"]
       99 NEWCLOSURE                       R2 P1
      100 CAPTURE                          VAL R1
      101 RETURN                           R2 1

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["CFrame"]
        4 GETTABLEKS                       R1 R2 K1 ["LookVector"]
        6 SETTABLEKS                       R1 R0 K2 ["LightDirection"]
        8 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R0 R1 K0 ["Heartbeat"]
        6 NEWCLOSURE                       R2 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          UPVAL U2
        9 NAMECALL                         R0 R0 K1 ["Connect"]
       11 CALL                             R0 2 1
       12 NEWCLOSURE                       R1 P1
       13 CAPTURE                          VAL R0
       14 RETURN                           R1 1

PROTO_19:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useRef"]
        3 LOADNIL                          R2
        4 CALL                             R1 1 1
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K1 ["useState"]
        8 LOADNIL                          R3
        9 CALL                             R2 1 2
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K1 ["useState"]
       13 LOADN                            R5 1
       14 CALL                             R4 1 2
       15 GETUPVAL                         R7 0
       16 GETTABLEKS                       R6 R7 K1 ["useState"]
       18 LOADB                            R7 1
       19 CALL                             R6 1 2
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R8 R9 K2 ["useMemo"]
       23 DUPCLOSURE                       R9 K3 [PROTO_3]
       24 NEWTABLE                         R10 0 0
       26 CALL                             R8 2 1
       27 GETUPVAL                         R10 0
       28 GETTABLEKS                       R9 R10 K2 ["useMemo"]
       30 DUPCLOSURE                       R10 K4 [PROTO_4]
       31 NEWTABLE                         R11 0 0
       33 CALL                             R9 2 1
       34 GETTABLEKS                       R10 R0 K5 ["previewInstance"]
       36 GETUPVAL                         R12 0
       37 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       39 NEWCLOSURE                       R12 P2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 NEWTABLE                         R13 0 1
       44 GETTABLEKS                       R14 R1 K7 ["current"]
       46 SETLIST                          R13 R14 1 [1]
       48 CALL                             R11 2 0
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       52 NEWCLOSURE                       R12 P3
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R10
       55 CAPTURE                          UPVAL U1
       56 CAPTURE                          VAL R8
       57 NEWTABLE                         R13 0 3
       59 MOVE                             R14 R8
       60 MOVE                             R15 R6
       61 MOVE                             R16 R10
       62 SETLIST                          R13 R14 3 [1]
       64 CALL                             R11 2 0
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       68 NEWCLOSURE                       R12 P4
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R7
       71 NEWTABLE                         R13 0 2
       73 MOVE                             R14 R2
       74 MOVE                             R15 R7
       75 SETLIST                          R13 R14 2 [1]
       77 CALL                             R11 2 0
       78 GETUPVAL                         R12 0
       79 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       81 NEWCLOSURE                       R12 P5
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R5
       86 NEWTABLE                         R13 0 4
       88 MOVE                             R14 R2
       89 MOVE                             R15 R10
       90 MOVE                             R16 R8
       91 MOVE                             R17 R5
       92 SETLIST                          R13 R14 4 [1]
       94 CALL                             R11 2 0
       95 GETUPVAL                         R12 0
       96 GETTABLEKS                       R11 R12 K6 ["useEffect"]
       98 NEWCLOSURE                       R12 P6
       99 CAPTURE                          VAL R2
      100 CAPTURE                          UPVAL U1
      101 CAPTURE                          VAL R8
      102 NEWTABLE                         R13 0 2
      104 MOVE                             R14 R2
      105 MOVE                             R15 R8
      106 SETLIST                          R13 R14 2 [1]
      108 CALL                             R11 2 0
      109 JUMPIF                           R10 ; [+2]
      110 LOADNIL                          R11
      111 RETURN                           R11 1
      112 GETUPVAL                         R12 2
      113 JUMPIFNOTEQKB                    R12 FALSE ; [+20]
      115 LOADNIL                          R12
      116 SETUPVAL                         R12 2
      117 GETUPVAL                         R13 3
      118 GETTABLEKS                       R12 R13 K8 ["get"]
      120 CALL                             R12 0 1
      121 GETTABLEKS                       R13 R12 K9 ["isDevFrameworkAvailable"]
      123 CALL                             R13 0 1
      124 JUMPIFNOT                        R13 ; [+9]
      125 GETIMPORT                        R13 K11 [require]
      127 GETUPVAL                         R16 4
      128 GETTABLEKS                       R15 R16 K12 ["Parent"]
      130 GETTABLEKS                       R14 R15 K13 ["Framework"]
      132 CALL                             R13 1 1
      133 SETUPVAL                         R13 2
      134 GETUPVAL                         R11 2
      135 GETUPVAL                         R12 5
      136 LOADK                            R13 K14 ["Frame"]
      137 DUPTABLE                         R14 K18 [{"Size", "BackgroundTransparency", "ref"}]
      138 GETIMPORT                        R15 K21 [UDim2.fromScale]
      140 LOADN                            R16 1
      141 LOADN                            R17 1
      142 CALL                             R15 2 1
      143 SETTABLEKS                       R15 R14 K15 ["Size"]
      145 LOADN                            R15 1
      146 SETTABLEKS                       R15 R14 K16 ["BackgroundTransparency"]
      148 SETTABLEKS                       R1 R14 K17 ["ref"]
      150 DUPTABLE                         R15 K23 [{"Viewport"}]
      151 MOVE                             R16 R11
      152 JUMPIFNOT                        R16 ; [+37]
      153 GETUPVAL                         R16 5
      154 GETTABLEKS                       R18 R11 K24 ["UI"]
      156 GETTABLEKS                       R17 R18 K25 ["AssetRenderModel"]
      158 DUPTABLE                         R18 K36 [{"Model", "Size", "BackgroundColor3", "ShowResetCamera", "RecenterCameraOnUpdate", "RecenterModelOnUpdate", "DisablePan", "Camera", "FocusDirection", "LightDirection", "InitialDistance"}]
      159 SETTABLEKS                       R10 R18 K26 ["Model"]
      161 GETTABLEKS                       R19 R0 K15 ["Size"]
      163 SETTABLEKS                       R19 R18 K15 ["Size"]
      165 GETTABLEKS                       R19 R0 K27 ["BackgroundColor3"]
      167 SETTABLEKS                       R19 R18 K27 ["BackgroundColor3"]
      169 LOADB                            R19 0
      170 SETTABLEKS                       R19 R18 K28 ["ShowResetCamera"]
      172 LOADB                            R19 0
      173 SETTABLEKS                       R19 R18 K29 ["RecenterCameraOnUpdate"]
      175 LOADB                            R19 0
      176 SETTABLEKS                       R19 R18 K30 ["RecenterModelOnUpdate"]
      178 LOADB                            R19 1
      179 SETTABLEKS                       R19 R18 K31 ["DisablePan"]
      181 SETTABLEKS                       R8 R18 K32 ["Camera"]
      183 SETTABLEKS                       R9 R18 K33 ["FocusDirection"]
      185 SETTABLEKS                       R9 R18 K34 ["LightDirection"]
      187 SETTABLEKS                       R4 R18 K35 ["InitialDistance"]
      189 CALL                             R16 2 1
      190 SETTABLEKS                       R16 R15 K22 ["Viewport"]
      192 CALL                             R12 3 -1
      193 RETURN                           R12 -1

PROTO_20:
        0 DUPTABLE                         R0 K3 [{"FailedToGenerate", "Preparing", "UnknownError"}]
        1 GETUPVAL                         R1 0
        2 LOADK                            R3 K4 ["MeshGen"]
        3 LOADK                            R4 K0 ["FailedToGenerate"]
        4 NAMECALL                         R1 R1 K5 ["getText"]
        6 CALL                             R1 3 1
        7 SETTABLEKS                       R1 R0 K0 ["FailedToGenerate"]
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K4 ["MeshGen"]
       11 LOADK                            R4 K1 ["Preparing"]
       12 NAMECALL                         R1 R1 K5 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEKS                       R1 R0 K1 ["Preparing"]
       17 GETUPVAL                         R1 0
       18 LOADK                            R3 K4 ["MeshGen"]
       19 LOADK                            R4 K6 ["UnknownErrorHeader"]
       20 NAMECALL                         R1 R1 K5 ["getText"]
       22 CALL                             R1 3 1
       23 SETTABLEKS                       R1 R0 K2 ["UnknownError"]
       25 RETURN                           R0 1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["MeshGenContentWidget is only available when FFlagConvAIMeshGen is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K3 ["useMemo"]
       11 DUPCLOSURE                       R2 K4 [PROTO_20]
       12 CAPTURE                          UPVAL U2
       13 NEWTABLE                         R3 0 1
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R4 R5 K5 ["locale"]
       18 SETLIST                          R3 R4 1 [1]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R3 3
       22 CALL                             R3 0 1
       23 JUMPIFNOT                        R3 ; [+14]
       24 GETTABLEKS                       R3 R0 K6 ["isError"]
       26 NOT                              R2 R3
       27 JUMPIFNOT                        R2 ; [+11]
       28 GETTABLEKS                       R3 R0 K7 ["mode"]
       30 GETUPVAL                         R5 4
       31 GETTABLEKS                       R4 R5 K8 ["Preparing"]
       33 JUMPIFEQ                         R3 R4 ; [+2]
       35 LOADB                            R2 0 +1
       36 LOADB                            R2 1
       37 JUMP                             ; [+1]
       38 LOADB                            R2 1
       39 GETUPVAL                         R3 5
       40 CALL                             R3 0 1
       41 GETUPVAL                         R4 6
       42 GETUPVAL                         R6 7
       43 GETTABLEKS                       R5 R6 K9 ["Root"]
       45 DUPTABLE                         R6 K14 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
       46 GETTABLEKS                       R7 R0 K10 ["LayoutOrder"]
       48 SETTABLEKS                       R7 R6 K10 ["LayoutOrder"]
       50 LOADB                            R7 0
       51 SETTABLEKS                       R7 R6 K11 ["expanded"]
       53 GETTABLEKS                       R7 R0 K12 ["contentId"]
       55 SETTABLEKS                       R7 R6 K12 ["contentId"]
       57 GETTABLEKS                       R7 R0 K13 ["editThisContent"]
       59 SETTABLEKS                       R7 R6 K13 ["editThisContent"]
       61 DUPTABLE                         R7 K16 [{"Header"}]
       62 GETUPVAL                         R8 6
       63 GETUPVAL                         R10 7
       64 GETTABLEKS                       R9 R10 K15 ["Header"]
       66 DUPTABLE                         R10 K19 [{"IsDisabled", "LayoutOrder", "testId"}]
       67 LOADB                            R11 1
       68 SETTABLEKS                       R11 R10 K17 ["IsDisabled"]
       70 MOVE                             R11 R3
       71 CALL                             R11 0 1
       72 SETTABLEKS                       R11 R10 K10 ["LayoutOrder"]
       74 GETUPVAL                         R13 8
       75 GETTABLEKS                       R12 R13 K20 ["MeshGen"]
       77 GETTABLEKS                       R11 R12 K21 ["Expand"]
       79 SETTABLEKS                       R11 R10 K18 ["testId"]
       81 DUPTABLE                         R11 K23 [{"Text"}]
       82 GETUPVAL                         R12 6
       83 GETUPVAL                         R13 9
       84 DUPTABLE                         R14 K25 [{"tag", "Text", "LayoutOrder"}]
       85 LOADK                            R15 K26 ["size-0-full auto-x text-label-small content-default text-truncate-end text-align-y-center"]
       86 SETTABLEKS                       R15 R14 K24 ["tag"]
       88 GETUPVAL                         R16 3
       89 CALL                             R16 0 1
       90 JUMPIFNOT                        R16 ; [+19]
       91 GETTABLEKS                       R16 R0 K6 ["isError"]
       93 JUMPIFNOT                        R16 ; [+3]
       94 GETTABLEKS                       R15 R1 K27 ["FailedToGenerate"]
       96 JUMP                             ; [+15]
       97 GETTABLEKS                       R16 R0 K7 ["mode"]
       99 GETUPVAL                         R18 4
      100 GETTABLEKS                       R17 R18 K8 ["Preparing"]
      102 JUMPIFNOTEQ                      R16 R17 ; [+4]
      104 GETTABLEKS                       R15 R1 K8 ["Preparing"]
      106 JUMP                             ; [+5]
      107 GETTABLEKS                       R15 R1 K28 ["UnknownError"]
      109 JUMP                             ; [+2]
      110 GETTABLEKS                       R15 R1 K8 ["Preparing"]
      112 SETTABLEKS                       R15 R14 K22 ["Text"]
      114 MOVE                             R15 R3
      115 CALL                             R15 0 1
      116 SETTABLEKS                       R15 R14 K10 ["LayoutOrder"]
      118 DUPTABLE                         R15 K30 [{"Shimmer"}]
      119 MOVE                             R16 R2
      120 JUMPIFNOT                        R16 ; [+3]
      121 GETUPVAL                         R16 6
      122 GETUPVAL                         R17 10
      123 CALL                             R16 1 1
      124 SETTABLEKS                       R16 R15 K29 ["Shimmer"]
      126 CALL                             R12 3 1
      127 SETTABLEKS                       R12 R11 K22 ["Text"]
      129 CALL                             R8 3 1
      130 SETTABLEKS                       R8 R7 K15 ["Header"]
      132 CALL                             R4 3 -1
      133 RETURN                           R4 -1

PROTO_22:
        0 DUPTABLE                         R0 K12 [{"Status", "GenerationFailureTitles", "FailureReason", "Cancel", "Generated", "Generate", "Regenerate", "TryAgain", "WaitingForUser", "UseSelection", "Publish", "AddToPlace"}]
        1 DUPTABLE                         R1 K15 [{"GeneratingMesh", "GeneratingTexture"}]
        2 GETUPVAL                         R2 0
        3 LOADK                            R4 K16 ["MeshGen"]
        4 LOADK                            R5 K13 ["GeneratingMesh"]
        5 NAMECALL                         R2 R2 K17 ["getText"]
        7 CALL                             R2 3 1
        8 SETTABLEKS                       R2 R1 K13 ["GeneratingMesh"]
       10 GETUPVAL                         R2 0
       11 LOADK                            R4 K16 ["MeshGen"]
       12 LOADK                            R5 K14 ["GeneratingTexture"]
       13 NAMECALL                         R2 R2 K17 ["getText"]
       15 CALL                             R2 3 1
       16 SETTABLEKS                       R2 R1 K14 ["GeneratingTexture"]
       18 SETTABLEKS                       R1 R0 K0 ["Status"]
       20 DUPTABLE                         R1 K20 [{"MeshGenerationFailed", "TextureGenerationFailed"}]
       21 GETUPVAL                         R2 0
       22 LOADK                            R4 K16 ["MeshGen"]
       23 LOADK                            R5 K18 ["MeshGenerationFailed"]
       24 NAMECALL                         R2 R2 K17 ["getText"]
       26 CALL                             R2 3 1
       27 SETTABLEKS                       R2 R1 K18 ["MeshGenerationFailed"]
       29 GETUPVAL                         R2 0
       30 LOADK                            R4 K16 ["MeshGen"]
       31 LOADK                            R5 K19 ["TextureGenerationFailed"]
       32 NAMECALL                         R2 R2 K17 ["getText"]
       34 CALL                             R2 3 1
       35 SETTABLEKS                       R2 R1 K19 ["TextureGenerationFailed"]
       37 SETTABLEKS                       R1 R0 K1 ["GenerationFailureTitles"]
       39 DUPTABLE                         R1 K27 [{"GenerationModerated", "GenerationFailed", "GenerationCanceled", "PublishFailed", "InsertFailed", "UnknownError"}]
       40 GETUPVAL                         R2 0
       41 LOADK                            R4 K16 ["MeshGen"]
       42 LOADK                            R5 K21 ["GenerationModerated"]
       43 DUPTABLE                         R6 K29 [{"link"}]
       44 GETUPVAL                         R7 1
       45 CALL                             R7 0 1
       46 SETTABLEKS                       R7 R6 K28 ["link"]
       48 NAMECALL                         R2 R2 K17 ["getText"]
       50 CALL                             R2 4 1
       51 SETTABLEKS                       R2 R1 K21 ["GenerationModerated"]
       53 GETUPVAL                         R2 0
       54 LOADK                            R4 K16 ["MeshGen"]
       55 LOADK                            R5 K22 ["GenerationFailed"]
       56 NAMECALL                         R2 R2 K17 ["getText"]
       58 CALL                             R2 3 1
       59 SETTABLEKS                       R2 R1 K22 ["GenerationFailed"]
       61 GETUPVAL                         R2 0
       62 LOADK                            R4 K16 ["MeshGen"]
       63 LOADK                            R5 K23 ["GenerationCanceled"]
       64 NAMECALL                         R2 R2 K17 ["getText"]
       66 CALL                             R2 3 1
       67 SETTABLEKS                       R2 R1 K23 ["GenerationCanceled"]
       69 GETUPVAL                         R2 0
       70 LOADK                            R4 K16 ["MeshGen"]
       71 LOADK                            R5 K24 ["PublishFailed"]
       72 NAMECALL                         R2 R2 K17 ["getText"]
       74 CALL                             R2 3 1
       75 SETTABLEKS                       R2 R1 K24 ["PublishFailed"]
       77 GETUPVAL                         R2 0
       78 LOADK                            R4 K16 ["MeshGen"]
       79 LOADK                            R5 K25 ["InsertFailed"]
       80 NAMECALL                         R2 R2 K17 ["getText"]
       82 CALL                             R2 3 1
       83 SETTABLEKS                       R2 R1 K25 ["InsertFailed"]
       85 GETUPVAL                         R2 0
       86 LOADK                            R4 K16 ["MeshGen"]
       87 LOADK                            R5 K26 ["UnknownError"]
       88 NAMECALL                         R2 R2 K17 ["getText"]
       90 CALL                             R2 3 1
       91 SETTABLEKS                       R2 R1 K26 ["UnknownError"]
       93 SETTABLEKS                       R1 R0 K2 ["FailureReason"]
       95 GETUPVAL                         R1 0
       96 LOADK                            R3 K16 ["MeshGen"]
       97 LOADK                            R4 K3 ["Cancel"]
       98 NAMECALL                         R1 R1 K17 ["getText"]
      100 CALL                             R1 3 1
      101 SETTABLEKS                       R1 R0 K3 ["Cancel"]
      103 GETUPVAL                         R1 0
      104 LOADK                            R3 K16 ["MeshGen"]
      105 LOADK                            R4 K4 ["Generated"]
      106 NAMECALL                         R1 R1 K17 ["getText"]
      108 CALL                             R1 3 1
      109 SETTABLEKS                       R1 R0 K4 ["Generated"]
      111 GETUPVAL                         R1 0
      112 LOADK                            R3 K16 ["MeshGen"]
      113 LOADK                            R4 K5 ["Generate"]
      114 NAMECALL                         R1 R1 K17 ["getText"]
      116 CALL                             R1 3 1
      117 SETTABLEKS                       R1 R0 K5 ["Generate"]
      119 GETUPVAL                         R1 0
      120 LOADK                            R3 K16 ["MeshGen"]
      121 LOADK                            R4 K6 ["Regenerate"]
      122 NAMECALL                         R1 R1 K17 ["getText"]
      124 CALL                             R1 3 1
      125 SETTABLEKS                       R1 R0 K6 ["Regenerate"]
      127 GETUPVAL                         R1 0
      128 LOADK                            R3 K16 ["MeshGen"]
      129 LOADK                            R4 K7 ["TryAgain"]
      130 NAMECALL                         R1 R1 K17 ["getText"]
      132 CALL                             R1 3 1
      133 SETTABLEKS                       R1 R0 K7 ["TryAgain"]
      135 GETUPVAL                         R1 0
      136 LOADK                            R3 K16 ["MeshGen"]
      137 LOADK                            R4 K8 ["WaitingForUser"]
      138 NAMECALL                         R1 R1 K17 ["getText"]
      140 CALL                             R1 3 1
      141 SETTABLEKS                       R1 R0 K8 ["WaitingForUser"]
      143 GETUPVAL                         R1 0
      144 LOADK                            R3 K16 ["MeshGen"]
      145 LOADK                            R4 K9 ["UseSelection"]
      146 NAMECALL                         R1 R1 K17 ["getText"]
      148 CALL                             R1 3 1
      149 SETTABLEKS                       R1 R0 K9 ["UseSelection"]
      151 GETUPVAL                         R1 0
      152 LOADK                            R3 K16 ["MeshGen"]
      153 LOADK                            R4 K10 ["Publish"]
      154 NAMECALL                         R1 R1 K17 ["getText"]
      156 CALL                             R1 3 1
      157 SETTABLEKS                       R1 R0 K10 ["Publish"]
      159 GETUPVAL                         R1 0
      160 LOADK                            R3 K16 ["MeshGen"]
      161 LOADK                            R4 K11 ["AddToPlace"]
      162 NAMECALL                         R1 R1 K17 ["getText"]
      164 CALL                             R1 3 1
      165 SETTABLEKS                       R1 R0 K11 ["AddToPlace"]
      167 RETURN                           R0 1

PROTO_23:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R2 0
        2 GETTABLE                         R1 R2 R0
        3 JUMPIF                           R1 ; [+1]
        4 LOADK                            R1 K0 [""]
        5 RETURN                           R1 1

PROTO_24:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+6]
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["GenerationFailureTitles"]
        5 GETTABLEKS                       R0 R1 K1 ["TextureGenerationFailed"]
        7 RETURN                           R0 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K0 ["GenerationFailureTitles"]
       11 GETTABLEKS                       R0 R1 K2 ["MeshGenerationFailed"]
       13 RETURN                           R0 1

PROTO_25:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETUPVAL                         R2 0
        2 GETTABLE                         R1 R2 R0
        3 JUMPIF                           R1 ; [+5]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["FailureReason"]
        7 GETTABLEKS                       R1 R2 K1 ["UnknownError"]
        9 RETURN                           R1 1

PROTO_26:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 JUMPIFNOTLE                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 ADDK                             R1 R2 K0 [1]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R0 R1 K1 ["runGeneration"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 1
        3 JUMPIFNOTLE                      R1 R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R2 0
        8 ADDK                             R1 R2 K0 [1]
        9 CALL                             R0 1 0
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R0 R1 K1 ["publishAssets"]
       13 CALL                             R0 0 0
       14 RETURN                           R0 0

PROTO_28:
        0 LOADN                            R1 1
        1 GETUPVAL                         R2 0
        2 FASTCALL2                        MATH_MAX R1 R2 ; [+3]
        4 GETIMPORT                        R0 K2 [math.max]
        6 CALL                             R0 2 1
        7 GETUPVAL                         R1 1
        8 JUMPIFNOTLT                      R0 R1 ; [+4]
       10 GETUPVAL                         R1 2
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 SUBK                             R0 R1 K1 [1]
        6 LOADN                            R1 1
        7 JUMPIFNOTLT                      R0 R1 ; [+2]
        9 GETUPVAL                         R0 0
       10 GETUPVAL                         R1 2
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_30:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOTEQKN                    R0 K0 [0] ; [+2]
        3 RETURN                           R0 0
        4 GETUPVAL                         R1 1
        5 ADDK                             R0 R1 K1 [1]
        6 GETUPVAL                         R1 0
        7 JUMPIFNOTLT                      R1 R0 ; [+2]
        9 LOADN                            R0 1
       10 GETUPVAL                         R1 2
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_31:
        0 GETUPVAL                         R1 0
        1 NOT                              R0 R1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["setUseSelection"]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 2
        8 MOVE                             R2 R0
        9 CALL                             R1 1 0
       10 RETURN                           R0 0

PROTO_32:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["get"]
        3 CALL                             R0 0 1
        4 GETTABLEKS                       R1 R0 K1 ["getClassIcon"]
        6 LOADK                            R2 K2 ["MeshPart"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_33:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["get"]
        3 CALL                             R1 0 1
        4 GETTABLEKS                       R3 R1 K1 ["http"]
        6 GETTABLEKS                       R2 R3 K2 ["openUrl"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_34:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+20]
        2 DUPTABLE                         R0 K1 [{"Text"}]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 2
        5 DUPTABLE                         R3 K4 [{"tag", "Text", "LayoutOrder"}]
        6 LOADK                            R4 K5 ["size-0-0 auto-xy text-label-small content-default text-truncate-end"]
        7 SETTABLEKS                       R4 R3 K2 ["tag"]
        9 GETUPVAL                         R5 3
       10 GETTABLEKS                       R4 R5 K6 ["WaitingForUser"]
       12 SETTABLEKS                       R4 R3 K0 ["Text"]
       14 GETUPVAL                         R4 4
       15 CALL                             R4 0 1
       16 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       18 CALL                             R1 2 1
       19 SETTABLEKS                       R1 R0 K0 ["Text"]
       21 RETURN                           R0 1
       22 GETUPVAL                         R0 5
       23 JUMPIFNOT                        R0 ; [+31]
       24 DUPTABLE                         R0 K1 [{"Text"}]
       25 GETUPVAL                         R1 1
       26 GETUPVAL                         R2 2
       27 DUPTABLE                         R3 K4 [{"tag", "Text", "LayoutOrder"}]
       28 LOADK                            R4 K5 ["size-0-0 auto-xy text-label-small content-default text-truncate-end"]
       29 SETTABLEKS                       R4 R3 K2 ["tag"]
       31 GETUPVAL                         R6 6
       32 GETTABLEKS                       R5 R6 K7 ["generationState"]
       34 JUMPIFNOT                        R5 ; [+3]
       35 GETUPVAL                         R6 7
       36 GETTABLE                         R4 R6 R5
       37 JUMPIF                           R4 ; [+1]
       38 LOADK                            R4 K8 [""]
       39 SETTABLEKS                       R4 R3 K0 ["Text"]
       41 GETUPVAL                         R4 4
       42 CALL                             R4 0 1
       43 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       45 DUPTABLE                         R4 K10 [{"Shimmer"}]
       46 GETUPVAL                         R5 1
       47 GETUPVAL                         R6 8
       48 CALL                             R5 1 1
       49 SETTABLEKS                       R5 R4 K9 ["Shimmer"]
       51 CALL                             R1 3 1
       52 SETTABLEKS                       R1 R0 K0 ["Text"]
       54 RETURN                           R0 1
       55 GETUPVAL                         R0 9
       56 JUMPIFNOT                        R0 ; [+33]
       57 GETUPVAL                         R0 10
       58 JUMPIF                           R0 ; [+31]
       59 DUPTABLE                         R0 K1 [{"Text"}]
       60 GETUPVAL                         R1 1
       61 GETUPVAL                         R2 2
       62 DUPTABLE                         R3 K4 [{"tag", "Text", "LayoutOrder"}]
       63 LOADK                            R4 K5 ["size-0-0 auto-xy text-label-small content-default text-truncate-end"]
       64 SETTABLEKS                       R4 R3 K2 ["tag"]
       66 GETUPVAL                         R5 11
       67 JUMPIFNOT                        R5 ; [+6]
       68 GETUPVAL                         R6 3
       69 GETTABLEKS                       R5 R6 K11 ["GenerationFailureTitles"]
       71 GETTABLEKS                       R4 R5 K12 ["TextureGenerationFailed"]
       73 JUMP                             ; [+6]
       74 GETUPVAL                         R6 3
       75 GETTABLEKS                       R5 R6 K11 ["GenerationFailureTitles"]
       77 GETTABLEKS                       R4 R5 K13 ["MeshGenerationFailed"]
       79 JUMP                             ; [0]
       80 SETTABLEKS                       R4 R3 K0 ["Text"]
       82 GETUPVAL                         R4 4
       83 CALL                             R4 0 1
       84 SETTABLEKS                       R4 R3 K3 ["LayoutOrder"]
       86 CALL                             R1 2 1
       87 SETTABLEKS                       R1 R0 K0 ["Text"]
       89 RETURN                           R0 1
       90 GETUPVAL                         R1 3
       91 GETTABLEKS                       R0 R1 K14 ["Generated"]
       93 GETUPVAL                         R2 6
       94 GETTABLEKS                       R1 R2 K15 ["shouldShowChip"]
       96 JUMPIF                           R1 ; [+6]
       97 MOVE                             R1 R0
       98 LOADK                            R2 K16 [" "]
       99 GETUPVAL                         R4 6
      100 GETTABLEKS                       R3 R4 K17 ["generationDisplayName"]
      102 CONCAT                           R0 R1 R3
      103 DUPTABLE                         R1 K19 [{"Text", "AssetLink"}]
      104 GETUPVAL                         R2 1
      105 GETUPVAL                         R3 2
      106 DUPTABLE                         R4 K4 [{"tag", "Text", "LayoutOrder"}]
      107 LOADK                            R5 K5 ["size-0-0 auto-xy text-label-small content-default text-truncate-end"]
      108 SETTABLEKS                       R5 R4 K2 ["tag"]
      110 SETTABLEKS                       R0 R4 K0 ["Text"]
      112 GETUPVAL                         R5 4
      113 CALL                             R5 0 1
      114 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
      116 CALL                             R2 2 1
      117 SETTABLEKS                       R2 R1 K0 ["Text"]
      119 GETUPVAL                         R3 6
      120 GETTABLEKS                       R2 R3 K15 ["shouldShowChip"]
      122 JUMPIFNOT                        R2 ; [+35]
      123 GETUPVAL                         R2 1
      124 GETUPVAL                         R3 12
      125 DUPTABLE                         R4 K25 [{"text", "leading", "onActivated", "isChecked", "size", "LayoutOrder"}]
      126 GETUPVAL                         R6 6
      127 GETTABLEKS                       R5 R6 K17 ["generationDisplayName"]
      129 SETTABLEKS                       R5 R4 K20 ["text"]
      131 GETUPVAL                         R6 13
      132 GETTABLEKS                       R5 R6 K26 ["Image"]
      134 SETTABLEKS                       R5 R4 K21 ["leading"]
      136 GETUPVAL                         R6 6
      137 GETTABLEKS                       R5 R6 K27 ["onChipClicked"]
      139 SETTABLEKS                       R5 R4 K22 ["onActivated"]
      141 LOADB                            R5 0
      142 SETTABLEKS                       R5 R4 K23 ["isChecked"]
      144 GETUPVAL                         R8 14
      145 GETTABLEKS                       R7 R8 K28 ["Enums"]
      147 GETTABLEKS                       R6 R7 K29 ["ChipSize"]
      149 GETTABLEKS                       R5 R6 K30 ["Small"]
      151 SETTABLEKS                       R5 R4 K24 ["size"]
      153 GETUPVAL                         R5 4
      154 CALL                             R5 0 1
      155 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
      157 CALL                             R2 2 1
      158 SETTABLEKS                       R2 R1 K18 ["AssetLink"]
      160 RETURN                           R1 1

PROTO_35:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["MeshGenContentWidget is only available when FFlagConvAIMeshGen is enabled"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["Hooks"]
       11 GETTABLEKS                       R1 R2 K4 ["useTokens"]
       13 CALL                             R1 0 1
       14 GETTABLEKS                       R4 R1 K5 ["Config"]
       16 GETTABLEKS                       R3 R4 K6 ["ColorMode"]
       18 GETTABLEKS                       R2 R3 K7 ["Name"]
       20 GETUPVAL                         R4 2
       21 GETTABLEKS                       R3 R4 K8 ["useState"]
       23 LOADN                            R4 0
       24 CALL                             R3 1 2
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K8 ["useState"]
       28 LOADN                            R6 0
       29 CALL                             R5 1 2
       30 GETTABLEKS                       R8 R0 K9 ["generationState"]
       32 GETUPVAL                         R11 3
       33 GETTABLEKS                       R10 R11 K10 ["GenerationState"]
       35 GETTABLEKS                       R9 R10 K11 ["None"]
       37 JUMPIFEQ                         R8 R9 ; [+2]
       39 LOADB                            R7 0 +1
       40 LOADB                            R7 1
       41 GETTABLEKS                       R9 R0 K9 ["generationState"]
       43 GETUPVAL                         R12 3
       44 GETTABLEKS                       R11 R12 K10 ["GenerationState"]
       46 GETTABLEKS                       R10 R11 K12 ["GeneratingMesh"]
       48 JUMPIFEQ                         R9 R10 ; [+2]
       50 LOADB                            R8 0 +1
       51 LOADB                            R8 1
       52 GETTABLEKS                       R10 R0 K13 ["insertState"]
       54 GETUPVAL                         R13 3
       55 GETTABLEKS                       R12 R13 K14 ["InsertionState"]
       57 GETTABLEKS                       R11 R12 K15 ["Publishing"]
       59 JUMPIFEQ                         R10 R11 ; [+2]
       61 LOADB                            R9 0 +1
       62 LOADB                            R9 1
       63 GETTABLEKS                       R11 R0 K13 ["insertState"]
       65 GETUPVAL                         R14 3
       66 GETTABLEKS                       R13 R14 K14 ["InsertionState"]
       68 GETTABLEKS                       R12 R13 K16 ["Inserting"]
       70 JUMPIFEQ                         R11 R12 ; [+2]
       72 LOADB                            R10 0 +1
       73 LOADB                            R10 1
       74 MOVE                             R11 R8
       75 JUMPIF                           R11 ; [+11]
       76 GETTABLEKS                       R12 R0 K9 ["generationState"]
       78 GETUPVAL                         R15 3
       79 GETTABLEKS                       R14 R15 K10 ["GenerationState"]
       81 GETTABLEKS                       R13 R14 K17 ["GeneratingTexture"]
       83 JUMPIFEQ                         R12 R13 ; [+2]
       85 LOADB                            R11 0 +1
       86 LOADB                            R11 1
       87 GETTABLEKS                       R13 R0 K9 ["generationState"]
       89 GETUPVAL                         R16 3
       90 GETTABLEKS                       R15 R16 K10 ["GenerationState"]
       92 GETTABLEKS                       R14 R15 K18 ["Generated"]
       94 JUMPIFEQ                         R13 R14 ; [+2]
       96 LOADB                            R12 0 +1
       97 LOADB                            R12 1
       98 LOADB                            R13 1
       99 GETTABLEKS                       R14 R0 K9 ["generationState"]
      101 GETUPVAL                         R17 3
      102 GETTABLEKS                       R16 R17 K10 ["GenerationState"]
      104 GETTABLEKS                       R15 R16 K19 ["GenerationFailed"]
      106 JUMPIFEQ                         R14 R15 ; [+12]
      108 GETTABLEKS                       R14 R0 K13 ["insertState"]
      110 GETUPVAL                         R17 3
      111 GETTABLEKS                       R16 R17 K14 ["InsertionState"]
      113 GETTABLEKS                       R15 R16 K20 ["Failed"]
      115 JUMPIFEQ                         R14 R15 ; [+2]
      117 LOADB                            R13 0 +1
      118 LOADB                            R13 1
      119 GETTABLEKS                       R15 R0 K21 ["previewInstance"]
      121 JUMPIFNOTEQKNIL                  R15 ; [+2]
      123 LOADB                            R14 0 +1
      124 LOADB                            R14 1
      125 GETTABLEKS                       R15 R0 K22 ["previewImages"]
      127 JUMPIFNOT                        R15 ; [+11]
      128 GETTABLEKS                       R15 R0 K22 ["previewImages"]
      130 LOADNIL                          R16
      131 LOADNIL                          R17
      132 FORGPREP                         R15
      133 JUMPIFEQKS                       R19 K23 [""] ; [+3]
      135 LOADB                            R14 1
      136 JUMP                             ; [+2]
      137 FORGLOOP                         R15 2 ; [-5]
      139 GETUPVAL                         R16 2
      140 GETTABLEKS                       R15 R16 K24 ["useMemo"]
      142 DUPCLOSURE                       R16 K25 [PROTO_22]
      143 CAPTURE                          UPVAL U4
      144 CAPTURE                          UPVAL U5
      145 NEWTABLE                         R17 0 1
      147 GETUPVAL                         R19 4
      148 GETTABLEKS                       R18 R19 K26 ["locale"]
      150 SETLIST                          R17 R18 1 [1]
      152 CALL                             R15 2 1
      153 NEWTABLE                         R16 2 0
      155 GETUPVAL                         R19 3
      156 GETTABLEKS                       R18 R19 K10 ["GenerationState"]
      158 GETTABLEKS                       R17 R18 K12 ["GeneratingMesh"]
      160 GETTABLEKS                       R19 R15 K27 ["Status"]
      162 GETTABLEKS                       R18 R19 K12 ["GeneratingMesh"]
      164 SETTABLE                         R18 R16 R17
      165 GETUPVAL                         R19 3
      166 GETTABLEKS                       R18 R19 K10 ["GenerationState"]
      168 GETTABLEKS                       R17 R18 K17 ["GeneratingTexture"]
      170 GETTABLEKS                       R19 R15 K27 ["Status"]
      172 GETTABLEKS                       R18 R19 K17 ["GeneratingTexture"]
      174 SETTABLE                         R18 R16 R17
      175 NEWCLOSURE                       R17 P1
      176 CAPTURE                          VAL R16
      177 NEWCLOSURE                       R18 P2
      178 CAPTURE                          REF R14
      179 CAPTURE                          VAL R15
      180 NEWTABLE                         R19 8 0
      182 GETUPVAL                         R22 3
      183 GETTABLEKS                       R21 R22 K28 ["GenerationFailureReason"]
      185 GETTABLEKS                       R20 R21 K29 ["Moderated"]
      187 GETTABLEKS                       R22 R15 K30 ["FailureReason"]
      189 GETTABLEKS                       R21 R22 K31 ["GenerationModerated"]
      191 SETTABLE                         R21 R19 R20
      192 GETUPVAL                         R22 3
      193 GETTABLEKS                       R21 R22 K28 ["GenerationFailureReason"]
      195 GETTABLEKS                       R20 R21 K20 ["Failed"]
      197 GETTABLEKS                       R22 R15 K30 ["FailureReason"]
      199 GETTABLEKS                       R21 R22 K19 ["GenerationFailed"]
      201 SETTABLE                         R21 R19 R20
      202 GETUPVAL                         R22 3
      203 GETTABLEKS                       R21 R22 K28 ["GenerationFailureReason"]
      205 GETTABLEKS                       R20 R21 K32 ["Canceled"]
      207 GETTABLEKS                       R22 R15 K30 ["FailureReason"]
      209 GETTABLEKS                       R21 R22 K33 ["GenerationCanceled"]
      211 SETTABLE                         R21 R19 R20
      212 GETUPVAL                         R22 3
      213 GETTABLEKS                       R21 R22 K34 ["InsertionFailureReason"]
      215 GETTABLEKS                       R20 R21 K35 ["PublishFailed"]
      217 GETTABLEKS                       R22 R15 K30 ["FailureReason"]
      219 GETTABLEKS                       R21 R22 K35 ["PublishFailed"]
      221 SETTABLE                         R21 R19 R20
      222 GETUPVAL                         R22 3
      223 GETTABLEKS                       R21 R22 K34 ["InsertionFailureReason"]
      225 GETTABLEKS                       R20 R21 K36 ["InsertFailed"]
      227 GETTABLEKS                       R22 R15 K30 ["FailureReason"]
      229 GETTABLEKS                       R21 R22 K36 ["InsertFailed"]
      231 SETTABLE                         R21 R19 R20
      232 NEWCLOSURE                       R20 P3
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R15
      235 GETUPVAL                         R22 2
      236 GETTABLEKS                       R21 R22 K37 ["useCallback"]
      238 NEWCLOSURE                       R22 P4
      239 CAPTURE                          VAL R3
      240 CAPTURE                          UPVAL U6
      241 CAPTURE                          VAL R4
      242 CAPTURE                          VAL R0
      243 NEWTABLE                         R23 0 3
      245 MOVE                             R24 R3
      246 MOVE                             R25 R4
      247 GETTABLEKS                       R26 R0 K38 ["runGeneration"]
      249 SETLIST                          R23 R24 3 [1]
      251 CALL                             R21 2 1
      252 GETUPVAL                         R23 2
      253 GETTABLEKS                       R22 R23 K37 ["useCallback"]
      255 NEWCLOSURE                       R23 P5
      256 CAPTURE                          VAL R5
      257 CAPTURE                          UPVAL U7
      258 CAPTURE                          VAL R6
      259 CAPTURE                          VAL R0
      260 NEWTABLE                         R24 0 3
      262 MOVE                             R25 R5
      263 MOVE                             R26 R6
      264 GETTABLEKS                       R27 R0 K39 ["publishAssets"]
      266 SETLIST                          R24 R25 3 [1]
      268 CALL                             R22 2 1
      269 GETUPVAL                         R24 2
      270 GETTABLEKS                       R23 R24 K8 ["useState"]
      272 LOADN                            R24 1
      273 CALL                             R23 1 2
      274 GETTABLEKS                       R26 R0 K22 ["previewImages"]
      276 LENGTH                           R25 R26
      277 GETUPVAL                         R27 2
      278 GETTABLEKS                       R26 R27 K40 ["useEffect"]
      280 NEWCLOSURE                       R27 P6
      281 CAPTURE                          VAL R25
      282 CAPTURE                          VAL R23
      283 CAPTURE                          VAL R24
      284 NEWTABLE                         R28 0 2
      286 MOVE                             R29 R25
      287 MOVE                             R30 R23
      288 SETLIST                          R28 R29 2 [1]
      290 CALL                             R26 2 0
      291 GETUPVAL                         R27 2
      292 GETTABLEKS                       R26 R27 K37 ["useCallback"]
      294 NEWCLOSURE                       R27 P7
      295 CAPTURE                          VAL R25
      296 CAPTURE                          VAL R23
      297 CAPTURE                          VAL R24
      298 NEWTABLE                         R28 0 3
      300 MOVE                             R29 R25
      301 MOVE                             R30 R23
      302 MOVE                             R31 R24
      303 SETLIST                          R28 R29 3 [1]
      305 CALL                             R26 2 1
      306 GETUPVAL                         R28 2
      307 GETTABLEKS                       R27 R28 K37 ["useCallback"]
      309 NEWCLOSURE                       R28 P8
      310 CAPTURE                          VAL R25
      311 CAPTURE                          VAL R23
      312 CAPTURE                          VAL R24
      313 NEWTABLE                         R29 0 3
      315 MOVE                             R30 R25
      316 MOVE                             R31 R23
      317 MOVE                             R32 R24
      318 SETLIST                          R29 R30 3 [1]
      320 CALL                             R27 2 1
      321 GETUPVAL                         R29 2
      322 GETTABLEKS                       R28 R29 K8 ["useState"]
      324 GETTABLEKS                       R29 R0 K41 ["initialUseSelection"]
      326 CALL                             R28 1 2
      327 GETUPVAL                         R31 2
      328 GETTABLEKS                       R30 R31 K37 ["useCallback"]
      330 NEWCLOSURE                       R31 P9
      331 CAPTURE                          VAL R28
      332 CAPTURE                          VAL R0
      333 CAPTURE                          VAL R29
      334 NEWTABLE                         R32 0 2
      336 MOVE                             R33 R28
      337 MOVE                             R34 R29
      338 SETLIST                          R32 R33 2 [1]
      340 CALL                             R30 2 1
      341 GETUPVAL                         R32 2
      342 GETTABLEKS                       R31 R32 K24 ["useMemo"]
      344 DUPCLOSURE                       R32 K42 [PROTO_32]
      345 CAPTURE                          UPVAL U8
      346 NEWTABLE                         R33 0 1
      348 MOVE                             R34 R2
      349 SETLIST                          R33 R34 1 [1]
      351 CALL                             R31 2 1
      352 GETUPVAL                         R33 2
      353 GETTABLEKS                       R32 R33 K37 ["useCallback"]
      355 DUPCLOSURE                       R33 K43 [PROTO_33]
      356 CAPTURE                          UPVAL U8
      357 NEWTABLE                         R34 0 0
      359 CALL                             R32 2 1
      360 GETUPVAL                         R33 9
      361 CALL                             R33 0 1
      362 NEWCLOSURE                       R34 P12
      363 CAPTURE                          VAL R7
      364 CAPTURE                          UPVAL U10
      365 CAPTURE                          UPVAL U11
      366 CAPTURE                          VAL R15
      367 CAPTURE                          VAL R33
      368 CAPTURE                          VAL R11
      369 CAPTURE                          VAL R0
      370 CAPTURE                          VAL R16
      371 CAPTURE                          UPVAL U12
      372 CAPTURE                          VAL R13
      373 CAPTURE                          VAL R12
      374 CAPTURE                          REF R14
      375 CAPTURE                          UPVAL U13
      376 CAPTURE                          VAL R31
      377 CAPTURE                          UPVAL U1
      378 GETUPVAL                         R35 10
      379 GETUPVAL                         R37 14
      380 GETTABLEKS                       R36 R37 K44 ["Root"]
      382 DUPTABLE                         R37 K49 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      383 GETTABLEKS                       R38 R0 K45 ["LayoutOrder"]
      385 SETTABLEKS                       R38 R37 K45 ["LayoutOrder"]
      387 GETTABLEKS                       R38 R0 K46 ["expanded"]
      389 SETTABLEKS                       R38 R37 K46 ["expanded"]
      391 GETTABLEKS                       R38 R0 K47 ["contentId"]
      393 SETTABLEKS                       R38 R37 K47 ["contentId"]
      395 GETTABLEKS                       R38 R0 K48 ["editThisContent"]
      397 SETTABLEKS                       R38 R37 K48 ["editThisContent"]
      399 DUPTABLE                         R38 K52 [{"Header", "Content"}]
      400 GETUPVAL                         R39 10
      401 GETUPVAL                         R41 14
      402 GETTABLEKS                       R40 R41 K50 ["Header"]
      404 DUPTABLE                         R41 K54 [{"LayoutOrder", "testId"}]
      405 MOVE                             R42 R33
      406 CALL                             R42 0 1
      407 SETTABLEKS                       R42 R41 K45 ["LayoutOrder"]
      409 GETUPVAL                         R44 15
      410 GETTABLEKS                       R43 R44 K55 ["MeshGen"]
      412 GETTABLEKS                       R42 R43 K56 ["Expand"]
      414 SETTABLEKS                       R42 R41 K53 ["testId"]
      416 MOVE                             R42 R34
      417 CALL                             R42 0 1
      418 CALL                             R39 3 1
      419 SETTABLEKS                       R39 R38 K50 ["Header"]
      421 GETUPVAL                         R39 10
      422 GETUPVAL                         R41 14
      423 GETTABLEKS                       R40 R41 K51 ["Content"]
      425 DUPTABLE                         R41 K58 [{"tag", "LayoutOrder"}]
      426 LOADK                            R42 K59 ["col size-0-0 fill auto-y gap-small"]
      427 SETTABLEKS                       R42 R41 K57 ["tag"]
      429 MOVE                             R42 R33
      430 CALL                             R42 0 1
      431 SETTABLEKS                       R42 R41 K45 ["LayoutOrder"]
      433 DUPTABLE                         R42 K62 [{"MainContent", "InfoBar"}]
      434 JUMPIF                           R11 ; [+2]
      435 MOVE                             R43 R14
      436 JUMPIFNOT                        R43 ; [+186]
      437 GETUPVAL                         R43 10
      438 GETUPVAL                         R44 16
      439 DUPTABLE                         R45 K58 [{"tag", "LayoutOrder"}]
      440 LOADK                            R46 K63 ["size-full-0 auto-y radius-small"]
      441 SETTABLEKS                       R46 R45 K57 ["tag"]
      443 MOVE                             R46 R33
      444 CALL                             R46 0 1
      445 SETTABLEKS                       R46 R45 K45 ["LayoutOrder"]
      447 DUPTABLE                         R46 K66 [{"Skeleton", "Preview"}]
      448 NOT                              R47 R14
      449 JUMPIFNOT                        R47 ; [+26]
      450 GETUPVAL                         R47 10
      451 GETUPVAL                         R48 17
      452 DUPTABLE                         R49 K69 [{"Size", "radius", "LayoutOrder"}]
      453 GETIMPORT                        R50 K72 [UDim2.new]
      455 LOADN                            R51 1
      456 LOADN                            R52 0
      457 LOADN                            R53 0
      458 LOADN                            R54 225
      459 CALL                             R50 4 1
      460 SETTABLEKS                       R50 R49 K67 ["Size"]
      462 GETUPVAL                         R53 1
      463 GETTABLEKS                       R52 R53 K73 ["Enums"]
      465 GETTABLEKS                       R51 R52 K74 ["Radius"]
      467 GETTABLEKS                       R50 R51 K75 ["Small"]
      469 SETTABLEKS                       R50 R49 K68 ["radius"]
      471 MOVE                             R50 R33
      472 CALL                             R50 0 1
      473 SETTABLEKS                       R50 R49 K45 ["LayoutOrder"]
      475 CALL                             R47 2 1
      476 SETTABLEKS                       R47 R46 K64 ["Skeleton"]
      478 MOVE                             R47 R14
      479 JUMPIFNOT                        R47 ; [+140]
      480 GETUPVAL                         R47 10
      481 GETUPVAL                         R48 16
      482 DUPTABLE                         R49 K58 [{"tag", "LayoutOrder"}]
      483 LOADK                            R50 K76 ["size-full-0 auto-y bg-shift-200 radius-small"]
      484 SETTABLEKS                       R50 R49 K57 ["tag"]
      486 MOVE                             R50 R33
      487 CALL                             R50 0 1
      488 SETTABLEKS                       R50 R49 K45 ["LayoutOrder"]
      490 DUPTABLE                         R50 K78 [{"AssetPreview"}]
      491 GETUPVAL                         R52 18
      492 CALL                             R52 0 1
      493 JUMPIFNOT                        R52 ; [+26]
      494 GETUPVAL                         R51 10
      495 GETUPVAL                         R52 19
      496 DUPTABLE                         R53 K80 [{"Size", "BackgroundColor3", "previewInstance"}]
      497 GETIMPORT                        R54 K72 [UDim2.new]
      499 LOADN                            R55 1
      500 LOADN                            R56 0
      501 LOADN                            R57 0
      502 LOADN                            R58 225
      503 CALL                             R54 4 1
      504 SETTABLEKS                       R54 R53 K67 ["Size"]
      506 GETIMPORT                        R54 K83 [Color3.fromRGB]
      508 LOADN                            R55 0
      509 LOADN                            R56 0
      510 LOADN                            R57 0
      511 CALL                             R54 3 1
      512 SETTABLEKS                       R54 R53 K79 ["BackgroundColor3"]
      514 GETTABLEKS                       R54 R0 K21 ["previewInstance"]
      516 SETTABLEKS                       R54 R53 K21 ["previewInstance"]
      518 CALL                             R51 2 1
      519 JUMP                             ; [+97]
      520 GETUPVAL                         R51 10
      521 GETUPVAL                         R52 20
      522 DUPTABLE                         R53 K86 [{"tag", "Image", "Size", "BackgroundColor3", "ScaleType", "testId"}]
      523 LOADK                            R54 K87 ["row align-x-center align-y-center flex-x-between padding-x-small padding-y-small"]
      524 SETTABLEKS                       R54 R53 K57 ["tag"]
      526 GETTABLEKS                       R55 R0 K22 ["previewImages"]
      528 GETTABLE                         R54 R55 R23
      529 SETTABLEKS                       R54 R53 K84 ["Image"]
      531 GETIMPORT                        R54 K72 [UDim2.new]
      533 LOADN                            R55 1
      534 LOADN                            R56 0
      535 LOADN                            R57 0
      536 LOADN                            R58 225
      537 CALL                             R54 4 1
      538 SETTABLEKS                       R54 R53 K67 ["Size"]
      540 GETIMPORT                        R54 K83 [Color3.fromRGB]
      542 LOADN                            R55 0
      543 LOADN                            R56 0
      544 LOADN                            R57 0
      545 CALL                             R54 3 1
      546 SETTABLEKS                       R54 R53 K79 ["BackgroundColor3"]
      548 GETIMPORT                        R54 K90 [Enum.ScaleType.Fit]
      550 SETTABLEKS                       R54 R53 K85 ["ScaleType"]
      552 GETUPVAL                         R56 15
      553 GETTABLEKS                       R55 R56 K55 ["MeshGen"]
      555 GETTABLEKS                       R54 R55 K91 ["PreviewImage"]
      557 SETTABLEKS                       R54 R53 K53 ["testId"]
      559 DUPTABLE                         R54 K94 [{"LastPreview", "NextPreview"}]
      560 GETUPVAL                         R55 10
      561 GETUPVAL                         R56 21
      562 DUPTABLE                         R57 K98 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      563 LOADK                            R58 K99 ["icons/controls/keys/arrowLeft"]
      564 SETTABLEKS                       R58 R57 K95 ["icon"]
      566 LOADK                            R58 K100 ["size-600-600 align-x-center align-y-center radius-small"]
      567 SETTABLEKS                       R58 R57 K57 ["tag"]
      569 LOADK                            R58 K101 ["size-400-400 content-emphasis"]
      570 SETTABLEKS                       R58 R57 K96 ["iconTag"]
      572 SETTABLEKS                       R26 R57 K97 ["onActivated"]
      574 MOVE                             R58 R33
      575 CALL                             R58 0 1
      576 SETTABLEKS                       R58 R57 K45 ["LayoutOrder"]
      578 GETUPVAL                         R60 15
      579 GETTABLEKS                       R59 R60 K55 ["MeshGen"]
      581 GETTABLEKS                       R58 R59 K92 ["LastPreview"]
      583 SETTABLEKS                       R58 R57 K53 ["testId"]
      585 CALL                             R55 2 1
      586 SETTABLEKS                       R55 R54 K92 ["LastPreview"]
      588 GETUPVAL                         R55 10
      589 GETUPVAL                         R56 21
      590 DUPTABLE                         R57 K98 [{"icon", "tag", "iconTag", "onActivated", "LayoutOrder", "testId"}]
      591 LOADK                            R58 K102 ["icons/controls/keys/arrowRight"]
      592 SETTABLEKS                       R58 R57 K95 ["icon"]
      594 LOADK                            R58 K100 ["size-600-600 align-x-center align-y-center radius-small"]
      595 SETTABLEKS                       R58 R57 K57 ["tag"]
      597 LOADK                            R58 K101 ["size-400-400 content-emphasis"]
      598 SETTABLEKS                       R58 R57 K96 ["iconTag"]
      600 SETTABLEKS                       R27 R57 K97 ["onActivated"]
      602 MOVE                             R58 R33
      603 CALL                             R58 0 1
      604 SETTABLEKS                       R58 R57 K45 ["LayoutOrder"]
      606 GETUPVAL                         R60 15
      607 GETTABLEKS                       R59 R60 K55 ["MeshGen"]
      609 GETTABLEKS                       R58 R59 K93 ["NextPreview"]
      611 SETTABLEKS                       R58 R57 K53 ["testId"]
      613 CALL                             R55 2 1
      614 SETTABLEKS                       R55 R54 K93 ["NextPreview"]
      616 CALL                             R51 3 1
      617 SETTABLEKS                       R51 R50 K77 ["AssetPreview"]
      619 CALL                             R47 3 1
      620 SETTABLEKS                       R47 R46 K65 ["Preview"]
      622 CALL                             R43 3 1
      623 SETTABLEKS                       R43 R42 K60 ["MainContent"]
      625 GETUPVAL                         R43 10
      626 GETUPVAL                         R44 16
      627 DUPTABLE                         R45 K58 [{"tag", "LayoutOrder"}]
      628 LOADK                            R46 K103 ["size-full-0 auto-y gap-small row align-y-center"]
      629 SETTABLEKS                       R46 R45 K57 ["tag"]
      631 MOVE                             R46 R33
      632 CALL                             R46 0 1
      633 SETTABLEKS                       R46 R45 K45 ["LayoutOrder"]
      635 DUPTABLE                         R46 K106 [{"LeftSpace", "Buttons"}]
      636 GETUPVAL                         R47 10
      637 GETUPVAL                         R48 16
      638 DUPTABLE                         R49 K58 [{"tag", "LayoutOrder"}]
      639 LOADK                            R50 K107 ["fill auto-y gap-small row align-y-center"]
      640 SETTABLEKS                       R50 R49 K57 ["tag"]
      642 MOVE                             R50 R33
      643 CALL                             R50 0 1
      644 SETTABLEKS                       R50 R49 K45 ["LayoutOrder"]
      646 DUPTABLE                         R50 K110 [{"FailureMessage", "GenerationSettings"}]
      647 MOVE                             R51 R13
      648 JUMPIFNOT                        R51 ; [+62]
      649 GETUPVAL                         R51 10
      650 GETUPVAL                         R52 16
      651 DUPTABLE                         R53 K58 [{"tag", "LayoutOrder"}]
      652 LOADK                            R54 K111 ["size-0-800 auto-x row gap-xsmall align-y-center"]
      653 SETTABLEKS                       R54 R53 K57 ["tag"]
      655 MOVE                             R54 R33
      656 CALL                             R54 0 1
      657 SETTABLEKS                       R54 R53 K45 ["LayoutOrder"]
      659 DUPTABLE                         R54 K114 [{"ErrorIcon", "TextContainer"}]
      660 GETUPVAL                         R55 10
      661 GETUPVAL                         R56 20
      662 DUPTABLE                         R57 K115 [{"tag", "Image"}]
      663 LOADK                            R58 K116 ["size-400-400"]
      664 SETTABLEKS                       R58 R57 K57 ["tag"]
      666 GETUPVAL                         R59 22
      667 GETTABLE                         R58 R59 R2
      668 SETTABLEKS                       R58 R57 K84 ["Image"]
      670 CALL                             R55 2 1
      671 SETTABLEKS                       R55 R54 K112 ["ErrorIcon"]
      673 GETUPVAL                         R55 10
      674 GETUPVAL                         R56 16
      675 DUPTABLE                         R57 K58 [{"tag", "LayoutOrder"}]
      676 LOADK                            R58 K117 ["shrink size-full-0 auto-y"]
      677 SETTABLEKS                       R58 R57 K57 ["tag"]
      679 MOVE                             R58 R33
      680 CALL                             R58 0 1
      681 SETTABLEKS                       R58 R57 K45 ["LayoutOrder"]
      683 DUPTABLE                         R58 K119 [{"Text"}]
      684 GETUPVAL                         R59 10
      685 GETUPVAL                         R60 23
      686 DUPTABLE                         R61 K122 [{"markdown", "linkCallback", "LayoutOrder"}]
      687 GETTABLEKS                       R63 R0 K123 ["failureReason"]
      689 JUMPIFNOT                        R63 ; [+2]
      690 GETTABLE                         R62 R19 R63
      691 JUMPIF                           R62 ; [+4]
      692 GETTABLEKS                       R64 R15 K30 ["FailureReason"]
      694 GETTABLEKS                       R62 R64 K124 ["UnknownError"]
      696 SETTABLEKS                       R62 R61 K120 ["markdown"]
      698 SETTABLEKS                       R32 R61 K121 ["linkCallback"]
      700 MOVE                             R62 R33
      701 CALL                             R62 0 1
      702 SETTABLEKS                       R62 R61 K45 ["LayoutOrder"]
      704 CALL                             R59 2 1
      705 SETTABLEKS                       R59 R58 K118 ["Text"]
      707 CALL                             R55 3 1
      708 SETTABLEKS                       R55 R54 K113 ["TextContainer"]
      710 CALL                             R51 3 1
      711 SETTABLEKS                       R51 R50 K108 ["FailureMessage"]
      713 MOVE                             R51 R7
      714 JUMPIFNOT                        R51 ; [+46]
      715 GETUPVAL                         R51 10
      716 GETUPVAL                         R52 16
      717 DUPTABLE                         R53 K58 [{"tag", "LayoutOrder"}]
      718 LOADK                            R54 K125 ["auto-xy col gap-xsmall padding-small align-y-center"]
      719 SETTABLEKS                       R54 R53 K57 ["tag"]
      721 MOVE                             R54 R33
      722 CALL                             R54 0 1
      723 SETTABLEKS                       R54 R53 K45 ["LayoutOrder"]
      725 DUPTABLE                         R54 K127 [{"UseSelectionCheckbox"}]
      726 GETUPVAL                         R55 10
      727 GETUPVAL                         R56 24
      728 DUPTABLE                         R57 K131 [{"size", "label", "isChecked", "onActivated", "LayoutOrder", "testId"}]
      729 GETUPVAL                         R61 1
      730 GETTABLEKS                       R60 R61 K73 ["Enums"]
      732 GETTABLEKS                       R59 R60 K132 ["InputSize"]
      734 GETTABLEKS                       R58 R59 K133 ["XSmall"]
      736 SETTABLEKS                       R58 R57 K128 ["size"]
      738 GETTABLEKS                       R58 R15 K134 ["UseSelection"]
      740 SETTABLEKS                       R58 R57 K129 ["label"]
      742 SETTABLEKS                       R28 R57 K130 ["isChecked"]
      744 SETTABLEKS                       R30 R57 K97 ["onActivated"]
      746 MOVE                             R58 R33
      747 CALL                             R58 0 1
      748 SETTABLEKS                       R58 R57 K45 ["LayoutOrder"]
      750 GETUPVAL                         R60 15
      751 GETTABLEKS                       R59 R60 K55 ["MeshGen"]
      753 GETTABLEKS                       R58 R59 K134 ["UseSelection"]
      755 SETTABLEKS                       R58 R57 K53 ["testId"]
      757 CALL                             R55 2 1
      758 SETTABLEKS                       R55 R54 K126 ["UseSelectionCheckbox"]
      760 CALL                             R51 3 1
      761 SETTABLEKS                       R51 R50 K109 ["GenerationSettings"]
      763 CALL                             R47 3 1
      764 SETTABLEKS                       R47 R46 K104 ["LeftSpace"]
      766 GETUPVAL                         R47 10
      767 GETUPVAL                         R48 16
      768 DUPTABLE                         R49 K58 [{"tag", "LayoutOrder"}]
      769 LOADK                            R50 K135 ["auto-xy row gap-small"]
      770 SETTABLEKS                       R50 R49 K57 ["tag"]
      772 MOVE                             R50 R33
      773 CALL                             R50 0 1
      774 SETTABLEKS                       R50 R49 K45 ["LayoutOrder"]
      776 DUPTABLE                         R50 K141 [{"CancelButton", "GenerateButton", "RegenerateButton", "PublishButton", "InsertButton"}]
      777 MOVE                             R51 R11
      778 JUMPIFNOT                        R51 ; [+44]
      779 GETUPVAL                         R51 10
      780 GETUPVAL                         R52 25
      781 DUPTABLE                         R53 K144 [{"tag", "variant", "size", "text", "onActivated", "LayoutOrder", "testId"}]
      782 LOADK                            R54 K145 ["auto-x size-0-800 radius-medium stroke-standard padding-x-medium bg-action-standard"]
      783 SETTABLEKS                       R54 R53 K57 ["tag"]
      785 GETUPVAL                         R57 1
      786 GETTABLEKS                       R56 R57 K73 ["Enums"]
      788 GETTABLEKS                       R55 R56 K146 ["ButtonVariant"]
      790 GETTABLEKS                       R54 R55 K147 ["Standard"]
      792 SETTABLEKS                       R54 R53 K142 ["variant"]
      794 GETUPVAL                         R57 1
      795 GETTABLEKS                       R56 R57 K73 ["Enums"]
      797 GETTABLEKS                       R55 R56 K132 ["InputSize"]
      799 GETTABLEKS                       R54 R55 K75 ["Small"]
      801 SETTABLEKS                       R54 R53 K128 ["size"]
      803 GETTABLEKS                       R54 R15 K148 ["Cancel"]
      805 SETTABLEKS                       R54 R53 K143 ["text"]
      807 GETTABLEKS                       R54 R0 K149 ["cancelGeneration"]
      809 SETTABLEKS                       R54 R53 K97 ["onActivated"]
      811 MOVE                             R54 R33
      812 CALL                             R54 0 1
      813 SETTABLEKS                       R54 R53 K45 ["LayoutOrder"]
      815 GETUPVAL                         R56 15
      816 GETTABLEKS                       R55 R56 K55 ["MeshGen"]
      818 GETTABLEKS                       R54 R55 K148 ["Cancel"]
      820 SETTABLEKS                       R54 R53 K53 ["testId"]
      822 CALL                             R51 2 1
      823 SETTABLEKS                       R51 R50 K136 ["CancelButton"]
      825 MOVE                             R51 R7
      826 JUMPIFNOT                        R51 ; [+37]
      827 GETUPVAL                         R51 10
      828 GETUPVAL                         R52 25
      829 DUPTABLE                         R53 K150 [{"tag", "variant", "size", "text", "onActivated", "LayoutOrder"}]
      830 LOADK                            R54 K145 ["auto-x size-0-800 radius-medium stroke-standard padding-x-medium bg-action-standard"]
      831 SETTABLEKS                       R54 R53 K57 ["tag"]
      833 GETUPVAL                         R57 1
      834 GETTABLEKS                       R56 R57 K73 ["Enums"]
      836 GETTABLEKS                       R55 R56 K146 ["ButtonVariant"]
      838 GETTABLEKS                       R54 R55 K147 ["Standard"]
      840 SETTABLEKS                       R54 R53 K142 ["variant"]
      842 GETUPVAL                         R57 1
      843 GETTABLEKS                       R56 R57 K73 ["Enums"]
      845 GETTABLEKS                       R55 R56 K132 ["InputSize"]
      847 GETTABLEKS                       R54 R55 K75 ["Small"]
      849 SETTABLEKS                       R54 R53 K128 ["size"]
      851 GETTABLEKS                       R54 R15 K151 ["Generate"]
      853 SETTABLEKS                       R54 R53 K143 ["text"]
      855 GETTABLEKS                       R54 R0 K38 ["runGeneration"]
      857 SETTABLEKS                       R54 R53 K97 ["onActivated"]
      859 MOVE                             R54 R33
      860 CALL                             R54 0 1
      861 SETTABLEKS                       R54 R53 K45 ["LayoutOrder"]
      863 CALL                             R51 2 1
      864 SETTABLEKS                       R51 R50 K137 ["GenerateButton"]
      866 LOADB                            R51 0
      867 GETTABLEKS                       R52 R0 K9 ["generationState"]
      869 GETUPVAL                         R55 3
      870 GETTABLEKS                       R54 R55 K10 ["GenerationState"]
      872 GETTABLEKS                       R53 R54 K19 ["GenerationFailed"]
      874 JUMPIFNOTEQ                      R52 R53 ; [+58]
      876 LOADB                            R51 0
      877 GETTABLEKS                       R52 R0 K123 ["failureReason"]
      879 GETUPVAL                         R55 3
      880 GETTABLEKS                       R54 R55 K28 ["GenerationFailureReason"]
      882 GETTABLEKS                       R53 R54 K32 ["Canceled"]
      884 JUMPIFEQ                         R52 R53 ; [+48]
      886 LOADB                            R51 0
      887 GETUPVAL                         R52 6
      888 CALL                             R52 0 1
      889 JUMPIFNOTLT                      R3 R52 ; [+43]
      891 GETUPVAL                         R51 10
      892 GETUPVAL                         R52 25
      893 DUPTABLE                         R53 K144 [{"tag", "variant", "size", "text", "onActivated", "LayoutOrder", "testId"}]
      894 LOADK                            R54 K145 ["auto-x size-0-800 radius-medium stroke-standard padding-x-medium bg-action-standard"]
      895 SETTABLEKS                       R54 R53 K57 ["tag"]
      897 GETUPVAL                         R57 1
      898 GETTABLEKS                       R56 R57 K73 ["Enums"]
      900 GETTABLEKS                       R55 R56 K146 ["ButtonVariant"]
      902 GETTABLEKS                       R54 R55 K147 ["Standard"]
      904 SETTABLEKS                       R54 R53 K142 ["variant"]
      906 GETUPVAL                         R57 1
      907 GETTABLEKS                       R56 R57 K73 ["Enums"]
      909 GETTABLEKS                       R55 R56 K132 ["InputSize"]
      911 GETTABLEKS                       R54 R55 K75 ["Small"]
      913 SETTABLEKS                       R54 R53 K128 ["size"]
      915 GETTABLEKS                       R54 R15 K152 ["Regenerate"]
      917 SETTABLEKS                       R54 R53 K143 ["text"]
      919 SETTABLEKS                       R21 R53 K97 ["onActivated"]
      921 MOVE                             R54 R33
      922 CALL                             R54 0 1
      923 SETTABLEKS                       R54 R53 K45 ["LayoutOrder"]
      925 GETUPVAL                         R56 15
      926 GETTABLEKS                       R55 R56 K55 ["MeshGen"]
      928 GETTABLEKS                       R54 R55 K152 ["Regenerate"]
      930 SETTABLEKS                       R54 R53 K53 ["testId"]
      932 CALL                             R51 2 1
      933 SETTABLEKS                       R51 R50 K138 ["RegenerateButton"]
      935 MOVE                             R51 R12
      936 JUMPIFNOT                        R51 ; [+57]
      937 GETTABLEKS                       R52 R0 K153 ["isPublished"]
      939 NOT                              R51 R52
      940 JUMPIFNOT                        R51 ; [+53]
      941 LOADB                            R51 0
      942 GETUPVAL                         R52 7
      943 CALL                             R52 0 1
      944 JUMPIFNOTLT                      R5 R52 ; [+49]
      946 GETUPVAL                         R51 10
      947 GETUPVAL                         R52 25
      948 DUPTABLE                         R53 K155 [{"tag", "variant", "size", "isLoading", "text", "onActivated", "LayoutOrder", "testId"}]
      949 LOADK                            R54 K156 ["auto-x size-0-800 radius-medium stroke-standard padding-x-medium bg-action-soft-emphasis"]
      950 SETTABLEKS                       R54 R53 K57 ["tag"]
      952 GETUPVAL                         R57 1
      953 GETTABLEKS                       R56 R57 K73 ["Enums"]
      955 GETTABLEKS                       R55 R56 K146 ["ButtonVariant"]
      957 GETTABLEKS                       R54 R55 K157 ["Emphasis"]
      959 SETTABLEKS                       R54 R53 K142 ["variant"]
      961 GETUPVAL                         R57 1
      962 GETTABLEKS                       R56 R57 K73 ["Enums"]
      964 GETTABLEKS                       R55 R56 K132 ["InputSize"]
      966 GETTABLEKS                       R54 R55 K75 ["Small"]
      968 SETTABLEKS                       R54 R53 K128 ["size"]
      970 SETTABLEKS                       R9 R53 K154 ["isLoading"]
      972 JUMPIFNOT                        R13 ; [+3]
      973 GETTABLEKS                       R54 R15 K158 ["TryAgain"]
      975 JUMP                             ; [+2]
      976 GETTABLEKS                       R54 R15 K159 ["Publish"]
      978 SETTABLEKS                       R54 R53 K143 ["text"]
      980 SETTABLEKS                       R22 R53 K97 ["onActivated"]
      982 MOVE                             R54 R33
      983 CALL                             R54 0 1
      984 SETTABLEKS                       R54 R53 K45 ["LayoutOrder"]
      986 GETUPVAL                         R56 15
      987 GETTABLEKS                       R55 R56 K55 ["MeshGen"]
      989 GETTABLEKS                       R54 R55 K159 ["Publish"]
      991 SETTABLEKS                       R54 R53 K53 ["testId"]
      993 CALL                             R51 2 1
      994 SETTABLEKS                       R51 R50 K139 ["PublishButton"]
      996 MOVE                             R51 R12
      997 JUMPIFNOT                        R51 ; [+53]
      998 GETTABLEKS                       R51 R0 K153 ["isPublished"]
     1000 JUMPIFNOT                        R51 ; [+50]
     1001 GETUPVAL                         R51 10
     1002 GETUPVAL                         R52 25
     1003 DUPTABLE                         R53 K155 [{"tag", "variant", "size", "isLoading", "text", "onActivated", "LayoutOrder", "testId"}]
     1004 LOADK                            R54 K156 ["auto-x size-0-800 radius-medium stroke-standard padding-x-medium bg-action-soft-emphasis"]
     1005 SETTABLEKS                       R54 R53 K57 ["tag"]
     1007 GETUPVAL                         R57 1
     1008 GETTABLEKS                       R56 R57 K73 ["Enums"]
     1010 GETTABLEKS                       R55 R56 K146 ["ButtonVariant"]
     1012 GETTABLEKS                       R54 R55 K157 ["Emphasis"]
     1014 SETTABLEKS                       R54 R53 K142 ["variant"]
     1016 GETUPVAL                         R57 1
     1017 GETTABLEKS                       R56 R57 K73 ["Enums"]
     1019 GETTABLEKS                       R55 R56 K132 ["InputSize"]
     1021 GETTABLEKS                       R54 R55 K75 ["Small"]
     1023 SETTABLEKS                       R54 R53 K128 ["size"]
     1025 SETTABLEKS                       R10 R53 K154 ["isLoading"]
     1027 JUMPIFNOT                        R13 ; [+3]
     1028 GETTABLEKS                       R54 R15 K158 ["TryAgain"]
     1030 JUMP                             ; [+2]
     1031 GETTABLEKS                       R54 R15 K160 ["AddToPlace"]
     1033 SETTABLEKS                       R54 R53 K143 ["text"]
     1035 GETTABLEKS                       R54 R0 K161 ["insertMeshPart"]
     1037 SETTABLEKS                       R54 R53 K97 ["onActivated"]
     1039 MOVE                             R54 R33
     1040 CALL                             R54 0 1
     1041 SETTABLEKS                       R54 R53 K45 ["LayoutOrder"]
     1043 GETUPVAL                         R56 15
     1044 GETTABLEKS                       R55 R56 K55 ["MeshGen"]
     1046 GETTABLEKS                       R54 R55 K162 ["Insert"]
     1048 SETTABLEKS                       R54 R53 K53 ["testId"]
     1050 CALL                             R51 2 1
     1051 SETTABLEKS                       R51 R50 K140 ["InsertButton"]
     1053 CALL                             R47 3 1
     1054 SETTABLEKS                       R47 R46 K105 ["Buttons"]
     1056 CALL                             R43 3 1
     1057 SETTABLEKS                       R43 R42 K61 ["InfoBar"]
     1059 CALL                             R39 3 1
     1060 SETTABLEKS                       R39 R38 K51 ["Content"]
     1062 CALL                             R35 3 -1
     1063 CLOSEUPVALS                      R14
     1064 RETURN                           R35 -1

PROTO_36:
        0 GETTABLEKS                       R1 R0 K0 ["mode"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["Preparing"]
        5 JUMPIFNOTEQ                      R1 R2 ; [+6]
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R0
       10 CALL                             R1 2 -1
       11 RETURN                           R1 -1
       12 GETTABLEKS                       R1 R0 K0 ["mode"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R2 R3 K2 ["Generated"]
       17 JUMPIFNOTEQ                      R1 R2 ; [+6]
       19 GETUPVAL                         R1 1
       20 GETUPVAL                         R2 3
       21 MOVE                             R3 R0
       22 CALL                             R1 2 -1
       23 RETURN                           R1 -1
       24 RETURN                           R0 0

PROTO_37:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K3 ["mode"]
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K4 ["Generated"]
       13 JUMPIFEQ                         R1 R2 ; [+11]
       15 DUPTABLE                         R1 K6 [{"type", "mode"}]
       16 GETTABLEKS                       R2 R0 K5 ["type"]
       18 SETTABLEKS                       R2 R1 K5 ["type"]
       20 GETTABLEKS                       R2 R0 K3 ["mode"]
       22 SETTABLEKS                       R2 R1 K3 ["mode"]
       24 RETURN                           R1 1
       25 DUPTABLE                         R1 K14 [{"type", "mode", "generationName", "generationState", "insertState", "failureReason", "isPublished", "previewImages", "shouldShowChip"}]
       26 GETTABLEKS                       R2 R0 K5 ["type"]
       28 SETTABLEKS                       R2 R1 K5 ["type"]
       30 GETTABLEKS                       R2 R0 K3 ["mode"]
       32 SETTABLEKS                       R2 R1 K3 ["mode"]
       34 GETTABLEKS                       R2 R0 K7 ["generationName"]
       36 SETTABLEKS                       R2 R1 K7 ["generationName"]
       38 GETTABLEKS                       R2 R0 K8 ["generationState"]
       40 SETTABLEKS                       R2 R1 K8 ["generationState"]
       42 GETTABLEKS                       R2 R0 K9 ["insertState"]
       44 SETTABLEKS                       R2 R1 K9 ["insertState"]
       46 GETTABLEKS                       R2 R0 K10 ["failureReason"]
       48 SETTABLEKS                       R2 R1 K10 ["failureReason"]
       50 GETTABLEKS                       R2 R0 K11 ["isPublished"]
       52 SETTABLEKS                       R2 R1 K11 ["isPublished"]
       54 GETTABLEKS                       R2 R0 K12 ["previewImages"]
       56 SETTABLEKS                       R2 R1 K12 ["previewImages"]
       58 GETTABLEKS                       R2 R0 K13 ["shouldShowChip"]
       60 SETTABLEKS                       R2 R1 K13 ["shouldShowChip"]
       62 RETURN                           R1 1

PROTO_38:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        4 LOADK                            R3 K0 ["FFlagAssistantPersistConversations is not enabled!"]
        5 GETIMPORT                        R1 K2 [assert]
        7 CALL                             R1 2 0
        8 DUPTABLE                         R1 K6 [{"type", "mode", "isError"}]
        9 GETTABLEKS                       R2 R0 K3 ["type"]
       11 SETTABLEKS                       R2 R1 K3 ["type"]
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K7 ["Preparing"]
       16 SETTABLEKS                       R2 R1 K4 ["mode"]
       18 LOADB                            R2 1
       19 SETTABLEKS                       R2 R1 K5 ["isError"]
       21 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["RunService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R4 K11 ["Accordion"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R0 K10 ["Components"]
       24 GETTABLEKS                       R4 R5 K12 ["CustomIconButton"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R0 K13 ["Guest"]
       31 GETTABLEKS                       R5 R6 K14 ["Environment"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R0 K15 ["Parent"]
       38 GETTABLEKS                       R6 R7 K16 ["Foundation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R8 R0 K10 ["Components"]
       45 GETTABLEKS                       R7 R8 K17 ["MarkdownText"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K9 [require]
       50 GETTABLEKS                       R9 R0 K15 ["Parent"]
       52 GETTABLEKS                       R8 R9 K18 ["React"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K9 [require]
       57 GETTABLEKS                       R10 R0 K15 ["Parent"]
       59 GETTABLEKS                       R9 R10 K19 ["ReactUtils"]
       61 CALL                             R8 1 1
       62 GETIMPORT                        R9 K9 [require]
       64 GETTABLEKS                       R11 R0 K10 ["Components"]
       66 GETTABLEKS                       R10 R11 K20 ["ShimmerGradient"]
       68 CALL                             R9 1 1
       69 GETIMPORT                        R10 K9 [require]
       71 GETTABLEKS                       R12 R0 K21 ["Util"]
       73 GETTABLEKS                       R11 R12 K22 ["TestIds"]
       75 CALL                             R10 1 1
       76 GETIMPORT                        R11 K9 [require]
       78 GETTABLEKS                       R14 R0 K23 ["Resources"]
       80 GETTABLEKS                       R13 R14 K24 ["Localization"]
       82 GETTABLEKS                       R12 R13 K25 ["Translator"]
       84 CALL                             R11 1 1
       85 GETIMPORT                        R12 K9 [require]
       87 GETTABLEKS                       R13 R0 K26 ["Types"]
       89 CALL                             R12 1 1
       90 GETIMPORT                        R13 K9 [require]
       92 GETTABLEKS                       R15 R0 K27 ["Flags"]
       94 GETTABLEKS                       R14 R15 K28 ["FFlagAssistantPersistConversations"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R14 K9 [require]
       99 GETTABLEKS                       R16 R0 K27 ["Flags"]
      101 GETTABLEKS                       R15 R16 K29 ["FFlagConvAIMeshGen"]
      103 CALL                             R14 1 1
      104 GETIMPORT                        R15 K9 [require]
      106 GETTABLEKS                       R17 R0 K27 ["Flags"]
      108 GETTABLEKS                       R16 R17 K30 ["FFlagDebugConvAIMeshGenDynamicPreview"]
      110 CALL                             R15 1 1
      111 GETIMPORT                        R16 K9 [require]
      113 GETTABLEKS                       R18 R0 K27 ["Flags"]
      115 GETTABLEKS                       R17 R18 K31 ["FIntConvAIMeshGenGenerationRetryLimit"]
      117 CALL                             R16 1 1
      118 GETIMPORT                        R17 K9 [require]
      120 GETTABLEKS                       R19 R0 K27 ["Flags"]
      122 GETTABLEKS                       R18 R19 K32 ["FIntConvAIMeshGenPublishAttemptLimit"]
      124 CALL                             R17 1 1
      125 GETIMPORT                        R18 K9 [require]
      127 GETTABLEKS                       R20 R0 K27 ["Flags"]
      129 GETTABLEKS                       R19 R20 K33 ["FStringConvAIMeshGenModerationUrl"]
      131 CALL                             R18 1 1
      132 LOADB                            R19 0
      133 NEWCLOSURE                       R20 P0
      134 CAPTURE                          REF R19
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R0
      137 GETTABLEKS                       R21 R5 K34 ["Button"]
      139 GETTABLEKS                       R22 R5 K35 ["Checkbox"]
      141 GETTABLEKS                       R23 R5 K36 ["Chip"]
      143 GETTABLEKS                       R24 R5 K37 ["Image"]
      145 GETTABLEKS                       R25 R5 K38 ["Skeleton"]
      147 GETTABLEKS                       R26 R5 K39 ["Text"]
      149 GETTABLEKS                       R27 R5 K40 ["View"]
      151 GETTABLEKS                       R28 R8 K41 ["createNextOrder"]
      153 GETTABLEKS                       R29 R7 K42 ["createElement"]
      155 DUPTABLE                         R30 K45 [{"Dark", "Light"}]
      156 LOADK                            R31 K46 ["rbxasset://studio_svg_textures/Shared/Alerts/Dark/Standard/Error.png"]
      157 SETTABLEKS                       R31 R30 K43 ["Dark"]
      159 LOADK                            R31 K47 ["rbxasset://studio_svg_textures/Shared/Alerts/Light/Standard/Error.png"]
      160 SETTABLEKS                       R31 R30 K44 ["Light"]
      162 DUPTABLE                         R31 K52 [{"GenerationState", "InsertionState", "GenerationFailureReason", "InsertionFailureReason"}]
      163 DUPTABLE                         R32 K58 [{"None", "GeneratingMesh", "GeneratingTexture", "GenerationFailed", "Generated"}]
      164 LOADK                            R33 K53 ["None"]
      165 SETTABLEKS                       R33 R32 K53 ["None"]
      167 LOADK                            R33 K54 ["GeneratingMesh"]
      168 SETTABLEKS                       R33 R32 K54 ["GeneratingMesh"]
      170 LOADK                            R33 K55 ["GeneratingTexture"]
      171 SETTABLEKS                       R33 R32 K55 ["GeneratingTexture"]
      173 LOADK                            R33 K56 ["GenerationFailed"]
      174 SETTABLEKS                       R33 R32 K56 ["GenerationFailed"]
      176 LOADK                            R33 K57 ["Generated"]
      177 SETTABLEKS                       R33 R32 K57 ["Generated"]
      179 SETTABLEKS                       R32 R31 K48 ["GenerationState"]
      181 DUPTABLE                         R32 K62 [{"None", "Publishing", "Inserting", "Failed"}]
      182 LOADK                            R33 K53 ["None"]
      183 SETTABLEKS                       R33 R32 K53 ["None"]
      185 LOADK                            R33 K59 ["Publishing"]
      186 SETTABLEKS                       R33 R32 K59 ["Publishing"]
      188 LOADK                            R33 K60 ["Inserting"]
      189 SETTABLEKS                       R33 R32 K60 ["Inserting"]
      191 LOADK                            R33 K63 ["InsertionFailed"]
      192 SETTABLEKS                       R33 R32 K61 ["Failed"]
      194 SETTABLEKS                       R32 R31 K49 ["InsertionState"]
      196 DUPTABLE                         R32 K66 [{"Moderated", "Failed", "Canceled"}]
      197 LOADK                            R33 K67 ["GenerationModerated"]
      198 SETTABLEKS                       R33 R32 K64 ["Moderated"]
      200 LOADK                            R33 K56 ["GenerationFailed"]
      201 SETTABLEKS                       R33 R32 K61 ["Failed"]
      203 LOADK                            R33 K68 ["GenerationCanceled"]
      204 SETTABLEKS                       R33 R32 K65 ["Canceled"]
      206 SETTABLEKS                       R32 R31 K50 ["GenerationFailureReason"]
      208 DUPTABLE                         R32 K71 [{"PublishFailed", "InsertFailed"}]
      209 LOADK                            R33 K69 ["PublishFailed"]
      210 SETTABLEKS                       R33 R32 K69 ["PublishFailed"]
      212 LOADK                            R33 K70 ["InsertFailed"]
      213 SETTABLEKS                       R33 R32 K70 ["InsertFailed"]
      215 SETTABLEKS                       R32 R31 K51 ["InsertionFailureReason"]
      217 DUPCLOSURE                       R32 K72 [PROTO_1]
      218 DUPCLOSURE                       R33 K73 [PROTO_2]
      219 NEWCLOSURE                       R34 P3
      220 CAPTURE                          VAL R7
      221 CAPTURE                          VAL R1
      222 CAPTURE                          REF R19
      223 CAPTURE                          VAL R4
      224 CAPTURE                          VAL R0
      225 CAPTURE                          VAL R29
      226 DUPTABLE                         R35 K75 [{"Preparing", "Generated"}]
      227 LOADK                            R36 K74 ["Preparing"]
      228 SETTABLEKS                       R36 R35 K74 ["Preparing"]
      230 LOADK                            R36 K57 ["Generated"]
      231 SETTABLEKS                       R36 R35 K57 ["Generated"]
      233 DUPCLOSURE                       R36 K76 [PROTO_21]
      234 CAPTURE                          VAL R14
      235 CAPTURE                          VAL R7
      236 CAPTURE                          VAL R11
      237 CAPTURE                          VAL R13
      238 CAPTURE                          VAL R35
      239 CAPTURE                          VAL R28
      240 CAPTURE                          VAL R29
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R10
      243 CAPTURE                          VAL R26
      244 CAPTURE                          VAL R9
      245 DUPCLOSURE                       R37 K77 [PROTO_35]
      246 CAPTURE                          VAL R14
      247 CAPTURE                          VAL R5
      248 CAPTURE                          VAL R7
      249 CAPTURE                          VAL R31
      250 CAPTURE                          VAL R11
      251 CAPTURE                          VAL R18
      252 CAPTURE                          VAL R16
      253 CAPTURE                          VAL R17
      254 CAPTURE                          VAL R4
      255 CAPTURE                          VAL R28
      256 CAPTURE                          VAL R29
      257 CAPTURE                          VAL R26
      258 CAPTURE                          VAL R9
      259 CAPTURE                          VAL R23
      260 CAPTURE                          VAL R2
      261 CAPTURE                          VAL R10
      262 CAPTURE                          VAL R27
      263 CAPTURE                          VAL R25
      264 CAPTURE                          VAL R15
      265 CAPTURE                          VAL R34
      266 CAPTURE                          VAL R24
      267 CAPTURE                          VAL R3
      268 CAPTURE                          VAL R30
      269 CAPTURE                          VAL R6
      270 CAPTURE                          VAL R22
      271 CAPTURE                          VAL R21
      272 DUPCLOSURE                       R38 K78 [PROTO_36]
      273 CAPTURE                          VAL R35
      274 CAPTURE                          VAL R29
      275 CAPTURE                          VAL R36
      276 CAPTURE                          VAL R37
      277 DUPCLOSURE                       R39 K79 [PROTO_37]
      278 CAPTURE                          VAL R13
      279 CAPTURE                          VAL R35
      280 DUPCLOSURE                       R40 K80 [PROTO_38]
      281 CAPTURE                          VAL R13
      282 CAPTURE                          VAL R35
      283 DUPTABLE                         R41 K86 [{"Type", "ContentWidget", "Serialization", "Enums", "Modes"}]
      284 LOADK                            R42 K87 ["DEPRECATED_MeshGen"]
      285 SETTABLEKS                       R42 R41 K81 ["Type"]
      287 GETTABLEKS                       R42 R7 K88 ["memo"]
      289 MOVE                             R43 R38
      290 CALL                             R42 1 1
      291 SETTABLEKS                       R42 R41 K82 ["ContentWidget"]
      293 DUPTABLE                         R42 K91 [{"serialize", "deserialize"}]
      294 SETTABLEKS                       R39 R42 K89 ["serialize"]
      296 SETTABLEKS                       R40 R42 K90 ["deserialize"]
      298 SETTABLEKS                       R42 R41 K83 ["Serialization"]
      300 SETTABLEKS                       R31 R41 K84 ["Enums"]
      302 SETTABLEKS                       R35 R41 K85 ["Modes"]
      304 CLOSEUPVALS                      R19
      305 RETURN                           R41 1
