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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["InputMode"]
        3 GETIMPORT                        R1 K4 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
        5 JUMPIFNOTEQ                      R0 R1 ; [+8]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R0 R1 K5 ["Position"]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K6 ["Pins"]
       13 RETURN                           R0 2
       14 GETUPVAL                         R1 1
       15 GETTABLEKS                       R0 R1 K7 ["toCartesian"]
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K5 ["Position"]
       20 JUMPIF                           R1 ; [+5]
       21 GETIMPORT                        R1 K10 [Vector2.new]
       23 LOADN                            R2 0
       24 LOADN                            R3 0
       25 CALL                             R1 2 1
       26 CALL                             R0 1 1
       27 NEWTABLE                         R1 0 0
       29 GETUPVAL                         R5 0
       30 GETTABLEKS                       R2 R5 K6 ["Pins"]
       32 LOADNIL                          R3
       33 LOADNIL                          R4
       34 FORGPREP                         R2
       35 GETUPVAL                         R8 1
       36 GETTABLEKS                       R7 R8 K7 ["toCartesian"]
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
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["MaxRadius"]
        5 RETURN                           R0 1
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K1 ["InputMode"]
        9 GETIMPORT                        R1 K5 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       11 JUMPIFNOTEQ                      R0 R1 ; [+3]
       13 LOADN                            R0 0
       14 RETURN                           R0 1
       15 GETUPVAL                         R1 2
       16 GETTABLEKS                       R0 R1 K6 ["reduce"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R1 R2 K7 ["Pins"]
       21 DUPCLOSURE                       R2 K8 [PROTO_2]
       22 LOADN                            R3 0
       23 CALL                             R0 3 1
       24 JUMPIFNOTEQKN                    R0 K9 [0] ; [+2]
       26 LOADN                            R0 1
       27 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["Extents"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["GraphRect"]
        8 RETURN                           R0 2
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K2 ["current"]
       12 JUMPIFNOT                        R0 ; [+14]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K2 ["current"]
       16 GETTABLEKS                       R0 R1 K3 ["X"]
       18 JUMPIFEQKN                       R0 K4 [0] ; [+8]
       20 GETUPVAL                         R2 1
       21 GETTABLEKS                       R1 R2 K2 ["current"]
       23 GETTABLEKS                       R0 R1 K5 ["Y"]
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
       44 GETUPVAL                         R3 3
       45 GETTABLEKS                       R2 R3 K9 ["InputMode"]
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
      143 GETUPVAL                         R7 2
      144 GETTABLEKS                       R6 R7 K22 ["Width"]
      146 DIVK                             R5 R6 K21 [2]
      147 SUB                              R3 R4 R5
      148 GETTABLEKS                       R4 R0 K5 ["Y"]
      150 CALL                             R2 2 1
      151 MOVE                             R0 R2
      152 GETIMPORT                        R2 K8 [Vector2.new]
      154 GETTABLEKS                       R4 R1 K3 ["X"]
      156 GETUPVAL                         R7 2
      157 GETTABLEKS                       R6 R7 K22 ["Width"]
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
      177 GETUPVAL                         R8 2
      178 GETTABLEKS                       R7 R8 K23 ["Height"]
      180 DIVK                             R6 R7 K21 [2]
      181 SUB                              R4 R5 R6
      182 CALL                             R2 2 1
      183 MOVE                             R0 R2
      184 GETIMPORT                        R2 K8 [Vector2.new]
      186 GETTABLEKS                       R3 R1 K3 ["X"]
      188 GETTABLEKS                       R5 R1 K5 ["Y"]
      190 GETUPVAL                         R8 2
      191 GETTABLEKS                       R7 R8 K23 ["Height"]
      193 DIVK                             R6 R7 K21 [2]
      194 ADD                              R4 R5 R6
      195 CALL                             R2 2 1
      196 MOVE                             R1 R2
      197 ADD                              R3 R0 R1
      198 DIVK                             R2 R3 K21 [2]
      199 SUB                              R5 R1 R0
      200 GETUPVAL                         R9 1
      201 GETTABLEKS                       R8 R9 K2 ["current"]
      203 GETTABLEKS                       R7 R8 K3 ["X"]
      205 LOADN                            R9 2
      206 GETUPVAL                         R10 6
      207 MUL                              R8 R9 R10
      208 ADD                              R6 R7 R8
      209 MUL                              R4 R5 R6
      210 GETUPVAL                         R7 1
      211 GETTABLEKS                       R6 R7 K2 ["current"]
      213 GETTABLEKS                       R5 R6 K3 ["X"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["current"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K0 ["current"]
        7 JUMPIF                           R2 ; [+3]
        8 GETIMPORT                        R2 K3 [Vector2.zero]
       10 RETURN                           R2 1
       11 GETTABLEKS                       R4 R0 K4 ["X"]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R6 R7 K0 ["current"]
       16 GETTABLEKS                       R5 R6 K4 ["X"]
       18 SUB                              R3 R4 R5
       19 GETUPVAL                         R6 0
       20 GETTABLEKS                       R5 R6 K0 ["current"]
       22 GETTABLEKS                       R4 R5 K4 ["X"]
       24 DIV                              R2 R3 R4
       25 GETTABLEKS                       R5 R0 K5 ["Y"]
       27 GETUPVAL                         R8 1
       28 GETTABLEKS                       R7 R8 K0 ["current"]
       30 GETTABLEKS                       R6 R7 K5 ["Y"]
       32 SUB                              R4 R5 R6
       33 GETUPVAL                         R7 0
       34 GETTABLEKS                       R6 R7 K0 ["current"]
       36 GETTABLEKS                       R5 R6 K5 ["Y"]
       38 DIV                              R3 R4 R5
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R6 R7 K6 ["Min"]
       42 GETTABLEKS                       R5 R6 K4 ["X"]
       44 GETUPVAL                         R8 2
       45 GETTABLEKS                       R7 R8 K7 ["Width"]
       47 MUL                              R6 R2 R7
       48 ADD                              R4 R5 R6
       49 GETUPVAL                         R8 2
       50 GETTABLEKS                       R7 R8 K8 ["Max"]
       52 GETTABLEKS                       R6 R7 K5 ["Y"]
       54 GETUPVAL                         R9 2
       55 GETTABLEKS                       R8 R9 K9 ["Height"]
       57 MUL                              R7 R3 R8
       58 SUB                              R5 R6 R7
       59 GETUPVAL                         R7 3
       60 GETTABLEKS                       R6 R7 K10 ["InputMode"]
       62 GETIMPORT                        R7 K14 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       64 JUMPIFNOTEQ                      R6 R7 ; [+78]
       66 GETUPVAL                         R7 4
       67 GETTABLEKS                       R6 R7 K15 ["enabled"]
       69 JUMPIFNOT                        R6 ; [+32]
       70 GETUPVAL                         R7 5
       71 GETTABLEKS                       R6 R7 K16 ["roundStep"]
       73 MOVE                             R7 R4
       74 GETUPVAL                         R10 6
       75 GETTABLEKS                       R9 R10 K6 ["Min"]
       77 GETTABLEKS                       R8 R9 K4 ["X"]
       79 GETUPVAL                         R11 6
       80 GETTABLEKS                       R10 R11 K8 ["Max"]
       82 GETTABLEKS                       R9 R10 K4 ["X"]
       84 CALL                             R6 3 1
       85 MOVE                             R4 R6
       86 GETUPVAL                         R7 5
       87 GETTABLEKS                       R6 R7 K16 ["roundStep"]
       89 MOVE                             R7 R5
       90 GETUPVAL                         R10 6
       91 GETTABLEKS                       R9 R10 K6 ["Min"]
       93 GETTABLEKS                       R8 R9 K5 ["Y"]
       95 GETUPVAL                         R11 6
       96 GETTABLEKS                       R10 R11 K8 ["Max"]
       98 GETTABLEKS                       R9 R10 K5 ["Y"]
      100 CALL                             R6 3 1
      101 MOVE                             R5 R6
      102 JUMPIFNOT                        R1 ; [+34]
      103 GETUPVAL                         R10 6
      104 GETTABLEKS                       R9 R10 K6 ["Min"]
      106 GETTABLEKS                       R8 R9 K4 ["X"]
      108 GETUPVAL                         R11 6
      109 GETTABLEKS                       R10 R11 K8 ["Max"]
      111 GETTABLEKS                       R9 R10 K4 ["X"]
      113 FASTCALL3                        MATH_CLAMP R4 R8 R9
      115 MOVE                             R7 R4
      116 GETIMPORT                        R6 K19 [math.clamp]
      118 CALL                             R6 3 1
      119 MOVE                             R4 R6
      120 GETUPVAL                         R10 6
      121 GETTABLEKS                       R9 R10 K6 ["Min"]
      123 GETTABLEKS                       R8 R9 K5 ["Y"]
      125 GETUPVAL                         R11 6
      126 GETTABLEKS                       R10 R11 K8 ["Max"]
      128 GETTABLEKS                       R9 R10 K5 ["Y"]
      130 FASTCALL3                        MATH_CLAMP R5 R8 R9
      132 MOVE                             R7 R5
      133 GETIMPORT                        R6 K19 [math.clamp]
      135 CALL                             R6 3 1
      136 MOVE                             R5 R6
      137 GETIMPORT                        R6 K21 [Vector2.new]
      139 MOVE                             R7 R4
      140 MOVE                             R8 R5
      141 CALL                             R6 2 -1
      142 RETURN                           R6 -1
      143 GETUPVAL                         R7 3
      144 GETTABLEKS                       R6 R7 K10 ["InputMode"]
      146 GETIMPORT                        R7 K23 [Enum.AnimationNodeBlend2DInputMode.Polar]
      148 JUMPIFNOTEQ                      R6 R7 ; [+50]
      150 GETIMPORT                        R7 K21 [Vector2.new]
      152 MOVE                             R8 R4
      153 MOVE                             R9 R5
      154 CALL                             R7 2 1
      155 GETTABLEKS                       R6 R7 K24 ["Magnitude"]
      157 FASTCALL2                        MATH_ATAN2 R4 R5 ; [+5]
      159 MOVE                             R9 R4
      160 MOVE                             R10 R5
      161 GETIMPORT                        R8 K26 [math.atan2]
      163 CALL                             R8 2 1
      164 MINUS                            R7 R8
      165 GETUPVAL                         R9 4
      166 GETTABLEKS                       R8 R9 K15 ["enabled"]
      168 JUMPIFNOT                        R8 ; [+14]
      169 GETUPVAL                         R9 5
      170 GETTABLEKS                       R8 R9 K16 ["roundStep"]
      172 MOVE                             R9 R6
      173 LOADN                            R10 0
      174 GETUPVAL                         R11 7
      175 CALL                             R8 3 1
      176 MOVE                             R6 R8
      177 DIVK                             R9 R7 K27 [0.785398163397448]
      178 FASTCALL1                        MATH_ROUND R9 ; [+2]
      179 GETIMPORT                        R8 K29 [math.round]
      181 CALL                             R8 1 1
      182 MULK                             R7 R8 K27 [0.785398163397448]
      183 JUMPIFNOT                        R1 ; [+9]
      184 LOADN                            R10 0
      185 GETUPVAL                         R11 7
      186 FASTCALL3                        MATH_CLAMP R6 R10 R11
      188 MOVE                             R9 R6
      189 GETIMPORT                        R8 K19 [math.clamp]
      191 CALL                             R8 3 1
      192 MOVE                             R6 R8
      193 GETIMPORT                        R8 K21 [Vector2.new]
      195 MOVE                             R9 R7
      196 MOVE                             R10 R6
      197 CALL                             R8 2 -1
      198 RETURN                           R8 -1
      199 GETIMPORT                        R6 K31 [error]
      201 LOADK                            R8 K32 ["Unknown input mode: "]
      202 GETUPVAL                         R11 3
      203 GETTABLEKS                       R10 R11 K10 ["InputMode"]
      205 FASTCALL1                        TOSTRING R10 ; [+2]
      206 GETIMPORT                        R9 K34 [tostring]
      208 CALL                             R9 1 1
      209 CONCAT                           R7 R8 R9
      210 CALL                             R6 1 0
      211 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+67]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["createElement"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K15 [{"AbsToMap", "Clamp", "Color3", "Extents", "Image", "Index", "InputMode", "LockExtents", "MaxRadius", "Mode", "OnPinDragged", "Position", "ZIndex", "Size"}]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K1 ["AbsToMap"]
       13 LOADB                            R4 1
       14 SETTABLEKS                       R4 R3 K2 ["Clamp"]
       16 GETUPVAL                         R8 4
       17 GETTABLEKS                       R7 R8 K16 ["Color"]
       19 GETTABLEKS                       R6 R7 K17 ["System"]
       21 GETTABLEKS                       R5 R6 K18 ["Warning"]
       23 GETTABLEKS                       R4 R5 K3 ["Color3"]
       25 SETTABLEKS                       R4 R3 K3 ["Color3"]
       27 GETUPVAL                         R4 5
       28 SETTABLEKS                       R4 R3 K4 ["Extents"]
       30 LOADK                            R4 K19 ["rbxasset://textures/AnimLibrary/BlendMapCursor.png"]
       31 SETTABLEKS                       R4 R3 K5 ["Image"]
       33 LOADN                            R4 0
       34 SETTABLEKS                       R4 R3 K6 ["Index"]
       36 GETUPVAL                         R5 6
       37 GETTABLEKS                       R4 R5 K7 ["InputMode"]
       39 SETTABLEKS                       R4 R3 K7 ["InputMode"]
       41 GETUPVAL                         R4 7
       42 SETTABLEKS                       R4 R3 K8 ["LockExtents"]
       44 GETUPVAL                         R4 8
       45 SETTABLEKS                       R4 R3 K9 ["MaxRadius"]
       47 GETUPVAL                         R6 9
       48 GETTABLEKS                       R5 R6 K20 ["DRAGGABLE_PIN_MODES"]
       50 GETTABLEKS                       R4 R5 K21 ["Blend2D"]
       52 SETTABLEKS                       R4 R3 K10 ["Mode"]
       54 GETUPVAL                         R5 6
       55 GETTABLEKS                       R4 R5 K11 ["OnPinDragged"]
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
       82 GETUPVAL                         R8 1
       83 GETTABLEKS                       R7 R8 K0 ["createElement"]
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
      101 GETUPVAL                         R11 6
      102 GETTABLEKS                       R10 R11 K7 ["InputMode"]
      104 SETTABLEKS                       R10 R9 K7 ["InputMode"]
      106 GETUPVAL                         R10 7
      107 SETTABLEKS                       R10 R9 K8 ["LockExtents"]
      109 GETUPVAL                         R10 8
      110 SETTABLEKS                       R10 R9 K9 ["MaxRadius"]
      112 GETUPVAL                         R12 9
      113 GETTABLEKS                       R11 R12 K20 ["DRAGGABLE_PIN_MODES"]
      115 GETTABLEKS                       R10 R11 K21 ["Blend2D"]
      117 SETTABLEKS                       R10 R9 K10 ["Mode"]
      119 GETUPVAL                         R11 6
      120 GETTABLEKS                       R10 R11 K11 ["OnPinDragged"]
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
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K6 ["enable"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        2 GETIMPORT                        R3 K3 [Enum.KeyCode.LeftShift]
        4 JUMPIFEQ                         R2 R3 ; [+7]
        6 GETTABLEKS                       R2 R1 K0 ["KeyCode"]
        8 GETIMPORT                        R3 K5 [Enum.KeyCode.RightShift]
       10 JUMPIFNOTEQ                      R2 R3 ; [+5]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K6 ["disable"]
       15 CALL                             R2 0 0
       16 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["beginUndoTransaction"]
        3 LOADK                            R3 K1 ["Blend2DMap Drag"]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 LOADB                            R4 1
        8 CALL                             R2 2 1
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K2 ["OnPinDragged"]
       12 JUMPIFNOT                        R3 ; [+6]
       13 GETUPVAL                         R4 2
       14 GETTABLEKS                       R3 R4 K2 ["OnPinDragged"]
       16 LOADN                            R4 0
       17 MOVE                             R5 R2
       18 CALL                             R3 2 0
       19 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 LOADB                            R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["OnPinDragged"]
        7 JUMPIFNOT                        R3 ; [+6]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R3 R4 K0 ["OnPinDragged"]
       11 LOADN                            R4 0
       12 MOVE                             R5 R2
       13 CALL                             R3 2 0
       14 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["finishUndoTransaction"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["useRef"]
       11 LOADNIL                          R4
       12 CALL                             R3 1 1
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R4 R5 K2 ["useRef"]
       16 LOADNIL                          R5
       17 CALL                             R4 1 1
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R5 R6 K3 ["useSignalState"]
       21 GETTABLEKS                       R6 R2 K4 ["observeAbsoluteSize"]
       23 CALL                             R5 1 1
       24 SETTABLEKS                       R5 R3 K5 ["current"]
       26 GETUPVAL                         R6 3
       27 GETTABLEKS                       R5 R6 K3 ["useSignalState"]
       29 GETTABLEKS                       R6 R2 K6 ["observeAbsolutePosition"]
       31 CALL                             R5 1 1
       32 SETTABLEKS                       R5 R4 K5 ["current"]
       34 GETUPVAL                         R6 4
       35 GETTABLEKS                       R5 R6 K7 ["useToggleState"]
       37 GETUPVAL                         R6 5
       38 CALL                             R5 1 1
       39 GETUPVAL                         R7 2
       40 GETTABLEKS                       R6 R7 K8 ["useContext"]
       42 GETUPVAL                         R8 6
       43 GETTABLEKS                       R7 R8 K9 ["Context"]
       45 CALL                             R6 1 1
       46 GETTABLEKS                       R10 R1 K10 ["Color"]
       48 GETTABLEKS                       R9 R10 K11 ["Stroke"]
       50 GETTABLEKS                       R8 R9 K12 ["Default"]
       52 GETTABLEKS                       R7 R8 K13 ["Color3"]
       54 GETTABLEKS                       R12 R1 K10 ["Color"]
       56 GETTABLEKS                       R11 R12 K14 ["Surface"]
       58 GETTABLEKS                       R10 R11 K15 ["Surface_0"]
       60 GETTABLEKS                       R9 R10 K13 ["Color3"]
       62 LOADK                            R10 K16 [0.75]
       63 NAMECALL                         R7 R7 K17 ["Lerp"]
       65 CALL                             R7 3 1
       66 GETTABLEKS                       R11 R1 K10 ["Color"]
       68 GETTABLEKS                       R10 R11 K11 ["Stroke"]
       70 GETTABLEKS                       R9 R10 K12 ["Default"]
       72 GETTABLEKS                       R8 R9 K13 ["Color3"]
       74 GETTABLEKS                       R13 R1 K10 ["Color"]
       76 GETTABLEKS                       R12 R13 K14 ["Surface"]
       78 GETTABLEKS                       R11 R12 K15 ["Surface_0"]
       80 GETTABLEKS                       R10 R11 K13 ["Color3"]
       82 LOADK                            R11 K18 [0.25]
       83 NAMECALL                         R8 R8 K17 ["Lerp"]
       85 CALL                             R8 3 1
       86 GETTABLEKS                       R12 R1 K10 ["Color"]
       88 GETTABLEKS                       R11 R12 K11 ["Stroke"]
       90 GETTABLEKS                       R10 R11 K12 ["Default"]
       92 GETTABLEKS                       R9 R10 K13 ["Color3"]
       94 GETTABLEKS                       R14 R1 K10 ["Color"]
       96 GETTABLEKS                       R13 R14 K14 ["Surface"]
       98 GETTABLEKS                       R12 R13 K15 ["Surface_0"]
      100 GETTABLEKS                       R11 R12 K13 ["Color3"]
      102 LOADK                            R12 K19 [0.6]
      103 NAMECALL                         R9 R9 K17 ["Lerp"]
      105 CALL                             R9 3 1
      106 GETUPVAL                         R11 2
      107 GETTABLEKS                       R10 R11 K20 ["useState"]
      109 LOADNIL                          R11
      110 CALL                             R10 1 2
      111 GETTABLEKS                       R13 R0 K22 ["Padding"]
      113 ORK                              R12 R13 K21 [15]
      114 GETUPVAL                         R14 2
      115 GETTABLEKS                       R13 R14 K23 ["useMemo"]
      117 NEWCLOSURE                       R14 P0
      118 CAPTURE                          VAL R0
      119 CAPTURE                          UPVAL U7
      120 NEWTABLE                         R15 0 3
      122 GETTABLEKS                       R16 R0 K24 ["Position"]
      124 GETTABLEKS                       R17 R0 K25 ["Pins"]
      126 GETTABLEKS                       R18 R0 K26 ["InputMode"]
      128 SETLIST                          R15 R16 3 [1]
      130 CALL                             R13 2 2
      131 GETUPVAL                         R16 2
      132 GETTABLEKS                       R15 R16 K23 ["useMemo"]
      134 NEWCLOSURE                       R16 P1
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R0
      137 CAPTURE                          UPVAL U8
      138 NEWTABLE                         R17 0 3
      140 MOVE                             R18 R10
      141 JUMPIFNOT                        R18 ; [+2]
      142 GETTABLEKS                       R18 R10 K27 ["MaxRadius"]
      144 GETTABLEKS                       R19 R0 K26 ["InputMode"]
      146 GETTABLEKS                       R20 R0 K25 ["Pins"]
      148 SETLIST                          R17 R18 3 [1]
      150 CALL                             R15 2 1
      151 GETUPVAL                         R17 2
      152 GETTABLEKS                       R16 R17 K23 ["useMemo"]
      154 NEWCLOSURE                       R17 P2
      155 CAPTURE                          VAL R10
      156 CAPTURE                          VAL R3
      157 CAPTURE                          UPVAL U9
      158 CAPTURE                          VAL R0
      159 CAPTURE                          VAL R15
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R12
      162 NEWTABLE                         R18 0 6
      164 MOVE                             R19 R10
      165 JUMPIFNOT                        R19 ; [+2]
      166 GETTABLEKS                       R19 R10 K28 ["Extents"]
      168 MOVE                             R20 R10
      169 JUMPIFNOT                        R20 ; [+2]
      170 GETTABLEKS                       R20 R10 K29 ["GraphRect"]
      172 MOVE                             R21 R14
      173 GETTABLEKS                       R22 R0 K26 ["InputMode"]
      175 MOVE                             R23 R15
      176 GETTABLEKS                       R24 R3 K5 ["current"]
      178 SETLIST                          R18 R19 6 [1]
      180 CALL                             R16 2 2
      181 GETUPVAL                         R19 2
      182 GETTABLEKS                       R18 R19 K30 ["useCallback"]
      184 NEWCLOSURE                       R19 P3
      185 CAPTURE                          VAL R11
      186 CAPTURE                          VAL R16
      187 CAPTURE                          VAL R17
      188 CAPTURE                          VAL R15
      189 NEWTABLE                         R20 0 3
      191 MOVE                             R21 R16
      192 MOVE                             R22 R17
      193 MOVE                             R23 R15
      194 SETLIST                          R20 R21 3 [1]
      196 CALL                             R18 2 1
      197 GETUPVAL                         R20 2
      198 GETTABLEKS                       R19 R20 K30 ["useCallback"]
      200 NEWCLOSURE                       R20 P4
      201 CAPTURE                          VAL R3
      202 CAPTURE                          VAL R4
      203 CAPTURE                          VAL R17
      204 CAPTURE                          VAL R0
      205 CAPTURE                          VAL R5
      206 CAPTURE                          UPVAL U7
      207 CAPTURE                          VAL R16
      208 CAPTURE                          VAL R15
      209 NEWTABLE                         R21 0 6
      211 MOVE                             R22 R16
      212 GETTABLEKS                       R23 R3 K5 ["current"]
      214 GETTABLEKS                       R24 R4 K5 ["current"]
      216 MOVE                             R25 R17
      217 GETTABLEKS                       R26 R5 K31 ["enabled"]
      219 GETTABLEKS                       R27 R0 K26 ["InputMode"]
      221 SETLIST                          R21 R22 6 [1]
      223 CALL                             R19 2 1
      224 GETUPVAL                         R21 2
      225 GETTABLEKS                       R20 R21 K23 ["useMemo"]
      227 NEWCLOSURE                       R21 P5
      228 CAPTURE                          VAL R13
      229 CAPTURE                          UPVAL U2
      230 CAPTURE                          UPVAL U10
      231 CAPTURE                          VAL R19
      232 CAPTURE                          VAL R1
      233 CAPTURE                          VAL R16
      234 CAPTURE                          VAL R0
      235 CAPTURE                          VAL R18
      236 CAPTURE                          VAL R15
      237 CAPTURE                          UPVAL U11
      238 CAPTURE                          VAL R14
      239 CAPTURE                          VAL R9
      240 NEWTABLE                         R22 0 8
      242 MOVE                             R23 R16
      243 MOVE                             R24 R18
      244 MOVE                             R25 R15
      245 MOVE                             R26 R13
      246 MOVE                             R27 R14
      247 GETTABLEKS                       R28 R0 K26 ["InputMode"]
      249 GETTABLEKS                       R29 R0 K32 ["OnPinDragged"]
      251 MOVE                             R30 R19
      252 SETLIST                          R22 R23 8 [1]
      254 CALL                             R20 2 1
      255 GETUPVAL                         R22 2
      256 GETTABLEKS                       R21 R22 K30 ["useCallback"]
      258 NEWCLOSURE                       R22 P6
      259 CAPTURE                          VAL R5
      260 NEWTABLE                         R23 0 1
      262 GETTABLEKS                       R24 R5 K33 ["enable"]
      264 SETLIST                          R23 R24 1 [1]
      266 CALL                             R21 2 1
      267 GETUPVAL                         R23 2
      268 GETTABLEKS                       R22 R23 K30 ["useCallback"]
      270 NEWCLOSURE                       R23 P7
      271 CAPTURE                          VAL R5
      272 NEWTABLE                         R24 0 1
      274 GETTABLEKS                       R25 R5 K34 ["disable"]
      276 SETLIST                          R24 R25 1 [1]
      278 CALL                             R22 2 1
      279 GETUPVAL                         R24 2
      280 GETTABLEKS                       R23 R24 K30 ["useCallback"]
      282 NEWCLOSURE                       R24 P8
      283 CAPTURE                          VAL R6
      284 CAPTURE                          VAL R19
      285 CAPTURE                          VAL R0
      286 NEWTABLE                         R25 0 3
      288 GETTABLEKS                       R26 R0 K32 ["OnPinDragged"]
      290 MOVE                             R27 R19
      291 MOVE                             R28 R6
      292 SETLIST                          R25 R26 3 [1]
      294 CALL                             R23 2 1
      295 GETUPVAL                         R25 2
      296 GETTABLEKS                       R24 R25 K30 ["useCallback"]
      298 NEWCLOSURE                       R25 P9
      299 CAPTURE                          VAL R19
      300 CAPTURE                          VAL R0
      301 NEWTABLE                         R26 0 2
      303 GETTABLEKS                       R27 R0 K32 ["OnPinDragged"]
      305 MOVE                             R28 R19
      306 SETLIST                          R26 R27 2 [1]
      308 CALL                             R24 2 1
      309 GETUPVAL                         R26 2
      310 GETTABLEKS                       R25 R26 K30 ["useCallback"]
      312 NEWCLOSURE                       R26 P10
      313 CAPTURE                          VAL R6
      314 NEWTABLE                         R27 0 3
      316 GETTABLEKS                       R28 R0 K32 ["OnPinDragged"]
      318 MOVE                             R29 R19
      319 MOVE                             R30 R6
      320 SETLIST                          R27 R28 3 [1]
      322 CALL                             R25 2 1
      323 GETUPVAL                         R27 2
      324 GETTABLEKS                       R26 R27 K35 ["createElement"]
      326 GETUPVAL                         R28 0
      327 GETTABLEKS                       R27 R28 K36 ["View"]
      329 DUPTABLE                         R28 K41 [{"tag", "LayoutOrder", "backgroundStyle", "ref"}]
      330 LOADK                            R29 K42 ["aspect-1-1 size-full-full"]
      331 SETTABLEKS                       R29 R28 K37 ["tag"]
      333 GETTABLEKS                       R29 R0 K38 ["LayoutOrder"]
      335 SETTABLEKS                       R29 R28 K38 ["LayoutOrder"]
      337 GETTABLEKS                       R31 R1 K10 ["Color"]
      339 GETTABLEKS                       R30 R31 K14 ["Surface"]
      341 GETTABLEKS                       R29 R30 K15 ["Surface_0"]
      343 SETTABLEKS                       R29 R28 K39 ["backgroundStyle"]
      345 GETTABLEKS                       R29 R2 K43 ["setFrame"]
      347 SETTABLEKS                       R29 R28 K40 ["ref"]
      349 DUPTABLE                         R29 K45 [{"ShiftListener"}]
      350 GETUPVAL                         R31 2
      351 GETTABLEKS                       R30 R31 K35 ["createElement"]
      353 LOADK                            R31 K46 ["Frame"]
      354 NEWTABLE                         R32 4 0
      356 GETIMPORT                        R33 K49 [UDim2.fromScale]
      358 LOADN                            R34 1
      359 LOADN                            R35 1
      360 CALL                             R33 2 1
      361 SETTABLEKS                       R33 R32 K50 ["Size"]
      363 LOADN                            R33 1
      364 SETTABLEKS                       R33 R32 K51 ["BackgroundTransparency"]
      366 GETUPVAL                         R35 2
      367 GETTABLEKS                       R34 R35 K52 ["Event"]
      369 GETTABLEKS                       R33 R34 K53 ["InputBegan"]
      371 SETTABLE                         R21 R32 R33
      372 GETUPVAL                         R35 2
      373 GETTABLEKS                       R34 R35 K52 ["Event"]
      375 GETTABLEKS                       R33 R34 K54 ["InputEnded"]
      377 SETTABLE                         R22 R32 R33
      378 DUPTABLE                         R33 K56 [{"Canvas"}]
      379 GETUPVAL                         R35 2
      380 GETTABLEKS                       R34 R35 K35 ["createElement"]
      382 GETUPVAL                         R36 12
      383 GETTABLEKS                       R35 R36 K55 ["Canvas"]
      385 DUPTABLE                         R36 K63 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      386 GETIMPORT                        R37 K49 [UDim2.fromScale]
      388 LOADN                            R38 1
      389 LOADN                            R39 1
      390 CALL                             R37 2 1
      391 SETTABLEKS                       R37 R36 K50 ["Size"]
      393 SETTABLEKS                       R17 R36 K29 ["GraphRect"]
      395 GETIMPORT                        R37 K66 [UDim.new]
      397 LOADN                            R38 0
      398 LOADN                            R39 0
      399 CALL                             R37 2 1
      400 SETTABLEKS                       R37 R36 K57 ["ViewportPaddingLeft"]
      402 GETIMPORT                        R37 K66 [UDim.new]
      404 LOADN                            R38 0
      405 LOADN                            R39 0
      406 CALL                             R37 2 1
      407 SETTABLEKS                       R37 R36 K58 ["ViewportPaddingRight"]
      409 GETIMPORT                        R37 K66 [UDim.new]
      411 LOADN                            R38 0
      412 LOADN                            R39 0
      413 CALL                             R37 2 1
      414 SETTABLEKS                       R37 R36 K59 ["ViewportPaddingBottom"]
      416 GETIMPORT                        R37 K66 [UDim.new]
      418 LOADN                            R38 0
      419 LOADN                            R39 0
      420 CALL                             R37 2 1
      421 SETTABLEKS                       R37 R36 K60 ["ViewportPaddingTop"]
      423 LOADN                            R37 1
      424 SETTABLEKS                       R37 R36 K61 ["CanvasBackgroundTransparency"]
      426 LOADN                            R37 1
      427 SETTABLEKS                       R37 R36 K62 ["ViewportBackgroundTransparency"]
      429 DUPTABLE                         R37 K70 [{"Guides", "Points", "DragDetector"}]
      430 GETTABLEKS                       R39 R0 K26 ["InputMode"]
      432 GETIMPORT                        R40 K74 [Enum.AnimationNodeBlend2DInputMode.Polar]
      434 JUMPIFNOTEQ                      R39 R40 ; [+17]
      436 GETUPVAL                         R39 2
      437 GETTABLEKS                       R38 R39 K35 ["createElement"]
      439 GETUPVAL                         R39 13
      440 DUPTABLE                         R40 K78 [{"MaxRadius", "GridColor", "AxisColor", "Thickness"}]
      441 SETTABLEKS                       R15 R40 K27 ["MaxRadius"]
      443 SETTABLEKS                       R7 R40 K75 ["GridColor"]
      445 SETTABLEKS                       R7 R40 K76 ["AxisColor"]
      447 LOADK                            R41 K79 [0.1]
      448 SETTABLEKS                       R41 R40 K77 ["Thickness"]
      450 CALL                             R38 2 1
      451 JUMP                             ; [+15]
      452 GETUPVAL                         R39 2
      453 GETTABLEKS                       R38 R39 K35 ["createElement"]
      455 GETUPVAL                         R39 14
      456 DUPTABLE                         R40 K80 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      457 SETTABLEKS                       R16 R40 K28 ["Extents"]
      459 SETTABLEKS                       R7 R40 K75 ["GridColor"]
      461 SETTABLEKS                       R8 R40 K76 ["AxisColor"]
      463 LOADK                            R41 K79 [0.1]
      464 SETTABLEKS                       R41 R40 K77 ["Thickness"]
      466 CALL                             R38 2 1
      467 SETTABLEKS                       R38 R37 K67 ["Guides"]
      469 GETUPVAL                         R39 2
      470 GETTABLEKS                       R38 R39 K35 ["createElement"]
      472 GETUPVAL                         R40 2
      473 GETTABLEKS                       R39 R40 K81 ["Fragment"]
      475 NEWTABLE                         R40 0 0
      477 MOVE                             R41 R20
      478 CALL                             R38 3 1
      479 SETTABLEKS                       R38 R37 K68 ["Points"]
      481 GETUPVAL                         R39 2
      482 GETTABLEKS                       R38 R39 K35 ["createElement"]
      484 LOADK                            R39 K82 ["UIDragDetector"]
      485 NEWTABLE                         R40 4 0
      487 GETIMPORT                        R41 K85 [Enum.UIDragDetectorDragStyle.Scriptable]
      489 SETTABLEKS                       R41 R40 K86 ["DragStyle"]
      491 GETUPVAL                         R43 2
      492 GETTABLEKS                       R42 R43 K52 ["Event"]
      494 GETTABLEKS                       R41 R42 K87 ["DragStart"]
      496 SETTABLE                         R23 R40 R41
      497 GETUPVAL                         R43 2
      498 GETTABLEKS                       R42 R43 K52 ["Event"]
      500 GETTABLEKS                       R41 R42 K88 ["DragContinue"]
      502 SETTABLE                         R24 R40 R41
      503 GETUPVAL                         R43 2
      504 GETTABLEKS                       R42 R43 K52 ["Event"]
      506 GETTABLEKS                       R41 R42 K89 ["DragEnd"]
      508 SETTABLE                         R25 R40 R41
      509 CALL                             R38 2 1
      510 SETTABLEKS                       R38 R37 K69 ["DragDetector"]
      512 CALL                             R34 3 1
      513 SETTABLEKS                       R34 R33 K55 ["Canvas"]
      515 CALL                             R30 3 1
      516 SETTABLEKS                       R30 R29 K44 ["ShiftListener"]
      518 CALL                             R26 3 -1
      519 RETURN                           R26 -1

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
       15 GETTABLEKS                       R7 R0 K10 ["Components"]
       17 GETTABLEKS                       R6 R7 K11 ["NodeView"]
       19 GETTABLEKS                       R5 R6 K12 ["CompositorNodeProperty"]
       21 GETTABLEKS                       R4 R5 K13 ["Blend2DMap"]
       23 GETTABLEKS                       R3 R4 K14 ["Blend2DCartesianGuides"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R8 R0 K10 ["Components"]
       30 GETTABLEKS                       R7 R8 K11 ["NodeView"]
       32 GETTABLEKS                       R6 R7 K12 ["CompositorNodeProperty"]
       34 GETTABLEKS                       R5 R6 K13 ["Blend2DMap"]
       36 GETTABLEKS                       R4 R5 K15 ["Blend2DPolarGuides"]
       38 CALL                             R3 1 1
       39 GETIMPORT                        R4 K9 [require]
       41 GETTABLEKS                       R6 R0 K16 ["Util"]
       43 GETTABLEKS                       R5 R6 K17 ["Constants"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K9 [require]
       48 GETTABLEKS                       R7 R0 K18 ["Parent"]
       50 GETTABLEKS                       R6 R7 K19 ["Dash"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K9 [require]
       55 GETTABLEKS                       R11 R0 K10 ["Components"]
       57 GETTABLEKS                       R10 R11 K11 ["NodeView"]
       59 GETTABLEKS                       R9 R10 K12 ["CompositorNodeProperty"]
       61 GETTABLEKS                       R8 R9 K20 ["BlendMapShared"]
       63 GETTABLEKS                       R7 R8 K21 ["DraggablePin"]
       65 CALL                             R6 1 1
       66 GETIMPORT                        R7 K9 [require]
       68 GETTABLEKS                       R9 R0 K18 ["Parent"]
       70 GETTABLEKS                       R8 R9 K22 ["Foundation"]
       72 CALL                             R7 1 1
       73 GETIMPORT                        R8 K9 [require]
       75 GETTABLEKS                       R10 R0 K18 ["Parent"]
       77 GETTABLEKS                       R9 R10 K23 ["Graphing"]
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K9 [require]
       82 GETTABLEKS                       R11 R0 K24 ["Contexts"]
       84 GETTABLEKS                       R10 R11 K25 ["NativeGraphContext"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K9 [require]
       89 GETTABLEKS                       R14 R0 K10 ["Components"]
       91 GETTABLEKS                       R13 R14 K11 ["NodeView"]
       93 GETTABLEKS                       R12 R13 K12 ["CompositorNodeProperty"]
       95 GETTABLEKS                       R11 R12 K26 ["PropertyUtils"]
       97 CALL                             R10 1 1
       98 GETIMPORT                        R11 K9 [require]
      100 GETTABLEKS                       R13 R0 K18 ["Parent"]
      102 GETTABLEKS                       R12 R13 K27 ["React"]
      104 CALL                             R11 1 1
      105 GETIMPORT                        R12 K9 [require]
      107 GETTABLEKS                       R14 R0 K18 ["Parent"]
      109 GETTABLEKS                       R13 R14 K28 ["ReactUtils"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K9 [require]
      114 GETTABLEKS                       R15 R0 K18 ["Parent"]
      116 GETTABLEKS                       R14 R15 K29 ["SignalsReact"]
      118 CALL                             R13 1 1
      119 GETIMPORT                        R14 K9 [require]
      121 GETTABLEKS                       R16 R0 K30 ["Hooks"]
      123 GETTABLEKS                       R15 R16 K31 ["useAbsoluteSize"]
      125 CALL                             R14 1 1
      126 GETIMPORT                        R15 K34 [Rect.new]
      128 LOADN                            R16 255
      129 LOADN                            R17 255
      130 LOADN                            R18 1
      131 LOADN                            R19 1
      132 CALL                             R15 4 1
      133 DUPCLOSURE                       R16 K35 [PROTO_0]
      134 CAPTURE                          VAL R1
      135 DUPCLOSURE                       R17 K36 [PROTO_13]
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R11
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R12
      141 CAPTURE                          VAL R16
      142 CAPTURE                          VAL R9
      143 CAPTURE                          VAL R10
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R15
      146 CAPTURE                          VAL R6
      147 CAPTURE                          VAL R4
      148 CAPTURE                          VAL R8
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R2
      151 RETURN                           R17 1
