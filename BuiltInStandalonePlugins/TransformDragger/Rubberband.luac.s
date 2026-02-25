PROTO_0:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+3]
        5 GETTABLEKS                       R1 R0 K2 ["CFrame"]
        7 RETURN                           R1 1
        8 NAMECALL                         R1 R0 K3 ["GetChildren"]
       10 CALL                             R1 1 1
       11 LOADN                            R4 1
       12 LENGTH                           R2 R1
       13 LOADN                            R3 1
       14 FORNPREP                         R2
       15 GETUPVAL                         R5 0
       16 GETTABLE                         R6 R1 R4
       17 CALL                             R5 1 1
       18 JUMPIFNOT                        R5 ; [+1]
       19 RETURN                           R5 1
       20 FORNLOOP                         R2
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_1:
        0 NAMECALL                         R4 R0 K0 ["GetChildren"]
        2 CALL                             R4 1 1
        3 GETIMPORT                        R6 K2 [workspace]
        5 GETTABLEKS                       R5 R6 K3 ["CurrentCamera"]
        7 MOVE                             R6 R3
        8 JUMPIF                           R6 ; [+2]
        9 NEWTABLE                         R6 0 0
       11 GETIMPORT                        R7 K5 [ipairs]
       13 MOVE                             R8 R4
       14 CALL                             R7 1 3
       15 FORGPREP_INEXT                   R7
       16 LOADNIL                          R12
       17 LOADB                            R13 0
       18 LOADK                            R16 K6 ["BasePart"]
       19 NAMECALL                         R14 R11 K7 ["IsA"]
       21 CALL                             R14 2 1
       22 JUMPIFNOT                        R14 ; [+7]
       23 GETTABLEKS                       R14 R11 K8 ["CFrame"]
       25 GETTABLEKS                       R12 R14 K9 ["p"]
       27 GETTABLEKS                       R13 R11 K10 ["Locked"]
       29 JUMP                             ; [+51]
       30 LOADK                            R16 K11 ["Model"]
       31 NAMECALL                         R14 R11 K7 ["IsA"]
       33 CALL                             R14 2 1
       34 JUMPIFNOT                        R14 ; [+21]
       35 LOADK                            R16 K12 ["Workspace"]
       36 NAMECALL                         R14 R11 K7 ["IsA"]
       38 CALL                             R14 2 1
       39 JUMPIF                           R14 ; [+16]
       40 GETTABLEKS                       R14 R11 K13 ["PrimaryPart"]
       42 JUMPIFNOT                        R14 ; [+6]
       43 NAMECALL                         R14 R11 K14 ["GetPrimaryPartCFrame"]
       45 CALL                             R14 1 1
       46 GETTABLEKS                       R12 R14 K9 ["p"]
       48 JUMP                             ; [+5]
       49 NAMECALL                         R14 R11 K15 ["GetModelCFrame"]
       51 CALL                             R14 1 1
       52 GETTABLEKS                       R12 R14 K9 ["p"]
       54 LOADB                            R13 0
       55 JUMP                             ; [+25]
       56 LOADK                            R16 K16 ["Tool"]
       57 NAMECALL                         R14 R11 K7 ["IsA"]
       59 CALL                             R14 2 1
       60 JUMPIFNOT                        R14 ; [+9]
       61 GETUPVAL                         R14 0
       62 MOVE                             R15 R11
       63 CALL                             R14 1 1
       64 MOVE                             R12 R14
       65 JUMPIFNOT                        R12 ; [+2]
       66 GETTABLEKS                       R12 R12 K9 ["p"]
       68 LOADB                            R13 0
       69 JUMP                             ; [+11]
       70 LOADK                            R16 K17 ["Folder"]
       71 NAMECALL                         R14 R11 K7 ["IsA"]
       73 CALL                             R14 2 1
       74 JUMPIFNOT                        R14 ; [+6]
       75 GETUPVAL                         R14 1
       76 MOVE                             R15 R11
       77 MOVE                             R16 R1
       78 MOVE                             R17 R2
       79 MOVE                             R18 R6
       80 CALL                             R14 4 0
       81 JUMPIFNOT                        R12 ; [+75]
       82 GETTABLEKS                       R15 R5 K18 ["CoordinateFrame"]
       84 MOVE                             R17 R12
       85 NAMECALL                         R15 R15 K19 ["pointToObjectSpace"]
       87 CALL                             R15 2 1
       88 GETTABLEKS                       R14 R15 K20 ["Z"]
       90 LOADN                            R15 0
       91 JUMPIFNOTLT                      R14 R15 ; [+65]
       93 MOVE                             R16 R12
       94 NAMECALL                         R14 R5 K21 ["WorldToScreenPoint"]
       96 CALL                             R14 2 1
       97 JUMPIF                           R13 ; [+59]
       98 GETTABLEKS                       R15 R14 K22 ["X"]
      100 GETTABLEKS                       R17 R1 K22 ["X"]
      102 GETTABLEKS                       R18 R2 K22 ["X"]
      104 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
      106 GETIMPORT                        R16 K25 [math.max]
      108 CALL                             R16 2 1
      109 JUMPIFNOTLT                      R15 R16 ; [+47]
      111 GETTABLEKS                       R15 R14 K22 ["X"]
      113 GETTABLEKS                       R17 R1 K22 ["X"]
      115 GETTABLEKS                       R18 R2 K22 ["X"]
      117 FASTCALL2                        MATH_MIN R17 R18 ; [+3]
      119 GETIMPORT                        R16 K27 [math.min]
      121 CALL                             R16 2 1
      122 JUMPIFNOTLT                      R16 R15 ; [+34]
      124 GETTABLEKS                       R15 R14 K28 ["Y"]
      126 GETTABLEKS                       R17 R1 K28 ["Y"]
      128 GETTABLEKS                       R18 R2 K28 ["Y"]
      130 FASTCALL2                        MATH_MAX R17 R18 ; [+3]
      132 GETIMPORT                        R16 K25 [math.max]
      134 CALL                             R16 2 1
      135 JUMPIFNOTLT                      R15 R16 ; [+21]
      137 GETTABLEKS                       R15 R14 K28 ["Y"]
      139 GETTABLEKS                       R17 R1 K28 ["Y"]
      141 GETTABLEKS                       R18 R2 K28 ["Y"]
      143 FASTCALL2                        MATH_MIN R17 R18 ; [+3]
      145 GETIMPORT                        R16 K27 [math.min]
      147 CALL                             R16 2 1
      148 JUMPIFNOTLT                      R16 R15 ; [+8]
      150 FASTCALL2                        TABLE_INSERT R6 R11 ; [+5]
      152 MOVE                             R16 R6
      153 MOVE                             R17 R11
      154 GETIMPORT                        R15 K31 [table.insert]
      156 CALL                             R15 2 0
      157 FORGLOOP                         R7 2 [inext] ; [-142]
      159 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_3:
        0 LOADB                            R1 1
        1 SETUPVAL                         R1 0
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["setPlaneVisibility"]
        5 LOADB                            R2 0
        6 CALL                             R1 1 0
        7 SETUPVAL                         R0 2
        8 NEWTABLE                         R1 0 0
       10 SETUPVAL                         R1 3
       11 GETUPVAL                         R1 4
       12 JUMPIF                           R1 ; [+99]
       13 GETIMPORT                        R1 K3 [Instance.new]
       15 LOADK                            R2 K4 ["ScreenGui"]
       16 GETIMPORT                        R3 K6 [game]
       18 LOADK                            R5 K7 ["CoreGui"]
       19 NAMECALL                         R3 R3 K8 ["GetService"]
       21 CALL                             R3 2 -1
       22 CALL                             R1 -1 1
       23 SETUPVAL                         R1 4
       24 GETUPVAL                         R1 5
       25 GETIMPORT                        R2 K3 [Instance.new]
       27 LOADK                            R3 K9 ["Frame"]
       28 GETUPVAL                         R4 4
       29 CALL                             R2 2 1
       30 SETTABLEN                        R2 R1 1
       31 GETUPVAL                         R2 5
       32 GETTABLEN                        R1 R2 1
       33 LOADN                            R2 0
       34 SETTABLEKS                       R2 R1 K10 ["BorderSizePixel"]
       36 GETUPVAL                         R2 5
       37 GETTABLEN                        R1 R2 1
       38 GETIMPORT                        R2 K12 [Color3.new]
       40 LOADN                            R3 0
       41 LOADN                            R4 0
       42 LOADN                            R5 0
       43 CALL                             R2 3 1
       44 SETTABLEKS                       R2 R1 K13 ["BackgroundColor3"]
       46 GETUPVAL                         R1 5
       47 GETIMPORT                        R2 K3 [Instance.new]
       49 LOADK                            R3 K9 ["Frame"]
       50 GETUPVAL                         R4 4
       51 CALL                             R2 2 1
       52 SETTABLEN                        R2 R1 2
       53 GETUPVAL                         R2 5
       54 GETTABLEN                        R1 R2 2
       55 LOADN                            R2 0
       56 SETTABLEKS                       R2 R1 K10 ["BorderSizePixel"]
       58 GETUPVAL                         R2 5
       59 GETTABLEN                        R1 R2 2
       60 GETIMPORT                        R2 K12 [Color3.new]
       62 LOADN                            R3 0
       63 LOADN                            R4 0
       64 LOADN                            R5 0
       65 CALL                             R2 3 1
       66 SETTABLEKS                       R2 R1 K13 ["BackgroundColor3"]
       68 GETUPVAL                         R1 5
       69 GETIMPORT                        R2 K3 [Instance.new]
       71 LOADK                            R3 K9 ["Frame"]
       72 GETUPVAL                         R4 4
       73 CALL                             R2 2 1
       74 SETTABLEN                        R2 R1 3
       75 GETUPVAL                         R2 5
       76 GETTABLEN                        R1 R2 3
       77 LOADN                            R2 0
       78 SETTABLEKS                       R2 R1 K10 ["BorderSizePixel"]
       80 GETUPVAL                         R2 5
       81 GETTABLEN                        R1 R2 3
       82 GETIMPORT                        R2 K12 [Color3.new]
       84 LOADN                            R3 0
       85 LOADN                            R4 0
       86 LOADN                            R5 0
       87 CALL                             R2 3 1
       88 SETTABLEKS                       R2 R1 K13 ["BackgroundColor3"]
       90 GETUPVAL                         R1 5
       91 GETIMPORT                        R2 K3 [Instance.new]
       93 LOADK                            R3 K9 ["Frame"]
       94 GETUPVAL                         R4 4
       95 CALL                             R2 2 1
       96 SETTABLEN                        R2 R1 4
       97 GETUPVAL                         R2 5
       98 GETTABLEN                        R1 R2 4
       99 LOADN                            R2 0
      100 SETTABLEKS                       R2 R1 K10 ["BorderSizePixel"]
      102 GETUPVAL                         R2 5
      103 GETTABLEN                        R1 R2 4
      104 GETIMPORT                        R2 K12 [Color3.new]
      106 LOADN                            R3 0
      107 LOADN                            R4 0
      108 LOADN                            R5 0
      109 CALL                             R2 3 1
      110 SETTABLEKS                       R2 R1 K13 ["BackgroundColor3"]
      112 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 0
        4 SETUPVAL                         R0 0
        5 GETIMPORT                        R0 K1 [game]
        7 LOADK                            R2 K2 ["Selection"]
        8 NAMECALL                         R0 R0 K3 ["GetService"]
       10 CALL                             R0 2 1
       11 GETUPVAL                         R2 1
       12 NAMECALL                         R0 R0 K4 ["Set"]
       14 CALL                             R0 2 0
       15 LOADNIL                          R0
       16 SETUPVAL                         R0 2
       17 GETUPVAL                         R0 3
       18 JUMPIFNOT                        R0 ; [+6]
       19 GETUPVAL                         R0 3
       20 NAMECALL                         R0 R0 K5 ["Destroy"]
       22 CALL                             R0 1 0
       23 LOADNIL                          R0
       24 SETUPVAL                         R0 3
       25 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+1]
        2 RETURN                           R0 0
        3 GETTABLEKS                       R2 R0 K0 ["X"]
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R3 R4 K0 ["X"]
        8 SUB                              R1 R2 R3
        9 GETTABLEKS                       R3 R0 K1 ["Y"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K1 ["Y"]
       14 SUB                              R2 R3 R4
       15 GETUPVAL                         R4 2
       16 GETTABLEN                        R3 R4 1
       17 GETIMPORT                        R4 K4 [UDim2.new]
       19 LOADN                            R5 0
       20 LOADN                            R6 2
       21 LOADN                            R7 0
       22 ADDK                             R8 R2 K5 [2]
       23 CALL                             R4 4 1
       24 SETTABLEKS                       R4 R3 K6 ["Size"]
       26 GETUPVAL                         R4 2
       27 GETTABLEN                        R3 R4 2
       28 GETIMPORT                        R4 K4 [UDim2.new]
       30 LOADN                            R5 0
       31 LOADN                            R6 2
       32 LOADN                            R7 0
       33 ADDK                             R8 R2 K5 [2]
       34 CALL                             R4 4 1
       35 SETTABLEKS                       R4 R3 K6 ["Size"]
       37 GETUPVAL                         R4 2
       38 GETTABLEN                        R3 R4 3
       39 GETIMPORT                        R4 K4 [UDim2.new]
       41 LOADN                            R5 0
       42 ADDK                             R6 R1 K5 [2]
       43 LOADN                            R7 0
       44 LOADN                            R8 2
       45 CALL                             R4 4 1
       46 SETTABLEKS                       R4 R3 K6 ["Size"]
       48 GETUPVAL                         R4 2
       49 GETTABLEN                        R3 R4 4
       50 GETIMPORT                        R4 K4 [UDim2.new]
       52 LOADN                            R5 0
       53 ADDK                             R6 R1 K5 [2]
       54 LOADN                            R7 0
       55 LOADN                            R8 2
       56 CALL                             R4 4 1
       57 SETTABLEKS                       R4 R3 K6 ["Size"]
       59 GETUPVAL                         R4 2
       60 GETTABLEN                        R3 R4 1
       61 GETIMPORT                        R4 K4 [UDim2.new]
       63 LOADN                            R5 0
       64 GETUPVAL                         R7 1
       65 GETTABLEKS                       R6 R7 K0 ["X"]
       67 LOADN                            R7 0
       68 GETUPVAL                         R9 1
       69 GETTABLEKS                       R8 R9 K1 ["Y"]
       71 CALL                             R4 4 1
       72 SETTABLEKS                       R4 R3 K7 ["Position"]
       74 GETUPVAL                         R4 2
       75 GETTABLEN                        R3 R4 2
       76 GETIMPORT                        R4 K4 [UDim2.new]
       78 LOADN                            R5 0
       79 GETUPVAL                         R8 1
       80 GETTABLEKS                       R7 R8 K0 ["X"]
       82 ADD                              R6 R7 R1
       83 LOADN                            R7 0
       84 GETUPVAL                         R9 1
       85 GETTABLEKS                       R8 R9 K1 ["Y"]
       87 CALL                             R4 4 1
       88 SETTABLEKS                       R4 R3 K7 ["Position"]
       90 GETUPVAL                         R4 2
       91 GETTABLEN                        R3 R4 3
       92 GETIMPORT                        R4 K4 [UDim2.new]
       94 LOADN                            R5 0
       95 GETUPVAL                         R7 1
       96 GETTABLEKS                       R6 R7 K0 ["X"]
       98 LOADN                            R7 0
       99 GETUPVAL                         R9 1
      100 GETTABLEKS                       R8 R9 K1 ["Y"]
      102 CALL                             R4 4 1
      103 SETTABLEKS                       R4 R3 K7 ["Position"]
      105 GETUPVAL                         R4 2
      106 GETTABLEN                        R3 R4 4
      107 GETIMPORT                        R4 K4 [UDim2.new]
      109 LOADN                            R5 0
      110 GETUPVAL                         R7 1
      111 GETTABLEKS                       R6 R7 K0 ["X"]
      113 LOADN                            R7 0
      114 GETUPVAL                         R10 1
      115 GETTABLEKS                       R9 R10 K1 ["Y"]
      117 ADD                              R8 R9 R2
      118 CALL                             R4 4 1
      119 SETTABLEKS                       R4 R3 K7 ["Position"]
      121 GETUPVAL                         R3 4
      122 GETIMPORT                        R4 K9 [workspace]
      124 GETUPVAL                         R5 1
      125 MOVE                             R6 R0
      126 CALL                             R3 3 1
      127 SETUPVAL                         R3 3
      128 GETIMPORT                        R4 K11 [game]
      130 LOADK                            R6 K12 ["Selection"]
      131 NAMECALL                         R4 R4 K13 ["GetService"]
      133 CALL                             R4 2 1
      134 NAMECALL                         R4 R4 K14 ["Get"]
      136 CALL                             R4 1 1
      137 LENGTH                           R3 R4
      138 GETUPVAL                         R5 3
      139 LENGTH                           R4 R5
      140 JUMPIFEQ                         R3 R4 ; [+11]
      142 GETIMPORT                        R3 K11 [game]
      144 LOADK                            R5 K12 ["Selection"]
      145 NAMECALL                         R3 R3 K13 ["GetService"]
      147 CALL                             R3 2 1
      148 GETUPVAL                         R5 3
      149 NAMECALL                         R3 R3 K15 ["Set"]
      151 CALL                             R3 2 0
      152 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["Adornments"]
        9 CALL                             R0 1 1
       10 LOADNIL                          R1
       11 NEWTABLE                         R2 0 4
       13 NEWTABLE                         R3 0 0
       15 LOADB                            R4 0
       16 LOADNIL                          R5
       17 DUPCLOSURE                       R6 K6 [PROTO_0]
       18 CAPTURE                          VAL R6
       19 DUPCLOSURE                       R7 K7 [PROTO_1]
       20 CAPTURE                          VAL R6
       21 CAPTURE                          VAL R7
       22 NEWCLOSURE                       R8 P2
       23 CAPTURE                          REF R4
       24 NEWCLOSURE                       R9 P3
       25 CAPTURE                          REF R4
       26 CAPTURE                          VAL R0
       27 CAPTURE                          REF R5
       28 CAPTURE                          REF R3
       29 CAPTURE                          REF R1
       30 CAPTURE                          VAL R2
       31 SETGLOBAL                        R9 K8 ["startRubberbandDrag"]
       33 NEWCLOSURE                       R9 P4
       34 CAPTURE                          REF R4
       35 CAPTURE                          REF R3
       36 CAPTURE                          REF R5
       37 CAPTURE                          REF R1
       38 SETGLOBAL                        R9 K9 ["finishRubberbandDrag"]
       40 NEWCLOSURE                       R9 P5
       41 CAPTURE                          REF R4
       42 CAPTURE                          REF R5
       43 CAPTURE                          VAL R2
       44 CAPTURE                          REF R3
       45 CAPTURE                          VAL R7
       46 SETGLOBAL                        R9 K10 ["updateRubberBand"]
       48 NEWTABLE                         R9 4 0
       50 SETTABLEKS                       R8 R9 K11 ["isRubberBandDragInProgress"]
       52 GETGLOBAL                        R10 K8 ["startRubberbandDrag"]
       54 SETTABLEKS                       R10 R9 K8 ["startRubberbandDrag"]
       56 GETGLOBAL                        R10 K9 ["finishRubberbandDrag"]
       58 SETTABLEKS                       R10 R9 K9 ["finishRubberbandDrag"]
       60 GETGLOBAL                        R10 K10 ["updateRubberBand"]
       62 SETTABLEKS                       R10 R9 K10 ["updateRubberBand"]
       64 CLOSEUPVALS                      R1
       65 RETURN                           R9 1
