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
        9 LOADNIL                          R0
       10 LOADNIL                          R1
       11 GETIMPORT                        R2 K4 [Vector2.new]
       13 LOADN                            R3 255
       14 LOADN                            R4 255
       15 CALL                             R2 2 1
       16 MOVE                             R0 R2
       17 GETIMPORT                        R2 K4 [Vector2.new]
       19 LOADN                            R3 1
       20 LOADN                            R4 1
       21 CALL                             R2 2 1
       22 MOVE                             R1 R2
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K5 ["InputMode"]
       26 GETIMPORT                        R3 K9 [Enum.AnimationNodeBlend2DInputMode.Polar]
       28 JUMPIFNOTEQ                      R2 R3 ; [+16]
       30 GETIMPORT                        R2 K4 [Vector2.new]
       32 GETUPVAL                         R4 2
       33 MINUS                            R3 R4
       34 GETUPVAL                         R5 2
       35 MINUS                            R4 R5
       36 CALL                             R2 2 1
       37 MOVE                             R0 R2
       38 GETIMPORT                        R2 K4 [Vector2.new]
       40 GETUPVAL                         R3 2
       41 GETUPVAL                         R4 2
       42 CALL                             R2 2 1
       43 MOVE                             R1 R2
       44 JUMP                             ; [+131]
       45 GETUPVAL                         R3 3
       46 LENGTH                           R2 R3
       47 LOADN                            R3 0
       48 JUMPIFNOTLT                      R3 R2 ; [+127]
       50 GETIMPORT                        R2 K4 [Vector2.new]
       52 LOADK                            R3 K10 [∞]
       53 LOADK                            R4 K10 [∞]
       54 CALL                             R2 2 1
       55 MOVE                             R0 R2
       56 GETIMPORT                        R2 K4 [Vector2.new]
       58 LOADK                            R3 K11 [-∞]
       59 LOADK                            R4 K11 [-∞]
       60 CALL                             R2 2 1
       61 MOVE                             R1 R2
       62 GETUPVAL                         R2 3
       63 LOADNIL                          R3
       64 LOADNIL                          R4
       65 FORGPREP                         R2
       66 GETIMPORT                        R7 K4 [Vector2.new]
       68 GETTABLEKS                       R9 R0 K12 ["X"]
       70 GETTABLEKS                       R10 R6 K12 ["X"]
       72 FASTCALL2                        MATH_MIN R9 R10 ; [+3]
       74 GETIMPORT                        R8 K15 [math.min]
       76 CALL                             R8 2 1
       77 GETTABLEKS                       R10 R0 K16 ["Y"]
       79 GETTABLEKS                       R11 R6 K16 ["Y"]
       81 FASTCALL2                        MATH_MIN R10 R11 ; [+3]
       83 GETIMPORT                        R9 K15 [math.min]
       85 CALL                             R9 2 1
       86 CALL                             R7 2 1
       87 MOVE                             R0 R7
       88 GETIMPORT                        R7 K4 [Vector2.new]
       90 GETTABLEKS                       R9 R1 K12 ["X"]
       92 GETTABLEKS                       R10 R6 K12 ["X"]
       94 FASTCALL2                        MATH_MAX R9 R10 ; [+3]
       96 GETIMPORT                        R8 K18 [math.max]
       98 CALL                             R8 2 1
       99 GETTABLEKS                       R10 R1 K16 ["Y"]
      101 GETTABLEKS                       R11 R6 K16 ["Y"]
      103 FASTCALL2                        MATH_MAX R10 R11 ; [+3]
      105 GETIMPORT                        R9 K18 [math.max]
      107 CALL                             R9 2 1
      108 CALL                             R7 2 1
      109 MOVE                             R1 R7
      110 FORGLOOP                         R2 2 ; [-45]
      112 GETTABLEKS                       R2 R0 K12 ["X"]
      114 GETTABLEKS                       R3 R1 K12 ["X"]
      116 JUMPIFNOTEQ                      R2 R3 ; [+27]
      118 GETIMPORT                        R2 K4 [Vector2.new]
      120 GETTABLEKS                       R4 R0 K12 ["X"]
      122 GETUPVAL                         R7 4
      123 GETTABLEKS                       R6 R7 K20 ["Width"]
      125 DIVK                             R5 R6 K19 [2]
      126 SUB                              R3 R4 R5
      127 GETTABLEKS                       R4 R0 K16 ["Y"]
      129 CALL                             R2 2 1
      130 MOVE                             R0 R2
      131 GETIMPORT                        R2 K4 [Vector2.new]
      133 GETTABLEKS                       R4 R1 K12 ["X"]
      135 GETUPVAL                         R7 4
      136 GETTABLEKS                       R6 R7 K20 ["Width"]
      138 DIVK                             R5 R6 K19 [2]
      139 ADD                              R3 R4 R5
      140 GETTABLEKS                       R4 R1 K16 ["Y"]
      142 CALL                             R2 2 1
      143 MOVE                             R1 R2
      144 GETTABLEKS                       R2 R0 K16 ["Y"]
      146 GETTABLEKS                       R3 R1 K16 ["Y"]
      148 JUMPIFNOTEQ                      R2 R3 ; [+27]
      150 GETIMPORT                        R2 K4 [Vector2.new]
      152 GETTABLEKS                       R3 R0 K12 ["X"]
      154 GETTABLEKS                       R5 R0 K16 ["Y"]
      156 GETUPVAL                         R8 4
      157 GETTABLEKS                       R7 R8 K21 ["Height"]
      159 DIVK                             R6 R7 K19 [2]
      160 SUB                              R4 R5 R6
      161 CALL                             R2 2 1
      162 MOVE                             R0 R2
      163 GETIMPORT                        R2 K4 [Vector2.new]
      165 GETTABLEKS                       R3 R1 K12 ["X"]
      167 GETTABLEKS                       R5 R1 K16 ["Y"]
      169 GETUPVAL                         R8 4
      170 GETTABLEKS                       R7 R8 K21 ["Height"]
      172 DIVK                             R6 R7 K19 [2]
      173 ADD                              R4 R5 R6
      174 CALL                             R2 2 1
      175 MOVE                             R1 R2
      176 ADD                              R3 R0 R1
      177 DIVK                             R2 R3 K19 [2]
      178 SUB                              R5 R1 R0
      179 GETUPVAL                         R9 5
      180 GETTABLEKS                       R8 R9 K22 ["current"]
      182 GETTABLEKS                       R7 R8 K12 ["X"]
      184 LOADN                            R9 2
      185 GETUPVAL                         R10 6
      186 MUL                              R8 R9 R10
      187 ADD                              R6 R7 R8
      188 MUL                              R4 R5 R6
      189 GETUPVAL                         R7 5
      190 GETTABLEKS                       R6 R7 K22 ["current"]
      192 GETTABLEKS                       R5 R6 K12 ["X"]
      194 DIV                              R3 R4 R5
      195 GETIMPORT                        R4 K24 [Rect.new]
      197 MOVE                             R5 R0
      198 MOVE                             R6 R1
      199 CALL                             R4 2 1
      200 GETIMPORT                        R5 K24 [Rect.new]
      202 DIVK                             R7 R3 K19 [2]
      203 SUB                              R6 R2 R7
      204 DIVK                             R8 R3 K19 [2]
      205 ADD                              R7 R2 R8
      206 CALL                             R5 2 -1
      207 RETURN                           R4 -1

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
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["current"]
        5 GETTABLEKS                       R4 R5 K0 ["X"]
        7 SUB                              R2 R3 R4
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K1 ["current"]
       11 GETTABLEKS                       R3 R4 K0 ["X"]
       13 DIV                              R1 R2 R3
       14 GETTABLEKS                       R4 R0 K2 ["Y"]
       16 GETUPVAL                         R7 0
       17 GETTABLEKS                       R6 R7 K1 ["current"]
       19 GETTABLEKS                       R5 R6 K2 ["Y"]
       21 SUB                              R3 R4 R5
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K1 ["current"]
       25 GETTABLEKS                       R4 R5 K2 ["Y"]
       27 DIV                              R2 R3 R4
       28 GETUPVAL                         R6 2
       29 GETTABLEKS                       R5 R6 K3 ["Min"]
       31 GETTABLEKS                       R4 R5 K0 ["X"]
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R6 R7 K4 ["Width"]
       36 MUL                              R5 R1 R6
       37 ADD                              R3 R4 R5
       38 GETUPVAL                         R7 2
       39 GETTABLEKS                       R6 R7 K5 ["Max"]
       41 GETTABLEKS                       R5 R6 K2 ["Y"]
       43 GETUPVAL                         R8 2
       44 GETTABLEKS                       R7 R8 K6 ["Height"]
       46 MUL                              R6 R2 R7
       47 SUB                              R4 R5 R6
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R5 R6 K7 ["InputMode"]
       51 GETIMPORT                        R6 K11 [Enum.AnimationNodeBlend2DInputMode.Cartesian]
       53 JUMPIFNOTEQ                      R5 R6 ; [+43]
       55 GETUPVAL                         R6 4
       56 GETTABLEKS                       R5 R6 K12 ["enabled"]
       58 JUMPIFNOT                        R5 ; [+32]
       59 GETUPVAL                         R6 5
       60 GETTABLEKS                       R5 R6 K13 ["roundStep"]
       62 MOVE                             R6 R3
       63 GETUPVAL                         R9 6
       64 GETTABLEKS                       R8 R9 K3 ["Min"]
       66 GETTABLEKS                       R7 R8 K0 ["X"]
       68 GETUPVAL                         R10 6
       69 GETTABLEKS                       R9 R10 K5 ["Max"]
       71 GETTABLEKS                       R8 R9 K0 ["X"]
       73 CALL                             R5 3 1
       74 MOVE                             R3 R5
       75 GETUPVAL                         R6 5
       76 GETTABLEKS                       R5 R6 K13 ["roundStep"]
       78 MOVE                             R6 R4
       79 GETUPVAL                         R9 6
       80 GETTABLEKS                       R8 R9 K3 ["Min"]
       82 GETTABLEKS                       R7 R8 K2 ["Y"]
       84 GETUPVAL                         R10 6
       85 GETTABLEKS                       R9 R10 K5 ["Max"]
       87 GETTABLEKS                       R8 R9 K2 ["Y"]
       89 CALL                             R5 3 1
       90 MOVE                             R4 R5
       91 GETIMPORT                        R5 K16 [Vector2.new]
       93 MOVE                             R6 R3
       94 MOVE                             R7 R4
       95 CALL                             R5 2 -1
       96 RETURN                           R5 -1
       97 GETUPVAL                         R6 3
       98 GETTABLEKS                       R5 R6 K7 ["InputMode"]
      100 GETIMPORT                        R6 K18 [Enum.AnimationNodeBlend2DInputMode.Polar]
      102 JUMPIFNOTEQ                      R5 R6 ; [+40]
      104 GETIMPORT                        R6 K16 [Vector2.new]
      106 MOVE                             R7 R3
      107 MOVE                             R8 R4
      108 CALL                             R6 2 1
      109 GETTABLEKS                       R5 R6 K19 ["Magnitude"]
      111 FASTCALL2                        MATH_ATAN2 R3 R4 ; [+5]
      113 MOVE                             R8 R3
      114 MOVE                             R9 R4
      115 GETIMPORT                        R7 K22 [math.atan2]
      117 CALL                             R7 2 1
      118 MINUS                            R6 R7
      119 GETUPVAL                         R8 4
      120 GETTABLEKS                       R7 R8 K12 ["enabled"]
      122 JUMPIFNOT                        R7 ; [+14]
      123 GETUPVAL                         R8 5
      124 GETTABLEKS                       R7 R8 K13 ["roundStep"]
      126 MOVE                             R8 R5
      127 LOADN                            R9 0
      128 GETUPVAL                         R10 7
      129 CALL                             R7 3 1
      130 MOVE                             R5 R7
      131 DIVK                             R8 R6 K23 [0.785398163397448]
      132 FASTCALL1                        MATH_ROUND R8 ; [+2]
      133 GETIMPORT                        R7 K25 [math.round]
      135 CALL                             R7 1 1
      136 MULK                             R6 R7 K23 [0.785398163397448]
      137 GETIMPORT                        R7 K16 [Vector2.new]
      139 MOVE                             R8 R6
      140 MOVE                             R9 R5
      141 CALL                             R7 2 -1
      142 RETURN                           R7 -1
      143 GETIMPORT                        R5 K27 [error]
      145 LOADK                            R7 K28 ["Unknown input mode: "]
      146 GETUPVAL                         R10 3
      147 GETTABLEKS                       R9 R10 K7 ["InputMode"]
      149 FASTCALL1                        TOSTRING R9 ; [+2]
      150 GETIMPORT                        R8 K30 [tostring]
      152 CALL                             R8 1 1
      153 CONCAT                           R6 R7 R8
      154 CALL                             R5 1 0
      155 RETURN                           R0 0

PROTO_7:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 JUMPIFEQKNIL                     R1 ; [+63]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R1 R2 K0 ["createElement"]
        8 GETUPVAL                         R2 2
        9 DUPTABLE                         R3 K13 [{"AbsToMap", "Color3", "Extents", "Image", "Index", "InputMode", "LockExtents", "MaxRadius", "Mode", "OnPinDragged", "Position", "ZIndex"}]
       10 GETUPVAL                         R4 3
       11 SETTABLEKS                       R4 R3 K1 ["AbsToMap"]
       13 GETUPVAL                         R9 4
       14 GETTABLEKS                       R8 R9 K14 ["Color"]
       16 GETTABLEKS                       R7 R8 K15 ["Extended"]
       18 GETTABLEKS                       R6 R7 K16 ["Yellow"]
       20 GETTABLEKS                       R5 R6 K17 ["Yellow_800"]
       22 GETTABLEKS                       R4 R5 K2 ["Color3"]
       24 SETTABLEKS                       R4 R3 K2 ["Color3"]
       26 GETUPVAL                         R4 5
       27 SETTABLEKS                       R4 R3 K3 ["Extents"]
       29 LOADK                            R4 K18 ["rbxasset://textures/AnimLibrary/BlendMapCursor.png"]
       30 SETTABLEKS                       R4 R3 K4 ["Image"]
       32 LOADN                            R4 0
       33 SETTABLEKS                       R4 R3 K5 ["Index"]
       35 GETUPVAL                         R5 6
       36 GETTABLEKS                       R4 R5 K6 ["InputMode"]
       38 SETTABLEKS                       R4 R3 K6 ["InputMode"]
       40 GETUPVAL                         R4 7
       41 SETTABLEKS                       R4 R3 K7 ["LockExtents"]
       43 GETUPVAL                         R4 8
       44 SETTABLEKS                       R4 R3 K8 ["MaxRadius"]
       46 GETUPVAL                         R6 9
       47 GETTABLEKS                       R5 R6 K19 ["DRAGGABLE_PIN_MODES"]
       49 GETTABLEKS                       R4 R5 K20 ["Blend2D"]
       51 SETTABLEKS                       R4 R3 K9 ["Mode"]
       53 GETUPVAL                         R5 6
       54 GETTABLEKS                       R4 R5 K10 ["OnPinDragged"]
       56 SETTABLEKS                       R4 R3 K10 ["OnPinDragged"]
       58 GETUPVAL                         R4 0
       59 SETTABLEKS                       R4 R3 K11 ["Position"]
       61 LOADN                            R4 3
       62 SETTABLEKS                       R4 R3 K12 ["ZIndex"]
       64 CALL                             R1 2 1
       65 SETTABLEKS                       R1 R0 K21 ["current"]
       67 GETUPVAL                         R1 10
       68 LOADNIL                          R2
       69 LOADNIL                          R3
       70 FORGPREP                         R1
       71 LOADK                            R7 K22 ["point-"]
       72 FASTCALL1                        TOSTRING R4 ; [+3]
       73 MOVE                             R9 R4
       74 GETIMPORT                        R8 K24 [tostring]
       76 CALL                             R8 1 1
       77 CONCAT                           R6 R7 R8
       78 GETUPVAL                         R8 1
       79 GETTABLEKS                       R7 R8 K0 ["createElement"]
       81 GETUPVAL                         R8 2
       82 DUPTABLE                         R9 K25 [{"AbsToMap", "Color3", "Extents", "Index", "InputMode", "LockExtents", "MaxRadius", "Mode", "OnPinDragged", "Position", "ZIndex"}]
       83 GETUPVAL                         R10 3
       84 SETTABLEKS                       R10 R9 K1 ["AbsToMap"]
       86 GETUPVAL                         R15 4
       87 GETTABLEKS                       R14 R15 K14 ["Color"]
       89 GETTABLEKS                       R13 R14 K15 ["Extended"]
       91 GETTABLEKS                       R12 R13 K26 ["Gray"]
       93 GETTABLEKS                       R11 R12 K27 ["Gray_600"]
       95 GETTABLEKS                       R10 R11 K2 ["Color3"]
       97 SETTABLEKS                       R10 R9 K2 ["Color3"]
       99 GETUPVAL                         R10 5
      100 SETTABLEKS                       R10 R9 K3 ["Extents"]
      102 SETTABLEKS                       R4 R9 K5 ["Index"]
      104 GETUPVAL                         R11 6
      105 GETTABLEKS                       R10 R11 K6 ["InputMode"]
      107 SETTABLEKS                       R10 R9 K6 ["InputMode"]
      109 GETUPVAL                         R10 7
      110 SETTABLEKS                       R10 R9 K7 ["LockExtents"]
      112 GETUPVAL                         R10 8
      113 SETTABLEKS                       R10 R9 K8 ["MaxRadius"]
      115 GETUPVAL                         R12 9
      116 GETTABLEKS                       R11 R12 K19 ["DRAGGABLE_PIN_MODES"]
      118 GETTABLEKS                       R10 R11 K20 ["Blend2D"]
      120 SETTABLEKS                       R10 R9 K9 ["Mode"]
      122 GETUPVAL                         R11 6
      123 GETTABLEKS                       R10 R11 K10 ["OnPinDragged"]
      125 SETTABLEKS                       R10 R9 K10 ["OnPinDragged"]
      127 SETTABLEKS                       R5 R9 K11 ["Position"]
      129 LOADN                            R10 2
      130 SETTABLEKS                       R10 R9 K12 ["ZIndex"]
      132 CALL                             R7 2 1
      133 SETTABLE                         R7 R0 R6
      134 FORGLOOP                         R1 2 ; [-64]
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
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R3 R4 K0 ["OnPinDragged"]
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K0 ["OnPinDragged"]
       10 LOADN                            R4 0
       11 MOVE                             R5 R2
       12 CALL                             R3 2 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["useRef"]
       11 GETTABLEKS                       R4 R2 K3 ["absoluteSize"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R2 K3 ["absoluteSize"]
       16 SETTABLEKS                       R4 R3 K4 ["current"]
       18 GETUPVAL                         R5 2
       19 GETTABLEKS                       R4 R5 K2 ["useRef"]
       21 GETTABLEKS                       R5 R2 K5 ["absolutePosition"]
       23 CALL                             R4 1 1
       24 GETTABLEKS                       R5 R2 K5 ["absolutePosition"]
       26 SETTABLEKS                       R5 R4 K4 ["current"]
       28 GETUPVAL                         R6 3
       29 GETTABLEKS                       R5 R6 K6 ["useToggleState"]
       31 GETUPVAL                         R6 4
       32 CALL                             R5 1 1
       33 GETUPVAL                         R7 2
       34 GETTABLEKS                       R6 R7 K7 ["useState"]
       36 LOADNIL                          R7
       37 CALL                             R6 1 2
       38 GETTABLEKS                       R9 R0 K9 ["Padding"]
       40 ORK                              R8 R9 K8 [15]
       41 GETUPVAL                         R10 2
       42 GETTABLEKS                       R9 R10 K10 ["useMemo"]
       44 NEWCLOSURE                       R10 P0
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U5
       47 NEWTABLE                         R11 0 3
       49 GETTABLEKS                       R12 R0 K11 ["Position"]
       51 GETTABLEKS                       R13 R0 K12 ["Pins"]
       53 GETTABLEKS                       R14 R0 K13 ["InputMode"]
       55 SETLIST                          R11 R12 3 [1]
       57 CALL                             R9 2 2
       58 GETUPVAL                         R12 2
       59 GETTABLEKS                       R11 R12 K10 ["useMemo"]
       61 NEWCLOSURE                       R12 P1
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R0
       64 CAPTURE                          UPVAL U6
       65 NEWTABLE                         R13 0 3
       67 MOVE                             R14 R6
       68 JUMPIFNOT                        R14 ; [+2]
       69 GETTABLEKS                       R14 R6 K14 ["MaxRadius"]
       71 GETTABLEKS                       R15 R0 K13 ["InputMode"]
       73 GETTABLEKS                       R16 R0 K12 ["Pins"]
       75 SETLIST                          R13 R14 3 [1]
       77 CALL                             R11 2 1
       78 GETUPVAL                         R13 2
       79 GETTABLEKS                       R12 R13 K10 ["useMemo"]
       81 NEWCLOSURE                       R13 P2
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R0
       84 CAPTURE                          VAL R11
       85 CAPTURE                          VAL R10
       86 CAPTURE                          UPVAL U7
       87 CAPTURE                          VAL R3
       88 CAPTURE                          VAL R8
       89 NEWTABLE                         R14 0 6
       91 MOVE                             R15 R6
       92 JUMPIFNOT                        R15 ; [+2]
       93 GETTABLEKS                       R15 R6 K15 ["Extents"]
       95 MOVE                             R16 R6
       96 JUMPIFNOT                        R16 ; [+2]
       97 GETTABLEKS                       R16 R6 K16 ["GraphRect"]
       99 MOVE                             R17 R10
      100 GETTABLEKS                       R18 R0 K13 ["InputMode"]
      102 MOVE                             R19 R11
      103 GETTABLEKS                       R20 R3 K4 ["current"]
      105 SETLIST                          R14 R15 6 [1]
      107 CALL                             R12 2 2
      108 GETUPVAL                         R15 2
      109 GETTABLEKS                       R14 R15 K17 ["useCallback"]
      111 NEWCLOSURE                       R15 P3
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R12
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R11
      116 NEWTABLE                         R16 0 3
      118 MOVE                             R17 R12
      119 MOVE                             R18 R13
      120 MOVE                             R19 R11
      121 SETLIST                          R16 R17 3 [1]
      123 CALL                             R14 2 1
      124 GETUPVAL                         R16 2
      125 GETTABLEKS                       R15 R16 K17 ["useCallback"]
      127 NEWCLOSURE                       R16 P4
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R3
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R0
      132 CAPTURE                          VAL R5
      133 CAPTURE                          UPVAL U5
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R11
      136 NEWTABLE                         R17 0 5
      138 MOVE                             R18 R12
      139 GETTABLEKS                       R19 R3 K4 ["current"]
      141 GETTABLEKS                       R20 R4 K4 ["current"]
      143 MOVE                             R21 R13
      144 GETTABLEKS                       R22 R5 K18 ["enabled"]
      146 SETLIST                          R17 R18 5 [1]
      148 CALL                             R15 2 1
      149 GETUPVAL                         R17 2
      150 GETTABLEKS                       R16 R17 K10 ["useMemo"]
      152 NEWCLOSURE                       R17 P5
      153 CAPTURE                          VAL R9
      154 CAPTURE                          UPVAL U2
      155 CAPTURE                          UPVAL U8
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R12
      159 CAPTURE                          VAL R0
      160 CAPTURE                          VAL R14
      161 CAPTURE                          VAL R11
      162 CAPTURE                          UPVAL U9
      163 CAPTURE                          VAL R10
      164 NEWTABLE                         R18 0 7
      166 MOVE                             R19 R12
      167 MOVE                             R20 R14
      168 MOVE                             R21 R11
      169 MOVE                             R22 R9
      170 MOVE                             R23 R10
      171 GETTABLEKS                       R24 R0 K13 ["InputMode"]
      173 GETTABLEKS                       R25 R0 K19 ["OnPinDragged"]
      175 SETLIST                          R18 R19 7 [1]
      177 CALL                             R16 2 1
      178 GETUPVAL                         R18 2
      179 GETTABLEKS                       R17 R18 K17 ["useCallback"]
      181 NEWCLOSURE                       R18 P6
      182 CAPTURE                          VAL R5
      183 NEWTABLE                         R19 0 1
      185 GETTABLEKS                       R20 R5 K20 ["enable"]
      187 SETLIST                          R19 R20 1 [1]
      189 CALL                             R17 2 1
      190 GETUPVAL                         R19 2
      191 GETTABLEKS                       R18 R19 K17 ["useCallback"]
      193 NEWCLOSURE                       R19 P7
      194 CAPTURE                          VAL R5
      195 NEWTABLE                         R20 0 1
      197 GETTABLEKS                       R21 R5 K21 ["disable"]
      199 SETLIST                          R20 R21 1 [1]
      201 CALL                             R18 2 1
      202 GETUPVAL                         R20 2
      203 GETTABLEKS                       R19 R20 K17 ["useCallback"]
      205 NEWCLOSURE                       R20 P8
      206 CAPTURE                          VAL R15
      207 CAPTURE                          VAL R0
      208 NEWTABLE                         R21 0 2
      210 GETTABLEKS                       R22 R0 K19 ["OnPinDragged"]
      212 MOVE                             R23 R15
      213 SETLIST                          R21 R22 2 [1]
      215 CALL                             R19 2 1
      216 GETUPVAL                         R21 2
      217 GETTABLEKS                       R20 R21 K22 ["createElement"]
      219 GETUPVAL                         R22 0
      220 GETTABLEKS                       R21 R22 K23 ["View"]
      222 DUPTABLE                         R22 K27 [{"tag", "LayoutOrder", "ref"}]
      223 LOADK                            R23 K28 ["aspect-1-1 size-full-full"]
      224 SETTABLEKS                       R23 R22 K24 ["tag"]
      226 GETTABLEKS                       R23 R0 K25 ["LayoutOrder"]
      228 SETTABLEKS                       R23 R22 K25 ["LayoutOrder"]
      230 GETTABLEKS                       R23 R2 K29 ["setFrame"]
      232 SETTABLEKS                       R23 R22 K26 ["ref"]
      234 DUPTABLE                         R23 K31 [{"ShiftListener"}]
      235 GETUPVAL                         R25 2
      236 GETTABLEKS                       R24 R25 K22 ["createElement"]
      238 LOADK                            R25 K32 ["Frame"]
      239 NEWTABLE                         R26 4 0
      241 GETIMPORT                        R27 K35 [UDim2.fromScale]
      243 LOADN                            R28 1
      244 LOADN                            R29 1
      245 CALL                             R27 2 1
      246 SETTABLEKS                       R27 R26 K36 ["Size"]
      248 LOADN                            R27 1
      249 SETTABLEKS                       R27 R26 K37 ["BackgroundTransparency"]
      251 GETUPVAL                         R29 2
      252 GETTABLEKS                       R28 R29 K38 ["Event"]
      254 GETTABLEKS                       R27 R28 K39 ["InputBegan"]
      256 SETTABLE                         R17 R26 R27
      257 GETUPVAL                         R29 2
      258 GETTABLEKS                       R28 R29 K38 ["Event"]
      260 GETTABLEKS                       R27 R28 K40 ["InputEnded"]
      262 SETTABLE                         R18 R26 R27
      263 DUPTABLE                         R27 K42 [{"Canvas"}]
      264 GETUPVAL                         R29 2
      265 GETTABLEKS                       R28 R29 K22 ["createElement"]
      267 GETUPVAL                         R30 10
      268 GETTABLEKS                       R29 R30 K41 ["Canvas"]
      270 DUPTABLE                         R30 K47 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop"}]
      271 GETIMPORT                        R31 K35 [UDim2.fromScale]
      273 LOADN                            R32 1
      274 LOADN                            R33 1
      275 CALL                             R31 2 1
      276 SETTABLEKS                       R31 R30 K36 ["Size"]
      278 SETTABLEKS                       R13 R30 K16 ["GraphRect"]
      280 GETIMPORT                        R31 K50 [UDim.new]
      282 LOADN                            R32 0
      283 LOADN                            R33 0
      284 CALL                             R31 2 1
      285 SETTABLEKS                       R31 R30 K43 ["ViewportPaddingLeft"]
      287 GETIMPORT                        R31 K50 [UDim.new]
      289 LOADN                            R32 0
      290 LOADN                            R33 0
      291 CALL                             R31 2 1
      292 SETTABLEKS                       R31 R30 K44 ["ViewportPaddingRight"]
      294 GETIMPORT                        R31 K50 [UDim.new]
      296 LOADN                            R32 0
      297 LOADN                            R33 0
      298 CALL                             R31 2 1
      299 SETTABLEKS                       R31 R30 K45 ["ViewportPaddingBottom"]
      301 GETIMPORT                        R31 K50 [UDim.new]
      303 LOADN                            R32 0
      304 LOADN                            R33 0
      305 CALL                             R31 2 1
      306 SETTABLEKS                       R31 R30 K46 ["ViewportPaddingTop"]
      308 DUPTABLE                         R31 K54 [{"Guides", "Points", "DragDetector"}]
      309 GETTABLEKS                       R33 R0 K13 ["InputMode"]
      311 GETIMPORT                        R34 K58 [Enum.AnimationNodeBlend2DInputMode.Polar]
      313 JUMPIFNOTEQ                      R33 R34 ; [+22]
      315 GETUPVAL                         R33 2
      316 GETTABLEKS                       R32 R33 K22 ["createElement"]
      318 GETUPVAL                         R33 11
      319 DUPTABLE                         R34 K60 [{"MaxRadius", "Color3"}]
      320 SETTABLEKS                       R11 R34 K14 ["MaxRadius"]
      322 GETTABLEKS                       R39 R1 K61 ["Color"]
      324 GETTABLEKS                       R38 R39 K62 ["Extended"]
      326 GETTABLEKS                       R37 R38 K63 ["Gray"]
      328 GETTABLEKS                       R36 R37 K64 ["Gray_600"]
      330 GETTABLEKS                       R35 R36 K59 ["Color3"]
      332 SETTABLEKS                       R35 R34 K59 ["Color3"]
      334 CALL                             R32 2 1
      335 JUMP                             ; [+32]
      336 GETUPVAL                         R33 2
      337 GETTABLEKS                       R32 R33 K22 ["createElement"]
      339 GETUPVAL                         R33 12
      340 DUPTABLE                         R34 K67 [{"Extents", "GridColor", "AxisColor"}]
      341 SETTABLEKS                       R12 R34 K15 ["Extents"]
      343 GETTABLEKS                       R39 R1 K61 ["Color"]
      345 GETTABLEKS                       R38 R39 K62 ["Extended"]
      347 GETTABLEKS                       R37 R38 K63 ["Gray"]
      349 GETTABLEKS                       R36 R37 K64 ["Gray_600"]
      351 GETTABLEKS                       R35 R36 K59 ["Color3"]
      353 SETTABLEKS                       R35 R34 K65 ["GridColor"]
      355 GETTABLEKS                       R39 R1 K61 ["Color"]
      357 GETTABLEKS                       R38 R39 K62 ["Extended"]
      359 GETTABLEKS                       R37 R38 K63 ["Gray"]
      361 GETTABLEKS                       R36 R37 K68 ["Gray_300"]
      363 GETTABLEKS                       R35 R36 K59 ["Color3"]
      365 SETTABLEKS                       R35 R34 K66 ["AxisColor"]
      367 CALL                             R32 2 1
      368 SETTABLEKS                       R32 R31 K51 ["Guides"]
      370 GETUPVAL                         R33 2
      371 GETTABLEKS                       R32 R33 K22 ["createElement"]
      373 GETUPVAL                         R34 2
      374 GETTABLEKS                       R33 R34 K69 ["Fragment"]
      376 NEWTABLE                         R34 0 0
      378 MOVE                             R35 R16
      379 CALL                             R32 3 1
      380 SETTABLEKS                       R32 R31 K52 ["Points"]
      382 GETUPVAL                         R33 2
      383 GETTABLEKS                       R32 R33 K22 ["createElement"]
      385 LOADK                            R33 K70 ["UIDragDetector"]
      386 NEWTABLE                         R34 4 0
      388 GETIMPORT                        R35 K73 [Enum.UIDragDetectorDragStyle.Scriptable]
      390 SETTABLEKS                       R35 R34 K74 ["DragStyle"]
      392 GETUPVAL                         R37 2
      393 GETTABLEKS                       R36 R37 K38 ["Event"]
      395 GETTABLEKS                       R35 R36 K75 ["DragStart"]
      397 SETTABLE                         R19 R34 R35
      398 GETUPVAL                         R37 2
      399 GETTABLEKS                       R36 R37 K38 ["Event"]
      401 GETTABLEKS                       R35 R36 K76 ["DragContinue"]
      403 SETTABLE                         R19 R34 R35
      404 CALL                             R32 2 1
      405 SETTABLEKS                       R32 R31 K53 ["DragDetector"]
      407 CALL                             R28 3 1
      408 SETTABLEKS                       R28 R27 K41 ["Canvas"]
      410 CALL                             R24 3 1
      411 SETTABLEKS                       R24 R23 K30 ["ShiftListener"]
      413 CALL                             R20 3 -1
      414 RETURN                           R20 -1

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
       82 GETTABLEKS                       R13 R0 K10 ["Components"]
       84 GETTABLEKS                       R12 R13 K11 ["NodeView"]
       86 GETTABLEKS                       R11 R12 K12 ["CompositorNodeProperty"]
       88 GETTABLEKS                       R10 R11 K24 ["PropertyUtils"]
       90 CALL                             R9 1 1
       91 GETIMPORT                        R10 K9 [require]
       93 GETTABLEKS                       R12 R0 K18 ["Parent"]
       95 GETTABLEKS                       R11 R12 K25 ["React"]
       97 CALL                             R10 1 1
       98 GETIMPORT                        R11 K9 [require]
      100 GETTABLEKS                       R13 R0 K18 ["Parent"]
      102 GETTABLEKS                       R12 R13 K26 ["ReactUtils"]
      104 CALL                             R11 1 1
      105 GETIMPORT                        R12 K9 [require]
      107 GETTABLEKS                       R14 R0 K27 ["Hooks"]
      109 GETTABLEKS                       R13 R14 K28 ["useAbsoluteSize"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K31 [Rect.new]
      114 LOADN                            R14 255
      115 LOADN                            R15 255
      116 LOADN                            R16 1
      117 LOADN                            R17 1
      118 CALL                             R13 4 1
      119 DUPCLOSURE                       R14 K32 [PROTO_0]
      120 CAPTURE                          VAL R1
      121 DUPCLOSURE                       R15 K33 [PROTO_11]
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R11
      126 CAPTURE                          VAL R14
      127 CAPTURE                          VAL R9
      128 CAPTURE                          VAL R5
      129 CAPTURE                          VAL R13
      130 CAPTURE                          VAL R6
      131 CAPTURE                          VAL R4
      132 CAPTURE                          VAL R8
      133 CAPTURE                          VAL R3
      134 CAPTURE                          VAL R2
      135 RETURN                           R15 1
