PROTO_0:
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

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["AbsoluteSize"]
        4 GETTABLEKS                       R2 R2 K1 ["X"]
        6 FASTCALL1                        MATH_ROUND R2 ; [+2]
        7 GETIMPORT                        R1 K4 [math.round]
        9 CALL                             R1 1 1
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["Disconnect"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
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

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["MAIN"]
        3 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BOTTOM"]
        3 RETURN                           R0 1

PROTO_7:
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

PROTO_8:
        0 NEWTABLE                         R0 0 0
        2 LOADN                            R1 1
        3 GETUPVAL                         R2 0
        4 GETUPVAL                         R4 1
        5 ADDK                             R3 R4 K0 [1]
        6 GETUPVAL                         R4 1
        7 MULK                             R6 R3 K1 [1.5]
        8 FASTCALL1                        MATH_ROUND R6 ; [+2]
        9 GETIMPORT                        R5 K4 [math.round]
       11 CALL                             R5 1 1
       12 LOADN                            R8 0
       13 SUBK                             R6 R2 K0 [1]
       14 LOADN                            R7 1
       15 FORNPREP                         R6
       16 LOADN                            R11 0
       17 LOADN                            R14 2
       18 MUL                              R13 R14 R2
       19 SUBK                             R12 R13 K0 [1]
       20 SUBK                             R9 R12 K0 [1]
       21 LOADN                            R10 1
       22 FORNPREP                         R9
       23 DIVK                             R15 R2 K5 [2]
       24 FASTCALL1                        MATH_FLOOR R15 ; [+2]
       25 GETIMPORT                        R14 K7 [math.floor]
       27 CALL                             R14 1 1
       28 SUB                              R13 R14 R8
       29 FASTCALL1                        MATH_ABS R13 ; [+2]
       30 GETIMPORT                        R12 K9 [math.abs]
       32 CALL                             R12 1 1
       33 LOADN                            R19 2
       34 MUL                              R18 R19 R2
       35 SUBK                             R17 R18 K0 [1]
       36 DIVK                             R16 R17 K5 [2]
       37 FASTCALL1                        MATH_FLOOR R16 ; [+2]
       38 GETIMPORT                        R15 K7 [math.floor]
       40 CALL                             R15 1 1
       41 SUB                              R14 R15 R11
       42 FASTCALL1                        MATH_ABS R14 ; [+2]
       43 GETIMPORT                        R13 K9 [math.abs]
       45 CALL                             R13 1 1
       46 ADD                              R14 R12 R13
       47 JUMPIFNOTLT                      R14 R2 ; [+35]
       49 MODK                             R14 R8 K5 [2]
       50 MODK                             R15 R11 K5 [2]
       51 JUMPIFNOTEQ                      R14 R15 ; [+31]
       53 GETUPVAL                         R15 2
       54 LENGTH                           R14 R15
       55 JUMPIFNOTLE                      R1 R14 ; [+27]
       57 MUL                              R14 R4 R11
       58 JUMPIFNOT                        R5 ; [+2]
       59 MUL                              R15 R5 R8
       60 JUMP                             ; [+6]
       61 MULK                             R17 R3 K1 [1.5]
       62 MUL                              R16 R17 R8
       63 FASTCALL1                        MATH_ROUND R16 ; [+2]
       64 GETIMPORT                        R15 K4 [math.round]
       66 CALL                             R15 1 1
       67 DUPTABLE                         R18 K13 [{"brickColor", "x", "y"}]
       68 GETUPVAL                         R20 2
       69 GETTABLE                         R19 R20 R1
       70 SETTABLEKS                       R19 R18 K10 ["brickColor"]
       72 SETTABLEKS                       R14 R18 K11 ["x"]
       74 SETTABLEKS                       R15 R18 K12 ["y"]
       76 FASTCALL2                        TABLE_INSERT R0 R18 ; [+4]
       78 MOVE                             R17 R0
       79 GETIMPORT                        R16 K16 [table.insert]
       81 CALL                             R16 2 0
       82 ADDK                             R1 R1 K0 [1]
       83 FORNLOOP                         R9
       84 FORNLOOP                         R6
       85 LOADK                            R6 K17 [∞]
       86 LOADK                            R7 K18 [-∞]
       87 LOADK                            R8 K17 [∞]
       88 LOADK                            R9 K18 [-∞]
       89 MOVE                             R10 R0
       90 LOADNIL                          R11
       91 LOADNIL                          R12
       92 FORGPREP                         R10
       93 GETTABLEKS                       R18 R14 K11 ["x"]
       95 GETUPVAL                         R20 3
       96 DIVK                             R19 R20 K5 [2]
       97 SUB                              R17 R18 R19
       98 FASTCALL2                        MATH_MIN R6 R17 ; [+4]
      100 MOVE                             R16 R6
      101 GETIMPORT                        R15 K20 [math.min]
      103 CALL                             R15 2 1
      104 MOVE                             R6 R15
      105 GETTABLEKS                       R18 R14 K11 ["x"]
      107 GETUPVAL                         R20 3
      108 DIVK                             R19 R20 K5 [2]
      109 ADD                              R17 R18 R19
      110 FASTCALL2                        MATH_MAX R7 R17 ; [+4]
      112 MOVE                             R16 R7
      113 GETIMPORT                        R15 K22 [math.max]
      115 CALL                             R15 2 1
      116 MOVE                             R7 R15
      117 GETTABLEKS                       R18 R14 K12 ["y"]
      119 GETUPVAL                         R20 4
      120 DIVK                             R19 R20 K5 [2]
      121 SUB                              R17 R18 R19
      122 FASTCALL2                        MATH_MIN R8 R17 ; [+4]
      124 MOVE                             R16 R8
      125 GETIMPORT                        R15 K20 [math.min]
      127 CALL                             R15 2 1
      128 MOVE                             R8 R15
      129 GETTABLEKS                       R18 R14 K12 ["y"]
      131 GETUPVAL                         R20 4
      132 DIVK                             R19 R20 K5 [2]
      133 ADD                              R17 R18 R19
      134 FASTCALL2                        MATH_MAX R9 R17 ; [+4]
      136 MOVE                             R16 R9
      137 GETIMPORT                        R15 K22 [math.max]
      139 CALL                             R15 2 1
      140 MOVE                             R9 R15
      141 FORGLOOP                         R10 2 ; [-49]
      143 DUPTABLE                         R10 K26 [{"width", "height", "offset"}]
      144 SUB                              R11 R7 R6
      145 SETTABLEKS                       R11 R10 K23 ["width"]
      147 SUB                              R11 R9 R8
      148 SETTABLEKS                       R11 R10 K24 ["height"]
      150 GETIMPORT                        R11 K29 [Vector2.new]
      152 MOVE                             R12 R6
      153 MOVE                             R13 R8
      154 CALL                             R11 2 1
      155 SETTABLEKS                       R11 R10 K25 ["offset"]
      157 MOVE                             R11 R0
      158 MOVE                             R12 R10
      159 RETURN                           R11 2

PROTO_9:
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

PROTO_10:
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

PROTO_11:
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

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R1 K0 ["Size"]
        4 GETTABLEKS                       R2 R2 K1 ["Size_200"]
        6 GETTABLEKS                       R3 R1 K0 ["Size"]
        8 GETTABLEKS                       R3 R3 K2 ["Size_350"]
       10 GETTABLEKS                       R4 R1 K0 ["Size"]
       12 GETTABLEKS                       R4 R4 K3 ["Size_400"]
       14 GETTABLEKS                       R5 R1 K0 ["Size"]
       16 GETTABLEKS                       R5 R5 K4 ["Size_100"]
       18 GETTABLEKS                       R6 R1 K0 ["Size"]
       20 GETTABLEKS                       R6 R6 K2 ["Size_350"]
       22 GETTABLEKS                       R7 R1 K0 ["Size"]
       24 GETTABLEKS                       R7 R7 K3 ["Size_400"]
       26 GETTABLEKS                       R8 R1 K0 ["Size"]
       28 GETTABLEKS                       R8 R8 K1 ["Size_200"]
       30 GETUPVAL                         R9 1
       31 GETTABLEKS                       R9 R9 K5 ["useMemo"]
       33 DUPCLOSURE                       R10 K6 [PROTO_5]
       34 CAPTURE                          UPVAL U2
       35 NEWTABLE                         R11 0 0
       37 CALL                             R9 2 1
       38 GETUPVAL                         R10 1
       39 GETTABLEKS                       R10 R10 K5 ["useMemo"]
       41 DUPCLOSURE                       R11 K7 [PROTO_6]
       42 CAPTURE                          UPVAL U2
       43 NEWTABLE                         R12 0 0
       45 CALL                             R10 2 1
       46 GETUPVAL                         R11 1
       47 GETTABLEKS                       R11 R11 K5 ["useMemo"]
       49 NEWCLOSURE                       R12 P2
       50 CAPTURE                          UPVAL U3
       51 CAPTURE                          VAL R9
       52 NEWTABLE                         R13 0 0
       54 CALL                             R11 2 1
       55 GETUPVAL                         R12 1
       56 GETTABLEKS                       R12 R12 K5 ["useMemo"]
       58 NEWCLOSURE                       R13 P3
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R4
       64 NEWTABLE                         R14 0 6
       66 MOVE                             R15 R11
       67 MOVE                             R16 R2
       68 MOVE                             R17 R9
       69 MOVE                             R18 R10
       70 GETTABLEKS                       R19 R1 K0 ["Size"]
       72 GETTABLEKS                       R19 R19 K4 ["Size_100"]
       74 GETTABLEKS                       R20 R1 K0 ["Size"]
       76 GETTABLEKS                       R20 R20 K8 ["Size_50"]
       78 SETLIST                          R14 R15 6 [1]
       80 CALL                             R12 2 2
       81 GETUPVAL                         R14 1
       82 GETTABLEKS                       R14 R14 K9 ["useCallback"]
       84 NEWCLOSURE                       R15 P4
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R0
       89 NEWTABLE                         R16 0 5
       91 MOVE                             R17 R12
       92 MOVE                             R18 R13
       93 MOVE                             R19 R2
       94 GETTABLEKS                       R20 R0 K10 ["onBrickColorChanged"]
       96 GETTABLEKS                       R21 R0 K11 ["onColorChanged"]
       98 SETLIST                          R16 R17 5 [1]
      100 CALL                             R14 2 1
      101 GETUPVAL                         R15 1
      102 GETTABLEKS                       R15 R15 K9 ["useCallback"]
      104 NEWCLOSURE                       R16 P5
      105 CAPTURE                          VAL R5
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R0
      108 NEWTABLE                         R17 0 3
      110 MOVE                             R18 R10
      111 GETTABLEKS                       R19 R0 K10 ["onBrickColorChanged"]
      113 GETTABLEKS                       R20 R0 K11 ["onColorChanged"]
      115 SETLIST                          R17 R18 3 [1]
      117 CALL                             R15 2 1
      118 GETUPVAL                         R16 1
      119 GETTABLEKS                       R16 R16 K9 ["useCallback"]
      121 NEWCLOSURE                       R17 P6
      122 CAPTURE                          VAL R13
      123 CAPTURE                          UPVAL U1
      124 CAPTURE                          UPVAL U4
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R8
      127 CAPTURE                          VAL R4
      128 CAPTURE                          VAL R1
      129 NEWTABLE                         R18 0 4
      131 GETTABLEKS                       R19 R13 K12 ["offset"]
      133 GETTABLEKS                       R19 R19 K13 ["X"]
      135 GETTABLEKS                       R20 R13 K12 ["offset"]
      137 GETTABLEKS                       R20 R20 K14 ["Y"]
      139 MOVE                             R21 R3
      140 MOVE                             R22 R4
      141 SETLIST                          R18 R19 4 [1]
      143 CALL                             R16 2 1
      144 GETUPVAL                         R17 1
      145 GETTABLEKS                       R17 R17 K9 ["useCallback"]
      147 NEWCLOSURE                       R18 P7
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R16
      151 NEWTABLE                         R19 0 1
      153 GETTABLEKS                       R20 R0 K15 ["selectedColor"]
      155 SETLIST                          R19 R20 1 [1]
      157 CALL                             R17 2 1
      158 GETUPVAL                         R18 1
      159 GETTABLEKS                       R18 R18 K16 ["createElement"]
      161 GETUPVAL                         R19 5
      162 GETUPVAL                         R20 6
      163 MOVE                             R21 R0
      164 DUPTABLE                         R22 K18 [{"tag"}]
      165 LOADK                            R23 K19 ["col align-x-center gap-small size-full-0 auto-y"]
      166 SETTABLEKS                       R23 R22 K17 ["tag"]
      168 CALL                             R20 2 1
      169 DUPTABLE                         R21 K22 [{"ColorGrid", "BottomRow"}]
      170 GETUPVAL                         R22 1
      171 GETTABLEKS                       R22 R22 K16 ["createElement"]
      173 GETUPVAL                         R23 5
      174 DUPTABLE                         R24 K26 [{"Size", "LayoutOrder", "onActivated", "stateLayer"}]
      175 GETIMPORT                        R25 K29 [UDim2.fromOffset]
      177 GETTABLEKS                       R26 R13 K30 ["width"]
      179 GETTABLEKS                       R27 R13 K31 ["height"]
      181 CALL                             R25 2 1
      182 SETTABLEKS                       R25 R24 K0 ["Size"]
      184 LOADN                            R25 1
      185 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      187 SETTABLEKS                       R14 R24 K24 ["onActivated"]
      189 DUPTABLE                         R25 K33 [{"affordance"}]
      190 GETUPVAL                         R26 7
      191 GETTABLEKS                       R26 R26 K34 ["None"]
      193 SETTABLEKS                       R26 R25 K32 ["affordance"]
      195 SETTABLEKS                       R25 R24 K25 ["stateLayer"]
      197 MOVE                             R25 R17
      198 CALL                             R25 0 1
      199 CALL                             R22 3 1
      200 SETTABLEKS                       R22 R21 K20 ["ColorGrid"]
      202 GETUPVAL                         R22 1
      203 GETTABLEKS                       R22 R22 K16 ["createElement"]
      205 GETUPVAL                         R23 5
      206 DUPTABLE                         R24 K35 [{"Size", "tag", "LayoutOrder", "onActivated", "stateLayer"}]
      207 GETIMPORT                        R25 K37 [UDim2.new]
      209 LOADN                            R26 1
      210 GETTABLEKS                       R28 R1 K0 ["Size"]
      212 GETTABLEKS                       R28 R28 K3 ["Size_400"]
      214 MINUS                            R27 R28
      215 LOADN                            R28 0
      216 GETTABLEKS                       R29 R1 K0 ["Size"]
      218 GETTABLEKS                       R29 R29 K38 ["Size_500"]
      220 CALL                             R25 4 1
      221 SETTABLEKS                       R25 R24 K0 ["Size"]
      223 LOADK                            R25 K39 ["stroke-standard stroke-muted radius-circle bg-surface-100"]
      224 SETTABLEKS                       R25 R24 K17 ["tag"]
      226 LOADN                            R25 2
      227 SETTABLEKS                       R25 R24 K23 ["LayoutOrder"]
      229 SETTABLEKS                       R15 R24 K24 ["onActivated"]
      231 DUPTABLE                         R25 K33 [{"affordance"}]
      232 GETUPVAL                         R26 7
      233 GETTABLEKS                       R26 R26 K34 ["None"]
      235 SETTABLEKS                       R26 R25 K32 ["affordance"]
      237 SETTABLEKS                       R25 R24 K25 ["stateLayer"]
      239 DUPTABLE                         R25 K41 [{"Swatches"}]
      240 GETUPVAL                         R26 1
      241 GETTABLEKS                       R26 R26 K16 ["createElement"]
      243 GETUPVAL                         R27 8
      244 DUPTABLE                         R28 K47 [{"colors", "paddingHorizontal", "swatchWidth", "swatchHeight", "swatchCenterY"}]
      245 SETTABLEKS                       R10 R28 K42 ["colors"]
      247 SETTABLEKS                       R5 R28 K43 ["paddingHorizontal"]
      249 SETTABLEKS                       R6 R28 K44 ["swatchWidth"]
      251 SETTABLEKS                       R7 R28 K45 ["swatchHeight"]
      253 GETTABLEKS                       R29 R1 K0 ["Size"]
      255 GETTABLEKS                       R29 R29 K48 ["Size_250"]
      257 SETTABLEKS                       R29 R28 K46 ["swatchCenterY"]
      259 CALL                             R26 2 1
      260 SETTABLEKS                       R26 R25 K40 ["Swatches"]
      262 CALL                             R22 3 1
      263 SETTABLEKS                       R22 R21 K21 ["BottomRow"]
      265 CALL                             R18 3 -1
      266 RETURN                           R18 -1

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
       71 GETTABLEKS                       R11 R11 K21 ["Wrappers"]
       73 CALL                             R10 1 1
       74 GETTABLEKS                       R11 R10 K22 ["Connection"]
       76 GETTABLEKS                       R12 R10 K23 ["Signal"]
       78 DUPCLOSURE                       R13 K24 [PROTO_0]
       79 DUPCLOSURE                       R14 K25 [PROTO_4]
       80 CAPTURE                          VAL R2
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R6
       85 DUPCLOSURE                       R15 K26 [PROTO_13]
       86 CAPTURE                          VAL R8
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R13
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R4
       94 CAPTURE                          VAL R14
       95 RETURN                           R15 1
