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
       26 LOADN                            R12 208
       27 LOADN                            R13 208
       28 CALL                             R11 2 -1
       29 NAMECALL                         R6 R6 K6 ["GetTextSize"]
       31 CALL                             R6 -1 1
       32 MOVE                             R5 R6
       33 GETUPVAL                         R6 1
       34 ADDK                             R6 R6 K7 [1]
       35 SETUPVAL                         R6 1
       36 SETTABLE                         R5 R4 R0
       37 GETUPVAL                         R6 1
       38 LOADN                            R7 232
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
       20 GETUPVAL                         R9 0
       21 GETTABLE                         R8 R9 R4
       22 JUMPIFNOTEQKNIL                  R8 ; [+5]
       24 NEWTABLE                         R8 0 0
       26 GETUPVAL                         R9 0
       27 SETTABLE                         R8 R9 R4
       28 MOVE                             R7 R8
       29 ADDK                             R9 R4 K7 [1]
       30 GETUPVAL                         R11 0
       31 GETTABLE                         R10 R11 R9
       32 JUMPIFNOTEQKNIL                  R10 ; [+5]
       34 NEWTABLE                         R10 0 0
       36 GETUPVAL                         R11 0
       37 SETTABLE                         R10 R11 R9
       38 MOVE                             R8 R10
       39 GETUPVAL                         R9 1
       40 GETTABLEKS                       R9 R9 K8 ["cellGap"]
       42 GETIMPORT                        R10 K10 [UDim2.new]
       44 LOADN                            R11 0
       45 GETTABLEKS                       R13 R1 K0 ["rectangle"]
       47 GETTABLEKS                       R13 R13 K11 ["x"]
       49 ADD                              R12 R13 R9
       50 LOADN                            R13 0
       51 GETTABLEKS                       R15 R1 K0 ["rectangle"]
       53 GETTABLEKS                       R15 R15 K12 ["y"]
       55 ADD                              R14 R15 R9
       56 CALL                             R10 4 1
       57 SETTABLEKS                       R10 R6 K13 ["Position"]
       59 GETIMPORT                        R10 K10 [UDim2.new]
       61 LOADN                            R11 0
       62 GETTABLEKS                       R13 R1 K0 ["rectangle"]
       64 GETTABLEKS                       R13 R13 K14 ["width"]
       66 SUB                              R12 R13 R9
       67 LOADN                            R13 0
       68 GETTABLEKS                       R15 R1 K0 ["rectangle"]
       70 GETTABLEKS                       R15 R15 K15 ["height"]
       72 SUB                              R14 R15 R9
       73 CALL                             R10 4 1
       74 SETTABLEKS                       R10 R6 K16 ["Size"]
       76 LOADN                            R10 1
       77 SETTABLEKS                       R10 R6 K17 ["BorderSizePixel"]
       79 GETIMPORT                        R10 K19 [Color3.new]
       81 LOADN                            R11 0
       82 LOADN                            R12 0
       83 LOADN                            R13 0
       84 CALL                             R10 3 1
       85 SETTABLEKS                       R10 R6 K20 ["BorderColor3"]
       87 LOADN                            R10 0
       88 SETTABLEKS                       R10 R6 K21 ["BackgroundTransparency"]
       90 GETIMPORT                        R10 K3 [Instance.new]
       92 LOADK                            R11 K22 ["UICorner"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K24 [UDim.new]
       96 LOADN                            R12 0
       97 GETUPVAL                         R13 1
       98 GETTABLEKS                       R13 R13 K25 ["cornerRadius"]
      100 CALL                             R11 2 1
      101 SETTABLEKS                       R11 R10 K26 ["CornerRadius"]
      103 SETTABLEKS                       R6 R10 K27 ["Parent"]
      105 GETTABLEKS                       R12 R1 K5 ["original"]
      107 JUMPIFNOT                        R12 ; [+10]
      108 GETTABLEKS                       R12 R1 K5 ["original"]
      110 GETTABLEKS                       R12 R12 K28 ["Color"]
      112 JUMPIFNOT                        R12 ; [+5]
      113 GETTABLEKS                       R11 R1 K5 ["original"]
      115 GETTABLEKS                       R11 R11 K28 ["Color"]
      117 JUMP                             ; [+19]
      118 GETTABLEKS                       R12 R1 K29 ["_ramp"]
      120 JUMPIF                           R12 ; [+12]
      121 GETTABLEKS                       R12 R1 K30 ["colorRamp"]
      123 JUMPIF                           R12 ; [+7]
      124 GETTABLEKS                       R12 R1 K5 ["original"]
      126 JUMPIFNOT                        R12 ; [+4]
      127 GETTABLEKS                       R12 R1 K5 ["original"]
      129 GETTABLEKS                       R12 R12 K30 ["colorRamp"]
      131 JUMPIF                           R12 ; [+1]
      132 GETUPVAL                         R12 2
      133 GETTABLEKS                       R14 R1 K31 ["colorRampIndex"]
      135 ORK                              R13 R14 K7 [1]
      136 GETTABLE                         R11 R12 R13
      137 GETIMPORT                        R12 K19 [Color3.new]
      139 LOADN                            R13 0
      140 LOADN                            R14 0
      141 LOADN                            R15 0
      142 CALL                             R12 3 1
      143 SETTABLEKS                       R12 R6 K32 ["BackgroundColor3"]
      145 GETTABLEKS                       R12 R1 K33 ["Children"]
      147 JUMPIFNOT                        R12 ; [+8]
      148 GETTABLEKS                       R14 R1 K33 ["Children"]
      150 LENGTH                           R13 R14
      151 LOADN                            R14 0
      152 JUMPIFLT                         R14 R13 ; [+2]
      154 LOADB                            R12 0 +1
      155 LOADB                            R12 1
      156 LOADB                            R13 0
      157 SETTABLEKS                       R13 R6 K34 ["ClipsDescendants"]
      159 LOADN                            R13 0
      160 SETTABLEKS                       R13 R6 K35 ["Transparency"]
      162 LOADN                            R13 0
      163 SETTABLEKS                       R13 R6 K21 ["BackgroundTransparency"]
      165 GETTABLEKS                       R14 R1 K5 ["original"]
      167 GETTABLEKS                       R14 R14 K36 ["Id"]
      169 JUMPIFNOTEQKNIL                  R14 ; [+3]
      171 LOADB                            R13 0
      172 JUMP                             ; [+15]
      173 MOVE                             R14 R3
      174 LOADNIL                          R15
      175 LOADNIL                          R16
      176 FORGPREP                         R14
      177 GETTABLEKS                       R19 R1 K5 ["original"]
      179 GETTABLEKS                       R19 R19 K36 ["Id"]
      181 JUMPIFNOTEQ                      R19 R18 ; [+3]
      183 LOADB                            R13 1
      184 JUMP                             ; [+3]
      185 FORGLOOP                         R14 2 ; [-9]
      187 LOADB                            R13 0
      188 MOVE                             R14 R13
      189 JUMPIFNOT                        R14 ; [+1]
      190 NOT                              R14 R5
      191 MOVE                             R15 R3
      192 JUMPIFNOT                        R15 ; [+6]
      193 LENGTH                           R16 R3
      194 LOADN                            R17 0
      195 JUMPIFLT                         R17 R16 ; [+2]
      197 LOADB                            R15 0 +1
      198 LOADB                            R15 1
      199 MOVE                             R16 R15
      200 JUMPIFNOT                        R16 ; [+3]
      201 NOT                              R16 R13
      202 JUMPIFNOT                        R16 ; [+1]
      203 NOT                              R16 R5
      204 SETTABLEKS                       R16 R1 K37 ["_dimmed"]
      206 FASTCALL2                        TABLE_INSERT R7 R6 ; [+5]
      208 MOVE                             R18 R7
      209 MOVE                             R19 R6
      210 GETIMPORT                        R17 K40 [table.insert]
      212 CALL                             R17 2 0
      213 JUMPIFNOT                        R14 ; [+19]
      214 GETTABLEKS                       R18 R0 K41 ["_selectionLayer"]
      216 GETUPVAL                         R19 3
      217 MOVE                             R20 R6
      218 GETIMPORT                        R21 K19 [Color3.new]
      220 LOADN                            R22 1
      221 LOADN                            R23 1
      222 LOADN                            R24 1
      223 CALL                             R21 3 1
      224 GETUPVAL                         R22 1
      225 GETTABLEKS                       R22 R22 K42 ["selectionOutlineThickness"]
      227 CALL                             R19 3 1
      228 FASTCALL2                        TABLE_INSERT R18 R19 ; [+3]
      230 GETIMPORT                        R17 K40 [table.insert]
      232 CALL                             R17 2 0
      233 SETTABLEKS                       R6 R1 K43 ["frame"]
      235 GETTABLEKS                       R17 R1 K44 ["showHeader"]
      237 JUMPIFNOT                        R17 ; [+446]
      238 GETIMPORT                        R17 K3 [Instance.new]
      240 LOADK                            R18 K4 ["Frame"]
      241 CALL                             R17 1 1
      242 GETIMPORT                        R18 K10 [UDim2.new]
      244 LOADN                            R19 0
      245 GETTABLEKS                       R21 R1 K0 ["rectangle"]
      247 GETTABLEKS                       R21 R21 K11 ["x"]
      249 ADD                              R20 R21 R9
      250 LOADN                            R21 0
      251 GETTABLEKS                       R23 R1 K0 ["rectangle"]
      253 GETTABLEKS                       R23 R23 K12 ["y"]
      255 ADD                              R22 R23 R9
      256 CALL                             R18 4 1
      257 SETTABLEKS                       R18 R17 K13 ["Position"]
      259 GETIMPORT                        R18 K10 [UDim2.new]
      261 LOADN                            R19 0
      262 GETTABLEKS                       R21 R1 K0 ["rectangle"]
      264 GETTABLEKS                       R21 R21 K14 ["width"]
      266 SUB                              R20 R21 R9
      267 LOADN                            R21 0
      268 GETUPVAL                         R22 1
      269 GETTABLEKS                       R22 R22 K45 ["headerBarHeight"]
      271 CALL                             R18 4 1
      272 SETTABLEKS                       R18 R17 K16 ["Size"]
      274 LOADN                            R18 0
      275 SETTABLEKS                       R18 R17 K21 ["BackgroundTransparency"]
      277 LOADN                            R18 1
      278 SETTABLEKS                       R18 R17 K17 ["BorderSizePixel"]
      280 GETIMPORT                        R18 K19 [Color3.new]
      282 LOADN                            R19 0
      283 LOADN                            R20 0
      284 LOADN                            R21 0
      285 CALL                             R18 3 1
      286 SETTABLEKS                       R18 R17 K20 ["BorderColor3"]
      288 GETIMPORT                        R18 K3 [Instance.new]
      290 LOADK                            R19 K22 ["UICorner"]
      291 CALL                             R18 1 1
      292 GETIMPORT                        R19 K24 [UDim.new]
      294 LOADN                            R20 0
      295 GETUPVAL                         R21 1
      296 GETTABLEKS                       R21 R21 K25 ["cornerRadius"]
      298 CALL                             R19 2 1
      299 SETTABLEKS                       R19 R18 K26 ["CornerRadius"]
      301 SETTABLEKS                       R17 R18 K27 ["Parent"]
      303 GETUPVAL                         R19 4
      304 GETTABLEKS                       R19 R19 K46 ["darkenForHeader"]
      306 MOVE                             R20 R11
      307 CALL                             R19 1 1
      308 JUMPIFNOT                        R16 ; [+11]
      309 GETIMPORT                        R22 K19 [Color3.new]
      311 LOADN                            R23 0
      312 LOADN                            R24 0
      313 LOADN                            R25 0
      314 CALL                             R22 3 1
      315 LOADK                            R23 K47 [0.5]
      316 NAMECALL                         R20 R19 K48 ["Lerp"]
      318 CALL                             R20 3 1
      319 JUMP                             ; [+1]
      320 MOVE                             R20 R19
      321 SETTABLEKS                       R20 R17 K32 ["BackgroundColor3"]
      323 FASTCALL2                        TABLE_INSERT R8 R17 ; [+5]
      325 MOVE                             R21 R8
      326 MOVE                             R22 R17
      327 GETIMPORT                        R20 K40 [table.insert]
      329 CALL                             R20 2 0
      330 SETTABLEKS                       R17 R1 K49 ["headerFrame"]
      332 GETIMPORT                        R20 K3 [Instance.new]
      334 LOADK                            R21 K50 ["TextLabel"]
      335 CALL                             R20 1 1
      336 GETIMPORT                        R21 K54 [Enum.TextXAlignment.Center]
      338 SETTABLEKS                       R21 R20 K52 ["TextXAlignment"]
      340 GETIMPORT                        R21 K56 [Enum.TextYAlignment.Center]
      342 SETTABLEKS                       R21 R20 K55 ["TextYAlignment"]
      344 LOADN                            R21 1
      345 SETTABLEKS                       R21 R20 K21 ["BackgroundTransparency"]
      347 GETTABLEKS                       R21 R1 K5 ["original"]
      349 GETTABLEKS                       R21 R21 K6 ["Name"]
      351 JUMPIFNOT                        R21 ; [+8]
      352 GETUPVAL                         R21 5
      353 GETTABLEKS                       R22 R1 K5 ["original"]
      355 GETTABLEKS                       R22 R22 K6 ["Name"]
      357 CALL                             R21 1 1
      358 SETTABLEKS                       R21 R20 K57 ["Text"]
      360 GETUPVAL                         R21 1
      361 GETTABLEKS                       R21 R21 K58 ["fontBold"]
      363 SETTABLEKS                       R21 R20 K59 ["Font"]
      365 GETUPVAL                         R21 1
      366 GETTABLEKS                       R21 R21 K60 ["textLineHeight"]
      368 SETTABLEKS                       R21 R20 K61 ["TextSize"]
      370 JUMPIFNOT                        R16 ; [+15]
      371 GETUPVAL                         R22 1
      372 GETTABLEKS                       R22 R22 K62 ["headerFontColor"]
      374 GETIMPORT                        R25 K19 [Color3.new]
      376 LOADN                            R26 0
      377 LOADN                            R27 0
      378 LOADN                            R28 0
      379 CALL                             R25 3 1
      380 LOADK                            R26 K47 [0.5]
      381 NAMECALL                         R23 R22 K48 ["Lerp"]
      383 CALL                             R23 3 1
      384 MOVE                             R21 R23
      385 JUMP                             ; [+3]
      386 GETUPVAL                         R21 1
      387 GETTABLEKS                       R21 R21 K62 ["headerFontColor"]
      389 SETTABLEKS                       R21 R20 K63 ["TextColor3"]
      391 LOADB                            R21 0
      392 SETTABLEKS                       R21 R20 K34 ["ClipsDescendants"]
      394 LOADB                            R21 0
      395 SETTABLEKS                       R21 R20 K64 ["TextScaled"]
      397 GETIMPORT                        R21 K67 [Enum.TextTruncate.AtEnd]
      399 SETTABLEKS                       R21 R20 K65 ["TextTruncate"]
      401 GETIMPORT                        R21 K10 [UDim2.new]
      403 LOADN                            R22 0
      404 GETTABLEKS                       R25 R1 K0 ["rectangle"]
      406 GETTABLEKS                       R25 R25 K14 ["width"]
      408 SUB                              R24 R25 R9
      409 GETUPVAL                         R25 1
      410 GETTABLEKS                       R25 R25 K68 ["textPadding"]
      412 SUB                              R23 R24 R25
      413 LOADN                            R24 0
      414 GETUPVAL                         R25 1
      415 GETTABLEKS                       R25 R25 K45 ["headerBarHeight"]
      417 CALL                             R21 4 1
      418 SETTABLEKS                       R21 R20 K16 ["Size"]
      420 GETIMPORT                        R21 K10 [UDim2.new]
      422 LOADN                            R22 0
      423 GETTABLEKS                       R25 R1 K0 ["rectangle"]
      425 GETTABLEKS                       R25 R25 K11 ["x"]
      427 ADD                              R24 R25 R9
      428 ADD                              R23 R24 R9
      429 LOADN                            R24 0
      430 GETTABLEKS                       R26 R1 K0 ["rectangle"]
      432 GETTABLEKS                       R26 R26 K12 ["y"]
      434 ADD                              R25 R26 R9
      435 CALL                             R21 4 1
      436 SETTABLEKS                       R21 R20 K13 ["Position"]
      438 GETUPVAL                         R22 6
      439 FASTCALL2                        TABLE_INSERT R22 R20 ; [+4]
      441 MOVE                             R23 R20
      442 GETIMPORT                        R21 K40 [table.insert]
      444 CALL                             R21 2 0
      445 JUMPIF                           R12 ; [+238]
      446 GETTABLEKS                       R23 R1 K0 ["rectangle"]
      448 GETTABLEKS                       R23 R23 K12 ["y"]
      450 ADD                              R22 R23 R9
      451 GETUPVAL                         R23 1
      452 GETTABLEKS                       R23 R23 K45 ["headerBarHeight"]
      454 ADD                              R21 R22 R23
      455 GETTABLEKS                       R24 R1 K0 ["rectangle"]
      457 GETTABLEKS                       R24 R24 K15 ["height"]
      459 SUB                              R23 R24 R9
      460 GETUPVAL                         R24 1
      461 GETTABLEKS                       R24 R24 K45 ["headerBarHeight"]
      463 SUB                              R22 R23 R24
      464 GETUPVAL                         R23 1
      465 GETTABLEKS                       R23 R23 K68 ["textPadding"]
      467 JUMPIFNOTLT                      R23 R22 ; [+216]
      469 GETIMPORT                        R23 K3 [Instance.new]
      471 LOADK                            R24 K4 ["Frame"]
      472 CALL                             R23 1 1
      473 GETIMPORT                        R24 K10 [UDim2.new]
      475 LOADN                            R25 0
      476 GETTABLEKS                       R27 R1 K0 ["rectangle"]
      478 GETTABLEKS                       R27 R27 K11 ["x"]
      480 ADD                              R26 R27 R9
      481 LOADN                            R27 0
      482 ADD                              R28 R21 R9
      483 CALL                             R24 4 1
      484 SETTABLEKS                       R24 R23 K13 ["Position"]
      486 GETIMPORT                        R24 K10 [UDim2.new]
      488 LOADN                            R25 0
      489 GETTABLEKS                       R27 R1 K0 ["rectangle"]
      491 GETTABLEKS                       R27 R27 K14 ["width"]
      493 SUB                              R26 R27 R9
      494 LOADN                            R27 0
      495 SUB                              R28 R22 R9
      496 CALL                             R24 4 1
      497 SETTABLEKS                       R24 R23 K16 ["Size"]
      499 LOADN                            R24 1
      500 SETTABLEKS                       R24 R23 K17 ["BorderSizePixel"]
      502 GETIMPORT                        R24 K19 [Color3.new]
      504 LOADN                            R25 0
      505 LOADN                            R26 0
      506 LOADN                            R27 0
      507 CALL                             R24 3 1
      508 SETTABLEKS                       R24 R23 K20 ["BorderColor3"]
      510 JUMPIFNOT                        R16 ; [+11]
      511 GETIMPORT                        R26 K19 [Color3.new]
      513 LOADN                            R27 0
      514 LOADN                            R28 0
      515 LOADN                            R29 0
      516 CALL                             R26 3 1
      517 LOADK                            R27 K47 [0.5]
      518 NAMECALL                         R24 R11 K48 ["Lerp"]
      520 CALL                             R24 3 1
      521 JUMP                             ; [+1]
      522 MOVE                             R24 R11
      523 SETTABLEKS                       R24 R23 K32 ["BackgroundColor3"]
      525 LOADB                            R24 0
      526 SETTABLEKS                       R24 R23 K34 ["ClipsDescendants"]
      528 GETIMPORT                        R24 K3 [Instance.new]
      530 LOADK                            R25 K22 ["UICorner"]
      531 CALL                             R24 1 1
      532 GETIMPORT                        R25 K24 [UDim.new]
      534 LOADN                            R26 0
      535 GETUPVAL                         R27 1
      536 GETTABLEKS                       R27 R27 K25 ["cornerRadius"]
      538 CALL                             R25 2 1
      539 SETTABLEKS                       R25 R24 K26 ["CornerRadius"]
      541 SETTABLEKS                       R23 R24 K27 ["Parent"]
      543 FASTCALL2                        TABLE_INSERT R8 R23 ; [+5]
      545 MOVE                             R26 R8
      546 MOVE                             R27 R23
      547 GETIMPORT                        R25 K40 [table.insert]
      549 CALL                             R25 2 0
      550 GETUPVAL                         R26 7
      551 LOADK                            R27 K69 ["XXX..."]
      552 GETUPVAL                         R28 1
      553 GETTABLEKS                       R28 R28 K60 ["textLineHeight"]
      555 GETUPVAL                         R29 1
      556 GETTABLEKS                       R29 R29 K58 ["fontBold"]
      558 CALL                             R26 3 1
      559 GETTABLEKS                       R26 R26 K70 ["X"]
      561 GETUPVAL                         R28 1
      562 GETTABLEKS                       R28 R28 K68 ["textPadding"]
      564 MULK                             R27 R28 K71 [2]
      565 ADD                              R25 R26 R27
      566 GETUPVAL                         R27 1
      567 GETTABLEKS                       R27 R27 K60 ["textLineHeight"]
      569 ADD                              R26 R27 R9
      570 JUMPIFNOTLT                      R26 R22 ; [+113]
      572 GETTABLEKS                       R26 R1 K0 ["rectangle"]
      574 GETTABLEKS                       R26 R26 K14 ["width"]
      576 JUMPIFNOTLT                      R25 R26 ; [+107]
      578 GETUPVAL                         R29 1
      579 GETTABLEKS                       R29 R29 K60 ["textLineHeight"]
      581 SUB                              R28 R22 R29
      582 DIVK                             R27 R28 K71 [2]
      583 ADD                              R26 R21 R27
      584 GETIMPORT                        R27 K3 [Instance.new]
      586 LOADK                            R28 K50 ["TextLabel"]
      587 CALL                             R27 1 1
      588 GETIMPORT                        R28 K54 [Enum.TextXAlignment.Center]
      590 SETTABLEKS                       R28 R27 K52 ["TextXAlignment"]
      592 GETIMPORT                        R28 K56 [Enum.TextYAlignment.Center]
      594 SETTABLEKS                       R28 R27 K55 ["TextYAlignment"]
      596 LOADN                            R28 1
      597 SETTABLEKS                       R28 R27 K21 ["BackgroundTransparency"]
      599 GETTABLEKS                       R29 R1 K73 ["formattedValue"]
      601 ORK                              R28 R29 K72 [""]
      602 SETTABLEKS                       R28 R27 K57 ["Text"]
      604 GETUPVAL                         R28 1
      605 GETTABLEKS                       R28 R28 K58 ["fontBold"]
      607 SETTABLEKS                       R28 R27 K59 ["Font"]
      609 JUMPIFNOT                        R16 ; [+15]
      610 GETUPVAL                         R29 1
      611 GETTABLEKS                       R29 R29 K74 ["fontColor"]
      613 GETIMPORT                        R32 K19 [Color3.new]
      615 LOADN                            R33 0
      616 LOADN                            R34 0
      617 LOADN                            R35 0
      618 CALL                             R32 3 1
      619 LOADK                            R33 K47 [0.5]
      620 NAMECALL                         R30 R29 K48 ["Lerp"]
      622 CALL                             R30 3 1
      623 MOVE                             R28 R30
      624 JUMP                             ; [+3]
      625 GETUPVAL                         R28 1
      626 GETTABLEKS                       R28 R28 K74 ["fontColor"]
      628 SETTABLEKS                       R28 R27 K63 ["TextColor3"]
      630 GETUPVAL                         R28 1
      631 GETTABLEKS                       R28 R28 K60 ["textLineHeight"]
      633 SETTABLEKS                       R28 R27 K61 ["TextSize"]
      635 LOADB                            R28 0
      636 SETTABLEKS                       R28 R27 K34 ["ClipsDescendants"]
      638 GETIMPORT                        R28 K67 [Enum.TextTruncate.AtEnd]
      640 SETTABLEKS                       R28 R27 K65 ["TextTruncate"]
      642 GETIMPORT                        R28 K10 [UDim2.new]
      644 LOADN                            R29 0
      645 GETTABLEKS                       R31 R1 K0 ["rectangle"]
      647 GETTABLEKS                       R31 R31 K14 ["width"]
      649 GETUPVAL                         R33 1
      650 GETTABLEKS                       R33 R33 K68 ["textPadding"]
      652 MULK                             R32 R33 K71 [2]
      653 SUB                              R30 R31 R32
      654 LOADN                            R31 0
      655 GETUPVAL                         R32 1
      656 GETTABLEKS                       R32 R32 K60 ["textLineHeight"]
      658 CALL                             R28 4 1
      659 SETTABLEKS                       R28 R27 K16 ["Size"]
      661 GETIMPORT                        R28 K10 [UDim2.new]
      663 LOADN                            R29 0
      664 GETTABLEKS                       R31 R1 K0 ["rectangle"]
      666 GETTABLEKS                       R31 R31 K11 ["x"]
      668 GETUPVAL                         R32 1
      669 GETTABLEKS                       R32 R32 K68 ["textPadding"]
      671 ADD                              R30 R31 R32
      672 LOADN                            R31 0
      673 MOVE                             R32 R26
      674 CALL                             R28 4 1
      675 SETTABLEKS                       R28 R27 K13 ["Position"]
      677 GETUPVAL                         R29 6
      678 FASTCALL2                        TABLE_INSERT R29 R27 ; [+4]
      680 MOVE                             R30 R27
      681 GETIMPORT                        R28 K40 [table.insert]
      683 CALL                             R28 2 0
      684 GETTABLEKS                       R17 R1 K33 ["Children"]
      686 JUMPIFNOT                        R17 ; [+27]
      687 GETTABLEKS                       R17 R1 K33 ["Children"]
      689 LOADNIL                          R18
      690 LOADNIL                          R19
      691 FORGPREP                         R17
      692 GETTABLEKS                       R22 R21 K44 ["showHeader"]
      694 JUMPIFNOT                        R22 ; [+9]
      695 MOVE                             R24 R21
      696 MOVE                             R25 R2
      697 MOVE                             R26 R3
      698 ADDK                             R27 R4 K7 [1]
      699 OR                               R28 R13 R5
      700 NAMECALL                         R22 R0 K75 ["renderHeaderNode"]
      702 CALL                             R22 6 0
      703 JUMP                             ; [+8]
      704 MOVE                             R24 R21
      705 MOVE                             R25 R2
      706 MOVE                             R26 R3
      707 ADDK                             R27 R4 K7 [1]
      708 OR                               R28 R13 R5
      709 NAMECALL                         R22 R0 K76 ["renderStandardNode"]
      711 CALL                             R22 6 0
      712 FORGLOOP                         R17 2 ; [-21]
      714 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R6 R1 K0 ["rectangle"]
        2 JUMPIFNOTEQKNIL                  R6 ; [+2]
        4 RETURN                           R0 0
        5 GETUPVAL                         R8 0
        6 GETTABLE                         R7 R8 R4
        7 JUMPIFNOTEQKNIL                  R7 ; [+5]
        9 NEWTABLE                         R7 0 0
       11 GETUPVAL                         R8 0
       12 SETTABLE                         R7 R8 R4
       13 MOVE                             R6 R7
       14 GETTABLEKS                       R7 R1 K1 ["Children"]
       16 JUMPIFNOT                        R7 ; [+60]
       17 GETTABLEKS                       R8 R1 K1 ["Children"]
       19 LENGTH                           R7 R8
       20 LOADN                            R8 0
       21 JUMPIFNOTLT                      R8 R7 ; [+55]
       23 GETTABLEKS                       R8 R1 K2 ["original"]
       25 GETTABLEKS                       R8 R8 K3 ["Id"]
       27 JUMPIFNOTEQKNIL                  R8 ; [+3]
       29 LOADB                            R7 0
       30 JUMP                             ; [+15]
       31 MOVE                             R8 R3
       32 LOADNIL                          R9
       33 LOADNIL                          R10
       34 FORGPREP                         R8
       35 GETTABLEKS                       R13 R1 K2 ["original"]
       37 GETTABLEKS                       R13 R13 K3 ["Id"]
       39 JUMPIFNOTEQ                      R13 R12 ; [+3]
       41 LOADB                            R7 1
       42 JUMP                             ; [+3]
       43 FORGLOOP                         R8 2 ; [-9]
       45 LOADB                            R7 0
       46 GETTABLEKS                       R8 R1 K1 ["Children"]
       48 LOADNIL                          R9
       49 LOADNIL                          R10
       50 FORGPREP                         R8
       51 LOADB                            R13 1
       52 SETTABLEKS                       R13 R12 K4 ["_inHeaderlessBranch"]
       54 GETTABLEKS                       R13 R12 K5 ["showHeader"]
       56 JUMPIFNOT                        R13 ; [+9]
       57 MOVE                             R15 R12
       58 MOVE                             R16 R2
       59 MOVE                             R17 R3
       60 ADDK                             R18 R4 K6 [1]
       61 OR                               R19 R7 R5
       62 NAMECALL                         R13 R0 K7 ["renderHeaderNode"]
       64 CALL                             R13 6 0
       65 JUMP                             ; [+8]
       66 MOVE                             R15 R12
       67 MOVE                             R16 R2
       68 MOVE                             R17 R3
       69 ADDK                             R18 R4 K6 [1]
       70 OR                               R19 R7 R5
       71 NAMECALL                         R13 R0 K8 ["renderStandardNode"]
       73 CALL                             R13 6 0
       74 FORGLOOP                         R8 2 ; [-24]
       76 RETURN                           R0 0
       77 GETIMPORT                        R7 K11 [Instance.new]
       79 LOADK                            R8 K12 ["Frame"]
       80 CALL                             R7 1 1
       81 GETTABLEKS                       R8 R1 K2 ["original"]
       83 GETTABLEKS                       R8 R8 K13 ["Name"]
       85 JUMPIFNOT                        R8 ; [+6]
       86 GETTABLEKS                       R8 R1 K2 ["original"]
       88 GETTABLEKS                       R8 R8 K13 ["Name"]
       90 SETTABLEKS                       R8 R7 K13 ["Name"]
       92 GETIMPORT                        R8 K15 [UDim2.new]
       94 LOADN                            R9 0
       95 GETTABLEKS                       R10 R1 K0 ["rectangle"]
       97 GETTABLEKS                       R10 R10 K16 ["x"]
       99 LOADN                            R11 0
      100 GETTABLEKS                       R12 R1 K0 ["rectangle"]
      102 GETTABLEKS                       R12 R12 K17 ["y"]
      104 CALL                             R8 4 1
      105 SETTABLEKS                       R8 R7 K18 ["Position"]
      107 GETIMPORT                        R8 K15 [UDim2.new]
      109 LOADN                            R9 0
      110 GETTABLEKS                       R10 R1 K0 ["rectangle"]
      112 GETTABLEKS                       R10 R10 K19 ["width"]
      114 LOADN                            R11 0
      115 GETTABLEKS                       R12 R1 K0 ["rectangle"]
      117 GETTABLEKS                       R12 R12 K20 ["height"]
      119 CALL                             R8 4 1
      120 SETTABLEKS                       R8 R7 K21 ["Size"]
      122 LOADB                            R8 0
      123 SETTABLEKS                       R8 R7 K22 ["ClipsDescendants"]
      125 LOADN                            R8 1
      126 SETTABLEKS                       R8 R7 K23 ["BackgroundTransparency"]
      128 SETTABLEKS                       R7 R1 K24 ["frame"]
      130 FASTCALL2                        TABLE_INSERT R6 R7 ; [+5]
      132 MOVE                             R9 R6
      133 MOVE                             R10 R7
      134 GETIMPORT                        R8 K27 [table.insert]
      136 CALL                             R8 2 0
      137 GETTABLEKS                       R9 R1 K2 ["original"]
      139 GETTABLEKS                       R9 R9 K3 ["Id"]
      141 JUMPIFNOTEQKNIL                  R9 ; [+3]
      143 LOADB                            R8 0
      144 JUMP                             ; [+15]
      145 MOVE                             R9 R3
      146 LOADNIL                          R10
      147 LOADNIL                          R11
      148 FORGPREP                         R9
      149 GETTABLEKS                       R14 R1 K2 ["original"]
      151 GETTABLEKS                       R14 R14 K3 ["Id"]
      153 JUMPIFNOTEQ                      R14 R13 ; [+3]
      155 LOADB                            R8 1
      156 JUMP                             ; [+3]
      157 FORGLOOP                         R9 2 ; [-9]
      159 LOADB                            R8 0
      160 MOVE                             R9 R8
      161 JUMPIFNOT                        R9 ; [+1]
      162 NOT                              R9 R5
      163 MOVE                             R10 R3
      164 JUMPIFNOT                        R10 ; [+6]
      165 LENGTH                           R11 R3
      166 LOADN                            R12 0
      167 JUMPIFLT                         R12 R11 ; [+2]
      169 LOADB                            R10 0 +1
      170 LOADB                            R10 1
      171 MOVE                             R11 R10
      172 JUMPIFNOT                        R11 ; [+3]
      173 NOT                              R11 R8
      174 JUMPIFNOT                        R11 ; [+1]
      175 NOT                              R11 R5
      176 SETTABLEKS                       R11 R1 K28 ["_dimmed"]
      178 LOADB                            R12 1
      179 SETTABLEKS                       R12 R1 K29 ["_isStandardNode"]
      181 GETUPVAL                         R14 1
      182 GETTABLEKS                       R14 R14 K31 ["textLineHeight"]
      184 MULK                             R13 R14 K30 [2]
      185 GETUPVAL                         R14 1
      186 GETTABLEKS                       R14 R14 K32 ["textLineGap"]
      188 ADD                              R12 R13 R14
      189 GETUPVAL                         R14 2
      190 LOADK                            R15 K33 ["XXX..."]
      191 GETUPVAL                         R16 1
      192 GETTABLEKS                       R16 R16 K31 ["textLineHeight"]
      194 GETUPVAL                         R17 1
      195 GETTABLEKS                       R17 R17 K34 ["fontBold"]
      197 CALL                             R14 3 1
      198 GETTABLEKS                       R14 R14 K35 ["X"]
      200 GETUPVAL                         R16 1
      201 GETTABLEKS                       R16 R16 K36 ["textPadding"]
      203 MULK                             R15 R16 K30 [2]
      204 ADD                              R13 R14 R15
      205 GETTABLEKS                       R14 R1 K0 ["rectangle"]
      207 GETTABLEKS                       R14 R14 K19 ["width"]
      209 JUMPIFNOTLT                      R13 R14 ; [+214]
      211 GETTABLEKS                       R14 R1 K0 ["rectangle"]
      213 GETTABLEKS                       R14 R14 K20 ["height"]
      215 GETUPVAL                         R16 1
      216 GETTABLEKS                       R16 R16 K37 ["cellGap"]
      218 ADD                              R15 R12 R16
      219 JUMPIFNOTLT                      R15 R14 ; [+204]
      221 GETTABLEKS                       R15 R1 K0 ["rectangle"]
      223 GETTABLEKS                       R15 R15 K17 ["y"]
      225 GETTABLEKS                       R18 R1 K0 ["rectangle"]
      227 GETTABLEKS                       R18 R18 K20 ["height"]
      229 SUB                              R17 R18 R12
      230 DIVK                             R16 R17 K30 [2]
      231 ADD                              R14 R15 R16
      232 JUMPIFNOT                        R11 ; [+15]
      233 GETUPVAL                         R16 1
      234 GETTABLEKS                       R16 R16 K38 ["fontColor"]
      236 GETIMPORT                        R19 K40 [Color3.new]
      238 LOADN                            R20 0
      239 LOADN                            R21 0
      240 LOADN                            R22 0
      241 CALL                             R19 3 1
      242 LOADK                            R20 K41 [0.5]
      243 NAMECALL                         R17 R16 K42 ["Lerp"]
      245 CALL                             R17 3 1
      246 MOVE                             R15 R17
      247 JUMP                             ; [+3]
      248 GETUPVAL                         R15 1
      249 GETTABLEKS                       R15 R15 K38 ["fontColor"]
      251 GETIMPORT                        R16 K11 [Instance.new]
      253 LOADK                            R17 K43 ["TextLabel"]
      254 CALL                             R16 1 1
      255 GETIMPORT                        R17 K47 [Enum.TextXAlignment.Center]
      257 SETTABLEKS                       R17 R16 K45 ["TextXAlignment"]
      259 GETIMPORT                        R17 K50 [Enum.TextYAlignment.Bottom]
      261 SETTABLEKS                       R17 R16 K48 ["TextYAlignment"]
      263 LOADN                            R17 1
      264 SETTABLEKS                       R17 R16 K23 ["BackgroundTransparency"]
      266 GETUPVAL                         R17 3
      267 GETTABLEKS                       R19 R1 K2 ["original"]
      269 GETTABLEKS                       R19 R19 K13 ["Name"]
      271 ORK                              R18 R19 K51 [""]
      272 CALL                             R17 1 1
      273 SETTABLEKS                       R17 R16 K52 ["Text"]
      275 GETUPVAL                         R17 1
      276 GETTABLEKS                       R17 R17 K34 ["fontBold"]
      278 SETTABLEKS                       R17 R16 K53 ["Font"]
      280 SETTABLEKS                       R15 R16 K54 ["TextColor3"]
      282 GETUPVAL                         R17 1
      283 GETTABLEKS                       R17 R17 K31 ["textLineHeight"]
      285 SETTABLEKS                       R17 R16 K55 ["TextSize"]
      287 LOADB                            R17 0
      288 SETTABLEKS                       R17 R16 K22 ["ClipsDescendants"]
      290 GETIMPORT                        R17 K58 [Enum.TextTruncate.AtEnd]
      292 SETTABLEKS                       R17 R16 K56 ["TextTruncate"]
      294 GETIMPORT                        R17 K15 [UDim2.new]
      296 LOADN                            R18 0
      297 GETTABLEKS                       R20 R1 K0 ["rectangle"]
      299 GETTABLEKS                       R20 R20 K19 ["width"]
      301 GETUPVAL                         R22 1
      302 GETTABLEKS                       R22 R22 K36 ["textPadding"]
      304 MULK                             R21 R22 K30 [2]
      305 SUB                              R19 R20 R21
      306 LOADN                            R20 0
      307 GETUPVAL                         R21 1
      308 GETTABLEKS                       R21 R21 K31 ["textLineHeight"]
      310 CALL                             R17 4 1
      311 SETTABLEKS                       R17 R16 K21 ["Size"]
      313 GETIMPORT                        R17 K15 [UDim2.new]
      315 LOADN                            R18 0
      316 GETTABLEKS                       R20 R1 K0 ["rectangle"]
      318 GETTABLEKS                       R20 R20 K16 ["x"]
      320 GETUPVAL                         R21 1
      321 GETTABLEKS                       R21 R21 K36 ["textPadding"]
      323 ADD                              R19 R20 R21
      324 LOADN                            R20 0
      325 MOVE                             R21 R14
      326 CALL                             R17 4 1
      327 SETTABLEKS                       R17 R16 K18 ["Position"]
      329 GETUPVAL                         R18 4
      330 FASTCALL2                        TABLE_INSERT R18 R16 ; [+4]
      332 MOVE                             R19 R16
      333 GETIMPORT                        R17 K27 [table.insert]
      335 CALL                             R17 2 0
      336 GETIMPORT                        R17 K11 [Instance.new]
      338 LOADK                            R18 K43 ["TextLabel"]
      339 CALL                             R17 1 1
      340 GETIMPORT                        R18 K47 [Enum.TextXAlignment.Center]
      342 SETTABLEKS                       R18 R17 K45 ["TextXAlignment"]
      344 GETIMPORT                        R18 K60 [Enum.TextYAlignment.Top]
      346 SETTABLEKS                       R18 R17 K48 ["TextYAlignment"]
      348 LOADN                            R18 1
      349 SETTABLEKS                       R18 R17 K23 ["BackgroundTransparency"]
      351 GETTABLEKS                       R19 R1 K61 ["formattedValue"]
      353 ORK                              R18 R19 K51 [""]
      354 SETTABLEKS                       R18 R17 K52 ["Text"]
      356 GETUPVAL                         R18 1
      357 GETTABLEKS                       R18 R18 K34 ["fontBold"]
      359 SETTABLEKS                       R18 R17 K53 ["Font"]
      361 SETTABLEKS                       R15 R17 K54 ["TextColor3"]
      363 GETUPVAL                         R18 1
      364 GETTABLEKS                       R18 R18 K31 ["textLineHeight"]
      366 SETTABLEKS                       R18 R17 K55 ["TextSize"]
      368 LOADB                            R18 0
      369 SETTABLEKS                       R18 R17 K22 ["ClipsDescendants"]
      371 GETIMPORT                        R18 K58 [Enum.TextTruncate.AtEnd]
      373 SETTABLEKS                       R18 R17 K56 ["TextTruncate"]
      375 GETIMPORT                        R18 K15 [UDim2.new]
      377 LOADN                            R19 0
      378 GETTABLEKS                       R21 R1 K0 ["rectangle"]
      380 GETTABLEKS                       R21 R21 K19 ["width"]
      382 GETUPVAL                         R23 1
      383 GETTABLEKS                       R23 R23 K36 ["textPadding"]
      385 MULK                             R22 R23 K30 [2]
      386 SUB                              R20 R21 R22
      387 LOADN                            R21 0
      388 GETUPVAL                         R22 1
      389 GETTABLEKS                       R22 R22 K31 ["textLineHeight"]
      391 CALL                             R18 4 1
      392 SETTABLEKS                       R18 R17 K21 ["Size"]
      394 GETIMPORT                        R18 K15 [UDim2.new]
      396 LOADN                            R19 0
      397 GETTABLEKS                       R21 R1 K0 ["rectangle"]
      399 GETTABLEKS                       R21 R21 K16 ["x"]
      401 GETUPVAL                         R22 1
      402 GETTABLEKS                       R22 R22 K36 ["textPadding"]
      404 ADD                              R20 R21 R22
      405 LOADN                            R21 0
      406 GETUPVAL                         R24 1
      407 GETTABLEKS                       R24 R24 K31 ["textLineHeight"]
      409 ADD                              R23 R14 R24
      410 GETUPVAL                         R24 1
      411 GETTABLEKS                       R24 R24 K32 ["textLineGap"]
      413 ADD                              R22 R23 R24
      414 CALL                             R18 4 1
      415 SETTABLEKS                       R18 R17 K18 ["Position"]
      417 GETUPVAL                         R19 4
      418 FASTCALL2                        TABLE_INSERT R19 R17 ; [+4]
      420 MOVE                             R20 R17
      421 GETIMPORT                        R18 K27 [table.insert]
      423 CALL                             R18 2 0
      424 JUMPIFNOT                        R9 ; [+87]
      425 GETUPVAL                         R14 5
      426 MOVE                             R15 R7
      427 GETIMPORT                        R16 K40 [Color3.new]
      429 LOADN                            R17 1
      430 LOADN                            R18 1
      431 LOADN                            R19 1
      432 CALL                             R16 3 1
      433 GETUPVAL                         R17 1
      434 GETTABLEKS                       R17 R17 K62 ["selectionOutlineThickness"]
      436 LOADN                            R18 0
      437 CALL                             R14 4 1
      438 GETUPVAL                         R16 1
      439 GETTABLEKS                       R16 R16 K63 ["selectionOutlineNudge"]
      441 ADDK                             R15 R16 K6 [1]
      442 GETIMPORT                        R16 K15 [UDim2.new]
      444 GETTABLEKS                       R17 R14 K18 ["Position"]
      446 GETTABLEKS                       R17 R17 K35 ["X"]
      448 GETTABLEKS                       R17 R17 K64 ["Scale"]
      450 GETTABLEKS                       R19 R14 K18 ["Position"]
      452 GETTABLEKS                       R19 R19 K35 ["X"]
      454 GETTABLEKS                       R19 R19 K65 ["Offset"]
      456 ADD                              R18 R19 R15
      457 GETTABLEKS                       R19 R14 K18 ["Position"]
      459 GETTABLEKS                       R19 R19 K66 ["Y"]
      461 GETTABLEKS                       R19 R19 K64 ["Scale"]
      463 GETTABLEKS                       R21 R14 K18 ["Position"]
      465 GETTABLEKS                       R21 R21 K66 ["Y"]
      467 GETTABLEKS                       R21 R21 K65 ["Offset"]
      469 ADD                              R20 R21 R15
      470 CALL                             R16 4 1
      471 SETTABLEKS                       R16 R14 K18 ["Position"]
      473 GETIMPORT                        R16 K15 [UDim2.new]
      475 GETTABLEKS                       R17 R14 K21 ["Size"]
      477 GETTABLEKS                       R17 R17 K35 ["X"]
      479 GETTABLEKS                       R17 R17 K64 ["Scale"]
      481 GETTABLEKS                       R19 R14 K21 ["Size"]
      483 GETTABLEKS                       R19 R19 K35 ["X"]
      485 GETTABLEKS                       R19 R19 K65 ["Offset"]
      487 SUB                              R18 R19 R15
      488 GETTABLEKS                       R19 R14 K21 ["Size"]
      490 GETTABLEKS                       R19 R19 K66 ["Y"]
      492 GETTABLEKS                       R19 R19 K64 ["Scale"]
      494 GETTABLEKS                       R21 R14 K21 ["Size"]
      496 GETTABLEKS                       R21 R21 K66 ["Y"]
      498 GETTABLEKS                       R21 R21 K65 ["Offset"]
      500 SUB                              R20 R21 R15
      501 CALL                             R16 4 1
      502 SETTABLEKS                       R16 R14 K21 ["Size"]
      504 GETTABLEKS                       R17 R0 K67 ["_selectionLayer"]
      506 FASTCALL2                        TABLE_INSERT R17 R14 ; [+4]
      508 MOVE                             R18 R14
      509 GETIMPORT                        R16 K27 [table.insert]
      511 CALL                             R16 2 0
      512 MOVE                             R16 R1
      513 MOVE                             R17 R6
      514 MOVE                             R18 R11
      515 NAMECALL                         R14 R0 K68 ["fillTinybox"]
      517 CALL                             R14 4 0
      518 RETURN                           R0 0

PROTO_16:
        0 LOADN                            R1 1
        1 MOVE                             R2 R0
        2 LOADK                            R3 K0 [∞]
        3 MOVE                             R6 R0
        4 SUBK                             R8 R0 K1 [2]
        5 FASTCALL2K                       MATH_MAX R8 K1 ; [+4]
        7 LOADK                            R9 K1 [2]
        8 GETIMPORT                        R7 K4 [math.max]
       10 CALL                             R7 2 1
       11 MOVE                             R4 R7
       12 LOADN                            R5 255
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
      138 ADDK                             R13 R8 K35 [0.0222222222222222]
      139 MODK                             R12 R13 K29 [1]
      140 MOVE                             R13 R9
      141 MULK                             R15 R10 K36 [1.05]
      142 FASTCALL2K                       MATH_MIN R15 K29 ; [+4]
      144 LOADK                            R16 K29 [1]
      145 GETIMPORT                        R14 K39 [math.min]
      147 CALL                             R14 2 1
      148 CALL                             R11 3 1
      149 MOVE                             R7 R11
      150 JUMPIFNOT                        R3 ; [+13]
      151 MOVE                             R9 R7
      152 GETIMPORT                        R12 K18 [Color3.new]
      154 LOADN                            R13 0
      155 LOADN                            R14 0
      156 LOADN                            R15 0
      157 CALL                             R12 3 1
      158 LOADK                            R13 K40 [0.5]
      159 NAMECALL                         R10 R9 K41 ["Lerp"]
      161 CALL                             R10 3 1
      162 MOVE                             R8 R10
      163 JUMP                             ; [+1]
      164 MOVE                             R8 R7
      165 SETTABLEKS                       R8 R4 K42 ["BackgroundColor3"]
      167 LOADB                            R8 1
      168 SETTABLEKS                       R8 R4 K43 ["ClipsDescendants"]
      170 GETTABLEKS                       R8 R1 K7 ["original"]
      172 JUMPIFNOT                        R8 ; [+4]
      173 GETTABLEKS                       R8 R1 K7 ["original"]
      175 GETTABLEKS                       R8 R8 K44 ["Boxes"]
      177 JUMPIFNOT                        R8 ; [+210]
      178 LOADN                            R9 1
      179 JUMPIFNOTLT                      R9 R8 ; [+208]
      181 GETTABLEKS                       R10 R1 K0 ["rectangle"]
      183 GETTABLEKS                       R10 R10 K1 ["width"]
      185 SUB                              R9 R10 R5
      186 GETTABLEKS                       R11 R1 K0 ["rectangle"]
      188 GETTABLEKS                       R11 R11 K2 ["height"]
      190 SUB                              R10 R11 R5
      191 FASTCALL2K                       MATH_MAX R10 K29 ; [+5]
      193 MOVE                             R13 R10
      194 LOADK                            R14 K29 [1]
      195 GETIMPORT                        R12 K46 [math.max]
      197 CALL                             R12 2 1
      198 DIV                              R11 R9 R12
      199 NEWCLOSURE                       R12 P0
      200 CAPTURE                          VAL R11
      201 LOADNIL                          R13
      202 LOADNIL                          R14
      203 JUMPIFEQKN                       R8 K47 [3] ; [+3]
      205 JUMPIFNOTEQKN                    R8 K48 [5] ; [+9]
      207 JUMPIFNOTLE                      R10 R9 ; [+4]
      209 MOVE                             R13 R8
      210 LOADN                            R14 1
      211 JUMP                             ; [+8]
      212 LOADN                            R13 1
      213 MOVE                             R14 R8
      214 JUMP                             ; [+5]
      215 MOVE                             R15 R12
      216 MOVE                             R16 R8
      217 CALL                             R15 1 2
      218 MOVE                             R13 R15
      219 MOVE                             R14 R16
      220 DIVK                             R16 R9 K49 [4]
      221 FASTCALL1                        MATH_FLOOR R16 ; [+2]
      222 GETIMPORT                        R15 K51 [math.floor]
      224 CALL                             R15 1 1
      225 DIVK                             R17 R10 K49 [4]
      226 FASTCALL1                        MATH_FLOOR R17 ; [+2]
      227 GETIMPORT                        R16 K51 [math.floor]
      229 CALL                             R16 1 1
      230 LOADN                            R17 1
      231 JUMPIFNOTLT                      R15 R17 ; [+2]
      233 LOADN                            R15 1
      234 LOADN                            R17 1
      235 JUMPIFNOTLT                      R16 R17 ; [+2]
      237 LOADN                            R16 1
      238 JUMPIFNOTLT                      R15 R13 ; [+2]
      240 MOVE                             R13 R15
      241 JUMPIFNOTLT                      R16 R14 ; [+2]
      243 MOVE                             R14 R16
      244 JUMPIFNOTLT                      R9 R10 ; [+19]
      246 FASTCALL2                        MATH_MIN R13 R14 ; [+5]
      248 MOVE                             R19 R13
      249 MOVE                             R20 R14
      250 GETIMPORT                        R18 K39 [math.min]
      252 CALL                             R18 2 1
      253 MOVE                             R17 R18
      254 FASTCALL2                        MATH_MAX R13 R14 ; [+5]
      256 MOVE                             R19 R13
      257 MOVE                             R20 R14
      258 GETIMPORT                        R18 K46 [math.max]
      260 CALL                             R18 2 1
      261 MOVE                             R14 R18
      262 MOVE                             R13 R17
      263 JUMP                             ; [+17]
      264 FASTCALL2                        MATH_MAX R13 R14 ; [+5]
      266 MOVE                             R19 R13
      267 MOVE                             R20 R14
      268 GETIMPORT                        R18 K46 [math.max]
      270 CALL                             R18 2 1
      271 MOVE                             R17 R18
      272 FASTCALL2                        MATH_MIN R13 R14 ; [+5]
      274 MOVE                             R19 R13
      275 MOVE                             R20 R14
      276 GETIMPORT                        R18 K39 [math.min]
      278 CALL                             R18 2 1
      279 MOVE                             R14 R18
      280 MOVE                             R13 R17
      281 DIV                              R17 R9 R13
      282 DIV                              R18 R10 R14
      283 LOADN                            R19 2
      284 JUMPIFNOTLE                      R19 R17 ; [+103]
      286 LOADN                            R19 2
      287 JUMPIFNOTLE                      R19 R18 ; [+100]
      289 GETIMPORT                        R21 K18 [Color3.new]
      291 LOADN                            R22 0
      292 LOADN                            R23 0
      293 LOADN                            R24 0
      294 CALL                             R21 3 1
      295 LOADK                            R22 K52 [0.35]
      296 NAMECALL                         R19 R7 K41 ["Lerp"]
      298 CALL                             R19 3 1
      299 JUMPIFNOT                        R3 ; [+12]
      300 MOVE                             R20 R19
      301 GETIMPORT                        R23 K18 [Color3.new]
      303 LOADN                            R24 0
      304 LOADN                            R25 0
      305 LOADN                            R26 0
      306 CALL                             R23 3 1
      307 LOADK                            R24 K40 [0.5]
      308 NAMECALL                         R21 R20 K41 ["Lerp"]
      310 CALL                             R21 3 1
      311 MOVE                             R19 R21
      312 LOADN                            R22 1
      313 SUBK                             R20 R13 K29 [1]
      314 LOADN                            R21 1
      315 FORNPREP                         R20
      316 GETIMPORT                        R23 K5 [Instance.new]
      318 LOADK                            R24 K6 ["Frame"]
      319 CALL                             R23 1 1
      320 GETIMPORT                        R24 K11 [UDim2.new]
      322 LOADN                            R25 0
      323 LOADN                            R26 1
      324 LOADN                            R27 1
      325 LOADN                            R28 0
      326 CALL                             R24 4 1
      327 SETTABLEKS                       R24 R23 K15 ["Size"]
      329 GETIMPORT                        R24 K11 [UDim2.new]
      331 LOADN                            R25 0
      332 MUL                              R27 R22 R17
      333 FASTCALL1                        MATH_FLOOR R27 ; [+2]
      334 GETIMPORT                        R26 K51 [math.floor]
      336 CALL                             R26 1 1
      337 LOADN                            R27 0
      338 LOADN                            R28 0
      339 CALL                             R24 4 1
      340 SETTABLEKS                       R24 R23 K14 ["Position"]
      342 SETTABLEKS                       R19 R23 K42 ["BackgroundColor3"]
      344 LOADN                            R24 0
      345 SETTABLEKS                       R24 R23 K16 ["BorderSizePixel"]
      347 SETTABLEKS                       R4 R23 K25 ["Parent"]
      349 FORNLOOP                         R20
      350 LOADN                            R22 1
      351 SUBK                             R20 R14 K29 [1]
      352 LOADN                            R21 1
      353 FORNPREP                         R20
      354 GETIMPORT                        R23 K5 [Instance.new]
      356 LOADK                            R24 K6 ["Frame"]
      357 CALL                             R23 1 1
      358 GETIMPORT                        R24 K11 [UDim2.new]
      360 LOADN                            R25 1
      361 LOADN                            R26 0
      362 LOADN                            R27 0
      363 LOADN                            R28 1
      364 CALL                             R24 4 1
      365 SETTABLEKS                       R24 R23 K15 ["Size"]
      367 GETIMPORT                        R24 K11 [UDim2.new]
      369 LOADN                            R25 0
      370 LOADN                            R26 0
      371 LOADN                            R27 0
      372 MUL                              R29 R22 R18
      373 FASTCALL1                        MATH_FLOOR R29 ; [+2]
      374 GETIMPORT                        R28 K51 [math.floor]
      376 CALL                             R28 1 1
      377 CALL                             R24 4 1
      378 SETTABLEKS                       R24 R23 K14 ["Position"]
      380 SETTABLEKS                       R19 R23 K42 ["BackgroundColor3"]
      382 LOADN                            R24 0
      383 SETTABLEKS                       R24 R23 K16 ["BorderSizePixel"]
      385 SETTABLEKS                       R4 R23 K25 ["Parent"]
      387 FORNLOOP                         R20
      388 FASTCALL2                        TABLE_INSERT R2 R4 ; [+5]
      390 MOVE                             R10 R2
      391 MOVE                             R11 R4
      392 GETIMPORT                        R9 K55 [table.insert]
      394 CALL                             R9 2 0
      395 SETTABLEKS                       R4 R1 K56 ["frame"]
      397 RETURN                           R0 0

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
       41 DUPTABLE                         R9 K35 [{"cellGap", "cornerRadius", "headerBarHeight", "textPadding", "textLineHeight", "textLineGap", "selectionOutlineThickness", "selectionOutlineNudge", "edgePadding", "textLabelHeight", "fontSize", "font", "fontBold", "fontColor", "headerFontColor", "headerColor", "minWidth", "minHeight"}]
       42 LOADN                            R10 2
       43 SETTABLEKS                       R10 R9 K17 ["cellGap"]
       45 LOADN                            R10 2
       46 SETTABLEKS                       R10 R9 K18 ["cornerRadius"]
       48 LOADN                            R10 22
       49 SETTABLEKS                       R10 R9 K19 ["headerBarHeight"]
       51 LOADN                            R10 4
       52 SETTABLEKS                       R10 R9 K20 ["textPadding"]
       54 LOADN                            R10 16
       55 SETTABLEKS                       R10 R9 K21 ["textLineHeight"]
       57 LOADN                            R10 2
       58 SETTABLEKS                       R10 R9 K22 ["textLineGap"]
       60 LOADN                            R10 2
       61 SETTABLEKS                       R10 R9 K23 ["selectionOutlineThickness"]
       63 LOADN                            R10 2
       64 SETTABLEKS                       R10 R9 K24 ["selectionOutlineNudge"]
       66 LOADN                            R10 1
       67 SETTABLEKS                       R10 R9 K25 ["edgePadding"]
       69 LOADN                            R10 11
       70 SETTABLEKS                       R10 R9 K26 ["textLabelHeight"]
       72 LOADN                            R10 11
       73 SETTABLEKS                       R10 R9 K27 ["fontSize"]
       75 GETIMPORT                        R10 K39 [Enum.Font.SourceSans]
       77 SETTABLEKS                       R10 R9 K28 ["font"]
       79 GETIMPORT                        R10 K41 [Enum.Font.SourceSansBold]
       81 SETTABLEKS                       R10 R9 K29 ["fontBold"]
       83 GETIMPORT                        R10 K2 [Color3.new]
       85 LOADN                            R11 1
       86 LOADN                            R12 1
       87 LOADN                            R13 1
       88 CALL                             R10 3 1
       89 SETTABLEKS                       R10 R9 K30 ["fontColor"]
       91 GETIMPORT                        R10 K2 [Color3.new]
       93 LOADN                            R11 1
       94 LOADN                            R12 1
       95 LOADN                            R13 1
       96 CALL                             R10 3 1
       97 SETTABLEKS                       R10 R9 K31 ["headerFontColor"]
       99 GETIMPORT                        R10 K2 [Color3.new]
      101 LOADK                            R11 K42 [0.152941176470588]
      102 LOADK                            R12 K43 [0.16078431372549]
      103 LOADK                            R13 K44 [0.180392156862745]
      104 CALL                             R10 3 1
      105 SETTABLEKS                       R10 R9 K32 ["headerColor"]
      107 LOADN                            R10 20
      108 SETTABLEKS                       R10 R9 K33 ["minWidth"]
      110 LOADN                            R10 20
      111 SETTABLEKS                       R10 R9 K34 ["minHeight"]
      113 NEWTABLE                         R10 0 0
      115 NEWTABLE                         R11 0 0
      117 NEWTABLE                         R12 0 0
      119 SETTABLEKS                       R12 R0 K45 ["_selectionLayer"]
      121 LOADNIL                          R12
      122 SETTABLEKS                       R12 R0 K46 ["_hoverOutline"]
      124 NEWCLOSURE                       R12 P2
      125 CAPTURE                          REF R10
      126 GETIMPORT                        R13 K9 [require]
      128 GETTABLEKS                       R14 R3 K10 ["Src"]
      130 GETTABLEKS                       R14 R14 K47 ["Resources"]
      132 GETTABLEKS                       R14 R14 K48 ["ColorRamps"]
      134 CALL                             R13 1 1
      135 GETTABLEKS                       R14 R13 K49 ["Default"]
      137 MOVE                             R15 R14
      138 DUPCLOSURE                       R16 K50 [PROTO_3]
      139 NEWCLOSURE                       R17 P4
      140 CAPTURE                          REF R15
      141 GETIMPORT                        R18 K9 [require]
      143 GETTABLEKS                       R19 R3 K10 ["Src"]
      145 GETTABLEKS                       R19 R19 K14 ["Util"]
      147 GETTABLEKS                       R19 R19 K51 ["abridgePath"]
      149 CALL                             R18 1 1
      150 DUPCLOSURE                       R19 K52 [PROTO_5]
      151 CAPTURE                          VAL R19
      152 DUPCLOSURE                       R20 K53 [PROTO_7]
      153 NEWCLOSURE                       R21 P7
      154 CAPTURE                          VAL R20
      155 CAPTURE                          REF R15
      156 NEWCLOSURE                       R22 P8
      157 CAPTURE                          REF R7
      158 CAPTURE                          REF R8
      159 DUPCLOSURE                       R23 K54 [PROTO_12]
      160 DUPCLOSURE                       R24 K55 [PROTO_13]
      161 NEWCLOSURE                       R25 P11
      162 CAPTURE                          REF R10
      163 CAPTURE                          VAL R9
      164 CAPTURE                          REF R15
      165 CAPTURE                          VAL R23
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R18
      168 CAPTURE                          REF R11
      169 CAPTURE                          VAL R22
      170 SETTABLEKS                       R25 R0 K56 ["renderHeaderNode"]
      172 NEWCLOSURE                       R25 P12
      173 CAPTURE                          REF R10
      174 CAPTURE                          VAL R9
      175 CAPTURE                          VAL R22
      176 CAPTURE                          VAL R18
      177 CAPTURE                          REF R11
      178 CAPTURE                          VAL R23
      179 SETTABLEKS                       R25 R0 K57 ["renderStandardNode"]
      181 NEWCLOSURE                       R25 P13
      182 CAPTURE                          VAL R9
      183 CAPTURE                          REF R15
      184 SETTABLEKS                       R25 R0 K58 ["fillTinybox"]
      186 DUPCLOSURE                       R25 K59 [PROTO_18]
      187 CAPTURE                          VAL R5
      188 CAPTURE                          VAL R25
      189 NEWCLOSURE                       R26 P15
      190 CAPTURE                          REF R15
      191 CAPTURE                          VAL R14
      192 CAPTURE                          VAL R25
      193 CAPTURE                          VAL R20
      194 CAPTURE                          REF R11
      195 CAPTURE                          REF R10
      196 SETTABLEKS                       R26 R0 K60 ["renderTreemap"]
      198 DUPCLOSURE                       R26 K61 [PROTO_20]
      199 SETTABLEKS                       R26 R0 K62 ["highlightGlowNode"]
      201 DUPCLOSURE                       R26 K63 [PROTO_21]
      202 CAPTURE                          VAL R1
      203 CAPTURE                          VAL R23
      204 SETTABLEKS                       R26 R0 K64 ["animateTreemap"]
      206 SETTABLEKS                       R9 R0 K65 ["settings"]
      208 DUPTABLE                         R26 K69 [{"formatNodeValue", "abridgePath", "collectRenderableNodes", "assignColorsByRank"}]
      209 SETTABLEKS                       R6 R26 K66 ["formatNodeValue"]
      211 SETTABLEKS                       R18 R26 K51 ["abridgePath"]
      213 SETTABLEKS                       R19 R26 K67 ["collectRenderableNodes"]
      215 SETTABLEKS                       R21 R26 K68 ["assignColorsByRank"]
      217 SETTABLEKS                       R26 R0 K70 ["_testOnly"]
      219 CLOSEUPVALS                      R7
      220 RETURN                           R0 1
