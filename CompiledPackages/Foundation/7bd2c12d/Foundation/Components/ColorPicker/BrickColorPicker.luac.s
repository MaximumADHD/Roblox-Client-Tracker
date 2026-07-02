PROTO_0:
        0 MULK                             R1 R0 K0 [1.73205080756888]
        1 MULK                             R2 R0 K1 [2]
        2 RETURN                           R1 2

PROTO_1:
        0 LOADN                            R3 3
        1 LOADN                            R1 20
        2 LOADN                            R2 2
        3 FORNPREP                         R1
        4 MUL                              R5 R3 R3
        5 DIVK                             R8 R3 K0 [2]
        6 FASTCALL1                        MATH_FLOOR R8 ; [+2]
        7 GETIMPORT                        R7 K3 [math.floor]
        9 CALL                             R7 1 1
       10 DIVK                             R10 R3 K0 [2]
       11 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       12 GETIMPORT                        R9 K3 [math.floor]
       14 CALL                             R9 1 1
       15 ADDK                             R8 R9 K4 [1]
       16 MUL                              R6 R7 R8
       17 SUB                              R4 R5 R6
       18 JUMPIFNOTLT                      R0 R4 ; [+3]
       20 SUBK                             R5 R3 K0 [2]
       21 RETURN                           R5 1
       22 FORNLOOP                         R1
       23 LOADN                            R1 7
       24 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MAIN"]
        3 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BOTTOM"]
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 LENGTH                           R1 R2
        3 CALL                             R0 1 1
        4 LOADN                            R1 3
        5 JUMPIFNOTLT                      R0 R1 ; [+7]
        7 GETIMPORT                        R1 K1 [warn]
        9 LOADK                            R2 K2 ["BrickColorPicker: Calculated grid radius is too small, falling back to minimum"]
       10 CALL                             R1 1 0
       11 LOADN                            R1 3
       12 RETURN                           R1 1
       13 RETURN                           R0 1

PROTO_5:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 1
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R5 2
        6 ADD                              R3 R4 R5
        7 GETUPVAL                         R4 1
        8 LOADN                            R7 0
        9 SUBK                             R5 R2 K0 [1]
       10 LOADN                            R6 1
       11 FORNPREP                         R5
       12 LOADN                            R10 0
       13 LOADN                            R13 2
       14 MUL                              R12 R13 R2
       15 SUBK                             R11 R12 K0 [1]
       16 SUBK                             R8 R11 K0 [1]
       17 LOADN                            R9 1
       18 FORNPREP                         R8
       19 DIVK                             R14 R2 K1 [2]
       20 FASTCALL1                        MATH_FLOOR R14 ; [+2]
       21 GETIMPORT                        R13 K4 [math.floor]
       23 CALL                             R13 1 1
       24 SUB                              R12 R13 R7
       25 FASTCALL1                        MATH_ABS R12 ; [+2]
       26 GETIMPORT                        R11 K6 [math.abs]
       28 CALL                             R11 1 1
       29 LOADN                            R18 2
       30 MUL                              R17 R18 R2
       31 SUBK                             R16 R17 K0 [1]
       32 DIVK                             R15 R16 K1 [2]
       33 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       34 GETIMPORT                        R14 K4 [math.floor]
       36 CALL                             R14 1 1
       37 SUB                              R13 R14 R10
       38 FASTCALL1                        MATH_ABS R13 ; [+2]
       39 GETIMPORT                        R12 K6 [math.abs]
       41 CALL                             R12 1 1
       42 ADD                              R13 R11 R12
       43 JUMPIFNOTLT                      R13 R2 ; [+33]
       45 MODK                             R13 R7 K1 [2]
       46 MODK                             R14 R10 K1 [2]
       47 JUMPIFNOTEQ                      R13 R14 ; [+29]
       49 GETUPVAL                         R14 3
       50 LENGTH                           R13 R14
       51 JUMPIFNOTLE                      R1 R13 ; [+25]
       53 MUL                              R13 R4 R10
       54 MULK                             R15 R3 K7 [1.5]
       55 MUL                              R14 R15 R7
       56 FASTCALL1                        MATH_ROUND R14 ; [+3]
       57 MOVE                             R16 R14
       58 GETIMPORT                        R15 K9 [math.round]
       60 CALL                             R15 1 1
       61 DUPTABLE                         R18 K13 [{"brickColor", "x", "y"}]
       62 GETUPVAL                         R20 3
       63 GETTABLE                         R19 R20 R1
       64 SETTABLEKS                       R19 R18 K10 ["brickColor"]
       66 SETTABLEKS                       R13 R18 K11 ["x"]
       68 SETTABLEKS                       R15 R18 K12 ["y"]
       70 FASTCALL2                        TABLE_INSERT R0 R18 ; [+4]
       72 MOVE                             R17 R0
       73 GETIMPORT                        R16 K16 [table.insert]
       75 CALL                             R16 2 0
       76 ADDK                             R1 R1 K0 [1]
       77 FORNLOOP                         R8
       78 FORNLOOP                         R5
       79 GETUPVAL                         R6 4
       80 LENGTH                           R5 R6
       81 LOADN                            R6 0
       82 JUMPIFNOTLT                      R6 R5 ; [+35]
       84 MULK                             R7 R3 K7 [1.5]
       85 MUL                              R6 R7 R2
       86 GETUPVAL                         R7 5
       87 ADD                              R5 R6 R7
       88 FASTCALL1                        MATH_ROUND R5 ; [+3]
       89 MOVE                             R7 R5
       90 GETIMPORT                        R6 K9 [math.round]
       92 CALL                             R6 1 1
       93 GETIMPORT                        R7 K18 [ipairs]
       95 GETUPVAL                         R8 4
       96 CALL                             R7 1 3
       97 FORGPREP_INEXT                   R7
       98 LOADN                            R13 1
       99 SUBK                             R15 R10 K0 [1]
      100 MULK                             R14 R15 K1 [2]
      101 ADD                              R12 R13 R14
      102 MUL                              R13 R4 R12
      103 DUPTABLE                         R16 K13 [{"brickColor", "x", "y"}]
      104 SETTABLEKS                       R11 R16 K10 ["brickColor"]
      106 SETTABLEKS                       R13 R16 K11 ["x"]
      108 SETTABLEKS                       R6 R16 K12 ["y"]
      110 FASTCALL2                        TABLE_INSERT R0 R16 ; [+4]
      112 MOVE                             R15 R0
      113 GETIMPORT                        R14 K16 [table.insert]
      115 CALL                             R14 2 0
      116 FORGLOOP                         R7 2 [inext] ; [-19]
      118 LOADK                            R5 K19 [∞]
      119 LOADK                            R6 K20 [-∞]
      120 LOADK                            R7 K19 [∞]
      121 LOADK                            R8 K20 [-∞]
      122 MOVE                             R9 R0
      123 LOADNIL                          R10
      124 LOADNIL                          R11
      125 FORGPREP                         R9
      126 GETTABLEKS                       R17 R13 K11 ["x"]
      128 GETUPVAL                         R19 6
      129 DIVK                             R18 R19 K1 [2]
      130 SUB                              R16 R17 R18
      131 FASTCALL2                        MATH_MIN R5 R16 ; [+4]
      133 MOVE                             R15 R5
      134 GETIMPORT                        R14 K22 [math.min]
      136 CALL                             R14 2 1
      137 MOVE                             R5 R14
      138 GETTABLEKS                       R17 R13 K11 ["x"]
      140 GETUPVAL                         R19 6
      141 DIVK                             R18 R19 K1 [2]
      142 ADD                              R16 R17 R18
      143 FASTCALL2                        MATH_MAX R6 R16 ; [+4]
      145 MOVE                             R15 R6
      146 GETIMPORT                        R14 K24 [math.max]
      148 CALL                             R14 2 1
      149 MOVE                             R6 R14
      150 GETTABLEKS                       R17 R13 K12 ["y"]
      152 GETUPVAL                         R19 7
      153 DIVK                             R18 R19 K1 [2]
      154 SUB                              R16 R17 R18
      155 FASTCALL2                        MATH_MIN R7 R16 ; [+4]
      157 MOVE                             R15 R7
      158 GETIMPORT                        R14 K22 [math.min]
      160 CALL                             R14 2 1
      161 MOVE                             R7 R14
      162 GETTABLEKS                       R17 R13 K12 ["y"]
      164 GETUPVAL                         R19 7
      165 DIVK                             R18 R19 K1 [2]
      166 ADD                              R16 R17 R18
      167 FASTCALL2                        MATH_MAX R8 R16 ; [+4]
      169 MOVE                             R15 R8
      170 GETIMPORT                        R14 K24 [math.max]
      172 CALL                             R14 2 1
      173 MOVE                             R8 R14
      174 FORGLOOP                         R9 2 ; [-49]
      176 DUPTABLE                         R9 K28 [{"width", "height", "offset"}]
      177 SUB                              R10 R6 R5
      178 SETTABLEKS                       R10 R9 K25 ["width"]
      180 SUB                              R10 R8 R7
      181 SETTABLEKS                       R10 R9 K26 ["height"]
      183 GETIMPORT                        R10 K31 [Vector2.new]
      185 MOVE                             R11 R5
      186 MOVE                             R12 R7
      187 CALL                             R10 2 1
      188 SETTABLEKS                       R10 R9 K27 ["offset"]
      190 MOVE                             R10 R0
      191 MOVE                             R11 R9
      192 RETURN                           R10 2

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+76]
        6 LOADNIL                          R2
        7 LOADK                            R3 K4 [∞]
        8 GETTABLEKS                       R5 R1 K5 ["Position"]
       10 GETTABLEKS                       R5 R5 K6 ["X"]
       12 GETTABLEKS                       R6 R0 K7 ["AbsolutePosition"]
       14 GETTABLEKS                       R6 R6 K6 ["X"]
       16 SUB                              R4 R5 R6
       17 GETTABLEKS                       R6 R1 K5 ["Position"]
       19 GETTABLEKS                       R6 R6 K8 ["Y"]
       21 GETTABLEKS                       R7 R0 K7 ["AbsolutePosition"]
       23 GETTABLEKS                       R7 R7 K8 ["Y"]
       25 SUB                              R5 R6 R7
       26 GETUPVAL                         R7 0
       27 GETTABLEKS                       R7 R7 K9 ["offset"]
       29 GETTABLEKS                       R7 R7 K6 ["X"]
       31 ADD                              R6 R4 R7
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K9 ["offset"]
       35 GETTABLEKS                       R8 R8 K8 ["Y"]
       37 ADD                              R7 R5 R8
       38 GETUPVAL                         R8 1
       39 LOADNIL                          R9
       40 LOADNIL                          R10
       41 FORGPREP                         R8
       42 GETTABLEKS                       R16 R12 K11 ["x"]
       44 SUB                              R15 R6 R16
       45 POWK                             R14 R15 K10 [2]
       46 GETTABLEKS                       R17 R12 K12 ["y"]
       48 SUB                              R16 R7 R17
       49 POWK                             R15 R16 K10 [2]
       50 ADD                              R13 R14 R15
       51 JUMPIFNOTLT                      R13 R3 ; [+3]
       53 MOVE                             R3 R13
       54 MOVE                             R2 R12
       55 FORGLOOP                         R8 2 ; [-14]
       57 JUMPIFNOT                        R2 ; [+23]
       58 GETUPVAL                         R9 2
       59 GETUPVAL                         R10 2
       60 MUL                              R8 R9 R10
       61 JUMPIFNOTLT                      R3 R8 ; [+19]
       63 GETUPVAL                         R8 3
       64 GETTABLEKS                       R8 R8 K13 ["onBrickColorChanged"]
       66 GETTABLEKS                       R9 R2 K14 ["brickColor"]
       68 CALL                             R8 1 0
       69 GETUPVAL                         R8 3
       70 GETTABLEKS                       R8 R8 K15 ["onColorChanged"]
       72 JUMPIFNOT                        R8 ; [+8]
       73 GETUPVAL                         R8 3
       74 GETTABLEKS                       R8 R8 K15 ["onColorChanged"]
       76 GETTABLEKS                       R9 R2 K14 ["brickColor"]
       78 GETTABLEKS                       R9 R9 K16 ["Color"]
       80 CALL                             R8 1 0
       81 RETURN                           R0 0

PROTO_7:
        0 GETIMPORT                        R2 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R4 R0 K3 ["x"]
        4 GETUPVAL                         R5 0
        5 GETTABLEKS                       R5 R5 K4 ["offset"]
        7 GETTABLEKS                       R5 R5 K5 ["X"]
        9 SUB                              R3 R4 R5
       10 GETTABLEKS                       R5 R0 K6 ["y"]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R6 R6 K4 ["offset"]
       15 GETTABLEKS                       R6 R6 K7 ["Y"]
       17 SUB                              R4 R5 R6
       18 CALL                             R2 2 1
       19 NEWTABLE                         R3 2 0
       21 JUMPIFNOT                        R1 ; [+37]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K8 ["createElement"]
       25 GETUPVAL                         R5 2
       26 DUPTABLE                         R6 K17 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"] = "component_assets/hexagon_24", ["imageStyle"], ["ZIndex"] = 1}]
       27 GETIMPORT                        R7 K2 [UDim2.fromOffset]
       29 GETUPVAL                         R9 3
       30 GETUPVAL                         R10 4
       31 ADD                              R8 R9 R10
       32 GETUPVAL                         R10 5
       33 GETUPVAL                         R11 4
       34 ADD                              R9 R10 R11
       35 CALL                             R7 2 1
       36 SETTABLEKS                       R7 R6 K9 ["Size"]
       38 SETTABLEKS                       R2 R6 K10 ["Position"]
       40 GETIMPORT                        R7 K20 [Vector2.new]
       42 LOADK                            R8 K21 [0.5]
       43 LOADK                            R9 K21 [0.5]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K11 ["AnchorPoint"]
       47 GETUPVAL                         R7 6
       48 GETTABLEKS                       R7 R7 K22 ["Color"]
       50 GETTABLEKS                       R7 R7 K23 ["ActionEmphasis"]
       52 GETTABLEKS                       R7 R7 K24 ["Background"]
       54 SETTABLEKS                       R7 R6 K14 ["imageStyle"]
       56 CALL                             R4 2 1
       57 SETTABLEKS                       R4 R3 K25 ["outline"]
       59 GETUPVAL                         R4 1
       60 GETTABLEKS                       R4 R4 K8 ["createElement"]
       62 GETUPVAL                         R5 2
       63 DUPTABLE                         R6 K27 [{["Size"], ["Position"], ["AnchorPoint"], ["Image"] = "component_assets/hexagon_24", ["imageStyle"], ["ZIndex"] = 2}]
       64 GETIMPORT                        R7 K2 [UDim2.fromOffset]
       66 GETUPVAL                         R8 3
       67 GETUPVAL                         R9 5
       68 CALL                             R7 2 1
       69 SETTABLEKS                       R7 R6 K9 ["Size"]
       71 SETTABLEKS                       R2 R6 K10 ["Position"]
       73 GETIMPORT                        R7 K20 [Vector2.new]
       75 LOADK                            R8 K21 [0.5]
       76 LOADK                            R9 K21 [0.5]
       77 CALL                             R7 2 1
       78 SETTABLEKS                       R7 R6 K11 ["AnchorPoint"]
       80 DUPTABLE                         R7 K29 [{"Color3"}]
       81 GETTABLEKS                       R8 R0 K30 ["brickColor"]
       83 GETTABLEKS                       R8 R8 K22 ["Color"]
       85 SETTABLEKS                       R8 R7 K28 ["Color3"]
       87 SETTABLEKS                       R7 R6 K14 ["imageStyle"]
       89 CALL                             R4 2 1
       90 SETTABLEKS                       R4 R3 K31 ["hexagon"]
       92 RETURN                           R3 1

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["selectedColor"]
        5 JUMPIFNOT                        R2 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["selectedColor"]
        9 NAMECALL                         R1 R1 K1 ["getValue"]
       11 CALL                             R1 1 1
       12 JUMPIF                           R1 ; [+1]
       13 LOADNIL                          R1
       14 GETUPVAL                         R2 1
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 FORGPREP                         R2
       18 LOADB                            R7 0
       19 JUMPIFEQKNIL                     R1 ; [+9]
       21 GETTABLEKS                       R8 R6 K2 ["brickColor"]
       23 GETTABLEKS                       R8 R8 K3 ["Color"]
       25 JUMPIFEQ                         R1 R8 ; [+2]
       27 LOADB                            R7 0 +1
       28 LOADB                            R7 1
       29 GETUPVAL                         R8 2
       30 MOVE                             R9 R6
       31 MOVE                             R10 R7
       32 CALL                             R8 2 1
       33 MOVE                             R9 R8
       34 LOADNIL                          R10
       35 LOADNIL                          R11
       36 FORGPREP                         R9
       37 LOADK                            R15 K4 ["%*_%*"]
       38 MOVE                             R17 R12
       39 MOVE                             R18 R5
       40 NAMECALL                         R15 R15 K5 ["format"]
       42 CALL                             R15 3 1
       43 MOVE                             R14 R15
       44 SETTABLE                         R13 R0 R14
       45 FORGLOOP                         R9 2 ; [-9]
       47 FORGLOOP                         R2 2 ; [-30]
       49 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Size"]
        4 GETTABLEKS                       R2 R2 K1 ["Size_350"]
        6 GETTABLEKS                       R3 R1 K0 ["Size"]
        8 GETTABLEKS                       R3 R3 K2 ["Size_50"]
       10 GETTABLEKS                       R4 R1 K0 ["Size"]
       12 GETTABLEKS                       R4 R4 K3 ["Size_100"]
       14 GETTABLEKS                       R5 R1 K0 ["Size"]
       16 GETTABLEKS                       R5 R5 K4 ["Size_200"]
       18 GETUPVAL                         R6 1
       19 GETTABLEKS                       R6 R6 K5 ["useMemo"]
       21 DUPCLOSURE                       R7 K6 [PROTO_2]
       22 CAPTURE                          UPVAL U2
       23 NEWTABLE                         R8 0 0
       25 CALL                             R6 2 1
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       29 DUPCLOSURE                       R8 K7 [PROTO_3]
       30 CAPTURE                          UPVAL U2
       31 NEWTABLE                         R9 0 0
       33 CALL                             R7 2 1
       34 MULK                             R8 R2 K8 [1.73205080756888]
       35 MULK                             R9 R2 K9 [2]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K5 ["useMemo"]
       39 NEWCLOSURE                       R11 P2
       40 CAPTURE                          UPVAL U3
       41 CAPTURE                          VAL R6
       42 NEWTABLE                         R12 0 0
       44 CALL                             R10 2 1
       45 GETUPVAL                         R11 1
       46 GETTABLEKS                       R11 R11 K5 ["useMemo"]
       48 NEWCLOSURE                       R12 P3
       49 CAPTURE                          VAL R10
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R8
       56 CAPTURE                          VAL R9
       57 NEWTABLE                         R13 0 1
       59 MOVE                             R14 R10
       60 SETLIST                          R13 R14 1 [1]
       62 CALL                             R11 2 2
       63 GETUPVAL                         R13 1
       64 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       66 NEWCLOSURE                       R14 P4
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R0
       71 NEWTABLE                         R15 0 2
       73 MOVE                             R16 R11
       74 MOVE                             R17 R12
       75 SETLIST                          R15 R16 2 [1]
       77 CALL                             R13 2 1
       78 GETUPVAL                         R14 1
       79 GETTABLEKS                       R14 R14 K10 ["useCallback"]
       81 NEWCLOSURE                       R15 P5
       82 CAPTURE                          VAL R12
       83 CAPTURE                          UPVAL U1
       84 CAPTURE                          UPVAL U4
       85 CAPTURE                          VAL R8
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R1
       89 NEWTABLE                         R16 0 4
       91 GETTABLEKS                       R17 R12 K11 ["offset"]
       93 GETTABLEKS                       R17 R17 K12 ["X"]
       95 GETTABLEKS                       R18 R12 K11 ["offset"]
       97 GETTABLEKS                       R18 R18 K13 ["Y"]
       99 MOVE                             R19 R8
      100 MOVE                             R20 R9
      101 SETLIST                          R16 R17 4 [1]
      103 CALL                             R14 2 1
      104 GETUPVAL                         R15 1
      105 GETTABLEKS                       R15 R15 K10 ["useCallback"]
      107 NEWCLOSURE                       R16 P6
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R14
      111 NEWTABLE                         R17 0 1
      113 GETTABLEKS                       R18 R0 K14 ["selectedColor"]
      115 SETLIST                          R17 R18 1 [1]
      117 CALL                             R15 2 1
      118 GETUPVAL                         R16 1
      119 GETTABLEKS                       R16 R16 K15 ["createElement"]
      121 GETUPVAL                         R17 5
      122 GETUPVAL                         R18 6
      123 MOVE                             R19 R0
      124 DUPTABLE                         R20 K16 [{"Size"}]
      125 GETIMPORT                        R21 K19 [UDim2.fromOffset]
      127 GETTABLEKS                       R22 R12 K20 ["width"]
      129 GETTABLEKS                       R23 R12 K21 ["height"]
      131 CALL                             R21 2 1
      132 SETTABLEKS                       R21 R20 K0 ["Size"]
      134 CALL                             R18 2 1
      135 DUPTABLE                         R19 K23 [{"ColorGrid"}]
      136 GETUPVAL                         R20 1
      137 GETTABLEKS                       R20 R20 K15 ["createElement"]
      139 GETUPVAL                         R21 5
      140 DUPTABLE                         R22 K28 [{["tag"] = "size-full position-top-left anchor-top-left", ["onActivated"], ["stateLayer"]}]
      141 SETTABLEKS                       R13 R22 K26 ["onActivated"]
      143 DUPTABLE                         R23 K30 [{"affordance"}]
      144 GETUPVAL                         R24 7
      145 GETTABLEKS                       R24 R24 K31 ["None"]
      147 SETTABLEKS                       R24 R23 K29 ["affordance"]
      149 SETTABLEKS                       R23 R22 K27 ["stateLayer"]
      151 MOVE                             R23 R15
      152 CALL                             R23 0 1
      153 CALL                             R20 3 1
      154 SETTABLEKS                       R20 R19 K22 ["ColorGrid"]
      156 CALL                             R16 3 -1
      157 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Image"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Enums"]
       25 GETTABLEKS                       R5 R5 K11 ["StateLayerAffordance"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["Types"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K8 ["Components"]
       46 GETTABLEKS                       R8 R8 K14 ["ColorPicker"]
       48 GETTABLEKS                       R8 R8 K15 ["BrickColorConstants"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K16 ["Providers"]
       55 GETTABLEKS                       R9 R9 K17 ["Style"]
       57 GETTABLEKS                       R9 R9 K18 ["useTokens"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETTABLEKS                       R10 R0 K19 ["Utility"]
       64 GETTABLEKS                       R10 R10 K20 ["withCommonProps"]
       66 CALL                             R9 1 1
       67 DUPCLOSURE                       R10 K21 [PROTO_0]
       68 DUPCLOSURE                       R11 K22 [PROTO_1]
       69 DUPCLOSURE                       R12 K23 [PROTO_9]
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R11
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R4
       78 RETURN                           R12 1
