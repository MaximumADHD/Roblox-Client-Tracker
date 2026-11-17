PROTO_0:
        0 GETIMPORT                        R3 K2 [Color3.new]
        2 LOADN                            R4 0
        3 LOADN                            R5 0
        4 LOADN                            R6 0
        5 CALL                             R3 3 1
        6 LOADK                            R4 K3 [0.5]
        7 NAMECALL                         R1 R0 K4 ["Lerp"]
        9 CALL                             R1 3 -1
       10 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K1 ["Size"]
        2 ORK                              R2 R3 K0 [0]
        3 JUMPIFEQKS                       R1 K2 ["count"] ; [+3]
        5 JUMPIFNOTEQKS                    R1 K3 ["instanceCount"] ; [+7]
        7 FASTCALL1                        TOSTRING R2 ; [+3]
        8 MOVE                             R4 R2
        9 GETIMPORT                        R3 K5 [tostring]
       11 CALL                             R3 1 1
       12 RETURN                           R3 1
       13 GETUPVAL                         R3 0
       14 MOVE                             R4 R2
       15 CALL                             R3 1 -1
       16 RETURN                           R3 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIFNOTEQKNIL                  R1 ; [+5]
        4 NEWTABLE                         R1 0 0
        6 GETUPVAL                         R2 0
        7 SETTABLE                         R1 R2 R0
        8 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["colorRamp"]
        2 JUMPIF                           R1 ; [+7]
        3 GETTABLEKS                       R1 R0 K1 ["original"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETTABLEKS                       R1 R0 K1 ["original"]
        8 GETTABLEKS                       R1 R1 K0 ["colorRamp"]
       10 RETURN                           R1 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["original"]
        2 JUMPIFNOT                        R1 ; [+10]
        3 GETTABLEKS                       R1 R0 K0 ["original"]
        5 GETTABLEKS                       R1 R1 K1 ["Color"]
        7 JUMPIFNOT                        R1 ; [+5]
        8 GETTABLEKS                       R1 R0 K0 ["original"]
       10 GETTABLEKS                       R1 R1 K1 ["Color"]
       12 RETURN                           R1 1
       13 GETTABLEKS                       R1 R0 K2 ["_ramp"]
       15 JUMPIF                           R1 ; [+12]
       16 GETTABLEKS                       R1 R0 K3 ["colorRamp"]
       18 JUMPIF                           R1 ; [+7]
       19 GETTABLEKS                       R1 R0 K0 ["original"]
       21 JUMPIFNOT                        R1 ; [+4]
       22 GETTABLEKS                       R1 R0 K0 ["original"]
       24 GETTABLEKS                       R1 R1 K3 ["colorRamp"]
       26 JUMPIF                           R1 ; [+1]
       27 GETUPVAL                         R1 0
       28 GETTABLEKS                       R4 R0 K5 ["colorRampIndex"]
       30 ORK                              R3 R4 K4 [1]
       31 GETTABLE                         R2 R1 R3
       32 RETURN                           R2 1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R2 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K1 ["Children"]
        7 JUMPIFNOT                        R2 ; [+18]
        8 GETTABLEKS                       R3 R0 K1 ["Children"]
       10 LENGTH                           R2 R3
       11 LOADN                            R3 0
       12 JUMPIFNOTLT                      R3 R2 ; [+13]
       14 GETTABLEKS                       R2 R0 K1 ["Children"]
       16 LOADNIL                          R3
       17 LOADNIL                          R4
       18 FORGPREP                         R2
       19 GETUPVAL                         R7 0
       20 MOVE                             R8 R6
       21 MOVE                             R9 R1
       22 CALL                             R7 2 0
       23 FORGLOOP                         R2 2 ; [-5]
       25 RETURN                           R0 0
       26 FASTCALL2                        TABLE_INSERT R1 R0 ; [+5]
       28 MOVE                             R3 R1
       29 MOVE                             R4 R0
       30 GETIMPORT                        R2 K4 [table.insert]
       32 CALL                             R2 2 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R4 R0 K1 ["layoutSize"]
        2 ORK                              R3 R4 K0 [0]
        3 GETTABLEKS                       R5 R1 K1 ["layoutSize"]
        5 ORK                              R4 R5 K0 [0]
        6 JUMPIFLT                         R4 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_7:
        0 GETIMPORT                        R2 K2 [table.sort]
        2 MOVE                             R3 R0
        3 DUPCLOSURE                       R4 K3 [PROTO_6]
        4 CALL                             R2 2 0
        5 LENGTH                           R2 R0
        6 LENGTH                           R3 R1
        7 MOVE                             R4 R0
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 DIV                              R11 R7 R2
       12 MUL                              R10 R11 R3
       13 FASTCALL1                        MATH_CEIL R10 ; [+2]
       14 GETIMPORT                        R9 K6 [math.ceil]
       16 CALL                             R9 1 1
       17 LOADN                            R12 1
       18 FASTCALL3                        MATH_CLAMP R9 R12 R3
       20 MOVE                             R11 R9
       21 MOVE                             R13 R3
       22 GETIMPORT                        R10 K8 [math.clamp]
       24 CALL                             R10 3 1
       25 SETTABLEKS                       R10 R8 K9 ["colorRampIndex"]
       27 SETTABLEKS                       R1 R8 K10 ["_ramp"]
       29 FORGLOOP                         R4 2 ; [-19]
       31 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R1 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["Children"]
        7 JUMPIFNOT                        R1 ; [+43]
        8 GETTABLEKS                       R2 R0 K1 ["Children"]
       10 LENGTH                           R1 R2
       11 LOADN                            R2 0
       12 JUMPIFNOTLT                      R2 R1 ; [+38]
       14 GETUPVAL                         R2 0
       15 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       17 MOVE                             R3 R0
       18 GETIMPORT                        R1 K4 [table.insert]
       20 CALL                             R1 2 0
       21 GETTABLEKS                       R1 R0 K1 ["Children"]
       23 LOADNIL                          R2
       24 LOADNIL                          R3
       25 FORGPREP                         R1
       26 GETTABLEKS                       R6 R5 K5 ["colorRamp"]
       28 JUMPIF                           R6 ; [+7]
       29 GETTABLEKS                       R6 R5 K6 ["original"]
       31 JUMPIFNOT                        R6 ; [+4]
       32 GETTABLEKS                       R6 R5 K6 ["original"]
       34 GETTABLEKS                       R6 R6 K5 ["colorRamp"]
       36 JUMPIFNOT                        R6 ; [+8]
       37 GETUPVAL                         R7 1
       38 JUMPIFEQ                         R6 R7 ; [+6]
       40 GETUPVAL                         R7 2
       41 MOVE                             R8 R5
       42 GETUPVAL                         R9 1
       43 CALL                             R7 2 0
       44 JUMP                             ; [+3]
       45 GETUPVAL                         R7 3
       46 MOVE                             R8 R5
       47 CALL                             R7 1 0
       48 FORGLOOP                         R1 2 ; [-23]
       50 RETURN                           R0 0
       51 GETUPVAL                         R2 0
       52 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       54 MOVE                             R3 R0
       55 GETIMPORT                        R1 K4 [table.insert]
       57 CALL                             R1 2 0
       58 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["colorRamp"]
        2 JUMPIF                           R3 ; [+7]
        3 GETTABLEKS                       R3 R0 K1 ["original"]
        5 JUMPIFNOT                        R3 ; [+4]
        6 GETTABLEKS                       R3 R0 K1 ["original"]
        8 GETTABLEKS                       R3 R3 K0 ["colorRamp"]
       10 OR                               R2 R3 R1
       11 NEWTABLE                         R3 0 0
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R2
       16 CAPTURE                          UPVAL U0
       17 CAPTURE                          VAL R4
       18 GETTABLEKS                       R5 R0 K2 ["Children"]
       20 JUMPIFNOT                        R5 ; [+34]
       21 GETTABLEKS                       R6 R0 K2 ["Children"]
       23 LENGTH                           R5 R6
       24 LOADN                            R6 0
       25 JUMPIFNOTLT                      R6 R5 ; [+29]
       27 GETTABLEKS                       R5 R0 K2 ["Children"]
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 FORGPREP                         R5
       32 GETTABLEKS                       R10 R9 K0 ["colorRamp"]
       34 JUMPIF                           R10 ; [+7]
       35 GETTABLEKS                       R10 R9 K1 ["original"]
       37 JUMPIFNOT                        R10 ; [+4]
       38 GETTABLEKS                       R10 R9 K1 ["original"]
       40 GETTABLEKS                       R10 R10 K0 ["colorRamp"]
       42 JUMPIFNOT                        R10 ; [+7]
       43 JUMPIFEQ                         R10 R2 ; [+6]
       45 GETUPVAL                         R11 0
       46 MOVE                             R12 R9
       47 MOVE                             R13 R2
       48 CALL                             R11 2 0
       49 JUMP                             ; [+3]
       50 MOVE                             R11 R4
       51 MOVE                             R12 R9
       52 CALL                             R11 1 0
       53 FORGLOOP                         R5 2 ; [-22]
       55 LENGTH                           R5 R3
       56 LOADN                            R6 0
       57 JUMPIFNOTLT                      R6 R5 ; [+5]
       59 GETUPVAL                         R5 1
       60 MOVE                             R6 R3
       61 MOVE                             R7 R2
       62 CALL                             R5 2 0
       63 RETURN                           R0 0

PROTO_10:
        0 DUPCLOSURE                       R1 K0 [PROTO_9]
        1 CAPTURE                          VAL R1
        2 CAPTURE                          UPVAL U0
        3 MOVE                             R2 R1
        4 MOVE                             R3 R0
        5 GETUPVAL                         R4 1
        6 CALL                             R2 2 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLE                         R3 R4 R2
        2 JUMPIFNOTEQKNIL                  R3 ; [+5]
        4 NEWTABLE                         R3 0 0
        6 GETUPVAL                         R4 0
        7 SETTABLE                         R3 R4 R2
        8 GETTABLE                         R4 R3 R1
        9 JUMPIFNOTEQKNIL                  R4 ; [+4]
       11 NEWTABLE                         R4 0 0
       13 SETTABLE                         R4 R3 R1
       14 GETTABLE                         R5 R4 R0
       15 JUMPIFNOTEQKNIL                  R5 ; [+30]
       17 GETIMPORT                        R6 K1 [game]
       19 GETTABLEKS                       R6 R6 K2 ["TextService"]
       21 MOVE                             R8 R0
       22 MOVE                             R9 R1
       23 MOVE                             R10 R2
       24 GETIMPORT                        R11 K5 [Vector2.new]
       26 LOADN                            R12 2000
       27 LOADN                            R13 2000
       28 CALL                             R11 2 -1
       29 NAMECALL                         R6 R6 K6 ["GetTextSize"]
       31 CALL                             R6 -1 1
       32 MOVE                             R5 R6
       33 GETUPVAL                         R6 1
       34 ADDK                             R6 R6 K7 [1]
       35 SETUPVAL                         R6 1
       36 SETTABLE                         R5 R4 R0
       37 GETUPVAL                         R6 1
       38 LOADN                            R7 1000
       39 JUMPIFNOTLT                      R7 R6 ; [+6]
       41 LOADN                            R6 0
       42 SETUPVAL                         R6 1
       43 NEWTABLE                         R6 0 0
       45 SETUPVAL                         R6 0
       46 RETURN                           R5 1

PROTO_12:
        0 ORK                              R4 R3 K0 [-1]
        1 GETIMPORT                        R5 K3 [Instance.new]
        3 LOADK                            R6 K4 ["Frame"]
        4 CALL                             R5 1 1
        5 GETIMPORT                        R6 K6 [UDim2.new]
        7 GETTABLEKS                       R7 R0 K7 ["Position"]
        9 GETTABLEKS                       R7 R7 K8 ["X"]
       11 GETTABLEKS                       R7 R7 K9 ["Scale"]
       13 GETTABLEKS                       R9 R0 K7 ["Position"]
       15 GETTABLEKS                       R9 R9 K8 ["X"]
       17 GETTABLEKS                       R9 R9 K10 ["Offset"]
       19 ADD                              R8 R9 R4
       20 GETTABLEKS                       R9 R0 K7 ["Position"]
       22 GETTABLEKS                       R9 R9 K11 ["Y"]
       24 GETTABLEKS                       R9 R9 K9 ["Scale"]
       26 GETTABLEKS                       R11 R0 K7 ["Position"]
       28 GETTABLEKS                       R11 R11 K11 ["Y"]
       30 GETTABLEKS                       R11 R11 K10 ["Offset"]
       32 ADD                              R10 R11 R4
       33 CALL                             R6 4 1
       34 SETTABLEKS                       R6 R5 K7 ["Position"]
       36 GETIMPORT                        R6 K6 [UDim2.new]
       38 GETTABLEKS                       R7 R0 K12 ["Size"]
       40 GETTABLEKS                       R7 R7 K8 ["X"]
       42 GETTABLEKS                       R7 R7 K9 ["Scale"]
       44 GETTABLEKS                       R9 R0 K12 ["Size"]
       46 GETTABLEKS                       R9 R9 K8 ["X"]
       48 GETTABLEKS                       R9 R9 K10 ["Offset"]
       50 MULK                             R10 R4 K13 [2]
       51 SUB                              R8 R9 R10
       52 GETTABLEKS                       R9 R0 K12 ["Size"]
       54 GETTABLEKS                       R9 R9 K11 ["Y"]
       56 GETTABLEKS                       R9 R9 K9 ["Scale"]
       58 GETTABLEKS                       R11 R0 K12 ["Size"]
       60 GETTABLEKS                       R11 R11 K11 ["Y"]
       62 GETTABLEKS                       R11 R11 K10 ["Offset"]
       64 MULK                             R12 R4 K13 [2]
       65 SUB                              R10 R11 R12
       66 CALL                             R6 4 1
       67 SETTABLEKS                       R6 R5 K12 ["Size"]
       69 LOADN                            R6 1
       70 SETTABLEKS                       R6 R5 K14 ["BackgroundTransparency"]
       72 LOADN                            R6 0
       73 SETTABLEKS                       R6 R5 K15 ["BorderSizePixel"]
       75 GETIMPORT                        R6 K3 [Instance.new]
       77 LOADK                            R7 K16 ["UICorner"]
       78 CALL                             R6 1 1
       79 GETIMPORT                        R7 K18 [UDim.new]
       81 LOADN                            R8 0
       82 LOADN                            R9 3
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K19 ["CornerRadius"]
       86 SETTABLEKS                       R5 R6 K20 ["Parent"]
       88 GETIMPORT                        R7 K3 [Instance.new]
       90 LOADK                            R8 K21 ["UIStroke"]
       91 CALL                             R7 1 1
       92 SETTABLEKS                       R1 R7 K22 ["Color"]
       94 SETTABLEKS                       R2 R7 K23 ["Thickness"]
       96 SETTABLEKS                       R5 R7 K20 ["Parent"]
       98 RETURN                           R5 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["original"]
        2 GETTABLEKS                       R2 R2 K1 ["Id"]
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 MOVE                             R2 R1
        9 LOADNIL                          R3
       10 LOADNIL                          R4
       11 FORGPREP                         R2
       12 GETTABLEKS                       R7 R0 K0 ["original"]
       14 GETTABLEKS                       R7 R7 K1 ["Id"]
       16 JUMPIFNOTEQ                      R7 R6 ; [+3]
       18 LOADB                            R7 1
       19 RETURN                           R7 1
       20 FORGLOOP                         R2 2 ; [-9]
       22 LOADB                            R2 0
       23 RETURN                           R2 1

PROTO_14:
        0 GETTABLEKS                       R6 R1 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R6 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R6 K3 [Instance.new]
        7 LOADK                            R7 K4 ["Frame"]
        8 CALL                             R6 1 1
        9 GETTABLEKS                       R7 R1 K5 ["original"]
       11 GETTABLEKS                       R7 R7 K6 ["Name"]
       13 JUMPIFNOT                        R7 ; [+6]
       14 GETTABLEKS                       R7 R1 K5 ["original"]
       16 GETTABLEKS                       R7 R7 K6 ["Name"]
       18 SETTABLEKS                       R7 R6 K6 ["Name"]
       20 GETUPVAL                         R8 0
       21 GETTABLE                         R7 R8 R4
       22 JUMPIFNOTEQKNIL                  R7 ; [+5]
       24 NEWTABLE                         R7 0 0
       26 GETUPVAL                         R8 0
       27 SETTABLE                         R7 R8 R4
       28 ADDK                             R9 R4 K7 [1]
       29 GETUPVAL                         R10 0
       30 GETTABLE                         R8 R10 R9
       31 JUMPIFNOTEQKNIL                  R8 ; [+5]
       33 NEWTABLE                         R8 0 0
       35 GETUPVAL                         R10 0
       36 SETTABLE                         R8 R10 R9
       37 GETUPVAL                         R9 1
       38 GETTABLEKS                       R9 R9 K8 ["cellGap"]
       40 GETIMPORT                        R10 K10 [UDim2.new]
       42 LOADN                            R11 0
       43 GETTABLEKS                       R13 R1 K0 ["rectangle"]
       45 GETTABLEKS                       R13 R13 K11 ["x"]
       47 ADD                              R12 R13 R9
       48 LOADN                            R13 0
       49 GETTABLEKS                       R15 R1 K0 ["rectangle"]
       51 GETTABLEKS                       R15 R15 K12 ["y"]
       53 ADD                              R14 R15 R9
       54 CALL                             R10 4 1
       55 SETTABLEKS                       R10 R6 K13 ["Position"]
       57 GETIMPORT                        R10 K10 [UDim2.new]
       59 LOADN                            R11 0
       60 GETTABLEKS                       R13 R1 K0 ["rectangle"]
       62 GETTABLEKS                       R13 R13 K14 ["width"]
       64 SUB                              R12 R13 R9
       65 LOADN                            R13 0
       66 GETTABLEKS                       R15 R1 K0 ["rectangle"]
       68 GETTABLEKS                       R15 R15 K15 ["height"]
       70 SUB                              R14 R15 R9
       71 CALL                             R10 4 1
       72 SETTABLEKS                       R10 R6 K16 ["Size"]
       74 LOADN                            R10 1
       75 SETTABLEKS                       R10 R6 K17 ["BorderSizePixel"]
       77 GETIMPORT                        R10 K19 [Color3.new]
       79 LOADN                            R11 0
       80 LOADN                            R12 0
       81 LOADN                            R13 0
       82 CALL                             R10 3 1
       83 SETTABLEKS                       R10 R6 K20 ["BorderColor3"]
       85 LOADN                            R10 0
       86 SETTABLEKS                       R10 R6 K21 ["BackgroundTransparency"]
       88 GETIMPORT                        R10 K3 [Instance.new]
       90 LOADK                            R11 K22 ["UICorner"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K24 [UDim.new]
       94 LOADN                            R12 0
       95 GETUPVAL                         R13 1
       96 GETTABLEKS                       R13 R13 K25 ["cornerRadius"]
       98 CALL                             R11 2 1
       99 SETTABLEKS                       R11 R10 K26 ["CornerRadius"]
      101 SETTABLEKS                       R6 R10 K27 ["Parent"]
      103 GETTABLEKS                       R12 R1 K5 ["original"]
      105 JUMPIFNOT                        R12 ; [+10]
      106 GETTABLEKS                       R12 R1 K5 ["original"]
      108 GETTABLEKS                       R12 R12 K28 ["Color"]
      110 JUMPIFNOT                        R12 ; [+5]
      111 GETTABLEKS                       R11 R1 K5 ["original"]
      113 GETTABLEKS                       R11 R11 K28 ["Color"]
      115 JUMP                             ; [+19]
      116 GETTABLEKS                       R12 R1 K29 ["_ramp"]
      118 JUMPIF                           R12 ; [+12]
      119 GETTABLEKS                       R12 R1 K30 ["colorRamp"]
      121 JUMPIF                           R12 ; [+7]
      122 GETTABLEKS                       R12 R1 K5 ["original"]
      124 JUMPIFNOT                        R12 ; [+4]
      125 GETTABLEKS                       R12 R1 K5 ["original"]
      127 GETTABLEKS                       R12 R12 K30 ["colorRamp"]
      129 JUMPIF                           R12 ; [+1]
      130 GETUPVAL                         R12 2
      131 GETTABLEKS                       R14 R1 K31 ["colorRampIndex"]
      133 ORK                              R13 R14 K7 [1]
      134 GETTABLE                         R11 R12 R13
      135 GETIMPORT                        R12 K19 [Color3.new]
      137 LOADN                            R13 0
      138 LOADN                            R14 0
      139 LOADN                            R15 0
      140 CALL                             R12 3 1
      141 SETTABLEKS                       R12 R6 K32 ["BackgroundColor3"]
      143 GETTABLEKS                       R12 R1 K33 ["Children"]
      145 JUMPIFNOT                        R12 ; [+8]
      146 GETTABLEKS                       R14 R1 K33 ["Children"]
      148 LENGTH                           R13 R14
      149 LOADN                            R14 0
      150 JUMPIFLT                         R14 R13 ; [+2]
      152 LOADB                            R12 0 +1
      153 LOADB                            R12 1
      154 LOADB                            R13 0
      155 SETTABLEKS                       R13 R6 K34 ["ClipsDescendants"]
      157 LOADN                            R13 0
      158 SETTABLEKS                       R13 R6 K21 ["BackgroundTransparency"]
      160 GETTABLEKS                       R14 R1 K5 ["original"]
      162 GETTABLEKS                       R14 R14 K35 ["Id"]
      164 JUMPIFNOTEQKNIL                  R14 ; [+3]
      166 LOADB                            R13 0
      167 JUMP                             ; [+15]
      168 MOVE                             R14 R3
      169 LOADNIL                          R15
      170 LOADNIL                          R16
      171 FORGPREP                         R14
      172 GETTABLEKS                       R19 R1 K5 ["original"]
      174 GETTABLEKS                       R19 R19 K35 ["Id"]
      176 JUMPIFNOTEQ                      R19 R18 ; [+3]
      178 LOADB                            R13 1
      179 JUMP                             ; [+3]
      180 FORGLOOP                         R14 2 ; [-9]
      182 LOADB                            R13 0
      183 MOVE                             R14 R13
      184 JUMPIFNOT                        R14 ; [+1]
      185 NOT                              R14 R5
      186 MOVE                             R15 R3
      187 JUMPIFNOT                        R15 ; [+6]
      188 LENGTH                           R16 R3
      189 LOADN                            R17 0
      190 JUMPIFLT                         R17 R16 ; [+2]
      192 LOADB                            R15 0 +1
      193 LOADB                            R15 1
      194 MOVE                             R16 R15
      195 JUMPIFNOT                        R16 ; [+3]
      196 NOT                              R16 R13
      197 JUMPIFNOT                        R16 ; [+1]
      198 NOT                              R16 R5
      199 SETTABLEKS                       R16 R1 K36 ["_dimmed"]
      201 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
      203 MOVE                             R18 R7
      204 MOVE                             R19 R6
      205 GETIMPORT                        R17 K39 [table.insert]
      207 CALL                             R17 2 0
      208 JUMPIFNOT                        R14 ; [+19]
      209 GETTABLEKS                       R18 R0 K40 ["_selectionLayer"]
      211 GETUPVAL                         R19 3
      212 MOVE                             R20 R6
      213 GETIMPORT                        R21 K19 [Color3.new]
      215 LOADN                            R22 1
      216 LOADN                            R23 1
      217 LOADN                            R24 1
      218 CALL                             R21 3 1
      219 GETUPVAL                         R22 1
      220 GETTABLEKS                       R22 R22 K41 ["selectionOutlineThickness"]
      222 CALL                             R19 3 1
      223 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
      225 GETIMPORT                        R17 K39 [table.insert]
      227 CALL                             R17 2 0
      228 SETTABLEKS                       R6 R1 K42 ["frame"]
      230 GETTABLEKS                       R17 R1 K43 ["showHeader"]
      232 JUMPIFNOT                        R17 ; [+446]
      233 GETIMPORT                        R17 K3 [Instance.new]
      235 LOADK                            R18 K4 ["Frame"]
      236 CALL                             R17 1 1
      237 GETIMPORT                        R18 K10 [UDim2.new]
      239 LOADN                            R19 0
      240 GETTABLEKS                       R21 R1 K0 ["rectangle"]
      242 GETTABLEKS                       R21 R21 K11 ["x"]
      244 ADD                              R20 R21 R9
      245 LOADN                            R21 0
      246 GETTABLEKS                       R23 R1 K0 ["rectangle"]
      248 GETTABLEKS                       R23 R23 K12 ["y"]
      250 ADD                              R22 R23 R9
      251 CALL                             R18 4 1
      252 SETTABLEKS                       R18 R17 K13 ["Position"]
      254 GETIMPORT                        R18 K10 [UDim2.new]
      256 LOADN                            R19 0
      257 GETTABLEKS                       R21 R1 K0 ["rectangle"]
      259 GETTABLEKS                       R21 R21 K14 ["width"]
      261 SUB                              R20 R21 R9
      262 LOADN                            R21 0
      263 GETUPVAL                         R22 1
      264 GETTABLEKS                       R22 R22 K44 ["headerBarHeight"]
      266 CALL                             R18 4 1
      267 SETTABLEKS                       R18 R17 K16 ["Size"]
      269 LOADN                            R18 0
      270 SETTABLEKS                       R18 R17 K21 ["BackgroundTransparency"]
      272 LOADN                            R18 1
      273 SETTABLEKS                       R18 R17 K17 ["BorderSizePixel"]
      275 GETIMPORT                        R18 K19 [Color3.new]
      277 LOADN                            R19 0
      278 LOADN                            R20 0
      279 LOADN                            R21 0
      280 CALL                             R18 3 1
      281 SETTABLEKS                       R18 R17 K20 ["BorderColor3"]
      283 GETIMPORT                        R18 K3 [Instance.new]
      285 LOADK                            R19 K22 ["UICorner"]
      286 CALL                             R18 1 1
      287 GETIMPORT                        R19 K24 [UDim.new]
      289 LOADN                            R20 0
      290 GETUPVAL                         R21 1
      291 GETTABLEKS                       R21 R21 K25 ["cornerRadius"]
      293 CALL                             R19 2 1
      294 SETTABLEKS                       R19 R18 K26 ["CornerRadius"]
      296 SETTABLEKS                       R17 R18 K27 ["Parent"]
      298 GETUPVAL                         R19 4
      299 GETTABLEKS                       R19 R19 K45 ["darkenForHeader"]
      301 MOVE                             R20 R11
      302 CALL                             R19 1 1
      303 JUMPIFNOT                        R16 ; [+11]
      304 GETIMPORT                        R22 K19 [Color3.new]
      306 LOADN                            R23 0
      307 LOADN                            R24 0
      308 LOADN                            R25 0
      309 CALL                             R22 3 1
      310 LOADK                            R23 K46 [0.5]
      311 NAMECALL                         R20 R19 K47 ["Lerp"]
      313 CALL                             R20 3 1
      314 JUMP                             ; [+1]
      315 MOVE                             R20 R19
      316 SETTABLEKS                       R20 R17 K32 ["BackgroundColor3"]
      318 FASTCALL2                        TABLE_INSERT R8 R17 ; [+5]
      320 MOVE                             R21 R8
      321 MOVE                             R22 R17
      322 GETIMPORT                        R20 K39 [table.insert]
      324 CALL                             R20 2 0
      325 SETTABLEKS                       R17 R1 K48 ["headerFrame"]
      327 GETIMPORT                        R20 K3 [Instance.new]
      329 LOADK                            R21 K49 ["TextLabel"]
      330 CALL                             R20 1 1
      331 GETIMPORT                        R21 K53 [Enum.TextXAlignment.Center]
      333 SETTABLEKS                       R21 R20 K51 ["TextXAlignment"]
      335 GETIMPORT                        R21 K55 [Enum.TextYAlignment.Center]
      337 SETTABLEKS                       R21 R20 K54 ["TextYAlignment"]
      339 LOADN                            R21 1
      340 SETTABLEKS                       R21 R20 K21 ["BackgroundTransparency"]
      342 GETTABLEKS                       R21 R1 K5 ["original"]
      344 GETTABLEKS                       R21 R21 K6 ["Name"]
      346 JUMPIFNOT                        R21 ; [+8]
      347 GETUPVAL                         R21 5
      348 GETTABLEKS                       R22 R1 K5 ["original"]
      350 GETTABLEKS                       R22 R22 K6 ["Name"]
      352 CALL                             R21 1 1
      353 SETTABLEKS                       R21 R20 K56 ["Text"]
      355 GETUPVAL                         R21 1
      356 GETTABLEKS                       R21 R21 K57 ["fontBold"]
      358 SETTABLEKS                       R21 R20 K58 ["Font"]
      360 GETUPVAL                         R21 1
      361 GETTABLEKS                       R21 R21 K59 ["textLineHeight"]
      363 SETTABLEKS                       R21 R20 K60 ["TextSize"]
      365 JUMPIFNOT                        R16 ; [+15]
      366 GETUPVAL                         R22 1
      367 GETTABLEKS                       R22 R22 K61 ["headerFontColor"]
      369 GETIMPORT                        R25 K19 [Color3.new]
      371 LOADN                            R26 0
      372 LOADN                            R27 0
      373 LOADN                            R28 0
      374 CALL                             R25 3 1
      375 LOADK                            R26 K46 [0.5]
      376 NAMECALL                         R23 R22 K47 ["Lerp"]
      378 CALL                             R23 3 1
      379 MOVE                             R21 R23
      380 JUMP                             ; [+3]
      381 GETUPVAL                         R21 1
      382 GETTABLEKS                       R21 R21 K61 ["headerFontColor"]
      384 SETTABLEKS                       R21 R20 K62 ["TextColor3"]
      386 LOADB                            R21 0
      387 SETTABLEKS                       R21 R20 K34 ["ClipsDescendants"]
      389 LOADB                            R21 0
      390 SETTABLEKS                       R21 R20 K63 ["TextScaled"]
      392 GETIMPORT                        R21 K66 [Enum.TextTruncate.AtEnd]
      394 SETTABLEKS                       R21 R20 K64 ["TextTruncate"]
      396 GETIMPORT                        R21 K10 [UDim2.new]
      398 LOADN                            R22 0
      399 GETTABLEKS                       R25 R1 K0 ["rectangle"]
      401 GETTABLEKS                       R25 R25 K14 ["width"]
      403 SUB                              R24 R25 R9
      404 GETUPVAL                         R25 1
      405 GETTABLEKS                       R25 R25 K67 ["textPadding"]
      407 SUB                              R23 R24 R25
      408 LOADN                            R24 0
      409 GETUPVAL                         R25 1
      410 GETTABLEKS                       R25 R25 K44 ["headerBarHeight"]
      412 CALL                             R21 4 1
      413 SETTABLEKS                       R21 R20 K16 ["Size"]
      415 GETIMPORT                        R21 K10 [UDim2.new]
      417 LOADN                            R22 0
      418 GETTABLEKS                       R25 R1 K0 ["rectangle"]
      420 GETTABLEKS                       R25 R25 K11 ["x"]
      422 ADD                              R24 R25 R9
      423 ADD                              R23 R24 R9
      424 LOADN                            R24 0
      425 GETTABLEKS                       R26 R1 K0 ["rectangle"]
      427 GETTABLEKS                       R26 R26 K12 ["y"]
      429 ADD                              R25 R26 R9
      430 CALL                             R21 4 1
      431 SETTABLEKS                       R21 R20 K13 ["Position"]
      433 GETUPVAL                         R22 6
      434 FASTCALL2                        TABLE_INSERT R22 R20 ; [+4]
      436 MOVE                             R23 R20
      437 GETIMPORT                        R21 K39 [table.insert]
      439 CALL                             R21 2 0
      440 JUMPIF                           R12 ; [+238]
      441 GETTABLEKS                       R23 R1 K0 ["rectangle"]
      443 GETTABLEKS                       R23 R23 K12 ["y"]
      445 ADD                              R22 R23 R9
      446 GETUPVAL                         R23 1
      447 GETTABLEKS                       R23 R23 K44 ["headerBarHeight"]
      449 ADD                              R21 R22 R23
      450 GETTABLEKS                       R24 R1 K0 ["rectangle"]
      452 GETTABLEKS                       R24 R24 K15 ["height"]
      454 SUB                              R23 R24 R9
      455 GETUPVAL                         R24 1
      456 GETTABLEKS                       R24 R24 K44 ["headerBarHeight"]
      458 SUB                              R22 R23 R24
      459 GETUPVAL                         R23 1
      460 GETTABLEKS                       R23 R23 K67 ["textPadding"]
      462 JUMPIFNOTLT                      R23 R22 ; [+216]
      464 GETIMPORT                        R23 K3 [Instance.new]
      466 LOADK                            R24 K4 ["Frame"]
      467 CALL                             R23 1 1
      468 GETIMPORT                        R24 K10 [UDim2.new]
      470 LOADN                            R25 0
      471 GETTABLEKS                       R27 R1 K0 ["rectangle"]
      473 GETTABLEKS                       R27 R27 K11 ["x"]
      475 ADD                              R26 R27 R9
      476 LOADN                            R27 0
      477 ADD                              R28 R21 R9
      478 CALL                             R24 4 1
      479 SETTABLEKS                       R24 R23 K13 ["Position"]
      481 GETIMPORT                        R24 K10 [UDim2.new]
      483 LOADN                            R25 0
      484 GETTABLEKS                       R27 R1 K0 ["rectangle"]
      486 GETTABLEKS                       R27 R27 K14 ["width"]
      488 SUB                              R26 R27 R9
      489 LOADN                            R27 0
      490 SUB                              R28 R22 R9
      491 CALL                             R24 4 1
      492 SETTABLEKS                       R24 R23 K16 ["Size"]
      494 LOADN                            R24 1
      495 SETTABLEKS                       R24 R23 K17 ["BorderSizePixel"]
      497 GETIMPORT                        R24 K19 [Color3.new]
      499 LOADN                            R25 0
      500 LOADN                            R26 0
      501 LOADN                            R27 0
      502 CALL                             R24 3 1
      503 SETTABLEKS                       R24 R23 K20 ["BorderColor3"]
      505 JUMPIFNOT                        R16 ; [+11]
      506 GETIMPORT                        R26 K19 [Color3.new]
      508 LOADN                            R27 0
      509 LOADN                            R28 0
      510 LOADN                            R29 0
      511 CALL                             R26 3 1
      512 LOADK                            R27 K46 [0.5]
      513 NAMECALL                         R24 R11 K47 ["Lerp"]
      515 CALL                             R24 3 1
      516 JUMP                             ; [+1]
      517 MOVE                             R24 R11
      518 SETTABLEKS                       R24 R23 K32 ["BackgroundColor3"]
      520 LOADB                            R24 0
      521 SETTABLEKS                       R24 R23 K34 ["ClipsDescendants"]
      523 GETIMPORT                        R24 K3 [Instance.new]
      525 LOADK                            R25 K22 ["UICorner"]
      526 CALL                             R24 1 1
      527 GETIMPORT                        R25 K24 [UDim.new]
      529 LOADN                            R26 0
      530 GETUPVAL                         R27 1
      531 GETTABLEKS                       R27 R27 K25 ["cornerRadius"]
      533 CALL                             R25 2 1
      534 SETTABLEKS                       R25 R24 K26 ["CornerRadius"]
      536 SETTABLEKS                       R23 R24 K27 ["Parent"]
      538 FASTCALL2                        TABLE_INSERT R8 R23 ; [+5]
      540 MOVE                             R26 R8
      541 MOVE                             R27 R23
      542 GETIMPORT                        R25 K39 [table.insert]
      544 CALL                             R25 2 0
      545 GETUPVAL                         R26 7
      546 LOADK                            R27 K68 ["XXX..."]
      547 GETUPVAL                         R28 1
      548 GETTABLEKS                       R28 R28 K59 ["textLineHeight"]
      550 GETUPVAL                         R29 1
      551 GETTABLEKS                       R29 R29 K57 ["fontBold"]
      553 CALL                             R26 3 1
      554 GETTABLEKS                       R26 R26 K69 ["X"]
      556 GETUPVAL                         R28 1
      557 GETTABLEKS                       R28 R28 K67 ["textPadding"]
      559 MULK                             R27 R28 K70 [2]
      560 ADD                              R25 R26 R27
      561 GETUPVAL                         R27 1
      562 GETTABLEKS                       R27 R27 K59 ["textLineHeight"]
      564 ADD                              R26 R27 R9
      565 JUMPIFNOTLT                      R26 R22 ; [+113]
      567 GETTABLEKS                       R26 R1 K0 ["rectangle"]
      569 GETTABLEKS                       R26 R26 K14 ["width"]
      571 JUMPIFNOTLT                      R25 R26 ; [+107]
      573 GETUPVAL                         R29 1
      574 GETTABLEKS                       R29 R29 K59 ["textLineHeight"]
      576 SUB                              R28 R22 R29
      577 DIVK                             R27 R28 K70 [2]
      578 ADD                              R26 R21 R27
      579 GETIMPORT                        R27 K3 [Instance.new]
      581 LOADK                            R28 K49 ["TextLabel"]
      582 CALL                             R27 1 1
      583 GETIMPORT                        R28 K53 [Enum.TextXAlignment.Center]
      585 SETTABLEKS                       R28 R27 K51 ["TextXAlignment"]
      587 GETIMPORT                        R28 K55 [Enum.TextYAlignment.Center]
      589 SETTABLEKS                       R28 R27 K54 ["TextYAlignment"]
      591 LOADN                            R28 1
      592 SETTABLEKS                       R28 R27 K21 ["BackgroundTransparency"]
      594 GETTABLEKS                       R29 R1 K72 ["formattedValue"]
      596 ORK                              R28 R29 K71 [""]
      597 SETTABLEKS                       R28 R27 K56 ["Text"]
      599 GETUPVAL                         R28 1
      600 GETTABLEKS                       R28 R28 K57 ["fontBold"]
      602 SETTABLEKS                       R28 R27 K58 ["Font"]
      604 JUMPIFNOT                        R16 ; [+15]
      605 GETUPVAL                         R29 1
      606 GETTABLEKS                       R29 R29 K73 ["fontColor"]
      608 GETIMPORT                        R32 K19 [Color3.new]
      610 LOADN                            R33 0
      611 LOADN                            R34 0
      612 LOADN                            R35 0
      613 CALL                             R32 3 1
      614 LOADK                            R33 K46 [0.5]
      615 NAMECALL                         R30 R29 K47 ["Lerp"]
      617 CALL                             R30 3 1
      618 MOVE                             R28 R30
      619 JUMP                             ; [+3]
      620 GETUPVAL                         R28 1
      621 GETTABLEKS                       R28 R28 K73 ["fontColor"]
      623 SETTABLEKS                       R28 R27 K62 ["TextColor3"]
      625 GETUPVAL                         R28 1
      626 GETTABLEKS                       R28 R28 K59 ["textLineHeight"]
      628 SETTABLEKS                       R28 R27 K60 ["TextSize"]
      630 LOADB                            R28 0
      631 SETTABLEKS                       R28 R27 K34 ["ClipsDescendants"]
      633 GETIMPORT                        R28 K66 [Enum.TextTruncate.AtEnd]
      635 SETTABLEKS                       R28 R27 K64 ["TextTruncate"]
      637 GETIMPORT                        R28 K10 [UDim2.new]
      639 LOADN                            R29 0
      640 GETTABLEKS                       R31 R1 K0 ["rectangle"]
      642 GETTABLEKS                       R31 R31 K14 ["width"]
      644 GETUPVAL                         R33 1
      645 GETTABLEKS                       R33 R33 K67 ["textPadding"]
      647 MULK                             R32 R33 K70 [2]
      648 SUB                              R30 R31 R32
      649 LOADN                            R31 0
      650 GETUPVAL                         R32 1
      651 GETTABLEKS                       R32 R32 K59 ["textLineHeight"]
      653 CALL                             R28 4 1
      654 SETTABLEKS                       R28 R27 K16 ["Size"]
      656 GETIMPORT                        R28 K10 [UDim2.new]
      658 LOADN                            R29 0
      659 GETTABLEKS                       R31 R1 K0 ["rectangle"]
      661 GETTABLEKS                       R31 R31 K11 ["x"]
      663 GETUPVAL                         R32 1
      664 GETTABLEKS                       R32 R32 K67 ["textPadding"]
      666 ADD                              R30 R31 R32
      667 LOADN                            R31 0
      668 MOVE                             R32 R26
      669 CALL                             R28 4 1
      670 SETTABLEKS                       R28 R27 K13 ["Position"]
      672 GETUPVAL                         R29 6
      673 FASTCALL2                        TABLE_INSERT R29 R27 ; [+4]
      675 MOVE                             R30 R27
      676 GETIMPORT                        R28 K39 [table.insert]
      678 CALL                             R28 2 0
      679 GETTABLEKS                       R17 R1 K33 ["Children"]
      681 JUMPIFNOT                        R17 ; [+27]
      682 GETTABLEKS                       R17 R1 K33 ["Children"]
      684 LOADNIL                          R18
      685 LOADNIL                          R19
      686 FORGPREP                         R17
      687 GETTABLEKS                       R22 R21 K43 ["showHeader"]
      689 JUMPIFNOT                        R22 ; [+9]
      690 MOVE                             R24 R21
      691 MOVE                             R25 R2
      692 MOVE                             R26 R3
      693 ADDK                             R27 R4 K7 [1]
      694 OR                               R28 R13 R5
      695 NAMECALL                         R22 R0 K74 ["renderHeaderNode"]
      697 CALL                             R22 6 0
      698 JUMP                             ; [+8]
      699 MOVE                             R24 R21
      700 MOVE                             R25 R2
      701 MOVE                             R26 R3
      702 ADDK                             R27 R4 K7 [1]
      703 OR                               R28 R13 R5
      704 NAMECALL                         R22 R0 K75 ["renderStandardNode"]
      706 CALL                             R22 6 0
      707 FORGLOOP                         R17 2 ; [-21]
      709 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R6 R1 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R6 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R7 0
        6 GETTABLE                         R6 R7 R4
        7 JUMPIFNOTEQKNIL                  R6 ; [+5]
        9 NEWTABLE                         R6 0 0
       11 GETUPVAL                         R7 0
       12 SETTABLE                         R6 R7 R4
       13 GETTABLEKS                       R7 R1 K1 ["Children"]
       15 JUMPIFNOT                        R7 ; [+60]
       16 GETTABLEKS                       R8 R1 K1 ["Children"]
       18 LENGTH                           R7 R8
       19 LOADN                            R8 0
       20 JUMPIFNOTLT                      R8 R7 ; [+55]
       22 GETTABLEKS                       R8 R1 K2 ["original"]
       24 GETTABLEKS                       R8 R8 K3 ["Id"]
       26 JUMPIFNOTEQKNIL                  R8 ; [+3]
       28 LOADB                            R7 0
       29 JUMP                             ; [+15]
       30 MOVE                             R8 R3
       31 LOADNIL                          R9
       32 LOADNIL                          R10
       33 FORGPREP                         R8
       34 GETTABLEKS                       R13 R1 K2 ["original"]
       36 GETTABLEKS                       R13 R13 K3 ["Id"]
       38 JUMPIFNOTEQ                      R13 R12 ; [+3]
       40 LOADB                            R7 1
       41 JUMP                             ; [+3]
       42 FORGLOOP                         R8 2 ; [-9]
       44 LOADB                            R7 0
       45 GETTABLEKS                       R8 R1 K1 ["Children"]
       47 LOADNIL                          R9
       48 LOADNIL                          R10
       49 FORGPREP                         R8
       50 LOADB                            R13 1
       51 SETTABLEKS                       R13 R12 K4 ["_inHeaderlessBranch"]
       53 GETTABLEKS                       R13 R12 K5 ["showHeader"]
       55 JUMPIFNOT                        R13 ; [+9]
       56 MOVE                             R15 R12
       57 MOVE                             R16 R2
       58 MOVE                             R17 R3
       59 ADDK                             R18 R4 K6 [1]
       60 OR                               R19 R7 R5
       61 NAMECALL                         R13 R0 K7 ["renderHeaderNode"]
       63 CALL                             R13 6 0
       64 JUMP                             ; [+8]
       65 MOVE                             R15 R12
       66 MOVE                             R16 R2
       67 MOVE                             R17 R3
       68 ADDK                             R18 R4 K6 [1]
       69 OR                               R19 R7 R5
       70 NAMECALL                         R13 R0 K8 ["renderStandardNode"]
       72 CALL                             R13 6 0
       73 FORGLOOP                         R8 2 ; [-24]
       75 RETURN                           R0 0
       76 GETIMPORT                        R7 K11 [Instance.new]
       78 LOADK                            R8 K12 ["Frame"]
       79 CALL                             R7 1 1
       80 GETTABLEKS                       R8 R1 K2 ["original"]
       82 GETTABLEKS                       R8 R8 K13 ["Name"]
       84 JUMPIFNOT                        R8 ; [+6]
       85 GETTABLEKS                       R8 R1 K2 ["original"]
       87 GETTABLEKS                       R8 R8 K13 ["Name"]
       89 SETTABLEKS                       R8 R7 K13 ["Name"]
       91 GETIMPORT                        R8 K15 [UDim2.new]
       93 LOADN                            R9 0
       94 GETTABLEKS                       R10 R1 K0 ["rectangle"]
       96 GETTABLEKS                       R10 R10 K16 ["x"]
       98 LOADN                            R11 0
       99 GETTABLEKS                       R12 R1 K0 ["rectangle"]
      101 GETTABLEKS                       R12 R12 K17 ["y"]
      103 CALL                             R8 4 1
      104 SETTABLEKS                       R8 R7 K18 ["Position"]
      106 GETIMPORT                        R8 K15 [UDim2.new]
      108 LOADN                            R9 0
      109 GETTABLEKS                       R10 R1 K0 ["rectangle"]
      111 GETTABLEKS                       R10 R10 K19 ["width"]
      113 LOADN                            R11 0
      114 GETTABLEKS                       R12 R1 K0 ["rectangle"]
      116 GETTABLEKS                       R12 R12 K20 ["height"]
      118 CALL                             R8 4 1
      119 SETTABLEKS                       R8 R7 K21 ["Size"]
      121 LOADB                            R8 0
      122 SETTABLEKS                       R8 R7 K22 ["ClipsDescendants"]
      124 LOADN                            R8 1
      125 SETTABLEKS                       R8 R7 K23 ["BackgroundTransparency"]
      127 SETTABLEKS                       R7 R1 K24 ["frame"]
      129 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
      131 MOVE                             R9 R6
      132 MOVE                             R10 R7
      133 GETIMPORT                        R8 K27 [table.insert]
      135 CALL                             R8 2 0
      136 GETTABLEKS                       R9 R1 K2 ["original"]
      138 GETTABLEKS                       R9 R9 K3 ["Id"]
      140 JUMPIFNOTEQKNIL                  R9 ; [+3]
      142 LOADB                            R8 0
      143 JUMP                             ; [+15]
      144 MOVE                             R9 R3
      145 LOADNIL                          R10
      146 LOADNIL                          R11
      147 FORGPREP                         R9
      148 GETTABLEKS                       R14 R1 K2 ["original"]
      150 GETTABLEKS                       R14 R14 K3 ["Id"]
      152 JUMPIFNOTEQ                      R14 R13 ; [+3]
      154 LOADB                            R8 1
      155 JUMP                             ; [+3]
      156 FORGLOOP                         R9 2 ; [-9]
      158 LOADB                            R8 0
      159 MOVE                             R9 R8
      160 JUMPIFNOT                        R9 ; [+1]
      161 NOT                              R9 R5
      162 MOVE                             R10 R3
      163 JUMPIFNOT                        R10 ; [+6]
      164 LENGTH                           R11 R3
      165 LOADN                            R12 0
      166 JUMPIFLT                         R12 R11 ; [+2]
      168 LOADB                            R10 0 +1
      169 LOADB                            R10 1
      170 MOVE                             R11 R10
      171 JUMPIFNOT                        R11 ; [+3]
      172 NOT                              R11 R8
      173 JUMPIFNOT                        R11 ; [+1]
      174 NOT                              R11 R5
      175 SETTABLEKS                       R11 R1 K28 ["_dimmed"]
      177 LOADB                            R12 1
      178 SETTABLEKS                       R12 R1 K29 ["_isStandardNode"]
      180 GETUPVAL                         R14 1
      181 GETTABLEKS                       R14 R14 K31 ["textLineHeight"]
      183 MULK                             R13 R14 K30 [2]
      184 GETUPVAL                         R14 1
      185 GETTABLEKS                       R14 R14 K32 ["textLineGap"]
      187 ADD                              R12 R13 R14
      188 GETUPVAL                         R14 2
      189 LOADK                            R15 K33 ["XXX..."]
      190 GETUPVAL                         R16 1
      191 GETTABLEKS                       R16 R16 K31 ["textLineHeight"]
      193 GETUPVAL                         R17 1
      194 GETTABLEKS                       R17 R17 K34 ["fontBold"]
      196 CALL                             R14 3 1
      197 GETTABLEKS                       R14 R14 K35 ["X"]
      199 GETUPVAL                         R16 1
      200 GETTABLEKS                       R16 R16 K36 ["textPadding"]
      202 MULK                             R15 R16 K30 [2]
      203 ADD                              R13 R14 R15
      204 GETTABLEKS                       R14 R1 K0 ["rectangle"]
      206 GETTABLEKS                       R14 R14 K19 ["width"]
      208 JUMPIFNOTLT                      R13 R14 ; [+214]
      210 GETTABLEKS                       R14 R1 K0 ["rectangle"]
      212 GETTABLEKS                       R14 R14 K20 ["height"]
      214 GETUPVAL                         R16 1
      215 GETTABLEKS                       R16 R16 K37 ["cellGap"]
      217 ADD                              R15 R12 R16
      218 JUMPIFNOTLT                      R15 R14 ; [+204]
      220 GETTABLEKS                       R15 R1 K0 ["rectangle"]
      222 GETTABLEKS                       R15 R15 K17 ["y"]
      224 GETTABLEKS                       R18 R1 K0 ["rectangle"]
      226 GETTABLEKS                       R18 R18 K20 ["height"]
      228 SUB                              R17 R18 R12
      229 DIVK                             R16 R17 K30 [2]
      230 ADD                              R14 R15 R16
      231 JUMPIFNOT                        R11 ; [+15]
      232 GETUPVAL                         R16 1
      233 GETTABLEKS                       R16 R16 K38 ["fontColor"]
      235 GETIMPORT                        R19 K40 [Color3.new]
      237 LOADN                            R20 0
      238 LOADN                            R21 0
      239 LOADN                            R22 0
      240 CALL                             R19 3 1
      241 LOADK                            R20 K41 [0.5]
      242 NAMECALL                         R17 R16 K42 ["Lerp"]
      244 CALL                             R17 3 1
      245 MOVE                             R15 R17
      246 JUMP                             ; [+3]
      247 GETUPVAL                         R15 1
      248 GETTABLEKS                       R15 R15 K38 ["fontColor"]
      250 GETIMPORT                        R16 K11 [Instance.new]
      252 LOADK                            R17 K43 ["TextLabel"]
      253 CALL                             R16 1 1
      254 GETIMPORT                        R17 K47 [Enum.TextXAlignment.Center]
      256 SETTABLEKS                       R17 R16 K45 ["TextXAlignment"]
      258 GETIMPORT                        R17 K50 [Enum.TextYAlignment.Bottom]
      260 SETTABLEKS                       R17 R16 K48 ["TextYAlignment"]
      262 LOADN                            R17 1
      263 SETTABLEKS                       R17 R16 K23 ["BackgroundTransparency"]
      265 GETUPVAL                         R17 3
      266 GETTABLEKS                       R19 R1 K2 ["original"]
      268 GETTABLEKS                       R19 R19 K13 ["Name"]
      270 ORK                              R18 R19 K51 [""]
      271 CALL                             R17 1 1
      272 SETTABLEKS                       R17 R16 K52 ["Text"]
      274 GETUPVAL                         R17 1
      275 GETTABLEKS                       R17 R17 K34 ["fontBold"]
      277 SETTABLEKS                       R17 R16 K53 ["Font"]
      279 SETTABLEKS                       R15 R16 K54 ["TextColor3"]
      281 GETUPVAL                         R17 1
      282 GETTABLEKS                       R17 R17 K31 ["textLineHeight"]
      284 SETTABLEKS                       R17 R16 K55 ["TextSize"]
      286 LOADB                            R17 0
      287 SETTABLEKS                       R17 R16 K22 ["ClipsDescendants"]
      289 GETIMPORT                        R17 K58 [Enum.TextTruncate.AtEnd]
      291 SETTABLEKS                       R17 R16 K56 ["TextTruncate"]
      293 GETIMPORT                        R17 K15 [UDim2.new]
      295 LOADN                            R18 0
      296 GETTABLEKS                       R20 R1 K0 ["rectangle"]
      298 GETTABLEKS                       R20 R20 K19 ["width"]
      300 GETUPVAL                         R22 1
      301 GETTABLEKS                       R22 R22 K36 ["textPadding"]
      303 MULK                             R21 R22 K30 [2]
      304 SUB                              R19 R20 R21
      305 LOADN                            R20 0
      306 GETUPVAL                         R21 1
      307 GETTABLEKS                       R21 R21 K31 ["textLineHeight"]
      309 CALL                             R17 4 1
      310 SETTABLEKS                       R17 R16 K21 ["Size"]
      312 GETIMPORT                        R17 K15 [UDim2.new]
      314 LOADN                            R18 0
      315 GETTABLEKS                       R20 R1 K0 ["rectangle"]
      317 GETTABLEKS                       R20 R20 K16 ["x"]
      319 GETUPVAL                         R21 1
      320 GETTABLEKS                       R21 R21 K36 ["textPadding"]
      322 ADD                              R19 R20 R21
      323 LOADN                            R20 0
      324 MOVE                             R21 R14
      325 CALL                             R17 4 1
      326 SETTABLEKS                       R17 R16 K18 ["Position"]
      328 GETUPVAL                         R18 4
      329 FASTCALL2                        TABLE_INSERT R18 R16 ; [+4]
      331 MOVE                             R19 R16
      332 GETIMPORT                        R17 K27 [table.insert]
      334 CALL                             R17 2 0
      335 GETIMPORT                        R17 K11 [Instance.new]
      337 LOADK                            R18 K43 ["TextLabel"]
      338 CALL                             R17 1 1
      339 GETIMPORT                        R18 K47 [Enum.TextXAlignment.Center]
      341 SETTABLEKS                       R18 R17 K45 ["TextXAlignment"]
      343 GETIMPORT                        R18 K60 [Enum.TextYAlignment.Top]
      345 SETTABLEKS                       R18 R17 K48 ["TextYAlignment"]
      347 LOADN                            R18 1
      348 SETTABLEKS                       R18 R17 K23 ["BackgroundTransparency"]
      350 GETTABLEKS                       R19 R1 K61 ["formattedValue"]
      352 ORK                              R18 R19 K51 [""]
      353 SETTABLEKS                       R18 R17 K52 ["Text"]
      355 GETUPVAL                         R18 1
      356 GETTABLEKS                       R18 R18 K34 ["fontBold"]
      358 SETTABLEKS                       R18 R17 K53 ["Font"]
      360 SETTABLEKS                       R15 R17 K54 ["TextColor3"]
      362 GETUPVAL                         R18 1
      363 GETTABLEKS                       R18 R18 K31 ["textLineHeight"]
      365 SETTABLEKS                       R18 R17 K55 ["TextSize"]
      367 LOADB                            R18 0
      368 SETTABLEKS                       R18 R17 K22 ["ClipsDescendants"]
      370 GETIMPORT                        R18 K58 [Enum.TextTruncate.AtEnd]
      372 SETTABLEKS                       R18 R17 K56 ["TextTruncate"]
      374 GETIMPORT                        R18 K15 [UDim2.new]
      376 LOADN                            R19 0
      377 GETTABLEKS                       R21 R1 K0 ["rectangle"]
      379 GETTABLEKS                       R21 R21 K19 ["width"]
      381 GETUPVAL                         R23 1
      382 GETTABLEKS                       R23 R23 K36 ["textPadding"]
      384 MULK                             R22 R23 K30 [2]
      385 SUB                              R20 R21 R22
      386 LOADN                            R21 0
      387 GETUPVAL                         R22 1
      388 GETTABLEKS                       R22 R22 K31 ["textLineHeight"]
      390 CALL                             R18 4 1
      391 SETTABLEKS                       R18 R17 K21 ["Size"]
      393 GETIMPORT                        R18 K15 [UDim2.new]
      395 LOADN                            R19 0
      396 GETTABLEKS                       R21 R1 K0 ["rectangle"]
      398 GETTABLEKS                       R21 R21 K16 ["x"]
      400 GETUPVAL                         R22 1
      401 GETTABLEKS                       R22 R22 K36 ["textPadding"]
      403 ADD                              R20 R21 R22
      404 LOADN                            R21 0
      405 GETUPVAL                         R24 1
      406 GETTABLEKS                       R24 R24 K31 ["textLineHeight"]
      408 ADD                              R23 R14 R24
      409 GETUPVAL                         R24 1
      410 GETTABLEKS                       R24 R24 K32 ["textLineGap"]
      412 ADD                              R22 R23 R24
      413 CALL                             R18 4 1
      414 SETTABLEKS                       R18 R17 K18 ["Position"]
      416 GETUPVAL                         R19 4
      417 FASTCALL2                        TABLE_INSERT R19 R17 ; [+4]
      419 MOVE                             R20 R17
      420 GETIMPORT                        R18 K27 [table.insert]
      422 CALL                             R18 2 0
      423 JUMPIFNOT                        R9 ; [+87]
      424 GETUPVAL                         R14 5
      425 MOVE                             R15 R7
      426 GETIMPORT                        R16 K40 [Color3.new]
      428 LOADN                            R17 1
      429 LOADN                            R18 1
      430 LOADN                            R19 1
      431 CALL                             R16 3 1
      432 GETUPVAL                         R17 1
      433 GETTABLEKS                       R17 R17 K62 ["selectionOutlineThickness"]
      435 LOADN                            R18 0
      436 CALL                             R14 4 1
      437 GETUPVAL                         R16 1
      438 GETTABLEKS                       R16 R16 K63 ["selectionOutlineNudge"]
      440 ADDK                             R15 R16 K6 [1]
      441 GETIMPORT                        R16 K15 [UDim2.new]
      443 GETTABLEKS                       R17 R14 K18 ["Position"]
      445 GETTABLEKS                       R17 R17 K35 ["X"]
      447 GETTABLEKS                       R17 R17 K64 ["Scale"]
      449 GETTABLEKS                       R19 R14 K18 ["Position"]
      451 GETTABLEKS                       R19 R19 K35 ["X"]
      453 GETTABLEKS                       R19 R19 K65 ["Offset"]
      455 ADD                              R18 R19 R15
      456 GETTABLEKS                       R19 R14 K18 ["Position"]
      458 GETTABLEKS                       R19 R19 K66 ["Y"]
      460 GETTABLEKS                       R19 R19 K64 ["Scale"]
      462 GETTABLEKS                       R21 R14 K18 ["Position"]
      464 GETTABLEKS                       R21 R21 K66 ["Y"]
      466 GETTABLEKS                       R21 R21 K65 ["Offset"]
      468 ADD                              R20 R21 R15
      469 CALL                             R16 4 1
      470 SETTABLEKS                       R16 R14 K18 ["Position"]
      472 GETIMPORT                        R16 K15 [UDim2.new]
      474 GETTABLEKS                       R17 R14 K21 ["Size"]
      476 GETTABLEKS                       R17 R17 K35 ["X"]
      478 GETTABLEKS                       R17 R17 K64 ["Scale"]
      480 GETTABLEKS                       R19 R14 K21 ["Size"]
      482 GETTABLEKS                       R19 R19 K35 ["X"]
      484 GETTABLEKS                       R19 R19 K65 ["Offset"]
      486 SUB                              R18 R19 R15
      487 GETTABLEKS                       R19 R14 K21 ["Size"]
      489 GETTABLEKS                       R19 R19 K66 ["Y"]
      491 GETTABLEKS                       R19 R19 K64 ["Scale"]
      493 GETTABLEKS                       R21 R14 K21 ["Size"]
      495 GETTABLEKS                       R21 R21 K66 ["Y"]
      497 GETTABLEKS                       R21 R21 K65 ["Offset"]
      499 SUB                              R20 R21 R15
      500 CALL                             R16 4 1
      501 SETTABLEKS                       R16 R14 K21 ["Size"]
      503 GETTABLEKS                       R17 R0 K67 ["_selectionLayer"]
      505 FASTCALL2                        TABLE_INSERT R17 R14 ; [+4]
      507 MOVE                             R18 R14
      508 GETIMPORT                        R16 K27 [table.insert]
      510 CALL                             R16 2 0
      511 MOVE                             R16 R1
      512 MOVE                             R17 R6
      513 MOVE                             R18 R11
      514 NAMECALL                         R14 R0 K68 ["fillTinybox"]
      516 CALL                             R14 4 0
      517 RETURN                           R0 0

PROTO_16:
        0 LOADN                            R1 1
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 [Infinity]
        3 MOVE                             R6 R0
        4 SUBK                             R8 R0 K1 [2]
        5 FASTCALL2K                       MATH_MAX R8 K1 ; [+4]
        7 LOADK                            R9 K1 [2]
        8 GETIMPORT                        R7 K4 [math.max]
       10 CALL                             R7 2 1
       11 MOVE                             R4 R7
       12 LOADN                            R5 -1
       13 FORNPREP                         R4
       14 FASTCALL1                        MATH_SQRT R6 ; [+3]
       15 MOVE                             R9 R6
       16 GETIMPORT                        R8 K6 [math.sqrt]
       18 CALL                             R8 1 1
       19 FASTCALL1                        MATH_CEIL R8 ; [+2]
       20 GETIMPORT                        R7 K8 [math.ceil]
       22 CALL                             R7 1 1
       23 LOADN                            R10 2
       24 MOVE                             R8 R7
       25 LOADN                            R9 1
       26 FORNPREP                         R8
       27 MOD                              R11 R6 R10
       28 JUMPIFNOTEQKN                    R11 K9 [0] ; [+26]
       30 DIV                              R11 R6 R10
       31 DIV                              R14 R10 R11
       32 GETUPVAL                         R15 0
       33 SUB                              R13 R14 R15
       34 FASTCALL1                        MATH_ABS R13 ; [+2]
       35 GETIMPORT                        R12 K11 [math.abs]
       37 CALL                             R12 1 1
       38 DIV                              R15 R11 R10
       39 GETUPVAL                         R16 0
       40 SUB                              R14 R15 R16
       41 FASTCALL1                        MATH_ABS R14 ; [+2]
       42 GETIMPORT                        R13 K11 [math.abs]
       44 CALL                             R13 1 1
       45 JUMPIFNOTLT                      R12 R3 ; [+4]
       47 MOVE                             R3 R12
       48 MOVE                             R1 R10
       49 MOVE                             R2 R11
       50 JUMPIFNOTLT                      R13 R3 ; [+4]
       52 MOVE                             R3 R13
       53 MOVE                             R1 R11
       54 MOVE                             R2 R10
       55 FORNLOOP                         R8
       56 FORNLOOP                         R4
       57 ADDK                             R4 R0 K12 [1]
       58 FASTCALL1                        MATH_SQRT R4 ; [+3]
       59 MOVE                             R7 R4
       60 GETIMPORT                        R6 K6 [math.sqrt]
       62 CALL                             R6 1 1
       63 FASTCALL1                        MATH_CEIL R6 ; [+2]
       64 GETIMPORT                        R5 K8 [math.ceil]
       66 CALL                             R5 1 1
       67 LOADN                            R8 2
       68 MOVE                             R6 R5
       69 LOADN                            R7 1
       70 FORNPREP                         R6
       71 MOD                              R9 R4 R8
       72 JUMPIFNOTEQKN                    R9 K9 [0] ; [+26]
       74 DIV                              R9 R4 R8
       75 DIV                              R12 R8 R9
       76 GETUPVAL                         R13 0
       77 SUB                              R11 R12 R13
       78 FASTCALL1                        MATH_ABS R11 ; [+2]
       79 GETIMPORT                        R10 K11 [math.abs]
       81 CALL                             R10 1 1
       82 DIV                              R13 R9 R8
       83 GETUPVAL                         R14 0
       84 SUB                              R12 R13 R14
       85 FASTCALL1                        MATH_ABS R12 ; [+2]
       86 GETIMPORT                        R11 K11 [math.abs]
       88 CALL                             R11 1 1
       89 JUMPIFNOTLT                      R10 R3 ; [+4]
       91 MOVE                             R3 R10
       92 MOVE                             R1 R8
       93 MOVE                             R2 R9
       94 JUMPIFNOTLT                      R11 R3 ; [+4]
       96 MOVE                             R3 R11
       97 MOVE                             R1 R9
       98 MOVE                             R2 R8
       99 FORNLOOP                         R6
      100 RETURN                           R1 2

PROTO_17:
        0 GETTABLEKS                       R4 R1 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R4 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R1 K0 ["rectangle"]
        7 GETTABLEKS                       R4 R4 K1 ["width"]
        9 LOADN                            R5 3
       10 JUMPIFLT                         R4 R5 ; [+8]
       12 GETTABLEKS                       R4 R1 K0 ["rectangle"]
       14 GETTABLEKS                       R4 R4 K2 ["height"]
       16 LOADN                            R5 3
       17 JUMPIFNOTLT                      R4 R5 ; [+2]
       19 RETURN                           R0 0
       20 GETIMPORT                        R4 K5 [Instance.new]
       22 LOADK                            R5 K6 ["Frame"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R1 K7 ["original"]
       26 GETTABLEKS                       R5 R5 K8 ["Name"]
       28 JUMPIFNOT                        R5 ; [+6]
       29 GETTABLEKS                       R5 R1 K7 ["original"]
       31 GETTABLEKS                       R5 R5 K8 ["Name"]
       33 SETTABLEKS                       R5 R4 K8 ["Name"]
       35 GETUPVAL                         R5 0
       36 GETTABLEKS                       R5 R5 K9 ["cellGap"]
       38 GETIMPORT                        R6 K11 [UDim2.new]
       40 LOADN                            R7 0
       41 GETTABLEKS                       R9 R1 K0 ["rectangle"]
       43 GETTABLEKS                       R9 R9 K12 ["x"]
       45 ADD                              R8 R9 R5
       46 LOADN                            R9 0
       47 GETTABLEKS                       R11 R1 K0 ["rectangle"]
       49 GETTABLEKS                       R11 R11 K13 ["y"]
       51 ADD                              R10 R11 R5
       52 CALL                             R6 4 1
       53 SETTABLEKS                       R6 R4 K14 ["Position"]
       55 GETIMPORT                        R6 K11 [UDim2.new]
       57 LOADN                            R7 0
       58 GETTABLEKS                       R9 R1 K0 ["rectangle"]
       60 GETTABLEKS                       R9 R9 K1 ["width"]
       62 SUB                              R8 R9 R5
       63 LOADN                            R9 0
       64 GETTABLEKS                       R11 R1 K0 ["rectangle"]
       66 GETTABLEKS                       R11 R11 K2 ["height"]
       68 SUB                              R10 R11 R5
       69 CALL                             R6 4 1
       70 SETTABLEKS                       R6 R4 K15 ["Size"]
       72 LOADN                            R6 1
       73 SETTABLEKS                       R6 R4 K16 ["BorderSizePixel"]
       75 GETIMPORT                        R6 K18 [Color3.new]
       77 LOADN                            R7 0
       78 LOADN                            R8 0
       79 LOADN                            R9 0
       80 CALL                             R6 3 1
       81 SETTABLEKS                       R6 R4 K19 ["BorderColor3"]
       83 GETIMPORT                        R6 K5 [Instance.new]
       85 LOADK                            R7 K20 ["UICorner"]
       86 CALL                             R6 1 1
       87 GETIMPORT                        R7 K22 [UDim.new]
       89 LOADN                            R8 0
       90 GETUPVAL                         R9 0
       91 GETTABLEKS                       R9 R9 K23 ["cornerRadius"]
       93 CALL                             R7 2 1
       94 SETTABLEKS                       R7 R6 K24 ["CornerRadius"]
       96 SETTABLEKS                       R4 R6 K25 ["Parent"]
       98 GETTABLEKS                       R8 R1 K7 ["original"]
      100 JUMPIFNOT                        R8 ; [+10]
      101 GETTABLEKS                       R8 R1 K7 ["original"]
      103 GETTABLEKS                       R8 R8 K26 ["Color"]
      105 JUMPIFNOT                        R8 ; [+5]
      106 GETTABLEKS                       R7 R1 K7 ["original"]
      108 GETTABLEKS                       R7 R7 K26 ["Color"]
      110 JUMP                             ; [+19]
      111 GETTABLEKS                       R8 R1 K27 ["_ramp"]
      113 JUMPIF                           R8 ; [+12]
      114 GETTABLEKS                       R8 R1 K28 ["colorRamp"]
      116 JUMPIF                           R8 ; [+7]
      117 GETTABLEKS                       R8 R1 K7 ["original"]
      119 JUMPIFNOT                        R8 ; [+4]
      120 GETTABLEKS                       R8 R1 K7 ["original"]
      122 GETTABLEKS                       R8 R8 K28 ["colorRamp"]
      124 JUMPIF                           R8 ; [+1]
      125 GETUPVAL                         R8 1
      126 GETTABLEKS                       R10 R1 K30 ["colorRampIndex"]
      128 ORK                              R9 R10 K29 [1]
      129 GETTABLE                         R7 R8 R9
      130 GETTABLEKS                       R8 R1 K31 ["_inHeaderlessBranch"]
      132 JUMPIFNOT                        R8 ; [+17]
      133 NAMECALL                         R8 R7 K32 ["ToHSV"]
      135 CALL                             R8 1 3
      136 GETIMPORT                        R11 K34 [Color3.fromHSV]
      138 ADDK                             R13 R8 K35 [0.022222222222222223]
      139 MODK                             R12 R13 K29 [1]
      140 MOVE                             R13 R9
      141 MULK                             R15 R10 K36 [1.05]
      142 FASTCALL2K                       MATH_MIN R15 K29 ; [+4]
      144 LOADK                            R16 K29 [1]
      145 GETIMPORT                        R14 K39 [math.min]
      147 CALL                             R14 2 1
      148 CALL                             R11 3 1
      149 MOVE                             R7 R11
      150 JUMPIFNOT                        R3 ; [+12]
      151 GETIMPORT                        R12 K18 [Color3.new]
      153 LOADN                            R13 0
      154 LOADN                            R14 0
      155 LOADN                            R15 0
      156 CALL                             R12 3 1
      157 LOADK                            R13 K40 [0.5]
      158 NAMECALL                         R10 R7 K41 ["Lerp"]
      160 CALL                             R10 3 1
      161 MOVE                             R8 R10
      162 JUMP                             ; [+1]
      163 MOVE                             R8 R7
      164 SETTABLEKS                       R8 R4 K42 ["BackgroundColor3"]
      166 LOADB                            R8 1
      167 SETTABLEKS                       R8 R4 K43 ["ClipsDescendants"]
      169 GETTABLEKS                       R8 R1 K7 ["original"]
      171 JUMPIFNOT                        R8 ; [+4]
      172 GETTABLEKS                       R8 R1 K7 ["original"]
      174 GETTABLEKS                       R8 R8 K44 ["Boxes"]
      176 JUMPIFNOT                        R8 ; [+210]
      177 LOADN                            R9 1
      178 JUMPIFNOTLT                      R9 R8 ; [+208]
      180 GETTABLEKS                       R10 R1 K0 ["rectangle"]
      182 GETTABLEKS                       R10 R10 K1 ["width"]
      184 SUB                              R9 R10 R5
      185 GETTABLEKS                       R11 R1 K0 ["rectangle"]
      187 GETTABLEKS                       R11 R11 K2 ["height"]
      189 SUB                              R10 R11 R5
      190 FASTCALL2K                       MATH_MAX R10 K29 ; [+5]
      192 MOVE                             R13 R10
      193 LOADK                            R14 K29 [1]
      194 GETIMPORT                        R12 K46 [math.max]
      196 CALL                             R12 2 1
      197 DIV                              R11 R9 R12
      198 NEWCLOSURE                       R12 P0
      199 CAPTURE                          VAL R11
      200 LOADNIL                          R13
      201 LOADNIL                          R14
      202 JUMPIFEQKN                       R8 K47 [3] ; [+3]
      204 JUMPIFNOTEQKN                    R8 K48 [5] ; [+9]
      206 JUMPIFNOTLE                      R10 R9 ; [+4]
      208 MOVE                             R13 R8
      209 LOADN                            R14 1
      210 JUMP                             ; [+8]
      211 LOADN                            R13 1
      212 MOVE                             R14 R8
      213 JUMP                             ; [+5]
      214 MOVE                             R15 R12
      215 MOVE                             R16 R8
      216 CALL                             R15 1 2
      217 MOVE                             R13 R15
      218 MOVE                             R14 R16
      219 DIVK                             R16 R9 K49 [4]
      220 FASTCALL1                        MATH_FLOOR R16 ; [+2]
      221 GETIMPORT                        R15 K51 [math.floor]
      223 CALL                             R15 1 1
      224 DIVK                             R17 R10 K49 [4]
      225 FASTCALL1                        MATH_FLOOR R17 ; [+2]
      226 GETIMPORT                        R16 K51 [math.floor]
      228 CALL                             R16 1 1
      229 LOADN                            R17 1
      230 JUMPIFNOTLT                      R15 R17 ; [+2]
      232 LOADN                            R15 1
      233 LOADN                            R17 1
      234 JUMPIFNOTLT                      R16 R17 ; [+2]
      236 LOADN                            R16 1
      237 JUMPIFNOTLT                      R15 R13 ; [+2]
      239 MOVE                             R13 R15
      240 JUMPIFNOTLT                      R16 R14 ; [+2]
      242 MOVE                             R14 R16
      243 JUMPIFNOTLT                      R9 R10 ; [+19]
      245 FASTCALL2                        MATH_MIN R13 R14 ; [+5]
      247 MOVE                             R19 R13
      248 MOVE                             R20 R14
      249 GETIMPORT                        R18 K39 [math.min]
      251 CALL                             R18 2 1
      252 MOVE                             R17 R18
      253 FASTCALL2                        MATH_MAX R13 R14 ; [+5]
      255 MOVE                             R19 R13
      256 MOVE                             R20 R14
      257 GETIMPORT                        R18 K46 [math.max]
      259 CALL                             R18 2 1
      260 MOVE                             R14 R18
      261 MOVE                             R13 R17
      262 JUMP                             ; [+17]
      263 FASTCALL2                        MATH_MAX R13 R14 ; [+5]
      265 MOVE                             R19 R13
      266 MOVE                             R20 R14
      267 GETIMPORT                        R18 K46 [math.max]
      269 CALL                             R18 2 1
      270 MOVE                             R17 R18
      271 FASTCALL2                        MATH_MIN R13 R14 ; [+5]
      273 MOVE                             R19 R13
      274 MOVE                             R20 R14
      275 GETIMPORT                        R18 K39 [math.min]
      277 CALL                             R18 2 1
      278 MOVE                             R14 R18
      279 MOVE                             R13 R17
      280 DIV                              R17 R9 R13
      281 DIV                              R18 R10 R14
      282 LOADN                            R19 2
      283 JUMPIFNOTLE                      R19 R17 ; [+103]
      285 LOADN                            R19 2
      286 JUMPIFNOTLE                      R19 R18 ; [+100]
      288 GETIMPORT                        R21 K18 [Color3.new]
      290 LOADN                            R22 0
      291 LOADN                            R23 0
      292 LOADN                            R24 0
      293 CALL                             R21 3 1
      294 LOADK                            R22 K52 [0.35]
      295 NAMECALL                         R19 R7 K41 ["Lerp"]
      297 CALL                             R19 3 1
      298 JUMPIFNOT                        R3 ; [+12]
      299 MOVE                             R20 R19
      300 GETIMPORT                        R23 K18 [Color3.new]
      302 LOADN                            R24 0
      303 LOADN                            R25 0
      304 LOADN                            R26 0
      305 CALL                             R23 3 1
      306 LOADK                            R24 K40 [0.5]
      307 NAMECALL                         R21 R20 K41 ["Lerp"]
      309 CALL                             R21 3 1
      310 MOVE                             R19 R21
      311 LOADN                            R22 1
      312 SUBK                             R20 R13 K29 [1]
      313 LOADN                            R21 1
      314 FORNPREP                         R20
      315 GETIMPORT                        R23 K5 [Instance.new]
      317 LOADK                            R24 K6 ["Frame"]
      318 CALL                             R23 1 1
      319 GETIMPORT                        R24 K11 [UDim2.new]
      321 LOADN                            R25 0
      322 LOADN                            R26 1
      323 LOADN                            R27 1
      324 LOADN                            R28 0
      325 CALL                             R24 4 1
      326 SETTABLEKS                       R24 R23 K15 ["Size"]
      328 GETIMPORT                        R24 K11 [UDim2.new]
      330 LOADN                            R25 0
      331 MUL                              R27 R22 R17
      332 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      333 GETIMPORT                        R26 K51 [math.floor]
      335 CALL                             R26 1 1
      336 LOADN                            R27 0
      337 LOADN                            R28 0
      338 CALL                             R24 4 1
      339 SETTABLEKS                       R24 R23 K14 ["Position"]
      341 SETTABLEKS                       R19 R23 K42 ["BackgroundColor3"]
      343 LOADN                            R24 0
      344 SETTABLEKS                       R24 R23 K16 ["BorderSizePixel"]
      346 SETTABLEKS                       R4 R23 K25 ["Parent"]
      348 FORNLOOP                         R20
      349 LOADN                            R22 1
      350 SUBK                             R20 R14 K29 [1]
      351 LOADN                            R21 1
      352 FORNPREP                         R20
      353 GETIMPORT                        R23 K5 [Instance.new]
      355 LOADK                            R24 K6 ["Frame"]
      356 CALL                             R23 1 1
      357 GETIMPORT                        R24 K11 [UDim2.new]
      359 LOADN                            R25 1
      360 LOADN                            R26 0
      361 LOADN                            R27 0
      362 LOADN                            R28 1
      363 CALL                             R24 4 1
      364 SETTABLEKS                       R24 R23 K15 ["Size"]
      366 GETIMPORT                        R24 K11 [UDim2.new]
      368 LOADN                            R25 0
      369 LOADN                            R26 0
      370 LOADN                            R27 0
      371 MUL                              R29 R22 R18
      372 FASTCALL1                        MATH_FLOOR R29 ; [+2]
      373 GETIMPORT                        R28 K51 [math.floor]
      375 CALL                             R28 1 1
      376 CALL                             R24 4 1
      377 SETTABLEKS                       R24 R23 K14 ["Position"]
      379 SETTABLEKS                       R19 R23 K42 ["BackgroundColor3"]
      381 LOADN                            R24 0
      382 SETTABLEKS                       R24 R23 K16 ["BorderSizePixel"]
      384 SETTABLEKS                       R4 R23 K25 ["Parent"]
      386 FORNLOOP                         R20
      387 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
      389 MOVE                             R10 R2
      390 MOVE                             R11 R4
      391 GETIMPORT                        R9 K55 [table.insert]
      393 CALL                             R9 2 0
      394 SETTABLEKS                       R4 R1 K56 ["frame"]
      396 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R4 R0 K0 ["original"]
        2 GETTABLEKS                       R6 R4 K2 ["Size"]
        4 ORK                              R5 R6 K1 [0]
        5 JUMPIFEQKS                       R1 K3 ["count"] ; [+3]
        7 JUMPIFNOTEQKS                    R1 K4 ["instanceCount"] ; [+8]
        9 FASTCALL1                        TOSTRING R5 ; [+3]
       10 MOVE                             R7 R5
       11 GETIMPORT                        R6 K6 [tostring]
       13 CALL                             R6 1 1
       14 MOVE                             R3 R6
       15 JUMP                             ; [+4]
       16 GETUPVAL                         R6 0
       17 MOVE                             R7 R5
       18 CALL                             R6 1 1
       19 MOVE                             R3 R6
       20 SETTABLEKS                       R3 R0 K7 ["formattedValue"]
       22 SETTABLEKS                       R2 R0 K8 ["totalSize"]
       24 GETTABLEKS                       R3 R0 K9 ["Children"]
       26 JUMPIFNOT                        R3 ; [+12]
       27 GETTABLEKS                       R3 R0 K9 ["Children"]
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 GETUPVAL                         R8 1
       33 MOVE                             R9 R7
       34 MOVE                             R10 R1
       35 MOVE                             R11 R2
       36 CALL                             R8 3 0
       37 FORGLOOP                         R3 2 ; [-6]
       39 RETURN                           R0 0

PROTO_19:
        0 MOVE                             R5 R4
        1 JUMPIF                           R5 ; [+1]
        2 GETUPVAL                         R5 1
        3 SETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R1 K0 ["layoutSize"]
        6 JUMPIF                           R5 ; [+4]
        7 GETTABLEKS                       R5 R1 K1 ["Size"]
        9 JUMPIF                           R5 ; [+1]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 JUMPIFNOTLE                      R5 R6 ; [+15]
       14 GETTABLEKS                       R6 R1 K2 ["Children"]
       16 JUMPIFNOT                        R6 ; [+11]
       17 GETTABLEKS                       R6 R1 K2 ["Children"]
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLEKS                       R12 R10 K0 ["layoutSize"]
       24 ORK                              R11 R12 K3 [0]
       25 ADD                              R5 R5 R11
       26 FORGLOOP                         R6 2 ; [-5]
       28 GETUPVAL                         R6 2
       29 MOVE                             R7 R1
       30 MOVE                             R8 R3
       31 MOVE                             R9 R5
       32 CALL                             R6 3 0
       33 DUPCLOSURE                       R6 K4 [PROTO_9]
       34 CAPTURE                          VAL R6
       35 CAPTURE                          UPVAL U3
       36 MOVE                             R7 R6
       37 MOVE                             R8 R1
       38 GETUPVAL                         R9 0
       39 CALL                             R7 2 0
       40 GETTABLEKS                       R6 R0 K5 ["_hoverOutline"]
       42 JUMPIFNOT                        R6 ; [+8]
       43 GETTABLEKS                       R6 R0 K5 ["_hoverOutline"]
       45 NAMECALL                         R6 R6 K6 ["Destroy"]
       47 CALL                             R6 1 0
       48 LOADNIL                          R6
       49 SETTABLEKS                       R6 R0 K5 ["_hoverOutline"]
       51 GETIMPORT                        R6 K9 [Instance.new]
       53 LOADK                            R7 K10 ["Frame"]
       54 CALL                             R6 1 1
       55 LOADN                            R7 1
       56 SETTABLEKS                       R7 R6 K11 ["BackgroundTransparency"]
       58 LOADN                            R7 0
       59 SETTABLEKS                       R7 R6 K12 ["BorderSizePixel"]
       61 GETIMPORT                        R7 K14 [UDim2.new]
       63 LOADN                            R8 1
       64 LOADN                            R9 0
       65 LOADN                            R10 1
       66 LOADN                            R11 0
       67 CALL                             R7 4 1
       68 SETTABLEKS                       R7 R6 K1 ["Size"]
       70 NEWTABLE                         R7 0 0
       72 SETUPVAL                         R7 4
       73 NEWTABLE                         R7 0 0
       75 SETUPVAL                         R7 5
       76 NEWTABLE                         R7 0 0
       78 SETTABLEKS                       R7 R0 K15 ["_selectionLayer"]
       80 NEWTABLE                         R7 0 0
       82 GETTABLEKS                       R8 R1 K2 ["Children"]
       84 JUMPIFNOT                        R8 ; [+76]
       85 GETTABLEKS                       R8 R1 K2 ["Children"]
       87 LOADNIL                          R9
       88 LOADNIL                          R10
       89 FORGPREP                         R8
       90 DUPTABLE                         R15 K19 [{"name", "size", "color"}]
       91 GETTABLEKS                       R16 R12 K20 ["original"]
       93 GETTABLEKS                       R16 R16 K21 ["Name"]
       95 SETTABLEKS                       R16 R15 K16 ["name"]
       97 GETTABLEKS                       R16 R12 K0 ["layoutSize"]
       99 SETTABLEKS                       R16 R15 K17 ["size"]
      101 GETTABLEKS                       R17 R12 K20 ["original"]
      103 JUMPIFNOT                        R17 ; [+10]
      104 GETTABLEKS                       R17 R12 K20 ["original"]
      106 GETTABLEKS                       R17 R17 K22 ["Color"]
      108 JUMPIFNOT                        R17 ; [+5]
      109 GETTABLEKS                       R16 R12 K20 ["original"]
      111 GETTABLEKS                       R16 R16 K22 ["Color"]
      113 JUMP                             ; [+19]
      114 GETTABLEKS                       R17 R12 K23 ["_ramp"]
      116 JUMPIF                           R17 ; [+12]
      117 GETTABLEKS                       R17 R12 K24 ["colorRamp"]
      119 JUMPIF                           R17 ; [+7]
      120 GETTABLEKS                       R17 R12 K20 ["original"]
      122 JUMPIFNOT                        R17 ; [+4]
      123 GETTABLEKS                       R17 R12 K20 ["original"]
      125 GETTABLEKS                       R17 R17 K24 ["colorRamp"]
      127 JUMPIF                           R17 ; [+1]
      128 GETUPVAL                         R17 0
      129 GETTABLEKS                       R19 R12 K26 ["colorRampIndex"]
      131 ORK                              R18 R19 K25 [1]
      132 GETTABLE                         R16 R17 R18
      133 SETTABLEKS                       R16 R15 K18 ["color"]
      135 FASTCALL2                        TABLE_INSERT R7 R15 ; [+4]
      137 MOVE                             R14 R7
      138 GETIMPORT                        R13 K29 [table.insert]
      140 CALL                             R13 2 0
      141 GETTABLEKS                       R13 R12 K30 ["showHeader"]
      143 JUMPIFNOT                        R13 ; [+8]
      144 MOVE                             R15 R12
      145 MOVE                             R16 R6
      146 MOVE                             R17 R2
      147 LOADN                            R18 1
      148 NAMECALL                         R13 R0 K31 ["renderHeaderNode"]
      150 CALL                             R13 5 0
      151 JUMP                             ; [+7]
      152 MOVE                             R15 R12
      153 MOVE                             R16 R6
      154 MOVE                             R17 R2
      155 LOADN                            R18 1
      156 NAMECALL                         R13 R0 K32 ["renderStandardNode"]
      158 CALL                             R13 5 0
      159 FORGLOOP                         R8 2 ; [-70]
      161 GETUPVAL                         R8 5
      162 LOADNIL                          R9
      163 LOADNIL                          R10
      164 FORGPREP                         R8
      165 MOVE                             R13 R12
      166 LOADNIL                          R14
      167 LOADNIL                          R15
      168 FORGPREP                         R13
      169 SETTABLEKS                       R6 R17 K33 ["Parent"]
      171 FORGLOOP                         R13 2 ; [-3]
      173 FORGLOOP                         R8 2 ; [-9]
      175 GETIMPORT                        R8 K9 [Instance.new]
      177 LOADK                            R9 K10 ["Frame"]
      178 CALL                             R8 1 1
      179 LOADN                            R9 1
      180 SETTABLEKS                       R9 R8 K11 ["BackgroundTransparency"]
      182 LOADN                            R9 0
      183 SETTABLEKS                       R9 R8 K12 ["BorderSizePixel"]
      185 GETIMPORT                        R9 K14 [UDim2.new]
      187 LOADN                            R10 1
      188 LOADN                            R11 0
      189 LOADN                            R12 1
      190 LOADN                            R13 0
      191 CALL                             R9 4 1
      192 SETTABLEKS                       R9 R8 K1 ["Size"]
      194 SETTABLEKS                       R6 R8 K33 ["Parent"]
      196 SETTABLEKS                       R8 R0 K34 ["_hoverLayer"]
      198 GETTABLEKS                       R9 R0 K15 ["_selectionLayer"]
      200 LOADNIL                          R10
      201 LOADNIL                          R11
      202 FORGPREP                         R9
      203 SETTABLEKS                       R6 R13 K33 ["Parent"]
      205 FORGLOOP                         R9 2 ; [-3]
      207 GETUPVAL                         R9 4
      208 LOADNIL                          R10
      209 LOADNIL                          R11
      210 FORGPREP                         R9
      211 SETTABLEKS                       R6 R13 K33 ["Parent"]
      213 FORGLOOP                         R9 2 ; [-3]
      215 NEWTABLE                         R9 0 0
      217 SETUPVAL                         R9 4
      218 NEWTABLE                         R9 0 0
      220 SETUPVAL                         R9 5
      221 RETURN                           R6 2

PROTO_20:
        0 RETURN                           R0 0

PROTO_21:
        0 GETTABLEKS                       R4 R0 K0 ["_lastHoveredNode"]
        2 JUMPIFNOTEQ                      R1 R4 ; [+2]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R4 R0 K1 ["_hoverOutline"]
        7 JUMPIFNOT                        R4 ; [+8]
        8 GETTABLEKS                       R4 R0 K1 ["_hoverOutline"]
       10 NAMECALL                         R4 R4 K2 ["Destroy"]
       12 CALL                             R4 1 0
       13 LOADNIL                          R4
       14 SETTABLEKS                       R4 R0 K1 ["_hoverOutline"]
       16 SETTABLEKS                       R1 R0 K0 ["_lastHoveredNode"]
       18 JUMPIFNOT                        R1 ; [+101]
       19 GETTABLEKS                       R4 R1 K3 ["frame"]
       21 JUMPIFNOT                        R4 ; [+98]
       22 GETTABLEKS                       R4 R0 K4 ["_hoverLayer"]
       24 JUMPIFNOT                        R4 ; [+95]
       25 GETTABLEKS                       R5 R1 K5 ["_dimmed"]
       27 JUMPIFNOT                        R5 ; [+13]
       28 GETUPVAL                         R5 0
       29 GETIMPORT                        R8 K8 [Color3.new]
       31 LOADN                            R9 0
       32 LOADN                            R10 0
       33 LOADN                            R11 0
       34 CALL                             R8 3 1
       35 LOADK                            R9 K9 [0.5]
       36 NAMECALL                         R6 R5 K10 ["Lerp"]
       38 CALL                             R6 3 1
       39 MOVE                             R4 R6
       40 JUMP                             ; [+1]
       41 GETUPVAL                         R4 0
       42 GETUPVAL                         R5 1
       43 GETTABLEKS                       R6 R1 K3 ["frame"]
       45 MOVE                             R7 R4
       46 LOADN                            R8 1
       47 LOADN                            R9 1
       48 CALL                             R5 4 1
       49 GETTABLEKS                       R6 R1 K11 ["_isStandardNode"]
       51 JUMPIFNOT                        R6 ; [+62]
       52 GETIMPORT                        R6 K13 [UDim2.new]
       54 GETTABLEKS                       R7 R5 K14 ["Position"]
       56 GETTABLEKS                       R7 R7 K15 ["X"]
       58 GETTABLEKS                       R7 R7 K16 ["Scale"]
       60 GETTABLEKS                       R9 R5 K14 ["Position"]
       62 GETTABLEKS                       R9 R9 K15 ["X"]
       64 GETTABLEKS                       R9 R9 K18 ["Offset"]
       66 ADDK                             R8 R9 K17 [1]
       67 GETTABLEKS                       R9 R5 K14 ["Position"]
       69 GETTABLEKS                       R9 R9 K19 ["Y"]
       71 GETTABLEKS                       R9 R9 K16 ["Scale"]
       73 GETTABLEKS                       R11 R5 K14 ["Position"]
       75 GETTABLEKS                       R11 R11 K19 ["Y"]
       77 GETTABLEKS                       R11 R11 K18 ["Offset"]
       79 ADDK                             R10 R11 K17 [1]
       80 CALL                             R6 4 1
       81 SETTABLEKS                       R6 R5 K14 ["Position"]
       83 GETIMPORT                        R6 K13 [UDim2.new]
       85 GETTABLEKS                       R7 R5 K20 ["Size"]
       87 GETTABLEKS                       R7 R7 K15 ["X"]
       89 GETTABLEKS                       R7 R7 K16 ["Scale"]
       91 GETTABLEKS                       R9 R5 K20 ["Size"]
       93 GETTABLEKS                       R9 R9 K15 ["X"]
       95 GETTABLEKS                       R9 R9 K18 ["Offset"]
       97 SUBK                             R8 R9 K17 [1]
       98 GETTABLEKS                       R9 R5 K20 ["Size"]
      100 GETTABLEKS                       R9 R9 K19 ["Y"]
      102 GETTABLEKS                       R9 R9 K16 ["Scale"]
      104 GETTABLEKS                       R11 R5 K20 ["Size"]
      106 GETTABLEKS                       R11 R11 K19 ["Y"]
      108 GETTABLEKS                       R11 R11 K18 ["Offset"]
      110 SUBK                             R10 R11 K17 [1]
      111 CALL                             R6 4 1
      112 SETTABLEKS                       R6 R5 K20 ["Size"]
      114 GETTABLEKS                       R6 R0 K4 ["_hoverLayer"]
      116 SETTABLEKS                       R6 R5 K21 ["Parent"]
      118 SETTABLEKS                       R5 R0 K1 ["_hoverOutline"]
      120 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 16 0
        3 GETIMPORT                        R1 K2 [Color3.new]
        5 LOADN                            R2 1
        6 LOADN                            R3 1
        7 LOADN                            R4 1
        8 CALL                             R1 3 1
        9 DUPCLOSURE                       R2 K3 [PROTO_0]
       10 GETIMPORT                        R3 K5 [script]
       12 LOADK                            R5 K6 ["SceneAnalysis"]
       13 NAMECALL                         R3 R3 K7 ["FindFirstAncestor"]
       15 CALL                             R3 2 1
       16 GETIMPORT                        R4 K9 [require]
       18 GETTABLEKS                       R5 R3 K10 ["Src"]
       20 GETTABLEKS                       R5 R5 K11 ["Components"]
       22 GETTABLEKS                       R5 R5 K12 ["Treemap"]
       24 GETTABLEKS                       R5 R5 K13 ["TreemapTypes"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K9 [require]
       29 GETTABLEKS                       R6 R3 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K14 ["Util"]
       33 GETTABLEKS                       R6 R6 K15 ["formatSize"]
       35 CALL                             R5 1 1
       36 DUPCLOSURE                       R6 K16 [PROTO_1]
       37 CAPTURE                          VAL R5
       38 NEWTABLE                         R7 0 0
       40 LOADN                            R8 0
       41 DUPTABLE                         R9 K42 [{["cellGap"] = 2, ["cornerRadius"] = 2, ["headerBarHeight"] = 22, ["textPadding"] = 4, ["textLineHeight"] = 16, ["textLineGap"] = 2, ["selectionOutlineThickness"] = 2, ["selectionOutlineNudge"] = 2, ["edgePadding"] = 1, ["textLabelHeight"] = 11, ["fontSize"] = 11, ["font"], ["fontBold"], ["fontColor"], ["headerFontColor"], ["headerColor"], ["minWidth"] = 20, ["minHeight"] = 20}]
       42 GETIMPORT                        R10 K46 [Enum.Font.SourceSans]
       44 SETTABLEKS                       R10 R9 K34 ["font"]
       46 GETIMPORT                        R10 K48 [Enum.Font.SourceSansBold]
       48 SETTABLEKS                       R10 R9 K35 ["fontBold"]
       50 GETIMPORT                        R10 K2 [Color3.new]
       52 LOADN                            R11 1
       53 LOADN                            R12 1
       54 LOADN                            R13 1
       55 CALL                             R10 3 1
       56 SETTABLEKS                       R10 R9 K36 ["fontColor"]
       58 GETIMPORT                        R10 K2 [Color3.new]
       60 LOADN                            R11 1
       61 LOADN                            R12 1
       62 LOADN                            R13 1
       63 CALL                             R10 3 1
       64 SETTABLEKS                       R10 R9 K37 ["headerFontColor"]
       66 GETIMPORT                        R10 K2 [Color3.new]
       68 LOADK                            R11 K49 [0.15294117647058825]
       69 LOADK                            R12 K50 [0.1607843137254902]
       70 LOADK                            R13 K51 [0.1803921568627451]
       71 CALL                             R10 3 1
       72 SETTABLEKS                       R10 R9 K38 ["headerColor"]
       74 NEWTABLE                         R10 0 0
       76 NEWTABLE                         R11 0 0
       78 NEWTABLE                         R12 0 0
       80 SETTABLEKS                       R12 R0 K52 ["_selectionLayer"]
       82 LOADNIL                          R12
       83 SETTABLEKS                       R12 R0 K53 ["_hoverOutline"]
       85 NEWCLOSURE                       R12 P2
       86 CAPTURE                          REF R10
       87 GETIMPORT                        R13 K9 [require]
       89 GETTABLEKS                       R14 R3 K10 ["Src"]
       91 GETTABLEKS                       R14 R14 K54 ["Resources"]
       93 GETTABLEKS                       R14 R14 K55 ["ColorRamps"]
       95 CALL                             R13 1 1
       96 GETTABLEKS                       R14 R13 K56 ["Default"]
       98 MOVE                             R15 R14
       99 DUPCLOSURE                       R16 K57 [PROTO_3]
      100 NEWCLOSURE                       R17 P4
      101 CAPTURE                          REF R15
      102 GETIMPORT                        R18 K9 [require]
      104 GETTABLEKS                       R19 R3 K10 ["Src"]
      106 GETTABLEKS                       R19 R19 K14 ["Util"]
      108 GETTABLEKS                       R19 R19 K58 ["abridgePath"]
      110 CALL                             R18 1 1
      111 DUPCLOSURE                       R19 K59 [PROTO_5]
      112 CAPTURE                          VAL R19
      113 DUPCLOSURE                       R20 K60 [PROTO_7]
      114 NEWCLOSURE                       R21 P7
      115 CAPTURE                          VAL R20
      116 CAPTURE                          REF R15
      117 NEWCLOSURE                       R22 P8
      118 CAPTURE                          REF R7
      119 CAPTURE                          REF R8
      120 DUPCLOSURE                       R23 K61 [PROTO_12]
      121 DUPCLOSURE                       R24 K62 [PROTO_13]
      122 NEWCLOSURE                       R25 P11
      123 CAPTURE                          REF R10
      124 CAPTURE                          VAL R9
      125 CAPTURE                          REF R15
      126 CAPTURE                          VAL R23
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R18
      129 CAPTURE                          REF R11
      130 CAPTURE                          VAL R22
      131 SETTABLEKS                       R25 R0 K63 ["renderHeaderNode"]
      133 NEWCLOSURE                       R25 P12
      134 CAPTURE                          REF R10
      135 CAPTURE                          VAL R9
      136 CAPTURE                          VAL R22
      137 CAPTURE                          VAL R18
      138 CAPTURE                          REF R11
      139 CAPTURE                          VAL R23
      140 SETTABLEKS                       R25 R0 K64 ["renderStandardNode"]
      142 NEWCLOSURE                       R25 P13
      143 CAPTURE                          VAL R9
      144 CAPTURE                          REF R15
      145 SETTABLEKS                       R25 R0 K65 ["fillTinybox"]
      147 DUPCLOSURE                       R25 K66 [PROTO_18]
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R25
      150 NEWCLOSURE                       R26 P15
      151 CAPTURE                          REF R15
      152 CAPTURE                          VAL R14
      153 CAPTURE                          VAL R25
      154 CAPTURE                          VAL R20
      155 CAPTURE                          REF R11
      156 CAPTURE                          REF R10
      157 SETTABLEKS                       R26 R0 K67 ["renderTreemap"]
      159 DUPCLOSURE                       R26 K68 [PROTO_20]
      160 SETTABLEKS                       R26 R0 K69 ["highlightGlowNode"]
      162 DUPCLOSURE                       R26 K70 [PROTO_21]
      163 CAPTURE                          VAL R1
      164 CAPTURE                          VAL R23
      165 SETTABLEKS                       R26 R0 K71 ["animateTreemap"]
      167 SETTABLEKS                       R9 R0 K72 ["settings"]
      169 DUPTABLE                         R26 K76 [{"formatNodeValue", "abridgePath", "collectRenderableNodes", "assignColorsByRank"}]
      170 SETTABLEKS                       R6 R26 K73 ["formatNodeValue"]
      172 SETTABLEKS                       R18 R26 K58 ["abridgePath"]
      174 SETTABLEKS                       R19 R26 K74 ["collectRenderableNodes"]
      176 SETTABLEKS                       R21 R26 K75 ["assignColorsByRank"]
      178 SETTABLEKS                       R26 R0 K77 ["_testOnly"]
      180 CLOSEUPVALS                      R7
      181 RETURN                           R0 1
