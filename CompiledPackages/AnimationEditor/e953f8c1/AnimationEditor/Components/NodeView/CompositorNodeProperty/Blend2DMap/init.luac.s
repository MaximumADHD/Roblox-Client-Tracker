PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSize"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K1 ["observeZoomRatio"]
        8 MOVE                             R3 R0
        9 CALL                             R2 1 1
       10 JUMPIFEQKNIL                     R1 ; [+4]
       12 LOADN                            R3 0
       13 JUMPIFNOTLE                      R2 R3 ; [+3]
       15 LOADN                            R3 0
       16 RETURN                           R3 1
       17 GETTABLEKS                       R4 R1 K2 ["X"]
       19 DIV                              R3 R4 R2
       20 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSize"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 LOADB                            R2 0
       11 JUMPIFEQKNIL                     R1 ; [+14]
       13 LOADB                            R2 0
       14 GETTABLEKS                       R3 R1 K1 ["X"]
       16 LOADN                            R4 0
       17 JUMPIFNOTLT                      R4 R3 ; [+8]
       19 GETTABLEKS                       R3 R1 K2 ["Y"]
       21 LOADN                            R4 0
       22 JUMPIFLT                         R4 R3 ; [+2]
       24 LOADB                            R2 0 +1
       25 LOADB                            R2 1
       26 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["InputMode"]
        3 GETIMPORT                        R1 K4 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
        5 JUMPIFNOTEQ                      R0 R1 ; [+8]
        7 GETUPVAL                         R0 0
        8 GETTABLEKS                       R0 R0 K5 ["Position"]
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K6 ["Pins"]
       13 RETURN                           R0 2
       14 GETUPVAL                         R0 1
       15 GETTABLEKS                       R0 R0 K7 ["toCartesian"]
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K5 ["Position"]
       20 JUMPIF                           R1 ; [+5]
       21 GETIMPORT                        R1 K10 [Vector2.new]
       23 LOADN                            R2 0
       24 LOADN                            R3 0
       25 CALL                             R1 2 1
       26 CALL                             R0 1 1
       27 NEWTABLE                         R1 0 0
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K6 ["Pins"]
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K7 ["toCartesian"]
       38 MOVE                             R8 R6
       39 CALL                             R7 1 1
       40 SETTABLE                         R7 R1 R5
       41 FORGLOOP                         R2 2 ; [-7]
       43 RETURN                           R0 2

PROTO_5:
        0 GETTABLEKS                       R5 R1 K0 ["Y"]
        2 FASTCALL1                        MATH_ABS R5 ; [+2]
        3 GETIMPORT                        R4 K3 [math.abs]
        5 CALL                             R4 1 1
        6 FASTCALL2                        MATH_MAX R0 R4 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K5 [math.max]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["MaxRadius"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K1 ["InputMode"]
        9 GETIMPORT                        R1 K5 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       11 JUMPIFNOTEQ                      R0 R1 ; [+3]
       13 LOADN                            R0 0
       14 RETURN                           R0 1
       15 GETUPVAL                         R0 2
       16 GETTABLEKS                       R0 R0 K6 ["reduce"]
       18 GETUPVAL                         R1 1
       19 GETTABLEKS                       R1 R1 K7 ["Pins"]
       21 DUPCLOSURE                       R2 K8 [PROTO_5]
       22 LOADN                            R3 0
       23 CALL                             R0 3 1
       24 JUMPIFNOTEQKN                    R0 K9 [0] ; [+2]
       26 LOADN                            R0 1
       27 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["Extents"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["GraphRect"]
        8 RETURN                           R0 2
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["current"]
       12 JUMPIFNOT                        R0 ; [+14]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K2 ["current"]
       16 GETTABLEKS                       R0 R0 K3 ["X"]
       18 JUMPIFEQKN                       R0 K4 [0] ; [+8]
       20 GETUPVAL                         R0 1
       21 GETTABLEKS                       R0 R0 K2 ["current"]
       23 GETTABLEKS                       R0 R0 K5 ["Y"]
       25 JUMPIFNOTEQKN                    R0 K4 [0] ; [+4]
       27 GETUPVAL                         R0 2
       28 GETUPVAL                         R1 2
       29 RETURN                           R0 2
       30 LOADNIL                          R0
       31 LOADNIL                          R1
       32 GETIMPORT                        R2 K8 [Vector2.new]
       34 LOADN                            R3 -1
       35 LOADN                            R4 -1
       36 CALL                             R2 2 1
       37 MOVE                             R0 R2
       38 GETIMPORT                        R2 K8 [Vector2.new]
       40 LOADN                            R3 1
       41 LOADN                            R4 1
       42 CALL                             R2 2 1
       43 MOVE                             R1 R2
       44 GETUPVAL                         R2 3
       45 GETTABLEKS                       R2 R2 K9 ["InputMode"]
       47 GETIMPORT                        R3 K13 [Enum.AnimationNodeBlend2DInputMode.Polar]
       49 JUMPIFNOTEQ                      R2 R3 ; [+16]
       51 GETIMPORT                        R2 K8 [Vector2.new]
       53 GETUPVAL                         R4 4
       54 MINUS                            R3 R4
       55 GETUPVAL                         R5 4
       56 MINUS                            R4 R5
       57 CALL                             R2 2 1
       58 MOVE                             R0 R2
       59 GETIMPORT                        R2 K8 [Vector2.new]
       61 GETUPVAL                         R3 4
       62 GETUPVAL                         R4 4
       63 CALL                             R2 2 1
       64 MOVE                             R1 R2
       65 JUMP                             ; [+131]
       66 GETUPVAL                         R3 5
       67 LENGTH                           R2 R3
       68 LOADN                            R3 0
       69 JUMPIFNOTLT                      R3 R2 ; [+127]
       71 GETIMPORT                        R2 K8 [Vector2.new]
       73 LOADK                            R3 K14 [∞]
       74 LOADK                            R4 K14 [∞]
       75 CALL                             R2 2 1
       76 MOVE                             R0 R2
       77 GETIMPORT                        R2 K8 [Vector2.new]
       79 LOADK                            R3 K15 [-∞]
       80 LOADK                            R4 K15 [-∞]
       81 CALL                             R2 2 1
       82 MOVE                             R1 R2
       83 GETUPVAL                         R2 5
       84 LOADNIL                          R3
       85 LOADNIL                          R4
       86 FORGPREP                         R2
       87 GETIMPORT                        R7 K8 [Vector2.new]
       89 GETTABLEKS                       R9 R0 K3 ["X"]
       91 GETTABLEKS                       R10 R6 K3 ["X"]
       93 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       95 GETIMPORT                        R8 K18 [math.min]
       97 CALL                             R8 2 1
       98 GETTABLEKS                       R10 R0 K5 ["Y"]
      100 GETTABLEKS                       R11 R6 K5 ["Y"]
      102 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
      104 GETIMPORT                        R9 K18 [math.min]
      106 CALL                             R9 2 1
      107 CALL                             R7 2 1
      108 MOVE                             R0 R7
      109 GETIMPORT                        R7 K8 [Vector2.new]
      111 GETTABLEKS                       R9 R1 K3 ["X"]
      113 GETTABLEKS                       R10 R6 K3 ["X"]
      115 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
      117 GETIMPORT                        R8 K20 [math.max]
      119 CALL                             R8 2 1
      120 GETTABLEKS                       R10 R1 K5 ["Y"]
      122 GETTABLEKS                       R11 R6 K5 ["Y"]
      124 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
      126 GETIMPORT                        R9 K20 [math.max]
      128 CALL                             R9 2 1
      129 CALL                             R7 2 1
      130 MOVE                             R1 R7
      131 FORGLOOP                         R2 2 ; [-45]
      133 GETTABLEKS                       R2 R0 K3 ["X"]
      135 GETTABLEKS                       R3 R1 K3 ["X"]
      137 JUMPIFNOTEQ                      R2 R3 ; [+27]
      139 GETIMPORT                        R2 K8 [Vector2.new]
      141 GETTABLEKS                       R4 R0 K3 ["X"]
      143 GETUPVAL                         R6 2
      144 GETTABLEKS                       R6 R6 K22 ["Width"]
      146 DIVK                             R5 R6 K21 [2]
      147 SUB                              R3 R4 R5
      148 GETTABLEKS                       R4 R0 K5 ["Y"]
      150 CALL                             R2 2 1
      151 MOVE                             R0 R2
      152 GETIMPORT                        R2 K8 [Vector2.new]
      154 GETTABLEKS                       R4 R1 K3 ["X"]
      156 GETUPVAL                         R6 2
      157 GETTABLEKS                       R6 R6 K22 ["Width"]
      159 DIVK                             R5 R6 K21 [2]
      160 ADD                              R3 R4 R5
      161 GETTABLEKS                       R4 R1 K5 ["Y"]
      163 CALL                             R2 2 1
      164 MOVE                             R1 R2
      165 GETTABLEKS                       R2 R0 K5 ["Y"]
      167 GETTABLEKS                       R3 R1 K5 ["Y"]
      169 JUMPIFNOTEQ                      R2 R3 ; [+27]
      171 GETIMPORT                        R2 K8 [Vector2.new]
      173 GETTABLEKS                       R3 R0 K3 ["X"]
      175 GETTABLEKS                       R5 R0 K5 ["Y"]
      177 GETUPVAL                         R7 2
      178 GETTABLEKS                       R7 R7 K23 ["Height"]
      180 DIVK                             R6 R7 K21 [2]
      181 SUB                              R4 R5 R6
      182 CALL                             R2 2 1
      183 MOVE                             R0 R2
      184 GETIMPORT                        R2 K8 [Vector2.new]
      186 GETTABLEKS                       R3 R1 K3 ["X"]
      188 GETTABLEKS                       R5 R1 K5 ["Y"]
      190 GETUPVAL                         R7 2
      191 GETTABLEKS                       R7 R7 K23 ["Height"]
      193 DIVK                             R6 R7 K21 [2]
      194 ADD                              R4 R5 R6
      195 CALL                             R2 2 1
      196 MOVE                             R1 R2
      197 ADD                              R3 R0 R1
      198 DIVK                             R2 R3 K21 [2]
      199 SUB                              R5 R1 R0
      200 GETUPVAL                         R7 1
      201 GETTABLEKS                       R7 R7 K2 ["current"]
      203 GETTABLEKS                       R7 R7 K3 ["X"]
      205 LOADN                            R9 2
      206 GETUPVAL                         R10 6
      207 MUL                              R8 R9 R10
      208 ADD                              R6 R7 R8
      209 MUL                              R4 R5 R6
      210 GETUPVAL                         R5 1
      211 GETTABLEKS                       R5 R5 K2 ["current"]
      213 GETTABLEKS                       R5 R5 K3 ["X"]
      215 DIV                              R3 R4 R5
      216 GETIMPORT                        R4 K25 [Rect.new]
      218 MOVE                             R5 R0
      219 MOVE                             R6 R1
      220 CALL                             R4 2 1
      221 GETIMPORT                        R5 K25 [Rect.new]
      223 DIVK                             R7 R3 K21 [2]
      224 SUB                              R6 R2 R7
      225 DIVK                             R8 R3 K21 [2]
      226 ADD                              R7 R2 R8
      227 CALL                             R5 2 -1
      228 RETURN                           R4 -1

PROTO_8:
        0 JUMPIFNOT                        R0 ; [+13]
        1 GETUPVAL                         R1 0
        2 DUPTABLE                         R2 K3 [{"Extents", "GraphRect", "MaxRadius"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["Extents"]
        6 GETUPVAL                         R3 2
        7 SETTABLEKS                       R3 R2 K1 ["GraphRect"]
        9 GETUPVAL                         R3 3
       10 SETTABLEKS                       R3 R2 K2 ["MaxRadius"]
       12 CALL                             R1 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R1 0
       15 LOADNIL                          R2
       16 CALL                             R1 1 0
       17 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["current"]
        7 JUMPIF                           R2 ; [+3]
        8 GETIMPORT                        R2 K3 [Vector2.zero]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R4 R0 K4 ["X"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K0 ["current"]
       16 GETTABLEKS                       R5 R5 K4 ["X"]
       18 SUB                              R3 R4 R5
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R4 R4 K0 ["current"]
       22 GETTABLEKS                       R4 R4 K4 ["X"]
       24 DIV                              R2 R3 R4
       25 GETTABLEKS                       R5 R0 K5 ["Y"]
       27 GETUPVAL                         R6 1
       28 GETTABLEKS                       R6 R6 K0 ["current"]
       30 GETTABLEKS                       R6 R6 K5 ["Y"]
       32 SUB                              R4 R5 R6
       33 GETUPVAL                         R5 0
       34 GETTABLEKS                       R5 R5 K0 ["current"]
       36 GETTABLEKS                       R5 R5 K5 ["Y"]
       38 DIV                              R3 R4 R5
       39 GETUPVAL                         R5 2
       40 GETTABLEKS                       R5 R5 K6 ["Min"]
       42 GETTABLEKS                       R5 R5 K4 ["X"]
       44 GETUPVAL                         R7 2
       45 GETTABLEKS                       R7 R7 K7 ["Width"]
       47 MUL                              R6 R2 R7
       48 ADD                              R4 R5 R6
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K8 ["Max"]
       52 GETTABLEKS                       R6 R6 K5 ["Y"]
       54 GETUPVAL                         R8 2
       55 GETTABLEKS                       R8 R8 K9 ["Height"]
       57 MUL                              R7 R3 R8
       58 SUB                              R5 R6 R7
       59 GETUPVAL                         R6 3
       60 GETTABLEKS                       R6 R6 K10 ["InputMode"]
       62 GETIMPORT                        R7 K14 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       64 JUMPIFNOTEQ                      R6 R7 ; [+79]
       66 GETUPVAL                         R6 4
       67 GETTABLEKS                       R6 R6 K15 ["isShiftPressed"]
       69 CALL                             R6 0 1
       70 JUMPIFNOT                        R6 ; [+32]
       71 GETUPVAL                         R6 5
       72 GETTABLEKS                       R6 R6 K16 ["roundStep"]
       74 MOVE                             R7 R4
       75 GETUPVAL                         R8 6
       76 GETTABLEKS                       R8 R8 K6 ["Min"]
       78 GETTABLEKS                       R8 R8 K4 ["X"]
       80 GETUPVAL                         R9 6
       81 GETTABLEKS                       R9 R9 K8 ["Max"]
       83 GETTABLEKS                       R9 R9 K4 ["X"]
       85 CALL                             R6 3 1
       86 MOVE                             R4 R6
       87 GETUPVAL                         R6 5
       88 GETTABLEKS                       R6 R6 K16 ["roundStep"]
       90 MOVE                             R7 R5
       91 GETUPVAL                         R8 6
       92 GETTABLEKS                       R8 R8 K6 ["Min"]
       94 GETTABLEKS                       R8 R8 K5 ["Y"]
       96 GETUPVAL                         R9 6
       97 GETTABLEKS                       R9 R9 K8 ["Max"]
       99 GETTABLEKS                       R9 R9 K5 ["Y"]
      101 CALL                             R6 3 1
      102 MOVE                             R5 R6
      103 JUMPIFNOT                        R1 ; [+34]
      104 GETUPVAL                         R8 6
      105 GETTABLEKS                       R8 R8 K6 ["Min"]
      107 GETTABLEKS                       R8 R8 K4 ["X"]
      109 GETUPVAL                         R9 6
      110 GETTABLEKS                       R9 R9 K8 ["Max"]
      112 GETTABLEKS                       R9 R9 K4 ["X"]
      114 FASTCALL3                        MATH_CLAMP R4 R8 R9
      116 MOVE                             R7 R4
      117 GETIMPORT                        R6 K19 [math.clamp]
      119 CALL                             R6 3 1
      120 MOVE                             R4 R6
      121 GETUPVAL                         R8 6
      122 GETTABLEKS                       R8 R8 K6 ["Min"]
      124 GETTABLEKS                       R8 R8 K5 ["Y"]
      126 GETUPVAL                         R9 6
      127 GETTABLEKS                       R9 R9 K8 ["Max"]
      129 GETTABLEKS                       R9 R9 K5 ["Y"]
      131 FASTCALL3                        MATH_CLAMP R5 R8 R9
      133 MOVE                             R7 R5
      134 GETIMPORT                        R6 K19 [math.clamp]
      136 CALL                             R6 3 1
      137 MOVE                             R5 R6
      138 GETIMPORT                        R6 K21 [Vector2.new]
      140 MOVE                             R7 R4
      141 MOVE                             R8 R5
      142 CALL                             R6 2 -1
      143 RETURN                           R6 -1
      144 GETUPVAL                         R6 3
      145 GETTABLEKS                       R6 R6 K10 ["InputMode"]
      147 GETIMPORT                        R7 K23 [Enum.AnimationNodeBlend2DInputMode.Polar]
      149 JUMPIFNOTEQ                      R6 R7 ; [+51]
      151 GETIMPORT                        R6 K21 [Vector2.new]
      153 MOVE                             R7 R4
      154 MOVE                             R8 R5
      155 CALL                             R6 2 1
      156 GETTABLEKS                       R6 R6 K24 ["Magnitude"]
      158 FASTCALL2                        MATH_ATAN2 R4 R5 ; [+5]
      160 MOVE                             R9 R4
      161 MOVE                             R10 R5
      162 GETIMPORT                        R8 K26 [math.atan2]
      164 CALL                             R8 2 1
      165 MINUS                            R7 R8
      166 GETUPVAL                         R8 4
      167 GETTABLEKS                       R8 R8 K15 ["isShiftPressed"]
      169 CALL                             R8 0 1
      170 JUMPIFNOT                        R8 ; [+14]
      171 GETUPVAL                         R8 5
      172 GETTABLEKS                       R8 R8 K16 ["roundStep"]
      174 MOVE                             R9 R6
      175 LOADN                            R10 0
      176 GETUPVAL                         R11 7
      177 CALL                             R8 3 1
      178 MOVE                             R6 R8
      179 DIVK                             R9 R7 K27 [0.785398163397448]
      180 FASTCALL1                        MATH_ROUND R9 ; [+2]
      181 GETIMPORT                        R8 K29 [math.round]
      183 CALL                             R8 1 1
      184 MULK                             R7 R8 K27 [0.785398163397448]
      185 JUMPIFNOT                        R1 ; [+9]
      186 LOADN                            R10 0
      187 GETUPVAL                         R11 7
      188 FASTCALL3                        MATH_CLAMP R6 R10 R11
      190 MOVE                             R9 R6
      191 GETIMPORT                        R8 K19 [math.clamp]
      193 CALL                             R8 3 1
      194 MOVE                             R6 R8
      195 GETIMPORT                        R8 K21 [Vector2.new]
      197 MOVE                             R9 R7
      198 MOVE                             R10 R6
      199 CALL                             R8 2 -1
      200 RETURN                           R8 -1
      201 GETIMPORT                        R6 K31 [error]
      203 LOADK                            R8 K32 ["Unknown input mode: "]
      204 GETUPVAL                         R10 3
      205 GETTABLEKS                       R10 R10 K10 ["InputMode"]
      207 FASTCALL1                        TOSTRING R10 ; [+2]
      208 GETIMPORT                        R9 K34 [tostring]
      210 CALL                             R9 1 1
      211 CONCAT                           R7 R8 R9
      212 CALL                             R6 1 0
      213 RETURN                           R0 0

PROTO_10:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+52]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["createElement"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K20 [{["AbsToMap"], ["Clamp"] = True, ["Color3"], ["Extents"], ["Image"] = "rbxasset://textures/AnimLibrary/BlendMapCursor.png", ["Index"] = 0, ["InputMode"], ["LockExtents"], ["MaxRadius"], ["Mode"], ["OnPinDragged"], ["Position"], ["ZIndex"] = 4, ["Size"] = 12}]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K1 ["AbsToMap"]
       13 GETUPVAL                         R4 4
       14 GETTABLEKS                       R4 R4 K21 ["Color"]
       16 GETTABLEKS                       R4 R4 K22 ["System"]
       18 GETTABLEKS                       R4 R4 K23 ["Warning"]
       20 GETTABLEKS                       R4 R4 K4 ["Color3"]
       22 SETTABLEKS                       R4 R3 K4 ["Color3"]
       24 GETUPVAL                         R4 5
       25 SETTABLEKS                       R4 R3 K5 ["Extents"]
       27 GETUPVAL                         R4 6
       28 GETTABLEKS                       R4 R4 K10 ["InputMode"]
       30 SETTABLEKS                       R4 R3 K10 ["InputMode"]
       32 GETUPVAL                         R4 7
       33 SETTABLEKS                       R4 R3 K11 ["LockExtents"]
       35 GETUPVAL                         R4 8
       36 SETTABLEKS                       R4 R3 K12 ["MaxRadius"]
       38 GETUPVAL                         R4 9
       39 GETTABLEKS                       R4 R4 K24 ["DRAGGABLE_PIN_MODES"]
       41 GETTABLEKS                       R4 R4 K25 ["Blend2D"]
       43 SETTABLEKS                       R4 R3 K13 ["Mode"]
       45 GETUPVAL                         R4 6
       46 GETTABLEKS                       R4 R4 K14 ["OnPinDragged"]
       48 SETTABLEKS                       R4 R3 K14 ["OnPinDragged"]
       50 GETUPVAL                         R4 0
       51 SETTABLEKS                       R4 R3 K15 ["Position"]
       53 CALL                             R1 2 1
       54 SETTABLEKS                       R1 R0 K26 ["current"]
       56 GETUPVAL                         R1 10
       57 LOADNIL                          R2
       58 LOADNIL                          R3
       59 FORGPREP                         R1
       60 LOADK                            R7 K27 ["point-"]
       61 FASTCALL1                        TOSTRING R4 ; [+3]
       62 MOVE                             R9 R4
       63 GETIMPORT                        R8 K29 [tostring]
       65 CALL                             R8 1 1
       66 CONCAT                           R6 R7 R8
       67 GETUPVAL                         R7 1
       68 GETTABLEKS                       R7 R7 K0 ["createElement"]
       70 GETUPVAL                         R8 2
       71 DUPTABLE                         R9 K34 [{["AbsToMap"], ["Clamp"] = False, ["Color3"], ["Extents"], ["Index"], ["InputMode"], ["Label"], ["LockExtents"], ["MaxRadius"], ["Mode"], ["OnPinDragged"], ["Position"], ["ZIndex"] = 3, ["Size"] = 8}]
       72 GETUPVAL                         R10 3
       73 SETTABLEKS                       R10 R9 K1 ["AbsToMap"]
       75 GETUPVAL                         R10 11
       76 SETTABLEKS                       R10 R9 K4 ["Color3"]
       78 GETUPVAL                         R10 5
       79 SETTABLEKS                       R10 R9 K5 ["Extents"]
       81 SETTABLEKS                       R4 R9 K8 ["Index"]
       83 GETUPVAL                         R10 6
       84 GETTABLEKS                       R10 R10 K10 ["InputMode"]
       86 SETTABLEKS                       R10 R9 K10 ["InputMode"]
       88 GETUPVAL                         R11 12
       89 CALL                             R11 0 1
       90 JUMPIFNOT                        R11 ; [+11]
       91 GETUPVAL                         R11 6
       92 GETTABLEKS                       R11 R11 K35 ["PinLabels"]
       94 JUMPIFNOT                        R11 ; [+5]
       95 GETUPVAL                         R11 6
       96 GETTABLEKS                       R11 R11 K35 ["PinLabels"]
       98 GETTABLE                         R10 R11 R4
       99 JUMP                             ; [+3]
      100 LOADNIL                          R10
      101 JUMP                             ; [+1]
      102 LOADNIL                          R10
      103 SETTABLEKS                       R10 R9 K31 ["Label"]
      105 GETUPVAL                         R10 7
      106 SETTABLEKS                       R10 R9 K11 ["LockExtents"]
      108 GETUPVAL                         R10 8
      109 SETTABLEKS                       R10 R9 K12 ["MaxRadius"]
      111 GETUPVAL                         R10 9
      112 GETTABLEKS                       R10 R10 K24 ["DRAGGABLE_PIN_MODES"]
      114 GETTABLEKS                       R10 R10 K25 ["Blend2D"]
      116 SETTABLEKS                       R10 R9 K13 ["Mode"]
      118 GETUPVAL                         R10 6
      119 GETTABLEKS                       R10 R10 K14 ["OnPinDragged"]
      121 SETTABLEKS                       R10 R9 K14 ["OnPinDragged"]
      123 SETTABLEKS                       R5 R9 K15 ["Position"]
      125 CALL                             R7 2 1
      126 SETTABLE                         R7 R0 R6
      127 FORGLOOP                         R1 2 ; [-68]
      129 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["beginUndoTransaction"]
        3 LOADK                            R3 K1 ["Blend2DMap Drag"]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 LOADB                            R4 1
        8 CALL                             R2 2 1
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["OnPinDragged"]
       12 JUMPIFNOT                        R3 ; [+6]
       13 GETUPVAL                         R3 2
       14 GETTABLEKS                       R3 R3 K2 ["OnPinDragged"]
       16 LOADN                            R4 0
       17 MOVE                             R5 R2
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 LOADB                            R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["OnPinDragged"]
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K0 ["OnPinDragged"]
       11 LOADN                            R4 0
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["finishUndoTransaction"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R1 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R2 K2 ["observeAbsoluteSize"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R5 R2 K3 ["observeAbsolutePosition"]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K4 ["useContext"]
       19 GETUPVAL                         R6 4
       20 GETTABLEKS                       R6 R6 K5 ["Context"]
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 3
       24 GETTABLEKS                       R6 R6 K4 ["useContext"]
       26 GETUPVAL                         R7 5
       27 GETTABLEKS                       R7 R7 K6 ["ModifierKeysContext"]
       29 GETTABLEKS                       R7 R7 K5 ["Context"]
       31 CALL                             R6 1 1
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K4 ["useContext"]
       35 GETUPVAL                         R8 5
       36 GETTABLEKS                       R8 R8 K7 ["ViewportRectContext"]
       38 GETTABLEKS                       R8 R8 K5 ["Context"]
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R7
       48 NEWTABLE                         R10 0 2
       50 GETTABLEKS                       R11 R2 K2 ["observeAbsoluteSize"]
       52 GETTABLEKS                       R12 R7 K9 ["observeZoomRatio"]
       54 SETLIST                          R10 R11 2 [1]
       56 CALL                             R8 2 1
       57 GETUPVAL                         R9 7
       58 GETTABLEKS                       R9 R9 K10 ["useSignalBinding"]
       60 MOVE                             R10 R8
       61 CALL                             R9 1 1
       62 GETUPVAL                         R10 3
       63 GETTABLEKS                       R10 R10 K8 ["useMemo"]
       65 NEWCLOSURE                       R11 P1
       66 CAPTURE                          UPVAL U6
       67 CAPTURE                          UPVAL U8
       68 CAPTURE                          VAL R2
       69 NEWTABLE                         R12 0 1
       71 GETTABLEKS                       R13 R2 K2 ["observeAbsoluteSize"]
       73 SETLIST                          R12 R13 1 [1]
       75 CALL                             R10 2 1
       76 GETUPVAL                         R11 7
       77 GETTABLEKS                       R11 R11 K11 ["useSignalState"]
       79 MOVE                             R12 R10
       80 CALL                             R11 1 1
       81 GETTABLEKS                       R12 R1 K12 ["Color"]
       83 GETTABLEKS                       R12 R12 K13 ["Stroke"]
       85 GETTABLEKS                       R12 R12 K14 ["Default"]
       87 GETTABLEKS                       R12 R12 K15 ["Color3"]
       89 GETTABLEKS                       R14 R1 K12 ["Color"]
       91 GETTABLEKS                       R14 R14 K16 ["Surface"]
       93 GETTABLEKS                       R14 R14 K17 ["Surface_0"]
       95 GETTABLEKS                       R14 R14 K15 ["Color3"]
       97 LOADK                            R15 K18 [0.75]
       98 NAMECALL                         R12 R12 K19 ["Lerp"]
      100 CALL                             R12 3 1
      101 GETTABLEKS                       R13 R1 K12 ["Color"]
      103 GETTABLEKS                       R13 R13 K13 ["Stroke"]
      105 GETTABLEKS                       R13 R13 K14 ["Default"]
      107 GETTABLEKS                       R13 R13 K15 ["Color3"]
      109 GETTABLEKS                       R15 R1 K12 ["Color"]
      111 GETTABLEKS                       R15 R15 K16 ["Surface"]
      113 GETTABLEKS                       R15 R15 K17 ["Surface_0"]
      115 GETTABLEKS                       R15 R15 K15 ["Color3"]
      117 LOADK                            R16 K20 [0.25]
      118 NAMECALL                         R13 R13 K19 ["Lerp"]
      120 CALL                             R13 3 1
      121 GETTABLEKS                       R14 R1 K12 ["Color"]
      123 GETTABLEKS                       R14 R14 K13 ["Stroke"]
      125 GETTABLEKS                       R14 R14 K14 ["Default"]
      127 GETTABLEKS                       R14 R14 K15 ["Color3"]
      129 GETTABLEKS                       R16 R1 K12 ["Color"]
      131 GETTABLEKS                       R16 R16 K16 ["Surface"]
      133 GETTABLEKS                       R16 R16 K17 ["Surface_0"]
      135 GETTABLEKS                       R16 R16 K15 ["Color3"]
      137 LOADK                            R17 K21 [0.6]
      138 NAMECALL                         R14 R14 K19 ["Lerp"]
      140 CALL                             R14 3 1
      141 GETUPVAL                         R15 3
      142 GETTABLEKS                       R15 R15 K22 ["useState"]
      144 LOADNIL                          R16
      145 CALL                             R15 1 2
      146 GETTABLEKS                       R18 R0 K24 ["Padding"]
      148 ORK                              R17 R18 K23 [15]
      149 GETUPVAL                         R18 3
      150 GETTABLEKS                       R18 R18 K8 ["useMemo"]
      152 NEWCLOSURE                       R19 P2
      153 CAPTURE                          VAL R0
      154 CAPTURE                          UPVAL U9
      155 NEWTABLE                         R20 0 3
      157 GETTABLEKS                       R21 R0 K25 ["Position"]
      159 GETTABLEKS                       R22 R0 K26 ["Pins"]
      161 GETTABLEKS                       R23 R0 K27 ["InputMode"]
      163 SETLIST                          R20 R21 3 [1]
      165 CALL                             R18 2 2
      166 GETUPVAL                         R20 3
      167 GETTABLEKS                       R20 R20 K8 ["useMemo"]
      169 NEWCLOSURE                       R21 P3
      170 CAPTURE                          VAL R15
      171 CAPTURE                          VAL R0
      172 CAPTURE                          UPVAL U10
      173 NEWTABLE                         R22 0 3
      175 MOVE                             R23 R15
      176 JUMPIFNOT                        R23 ; [+2]
      177 GETTABLEKS                       R23 R15 K28 ["MaxRadius"]
      179 GETTABLEKS                       R24 R0 K27 ["InputMode"]
      181 GETTABLEKS                       R25 R0 K26 ["Pins"]
      183 SETLIST                          R22 R23 3 [1]
      185 CALL                             R20 2 1
      186 GETUPVAL                         R21 3
      187 GETTABLEKS                       R21 R21 K8 ["useMemo"]
      189 NEWCLOSURE                       R22 P4
      190 CAPTURE                          VAL R15
      191 CAPTURE                          VAL R3
      192 CAPTURE                          UPVAL U11
      193 CAPTURE                          VAL R0
      194 CAPTURE                          VAL R20
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R17
      197 NEWTABLE                         R23 0 8
      199 MOVE                             R24 R15
      200 JUMPIFNOT                        R24 ; [+2]
      201 GETTABLEKS                       R24 R15 K29 ["Extents"]
      203 MOVE                             R25 R15
      204 JUMPIFNOT                        R25 ; [+2]
      205 GETTABLEKS                       R25 R15 K30 ["GraphRect"]
      207 MOVE                             R26 R19
      208 GETTABLEKS                       R27 R0 K27 ["InputMode"]
      210 MOVE                             R28 R20
      211 MOVE                             R29 R17
      212 GETTABLEKS                       R30 R3 K31 ["current"]
      214 MOVE                             R31 R11
      215 SETLIST                          R23 R24 8 [1]
      217 CALL                             R21 2 2
      218 GETUPVAL                         R23 3
      219 GETTABLEKS                       R23 R23 K32 ["useCallback"]
      221 NEWCLOSURE                       R24 P5
      222 CAPTURE                          VAL R16
      223 CAPTURE                          VAL R21
      224 CAPTURE                          VAL R22
      225 CAPTURE                          VAL R20
      226 NEWTABLE                         R25 0 3
      228 MOVE                             R26 R21
      229 MOVE                             R27 R22
      230 MOVE                             R28 R20
      231 SETLIST                          R25 R26 3 [1]
      233 CALL                             R23 2 1
      234 GETUPVAL                         R24 3
      235 GETTABLEKS                       R24 R24 K32 ["useCallback"]
      237 NEWCLOSURE                       R25 P6
      238 CAPTURE                          VAL R3
      239 CAPTURE                          VAL R4
      240 CAPTURE                          VAL R22
      241 CAPTURE                          VAL R0
      242 CAPTURE                          VAL R6
      243 CAPTURE                          UPVAL U9
      244 CAPTURE                          VAL R21
      245 CAPTURE                          VAL R20
      246 NEWTABLE                         R26 0 6
      248 MOVE                             R27 R21
      249 GETTABLEKS                       R28 R3 K31 ["current"]
      251 GETTABLEKS                       R29 R4 K31 ["current"]
      253 MOVE                             R30 R22
      254 GETTABLEKS                       R31 R0 K27 ["InputMode"]
      256 GETTABLEKS                       R32 R6 K33 ["isShiftPressed"]
      258 CALL                             R32 0 -1
      259 SETLIST                          R26 R27 -1 [1]
      261 CALL                             R24 2 1
      262 GETUPVAL                         R25 3
      263 GETTABLEKS                       R25 R25 K8 ["useMemo"]
      265 NEWCLOSURE                       R26 P7
      266 CAPTURE                          VAL R18
      267 CAPTURE                          UPVAL U3
      268 CAPTURE                          UPVAL U12
      269 CAPTURE                          VAL R24
      270 CAPTURE                          VAL R1
      271 CAPTURE                          VAL R21
      272 CAPTURE                          VAL R0
      273 CAPTURE                          VAL R23
      274 CAPTURE                          VAL R20
      275 CAPTURE                          UPVAL U13
      276 CAPTURE                          VAL R19
      277 CAPTURE                          VAL R14
      278 CAPTURE                          UPVAL U14
      279 NEWTABLE                         R27 0 8
      281 MOVE                             R28 R21
      282 MOVE                             R29 R23
      283 MOVE                             R30 R20
      284 MOVE                             R31 R18
      285 MOVE                             R32 R19
      286 GETTABLEKS                       R33 R0 K27 ["InputMode"]
      288 GETTABLEKS                       R34 R0 K34 ["OnPinDragged"]
      290 MOVE                             R35 R24
      291 SETLIST                          R27 R28 8 [1]
      293 CALL                             R25 2 1
      294 GETUPVAL                         R26 3
      295 GETTABLEKS                       R26 R26 K32 ["useCallback"]
      297 NEWCLOSURE                       R27 P8
      298 CAPTURE                          VAL R5
      299 CAPTURE                          VAL R24
      300 CAPTURE                          VAL R0
      301 NEWTABLE                         R28 0 3
      303 GETTABLEKS                       R29 R0 K34 ["OnPinDragged"]
      305 MOVE                             R30 R24
      306 MOVE                             R31 R5
      307 SETLIST                          R28 R29 3 [1]
      309 CALL                             R26 2 1
      310 GETUPVAL                         R27 3
      311 GETTABLEKS                       R27 R27 K32 ["useCallback"]
      313 NEWCLOSURE                       R28 P9
      314 CAPTURE                          VAL R24
      315 CAPTURE                          VAL R0
      316 NEWTABLE                         R29 0 2
      318 GETTABLEKS                       R30 R0 K34 ["OnPinDragged"]
      320 MOVE                             R31 R24
      321 SETLIST                          R29 R30 2 [1]
      323 CALL                             R27 2 1
      324 GETUPVAL                         R28 3
      325 GETTABLEKS                       R28 R28 K32 ["useCallback"]
      327 NEWCLOSURE                       R29 P10
      328 CAPTURE                          VAL R5
      329 NEWTABLE                         R30 0 3
      331 GETTABLEKS                       R31 R0 K34 ["OnPinDragged"]
      333 MOVE                             R32 R24
      334 MOVE                             R33 R5
      335 SETLIST                          R30 R31 3 [1]
      337 CALL                             R28 2 1
      338 GETUPVAL                         R29 3
      339 GETTABLEKS                       R29 R29 K35 ["createElement"]
      341 GETUPVAL                         R30 0
      342 GETTABLEKS                       R30 R30 K36 ["View"]
      344 DUPTABLE                         R31 K42 [{"Size", "tag", "LayoutOrder", "backgroundStyle", "ref"}]
      345 GETUPVAL                         R33 15
      346 JUMPIFNOT                        R33 ; [+5]
      347 DUPCLOSURE                       R34 K43 [PROTO_14]
      348 NAMECALL                         R32 R9 K44 ["map"]
      350 CALL                             R32 2 1
      351 JUMP                             ; [+1]
      352 LOADNIL                          R32
      353 SETTABLEKS                       R32 R31 K37 ["Size"]
      355 GETUPVAL                         R33 15
      356 JUMPIFNOT                        R33 ; [+2]
      357 LOADNIL                          R32
      358 JUMP                             ; [+1]
      359 LOADK                            R32 K45 ["size-full-full aspect-1-1"]
      360 SETTABLEKS                       R32 R31 K38 ["tag"]
      362 GETTABLEKS                       R32 R0 K39 ["LayoutOrder"]
      364 SETTABLEKS                       R32 R31 K39 ["LayoutOrder"]
      366 GETTABLEKS                       R32 R1 K12 ["Color"]
      368 GETTABLEKS                       R32 R32 K16 ["Surface"]
      370 GETTABLEKS                       R32 R32 K17 ["Surface_0"]
      372 SETTABLEKS                       R32 R31 K40 ["backgroundStyle"]
      374 GETTABLEKS                       R32 R2 K46 ["setFrame"]
      376 SETTABLEKS                       R32 R31 K41 ["ref"]
      378 DUPTABLE                         R32 K48 [{"Canvas"}]
      379 GETUPVAL                         R33 3
      380 GETTABLEKS                       R33 R33 K35 ["createElement"]
      382 GETUPVAL                         R34 16
      383 GETTABLEKS                       R34 R34 K47 ["Canvas"]
      385 DUPTABLE                         R35 K56 [{["Size"], ["GraphRect"], ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingBottom"], ["ViewportPaddingTop"], ["CanvasBackgroundTransparency"] = 1, ["ViewportBackgroundTransparency"] = 1}]
      386 GETIMPORT                        R36 K59 [UDim2.fromScale]
      388 LOADN                            R37 1
      389 LOADN                            R38 1
      390 CALL                             R36 2 1
      391 SETTABLEKS                       R36 R35 K37 ["Size"]
      393 SETTABLEKS                       R22 R35 K30 ["GraphRect"]
      395 GETIMPORT                        R36 K62 [UDim.new]
      397 LOADN                            R37 0
      398 LOADN                            R38 0
      399 CALL                             R36 2 1
      400 SETTABLEKS                       R36 R35 K49 ["ViewportPaddingLeft"]
      402 GETIMPORT                        R36 K62 [UDim.new]
      404 LOADN                            R37 0
      405 LOADN                            R38 0
      406 CALL                             R36 2 1
      407 SETTABLEKS                       R36 R35 K50 ["ViewportPaddingRight"]
      409 GETIMPORT                        R36 K62 [UDim.new]
      411 LOADN                            R37 0
      412 LOADN                            R38 0
      413 CALL                             R36 2 1
      414 SETTABLEKS                       R36 R35 K51 ["ViewportPaddingBottom"]
      416 GETIMPORT                        R36 K62 [UDim.new]
      418 LOADN                            R37 0
      419 LOADN                            R38 0
      420 CALL                             R36 2 1
      421 SETTABLEKS                       R36 R35 K52 ["ViewportPaddingTop"]
      423 DUPTABLE                         R36 K66 [{"Guides", "Points", "DragDetector"}]
      424 GETTABLEKS                       R38 R0 K27 ["InputMode"]
      426 GETIMPORT                        R39 K70 [Enum.AnimationNodeBlend2DInputMode.Polar]
      428 JUMPIFNOTEQ                      R38 R39 ; [+14]
      430 GETUPVAL                         R37 3
      431 GETTABLEKS                       R37 R37 K35 ["createElement"]
      433 GETUPVAL                         R38 17
      434 DUPTABLE                         R39 K75 [{["MaxRadius"], ["GridColor"], ["AxisColor"], ["Thickness"] = 0.1}]
      435 SETTABLEKS                       R20 R39 K28 ["MaxRadius"]
      437 SETTABLEKS                       R12 R39 K71 ["GridColor"]
      439 SETTABLEKS                       R12 R39 K72 ["AxisColor"]
      441 CALL                             R37 2 1
      442 JUMP                             ; [+12]
      443 GETUPVAL                         R37 3
      444 GETTABLEKS                       R37 R37 K35 ["createElement"]
      446 GETUPVAL                         R38 18
      447 DUPTABLE                         R39 K76 [{["Extents"], ["GridColor"], ["AxisColor"], ["Thickness"] = 0.1}]
      448 SETTABLEKS                       R21 R39 K29 ["Extents"]
      450 SETTABLEKS                       R12 R39 K71 ["GridColor"]
      452 SETTABLEKS                       R13 R39 K72 ["AxisColor"]
      454 CALL                             R37 2 1
      455 SETTABLEKS                       R37 R36 K63 ["Guides"]
      457 GETUPVAL                         R37 3
      458 GETTABLEKS                       R37 R37 K35 ["createElement"]
      460 GETUPVAL                         R38 3
      461 GETTABLEKS                       R38 R38 K77 ["Fragment"]
      463 NEWTABLE                         R39 0 0
      465 MOVE                             R40 R25
      466 CALL                             R37 3 1
      467 SETTABLEKS                       R37 R36 K64 ["Points"]
      469 GETUPVAL                         R37 3
      470 GETTABLEKS                       R37 R37 K35 ["createElement"]
      472 LOADK                            R38 K78 ["UIDragDetector"]
      473 NEWTABLE                         R39 4 0
      475 GETIMPORT                        R40 K81 [Enum.UIDragDetectorDragStyle.Scriptable]
      477 SETTABLEKS                       R40 R39 K82 ["DragStyle"]
      479 GETUPVAL                         R40 3
      480 GETTABLEKS                       R40 R40 K83 ["Event"]
      482 GETTABLEKS                       R40 R40 K84 ["DragStart"]
      484 SETTABLE                         R26 R39 R40
      485 GETUPVAL                         R40 3
      486 GETTABLEKS                       R40 R40 K83 ["Event"]
      488 GETTABLEKS                       R40 R40 K85 ["DragContinue"]
      490 SETTABLE                         R27 R39 R40
      491 GETUPVAL                         R40 3
      492 GETTABLEKS                       R40 R40 K83 ["Event"]
      494 GETTABLEKS                       R40 R40 K86 ["DragEnd"]
      496 SETTABLE                         R28 R39 R40
      497 CALL                             R37 2 1
      498 SETTABLEKS                       R37 R36 K65 ["DragDetector"]
      500 CALL                             R33 3 1
      501 SETTABLEKS                       R33 R32 K47 ["Canvas"]
      503 CALL                             R29 3 -1
      504 RETURN                           R29 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["NodeView"]
       13 GETTABLEKS                       R2 R2 K8 ["CompositorNodeProperty"]
       15 GETTABLEKS                       R2 R2 K9 ["Blend2DMap"]
       17 GETTABLEKS                       R2 R2 K10 ["Blend2DCartesianGuides"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K6 ["Components"]
       24 GETTABLEKS                       R3 R3 K7 ["NodeView"]
       26 GETTABLEKS                       R3 R3 K8 ["CompositorNodeProperty"]
       28 GETTABLEKS                       R3 R3 K9 ["Blend2DMap"]
       30 GETTABLEKS                       R3 R3 K11 ["Blend2DPolarGuides"]
       32 CALL                             R2 1 1
       33 GETIMPORT                        R3 K5 [require]
       35 GETTABLEKS                       R4 R0 K12 ["Util"]
       37 GETTABLEKS                       R4 R4 K13 ["Constants"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K14 ["Parent"]
       44 GETTABLEKS                       R5 R5 K15 ["Dash"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K6 ["Components"]
       51 GETTABLEKS                       R6 R6 K7 ["NodeView"]
       53 GETTABLEKS                       R6 R6 K8 ["CompositorNodeProperty"]
       55 GETTABLEKS                       R6 R6 K16 ["BlendMapShared"]
       57 GETTABLEKS                       R6 R6 K17 ["DraggablePin"]
       59 CALL                             R5 1 1
       60 GETIMPORT                        R6 K5 [require]
       62 GETTABLEKS                       R7 R0 K14 ["Parent"]
       64 GETTABLEKS                       R7 R7 K18 ["Foundation"]
       66 CALL                             R6 1 1
       67 GETIMPORT                        R7 K5 [require]
       69 GETTABLEKS                       R8 R0 K14 ["Parent"]
       71 GETTABLEKS                       R8 R8 K19 ["Graphing"]
       73 CALL                             R7 1 1
       74 GETIMPORT                        R8 K5 [require]
       76 GETTABLEKS                       R9 R0 K20 ["Contexts"]
       78 GETTABLEKS                       R9 R9 K21 ["NativeGraphContext"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K14 ["Parent"]
       85 GETTABLEKS                       R10 R10 K22 ["NodeGraphing"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K6 ["Components"]
       92 GETTABLEKS                       R11 R11 K7 ["NodeView"]
       94 GETTABLEKS                       R11 R11 K8 ["CompositorNodeProperty"]
       96 GETTABLEKS                       R11 R11 K23 ["PropertyUtils"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K14 ["Parent"]
      103 GETTABLEKS                       R12 R12 K24 ["React"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R13 R0 K14 ["Parent"]
      110 GETTABLEKS                       R13 R13 K25 ["Signals"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R14 R0 K14 ["Parent"]
      117 GETTABLEKS                       R14 R14 K26 ["SignalsReact"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K27 ["Hooks"]
      124 GETTABLEKS                       R15 R15 K28 ["useAbsoluteSize"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K5 [require]
      129 GETTABLEKS                       R16 R0 K27 ["Hooks"]
      131 GETTABLEKS                       R16 R16 K29 ["useSignalRef"]
      133 CALL                             R15 1 1
      134 GETIMPORT                        R16 K5 [require]
      136 GETTABLEKS                       R17 R0 K30 ["Flags"]
      138 GETTABLEKS                       R17 R17 K31 ["FFlagAnimGraphUIBlend2DCollapsedSize"]
      140 CALL                             R16 1 1
      141 GETIMPORT                        R17 K5 [require]
      143 GETTABLEKS                       R18 R0 K30 ["Flags"]
      145 GETTABLEKS                       R18 R18 K32 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      147 CALL                             R17 1 1
      148 GETIMPORT                        R18 K5 [require]
      150 GETTABLEKS                       R19 R0 K30 ["Flags"]
      152 GETTABLEKS                       R19 R19 K33 ["getFFlagAnimGraphUI_FixBlendMapInitialRender"]
      154 CALL                             R18 1 1
      155 GETIMPORT                        R19 K36 [Rect.new]
      157 LOADN                            R20 -1
      158 LOADN                            R21 -1
      159 LOADN                            R22 1
      160 LOADN                            R23 1
      161 CALL                             R19 4 1
      162 DUPCLOSURE                       R20 K37 [PROTO_15]
      163 CAPTURE                          VAL R6
      164 CAPTURE                          VAL R14
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R11
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R9
      169 CAPTURE                          VAL R12
      170 CAPTURE                          VAL R13
      171 CAPTURE                          VAL R18
      172 CAPTURE                          VAL R10
      173 CAPTURE                          VAL R4
      174 CAPTURE                          VAL R19
      175 CAPTURE                          VAL R5
      176 CAPTURE                          VAL R3
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R16
      179 CAPTURE                          VAL R7
      180 CAPTURE                          VAL R2
      181 CAPTURE                          VAL R1
      182 RETURN                           R20 1
