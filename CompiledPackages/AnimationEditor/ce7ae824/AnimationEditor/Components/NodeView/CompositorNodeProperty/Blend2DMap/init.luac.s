PROTO_0:
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

PROTO_1:
        0 GETTABLEKS                       R5 R1 K0 ["Y"]
        2 FASTCALL1                        MATH_ABS R5 ; [+2]
        3 GETIMPORT                        R4 K3 [math.abs]
        5 CALL                             R4 1 1
        6 FASTCALL2                        MATH_MAX R0 R4 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K5 [math.max]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_2:
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
       21 DUPCLOSURE                       R2 K8 [PROTO_1]
       22 LOADN                            R3 0
       23 CALL                             R0 3 1
       24 JUMPIFNOTEQKN                    R0 K9 [0] ; [+2]
       26 LOADN                            R0 1
       27 RETURN                           R0 1

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["finishUndoTransaction"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_10:
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
       32 GETTABLEKS                       R7 R1 K7 ["Color"]
       34 GETTABLEKS                       R7 R7 K8 ["Stroke"]
       36 GETTABLEKS                       R7 R7 K9 ["Default"]
       38 GETTABLEKS                       R7 R7 K10 ["Color3"]
       40 GETTABLEKS                       R9 R1 K7 ["Color"]
       42 GETTABLEKS                       R9 R9 K11 ["Surface"]
       44 GETTABLEKS                       R9 R9 K12 ["Surface_0"]
       46 GETTABLEKS                       R9 R9 K10 ["Color3"]
       48 LOADK                            R10 K13 [0.75]
       49 NAMECALL                         R7 R7 K14 ["Lerp"]
       51 CALL                             R7 3 1
       52 GETTABLEKS                       R8 R1 K7 ["Color"]
       54 GETTABLEKS                       R8 R8 K8 ["Stroke"]
       56 GETTABLEKS                       R8 R8 K9 ["Default"]
       58 GETTABLEKS                       R8 R8 K10 ["Color3"]
       60 GETTABLEKS                       R10 R1 K7 ["Color"]
       62 GETTABLEKS                       R10 R10 K11 ["Surface"]
       64 GETTABLEKS                       R10 R10 K12 ["Surface_0"]
       66 GETTABLEKS                       R10 R10 K10 ["Color3"]
       68 LOADK                            R11 K15 [0.25]
       69 NAMECALL                         R8 R8 K14 ["Lerp"]
       71 CALL                             R8 3 1
       72 GETTABLEKS                       R9 R1 K7 ["Color"]
       74 GETTABLEKS                       R9 R9 K8 ["Stroke"]
       76 GETTABLEKS                       R9 R9 K9 ["Default"]
       78 GETTABLEKS                       R9 R9 K10 ["Color3"]
       80 GETTABLEKS                       R11 R1 K7 ["Color"]
       82 GETTABLEKS                       R11 R11 K11 ["Surface"]
       84 GETTABLEKS                       R11 R11 K12 ["Surface_0"]
       86 GETTABLEKS                       R11 R11 K10 ["Color3"]
       88 LOADK                            R12 K16 [0.6]
       89 NAMECALL                         R9 R9 K14 ["Lerp"]
       91 CALL                             R9 3 1
       92 GETUPVAL                         R10 3
       93 GETTABLEKS                       R10 R10 K17 ["useState"]
       95 LOADNIL                          R11
       96 CALL                             R10 1 2
       97 GETTABLEKS                       R13 R0 K19 ["Padding"]
       99 ORK                              R12 R13 K18 [15]
      100 GETUPVAL                         R13 3
      101 GETTABLEKS                       R13 R13 K20 ["useMemo"]
      103 NEWCLOSURE                       R14 P0
      104 CAPTURE                          VAL R0
      105 CAPTURE                          UPVAL U6
      106 NEWTABLE                         R15 0 3
      108 GETTABLEKS                       R16 R0 K21 ["Position"]
      110 GETTABLEKS                       R17 R0 K22 ["Pins"]
      112 GETTABLEKS                       R18 R0 K23 ["InputMode"]
      114 SETLIST                          R15 R16 3 [1]
      116 CALL                             R13 2 2
      117 GETUPVAL                         R15 3
      118 GETTABLEKS                       R15 R15 K20 ["useMemo"]
      120 NEWCLOSURE                       R16 P1
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R0
      123 CAPTURE                          UPVAL U7
      124 NEWTABLE                         R17 0 3
      126 MOVE                             R18 R10
      127 JUMPIFNOT                        R18 ; [+2]
      128 GETTABLEKS                       R18 R10 K24 ["MaxRadius"]
      130 GETTABLEKS                       R19 R0 K23 ["InputMode"]
      132 GETTABLEKS                       R20 R0 K22 ["Pins"]
      134 SETLIST                          R17 R18 3 [1]
      136 CALL                             R15 2 1
      137 GETUPVAL                         R16 3
      138 GETTABLEKS                       R16 R16 K20 ["useMemo"]
      140 NEWCLOSURE                       R17 P2
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R3
      143 CAPTURE                          UPVAL U8
      144 CAPTURE                          VAL R0
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R12
      148 NEWTABLE                         R18 0 6
      150 MOVE                             R19 R10
      151 JUMPIFNOT                        R19 ; [+2]
      152 GETTABLEKS                       R19 R10 K25 ["Extents"]
      154 MOVE                             R20 R10
      155 JUMPIFNOT                        R20 ; [+2]
      156 GETTABLEKS                       R20 R10 K26 ["GraphRect"]
      158 MOVE                             R21 R14
      159 GETTABLEKS                       R22 R0 K23 ["InputMode"]
      161 MOVE                             R23 R15
      162 GETTABLEKS                       R24 R3 K27 ["current"]
      164 SETLIST                          R18 R19 6 [1]
      166 CALL                             R16 2 2
      167 GETUPVAL                         R18 3
      168 GETTABLEKS                       R18 R18 K28 ["useCallback"]
      170 NEWCLOSURE                       R19 P3
      171 CAPTURE                          VAL R11
      172 CAPTURE                          VAL R16
      173 CAPTURE                          VAL R17
      174 CAPTURE                          VAL R15
      175 NEWTABLE                         R20 0 3
      177 MOVE                             R21 R16
      178 MOVE                             R22 R17
      179 MOVE                             R23 R15
      180 SETLIST                          R20 R21 3 [1]
      182 CALL                             R18 2 1
      183 GETUPVAL                         R19 3
      184 GETTABLEKS                       R19 R19 K28 ["useCallback"]
      186 NEWCLOSURE                       R20 P4
      187 CAPTURE                          VAL R3
      188 CAPTURE                          VAL R4
      189 CAPTURE                          VAL R17
      190 CAPTURE                          VAL R0
      191 CAPTURE                          VAL R6
      192 CAPTURE                          UPVAL U6
      193 CAPTURE                          VAL R16
      194 CAPTURE                          VAL R15
      195 NEWTABLE                         R21 0 6
      197 MOVE                             R22 R16
      198 GETTABLEKS                       R23 R3 K27 ["current"]
      200 GETTABLEKS                       R24 R4 K27 ["current"]
      202 MOVE                             R25 R17
      203 GETTABLEKS                       R26 R0 K23 ["InputMode"]
      205 GETTABLEKS                       R27 R6 K29 ["isShiftPressed"]
      207 CALL                             R27 0 -1
      208 SETLIST                          R21 R22 -1 [1]
      210 CALL                             R19 2 1
      211 GETUPVAL                         R20 3
      212 GETTABLEKS                       R20 R20 K20 ["useMemo"]
      214 NEWCLOSURE                       R21 P5
      215 CAPTURE                          VAL R13
      216 CAPTURE                          UPVAL U3
      217 CAPTURE                          UPVAL U9
      218 CAPTURE                          VAL R19
      219 CAPTURE                          VAL R1
      220 CAPTURE                          VAL R16
      221 CAPTURE                          VAL R0
      222 CAPTURE                          VAL R18
      223 CAPTURE                          VAL R15
      224 CAPTURE                          UPVAL U10
      225 CAPTURE                          VAL R14
      226 CAPTURE                          VAL R9
      227 CAPTURE                          UPVAL U11
      228 NEWTABLE                         R22 0 8
      230 MOVE                             R23 R16
      231 MOVE                             R24 R18
      232 MOVE                             R25 R15
      233 MOVE                             R26 R13
      234 MOVE                             R27 R14
      235 GETTABLEKS                       R28 R0 K23 ["InputMode"]
      237 GETTABLEKS                       R29 R0 K30 ["OnPinDragged"]
      239 MOVE                             R30 R19
      240 SETLIST                          R22 R23 8 [1]
      242 CALL                             R20 2 1
      243 GETUPVAL                         R21 3
      244 GETTABLEKS                       R21 R21 K28 ["useCallback"]
      246 NEWCLOSURE                       R22 P6
      247 CAPTURE                          VAL R5
      248 CAPTURE                          VAL R19
      249 CAPTURE                          VAL R0
      250 NEWTABLE                         R23 0 3
      252 GETTABLEKS                       R24 R0 K30 ["OnPinDragged"]
      254 MOVE                             R25 R19
      255 MOVE                             R26 R5
      256 SETLIST                          R23 R24 3 [1]
      258 CALL                             R21 2 1
      259 GETUPVAL                         R22 3
      260 GETTABLEKS                       R22 R22 K28 ["useCallback"]
      262 NEWCLOSURE                       R23 P7
      263 CAPTURE                          VAL R19
      264 CAPTURE                          VAL R0
      265 NEWTABLE                         R24 0 2
      267 GETTABLEKS                       R25 R0 K30 ["OnPinDragged"]
      269 MOVE                             R26 R19
      270 SETLIST                          R24 R25 2 [1]
      272 CALL                             R22 2 1
      273 GETUPVAL                         R23 3
      274 GETTABLEKS                       R23 R23 K28 ["useCallback"]
      276 NEWCLOSURE                       R24 P8
      277 CAPTURE                          VAL R5
      278 NEWTABLE                         R25 0 3
      280 GETTABLEKS                       R26 R0 K30 ["OnPinDragged"]
      282 MOVE                             R27 R19
      283 MOVE                             R28 R5
      284 SETLIST                          R25 R26 3 [1]
      286 CALL                             R23 2 1
      287 GETUPVAL                         R24 3
      288 GETTABLEKS                       R24 R24 K31 ["createElement"]
      290 GETUPVAL                         R25 0
      291 GETTABLEKS                       R25 R25 K32 ["View"]
      293 DUPTABLE                         R26 K38 [{["tag"] = "size-full-full aspect-1-1", ["LayoutOrder"], ["backgroundStyle"], ["ref"]}]
      294 GETTABLEKS                       R27 R0 K35 ["LayoutOrder"]
      296 SETTABLEKS                       R27 R26 K35 ["LayoutOrder"]
      298 GETTABLEKS                       R27 R1 K7 ["Color"]
      300 GETTABLEKS                       R27 R27 K11 ["Surface"]
      302 GETTABLEKS                       R27 R27 K12 ["Surface_0"]
      304 SETTABLEKS                       R27 R26 K36 ["backgroundStyle"]
      306 GETTABLEKS                       R27 R2 K39 ["setFrame"]
      308 SETTABLEKS                       R27 R26 K37 ["ref"]
      310 DUPTABLE                         R27 K41 [{"Canvas"}]
      311 GETUPVAL                         R28 3
      312 GETTABLEKS                       R28 R28 K31 ["createElement"]
      314 GETUPVAL                         R29 12
      315 GETTABLEKS                       R29 R29 K40 ["Canvas"]
      317 DUPTABLE                         R30 K50 [{["Size"], ["GraphRect"], ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingBottom"], ["ViewportPaddingTop"], ["CanvasBackgroundTransparency"] = 1, ["ViewportBackgroundTransparency"] = 1}]
      318 GETIMPORT                        R31 K53 [UDim2.fromScale]
      320 LOADN                            R32 1
      321 LOADN                            R33 1
      322 CALL                             R31 2 1
      323 SETTABLEKS                       R31 R30 K42 ["Size"]
      325 SETTABLEKS                       R17 R30 K26 ["GraphRect"]
      327 GETIMPORT                        R31 K56 [UDim.new]
      329 LOADN                            R32 0
      330 LOADN                            R33 0
      331 CALL                             R31 2 1
      332 SETTABLEKS                       R31 R30 K43 ["ViewportPaddingLeft"]
      334 GETIMPORT                        R31 K56 [UDim.new]
      336 LOADN                            R32 0
      337 LOADN                            R33 0
      338 CALL                             R31 2 1
      339 SETTABLEKS                       R31 R30 K44 ["ViewportPaddingRight"]
      341 GETIMPORT                        R31 K56 [UDim.new]
      343 LOADN                            R32 0
      344 LOADN                            R33 0
      345 CALL                             R31 2 1
      346 SETTABLEKS                       R31 R30 K45 ["ViewportPaddingBottom"]
      348 GETIMPORT                        R31 K56 [UDim.new]
      350 LOADN                            R32 0
      351 LOADN                            R33 0
      352 CALL                             R31 2 1
      353 SETTABLEKS                       R31 R30 K46 ["ViewportPaddingTop"]
      355 DUPTABLE                         R31 K60 [{"Guides", "Points", "DragDetector"}]
      356 GETTABLEKS                       R33 R0 K23 ["InputMode"]
      358 GETIMPORT                        R34 K64 [Enum.AnimationNodeBlend2DInputMode.Polar]
      360 JUMPIFNOTEQ                      R33 R34 ; [+14]
      362 GETUPVAL                         R32 3
      363 GETTABLEKS                       R32 R32 K31 ["createElement"]
      365 GETUPVAL                         R33 13
      366 DUPTABLE                         R34 K69 [{["MaxRadius"], ["GridColor"], ["AxisColor"], ["Thickness"] = 0.1}]
      367 SETTABLEKS                       R15 R34 K24 ["MaxRadius"]
      369 SETTABLEKS                       R7 R34 K65 ["GridColor"]
      371 SETTABLEKS                       R7 R34 K66 ["AxisColor"]
      373 CALL                             R32 2 1
      374 JUMP                             ; [+12]
      375 GETUPVAL                         R32 3
      376 GETTABLEKS                       R32 R32 K31 ["createElement"]
      378 GETUPVAL                         R33 14
      379 DUPTABLE                         R34 K70 [{["Extents"], ["GridColor"], ["AxisColor"], ["Thickness"] = 0.1}]
      380 SETTABLEKS                       R16 R34 K25 ["Extents"]
      382 SETTABLEKS                       R7 R34 K65 ["GridColor"]
      384 SETTABLEKS                       R8 R34 K66 ["AxisColor"]
      386 CALL                             R32 2 1
      387 SETTABLEKS                       R32 R31 K57 ["Guides"]
      389 GETUPVAL                         R32 3
      390 GETTABLEKS                       R32 R32 K31 ["createElement"]
      392 GETUPVAL                         R33 3
      393 GETTABLEKS                       R33 R33 K71 ["Fragment"]
      395 NEWTABLE                         R34 0 0
      397 MOVE                             R35 R20
      398 CALL                             R32 3 1
      399 SETTABLEKS                       R32 R31 K58 ["Points"]
      401 GETUPVAL                         R32 3
      402 GETTABLEKS                       R32 R32 K31 ["createElement"]
      404 LOADK                            R33 K72 ["UIDragDetector"]
      405 NEWTABLE                         R34 4 0
      407 GETIMPORT                        R35 K75 [Enum.UIDragDetectorDragStyle.Scriptable]
      409 SETTABLEKS                       R35 R34 K76 ["DragStyle"]
      411 GETUPVAL                         R35 3
      412 GETTABLEKS                       R35 R35 K77 ["Event"]
      414 GETTABLEKS                       R35 R35 K78 ["DragStart"]
      416 SETTABLE                         R21 R34 R35
      417 GETUPVAL                         R35 3
      418 GETTABLEKS                       R35 R35 K77 ["Event"]
      420 GETTABLEKS                       R35 R35 K79 ["DragContinue"]
      422 SETTABLE                         R22 R34 R35
      423 GETUPVAL                         R35 3
      424 GETTABLEKS                       R35 R35 K77 ["Event"]
      426 GETTABLEKS                       R35 R35 K80 ["DragEnd"]
      428 SETTABLE                         R23 R34 R35
      429 CALL                             R32 2 1
      430 SETTABLEKS                       R32 R31 K59 ["DragDetector"]
      432 CALL                             R28 3 1
      433 SETTABLEKS                       R28 R27 K40 ["Canvas"]
      435 CALL                             R24 3 -1
      436 RETURN                           R24 -1

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
      108 GETTABLEKS                       R13 R0 K25 ["Hooks"]
      110 GETTABLEKS                       R13 R13 K26 ["useAbsoluteSize"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R14 R0 K25 ["Hooks"]
      117 GETTABLEKS                       R14 R14 K27 ["useSignalRef"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K28 ["Flags"]
      124 GETTABLEKS                       R15 R15 K29 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K32 [Rect.new]
      129 LOADN                            R16 -1
      130 LOADN                            R17 -1
      131 LOADN                            R18 1
      132 LOADN                            R19 1
      133 CALL                             R15 4 1
      134 DUPCLOSURE                       R16 K33 [PROTO_10]
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R12
      137 CAPTURE                          VAL R13
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R4
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R3
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R7
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R1
      150 RETURN                           R16 1
