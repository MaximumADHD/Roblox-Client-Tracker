PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETIMPORT                        R2 K3 [Enum.KeyCode.LeftShift]
        3 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
        5 CALL                             R0 2 1
        6 JUMPIF                           R0 ; [+6]
        7 GETUPVAL                         R0 0
        8 GETIMPORT                        R2 K6 [Enum.KeyCode.RightShift]
       10 NAMECALL                         R0 R0 K4 ["IsKeyDown"]
       12 CALL                             R0 2 1
       13 RETURN                           R0 1

PROTO_1:
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

PROTO_2:
        0 GETTABLEKS                       R5 R1 K0 ["Y"]
        2 FASTCALL1                        MATH_ABS R5 ; [+2]
        3 GETIMPORT                        R4 K3 [math.abs]
        5 CALL                             R4 1 1
        6 FASTCALL2                        MATH_MAX R0 R4 ; [+4]
        8 MOVE                             R3 R0
        9 GETIMPORT                        R2 K5 [math.max]
       11 CALL                             R2 2 1
       12 RETURN                           R2 1

PROTO_3:
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
       21 DUPCLOSURE                       R2 K8 [PROTO_2]
       22 LOADN                            R3 0
       23 CALL                             R0 3 1
       24 JUMPIFNOTEQKN                    R0 K9 [0] ; [+2]
       26 LOADN                            R0 1
       27 RETURN                           R0 1

PROTO_4:
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
       34 LOADN                            R3 255
       35 LOADN                            R4 255
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

PROTO_5:
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

PROTO_6:
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
       64 JUMPIFNOTEQ                      R6 R7 ; [+89]
       66 GETUPVAL                         R6 4
       67 CALL                             R6 0 1
       68 JUMPIFNOT                        R6 ; [+5]
       69 GETUPVAL                         R6 5
       70 GETTABLEKS                       R6 R6 K15 ["isShiftPressed"]
       72 CALL                             R6 0 1
       73 JUMPIF                           R6 ; [+7]
       74 GETUPVAL                         R6 4
       75 CALL                             R6 0 1
       76 JUMPIF                           R6 ; [+36]
       77 GETUPVAL                         R6 6
       78 GETTABLEKS                       R6 R6 K16 ["enabled"]
       80 JUMPIFNOT                        R6 ; [+32]
       81 GETUPVAL                         R6 7
       82 GETTABLEKS                       R6 R6 K17 ["roundStep"]
       84 MOVE                             R7 R4
       85 GETUPVAL                         R8 8
       86 GETTABLEKS                       R8 R8 K6 ["Min"]
       88 GETTABLEKS                       R8 R8 K4 ["X"]
       90 GETUPVAL                         R9 8
       91 GETTABLEKS                       R9 R9 K8 ["Max"]
       93 GETTABLEKS                       R9 R9 K4 ["X"]
       95 CALL                             R6 3 1
       96 MOVE                             R4 R6
       97 GETUPVAL                         R6 7
       98 GETTABLEKS                       R6 R6 K17 ["roundStep"]
      100 MOVE                             R7 R5
      101 GETUPVAL                         R8 8
      102 GETTABLEKS                       R8 R8 K6 ["Min"]
      104 GETTABLEKS                       R8 R8 K5 ["Y"]
      106 GETUPVAL                         R9 8
      107 GETTABLEKS                       R9 R9 K8 ["Max"]
      109 GETTABLEKS                       R9 R9 K5 ["Y"]
      111 CALL                             R6 3 1
      112 MOVE                             R5 R6
      113 JUMPIFNOT                        R1 ; [+34]
      114 GETUPVAL                         R8 8
      115 GETTABLEKS                       R8 R8 K6 ["Min"]
      117 GETTABLEKS                       R8 R8 K4 ["X"]
      119 GETUPVAL                         R9 8
      120 GETTABLEKS                       R9 R9 K8 ["Max"]
      122 GETTABLEKS                       R9 R9 K4 ["X"]
      124 FASTCALL3                        MATH_CLAMP R4 R8 R9
      126 MOVE                             R7 R4
      127 GETIMPORT                        R6 K20 [math.clamp]
      129 CALL                             R6 3 1
      130 MOVE                             R4 R6
      131 GETUPVAL                         R8 8
      132 GETTABLEKS                       R8 R8 K6 ["Min"]
      134 GETTABLEKS                       R8 R8 K5 ["Y"]
      136 GETUPVAL                         R9 8
      137 GETTABLEKS                       R9 R9 K8 ["Max"]
      139 GETTABLEKS                       R9 R9 K5 ["Y"]
      141 FASTCALL3                        MATH_CLAMP R5 R8 R9
      143 MOVE                             R7 R5
      144 GETIMPORT                        R6 K20 [math.clamp]
      146 CALL                             R6 3 1
      147 MOVE                             R5 R6
      148 GETIMPORT                        R6 K22 [Vector2.new]
      150 MOVE                             R7 R4
      151 MOVE                             R8 R5
      152 CALL                             R6 2 -1
      153 RETURN                           R6 -1
      154 GETUPVAL                         R6 3
      155 GETTABLEKS                       R6 R6 K10 ["InputMode"]
      157 GETIMPORT                        R7 K24 [Enum.AnimationNodeBlend2DInputMode.Polar]
      159 JUMPIFNOTEQ                      R6 R7 ; [+61]
      161 GETIMPORT                        R6 K22 [Vector2.new]
      163 MOVE                             R7 R4
      164 MOVE                             R8 R5
      165 CALL                             R6 2 1
      166 GETTABLEKS                       R6 R6 K25 ["Magnitude"]
      168 FASTCALL2                        MATH_ATAN2 R4 R5 ; [+5]
      170 MOVE                             R9 R4
      171 MOVE                             R10 R5
      172 GETIMPORT                        R8 K27 [math.atan2]
      174 CALL                             R8 2 1
      175 MINUS                            R7 R8
      176 GETUPVAL                         R8 4
      177 CALL                             R8 0 1
      178 JUMPIFNOT                        R8 ; [+5]
      179 GETUPVAL                         R8 5
      180 GETTABLEKS                       R8 R8 K15 ["isShiftPressed"]
      182 CALL                             R8 0 1
      183 JUMPIF                           R8 ; [+7]
      184 GETUPVAL                         R8 4
      185 CALL                             R8 0 1
      186 JUMPIF                           R8 ; [+18]
      187 GETUPVAL                         R8 6
      188 GETTABLEKS                       R8 R8 K16 ["enabled"]
      190 JUMPIFNOT                        R8 ; [+14]
      191 GETUPVAL                         R8 7
      192 GETTABLEKS                       R8 R8 K17 ["roundStep"]
      194 MOVE                             R9 R6
      195 LOADN                            R10 0
      196 GETUPVAL                         R11 9
      197 CALL                             R8 3 1
      198 MOVE                             R6 R8
      199 DIVK                             R9 R7 K28 [0.785398163397448]
      200 FASTCALL1                        MATH_ROUND R9 ; [+2]
      201 GETIMPORT                        R8 K30 [math.round]
      203 CALL                             R8 1 1
      204 MULK                             R7 R8 K28 [0.785398163397448]
      205 JUMPIFNOT                        R1 ; [+9]
      206 LOADN                            R10 0
      207 GETUPVAL                         R11 9
      208 FASTCALL3                        MATH_CLAMP R6 R10 R11
      210 MOVE                             R9 R6
      211 GETIMPORT                        R8 K20 [math.clamp]
      213 CALL                             R8 3 1
      214 MOVE                             R6 R8
      215 GETIMPORT                        R8 K22 [Vector2.new]
      217 MOVE                             R9 R7
      218 MOVE                             R10 R6
      219 CALL                             R8 2 -1
      220 RETURN                           R8 -1
      221 GETIMPORT                        R6 K32 [error]
      223 LOADK                            R8 K33 ["Unknown input mode: "]
      224 GETUPVAL                         R10 3
      225 GETTABLEKS                       R10 R10 K10 ["InputMode"]
      227 FASTCALL1                        TOSTRING R10 ; [+2]
      228 GETIMPORT                        R9 K35 [tostring]
      230 CALL                             R9 1 1
      231 CONCAT                           R7 R8 R9
      232 CALL                             R6 1 0
      233 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+67]
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["createElement"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K15 [{"AbsToMap", "Clamp", "Color3", "Extents", "Image", "Index", "InputMode", "LockExtents", "MaxRadius", "Mode", "OnPinDragged", "Position", "ZIndex", "Size"}]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K1 ["AbsToMap"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K2 ["Clamp"]
       16 GETUPVAL                         R4 4
       17 GETTABLEKS                       R4 R4 K16 ["Color"]
       19 GETTABLEKS                       R4 R4 K17 ["System"]
       21 GETTABLEKS                       R4 R4 K18 ["Warning"]
       23 GETTABLEKS                       R4 R4 K3 ["Color3"]
       25 SETTABLEKS                       R4 R3 K3 ["Color3"]
       27 GETUPVAL                         R4 5
       28 SETTABLEKS                       R4 R3 K4 ["Extents"]
       30 LOADK                            R4 K19 ["rbxasset://textures/AnimLibrary/BlendMapCursor.png"]
       31 SETTABLEKS                       R4 R3 K5 ["Image"]
       33 LOADN                            R4 0
       34 SETTABLEKS                       R4 R3 K6 ["Index"]
       36 GETUPVAL                         R4 6
       37 GETTABLEKS                       R4 R4 K7 ["InputMode"]
       39 SETTABLEKS                       R4 R3 K7 ["InputMode"]
       41 GETUPVAL                         R4 7
       42 SETTABLEKS                       R4 R3 K8 ["LockExtents"]
       44 GETUPVAL                         R4 8
       45 SETTABLEKS                       R4 R3 K9 ["MaxRadius"]
       47 GETUPVAL                         R4 9
       48 GETTABLEKS                       R4 R4 K20 ["DRAGGABLE_PIN_MODES"]
       50 GETTABLEKS                       R4 R4 K21 ["Blend2D"]
       52 SETTABLEKS                       R4 R3 K10 ["Mode"]
       54 GETUPVAL                         R4 6
       55 GETTABLEKS                       R4 R4 K11 ["OnPinDragged"]
       57 SETTABLEKS                       R4 R3 K11 ["OnPinDragged"]
       59 GETUPVAL                         R4 0
       60 SETTABLEKS                       R4 R3 K12 ["Position"]
       62 LOADN                            R4 4
       63 SETTABLEKS                       R4 R3 K13 ["ZIndex"]
       65 LOADN                            R4 12
       66 SETTABLEKS                       R4 R3 K14 ["Size"]
       68 CALL                             R1 2 1
       69 SETTABLEKS                       R1 R0 K22 ["current"]
       71 GETUPVAL                         R1 10
       72 LOADNIL                          R2
       73 LOADNIL                          R3
       74 FORGPREP                         R1
       75 LOADK                            R7 K23 ["point-"]
       76 FASTCALL1                        TOSTRING R4 ; [+3]
       77 MOVE                             R9 R4
       78 GETIMPORT                        R8 K25 [tostring]
       80 CALL                             R8 1 1
       81 CONCAT                           R6 R7 R8
       82 GETUPVAL                         R7 1
       83 GETTABLEKS                       R7 R7 K0 ["createElement"]
       85 GETUPVAL                         R8 2
       86 DUPTABLE                         R9 K27 [{"AbsToMap", "Clamp", "Color3", "Extents", "Index", "InputMode", "Label", "LockExtents", "MaxRadius", "Mode", "OnPinDragged", "Position", "ZIndex", "Size"}]
       87 GETUPVAL                         R10 3
       88 SETTABLEKS                       R10 R9 K1 ["AbsToMap"]
       90 LOADB                            R10 0
       91 SETTABLEKS                       R10 R9 K2 ["Clamp"]
       93 GETUPVAL                         R10 11
       94 SETTABLEKS                       R10 R9 K3 ["Color3"]
       96 GETUPVAL                         R10 5
       97 SETTABLEKS                       R10 R9 K4 ["Extents"]
       99 SETTABLEKS                       R4 R9 K6 ["Index"]
      101 GETUPVAL                         R10 6
      102 GETTABLEKS                       R10 R10 K7 ["InputMode"]
      104 SETTABLEKS                       R10 R9 K7 ["InputMode"]
      106 GETUPVAL                         R11 12
      107 CALL                             R11 0 1
      108 JUMPIFNOT                        R11 ; [+11]
      109 GETUPVAL                         R11 6
      110 GETTABLEKS                       R11 R11 K28 ["PinLabels"]
      112 JUMPIFNOT                        R11 ; [+5]
      113 GETUPVAL                         R11 6
      114 GETTABLEKS                       R11 R11 K28 ["PinLabels"]
      116 GETTABLE                         R10 R11 R4
      117 JUMP                             ; [+3]
      118 LOADNIL                          R10
      119 JUMP                             ; [+1]
      120 LOADNIL                          R10
      121 SETTABLEKS                       R10 R9 K26 ["Label"]
      123 GETUPVAL                         R10 7
      124 SETTABLEKS                       R10 R9 K8 ["LockExtents"]
      126 GETUPVAL                         R10 8
      127 SETTABLEKS                       R10 R9 K9 ["MaxRadius"]
      129 GETUPVAL                         R10 9
      130 GETTABLEKS                       R10 R10 K20 ["DRAGGABLE_PIN_MODES"]
      132 GETTABLEKS                       R10 R10 K21 ["Blend2D"]
      134 SETTABLEKS                       R10 R9 K10 ["Mode"]
      136 GETUPVAL                         R10 6
      137 GETTABLEKS                       R10 R10 K11 ["OnPinDragged"]
      139 SETTABLEKS                       R10 R9 K11 ["OnPinDragged"]
      141 SETTABLEKS                       R5 R9 K12 ["Position"]
      143 LOADN                            R10 3
      144 SETTABLEKS                       R10 R9 K13 ["ZIndex"]
      146 LOADN                            R10 8
      147 SETTABLEKS                       R10 R9 K14 ["Size"]
      149 CALL                             R7 2 1
      150 SETTABLE                         R7 R0 R6
      151 FORGLOOP                         R1 2 ; [-77]
      153 RETURN                           R0 1

PROTO_8:
        0 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftShift]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        8 GETIMPORT                        R3 K5 [Enum.KeyCode.RightShift]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K6 ["enable"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftShift]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        8 GETIMPORT                        R3 K5 [Enum.KeyCode.RightShift]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K6 ["disable"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_10:
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

PROTO_11:
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

PROTO_12:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["finishUndoTransaction"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_13:
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
       17 GETTABLEKS                       R5 R5 K4 ["useToggleState"]
       19 GETUPVAL                         R6 4
       20 CALL                             R5 1 1
       21 GETUPVAL                         R6 5
       22 GETTABLEKS                       R6 R6 K5 ["useContext"]
       24 GETUPVAL                         R7 6
       25 GETTABLEKS                       R7 R7 K6 ["Context"]
       27 CALL                             R6 1 1
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K5 ["useContext"]
       31 GETUPVAL                         R8 7
       32 GETTABLEKS                       R8 R8 K7 ["ModifierKeysContext"]
       34 GETTABLEKS                       R8 R8 K6 ["Context"]
       36 CALL                             R7 1 1
       37 GETTABLEKS                       R8 R1 K8 ["Color"]
       39 GETTABLEKS                       R8 R8 K9 ["Stroke"]
       41 GETTABLEKS                       R8 R8 K10 ["Default"]
       43 GETTABLEKS                       R8 R8 K11 ["Color3"]
       45 GETTABLEKS                       R10 R1 K8 ["Color"]
       47 GETTABLEKS                       R10 R10 K12 ["Surface"]
       49 GETTABLEKS                       R10 R10 K13 ["Surface_0"]
       51 GETTABLEKS                       R10 R10 K11 ["Color3"]
       53 LOADK                            R11 K14 [0.75]
       54 NAMECALL                         R8 R8 K15 ["Lerp"]
       56 CALL                             R8 3 1
       57 GETTABLEKS                       R9 R1 K8 ["Color"]
       59 GETTABLEKS                       R9 R9 K9 ["Stroke"]
       61 GETTABLEKS                       R9 R9 K10 ["Default"]
       63 GETTABLEKS                       R9 R9 K11 ["Color3"]
       65 GETTABLEKS                       R11 R1 K8 ["Color"]
       67 GETTABLEKS                       R11 R11 K12 ["Surface"]
       69 GETTABLEKS                       R11 R11 K13 ["Surface_0"]
       71 GETTABLEKS                       R11 R11 K11 ["Color3"]
       73 LOADK                            R12 K16 [0.25]
       74 NAMECALL                         R9 R9 K15 ["Lerp"]
       76 CALL                             R9 3 1
       77 GETTABLEKS                       R10 R1 K8 ["Color"]
       79 GETTABLEKS                       R10 R10 K9 ["Stroke"]
       81 GETTABLEKS                       R10 R10 K10 ["Default"]
       83 GETTABLEKS                       R10 R10 K11 ["Color3"]
       85 GETTABLEKS                       R12 R1 K8 ["Color"]
       87 GETTABLEKS                       R12 R12 K12 ["Surface"]
       89 GETTABLEKS                       R12 R12 K13 ["Surface_0"]
       91 GETTABLEKS                       R12 R12 K11 ["Color3"]
       93 LOADK                            R13 K17 [0.6]
       94 NAMECALL                         R10 R10 K15 ["Lerp"]
       96 CALL                             R10 3 1
       97 GETUPVAL                         R11 5
       98 GETTABLEKS                       R11 R11 K18 ["useState"]
      100 LOADNIL                          R12
      101 CALL                             R11 1 2
      102 GETTABLEKS                       R14 R0 K20 ["Padding"]
      104 ORK                              R13 R14 K19 [15]
      105 GETUPVAL                         R14 5
      106 GETTABLEKS                       R14 R14 K21 ["useMemo"]
      108 NEWCLOSURE                       R15 P0
      109 CAPTURE                          VAL R0
      110 CAPTURE                          UPVAL U8
      111 NEWTABLE                         R16 0 3
      113 GETTABLEKS                       R17 R0 K22 ["Position"]
      115 GETTABLEKS                       R18 R0 K23 ["Pins"]
      117 GETTABLEKS                       R19 R0 K24 ["InputMode"]
      119 SETLIST                          R16 R17 3 [1]
      121 CALL                             R14 2 2
      122 GETUPVAL                         R16 5
      123 GETTABLEKS                       R16 R16 K21 ["useMemo"]
      125 NEWCLOSURE                       R17 P1
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R0
      128 CAPTURE                          UPVAL U9
      129 NEWTABLE                         R18 0 3
      131 MOVE                             R19 R11
      132 JUMPIFNOT                        R19 ; [+2]
      133 GETTABLEKS                       R19 R11 K25 ["MaxRadius"]
      135 GETTABLEKS                       R20 R0 K24 ["InputMode"]
      137 GETTABLEKS                       R21 R0 K23 ["Pins"]
      139 SETLIST                          R18 R19 3 [1]
      141 CALL                             R16 2 1
      142 GETUPVAL                         R17 5
      143 GETTABLEKS                       R17 R17 K21 ["useMemo"]
      145 NEWCLOSURE                       R18 P2
      146 CAPTURE                          VAL R11
      147 CAPTURE                          VAL R3
      148 CAPTURE                          UPVAL U10
      149 CAPTURE                          VAL R0
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R15
      152 CAPTURE                          VAL R13
      153 NEWTABLE                         R19 0 6
      155 MOVE                             R20 R11
      156 JUMPIFNOT                        R20 ; [+2]
      157 GETTABLEKS                       R20 R11 K26 ["Extents"]
      159 MOVE                             R21 R11
      160 JUMPIFNOT                        R21 ; [+2]
      161 GETTABLEKS                       R21 R11 K27 ["GraphRect"]
      163 MOVE                             R22 R15
      164 GETTABLEKS                       R23 R0 K24 ["InputMode"]
      166 MOVE                             R24 R16
      167 GETTABLEKS                       R25 R3 K28 ["current"]
      169 SETLIST                          R19 R20 6 [1]
      171 CALL                             R17 2 2
      172 GETUPVAL                         R19 5
      173 GETTABLEKS                       R19 R19 K29 ["useCallback"]
      175 NEWCLOSURE                       R20 P3
      176 CAPTURE                          VAL R12
      177 CAPTURE                          VAL R17
      178 CAPTURE                          VAL R18
      179 CAPTURE                          VAL R16
      180 NEWTABLE                         R21 0 3
      182 MOVE                             R22 R17
      183 MOVE                             R23 R18
      184 MOVE                             R24 R16
      185 SETLIST                          R21 R22 3 [1]
      187 CALL                             R19 2 1
      188 GETUPVAL                         R20 5
      189 GETTABLEKS                       R20 R20 K29 ["useCallback"]
      191 NEWCLOSURE                       R21 P4
      192 CAPTURE                          VAL R3
      193 CAPTURE                          VAL R4
      194 CAPTURE                          VAL R18
      195 CAPTURE                          VAL R0
      196 CAPTURE                          UPVAL U11
      197 CAPTURE                          VAL R7
      198 CAPTURE                          VAL R5
      199 CAPTURE                          UPVAL U8
      200 CAPTURE                          VAL R17
      201 CAPTURE                          VAL R16
      202 NEWTABLE                         R22 0 8
      204 MOVE                             R23 R17
      205 GETTABLEKS                       R24 R3 K28 ["current"]
      207 GETTABLEKS                       R25 R4 K28 ["current"]
      209 MOVE                             R26 R18
      210 GETTABLEKS                       R27 R5 K30 ["enabled"]
      212 GETTABLEKS                       R28 R0 K24 ["InputMode"]
      214 GETUPVAL                         R29 11
      215 CALL                             R29 0 1
      216 GETTABLEKS                       R30 R7 K31 ["isShiftPressed"]
      218 CALL                             R30 0 -1
      219 SETLIST                          R22 R23 -1 [1]
      221 CALL                             R20 2 1
      222 GETUPVAL                         R21 5
      223 GETTABLEKS                       R21 R21 K21 ["useMemo"]
      225 NEWCLOSURE                       R22 P5
      226 CAPTURE                          VAL R14
      227 CAPTURE                          UPVAL U5
      228 CAPTURE                          UPVAL U12
      229 CAPTURE                          VAL R20
      230 CAPTURE                          VAL R1
      231 CAPTURE                          VAL R17
      232 CAPTURE                          VAL R0
      233 CAPTURE                          VAL R19
      234 CAPTURE                          VAL R16
      235 CAPTURE                          UPVAL U13
      236 CAPTURE                          VAL R15
      237 CAPTURE                          VAL R10
      238 CAPTURE                          UPVAL U14
      239 NEWTABLE                         R23 0 8
      241 MOVE                             R24 R17
      242 MOVE                             R25 R19
      243 MOVE                             R26 R16
      244 MOVE                             R27 R14
      245 MOVE                             R28 R15
      246 GETTABLEKS                       R29 R0 K24 ["InputMode"]
      248 GETTABLEKS                       R30 R0 K32 ["OnPinDragged"]
      250 MOVE                             R31 R20
      251 SETLIST                          R23 R24 8 [1]
      253 CALL                             R21 2 1
      254 GETUPVAL                         R22 5
      255 GETTABLEKS                       R22 R22 K29 ["useCallback"]
      257 NEWCLOSURE                       R23 P6
      258 CAPTURE                          VAL R5
      259 NEWTABLE                         R24 0 1
      261 GETTABLEKS                       R25 R5 K33 ["enable"]
      263 SETLIST                          R24 R25 1 [1]
      265 CALL                             R22 2 1
      266 GETUPVAL                         R23 5
      267 GETTABLEKS                       R23 R23 K29 ["useCallback"]
      269 NEWCLOSURE                       R24 P7
      270 CAPTURE                          VAL R5
      271 NEWTABLE                         R25 0 1
      273 GETTABLEKS                       R26 R5 K34 ["disable"]
      275 SETLIST                          R25 R26 1 [1]
      277 CALL                             R23 2 1
      278 GETUPVAL                         R24 5
      279 GETTABLEKS                       R24 R24 K29 ["useCallback"]
      281 NEWCLOSURE                       R25 P8
      282 CAPTURE                          VAL R6
      283 CAPTURE                          VAL R20
      284 CAPTURE                          VAL R0
      285 NEWTABLE                         R26 0 3
      287 GETTABLEKS                       R27 R0 K32 ["OnPinDragged"]
      289 MOVE                             R28 R20
      290 MOVE                             R29 R6
      291 SETLIST                          R26 R27 3 [1]
      293 CALL                             R24 2 1
      294 GETUPVAL                         R25 5
      295 GETTABLEKS                       R25 R25 K29 ["useCallback"]
      297 NEWCLOSURE                       R26 P9
      298 CAPTURE                          VAL R20
      299 CAPTURE                          VAL R0
      300 NEWTABLE                         R27 0 2
      302 GETTABLEKS                       R28 R0 K32 ["OnPinDragged"]
      304 MOVE                             R29 R20
      305 SETLIST                          R27 R28 2 [1]
      307 CALL                             R25 2 1
      308 GETUPVAL                         R26 5
      309 GETTABLEKS                       R26 R26 K29 ["useCallback"]
      311 NEWCLOSURE                       R27 P10
      312 CAPTURE                          VAL R6
      313 NEWTABLE                         R28 0 3
      315 GETTABLEKS                       R29 R0 K32 ["OnPinDragged"]
      317 MOVE                             R30 R20
      318 MOVE                             R31 R6
      319 SETLIST                          R28 R29 3 [1]
      321 CALL                             R26 2 1
      322 GETUPVAL                         R27 5
      323 GETTABLEKS                       R27 R27 K35 ["createElement"]
      325 GETUPVAL                         R28 0
      326 GETTABLEKS                       R28 R28 K36 ["View"]
      328 DUPTABLE                         R29 K41 [{"tag", "LayoutOrder", "backgroundStyle", "ref"}]
      329 LOADK                            R30 K42 ["aspect-1-1 size-full-full"]
      330 SETTABLEKS                       R30 R29 K37 ["tag"]
      332 GETTABLEKS                       R30 R0 K38 ["LayoutOrder"]
      334 SETTABLEKS                       R30 R29 K38 ["LayoutOrder"]
      336 GETTABLEKS                       R30 R1 K8 ["Color"]
      338 GETTABLEKS                       R30 R30 K12 ["Surface"]
      340 GETTABLEKS                       R30 R30 K13 ["Surface_0"]
      342 SETTABLEKS                       R30 R29 K39 ["backgroundStyle"]
      344 GETTABLEKS                       R30 R2 K43 ["setFrame"]
      346 SETTABLEKS                       R30 R29 K40 ["ref"]
      348 GETUPVAL                         R31 11
      349 CALL                             R31 0 1
      350 JUMPIFNOT                        R31 ; [+138]
      351 DUPTABLE                         R30 K45 [{"Canvas"}]
      352 GETUPVAL                         R31 5
      353 GETTABLEKS                       R31 R31 K35 ["createElement"]
      355 GETUPVAL                         R32 15
      356 GETTABLEKS                       R32 R32 K44 ["Canvas"]
      358 DUPTABLE                         R33 K53 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      359 GETIMPORT                        R34 K56 [UDim2.fromScale]
      361 LOADN                            R35 1
      362 LOADN                            R36 1
      363 CALL                             R34 2 1
      364 SETTABLEKS                       R34 R33 K46 ["Size"]
      366 SETTABLEKS                       R18 R33 K27 ["GraphRect"]
      368 GETIMPORT                        R34 K59 [UDim.new]
      370 LOADN                            R35 0
      371 LOADN                            R36 0
      372 CALL                             R34 2 1
      373 SETTABLEKS                       R34 R33 K47 ["ViewportPaddingLeft"]
      375 GETIMPORT                        R34 K59 [UDim.new]
      377 LOADN                            R35 0
      378 LOADN                            R36 0
      379 CALL                             R34 2 1
      380 SETTABLEKS                       R34 R33 K48 ["ViewportPaddingRight"]
      382 GETIMPORT                        R34 K59 [UDim.new]
      384 LOADN                            R35 0
      385 LOADN                            R36 0
      386 CALL                             R34 2 1
      387 SETTABLEKS                       R34 R33 K49 ["ViewportPaddingBottom"]
      389 GETIMPORT                        R34 K59 [UDim.new]
      391 LOADN                            R35 0
      392 LOADN                            R36 0
      393 CALL                             R34 2 1
      394 SETTABLEKS                       R34 R33 K50 ["ViewportPaddingTop"]
      396 LOADN                            R34 1
      397 SETTABLEKS                       R34 R33 K51 ["CanvasBackgroundTransparency"]
      399 LOADN                            R34 1
      400 SETTABLEKS                       R34 R33 K52 ["ViewportBackgroundTransparency"]
      402 DUPTABLE                         R34 K63 [{"Guides", "Points", "DragDetector"}]
      403 GETTABLEKS                       R36 R0 K24 ["InputMode"]
      405 GETIMPORT                        R37 K67 [Enum.AnimationNodeBlend2DInputMode.Polar]
      407 JUMPIFNOTEQ                      R36 R37 ; [+17]
      409 GETUPVAL                         R35 5
      410 GETTABLEKS                       R35 R35 K35 ["createElement"]
      412 GETUPVAL                         R36 16
      413 DUPTABLE                         R37 K71 [{"MaxRadius", "GridColor", "AxisColor", "Thickness"}]
      414 SETTABLEKS                       R16 R37 K25 ["MaxRadius"]
      416 SETTABLEKS                       R8 R37 K68 ["GridColor"]
      418 SETTABLEKS                       R8 R37 K69 ["AxisColor"]
      420 LOADK                            R38 K72 [0.1]
      421 SETTABLEKS                       R38 R37 K70 ["Thickness"]
      423 CALL                             R35 2 1
      424 JUMP                             ; [+15]
      425 GETUPVAL                         R35 5
      426 GETTABLEKS                       R35 R35 K35 ["createElement"]
      428 GETUPVAL                         R36 17
      429 DUPTABLE                         R37 K73 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      430 SETTABLEKS                       R17 R37 K26 ["Extents"]
      432 SETTABLEKS                       R8 R37 K68 ["GridColor"]
      434 SETTABLEKS                       R9 R37 K69 ["AxisColor"]
      436 LOADK                            R38 K72 [0.1]
      437 SETTABLEKS                       R38 R37 K70 ["Thickness"]
      439 CALL                             R35 2 1
      440 SETTABLEKS                       R35 R34 K60 ["Guides"]
      442 GETUPVAL                         R35 5
      443 GETTABLEKS                       R35 R35 K35 ["createElement"]
      445 GETUPVAL                         R36 5
      446 GETTABLEKS                       R36 R36 K74 ["Fragment"]
      448 NEWTABLE                         R37 0 0
      450 MOVE                             R38 R21
      451 CALL                             R35 3 1
      452 SETTABLEKS                       R35 R34 K61 ["Points"]
      454 GETUPVAL                         R35 5
      455 GETTABLEKS                       R35 R35 K35 ["createElement"]
      457 LOADK                            R36 K75 ["UIDragDetector"]
      458 NEWTABLE                         R37 4 0
      460 GETIMPORT                        R38 K78 [Enum.UIDragDetectorDragStyle.Scriptable]
      462 SETTABLEKS                       R38 R37 K79 ["DragStyle"]
      464 GETUPVAL                         R38 5
      465 GETTABLEKS                       R38 R38 K80 ["Event"]
      467 GETTABLEKS                       R38 R38 K81 ["DragStart"]
      469 SETTABLE                         R24 R37 R38
      470 GETUPVAL                         R38 5
      471 GETTABLEKS                       R38 R38 K80 ["Event"]
      473 GETTABLEKS                       R38 R38 K82 ["DragContinue"]
      475 SETTABLE                         R25 R37 R38
      476 GETUPVAL                         R38 5
      477 GETTABLEKS                       R38 R38 K80 ["Event"]
      479 GETTABLEKS                       R38 R38 K83 ["DragEnd"]
      481 SETTABLE                         R26 R37 R38
      482 CALL                             R35 2 1
      483 SETTABLEKS                       R35 R34 K62 ["DragDetector"]
      485 CALL                             R31 3 1
      486 SETTABLEKS                       R31 R30 K44 ["Canvas"]
      488 JUMP                             ; [+169]
      489 DUPTABLE                         R30 K85 [{"ShiftListener"}]
      490 GETUPVAL                         R31 5
      491 GETTABLEKS                       R31 R31 K35 ["createElement"]
      493 LOADK                            R32 K86 ["Frame"]
      494 NEWTABLE                         R33 4 0
      496 GETIMPORT                        R34 K56 [UDim2.fromScale]
      498 LOADN                            R35 1
      499 LOADN                            R36 1
      500 CALL                             R34 2 1
      501 SETTABLEKS                       R34 R33 K46 ["Size"]
      503 LOADN                            R34 1
      504 SETTABLEKS                       R34 R33 K87 ["BackgroundTransparency"]
      506 GETUPVAL                         R34 5
      507 GETTABLEKS                       R34 R34 K80 ["Event"]
      509 GETTABLEKS                       R34 R34 K88 ["InputBegan"]
      511 SETTABLE                         R22 R33 R34
      512 GETUPVAL                         R34 5
      513 GETTABLEKS                       R34 R34 K80 ["Event"]
      515 GETTABLEKS                       R34 R34 K89 ["InputEnded"]
      517 SETTABLE                         R23 R33 R34
      518 DUPTABLE                         R34 K45 [{"Canvas"}]
      519 GETUPVAL                         R35 5
      520 GETTABLEKS                       R35 R35 K35 ["createElement"]
      522 GETUPVAL                         R36 15
      523 GETTABLEKS                       R36 R36 K44 ["Canvas"]
      525 DUPTABLE                         R37 K53 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      526 GETIMPORT                        R38 K56 [UDim2.fromScale]
      528 LOADN                            R39 1
      529 LOADN                            R40 1
      530 CALL                             R38 2 1
      531 SETTABLEKS                       R38 R37 K46 ["Size"]
      533 SETTABLEKS                       R18 R37 K27 ["GraphRect"]
      535 GETIMPORT                        R38 K59 [UDim.new]
      537 LOADN                            R39 0
      538 LOADN                            R40 0
      539 CALL                             R38 2 1
      540 SETTABLEKS                       R38 R37 K47 ["ViewportPaddingLeft"]
      542 GETIMPORT                        R38 K59 [UDim.new]
      544 LOADN                            R39 0
      545 LOADN                            R40 0
      546 CALL                             R38 2 1
      547 SETTABLEKS                       R38 R37 K48 ["ViewportPaddingRight"]
      549 GETIMPORT                        R38 K59 [UDim.new]
      551 LOADN                            R39 0
      552 LOADN                            R40 0
      553 CALL                             R38 2 1
      554 SETTABLEKS                       R38 R37 K49 ["ViewportPaddingBottom"]
      556 GETIMPORT                        R38 K59 [UDim.new]
      558 LOADN                            R39 0
      559 LOADN                            R40 0
      560 CALL                             R38 2 1
      561 SETTABLEKS                       R38 R37 K50 ["ViewportPaddingTop"]
      563 LOADN                            R38 1
      564 SETTABLEKS                       R38 R37 K51 ["CanvasBackgroundTransparency"]
      566 LOADN                            R38 1
      567 SETTABLEKS                       R38 R37 K52 ["ViewportBackgroundTransparency"]
      569 DUPTABLE                         R38 K63 [{"Guides", "Points", "DragDetector"}]
      570 GETTABLEKS                       R40 R0 K24 ["InputMode"]
      572 GETIMPORT                        R41 K67 [Enum.AnimationNodeBlend2DInputMode.Polar]
      574 JUMPIFNOTEQ                      R40 R41 ; [+17]
      576 GETUPVAL                         R39 5
      577 GETTABLEKS                       R39 R39 K35 ["createElement"]
      579 GETUPVAL                         R40 16
      580 DUPTABLE                         R41 K71 [{"MaxRadius", "GridColor", "AxisColor", "Thickness"}]
      581 SETTABLEKS                       R16 R41 K25 ["MaxRadius"]
      583 SETTABLEKS                       R8 R41 K68 ["GridColor"]
      585 SETTABLEKS                       R8 R41 K69 ["AxisColor"]
      587 LOADK                            R42 K72 [0.1]
      588 SETTABLEKS                       R42 R41 K70 ["Thickness"]
      590 CALL                             R39 2 1
      591 JUMP                             ; [+15]
      592 GETUPVAL                         R39 5
      593 GETTABLEKS                       R39 R39 K35 ["createElement"]
      595 GETUPVAL                         R40 17
      596 DUPTABLE                         R41 K73 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      597 SETTABLEKS                       R17 R41 K26 ["Extents"]
      599 SETTABLEKS                       R8 R41 K68 ["GridColor"]
      601 SETTABLEKS                       R9 R41 K69 ["AxisColor"]
      603 LOADK                            R42 K72 [0.1]
      604 SETTABLEKS                       R42 R41 K70 ["Thickness"]
      606 CALL                             R39 2 1
      607 SETTABLEKS                       R39 R38 K60 ["Guides"]
      609 GETUPVAL                         R39 5
      610 GETTABLEKS                       R39 R39 K35 ["createElement"]
      612 GETUPVAL                         R40 5
      613 GETTABLEKS                       R40 R40 K74 ["Fragment"]
      615 NEWTABLE                         R41 0 0
      617 MOVE                             R42 R21
      618 CALL                             R39 3 1
      619 SETTABLEKS                       R39 R38 K61 ["Points"]
      621 GETUPVAL                         R39 5
      622 GETTABLEKS                       R39 R39 K35 ["createElement"]
      624 LOADK                            R40 K75 ["UIDragDetector"]
      625 NEWTABLE                         R41 4 0
      627 GETIMPORT                        R42 K78 [Enum.UIDragDetectorDragStyle.Scriptable]
      629 SETTABLEKS                       R42 R41 K79 ["DragStyle"]
      631 GETUPVAL                         R42 5
      632 GETTABLEKS                       R42 R42 K80 ["Event"]
      634 GETTABLEKS                       R42 R42 K81 ["DragStart"]
      636 SETTABLE                         R24 R41 R42
      637 GETUPVAL                         R42 5
      638 GETTABLEKS                       R42 R42 K80 ["Event"]
      640 GETTABLEKS                       R42 R42 K82 ["DragContinue"]
      642 SETTABLE                         R25 R41 R42
      643 GETUPVAL                         R42 5
      644 GETTABLEKS                       R42 R42 K80 ["Event"]
      646 GETTABLEKS                       R42 R42 K83 ["DragEnd"]
      648 SETTABLE                         R26 R41 R42
      649 CALL                             R39 2 1
      650 SETTABLEKS                       R39 R38 K62 ["DragDetector"]
      652 CALL                             R35 3 1
      653 SETTABLEKS                       R35 R34 K44 ["Canvas"]
      655 CALL                             R31 3 1
      656 SETTABLEKS                       R31 R30 K84 ["ShiftListener"]
      658 CALL                             R27 3 -1
      659 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["UserInputService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Components"]
       17 GETTABLEKS                       R3 R3 K11 ["NodeView"]
       19 GETTABLEKS                       R3 R3 K12 ["CompositorNodeProperty"]
       21 GETTABLEKS                       R3 R3 K13 ["Blend2DMap"]
       23 GETTABLEKS                       R3 R3 K14 ["Blend2DCartesianGuides"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R4 R0 K10 ["Components"]
       30 GETTABLEKS                       R4 R4 K11 ["NodeView"]
       32 GETTABLEKS                       R4 R4 K12 ["CompositorNodeProperty"]
       34 GETTABLEKS                       R4 R4 K13 ["Blend2DMap"]
       36 GETTABLEKS                       R4 R4 K15 ["Blend2DPolarGuides"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K9 [require]
       41 GETTABLEKS                       R5 R0 K16 ["Util"]
       43 GETTABLEKS                       R5 R5 K17 ["Constants"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K9 [require]
       48 GETTABLEKS                       R6 R0 K18 ["Parent"]
       50 GETTABLEKS                       R6 R6 K19 ["Dash"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K9 [require]
       55 GETTABLEKS                       R7 R0 K10 ["Components"]
       57 GETTABLEKS                       R7 R7 K11 ["NodeView"]
       59 GETTABLEKS                       R7 R7 K12 ["CompositorNodeProperty"]
       61 GETTABLEKS                       R7 R7 K20 ["BlendMapShared"]
       63 GETTABLEKS                       R7 R7 K21 ["DraggablePin"]
       65 CALL                             R6 1 1
       66 GETIMPORT                        R7 K9 [require]
       68 GETTABLEKS                       R8 R0 K18 ["Parent"]
       70 GETTABLEKS                       R8 R8 K22 ["Foundation"]
       72 CALL                             R7 1 1
       73 GETIMPORT                        R8 K9 [require]
       75 GETTABLEKS                       R9 R0 K18 ["Parent"]
       77 GETTABLEKS                       R9 R9 K23 ["Graphing"]
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K9 [require]
       82 GETTABLEKS                       R10 R0 K24 ["Contexts"]
       84 GETTABLEKS                       R10 R10 K25 ["NativeGraphContext"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K9 [require]
       89 GETTABLEKS                       R11 R0 K18 ["Parent"]
       91 GETTABLEKS                       R11 R11 K26 ["NodeGraphing"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K9 [require]
       96 GETTABLEKS                       R12 R0 K10 ["Components"]
       98 GETTABLEKS                       R12 R12 K11 ["NodeView"]
      100 GETTABLEKS                       R12 R12 K12 ["CompositorNodeProperty"]
      102 GETTABLEKS                       R12 R12 K27 ["PropertyUtils"]
      104 CALL                             R11 1 1
      105 GETIMPORT                        R12 K9 [require]
      107 GETTABLEKS                       R13 R0 K18 ["Parent"]
      109 GETTABLEKS                       R13 R13 K28 ["React"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K9 [require]
      114 GETTABLEKS                       R14 R0 K18 ["Parent"]
      116 GETTABLEKS                       R14 R14 K29 ["ReactUtils"]
      118 CALL                             R13 1 1
      119 GETIMPORT                        R14 K9 [require]
      121 GETTABLEKS                       R15 R0 K30 ["Hooks"]
      123 GETTABLEKS                       R15 R15 K31 ["useAbsoluteSize"]
      125 CALL                             R14 1 1
      126 GETIMPORT                        R15 K9 [require]
      128 GETTABLEKS                       R16 R0 K30 ["Hooks"]
      130 GETTABLEKS                       R16 R16 K32 ["useSignalRef"]
      132 CALL                             R15 1 1
      133 GETIMPORT                        R16 K9 [require]
      135 GETTABLEKS                       R17 R0 K33 ["Flags"]
      137 GETTABLEKS                       R17 R17 K34 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      139 CALL                             R16 1 1
      140 GETIMPORT                        R17 K9 [require]
      142 GETTABLEKS                       R18 R0 K33 ["Flags"]
      144 GETTABLEKS                       R18 R18 K35 ["getFFlagAnimGraphUIInputSelection"]
      146 CALL                             R17 1 1
      147 GETIMPORT                        R18 K38 [Rect.new]
      149 LOADN                            R19 255
      150 LOADN                            R20 255
      151 LOADN                            R21 1
      152 LOADN                            R22 1
      153 CALL                             R18 4 1
      154 DUPCLOSURE                       R19 K39 [PROTO_0]
      155 CAPTURE                          VAL R1
      156 DUPCLOSURE                       R20 K40 [PROTO_13]
      157 CAPTURE                          VAL R7
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R19
      162 CAPTURE                          VAL R12
      163 CAPTURE                          VAL R9
      164 CAPTURE                          VAL R10
      165 CAPTURE                          VAL R11
      166 CAPTURE                          VAL R5
      167 CAPTURE                          VAL R18
      168 CAPTURE                          VAL R17
      169 CAPTURE                          VAL R6
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R3
      174 CAPTURE                          VAL R2
      175 RETURN                           R20 1
