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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["beginUndoTransaction"]
        3 LOADK                            R3 K1 ["Blend2DMap Drag"]
        4 CALL                             R2 1 0
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 1
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R3 R4 K2 ["OnPinDragged"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R3 R4 K2 ["OnPinDragged"]
       15 LOADN                            R4 0
       16 MOVE                             R5 R2
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_11:
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
       34 GETTABLEKS                       R6 R7 K7 ["useContext"]
       36 GETUPVAL                         R8 5
       37 GETTABLEKS                       R7 R8 K8 ["Context"]
       39 CALL                             R6 1 1
       40 GETUPVAL                         R8 2
       41 GETTABLEKS                       R7 R8 K9 ["useState"]
       43 LOADNIL                          R8
       44 CALL                             R7 1 2
       45 GETTABLEKS                       R10 R0 K11 ["Padding"]
       47 ORK                              R9 R10 K10 [15]
       48 GETUPVAL                         R11 2
       49 GETTABLEKS                       R10 R11 K12 ["useMemo"]
       51 NEWCLOSURE                       R11 P0
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U6
       54 NEWTABLE                         R12 0 3
       56 GETTABLEKS                       R13 R0 K13 ["Position"]
       58 GETTABLEKS                       R14 R0 K14 ["Pins"]
       60 GETTABLEKS                       R15 R0 K15 ["InputMode"]
       62 SETLIST                          R12 R13 3 [1]
       64 CALL                             R10 2 2
       65 GETUPVAL                         R13 2
       66 GETTABLEKS                       R12 R13 K12 ["useMemo"]
       68 NEWCLOSURE                       R13 P1
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U7
       72 NEWTABLE                         R14 0 3
       74 MOVE                             R15 R7
       75 JUMPIFNOT                        R15 ; [+2]
       76 GETTABLEKS                       R15 R7 K16 ["MaxRadius"]
       78 GETTABLEKS                       R16 R0 K15 ["InputMode"]
       80 GETTABLEKS                       R17 R0 K14 ["Pins"]
       82 SETLIST                          R14 R15 3 [1]
       84 CALL                             R12 2 1
       85 GETUPVAL                         R14 2
       86 GETTABLEKS                       R13 R14 K12 ["useMemo"]
       88 NEWCLOSURE                       R14 P2
       89 CAPTURE                          VAL R7
       90 CAPTURE                          VAL R0
       91 CAPTURE                          VAL R12
       92 CAPTURE                          VAL R11
       93 CAPTURE                          UPVAL U8
       94 CAPTURE                          VAL R3
       95 CAPTURE                          VAL R9
       96 NEWTABLE                         R15 0 6
       98 MOVE                             R16 R7
       99 JUMPIFNOT                        R16 ; [+2]
      100 GETTABLEKS                       R16 R7 K17 ["Extents"]
      102 MOVE                             R17 R7
      103 JUMPIFNOT                        R17 ; [+2]
      104 GETTABLEKS                       R17 R7 K18 ["GraphRect"]
      106 MOVE                             R18 R11
      107 GETTABLEKS                       R19 R0 K15 ["InputMode"]
      109 MOVE                             R20 R12
      110 GETTABLEKS                       R21 R3 K4 ["current"]
      112 SETLIST                          R15 R16 6 [1]
      114 CALL                             R13 2 2
      115 GETUPVAL                         R16 2
      116 GETTABLEKS                       R15 R16 K19 ["useCallback"]
      118 NEWCLOSURE                       R16 P3
      119 CAPTURE                          VAL R8
      120 CAPTURE                          VAL R13
      121 CAPTURE                          VAL R14
      122 CAPTURE                          VAL R12
      123 NEWTABLE                         R17 0 3
      125 MOVE                             R18 R13
      126 MOVE                             R19 R14
      127 MOVE                             R20 R12
      128 SETLIST                          R17 R18 3 [1]
      130 CALL                             R15 2 1
      131 GETUPVAL                         R17 2
      132 GETTABLEKS                       R16 R17 K19 ["useCallback"]
      134 NEWCLOSURE                       R17 P4
      135 CAPTURE                          VAL R4
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R5
      140 CAPTURE                          UPVAL U6
      141 CAPTURE                          VAL R13
      142 CAPTURE                          VAL R12
      143 NEWTABLE                         R18 0 5
      145 MOVE                             R19 R13
      146 GETTABLEKS                       R20 R3 K4 ["current"]
      148 GETTABLEKS                       R21 R4 K4 ["current"]
      150 MOVE                             R22 R14
      151 GETTABLEKS                       R23 R5 K20 ["enabled"]
      153 SETLIST                          R18 R19 5 [1]
      155 CALL                             R16 2 1
      156 GETUPVAL                         R18 2
      157 GETTABLEKS                       R17 R18 K12 ["useMemo"]
      159 NEWCLOSURE                       R18 P5
      160 CAPTURE                          VAL R10
      161 CAPTURE                          UPVAL U2
      162 CAPTURE                          UPVAL U9
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R1
      165 CAPTURE                          VAL R13
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R15
      168 CAPTURE                          VAL R12
      169 CAPTURE                          UPVAL U10
      170 CAPTURE                          VAL R11
      171 NEWTABLE                         R19 0 7
      173 MOVE                             R20 R13
      174 MOVE                             R21 R15
      175 MOVE                             R22 R12
      176 MOVE                             R23 R10
      177 MOVE                             R24 R11
      178 GETTABLEKS                       R25 R0 K15 ["InputMode"]
      180 GETTABLEKS                       R26 R0 K21 ["OnPinDragged"]
      182 SETLIST                          R19 R20 7 [1]
      184 CALL                             R17 2 1
      185 GETUPVAL                         R19 2
      186 GETTABLEKS                       R18 R19 K19 ["useCallback"]
      188 NEWCLOSURE                       R19 P6
      189 CAPTURE                          VAL R5
      190 NEWTABLE                         R20 0 1
      192 GETTABLEKS                       R21 R5 K22 ["enable"]
      194 SETLIST                          R20 R21 1 [1]
      196 CALL                             R18 2 1
      197 GETUPVAL                         R20 2
      198 GETTABLEKS                       R19 R20 K19 ["useCallback"]
      200 NEWCLOSURE                       R20 P7
      201 CAPTURE                          VAL R5
      202 NEWTABLE                         R21 0 1
      204 GETTABLEKS                       R22 R5 K23 ["disable"]
      206 SETLIST                          R21 R22 1 [1]
      208 CALL                             R19 2 1
      209 GETUPVAL                         R21 2
      210 GETTABLEKS                       R20 R21 K19 ["useCallback"]
      212 NEWCLOSURE                       R21 P8
      213 CAPTURE                          VAL R6
      214 CAPTURE                          VAL R16
      215 CAPTURE                          VAL R0
      216 NEWTABLE                         R22 0 3
      218 GETTABLEKS                       R23 R0 K21 ["OnPinDragged"]
      220 MOVE                             R24 R16
      221 MOVE                             R25 R6
      222 SETLIST                          R22 R23 3 [1]
      224 CALL                             R20 2 1
      225 GETUPVAL                         R22 2
      226 GETTABLEKS                       R21 R22 K19 ["useCallback"]
      228 NEWCLOSURE                       R22 P9
      229 CAPTURE                          VAL R16
      230 CAPTURE                          VAL R0
      231 NEWTABLE                         R23 0 2
      233 GETTABLEKS                       R24 R0 K21 ["OnPinDragged"]
      235 MOVE                             R25 R16
      236 SETLIST                          R23 R24 2 [1]
      238 CALL                             R21 2 1
      239 GETUPVAL                         R23 2
      240 GETTABLEKS                       R22 R23 K19 ["useCallback"]
      242 NEWCLOSURE                       R23 P10
      243 CAPTURE                          VAL R6
      244 NEWTABLE                         R24 0 3
      246 GETTABLEKS                       R25 R0 K21 ["OnPinDragged"]
      248 MOVE                             R26 R16
      249 MOVE                             R27 R6
      250 SETLIST                          R24 R25 3 [1]
      252 CALL                             R22 2 1
      253 GETUPVAL                         R24 2
      254 GETTABLEKS                       R23 R24 K24 ["createElement"]
      256 GETUPVAL                         R25 0
      257 GETTABLEKS                       R24 R25 K25 ["View"]
      259 DUPTABLE                         R25 K29 [{"tag", "LayoutOrder", "ref"}]
      260 LOADK                            R26 K30 ["aspect-1-1 size-full-full"]
      261 SETTABLEKS                       R26 R25 K26 ["tag"]
      263 GETTABLEKS                       R26 R0 K27 ["LayoutOrder"]
      265 SETTABLEKS                       R26 R25 K27 ["LayoutOrder"]
      267 GETTABLEKS                       R26 R2 K31 ["setFrame"]
      269 SETTABLEKS                       R26 R25 K28 ["ref"]
      271 DUPTABLE                         R26 K33 [{"ShiftListener"}]
      272 GETUPVAL                         R28 2
      273 GETTABLEKS                       R27 R28 K24 ["createElement"]
      275 LOADK                            R28 K34 ["Frame"]
      276 NEWTABLE                         R29 4 0
      278 GETIMPORT                        R30 K37 [UDim2.fromScale]
      280 LOADN                            R31 1
      281 LOADN                            R32 1
      282 CALL                             R30 2 1
      283 SETTABLEKS                       R30 R29 K38 ["Size"]
      285 LOADN                            R30 1
      286 SETTABLEKS                       R30 R29 K39 ["BackgroundTransparency"]
      288 GETUPVAL                         R32 2
      289 GETTABLEKS                       R31 R32 K40 ["Event"]
      291 GETTABLEKS                       R30 R31 K41 ["InputBegan"]
      293 SETTABLE                         R18 R29 R30
      294 GETUPVAL                         R32 2
      295 GETTABLEKS                       R31 R32 K40 ["Event"]
      297 GETTABLEKS                       R30 R31 K42 ["InputEnded"]
      299 SETTABLE                         R19 R29 R30
      300 DUPTABLE                         R30 K44 [{"Canvas"}]
      301 GETUPVAL                         R32 2
      302 GETTABLEKS                       R31 R32 K24 ["createElement"]
      304 GETUPVAL                         R33 11
      305 GETTABLEKS                       R32 R33 K43 ["Canvas"]
      307 DUPTABLE                         R33 K49 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop"}]
      308 GETIMPORT                        R34 K37 [UDim2.fromScale]
      310 LOADN                            R35 1
      311 LOADN                            R36 1
      312 CALL                             R34 2 1
      313 SETTABLEKS                       R34 R33 K38 ["Size"]
      315 SETTABLEKS                       R14 R33 K18 ["GraphRect"]
      317 GETIMPORT                        R34 K52 [UDim.new]
      319 LOADN                            R35 0
      320 LOADN                            R36 0
      321 CALL                             R34 2 1
      322 SETTABLEKS                       R34 R33 K45 ["ViewportPaddingLeft"]
      324 GETIMPORT                        R34 K52 [UDim.new]
      326 LOADN                            R35 0
      327 LOADN                            R36 0
      328 CALL                             R34 2 1
      329 SETTABLEKS                       R34 R33 K46 ["ViewportPaddingRight"]
      331 GETIMPORT                        R34 K52 [UDim.new]
      333 LOADN                            R35 0
      334 LOADN                            R36 0
      335 CALL                             R34 2 1
      336 SETTABLEKS                       R34 R33 K47 ["ViewportPaddingBottom"]
      338 GETIMPORT                        R34 K52 [UDim.new]
      340 LOADN                            R35 0
      341 LOADN                            R36 0
      342 CALL                             R34 2 1
      343 SETTABLEKS                       R34 R33 K48 ["ViewportPaddingTop"]
      345 DUPTABLE                         R34 K56 [{"Guides", "Points", "DragDetector"}]
      346 GETTABLEKS                       R36 R0 K15 ["InputMode"]
      348 GETIMPORT                        R37 K60 [Enum.AnimationNodeBlend2DInputMode.Polar]
      350 JUMPIFNOTEQ                      R36 R37 ; [+22]
      352 GETUPVAL                         R36 2
      353 GETTABLEKS                       R35 R36 K24 ["createElement"]
      355 GETUPVAL                         R36 12
      356 DUPTABLE                         R37 K62 [{"MaxRadius", "Color3"}]
      357 SETTABLEKS                       R12 R37 K16 ["MaxRadius"]
      359 GETTABLEKS                       R42 R1 K63 ["Color"]
      361 GETTABLEKS                       R41 R42 K64 ["Extended"]
      363 GETTABLEKS                       R40 R41 K65 ["Gray"]
      365 GETTABLEKS                       R39 R40 K66 ["Gray_600"]
      367 GETTABLEKS                       R38 R39 K61 ["Color3"]
      369 SETTABLEKS                       R38 R37 K61 ["Color3"]
      371 CALL                             R35 2 1
      372 JUMP                             ; [+32]
      373 GETUPVAL                         R36 2
      374 GETTABLEKS                       R35 R36 K24 ["createElement"]
      376 GETUPVAL                         R36 13
      377 DUPTABLE                         R37 K69 [{"Extents", "GridColor", "AxisColor"}]
      378 SETTABLEKS                       R13 R37 K17 ["Extents"]
      380 GETTABLEKS                       R42 R1 K63 ["Color"]
      382 GETTABLEKS                       R41 R42 K64 ["Extended"]
      384 GETTABLEKS                       R40 R41 K65 ["Gray"]
      386 GETTABLEKS                       R39 R40 K66 ["Gray_600"]
      388 GETTABLEKS                       R38 R39 K61 ["Color3"]
      390 SETTABLEKS                       R38 R37 K67 ["GridColor"]
      392 GETTABLEKS                       R42 R1 K63 ["Color"]
      394 GETTABLEKS                       R41 R42 K64 ["Extended"]
      396 GETTABLEKS                       R40 R41 K65 ["Gray"]
      398 GETTABLEKS                       R39 R40 K70 ["Gray_300"]
      400 GETTABLEKS                       R38 R39 K61 ["Color3"]
      402 SETTABLEKS                       R38 R37 K68 ["AxisColor"]
      404 CALL                             R35 2 1
      405 SETTABLEKS                       R35 R34 K53 ["Guides"]
      407 GETUPVAL                         R36 2
      408 GETTABLEKS                       R35 R36 K24 ["createElement"]
      410 GETUPVAL                         R37 2
      411 GETTABLEKS                       R36 R37 K71 ["Fragment"]
      413 NEWTABLE                         R37 0 0
      415 MOVE                             R38 R17
      416 CALL                             R35 3 1
      417 SETTABLEKS                       R35 R34 K54 ["Points"]
      419 GETUPVAL                         R36 2
      420 GETTABLEKS                       R35 R36 K24 ["createElement"]
      422 LOADK                            R36 K72 ["UIDragDetector"]
      423 NEWTABLE                         R37 4 0
      425 GETIMPORT                        R38 K75 [Enum.UIDragDetectorDragStyle.Scriptable]
      427 SETTABLEKS                       R38 R37 K76 ["DragStyle"]
      429 GETUPVAL                         R40 2
      430 GETTABLEKS                       R39 R40 K40 ["Event"]
      432 GETTABLEKS                       R38 R39 K77 ["DragStart"]
      434 SETTABLE                         R20 R37 R38
      435 GETUPVAL                         R40 2
      436 GETTABLEKS                       R39 R40 K40 ["Event"]
      438 GETTABLEKS                       R38 R39 K78 ["DragContinue"]
      440 SETTABLE                         R21 R37 R38
      441 GETUPVAL                         R40 2
      442 GETTABLEKS                       R39 R40 K40 ["Event"]
      444 GETTABLEKS                       R38 R39 K79 ["DragEnd"]
      446 SETTABLE                         R22 R37 R38
      447 CALL                             R35 2 1
      448 SETTABLEKS                       R35 R34 K55 ["DragDetector"]
      450 CALL                             R31 3 1
      451 SETTABLEKS                       R31 R30 K43 ["Canvas"]
      453 CALL                             R27 3 1
      454 SETTABLEKS                       R27 R26 K32 ["ShiftListener"]
      456 CALL                             R23 3 -1
      457 RETURN                           R23 -1

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
      114 GETTABLEKS                       R15 R0 K29 ["Hooks"]
      116 GETTABLEKS                       R14 R15 K30 ["useAbsoluteSize"]
      118 CALL                             R13 1 1
      119 GETIMPORT                        R14 K33 [Rect.new]
      121 LOADN                            R15 255
      122 LOADN                            R16 255
      123 LOADN                            R17 1
      124 LOADN                            R18 1
      125 CALL                             R14 4 1
      126 DUPCLOSURE                       R15 K34 [PROTO_0]
      127 CAPTURE                          VAL R1
      128 DUPCLOSURE                       R16 K35 [PROTO_13]
      129 CAPTURE                          VAL R7
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R11
      132 CAPTURE                          VAL R12
      133 CAPTURE                          VAL R15
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R5
      137 CAPTURE                          VAL R14
      138 CAPTURE                          VAL R6
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R8
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R2
      143 RETURN                           R16 1
