PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["X"]
        4 JUMPIFNOTEQ                      R0 R1 ; [+48]
        6 GETUPVAL                         R0 2
        7 LOADK                            R2 K1 ["AnchorPoint"]
        8 NAMECALL                         R0 R0 K2 ["GetStyled"]
       10 CALL                             R0 2 1
       11 GETTABLEKS                       R0 R0 K0 ["X"]
       13 JUMPIFNOTEQKN                    R0 K3 [0] ; [+20]
       15 GETUPVAL                         R0 3
       16 GETIMPORT                        R1 K6 [Vector2.new]
       18 LOADN                            R2 1
       19 LOADK                            R3 K7 [0.5]
       20 CALL                             R1 2 1
       21 SETTABLEKS                       R1 R0 K1 ["AnchorPoint"]
       23 GETUPVAL                         R0 3
       24 GETIMPORT                        R1 K9 [UDim2.new]
       26 LOADN                            R2 1
       27 LOADN                            R3 0
       28 LOADK                            R4 K7 [0.5]
       29 LOADN                            R5 0
       30 CALL                             R1 4 1
       31 SETTABLEKS                       R1 R0 K10 ["Position"]
       33 RETURN                           R0 0
       34 GETUPVAL                         R0 3
       35 GETIMPORT                        R1 K6 [Vector2.new]
       37 LOADN                            R2 0
       38 LOADK                            R3 K7 [0.5]
       39 CALL                             R1 2 1
       40 SETTABLEKS                       R1 R0 K1 ["AnchorPoint"]
       42 GETUPVAL                         R0 3
       43 GETIMPORT                        R1 K9 [UDim2.new]
       45 LOADN                            R2 0
       46 LOADN                            R3 0
       47 LOADK                            R4 K7 [0.5]
       48 LOADN                            R5 0
       49 CALL                             R1 4 1
       50 SETTABLEKS                       R1 R0 K10 ["Position"]
       52 RETURN                           R0 0
       53 GETUPVAL                         R0 0
       54 GETUPVAL                         R1 1
       55 GETTABLEKS                       R1 R1 K11 ["Y"]
       57 JUMPIFNOTEQ                      R0 R1 ; [+47]
       59 GETUPVAL                         R0 2
       60 LOADK                            R2 K1 ["AnchorPoint"]
       61 NAMECALL                         R0 R0 K2 ["GetStyled"]
       63 CALL                             R0 2 1
       64 GETTABLEKS                       R0 R0 K11 ["Y"]
       66 JUMPIFNOTEQKN                    R0 K3 [0] ; [+20]
       68 GETUPVAL                         R0 3
       69 GETIMPORT                        R1 K6 [Vector2.new]
       71 LOADK                            R2 K7 [0.5]
       72 LOADN                            R3 1
       73 CALL                             R1 2 1
       74 SETTABLEKS                       R1 R0 K1 ["AnchorPoint"]
       76 GETUPVAL                         R0 3
       77 GETIMPORT                        R1 K9 [UDim2.new]
       79 LOADK                            R2 K7 [0.5]
       80 LOADN                            R3 0
       81 LOADN                            R4 1
       82 LOADN                            R5 0
       83 CALL                             R1 4 1
       84 SETTABLEKS                       R1 R0 K10 ["Position"]
       86 RETURN                           R0 0
       87 GETUPVAL                         R0 3
       88 GETIMPORT                        R1 K6 [Vector2.new]
       90 LOADK                            R2 K7 [0.5]
       91 LOADN                            R3 0
       92 CALL                             R1 2 1
       93 SETTABLEKS                       R1 R0 K1 ["AnchorPoint"]
       95 GETUPVAL                         R0 3
       96 GETIMPORT                        R1 K9 [UDim2.new]
       98 LOADK                            R2 K7 [0.5]
       99 LOADN                            R3 0
      100 LOADN                            R4 0
      101 LOADN                            R5 0
      102 CALL                             R1 4 1
      103 SETTABLEKS                       R1 R0 K10 ["Position"]
      105 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [Instance.new]
        2 LOADK                            R2 K3 ["Frame"]
        3 CALL                             R1 1 1
        4 LOADK                            R2 K4 ["DistanceLine"]
        5 SETTABLEKS                       R2 R1 K5 ["Name"]
        7 LOADN                            R2 0
        8 SETTABLEKS                       R2 R1 K6 ["BorderSizePixel"]
       10 GETUPVAL                         R2 0
       11 SETTABLEKS                       R2 R1 K7 ["BackgroundColor3"]
       13 LOADB                            R2 0
       14 SETTABLEKS                       R2 R1 K8 ["Visible"]
       16 GETUPVAL                         R2 1
       17 LOADK                            R4 K9 ["DistanceLines"]
       18 NAMECALL                         R2 R2 K10 ["findOrCreateScreenGui"]
       20 CALL                             R2 2 1
       21 SETTABLEKS                       R2 R1 K11 ["Parent"]
       23 GETIMPORT                        R2 K2 [Instance.new]
       25 LOADK                            R3 K3 ["Frame"]
       26 CALL                             R2 1 1
       27 LOADK                            R3 K12 ["DistanceEnd"]
       28 SETTABLEKS                       R3 R2 K5 ["Name"]
       30 LOADN                            R3 0
       31 SETTABLEKS                       R3 R2 K6 ["BorderSizePixel"]
       33 GETUPVAL                         R3 0
       34 SETTABLEKS                       R3 R2 K7 ["BackgroundColor3"]
       36 LOADB                            R3 1
       37 SETTABLEKS                       R3 R2 K8 ["Visible"]
       39 SETTABLEKS                       R1 R2 K11 ["Parent"]
       41 NEWTABLE                         R3 0 2
       43 GETIMPORT                        R4 K14 [UDim2.new]
       45 LOADN                            R5 0
       46 LOADN                            R6 2
       47 LOADN                            R7 0
       48 LOADN                            R8 10
       49 CALL                             R4 4 1
       50 GETIMPORT                        R5 K14 [UDim2.new]
       52 LOADN                            R6 0
       53 LOADN                            R7 10
       54 LOADN                            R8 0
       55 LOADN                            R9 2
       56 CALL                             R5 4 -1
       57 SETLIST                          R3 R4 -1 [1]
       59 GETTABLE                         R4 R3 R0
       60 SETTABLEKS                       R4 R2 K15 ["Size"]
       62 NEWCLOSURE                       R4 P0
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U2
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R2
       67 LOADK                            R7 K16 ["AnchorPoint"]
       68 NAMECALL                         R5 R1 K17 ["GetPropertyChangedSignal"]
       70 CALL                             R5 2 1
       71 MOVE                             R7 R4
       72 NAMECALL                         R5 R5 K18 ["Connect"]
       74 CALL                             R5 2 0
       75 LOADK                            R7 K16 ["AnchorPoint"]
       76 NAMECALL                         R5 R1 K19 ["GetStyledPropertyChangedSignal"]
       78 CALL                             R5 2 1
       79 MOVE                             R7 R4
       80 NAMECALL                         R5 R5 K18 ["Connect"]
       82 CALL                             R5 2 0
       83 RETURN                           R1 1

PROTO_2:
        0 NEWTABLE                         R2 0 2
        2 GETIMPORT                        R3 K2 [UDim2.new]
        4 LOADK                            R4 K3 [0.5]
        5 LOADN                            R5 0
        6 LOADN                            R6 0
        7 LOADN                            R7 0
        8 CALL                             R3 4 1
        9 GETIMPORT                        R4 K2 [UDim2.new]
       11 LOADN                            R5 0
       12 LOADN                            R6 0
       13 LOADK                            R7 K3 [0.5]
       14 LOADN                            R8 0
       15 CALL                             R4 4 -1
       16 SETLIST                          R2 R3 -1 [1]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R3 R3 K1 ["new"]
       21 MOVE                             R4 R1
       22 CALL                             R3 1 1
       23 LOADK                            R4 K4 ["DistanceBox"]
       24 SETTABLEKS                       R4 R3 K5 ["Name"]
       26 GETIMPORT                        R6 K7 [Vector2.new]
       28 LOADK                            R7 K3 [0.5]
       29 LOADK                            R8 K3 [0.5]
       30 CALL                             R6 2 -1
       31 NAMECALL                         R4 R3 K8 ["setAnchorPoint"]
       33 CALL                             R4 -1 0
       34 GETTABLE                         R6 R2 R0
       35 NAMECALL                         R4 R3 K9 ["setPosition"]
       37 CALL                             R4 2 0
       38 JUMPIFEQKNIL                     R1 ; [+3]
       40 SETTABLEKS                       R1 R3 K10 ["Parent"]
       42 RETURN                           R3 1

PROTO_3:
        0 NEWTABLE                         R1 4 0
        2 SETTABLEKS                       R0 R1 K0 ["m_axis"]
        4 GETUPVAL                         R2 0
        5 MOVE                             R3 R0
        6 CALL                             R2 1 1
        7 SETTABLEKS                       R2 R1 K1 ["m_distanceFrame"]
        9 GETUPVAL                         R2 1
       10 MOVE                             R3 R0
       11 GETTABLEKS                       R4 R1 K1 ["m_distanceFrame"]
       13 CALL                             R2 2 1
       14 SETTABLEKS                       R2 R1 K2 ["m_distanceBox"]
       16 LOADB                            R2 0
       17 SETTABLEKS                       R2 R1 K3 ["m_canShow"]
       19 GETUPVAL                         R4 2
       20 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       22 MOVE                             R3 R1
       23 GETIMPORT                        R2 K5 [setmetatable]
       25 CALL                             R2 2 1
       26 RETURN                           R2 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["m_distanceBox"]
        2 NAMECALL                         R1 R1 K1 ["Destroy"]
        4 CALL                             R1 1 0
        5 GETTABLEKS                       R1 R0 K2 ["m_distanceFrame"]
        7 NAMECALL                         R1 R1 K1 ["Destroy"]
        9 CALL                             R1 1 0
       10 LOADNIL                          R1
       11 SETTABLEKS                       R1 R0 K0 ["m_distanceBox"]
       13 LOADNIL                          R1
       14 SETTABLEKS                       R1 R0 K2 ["m_distanceFrame"]
       16 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R3 K1 ["X"]
        4 GETTABLEKS                       R4 R1 K0 ["AbsolutePosition"]
        6 GETTABLEKS                       R4 R4 K1 ["X"]
        8 SUB                              R2 R3 R4
        9 RETURN                           R2 1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R3 K1 ["X"]
        4 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R4 K1 ["X"]
        8 ADD                              R2 R3 R4
        9 GETTABLEKS                       R4 R1 K0 ["AbsolutePosition"]
       11 GETTABLEKS                       R4 R4 K1 ["X"]
       13 GETTABLEKS                       R5 R1 K2 ["AbsoluteSize"]
       15 GETTABLEKS                       R5 R5 K1 ["X"]
       17 ADD                              R3 R4 R5
       18 SUB                              R4 R3 R2
       19 RETURN                           R4 1

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R3 K1 ["Y"]
        4 GETTABLEKS                       R4 R1 K0 ["AbsolutePosition"]
        6 GETTABLEKS                       R4 R4 K1 ["Y"]
        8 SUB                              R2 R3 R4
        9 RETURN                           R2 1

PROTO_8:
        0 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        2 GETTABLEKS                       R3 R3 K1 ["Y"]
        4 GETTABLEKS                       R4 R0 K2 ["AbsoluteSize"]
        6 GETTABLEKS                       R4 R4 K1 ["Y"]
        8 ADD                              R2 R3 R4
        9 GETTABLEKS                       R4 R1 K0 ["AbsolutePosition"]
       11 GETTABLEKS                       R4 R4 K1 ["Y"]
       13 GETTABLEKS                       R5 R1 K2 ["AbsoluteSize"]
       15 GETTABLEKS                       R5 R5 K1 ["Y"]
       17 ADD                              R3 R4 R5
       18 SUB                              R4 R3 R2
       19 RETURN                           R4 1

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["m_distanceBox"]
        2 LOADK                            R4 K1 ["%d"]
        3 MOVE                             R6 R1
        4 NAMECALL                         R4 R4 K2 ["format"]
        6 CALL                             R4 2 -1
        7 NAMECALL                         R2 R2 K3 ["setText"]
        9 CALL                             R2 -1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R0 K0 ["m_distanceFrame"]
        2 GETIMPORT                        R4 K3 [Rect.new]
        4 GETTABLEKS                       R5 R2 K4 ["AbsolutePosition"]
        6 GETTABLEKS                       R7 R2 K4 ["AbsolutePosition"]
        8 GETTABLEKS                       R8 R2 K5 ["AbsoluteSize"]
       10 ADD                              R6 R7 R8
       11 CALL                             R4 2 1
       12 GETIMPORT                        R5 K7 [Vector2.new]
       14 GETTABLEKS                       R6 R1 K4 ["AbsolutePosition"]
       16 GETTABLEKS                       R6 R6 K8 ["X"]
       18 GETTABLEKS                       R9 R1 K4 ["AbsolutePosition"]
       20 GETTABLEKS                       R9 R9 K9 ["Y"]
       22 GETTABLEKS                       R11 R1 K5 ["AbsoluteSize"]
       24 GETTABLEKS                       R11 R11 K9 ["Y"]
       26 DIVK                             R10 R11 K10 [2]
       27 ADD                              R8 R9 R10
       28 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       29 GETIMPORT                        R7 K13 [math.floor]
       31 CALL                             R7 1 1
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K7 [Vector2.new]
       35 GETTABLEKS                       R8 R1 K4 ["AbsolutePosition"]
       37 GETTABLEKS                       R8 R8 K8 ["X"]
       39 GETTABLEKS                       R9 R1 K5 ["AbsoluteSize"]
       41 GETTABLEKS                       R9 R9 K8 ["X"]
       43 ADD                              R7 R8 R9
       44 GETTABLEKS                       R10 R1 K4 ["AbsolutePosition"]
       46 GETTABLEKS                       R10 R10 K9 ["Y"]
       48 GETTABLEKS                       R12 R1 K5 ["AbsoluteSize"]
       50 GETTABLEKS                       R12 R12 K9 ["Y"]
       52 DIVK                             R11 R12 K10 [2]
       53 ADD                              R9 R10 R11
       54 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       55 GETIMPORT                        R8 K13 [math.floor]
       57 CALL                             R8 1 1
       58 CALL                             R6 2 1
       59 GETUPVAL                         R7 0
       60 MOVE                             R9 R4
       61 MOVE                             R10 R5
       62 NAMECALL                         R7 R7 K14 ["containsPoint"]
       64 CALL                             R7 3 1
       65 GETUPVAL                         R8 0
       66 MOVE                             R10 R4
       67 MOVE                             R11 R6
       68 NAMECALL                         R8 R8 K14 ["containsPoint"]
       70 CALL                             R8 3 1
       71 GETIMPORT                        R9 K7 [Vector2.new]
       73 LOADN                            R10 1
       74 LOADK                            R11 K15 [0.5]
       75 CALL                             R9 2 1
       76 GETIMPORT                        R10 K7 [Vector2.new]
       78 LOADN                            R11 0
       79 LOADK                            R12 K15 [0.5]
       80 CALL                             R10 2 1
       81 LOADNIL                          R11
       82 JUMPIFNOT                        R7 ; [+76]
       83 JUMPIFNOT                        R8 ; [+75]
       84 GETTABLEKS                       R13 R1 K4 ["AbsolutePosition"]
       86 GETTABLEKS                       R13 R13 K8 ["X"]
       88 GETTABLEKS                       R14 R2 K4 ["AbsolutePosition"]
       90 GETTABLEKS                       R14 R14 K8 ["X"]
       92 SUB                              R12 R13 R14
       93 GETTABLEKS                       R15 R1 K4 ["AbsolutePosition"]
       95 GETTABLEKS                       R15 R15 K8 ["X"]
       97 GETTABLEKS                       R16 R1 K5 ["AbsoluteSize"]
       99 GETTABLEKS                       R16 R16 K8 ["X"]
      101 ADD                              R14 R15 R16
      102 GETTABLEKS                       R16 R2 K4 ["AbsolutePosition"]
      104 GETTABLEKS                       R16 R16 K8 ["X"]
      106 GETTABLEKS                       R17 R2 K5 ["AbsoluteSize"]
      108 GETTABLEKS                       R17 R17 K8 ["X"]
      110 ADD                              R15 R16 R17
      111 SUB                              R13 R15 R14
      112 FASTCALL2                        MATH_MIN R12 R13 ; [+5]
      114 MOVE                             R15 R12
      115 MOVE                             R16 R13
      116 GETIMPORT                        R14 K17 [math.min]
      118 CALL                             R14 2 1
      119 MOVE                             R11 R14
      120 GETIMPORT                        R14 K19 [UDim2.new]
      122 LOADN                            R15 0
      123 MOVE                             R16 R11
      124 LOADN                            R17 0
      125 LOADN                            R18 2
      126 CALL                             R14 4 1
      127 SETTABLEKS                       R14 R3 K20 ["Size"]
      129 JUMPIFNOTLE                      R12 R13 ; [+15]
      131 SETTABLEKS                       R9 R3 K21 ["AnchorPoint"]
      133 GETIMPORT                        R14 K19 [UDim2.new]
      135 LOADN                            R15 0
      136 GETTABLEKS                       R16 R5 K8 ["X"]
      138 LOADN                            R17 0
      139 GETTABLEKS                       R18 R5 K9 ["Y"]
      141 CALL                             R14 4 1
      142 SETTABLEKS                       R14 R3 K22 ["Position"]
      144 JUMP                             ; [+94]
      145 SETTABLEKS                       R10 R3 K21 ["AnchorPoint"]
      147 GETIMPORT                        R14 K19 [UDim2.new]
      149 LOADN                            R15 0
      150 GETTABLEKS                       R16 R6 K8 ["X"]
      152 LOADN                            R17 0
      153 GETTABLEKS                       R18 R6 K9 ["Y"]
      155 CALL                             R14 4 1
      156 SETTABLEKS                       R14 R3 K22 ["Position"]
      158 JUMP                             ; [+80]
      159 JUMPIFNOT                        R7 ; [+32]
      160 SETTABLEKS                       R9 R3 K21 ["AnchorPoint"]
      162 GETIMPORT                        R12 K19 [UDim2.new]
      164 LOADN                            R13 0
      165 GETTABLEKS                       R14 R5 K8 ["X"]
      167 LOADN                            R15 0
      168 GETTABLEKS                       R16 R5 K9 ["Y"]
      170 CALL                             R12 4 1
      171 SETTABLEKS                       R12 R3 K22 ["Position"]
      173 GETTABLEKS                       R12 R1 K4 ["AbsolutePosition"]
      175 GETTABLEKS                       R12 R12 K8 ["X"]
      177 GETTABLEKS                       R13 R2 K4 ["AbsolutePosition"]
      179 GETTABLEKS                       R13 R13 K8 ["X"]
      181 SUB                              R11 R12 R13
      182 GETIMPORT                        R12 K19 [UDim2.new]
      184 LOADN                            R13 0
      185 MOVE                             R14 R11
      186 LOADN                            R15 0
      187 LOADN                            R16 2
      188 CALL                             R12 4 1
      189 SETTABLEKS                       R12 R3 K20 ["Size"]
      191 JUMP                             ; [+47]
      192 JUMPIFNOT                        R8 ; [+42]
      193 SETTABLEKS                       R10 R3 K21 ["AnchorPoint"]
      195 GETIMPORT                        R12 K19 [UDim2.new]
      197 LOADN                            R13 0
      198 GETTABLEKS                       R14 R6 K8 ["X"]
      200 LOADN                            R15 0
      201 GETTABLEKS                       R16 R6 K9 ["Y"]
      203 CALL                             R12 4 1
      204 SETTABLEKS                       R12 R3 K22 ["Position"]
      206 GETTABLEKS                       R13 R1 K4 ["AbsolutePosition"]
      208 GETTABLEKS                       R13 R13 K8 ["X"]
      210 GETTABLEKS                       R14 R1 K5 ["AbsoluteSize"]
      212 GETTABLEKS                       R14 R14 K8 ["X"]
      214 ADD                              R12 R13 R14
      215 GETTABLEKS                       R14 R2 K4 ["AbsolutePosition"]
      217 GETTABLEKS                       R14 R14 K8 ["X"]
      219 GETTABLEKS                       R15 R2 K5 ["AbsoluteSize"]
      221 GETTABLEKS                       R15 R15 K8 ["X"]
      223 ADD                              R13 R14 R15
      224 SUB                              R11 R13 R12
      225 GETIMPORT                        R12 K19 [UDim2.new]
      227 LOADN                            R13 0
      228 MOVE                             R14 R11
      229 LOADN                            R15 0
      230 LOADN                            R16 2
      231 CALL                             R12 4 1
      232 SETTABLEKS                       R12 R3 K20 ["Size"]
      234 JUMP                             ; [+4]
      235 LOADB                            R12 0
      236 SETTABLEKS                       R12 R0 K23 ["m_canShow"]
      238 RETURN                           R0 0
      239 LOADB                            R12 1
      240 SETTABLEKS                       R12 R0 K23 ["m_canShow"]
      242 MOVE                             R12 R11
      243 GETTABLEKS                       R13 R0 K24 ["m_distanceBox"]
      245 LOADK                            R15 K25 ["%d"]
      246 MOVE                             R17 R12
      247 NAMECALL                         R15 R15 K26 ["format"]
      249 CALL                             R15 2 -1
      250 NAMECALL                         R13 R13 K27 ["setText"]
      252 CALL                             R13 -1 0
      253 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["m_distanceFrame"]
        2 GETIMPORT                        R4 K3 [Rect.new]
        4 GETTABLEKS                       R5 R2 K4 ["AbsolutePosition"]
        6 GETTABLEKS                       R7 R2 K4 ["AbsolutePosition"]
        8 GETTABLEKS                       R8 R2 K5 ["AbsoluteSize"]
       10 ADD                              R6 R7 R8
       11 CALL                             R4 2 1
       12 GETIMPORT                        R5 K7 [Vector2.new]
       14 GETTABLEKS                       R8 R1 K4 ["AbsolutePosition"]
       16 GETTABLEKS                       R8 R8 K8 ["X"]
       18 GETTABLEKS                       R10 R1 K5 ["AbsoluteSize"]
       20 GETTABLEKS                       R10 R10 K8 ["X"]
       22 DIVK                             R9 R10 K9 [2]
       23 ADD                              R7 R8 R9
       24 FASTCALL1                        MATH_FLOOR R7 ; [+2]
       25 GETIMPORT                        R6 K12 [math.floor]
       27 CALL                             R6 1 1
       28 GETTABLEKS                       R7 R1 K4 ["AbsolutePosition"]
       30 GETTABLEKS                       R7 R7 K13 ["Y"]
       32 CALL                             R5 2 1
       33 GETIMPORT                        R6 K7 [Vector2.new]
       35 GETTABLEKS                       R9 R1 K4 ["AbsolutePosition"]
       37 GETTABLEKS                       R9 R9 K8 ["X"]
       39 GETTABLEKS                       R11 R1 K5 ["AbsoluteSize"]
       41 GETTABLEKS                       R11 R11 K8 ["X"]
       43 DIVK                             R10 R11 K9 [2]
       44 ADD                              R8 R9 R10
       45 FASTCALL1                        MATH_FLOOR R8 ; [+2]
       46 GETIMPORT                        R7 K12 [math.floor]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R9 R1 K4 ["AbsolutePosition"]
       51 GETTABLEKS                       R9 R9 K13 ["Y"]
       53 GETTABLEKS                       R10 R1 K5 ["AbsoluteSize"]
       55 GETTABLEKS                       R10 R10 K13 ["Y"]
       57 ADD                              R8 R9 R10
       58 CALL                             R6 2 1
       59 GETUPVAL                         R7 0
       60 MOVE                             R9 R4
       61 MOVE                             R10 R5
       62 NAMECALL                         R7 R7 K14 ["containsPoint"]
       64 CALL                             R7 3 1
       65 GETUPVAL                         R8 0
       66 MOVE                             R10 R4
       67 MOVE                             R11 R6
       68 NAMECALL                         R8 R8 K14 ["containsPoint"]
       70 CALL                             R8 3 1
       71 GETIMPORT                        R9 K7 [Vector2.new]
       73 LOADK                            R10 K15 [0.5]
       74 LOADN                            R11 1
       75 CALL                             R9 2 1
       76 GETIMPORT                        R10 K7 [Vector2.new]
       78 LOADK                            R11 K15 [0.5]
       79 LOADN                            R12 0
       80 CALL                             R10 2 1
       81 LOADNIL                          R11
       82 JUMPIFNOT                        R7 ; [+76]
       83 JUMPIFNOT                        R8 ; [+75]
       84 GETTABLEKS                       R13 R1 K4 ["AbsolutePosition"]
       86 GETTABLEKS                       R13 R13 K13 ["Y"]
       88 GETTABLEKS                       R14 R2 K4 ["AbsolutePosition"]
       90 GETTABLEKS                       R14 R14 K13 ["Y"]
       92 SUB                              R12 R13 R14
       93 GETTABLEKS                       R15 R1 K4 ["AbsolutePosition"]
       95 GETTABLEKS                       R15 R15 K13 ["Y"]
       97 GETTABLEKS                       R16 R1 K5 ["AbsoluteSize"]
       99 GETTABLEKS                       R16 R16 K13 ["Y"]
      101 ADD                              R14 R15 R16
      102 GETTABLEKS                       R16 R2 K4 ["AbsolutePosition"]
      104 GETTABLEKS                       R16 R16 K13 ["Y"]
      106 GETTABLEKS                       R17 R2 K5 ["AbsoluteSize"]
      108 GETTABLEKS                       R17 R17 K13 ["Y"]
      110 ADD                              R15 R16 R17
      111 SUB                              R13 R15 R14
      112 FASTCALL2                        MATH_MIN R12 R13 ; [+5]
      114 MOVE                             R15 R12
      115 MOVE                             R16 R13
      116 GETIMPORT                        R14 K17 [math.min]
      118 CALL                             R14 2 1
      119 MOVE                             R11 R14
      120 GETIMPORT                        R14 K19 [UDim2.new]
      122 LOADN                            R15 0
      123 LOADN                            R16 2
      124 LOADN                            R17 0
      125 MOVE                             R18 R11
      126 CALL                             R14 4 1
      127 SETTABLEKS                       R14 R3 K20 ["Size"]
      129 JUMPIFNOTLE                      R12 R13 ; [+15]
      131 SETTABLEKS                       R9 R3 K21 ["AnchorPoint"]
      133 GETIMPORT                        R14 K19 [UDim2.new]
      135 LOADN                            R15 0
      136 GETTABLEKS                       R16 R5 K8 ["X"]
      138 LOADN                            R17 0
      139 GETTABLEKS                       R18 R5 K13 ["Y"]
      141 CALL                             R14 4 1
      142 SETTABLEKS                       R14 R3 K22 ["Position"]
      144 JUMP                             ; [+100]
      145 SETTABLEKS                       R10 R3 K21 ["AnchorPoint"]
      147 GETIMPORT                        R14 K19 [UDim2.new]
      149 LOADN                            R15 0
      150 GETTABLEKS                       R16 R6 K8 ["X"]
      152 LOADN                            R17 0
      153 GETTABLEKS                       R18 R6 K13 ["Y"]
      155 CALL                             R14 4 1
      156 SETTABLEKS                       R14 R3 K22 ["Position"]
      158 JUMP                             ; [+86]
      159 JUMPIFNOT                        R7 ; [+35]
      160 LOADB                            R12 1
      161 SETTABLEKS                       R12 R3 K23 ["Visible"]
      163 SETTABLEKS                       R9 R3 K21 ["AnchorPoint"]
      165 GETIMPORT                        R12 K19 [UDim2.new]
      167 LOADN                            R13 0
      168 GETTABLEKS                       R14 R5 K8 ["X"]
      170 LOADN                            R15 0
      171 GETTABLEKS                       R16 R5 K13 ["Y"]
      173 CALL                             R12 4 1
      174 SETTABLEKS                       R12 R3 K22 ["Position"]
      176 GETTABLEKS                       R12 R1 K4 ["AbsolutePosition"]
      178 GETTABLEKS                       R12 R12 K13 ["Y"]
      180 GETTABLEKS                       R13 R2 K4 ["AbsolutePosition"]
      182 GETTABLEKS                       R13 R13 K13 ["Y"]
      184 SUB                              R11 R12 R13
      185 GETIMPORT                        R12 K19 [UDim2.new]
      187 LOADN                            R13 0
      188 LOADN                            R14 2
      189 LOADN                            R15 0
      190 MOVE                             R16 R11
      191 CALL                             R12 4 1
      192 SETTABLEKS                       R12 R3 K20 ["Size"]
      194 JUMP                             ; [+50]
      195 JUMPIFNOT                        R8 ; [+45]
      196 LOADB                            R12 1
      197 SETTABLEKS                       R12 R3 K23 ["Visible"]
      199 SETTABLEKS                       R10 R3 K21 ["AnchorPoint"]
      201 GETIMPORT                        R12 K19 [UDim2.new]
      203 LOADN                            R13 0
      204 GETTABLEKS                       R14 R6 K8 ["X"]
      206 LOADN                            R15 0
      207 GETTABLEKS                       R16 R6 K13 ["Y"]
      209 CALL                             R12 4 1
      210 SETTABLEKS                       R12 R3 K22 ["Position"]
      212 GETTABLEKS                       R13 R1 K4 ["AbsolutePosition"]
      214 GETTABLEKS                       R13 R13 K13 ["Y"]
      216 GETTABLEKS                       R14 R1 K5 ["AbsoluteSize"]
      218 GETTABLEKS                       R14 R14 K13 ["Y"]
      220 ADD                              R12 R13 R14
      221 GETTABLEKS                       R14 R2 K4 ["AbsolutePosition"]
      223 GETTABLEKS                       R14 R14 K13 ["Y"]
      225 GETTABLEKS                       R15 R2 K5 ["AbsoluteSize"]
      227 GETTABLEKS                       R15 R15 K13 ["Y"]
      229 ADD                              R13 R14 R15
      230 SUB                              R11 R13 R12
      231 GETIMPORT                        R12 K19 [UDim2.new]
      233 LOADN                            R13 0
      234 LOADN                            R14 2
      235 LOADN                            R15 0
      236 MOVE                             R16 R11
      237 CALL                             R12 4 1
      238 SETTABLEKS                       R12 R3 K20 ["Size"]
      240 JUMP                             ; [+4]
      241 LOADB                            R12 0
      242 SETTABLEKS                       R12 R0 K24 ["m_canShow"]
      244 RETURN                           R0 0
      245 LOADB                            R12 1
      246 SETTABLEKS                       R12 R0 K24 ["m_canShow"]
      248 MOVE                             R12 R11
      249 GETTABLEKS                       R13 R0 K25 ["m_distanceBox"]
      251 LOADK                            R15 K26 ["%d"]
      252 MOVE                             R17 R12
      253 NAMECALL                         R15 R15 K27 ["format"]
      255 CALL                             R15 2 -1
      256 NAMECALL                         R13 R13 K28 ["setText"]
      258 CALL                             R13 -1 0
      259 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R4 K0 ["GuiBase2d"]
        1 NAMECALL                         R2 R1 K1 ["FindFirstAncestorWhichIsA"]
        3 CALL                             R2 2 1
        4 GETTABLEKS                       R3 R0 K2 ["m_axis"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["X"]
        9 JUMPIFNOTEQ                      R3 R4 ; [+7]
       11 GETUPVAL                         R3 1
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 MOVE                             R6 R2
       15 CALL                             R3 3 0
       16 RETURN                           R0 0
       17 GETTABLEKS                       R3 R0 K2 ["m_axis"]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K4 ["Y"]
       22 JUMPIFNOTEQ                      R3 R4 ; [+7]
       24 GETUPVAL                         R3 2
       25 MOVE                             R4 R0
       26 MOVE                             R5 R1
       27 MOVE                             R6 R2
       28 CALL                             R3 3 0
       29 RETURN                           R0 0
       30 GETIMPORT                        R3 K6 [error]
       32 LOADK                            R4 K7 ["Could not update the DistanceLine. The axis must be either X or Y"]
       33 CALL                             R3 1 0
       34 RETURN                           R0 0

PROTO_13:
        0 JUMPIFNOT                        R1 ; [+7]
        1 GETTABLEKS                       R2 R0 K0 ["m_distanceFrame"]
        3 GETTABLEKS                       R3 R0 K1 ["m_canShow"]
        5 SETTABLEKS                       R3 R2 K2 ["Visible"]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R0 K0 ["m_distanceFrame"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K2 ["Visible"]
       13 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 GETIMPORT                        R1 K1 [require]
        5 GETIMPORT                        R2 K3 [script]
        7 GETTABLEKS                       R2 R2 K4 ["Parent"]
        9 GETTABLEKS                       R2 R2 K5 ["Enum"]
       11 GETTABLEKS                       R2 R2 K6 ["Axis"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K1 [require]
       16 GETIMPORT                        R3 K3 [script]
       18 GETTABLEKS                       R3 R3 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K7 ["CoreGuiManager"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K1 [require]
       25 GETIMPORT                        R4 K3 [script]
       27 GETTABLEKS                       R4 R4 K4 ["Parent"]
       29 GETTABLEKS                       R4 R4 K8 ["Log"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K1 [require]
       34 GETIMPORT                        R5 K3 [script]
       36 GETTABLEKS                       R5 R5 K4 ["Parent"]
       38 GETTABLEKS                       R5 R5 K9 ["RectUtility"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K1 [require]
       43 GETIMPORT                        R6 K3 [script]
       45 GETTABLEKS                       R6 R6 K4 ["Parent"]
       47 GETTABLEKS                       R6 R6 K10 ["ValueBox"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K13 [Color3.fromRGB]
       52 LOADN                            R7 255
       53 LOADN                            R8 205
       54 LOADN                            R9 0
       55 CALL                             R6 3 1
       56 DUPCLOSURE                       R7 K14 [PROTO_1]
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R1
       60 DUPCLOSURE                       R8 K15 [PROTO_2]
       61 CAPTURE                          VAL R5
       62 DUPCLOSURE                       R9 K16 [PROTO_3]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R0
       66 SETTABLEKS                       R9 R0 K17 ["new"]
       68 SETTABLEKS                       R0 R0 K18 ["__index"]
       70 DUPCLOSURE                       R9 K19 [PROTO_4]
       71 SETTABLEKS                       R9 R0 K20 ["destroy"]
       73 DUPCLOSURE                       R9 K21 [PROTO_5]
       74 DUPCLOSURE                       R10 K22 [PROTO_6]
       75 DUPCLOSURE                       R11 K23 [PROTO_7]
       76 DUPCLOSURE                       R12 K24 [PROTO_8]
       77 DUPCLOSURE                       R13 K25 [PROTO_9]
       78 DUPCLOSURE                       R14 K26 [PROTO_10]
       79 CAPTURE                          VAL R4
       80 DUPCLOSURE                       R15 K27 [PROTO_11]
       81 CAPTURE                          VAL R4
       82 DUPCLOSURE                       R16 K28 [PROTO_12]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R14
       85 CAPTURE                          VAL R15
       86 SETTABLEKS                       R16 R0 K29 ["update"]
       88 DUPCLOSURE                       R16 K30 [PROTO_13]
       89 SETTABLEKS                       R16 R0 K31 ["setVisible"]
       91 RETURN                           R0 1
