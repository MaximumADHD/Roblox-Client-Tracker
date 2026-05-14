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
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R2 R2 K1 ["X"]
        6 FASTCALL1                        MATH_ROUND R2 ; [+2]
        7 GETIMPORT                        R1 K4 [math.round]
        9 CALL                             R1 1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Disconnect"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["current"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R2 R0 K1 ["AbsoluteSize"]
        7 GETTABLEKS                       R2 R2 K2 ["X"]
        9 FASTCALL1                        MATH_ROUND R2 ; [+2]
       10 GETIMPORT                        R1 K5 [math.round]
       12 CALL                             R1 1 1
       13 GETUPVAL                         R2 1
       14 JUMPIFEQ                         R1 R2 ; [+4]
       16 GETUPVAL                         R2 2
       17 MOVE                             R3 R1
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 3
       20 GETTABLEKS                       R2 R2 K6 ["Connect"]
       22 LOADK                            R5 K1 ["AbsoluteSize"]
       23 NAMECALL                         R3 R0 K7 ["GetPropertyChangedSignal"]
       25 CALL                             R3 2 1
       26 NEWCLOSURE                       R4 P0
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R0
       29 CALL                             R2 2 1
       30 NEWCLOSURE                       R3 P1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R2
       33 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 LOADN                            R2 0
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["useRef"]
        8 LOADNIL                          R4
        9 CALL                             R3 1 1
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["useEffect"]
       13 NEWCLOSURE                       R5 P0
       14 CAPTURE                          VAL R3
       15 CAPTURE                          VAL R1
       16 CAPTURE                          VAL R2
       17 CAPTURE                          UPVAL U1
       18 CAPTURE                          UPVAL U2
       19 NEWTABLE                         R6 0 1
       21 MOVE                             R7 R1
       22 SETLIST                          R6 R7 1 [1]
       24 CALL                             R4 2 0
       25 NEWTABLE                         R4 0 0
       27 LOADN                            R5 0
       28 JUMPIFNOTLT                      R5 R1 ; [+82]
       30 GETTABLEKS                       R6 R0 K3 ["colors"]
       32 LENGTH                           R5 R6
       33 GETTABLEKS                       R8 R0 K5 ["paddingHorizontal"]
       35 MULK                             R7 R8 K4 [2]
       36 SUB                              R6 R1 R7
       37 DIV                              R8 R6 R5
       38 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       39 GETIMPORT                        R7 K8 [math.floor]
       41 CALL                             R7 1 1
       42 SUBK                             R9 R5 K9 [1]
       43 MUL                              R8 R7 R9
       44 GETTABLEKS                       R10 R0 K5 ["paddingHorizontal"]
       46 SUB                              R13 R6 R8
       47 DIVK                             R12 R13 K4 [2]
       48 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       49 GETIMPORT                        R11 K8 [math.floor]
       51 CALL                             R11 1 1
       52 ADD                              R9 R10 R11
       53 GETIMPORT                        R10 K11 [ipairs]
       55 GETTABLEKS                       R11 R0 K3 ["colors"]
       57 CALL                             R10 1 3
       58 FORGPREP_INEXT                   R10
       59 SUBK                             R17 R13 K9 [1]
       60 MUL                              R16 R7 R17
       61 ADD                              R15 R9 R16
       62 LOADK                            R17 K12 ["Swatch_%*"]
       63 MOVE                             R19 R13
       64 NAMECALL                         R17 R17 K13 ["format"]
       66 CALL                             R17 2 1
       67 MOVE                             R16 R17
       68 GETUPVAL                         R17 0
       69 GETTABLEKS                       R17 R17 K14 ["createElement"]
       71 GETUPVAL                         R18 3
       72 DUPTABLE                         R19 K20 [{"Size", "Position", "AnchorPoint", "Image", "imageStyle"}]
       73 GETIMPORT                        R20 K23 [UDim2.fromOffset]
       75 GETTABLEKS                       R21 R0 K24 ["swatchWidth"]
       77 GETTABLEKS                       R22 R0 K25 ["swatchHeight"]
       79 CALL                             R20 2 1
       80 SETTABLEKS                       R20 R19 K15 ["Size"]
       82 GETIMPORT                        R20 K23 [UDim2.fromOffset]
       84 MOVE                             R21 R15
       85 GETTABLEKS                       R22 R0 K26 ["swatchCenterY"]
       87 CALL                             R20 2 1
       88 SETTABLEKS                       R20 R19 K16 ["Position"]
       90 GETIMPORT                        R20 K29 [Vector2.new]
       92 LOADK                            R21 K30 [0.5]
       93 LOADK                            R22 K30 [0.5]
       94 CALL                             R20 2 1
       95 SETTABLEKS                       R20 R19 K17 ["AnchorPoint"]
       97 LOADK                            R20 K31 ["component_assets/hexagon_24"]
       98 SETTABLEKS                       R20 R19 K18 ["Image"]
      100 DUPTABLE                         R20 K33 [{"Color3"}]
      101 GETTABLEKS                       R21 R14 K34 ["Color"]
      103 SETTABLEKS                       R21 R20 K32 ["Color3"]
      105 SETTABLEKS                       R20 R19 K19 ["imageStyle"]
      107 CALL                             R17 2 1
      108 SETTABLE                         R17 R4 R16
      109 FORGLOOP                         R10 2 [inext] ; [-51]
      111 GETUPVAL                         R5 0
      112 GETTABLEKS                       R5 R5 K14 ["createElement"]
      114 GETUPVAL                         R6 4
      115 DUPTABLE                         R7 K37 [{"tag", "ref"}]
      116 LOADK                            R8 K38 ["size-full"]
      117 SETTABLEKS                       R8 R7 K35 ["tag"]
      119 SETTABLEKS                       R3 R7 K36 ["ref"]
      121 MOVE                             R8 R4
      122 CALL                             R5 3 -1
      123 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MAIN"]
        3 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BOTTOM"]
        3 RETURN                           R0 1

PROTO_8:
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

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 1
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R6 R6 K0 ["FoundationColorPickerDesignUpdate"]
        8 JUMPIFNOT                        R6 ; [+2]
        9 LOADN                            R5 1
       10 JUMP                             ; [+5]
       11 GETUPVAL                         R5 3
       12 GETTABLEKS                       R5 R5 K1 ["Size"]
       14 GETTABLEKS                       R5 R5 K2 ["Size_50"]
       16 ADD                              R3 R4 R5
       17 GETUPVAL                         R4 1
       18 GETUPVAL                         R6 2
       19 GETTABLEKS                       R6 R6 K0 ["FoundationColorPickerDesignUpdate"]
       21 JUMPIFNOT                        R6 ; [+6]
       22 MULK                             R6 R3 K3 [1.5]
       23 FASTCALL1                        MATH_ROUND R6 ; [+2]
       24 GETIMPORT                        R5 K6 [math.round]
       26 CALL                             R5 1 1
       27 JUMP                             ; [+1]
       28 LOADNIL                          R5
       29 LOADN                            R8 0
       30 SUBK                             R6 R2 K7 [1]
       31 LOADN                            R7 1
       32 FORNPREP                         R6
       33 LOADN                            R11 0
       34 LOADN                            R14 2
       35 MUL                              R13 R14 R2
       36 SUBK                             R12 R13 K7 [1]
       37 SUBK                             R9 R12 K7 [1]
       38 LOADN                            R10 1
       39 FORNPREP                         R9
       40 DIVK                             R15 R2 K8 [2]
       41 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       42 GETIMPORT                        R14 K10 [math.floor]
       44 CALL                             R14 1 1
       45 SUB                              R13 R14 R8
       46 FASTCALL1                        MATH_ABS R13 ; [+2]
       47 GETIMPORT                        R12 K12 [math.abs]
       49 CALL                             R12 1 1
       50 LOADN                            R19 2
       51 MUL                              R18 R19 R2
       52 SUBK                             R17 R18 K7 [1]
       53 DIVK                             R16 R17 K8 [2]
       54 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       55 GETIMPORT                        R15 K10 [math.floor]
       57 CALL                             R15 1 1
       58 SUB                              R14 R15 R11
       59 FASTCALL1                        MATH_ABS R14 ; [+2]
       60 GETIMPORT                        R13 K12 [math.abs]
       62 CALL                             R13 1 1
       63 ADD                              R14 R12 R13
       64 JUMPIFNOTLT                      R14 R2 ; [+35]
       66 MODK                             R14 R8 K8 [2]
       67 MODK                             R15 R11 K8 [2]
       68 JUMPIFNOTEQ                      R14 R15 ; [+31]
       70 GETUPVAL                         R15 4
       71 LENGTH                           R14 R15
       72 JUMPIFNOTLE                      R1 R14 ; [+27]
       74 MUL                              R14 R4 R11
       75 JUMPIFNOT                        R5 ; [+2]
       76 MUL                              R15 R5 R8
       77 JUMP                             ; [+6]
       78 MULK                             R17 R3 K3 [1.5]
       79 MUL                              R16 R17 R8
       80 FASTCALL1                        MATH_ROUND R16 ; [+2]
       81 GETIMPORT                        R15 K6 [math.round]
       83 CALL                             R15 1 1
       84 DUPTABLE                         R18 K16 [{"brickColor", "x", "y"}]
       85 GETUPVAL                         R20 4
       86 GETTABLE                         R19 R20 R1
       87 SETTABLEKS                       R19 R18 K13 ["brickColor"]
       89 SETTABLEKS                       R14 R18 K14 ["x"]
       91 SETTABLEKS                       R15 R18 K15 ["y"]
       93 FASTCALL2                        TABLE_INSERT R0 R18 ; [+4]
       95 MOVE                             R17 R0
       96 GETIMPORT                        R16 K19 [table.insert]
       98 CALL                             R16 2 0
       99 ADDK                             R1 R1 K7 [1]
      100 FORNLOOP                         R9
      101 FORNLOOP                         R6
      102 GETUPVAL                         R6 2
      103 GETTABLEKS                       R6 R6 K0 ["FoundationColorPickerDesignUpdate"]
      105 JUMPIF                           R6 ; [+42]
      106 GETUPVAL                         R7 5
      107 LENGTH                           R6 R7
      108 LOADN                            R7 0
      109 JUMPIFNOTLT                      R7 R6 ; [+38]
      111 GETUPVAL                         R6 3
      112 GETTABLEKS                       R6 R6 K1 ["Size"]
      114 GETTABLEKS                       R6 R6 K20 ["Size_100"]
      116 MULK                             R10 R3 K3 [1.5]
      117 MUL                              R9 R10 R2
      118 ADD                              R8 R9 R6
      119 FASTCALL1                        MATH_ROUND R8 ; [+2]
      120 GETIMPORT                        R7 K6 [math.round]
      122 CALL                             R7 1 1
      123 GETIMPORT                        R8 K22 [ipairs]
      125 GETUPVAL                         R9 5
      126 CALL                             R8 1 3
      127 FORGPREP_INEXT                   R8
      128 LOADN                            R14 1
      129 SUBK                             R16 R11 K7 [1]
      130 MULK                             R15 R16 K8 [2]
      131 ADD                              R13 R14 R15
      132 MUL                              R14 R4 R13
      133 DUPTABLE                         R17 K16 [{"brickColor", "x", "y"}]
      134 SETTABLEKS                       R12 R17 K13 ["brickColor"]
      136 SETTABLEKS                       R14 R17 K14 ["x"]
      138 SETTABLEKS                       R7 R17 K15 ["y"]
      140 FASTCALL2                        TABLE_INSERT R0 R17 ; [+4]
      142 MOVE                             R16 R0
      143 GETIMPORT                        R15 K19 [table.insert]
      145 CALL                             R15 2 0
      146 FORGLOOP                         R8 2 [inext] ; [-19]
      148 LOADK                            R6 K23 [∞]
      149 LOADK                            R7 K24 [-∞]
      150 LOADK                            R8 K23 [∞]
      151 LOADK                            R9 K24 [-∞]
      152 MOVE                             R10 R0
      153 LOADNIL                          R11
      154 LOADNIL                          R12
      155 FORGPREP                         R10
      156 GETTABLEKS                       R18 R14 K14 ["x"]
      158 GETUPVAL                         R20 6
      159 DIVK                             R19 R20 K8 [2]
      160 SUB                              R17 R18 R19
      161 FASTCALL2                        MATH_MIN R6 R17 ; [+4]
      163 MOVE                             R16 R6
      164 GETIMPORT                        R15 K26 [math.min]
      166 CALL                             R15 2 1
      167 MOVE                             R6 R15
      168 GETTABLEKS                       R18 R14 K14 ["x"]
      170 GETUPVAL                         R20 6
      171 DIVK                             R19 R20 K8 [2]
      172 ADD                              R17 R18 R19
      173 FASTCALL2                        MATH_MAX R7 R17 ; [+4]
      175 MOVE                             R16 R7
      176 GETIMPORT                        R15 K28 [math.max]
      178 CALL                             R15 2 1
      179 MOVE                             R7 R15
      180 GETTABLEKS                       R18 R14 K15 ["y"]
      182 GETUPVAL                         R20 7
      183 DIVK                             R19 R20 K8 [2]
      184 SUB                              R17 R18 R19
      185 FASTCALL2                        MATH_MIN R8 R17 ; [+4]
      187 MOVE                             R16 R8
      188 GETIMPORT                        R15 K26 [math.min]
      190 CALL                             R15 2 1
      191 MOVE                             R8 R15
      192 GETTABLEKS                       R18 R14 K15 ["y"]
      194 GETUPVAL                         R20 7
      195 DIVK                             R19 R20 K8 [2]
      196 ADD                              R17 R18 R19
      197 FASTCALL2                        MATH_MAX R9 R17 ; [+4]
      199 MOVE                             R16 R9
      200 GETIMPORT                        R15 K28 [math.max]
      202 CALL                             R15 2 1
      203 MOVE                             R9 R15
      204 FORGLOOP                         R10 2 ; [-49]
      206 DUPTABLE                         R10 K32 [{"width", "height", "offset"}]
      207 SUB                              R11 R7 R6
      208 SETTABLEKS                       R11 R10 K29 ["width"]
      210 SUB                              R11 R9 R8
      211 SETTABLEKS                       R11 R10 K30 ["height"]
      213 GETIMPORT                        R11 K35 [Vector2.new]
      215 MOVE                             R12 R6
      216 MOVE                             R13 R8
      217 CALL                             R11 2 1
      218 SETTABLEKS                       R11 R10 K31 ["offset"]
      220 MOVE                             R11 R0
      221 MOVE                             R12 R10
      222 RETURN                           R11 2

PROTO_10:
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

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+58]
        6 GETTABLEKS                       R3 R1 K4 ["Position"]
        8 GETTABLEKS                       R3 R3 K5 ["X"]
       10 GETTABLEKS                       R4 R0 K6 ["AbsolutePosition"]
       12 GETTABLEKS                       R4 R4 K5 ["X"]
       14 SUB                              R2 R3 R4
       15 GETTABLEKS                       R3 R0 K7 ["AbsoluteSize"]
       17 GETTABLEKS                       R3 R3 K5 ["X"]
       19 LOADN                            R6 2
       20 GETUPVAL                         R7 0
       21 MUL                              R5 R6 R7
       22 SUB                              R4 R3 R5
       23 GETUPVAL                         R6 0
       24 SUB                              R5 R2 R6
       25 LOADN                            R6 0
       26 JUMPIFNOTLE                      R6 R5 ; [+36]
       28 JUMPIFNOTLE                      R5 R4 ; [+34]
       30 DIV                              R10 R5 R4
       31 GETUPVAL                         R12 1
       32 LENGTH                           R11 R12
       33 MUL                              R9 R10 R11
       34 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       35 GETIMPORT                        R8 K11 [math.floor]
       37 CALL                             R8 1 1
       38 ADDK                             R7 R8 K8 [1]
       39 LOADN                            R8 1
       40 GETUPVAL                         R10 1
       41 LENGTH                           R9 R10
       42 FASTCALL                         MATH_CLAMP ; [+2]
       43 GETIMPORT                        R6 K13 [math.clamp]
       45 CALL                             R6 3 1
       46 GETUPVAL                         R8 1
       47 GETTABLE                         R7 R8 R6
       48 GETUPVAL                         R8 2
       49 GETTABLEKS                       R8 R8 K14 ["onBrickColorChanged"]
       51 MOVE                             R9 R7
       52 CALL                             R8 1 0
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K15 ["onColorChanged"]
       56 JUMPIFNOT                        R8 ; [+6]
       57 GETUPVAL                         R8 2
       58 GETTABLEKS                       R8 R8 K15 ["onColorChanged"]
       60 GETTABLEKS                       R9 R7 K16 ["Color"]
       62 CALL                             R8 1 0
       63 RETURN                           R0 0

PROTO_12:
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
       21 JUMPIFNOT                        R1 ; [+43]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K8 ["createElement"]
       25 GETUPVAL                         R5 2
       26 DUPTABLE                         R6 K15 [{"Size", "Position", "AnchorPoint", "Image", "imageStyle", "ZIndex"}]
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
       40 GETIMPORT                        R7 K18 [Vector2.new]
       42 LOADK                            R8 K19 [0.5]
       43 LOADK                            R9 K19 [0.5]
       44 CALL                             R7 2 1
       45 SETTABLEKS                       R7 R6 K11 ["AnchorPoint"]
       47 LOADK                            R7 K20 ["component_assets/hexagon_24"]
       48 SETTABLEKS                       R7 R6 K12 ["Image"]
       50 GETUPVAL                         R7 6
       51 GETTABLEKS                       R7 R7 K21 ["Color"]
       53 GETTABLEKS                       R7 R7 K22 ["ActionEmphasis"]
       55 GETTABLEKS                       R7 R7 K23 ["Background"]
       57 SETTABLEKS                       R7 R6 K13 ["imageStyle"]
       59 LOADN                            R7 1
       60 SETTABLEKS                       R7 R6 K14 ["ZIndex"]
       62 CALL                             R4 2 1
       63 SETTABLEKS                       R4 R3 K24 ["outline"]
       65 GETUPVAL                         R4 1
       66 GETTABLEKS                       R4 R4 K8 ["createElement"]
       68 GETUPVAL                         R5 2
       69 DUPTABLE                         R6 K15 [{"Size", "Position", "AnchorPoint", "Image", "imageStyle", "ZIndex"}]
       70 GETIMPORT                        R7 K2 [UDim2.fromOffset]
       72 GETUPVAL                         R8 3
       73 GETUPVAL                         R9 5
       74 CALL                             R7 2 1
       75 SETTABLEKS                       R7 R6 K9 ["Size"]
       77 SETTABLEKS                       R2 R6 K10 ["Position"]
       79 GETIMPORT                        R7 K18 [Vector2.new]
       81 LOADK                            R8 K19 [0.5]
       82 LOADK                            R9 K19 [0.5]
       83 CALL                             R7 2 1
       84 SETTABLEKS                       R7 R6 K11 ["AnchorPoint"]
       86 LOADK                            R7 K20 ["component_assets/hexagon_24"]
       87 SETTABLEKS                       R7 R6 K12 ["Image"]
       89 DUPTABLE                         R7 K26 [{"Color3"}]
       90 GETTABLEKS                       R8 R0 K27 ["brickColor"]
       92 GETTABLEKS                       R8 R8 K21 ["Color"]
       94 SETTABLEKS                       R8 R7 K25 ["Color3"]
       96 SETTABLEKS                       R7 R6 K13 ["imageStyle"]
       98 LOADN                            R7 2
       99 SETTABLEKS                       R7 R6 K14 ["ZIndex"]
      101 CALL                             R4 2 1
      102 SETTABLEKS                       R4 R3 K28 ["hexagon"]
      104 RETURN                           R3 1

PROTO_13:
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

PROTO_14:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K0 ["FoundationColorPickerDesignUpdate"]
        5 JUMPIFNOT                        R3 ; [+5]
        6 GETTABLEKS                       R2 R1 K1 ["Size"]
        8 GETTABLEKS                       R2 R2 K2 ["Size_200"]
       10 JUMP                             ; [+4]
       11 GETTABLEKS                       R2 R1 K1 ["Size"]
       13 GETTABLEKS                       R2 R2 K3 ["Size_350"]
       15 LOADNIL                          R3
       16 LOADNIL                          R4
       17 GETUPVAL                         R5 1
       18 GETTABLEKS                       R5 R5 K0 ["FoundationColorPickerDesignUpdate"]
       20 JUMPIFNOT                        R5 ; [+9]
       21 GETTABLEKS                       R5 R1 K1 ["Size"]
       23 GETTABLEKS                       R3 R5 K3 ["Size_350"]
       25 GETTABLEKS                       R5 R1 K1 ["Size"]
       27 GETTABLEKS                       R4 R5 K4 ["Size_400"]
       29 JUMP                             ; [+4]
       30 MULK                             R5 R2 K5 [1.73205080756888]
       31 MULK                             R6 R2 K6 [2]
       32 MOVE                             R3 R5
       33 MOVE                             R4 R6
       34 GETTABLEKS                       R5 R1 K1 ["Size"]
       36 GETTABLEKS                       R5 R5 K7 ["Size_100"]
       38 GETTABLEKS                       R6 R1 K1 ["Size"]
       40 GETTABLEKS                       R6 R6 K3 ["Size_350"]
       42 GETTABLEKS                       R7 R1 K1 ["Size"]
       44 GETTABLEKS                       R7 R7 K4 ["Size_400"]
       46 GETTABLEKS                       R8 R1 K1 ["Size"]
       48 GETTABLEKS                       R8 R8 K2 ["Size_200"]
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K8 ["useMemo"]
       53 DUPCLOSURE                       R10 K9 [PROTO_6]
       54 CAPTURE                          UPVAL U3
       55 NEWTABLE                         R11 0 0
       57 CALL                             R9 2 1
       58 GETUPVAL                         R10 2
       59 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       61 DUPCLOSURE                       R11 K10 [PROTO_7]
       62 CAPTURE                          UPVAL U3
       63 NEWTABLE                         R12 0 0
       65 CALL                             R10 2 1
       66 GETUPVAL                         R11 2
       67 GETTABLEKS                       R11 R11 K8 ["useMemo"]
       69 NEWCLOSURE                       R12 P2
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R9
       72 NEWTABLE                         R13 0 0
       74 CALL                             R11 2 1
       75 GETUPVAL                         R12 2
       76 GETTABLEKS                       R12 R12 K8 ["useMemo"]
       78 NEWCLOSURE                       R13 P3
       79 CAPTURE                          VAL R11
       80 CAPTURE                          VAL R2
       81 CAPTURE                          UPVAL U1
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R9
       84 CAPTURE                          VAL R10
       85 CAPTURE                          REF R3
       86 CAPTURE                          REF R4
       87 NEWTABLE                         R14 0 6
       89 MOVE                             R15 R11
       90 MOVE                             R16 R2
       91 MOVE                             R17 R9
       92 MOVE                             R18 R10
       93 GETTABLEKS                       R19 R1 K1 ["Size"]
       95 GETTABLEKS                       R19 R19 K7 ["Size_100"]
       97 GETTABLEKS                       R20 R1 K1 ["Size"]
       99 GETTABLEKS                       R20 R20 K11 ["Size_50"]
      101 SETLIST                          R14 R15 6 [1]
      103 CALL                             R12 2 2
      104 GETUPVAL                         R14 2
      105 GETTABLEKS                       R14 R14 K12 ["useCallback"]
      107 NEWCLOSURE                       R15 P4
      108 CAPTURE                          VAL R13
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R0
      112 NEWTABLE                         R16 0 5
      114 MOVE                             R17 R12
      115 MOVE                             R18 R13
      116 MOVE                             R19 R2
      117 GETTABLEKS                       R20 R0 K13 ["onBrickColorChanged"]
      119 GETTABLEKS                       R21 R0 K14 ["onColorChanged"]
      121 SETLIST                          R16 R17 5 [1]
      123 CALL                             R14 2 1
      124 GETUPVAL                         R15 2
      125 GETTABLEKS                       R15 R15 K12 ["useCallback"]
      127 NEWCLOSURE                       R16 P5
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R10
      130 CAPTURE                          VAL R0
      131 NEWTABLE                         R17 0 3
      133 MOVE                             R18 R10
      134 GETTABLEKS                       R19 R0 K13 ["onBrickColorChanged"]
      136 GETTABLEKS                       R20 R0 K14 ["onColorChanged"]
      138 SETLIST                          R17 R18 3 [1]
      140 CALL                             R15 2 1
      141 GETUPVAL                         R16 2
      142 GETTABLEKS                       R16 R16 K12 ["useCallback"]
      144 NEWCLOSURE                       R17 P6
      145 CAPTURE                          VAL R13
      146 CAPTURE                          UPVAL U2
      147 CAPTURE                          UPVAL U5
      148 CAPTURE                          REF R3
      149 CAPTURE                          VAL R8
      150 CAPTURE                          REF R4
      151 CAPTURE                          VAL R1
      152 NEWTABLE                         R18 0 4
      154 GETTABLEKS                       R19 R13 K15 ["offset"]
      156 GETTABLEKS                       R19 R19 K16 ["X"]
      158 GETTABLEKS                       R20 R13 K15 ["offset"]
      160 GETTABLEKS                       R20 R20 K17 ["Y"]
      162 MOVE                             R21 R3
      163 MOVE                             R22 R4
      164 SETLIST                          R18 R19 4 [1]
      166 CALL                             R16 2 1
      167 GETUPVAL                         R17 2
      168 GETTABLEKS                       R17 R17 K12 ["useCallback"]
      170 NEWCLOSURE                       R18 P7
      171 CAPTURE                          VAL R0
      172 CAPTURE                          VAL R12
      173 CAPTURE                          VAL R16
      174 NEWTABLE                         R19 0 1
      176 GETTABLEKS                       R20 R0 K18 ["selectedColor"]
      178 SETLIST                          R19 R20 1 [1]
      180 CALL                             R17 2 1
      181 GETUPVAL                         R18 1
      182 GETTABLEKS                       R18 R18 K0 ["FoundationColorPickerDesignUpdate"]
      184 JUMPIF                           R18 ; [+44]
      185 GETUPVAL                         R18 2
      186 GETTABLEKS                       R18 R18 K19 ["createElement"]
      188 GETUPVAL                         R19 6
      189 GETUPVAL                         R20 7
      190 MOVE                             R21 R0
      191 DUPTABLE                         R22 K20 [{"Size"}]
      192 GETIMPORT                        R23 K23 [UDim2.fromOffset]
      194 GETTABLEKS                       R24 R13 K24 ["width"]
      196 GETTABLEKS                       R25 R13 K25 ["height"]
      198 CALL                             R23 2 1
      199 SETTABLEKS                       R23 R22 K1 ["Size"]
      201 CALL                             R20 2 1
      202 DUPTABLE                         R21 K27 [{"ColorGrid"}]
      203 GETUPVAL                         R22 2
      204 GETTABLEKS                       R22 R22 K19 ["createElement"]
      206 GETUPVAL                         R23 6
      207 DUPTABLE                         R24 K31 [{"tag", "onActivated", "stateLayer"}]
      208 LOADK                            R25 K32 ["position-top-left anchor-top-left size-full"]
      209 SETTABLEKS                       R25 R24 K28 ["tag"]
      211 SETTABLEKS                       R14 R24 K29 ["onActivated"]
      213 DUPTABLE                         R25 K34 [{"affordance"}]
      214 GETUPVAL                         R26 8
      215 GETTABLEKS                       R26 R26 K35 ["None"]
      217 SETTABLEKS                       R26 R25 K33 ["affordance"]
      219 SETTABLEKS                       R25 R24 K30 ["stateLayer"]
      221 MOVE                             R25 R17
      222 CALL                             R25 0 1
      223 CALL                             R22 3 1
      224 SETTABLEKS                       R22 R21 K26 ["ColorGrid"]
      226 CALL                             R18 3 -1
      227 CLOSEUPVALS                      R3
      228 RETURN                           R18 -1
      229 GETUPVAL                         R18 2
      230 GETTABLEKS                       R18 R18 K19 ["createElement"]
      232 GETUPVAL                         R19 6
      233 GETUPVAL                         R20 7
      234 MOVE                             R21 R0
      235 DUPTABLE                         R22 K36 [{"tag"}]
      236 LOADK                            R23 K37 ["col align-x-center gap-small size-full-0 auto-y"]
      237 SETTABLEKS                       R23 R22 K28 ["tag"]
      239 CALL                             R20 2 1
      240 DUPTABLE                         R21 K39 [{"ColorGrid", "BottomRow"}]
      241 GETUPVAL                         R22 2
      242 GETTABLEKS                       R22 R22 K19 ["createElement"]
      244 GETUPVAL                         R23 6
      245 DUPTABLE                         R24 K41 [{"Size", "LayoutOrder", "onActivated", "stateLayer"}]
      246 GETIMPORT                        R25 K23 [UDim2.fromOffset]
      248 GETTABLEKS                       R26 R13 K24 ["width"]
      250 GETTABLEKS                       R27 R13 K25 ["height"]
      252 CALL                             R25 2 1
      253 SETTABLEKS                       R25 R24 K1 ["Size"]
      255 LOADN                            R25 1
      256 SETTABLEKS                       R25 R24 K40 ["LayoutOrder"]
      258 SETTABLEKS                       R14 R24 K29 ["onActivated"]
      260 DUPTABLE                         R25 K34 [{"affordance"}]
      261 GETUPVAL                         R26 8
      262 GETTABLEKS                       R26 R26 K35 ["None"]
      264 SETTABLEKS                       R26 R25 K33 ["affordance"]
      266 SETTABLEKS                       R25 R24 K30 ["stateLayer"]
      268 MOVE                             R25 R17
      269 CALL                             R25 0 1
      270 CALL                             R22 3 1
      271 SETTABLEKS                       R22 R21 K26 ["ColorGrid"]
      273 GETUPVAL                         R22 2
      274 GETTABLEKS                       R22 R22 K19 ["createElement"]
      276 GETUPVAL                         R23 6
      277 DUPTABLE                         R24 K42 [{"Size", "tag", "LayoutOrder", "onActivated", "stateLayer"}]
      278 GETIMPORT                        R25 K44 [UDim2.new]
      280 LOADN                            R26 1
      281 GETTABLEKS                       R28 R1 K1 ["Size"]
      283 GETTABLEKS                       R28 R28 K4 ["Size_400"]
      285 MINUS                            R27 R28
      286 LOADN                            R28 0
      287 GETTABLEKS                       R29 R1 K1 ["Size"]
      289 GETTABLEKS                       R29 R29 K45 ["Size_500"]
      291 CALL                             R25 4 1
      292 SETTABLEKS                       R25 R24 K1 ["Size"]
      294 LOADK                            R25 K46 ["stroke-standard stroke-muted radius-circle bg-surface-100"]
      295 SETTABLEKS                       R25 R24 K28 ["tag"]
      297 LOADN                            R25 2
      298 SETTABLEKS                       R25 R24 K40 ["LayoutOrder"]
      300 SETTABLEKS                       R15 R24 K29 ["onActivated"]
      302 DUPTABLE                         R25 K34 [{"affordance"}]
      303 GETUPVAL                         R26 8
      304 GETTABLEKS                       R26 R26 K35 ["None"]
      306 SETTABLEKS                       R26 R25 K33 ["affordance"]
      308 SETTABLEKS                       R25 R24 K30 ["stateLayer"]
      310 DUPTABLE                         R25 K48 [{"Swatches"}]
      311 GETUPVAL                         R26 2
      312 GETTABLEKS                       R26 R26 K19 ["createElement"]
      314 GETUPVAL                         R27 9
      315 DUPTABLE                         R28 K54 [{"colors", "paddingHorizontal", "swatchWidth", "swatchHeight", "swatchCenterY"}]
      316 SETTABLEKS                       R10 R28 K49 ["colors"]
      318 SETTABLEKS                       R5 R28 K50 ["paddingHorizontal"]
      320 SETTABLEKS                       R6 R28 K51 ["swatchWidth"]
      322 SETTABLEKS                       R7 R28 K52 ["swatchHeight"]
      324 GETTABLEKS                       R29 R1 K1 ["Size"]
      326 GETTABLEKS                       R29 R29 K55 ["Size_250"]
      328 SETTABLEKS                       R29 R28 K53 ["swatchCenterY"]
      330 CALL                             R26 2 1
      331 SETTABLEKS                       R26 R25 K47 ["Swatches"]
      333 CALL                             R22 3 1
      334 SETTABLEKS                       R22 R21 K38 ["BottomRow"]
      336 CALL                             R18 3 -1
      337 CLOSEUPVALS                      R3
      338 RETURN                           R18 -1

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
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K19 ["Utility"]
       71 GETTABLEKS                       R11 R11 K21 ["Flags"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K6 [require]
       76 GETTABLEKS                       R12 R0 K19 ["Utility"]
       78 GETTABLEKS                       R12 R12 K22 ["Wrappers"]
       80 CALL                             R11 1 1
       81 GETTABLEKS                       R12 R11 K23 ["Connection"]
       83 GETTABLEKS                       R13 R11 K24 ["Signal"]
       85 DUPCLOSURE                       R14 K25 [PROTO_0]
       86 DUPCLOSURE                       R15 K26 [PROTO_1]
       87 DUPCLOSURE                       R16 K27 [PROTO_5]
       88 CAPTURE                          VAL R2
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R12
       91 CAPTURE                          VAL R3
       92 CAPTURE                          VAL R6
       93 DUPCLOSURE                       R17 K28 [PROTO_14]
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R7
       98 CAPTURE                          VAL R15
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R9
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R16
      104 RETURN                           R17 1
