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
       86 DUPTABLE                         R9 K26 [{"AbsToMap", "Clamp", "Color3", "Extents", "Index", "InputMode", "LockExtents", "MaxRadius", "Mode", "OnPinDragged", "Position", "ZIndex", "Size"}]
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
      106 GETUPVAL                         R10 7
      107 SETTABLEKS                       R10 R9 K8 ["LockExtents"]
      109 GETUPVAL                         R10 8
      110 SETTABLEKS                       R10 R9 K9 ["MaxRadius"]
      112 GETUPVAL                         R10 9
      113 GETTABLEKS                       R10 R10 K20 ["DRAGGABLE_PIN_MODES"]
      115 GETTABLEKS                       R10 R10 K21 ["Blend2D"]
      117 SETTABLEKS                       R10 R9 K10 ["Mode"]
      119 GETUPVAL                         R10 6
      120 GETTABLEKS                       R10 R10 K11 ["OnPinDragged"]
      122 SETTABLEKS                       R10 R9 K11 ["OnPinDragged"]
      124 SETTABLEKS                       R5 R9 K12 ["Position"]
      126 LOADN                            R10 3
      127 SETTABLEKS                       R10 R9 K13 ["ZIndex"]
      129 LOADN                            R10 8
      130 SETTABLEKS                       R10 R9 K14 ["Size"]
      132 CALL                             R7 2 1
      133 SETTABLE                         R7 R0 R6
      134 FORGLOOP                         R1 2 ; [-60]
      136 RETURN                           R0 1

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
       32 GETTABLEKS                       R8 R8 K6 ["Context"]
       34 CALL                             R7 1 1
       35 GETTABLEKS                       R8 R1 K7 ["Color"]
       37 GETTABLEKS                       R8 R8 K8 ["Stroke"]
       39 GETTABLEKS                       R8 R8 K9 ["Default"]
       41 GETTABLEKS                       R8 R8 K10 ["Color3"]
       43 GETTABLEKS                       R10 R1 K7 ["Color"]
       45 GETTABLEKS                       R10 R10 K11 ["Surface"]
       47 GETTABLEKS                       R10 R10 K12 ["Surface_0"]
       49 GETTABLEKS                       R10 R10 K10 ["Color3"]
       51 LOADK                            R11 K13 [0.75]
       52 NAMECALL                         R8 R8 K14 ["Lerp"]
       54 CALL                             R8 3 1
       55 GETTABLEKS                       R9 R1 K7 ["Color"]
       57 GETTABLEKS                       R9 R9 K8 ["Stroke"]
       59 GETTABLEKS                       R9 R9 K9 ["Default"]
       61 GETTABLEKS                       R9 R9 K10 ["Color3"]
       63 GETTABLEKS                       R11 R1 K7 ["Color"]
       65 GETTABLEKS                       R11 R11 K11 ["Surface"]
       67 GETTABLEKS                       R11 R11 K12 ["Surface_0"]
       69 GETTABLEKS                       R11 R11 K10 ["Color3"]
       71 LOADK                            R12 K15 [0.25]
       72 NAMECALL                         R9 R9 K14 ["Lerp"]
       74 CALL                             R9 3 1
       75 GETTABLEKS                       R10 R1 K7 ["Color"]
       77 GETTABLEKS                       R10 R10 K8 ["Stroke"]
       79 GETTABLEKS                       R10 R10 K9 ["Default"]
       81 GETTABLEKS                       R10 R10 K10 ["Color3"]
       83 GETTABLEKS                       R12 R1 K7 ["Color"]
       85 GETTABLEKS                       R12 R12 K11 ["Surface"]
       87 GETTABLEKS                       R12 R12 K12 ["Surface_0"]
       89 GETTABLEKS                       R12 R12 K10 ["Color3"]
       91 LOADK                            R13 K16 [0.6]
       92 NAMECALL                         R10 R10 K14 ["Lerp"]
       94 CALL                             R10 3 1
       95 GETUPVAL                         R11 5
       96 GETTABLEKS                       R11 R11 K17 ["useState"]
       98 LOADNIL                          R12
       99 CALL                             R11 1 2
      100 GETTABLEKS                       R14 R0 K19 ["Padding"]
      102 ORK                              R13 R14 K18 [15]
      103 GETUPVAL                         R14 5
      104 GETTABLEKS                       R14 R14 K20 ["useMemo"]
      106 NEWCLOSURE                       R15 P0
      107 CAPTURE                          VAL R0
      108 CAPTURE                          UPVAL U8
      109 NEWTABLE                         R16 0 3
      111 GETTABLEKS                       R17 R0 K21 ["Position"]
      113 GETTABLEKS                       R18 R0 K22 ["Pins"]
      115 GETTABLEKS                       R19 R0 K23 ["InputMode"]
      117 SETLIST                          R16 R17 3 [1]
      119 CALL                             R14 2 2
      120 GETUPVAL                         R16 5
      121 GETTABLEKS                       R16 R16 K20 ["useMemo"]
      123 NEWCLOSURE                       R17 P1
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R0
      126 CAPTURE                          UPVAL U9
      127 NEWTABLE                         R18 0 3
      129 MOVE                             R19 R11
      130 JUMPIFNOT                        R19 ; [+2]
      131 GETTABLEKS                       R19 R11 K24 ["MaxRadius"]
      133 GETTABLEKS                       R20 R0 K23 ["InputMode"]
      135 GETTABLEKS                       R21 R0 K22 ["Pins"]
      137 SETLIST                          R18 R19 3 [1]
      139 CALL                             R16 2 1
      140 GETUPVAL                         R17 5
      141 GETTABLEKS                       R17 R17 K20 ["useMemo"]
      143 NEWCLOSURE                       R18 P2
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R3
      146 CAPTURE                          UPVAL U10
      147 CAPTURE                          VAL R0
      148 CAPTURE                          VAL R16
      149 CAPTURE                          VAL R15
      150 CAPTURE                          VAL R13
      151 NEWTABLE                         R19 0 6
      153 MOVE                             R20 R11
      154 JUMPIFNOT                        R20 ; [+2]
      155 GETTABLEKS                       R20 R11 K25 ["Extents"]
      157 MOVE                             R21 R11
      158 JUMPIFNOT                        R21 ; [+2]
      159 GETTABLEKS                       R21 R11 K26 ["GraphRect"]
      161 MOVE                             R22 R15
      162 GETTABLEKS                       R23 R0 K23 ["InputMode"]
      164 MOVE                             R24 R16
      165 GETTABLEKS                       R25 R3 K27 ["current"]
      167 SETLIST                          R19 R20 6 [1]
      169 CALL                             R17 2 2
      170 GETUPVAL                         R19 5
      171 GETTABLEKS                       R19 R19 K28 ["useCallback"]
      173 NEWCLOSURE                       R20 P3
      174 CAPTURE                          VAL R12
      175 CAPTURE                          VAL R17
      176 CAPTURE                          VAL R18
      177 CAPTURE                          VAL R16
      178 NEWTABLE                         R21 0 3
      180 MOVE                             R22 R17
      181 MOVE                             R23 R18
      182 MOVE                             R24 R16
      183 SETLIST                          R21 R22 3 [1]
      185 CALL                             R19 2 1
      186 GETUPVAL                         R20 5
      187 GETTABLEKS                       R20 R20 K28 ["useCallback"]
      189 NEWCLOSURE                       R21 P4
      190 CAPTURE                          VAL R3
      191 CAPTURE                          VAL R4
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R0
      194 CAPTURE                          UPVAL U11
      195 CAPTURE                          VAL R7
      196 CAPTURE                          VAL R5
      197 CAPTURE                          UPVAL U8
      198 CAPTURE                          VAL R17
      199 CAPTURE                          VAL R16
      200 NEWTABLE                         R22 0 8
      202 MOVE                             R23 R17
      203 GETTABLEKS                       R24 R3 K27 ["current"]
      205 GETTABLEKS                       R25 R4 K27 ["current"]
      207 MOVE                             R26 R18
      208 GETTABLEKS                       R27 R5 K29 ["enabled"]
      210 GETTABLEKS                       R28 R0 K23 ["InputMode"]
      212 GETUPVAL                         R29 11
      213 CALL                             R29 0 1
      214 GETTABLEKS                       R30 R7 K30 ["isShiftPressed"]
      216 CALL                             R30 0 -1
      217 SETLIST                          R22 R23 -1 [1]
      219 CALL                             R20 2 1
      220 GETUPVAL                         R21 5
      221 GETTABLEKS                       R21 R21 K20 ["useMemo"]
      223 NEWCLOSURE                       R22 P5
      224 CAPTURE                          VAL R14
      225 CAPTURE                          UPVAL U5
      226 CAPTURE                          UPVAL U12
      227 CAPTURE                          VAL R20
      228 CAPTURE                          VAL R1
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R0
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R16
      233 CAPTURE                          UPVAL U13
      234 CAPTURE                          VAL R15
      235 CAPTURE                          VAL R10
      236 NEWTABLE                         R23 0 8
      238 MOVE                             R24 R17
      239 MOVE                             R25 R19
      240 MOVE                             R26 R16
      241 MOVE                             R27 R14
      242 MOVE                             R28 R15
      243 GETTABLEKS                       R29 R0 K23 ["InputMode"]
      245 GETTABLEKS                       R30 R0 K31 ["OnPinDragged"]
      247 MOVE                             R31 R20
      248 SETLIST                          R23 R24 8 [1]
      250 CALL                             R21 2 1
      251 GETUPVAL                         R22 5
      252 GETTABLEKS                       R22 R22 K28 ["useCallback"]
      254 NEWCLOSURE                       R23 P6
      255 CAPTURE                          VAL R5
      256 NEWTABLE                         R24 0 1
      258 GETTABLEKS                       R25 R5 K32 ["enable"]
      260 SETLIST                          R24 R25 1 [1]
      262 CALL                             R22 2 1
      263 GETUPVAL                         R23 5
      264 GETTABLEKS                       R23 R23 K28 ["useCallback"]
      266 NEWCLOSURE                       R24 P7
      267 CAPTURE                          VAL R5
      268 NEWTABLE                         R25 0 1
      270 GETTABLEKS                       R26 R5 K33 ["disable"]
      272 SETLIST                          R25 R26 1 [1]
      274 CALL                             R23 2 1
      275 GETUPVAL                         R24 5
      276 GETTABLEKS                       R24 R24 K28 ["useCallback"]
      278 NEWCLOSURE                       R25 P8
      279 CAPTURE                          VAL R6
      280 CAPTURE                          VAL R20
      281 CAPTURE                          VAL R0
      282 NEWTABLE                         R26 0 3
      284 GETTABLEKS                       R27 R0 K31 ["OnPinDragged"]
      286 MOVE                             R28 R20
      287 MOVE                             R29 R6
      288 SETLIST                          R26 R27 3 [1]
      290 CALL                             R24 2 1
      291 GETUPVAL                         R25 5
      292 GETTABLEKS                       R25 R25 K28 ["useCallback"]
      294 NEWCLOSURE                       R26 P9
      295 CAPTURE                          VAL R20
      296 CAPTURE                          VAL R0
      297 NEWTABLE                         R27 0 2
      299 GETTABLEKS                       R28 R0 K31 ["OnPinDragged"]
      301 MOVE                             R29 R20
      302 SETLIST                          R27 R28 2 [1]
      304 CALL                             R25 2 1
      305 GETUPVAL                         R26 5
      306 GETTABLEKS                       R26 R26 K28 ["useCallback"]
      308 NEWCLOSURE                       R27 P10
      309 CAPTURE                          VAL R6
      310 NEWTABLE                         R28 0 3
      312 GETTABLEKS                       R29 R0 K31 ["OnPinDragged"]
      314 MOVE                             R30 R20
      315 MOVE                             R31 R6
      316 SETLIST                          R28 R29 3 [1]
      318 CALL                             R26 2 1
      319 GETUPVAL                         R27 5
      320 GETTABLEKS                       R27 R27 K34 ["createElement"]
      322 GETUPVAL                         R28 0
      323 GETTABLEKS                       R28 R28 K35 ["View"]
      325 DUPTABLE                         R29 K40 [{"tag", "LayoutOrder", "backgroundStyle", "ref"}]
      326 LOADK                            R30 K41 ["aspect-1-1 size-full-full"]
      327 SETTABLEKS                       R30 R29 K36 ["tag"]
      329 GETTABLEKS                       R30 R0 K37 ["LayoutOrder"]
      331 SETTABLEKS                       R30 R29 K37 ["LayoutOrder"]
      333 GETTABLEKS                       R30 R1 K7 ["Color"]
      335 GETTABLEKS                       R30 R30 K11 ["Surface"]
      337 GETTABLEKS                       R30 R30 K12 ["Surface_0"]
      339 SETTABLEKS                       R30 R29 K38 ["backgroundStyle"]
      341 GETTABLEKS                       R30 R2 K42 ["setFrame"]
      343 SETTABLEKS                       R30 R29 K39 ["ref"]
      345 GETUPVAL                         R31 11
      346 CALL                             R31 0 1
      347 JUMPIFNOT                        R31 ; [+138]
      348 DUPTABLE                         R30 K44 [{"Canvas"}]
      349 GETUPVAL                         R31 5
      350 GETTABLEKS                       R31 R31 K34 ["createElement"]
      352 GETUPVAL                         R32 14
      353 GETTABLEKS                       R32 R32 K43 ["Canvas"]
      355 DUPTABLE                         R33 K52 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      356 GETIMPORT                        R34 K55 [UDim2.fromScale]
      358 LOADN                            R35 1
      359 LOADN                            R36 1
      360 CALL                             R34 2 1
      361 SETTABLEKS                       R34 R33 K45 ["Size"]
      363 SETTABLEKS                       R18 R33 K26 ["GraphRect"]
      365 GETIMPORT                        R34 K58 [UDim.new]
      367 LOADN                            R35 0
      368 LOADN                            R36 0
      369 CALL                             R34 2 1
      370 SETTABLEKS                       R34 R33 K46 ["ViewportPaddingLeft"]
      372 GETIMPORT                        R34 K58 [UDim.new]
      374 LOADN                            R35 0
      375 LOADN                            R36 0
      376 CALL                             R34 2 1
      377 SETTABLEKS                       R34 R33 K47 ["ViewportPaddingRight"]
      379 GETIMPORT                        R34 K58 [UDim.new]
      381 LOADN                            R35 0
      382 LOADN                            R36 0
      383 CALL                             R34 2 1
      384 SETTABLEKS                       R34 R33 K48 ["ViewportPaddingBottom"]
      386 GETIMPORT                        R34 K58 [UDim.new]
      388 LOADN                            R35 0
      389 LOADN                            R36 0
      390 CALL                             R34 2 1
      391 SETTABLEKS                       R34 R33 K49 ["ViewportPaddingTop"]
      393 LOADN                            R34 1
      394 SETTABLEKS                       R34 R33 K50 ["CanvasBackgroundTransparency"]
      396 LOADN                            R34 1
      397 SETTABLEKS                       R34 R33 K51 ["ViewportBackgroundTransparency"]
      399 DUPTABLE                         R34 K62 [{"Guides", "Points", "DragDetector"}]
      400 GETTABLEKS                       R36 R0 K23 ["InputMode"]
      402 GETIMPORT                        R37 K66 [Enum.AnimationNodeBlend2DInputMode.Polar]
      404 JUMPIFNOTEQ                      R36 R37 ; [+17]
      406 GETUPVAL                         R35 5
      407 GETTABLEKS                       R35 R35 K34 ["createElement"]
      409 GETUPVAL                         R36 15
      410 DUPTABLE                         R37 K70 [{"MaxRadius", "GridColor", "AxisColor", "Thickness"}]
      411 SETTABLEKS                       R16 R37 K24 ["MaxRadius"]
      413 SETTABLEKS                       R8 R37 K67 ["GridColor"]
      415 SETTABLEKS                       R8 R37 K68 ["AxisColor"]
      417 LOADK                            R38 K71 [0.1]
      418 SETTABLEKS                       R38 R37 K69 ["Thickness"]
      420 CALL                             R35 2 1
      421 JUMP                             ; [+15]
      422 GETUPVAL                         R35 5
      423 GETTABLEKS                       R35 R35 K34 ["createElement"]
      425 GETUPVAL                         R36 16
      426 DUPTABLE                         R37 K72 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      427 SETTABLEKS                       R17 R37 K25 ["Extents"]
      429 SETTABLEKS                       R8 R37 K67 ["GridColor"]
      431 SETTABLEKS                       R9 R37 K68 ["AxisColor"]
      433 LOADK                            R38 K71 [0.1]
      434 SETTABLEKS                       R38 R37 K69 ["Thickness"]
      436 CALL                             R35 2 1
      437 SETTABLEKS                       R35 R34 K59 ["Guides"]
      439 GETUPVAL                         R35 5
      440 GETTABLEKS                       R35 R35 K34 ["createElement"]
      442 GETUPVAL                         R36 5
      443 GETTABLEKS                       R36 R36 K73 ["Fragment"]
      445 NEWTABLE                         R37 0 0
      447 MOVE                             R38 R21
      448 CALL                             R35 3 1
      449 SETTABLEKS                       R35 R34 K60 ["Points"]
      451 GETUPVAL                         R35 5
      452 GETTABLEKS                       R35 R35 K34 ["createElement"]
      454 LOADK                            R36 K74 ["UIDragDetector"]
      455 NEWTABLE                         R37 4 0
      457 GETIMPORT                        R38 K77 [Enum.UIDragDetectorDragStyle.Scriptable]
      459 SETTABLEKS                       R38 R37 K78 ["DragStyle"]
      461 GETUPVAL                         R38 5
      462 GETTABLEKS                       R38 R38 K79 ["Event"]
      464 GETTABLEKS                       R38 R38 K80 ["DragStart"]
      466 SETTABLE                         R24 R37 R38
      467 GETUPVAL                         R38 5
      468 GETTABLEKS                       R38 R38 K79 ["Event"]
      470 GETTABLEKS                       R38 R38 K81 ["DragContinue"]
      472 SETTABLE                         R25 R37 R38
      473 GETUPVAL                         R38 5
      474 GETTABLEKS                       R38 R38 K79 ["Event"]
      476 GETTABLEKS                       R38 R38 K82 ["DragEnd"]
      478 SETTABLE                         R26 R37 R38
      479 CALL                             R35 2 1
      480 SETTABLEKS                       R35 R34 K61 ["DragDetector"]
      482 CALL                             R31 3 1
      483 SETTABLEKS                       R31 R30 K43 ["Canvas"]
      485 JUMP                             ; [+169]
      486 DUPTABLE                         R30 K84 [{"ShiftListener"}]
      487 GETUPVAL                         R31 5
      488 GETTABLEKS                       R31 R31 K34 ["createElement"]
      490 LOADK                            R32 K85 ["Frame"]
      491 NEWTABLE                         R33 4 0
      493 GETIMPORT                        R34 K55 [UDim2.fromScale]
      495 LOADN                            R35 1
      496 LOADN                            R36 1
      497 CALL                             R34 2 1
      498 SETTABLEKS                       R34 R33 K45 ["Size"]
      500 LOADN                            R34 1
      501 SETTABLEKS                       R34 R33 K86 ["BackgroundTransparency"]
      503 GETUPVAL                         R34 5
      504 GETTABLEKS                       R34 R34 K79 ["Event"]
      506 GETTABLEKS                       R34 R34 K87 ["InputBegan"]
      508 SETTABLE                         R22 R33 R34
      509 GETUPVAL                         R34 5
      510 GETTABLEKS                       R34 R34 K79 ["Event"]
      512 GETTABLEKS                       R34 R34 K88 ["InputEnded"]
      514 SETTABLE                         R23 R33 R34
      515 DUPTABLE                         R34 K44 [{"Canvas"}]
      516 GETUPVAL                         R35 5
      517 GETTABLEKS                       R35 R35 K34 ["createElement"]
      519 GETUPVAL                         R36 14
      520 GETTABLEKS                       R36 R36 K43 ["Canvas"]
      522 DUPTABLE                         R37 K52 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      523 GETIMPORT                        R38 K55 [UDim2.fromScale]
      525 LOADN                            R39 1
      526 LOADN                            R40 1
      527 CALL                             R38 2 1
      528 SETTABLEKS                       R38 R37 K45 ["Size"]
      530 SETTABLEKS                       R18 R37 K26 ["GraphRect"]
      532 GETIMPORT                        R38 K58 [UDim.new]
      534 LOADN                            R39 0
      535 LOADN                            R40 0
      536 CALL                             R38 2 1
      537 SETTABLEKS                       R38 R37 K46 ["ViewportPaddingLeft"]
      539 GETIMPORT                        R38 K58 [UDim.new]
      541 LOADN                            R39 0
      542 LOADN                            R40 0
      543 CALL                             R38 2 1
      544 SETTABLEKS                       R38 R37 K47 ["ViewportPaddingRight"]
      546 GETIMPORT                        R38 K58 [UDim.new]
      548 LOADN                            R39 0
      549 LOADN                            R40 0
      550 CALL                             R38 2 1
      551 SETTABLEKS                       R38 R37 K48 ["ViewportPaddingBottom"]
      553 GETIMPORT                        R38 K58 [UDim.new]
      555 LOADN                            R39 0
      556 LOADN                            R40 0
      557 CALL                             R38 2 1
      558 SETTABLEKS                       R38 R37 K49 ["ViewportPaddingTop"]
      560 LOADN                            R38 1
      561 SETTABLEKS                       R38 R37 K50 ["CanvasBackgroundTransparency"]
      563 LOADN                            R38 1
      564 SETTABLEKS                       R38 R37 K51 ["ViewportBackgroundTransparency"]
      566 DUPTABLE                         R38 K62 [{"Guides", "Points", "DragDetector"}]
      567 GETTABLEKS                       R40 R0 K23 ["InputMode"]
      569 GETIMPORT                        R41 K66 [Enum.AnimationNodeBlend2DInputMode.Polar]
      571 JUMPIFNOTEQ                      R40 R41 ; [+17]
      573 GETUPVAL                         R39 5
      574 GETTABLEKS                       R39 R39 K34 ["createElement"]
      576 GETUPVAL                         R40 15
      577 DUPTABLE                         R41 K70 [{"MaxRadius", "GridColor", "AxisColor", "Thickness"}]
      578 SETTABLEKS                       R16 R41 K24 ["MaxRadius"]
      580 SETTABLEKS                       R8 R41 K67 ["GridColor"]
      582 SETTABLEKS                       R8 R41 K68 ["AxisColor"]
      584 LOADK                            R42 K71 [0.1]
      585 SETTABLEKS                       R42 R41 K69 ["Thickness"]
      587 CALL                             R39 2 1
      588 JUMP                             ; [+15]
      589 GETUPVAL                         R39 5
      590 GETTABLEKS                       R39 R39 K34 ["createElement"]
      592 GETUPVAL                         R40 16
      593 DUPTABLE                         R41 K72 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      594 SETTABLEKS                       R17 R41 K25 ["Extents"]
      596 SETTABLEKS                       R8 R41 K67 ["GridColor"]
      598 SETTABLEKS                       R9 R41 K68 ["AxisColor"]
      600 LOADK                            R42 K71 [0.1]
      601 SETTABLEKS                       R42 R41 K69 ["Thickness"]
      603 CALL                             R39 2 1
      604 SETTABLEKS                       R39 R38 K59 ["Guides"]
      606 GETUPVAL                         R39 5
      607 GETTABLEKS                       R39 R39 K34 ["createElement"]
      609 GETUPVAL                         R40 5
      610 GETTABLEKS                       R40 R40 K73 ["Fragment"]
      612 NEWTABLE                         R41 0 0
      614 MOVE                             R42 R21
      615 CALL                             R39 3 1
      616 SETTABLEKS                       R39 R38 K60 ["Points"]
      618 GETUPVAL                         R39 5
      619 GETTABLEKS                       R39 R39 K34 ["createElement"]
      621 LOADK                            R40 K74 ["UIDragDetector"]
      622 NEWTABLE                         R41 4 0
      624 GETIMPORT                        R42 K77 [Enum.UIDragDetectorDragStyle.Scriptable]
      626 SETTABLEKS                       R42 R41 K78 ["DragStyle"]
      628 GETUPVAL                         R42 5
      629 GETTABLEKS                       R42 R42 K79 ["Event"]
      631 GETTABLEKS                       R42 R42 K80 ["DragStart"]
      633 SETTABLE                         R24 R41 R42
      634 GETUPVAL                         R42 5
      635 GETTABLEKS                       R42 R42 K79 ["Event"]
      637 GETTABLEKS                       R42 R42 K81 ["DragContinue"]
      639 SETTABLE                         R25 R41 R42
      640 GETUPVAL                         R42 5
      641 GETTABLEKS                       R42 R42 K79 ["Event"]
      643 GETTABLEKS                       R42 R42 K82 ["DragEnd"]
      645 SETTABLE                         R26 R41 R42
      646 CALL                             R39 2 1
      647 SETTABLEKS                       R39 R38 K61 ["DragDetector"]
      649 CALL                             R35 3 1
      650 SETTABLEKS                       R35 R34 K43 ["Canvas"]
      652 CALL                             R31 3 1
      653 SETTABLEKS                       R31 R30 K83 ["ShiftListener"]
      655 CALL                             R27 3 -1
      656 RETURN                           R27 -1

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
       84 GETTABLEKS                       R10 R10 K25 ["ModifierKeysContext"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K9 [require]
       89 GETTABLEKS                       R11 R0 K24 ["Contexts"]
       91 GETTABLEKS                       R11 R11 K26 ["NativeGraphContext"]
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
      137 GETTABLEKS                       R17 R17 K34 ["getFFlagAnimGraphUIInputSelection"]
      139 CALL                             R16 1 1
      140 GETIMPORT                        R17 K37 [Rect.new]
      142 LOADN                            R18 255
      143 LOADN                            R19 255
      144 LOADN                            R20 1
      145 LOADN                            R21 1
      146 CALL                             R17 4 1
      147 DUPCLOSURE                       R18 K38 [PROTO_0]
      148 CAPTURE                          VAL R1
      149 DUPCLOSURE                       R19 K39 [PROTO_13]
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R14
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R13
      154 CAPTURE                          VAL R18
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R10
      157 CAPTURE                          VAL R9
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R5
      160 CAPTURE                          VAL R17
      161 CAPTURE                          VAL R16
      162 CAPTURE                          VAL R6
      163 CAPTURE                          VAL R4
      164 CAPTURE                          VAL R8
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R2
      167 RETURN                           R19 1
