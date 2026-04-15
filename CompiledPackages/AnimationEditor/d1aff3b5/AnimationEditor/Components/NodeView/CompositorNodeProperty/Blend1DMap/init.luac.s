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
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R0 R1 K0 ["Extents"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R1 R2 K1 ["GraphRect"]
        8 RETURN                           R0 2
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K2 ["current"]
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R1 R2 K2 ["current"]
       16 GETTABLEKS                       R0 R1 K3 ["X"]
       18 JUMPIFNOTEQKN                    R0 K4 [0] ; [+4]
       20 GETUPVAL                         R0 2
       21 GETUPVAL                         R1 2
       22 RETURN                           R0 2
       23 LOADN                            R0 0
       24 LOADN                            R1 1
       25 GETUPVAL                         R4 3
       26 GETTABLEKS                       R3 R4 K5 ["Pins"]
       28 LENGTH                           R2 R3
       29 LOADN                            R3 0
       30 JUMPIFNOTLT                      R3 R2 ; [+39]
       32 LOADK                            R0 K6 [∞]
       33 LOADK                            R1 K7 [-∞]
       34 GETUPVAL                         R5 3
       35 GETTABLEKS                       R2 R5 K5 ["Pins"]
       37 LOADNIL                          R3
       38 LOADNIL                          R4
       39 FORGPREP                         R2
       40 FASTCALL2                        MATH_MIN R0 R6 ; [+5]
       42 MOVE                             R8 R0
       43 MOVE                             R9 R6
       44 GETIMPORT                        R7 K10 [math.min]
       46 CALL                             R7 2 1
       47 MOVE                             R0 R7
       48 FASTCALL2                        MATH_MAX R1 R6 ; [+5]
       50 MOVE                             R8 R1
       51 MOVE                             R9 R6
       52 GETIMPORT                        R7 K12 [math.max]
       54 CALL                             R7 2 1
       55 MOVE                             R1 R7
       56 FORGLOOP                         R2 2 ; [-17]
       58 JUMPIFNOTEQ                      R0 R1 ; [+11]
       60 GETUPVAL                         R4 2
       61 GETTABLEKS                       R3 R4 K14 ["Width"]
       63 DIVK                             R2 R3 K13 [2]
       64 SUB                              R0 R0 R2
       65 GETUPVAL                         R4 2
       66 GETTABLEKS                       R3 R4 K14 ["Width"]
       68 DIVK                             R2 R3 K13 [2]
       69 ADD                              R1 R1 R2
       70 ADD                              R3 R0 R1
       71 DIVK                             R2 R3 K13 [2]
       72 SUB                              R5 R1 R0
       73 GETUPVAL                         R9 1
       74 GETTABLEKS                       R8 R9 K2 ["current"]
       76 GETTABLEKS                       R7 R8 K3 ["X"]
       78 LOADN                            R9 2
       79 GETUPVAL                         R10 4
       80 MUL                              R8 R9 R10
       81 ADD                              R6 R7 R8
       82 MUL                              R4 R5 R6
       83 GETUPVAL                         R7 1
       84 GETTABLEKS                       R6 R7 K2 ["current"]
       86 GETTABLEKS                       R5 R6 K3 ["X"]
       88 DIV                              R3 R4 R5
       89 GETIMPORT                        R4 K17 [Rect.new]
       91 GETIMPORT                        R5 K19 [Vector2.new]
       93 MOVE                             R6 R0
       94 LOADK                            R7 K20 [-0.5]
       95 CALL                             R5 2 1
       96 GETIMPORT                        R6 K19 [Vector2.new]
       98 MOVE                             R7 R1
       99 LOADK                            R8 K21 [0.5]
      100 CALL                             R6 2 -1
      101 CALL                             R4 -1 1
      102 GETIMPORT                        R5 K17 [Rect.new]
      104 GETIMPORT                        R6 K19 [Vector2.new]
      106 DIVK                             R8 R3 K13 [2]
      107 SUB                              R7 R2 R8
      108 LOADK                            R8 K20 [-0.5]
      109 CALL                             R6 2 1
      110 GETIMPORT                        R7 K19 [Vector2.new]
      112 DIVK                             R9 R3 K13 [2]
      113 ADD                              R8 R2 R9
      114 LOADK                            R9 K21 [0.5]
      115 CALL                             R7 2 -1
      116 CALL                             R5 -1 -1
      117 RETURN                           R4 -1

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+10]
        1 GETUPVAL                         R1 0
        2 DUPTABLE                         R2 K2 [{"Extents", "GraphRect"}]
        3 GETUPVAL                         R3 1
        4 SETTABLEKS                       R3 R2 K0 ["Extents"]
        6 GETUPVAL                         R3 2
        7 SETTABLEKS                       R3 R2 K1 ["GraphRect"]
        9 CALL                             R1 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R1 0
       12 LOADNIL                          R2
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_3:
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
       25 GETUPVAL                         R6 2
       26 GETTABLEKS                       R5 R6 K5 ["Min"]
       28 GETTABLEKS                       R4 R5 K4 ["X"]
       30 GETUPVAL                         R7 2
       31 GETTABLEKS                       R6 R7 K6 ["Width"]
       33 MUL                              R5 R2 R6
       34 ADD                              R3 R4 R5
       35 GETUPVAL                         R5 3
       36 GETTABLEKS                       R4 R5 K7 ["enabled"]
       38 JUMPIFNOT                        R4 ; [+16]
       39 GETUPVAL                         R5 4
       40 GETTABLEKS                       R4 R5 K8 ["roundStep"]
       42 MOVE                             R5 R3
       43 GETUPVAL                         R8 5
       44 GETTABLEKS                       R7 R8 K5 ["Min"]
       46 GETTABLEKS                       R6 R7 K4 ["X"]
       48 GETUPVAL                         R9 5
       49 GETTABLEKS                       R8 R9 K9 ["Max"]
       51 GETTABLEKS                       R7 R8 K4 ["X"]
       53 CALL                             R4 3 1
       54 MOVE                             R3 R4
       55 JUMPIFNOT                        R1 ; [+17]
       56 GETUPVAL                         R8 5
       57 GETTABLEKS                       R7 R8 K5 ["Min"]
       59 GETTABLEKS                       R6 R7 K4 ["X"]
       61 GETUPVAL                         R9 5
       62 GETTABLEKS                       R8 R9 K9 ["Max"]
       64 GETTABLEKS                       R7 R8 K4 ["X"]
       66 FASTCALL3                        MATH_CLAMP R3 R6 R7
       68 MOVE                             R5 R3
       69 GETIMPORT                        R4 K12 [math.clamp]
       71 CALL                             R4 3 1
       72 MOVE                             R3 R4
       73 GETIMPORT                        R4 K14 [Vector2.new]
       75 MOVE                             R5 R3
       76 LOADN                            R6 0
       77 CALL                             R4 2 -1
       78 RETURN                           R4 -1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["Position"]
        5 JUMPIFEQKNIL                     R1 ; [+65]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["createElement"]
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K13 [{"AbsToMap", "Clamp", "Color3", "Extents", "Image", "Index", "LockExtents", "Mode", "OnPinDragged", "Position", "ZIndex", "Size"}]
       12 GETUPVAL                         R4 3
       13 SETTABLEKS                       R4 R3 K2 ["AbsToMap"]
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K3 ["Clamp"]
       18 GETUPVAL                         R8 4
       19 GETTABLEKS                       R7 R8 K14 ["Color"]
       21 GETTABLEKS                       R6 R7 K15 ["System"]
       23 GETTABLEKS                       R5 R6 K16 ["Warning"]
       25 GETTABLEKS                       R4 R5 K4 ["Color3"]
       27 SETTABLEKS                       R4 R3 K4 ["Color3"]
       29 GETUPVAL                         R4 5
       30 SETTABLEKS                       R4 R3 K5 ["Extents"]
       32 LOADK                            R4 K17 ["rbxasset://textures/AnimLibrary/BlendMapCursor.png"]
       33 SETTABLEKS                       R4 R3 K6 ["Image"]
       35 LOADN                            R4 0
       36 SETTABLEKS                       R4 R3 K7 ["Index"]
       38 GETUPVAL                         R4 6
       39 SETTABLEKS                       R4 R3 K8 ["LockExtents"]
       41 GETUPVAL                         R6 7
       42 GETTABLEKS                       R5 R6 K18 ["DRAGGABLE_PIN_MODES"]
       44 GETTABLEKS                       R4 R5 K19 ["Blend1D"]
       46 SETTABLEKS                       R4 R3 K9 ["Mode"]
       48 GETUPVAL                         R5 0
       49 GETTABLEKS                       R4 R5 K10 ["OnPinDragged"]
       51 SETTABLEKS                       R4 R3 K10 ["OnPinDragged"]
       53 GETIMPORT                        R4 K22 [Vector2.new]
       55 GETUPVAL                         R6 0
       56 GETTABLEKS                       R5 R6 K0 ["Position"]
       58 LOADN                            R6 0
       59 CALL                             R4 2 1
       60 SETTABLEKS                       R4 R3 K0 ["Position"]
       62 LOADN                            R4 4
       63 SETTABLEKS                       R4 R3 K11 ["ZIndex"]
       65 LOADN                            R4 12
       66 SETTABLEKS                       R4 R3 K12 ["Size"]
       68 CALL                             R1 2 1
       69 SETTABLEKS                       R1 R0 K23 ["current"]
       71 GETUPVAL                         R4 0
       72 GETTABLEKS                       R1 R4 K24 ["Pins"]
       74 LOADNIL                          R2
       75 LOADNIL                          R3
       76 FORGPREP                         R1
       77 LOADK                            R7 K25 ["point-"]
       78 FASTCALL1                        TOSTRING R4 ; [+3]
       79 MOVE                             R9 R4
       80 GETIMPORT                        R8 K27 [tostring]
       82 CALL                             R8 1 1
       83 CONCAT                           R6 R7 R8
       84 GETUPVAL                         R8 1
       85 GETTABLEKS                       R7 R8 K1 ["createElement"]
       87 GETUPVAL                         R8 2
       88 DUPTABLE                         R9 K28 [{"AbsToMap", "Clamp", "Color3", "Extents", "Index", "LockExtents", "Mode", "OnPinDragged", "Position", "ZIndex", "Size"}]
       89 GETUPVAL                         R10 3
       90 SETTABLEKS                       R10 R9 K2 ["AbsToMap"]
       92 LOADB                            R10 0
       93 SETTABLEKS                       R10 R9 K3 ["Clamp"]
       95 GETUPVAL                         R10 8
       96 SETTABLEKS                       R10 R9 K4 ["Color3"]
       98 GETUPVAL                         R10 5
       99 SETTABLEKS                       R10 R9 K5 ["Extents"]
      101 SETTABLEKS                       R4 R9 K7 ["Index"]
      103 GETUPVAL                         R10 6
      104 SETTABLEKS                       R10 R9 K8 ["LockExtents"]
      106 GETUPVAL                         R12 7
      107 GETTABLEKS                       R11 R12 K18 ["DRAGGABLE_PIN_MODES"]
      109 GETTABLEKS                       R10 R11 K19 ["Blend1D"]
      111 SETTABLEKS                       R10 R9 K9 ["Mode"]
      113 GETUPVAL                         R11 0
      114 GETTABLEKS                       R10 R11 K10 ["OnPinDragged"]
      116 SETTABLEKS                       R10 R9 K10 ["OnPinDragged"]
      118 GETIMPORT                        R10 K22 [Vector2.new]
      120 MOVE                             R11 R5
      121 LOADN                            R12 0
      122 CALL                             R10 2 1
      123 SETTABLEKS                       R10 R9 K0 ["Position"]
      125 LOADN                            R10 3
      126 SETTABLEKS                       R10 R9 K11 ["ZIndex"]
      128 LOADN                            R10 9
      129 SETTABLEKS                       R10 R9 K12 ["Size"]
      131 CALL                             R7 2 1
      132 SETTABLE                         R7 R0 R6
      133 FORGLOOP                         R1 2 ; [-57]
      135 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["beginUndoTransaction"]
        3 LOADK                            R3 K1 ["Blend1DMap Drag"]
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

PROTO_8:
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

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["finishUndoTransaction"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Hooks"]
        3 GETTABLEKS                       R1 R2 K1 ["useTokens"]
        5 CALL                             R1 0 1
        6 GETUPVAL                         R2 1
        7 CALL                             R2 0 1
        8 GETUPVAL                         R3 2
        9 GETTABLEKS                       R4 R2 K2 ["observeAbsoluteSize"]
       11 CALL                             R3 1 1
       12 GETUPVAL                         R4 2
       13 GETTABLEKS                       R5 R2 K3 ["observeAbsolutePosition"]
       15 CALL                             R4 1 1
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R5 R6 K4 ["useToggleState"]
       19 GETUPVAL                         R6 4
       20 CALL                             R5 1 1
       21 GETUPVAL                         R7 5
       22 GETTABLEKS                       R6 R7 K5 ["useContext"]
       24 GETUPVAL                         R8 6
       25 GETTABLEKS                       R7 R8 K6 ["Context"]
       27 CALL                             R6 1 1
       28 GETTABLEKS                       R10 R1 K7 ["Color"]
       30 GETTABLEKS                       R9 R10 K8 ["Stroke"]
       32 GETTABLEKS                       R8 R9 K9 ["Default"]
       34 GETTABLEKS                       R7 R8 K10 ["Color3"]
       36 GETTABLEKS                       R12 R1 K7 ["Color"]
       38 GETTABLEKS                       R11 R12 K11 ["Surface"]
       40 GETTABLEKS                       R10 R11 K12 ["Surface_0"]
       42 GETTABLEKS                       R9 R10 K10 ["Color3"]
       44 LOADK                            R10 K13 [0.75]
       45 NAMECALL                         R7 R7 K14 ["Lerp"]
       47 CALL                             R7 3 1
       48 GETTABLEKS                       R11 R1 K7 ["Color"]
       50 GETTABLEKS                       R10 R11 K8 ["Stroke"]
       52 GETTABLEKS                       R9 R10 K9 ["Default"]
       54 GETTABLEKS                       R8 R9 K10 ["Color3"]
       56 GETTABLEKS                       R13 R1 K7 ["Color"]
       58 GETTABLEKS                       R12 R13 K11 ["Surface"]
       60 GETTABLEKS                       R11 R12 K12 ["Surface_0"]
       62 GETTABLEKS                       R10 R11 K10 ["Color3"]
       64 LOADK                            R11 K15 [0.25]
       65 NAMECALL                         R8 R8 K14 ["Lerp"]
       67 CALL                             R8 3 1
       68 GETTABLEKS                       R12 R1 K7 ["Color"]
       70 GETTABLEKS                       R11 R12 K8 ["Stroke"]
       72 GETTABLEKS                       R10 R11 K9 ["Default"]
       74 GETTABLEKS                       R9 R10 K10 ["Color3"]
       76 GETTABLEKS                       R14 R1 K7 ["Color"]
       78 GETTABLEKS                       R13 R14 K11 ["Surface"]
       80 GETTABLEKS                       R12 R13 K12 ["Surface_0"]
       82 GETTABLEKS                       R11 R12 K10 ["Color3"]
       84 LOADK                            R12 K16 [0.6]
       85 NAMECALL                         R9 R9 K14 ["Lerp"]
       87 CALL                             R9 3 1
       88 GETUPVAL                         R11 5
       89 GETTABLEKS                       R10 R11 K17 ["useState"]
       91 LOADNIL                          R11
       92 CALL                             R10 1 2
       93 GETTABLEKS                       R13 R0 K19 ["Padding"]
       95 ORK                              R12 R13 K18 [15]
       96 GETUPVAL                         R14 5
       97 GETTABLEKS                       R13 R14 K20 ["useMemo"]
       99 NEWCLOSURE                       R14 P0
      100 CAPTURE                          VAL R10
      101 CAPTURE                          VAL R3
      102 CAPTURE                          UPVAL U7
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R12
      105 NEWTABLE                         R15 0 4
      107 MOVE                             R16 R10
      108 JUMPIFNOT                        R16 ; [+2]
      109 GETTABLEKS                       R16 R10 K21 ["Extents"]
      111 MOVE                             R17 R10
      112 JUMPIFNOT                        R17 ; [+2]
      113 GETTABLEKS                       R17 R10 K22 ["GraphRect"]
      115 GETTABLEKS                       R18 R0 K23 ["Pins"]
      117 GETTABLEKS                       R19 R3 K24 ["current"]
      119 SETLIST                          R15 R16 4 [1]
      121 CALL                             R13 2 2
      122 GETUPVAL                         R16 5
      123 GETTABLEKS                       R15 R16 K25 ["useCallback"]
      125 NEWCLOSURE                       R16 P1
      126 CAPTURE                          VAL R11
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R14
      129 NEWTABLE                         R17 0 2
      131 MOVE                             R18 R13
      132 MOVE                             R19 R14
      133 SETLIST                          R17 R18 2 [1]
      135 CALL                             R15 2 1
      136 GETUPVAL                         R17 5
      137 GETTABLEKS                       R16 R17 K25 ["useCallback"]
      139 NEWCLOSURE                       R17 P2
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R14
      143 CAPTURE                          VAL R5
      144 CAPTURE                          UPVAL U8
      145 CAPTURE                          VAL R13
      146 NEWTABLE                         R18 0 5
      148 MOVE                             R19 R13
      149 GETTABLEKS                       R20 R3 K24 ["current"]
      151 GETTABLEKS                       R21 R4 K24 ["current"]
      153 MOVE                             R22 R14
      154 GETTABLEKS                       R23 R5 K26 ["enabled"]
      156 SETLIST                          R18 R19 5 [1]
      158 CALL                             R16 2 1
      159 GETUPVAL                         R18 5
      160 GETTABLEKS                       R17 R18 K20 ["useMemo"]
      162 NEWCLOSURE                       R18 P3
      163 CAPTURE                          VAL R0
      164 CAPTURE                          UPVAL U5
      165 CAPTURE                          UPVAL U9
      166 CAPTURE                          VAL R16
      167 CAPTURE                          VAL R1
      168 CAPTURE                          VAL R13
      169 CAPTURE                          VAL R15
      170 CAPTURE                          UPVAL U10
      171 CAPTURE                          VAL R9
      172 NEWTABLE                         R19 0 6
      174 MOVE                             R20 R13
      175 MOVE                             R21 R15
      176 GETTABLEKS                       R22 R0 K27 ["Position"]
      178 GETTABLEKS                       R23 R0 K23 ["Pins"]
      180 GETTABLEKS                       R24 R0 K28 ["OnPinDragged"]
      182 MOVE                             R25 R16
      183 SETLIST                          R19 R20 6 [1]
      185 CALL                             R17 2 1
      186 GETUPVAL                         R19 5
      187 GETTABLEKS                       R18 R19 K25 ["useCallback"]
      189 NEWCLOSURE                       R19 P4
      190 CAPTURE                          VAL R5
      191 NEWTABLE                         R20 0 1
      193 GETTABLEKS                       R21 R5 K29 ["enable"]
      195 SETLIST                          R20 R21 1 [1]
      197 CALL                             R18 2 1
      198 GETUPVAL                         R20 5
      199 GETTABLEKS                       R19 R20 K25 ["useCallback"]
      201 NEWCLOSURE                       R20 P5
      202 CAPTURE                          VAL R5
      203 NEWTABLE                         R21 0 1
      205 GETTABLEKS                       R22 R5 K30 ["disable"]
      207 SETLIST                          R21 R22 1 [1]
      209 CALL                             R19 2 1
      210 GETUPVAL                         R21 5
      211 GETTABLEKS                       R20 R21 K25 ["useCallback"]
      213 NEWCLOSURE                       R21 P6
      214 CAPTURE                          VAL R6
      215 CAPTURE                          VAL R16
      216 CAPTURE                          VAL R0
      217 NEWTABLE                         R22 0 3
      219 GETTABLEKS                       R23 R0 K28 ["OnPinDragged"]
      221 MOVE                             R24 R16
      222 MOVE                             R25 R6
      223 SETLIST                          R22 R23 3 [1]
      225 CALL                             R20 2 1
      226 GETUPVAL                         R22 5
      227 GETTABLEKS                       R21 R22 K25 ["useCallback"]
      229 NEWCLOSURE                       R22 P7
      230 CAPTURE                          VAL R16
      231 CAPTURE                          VAL R0
      232 NEWTABLE                         R23 0 2
      234 GETTABLEKS                       R24 R0 K28 ["OnPinDragged"]
      236 MOVE                             R25 R16
      237 SETLIST                          R23 R24 2 [1]
      239 CALL                             R21 2 1
      240 GETUPVAL                         R23 5
      241 GETTABLEKS                       R22 R23 K25 ["useCallback"]
      243 NEWCLOSURE                       R23 P8
      244 CAPTURE                          VAL R6
      245 NEWTABLE                         R24 0 1
      247 MOVE                             R25 R6
      248 SETLIST                          R24 R25 1 [1]
      250 CALL                             R22 2 1
      251 GETUPVAL                         R24 5
      252 GETTABLEKS                       R23 R24 K31 ["createElement"]
      254 GETUPVAL                         R25 0
      255 GETTABLEKS                       R24 R25 K32 ["View"]
      257 DUPTABLE                         R25 K37 [{"tag", "LayoutOrder", "backgroundStyle", "ref"}]
      258 LOADK                            R26 K38 ["size-full-700"]
      259 SETTABLEKS                       R26 R25 K33 ["tag"]
      261 GETTABLEKS                       R26 R0 K34 ["LayoutOrder"]
      263 SETTABLEKS                       R26 R25 K34 ["LayoutOrder"]
      265 GETTABLEKS                       R28 R1 K7 ["Color"]
      267 GETTABLEKS                       R27 R28 K11 ["Surface"]
      269 GETTABLEKS                       R26 R27 K12 ["Surface_0"]
      271 SETTABLEKS                       R26 R25 K35 ["backgroundStyle"]
      273 GETTABLEKS                       R26 R2 K39 ["setFrame"]
      275 SETTABLEKS                       R26 R25 K36 ["ref"]
      277 DUPTABLE                         R26 K41 [{"ShiftListener"}]
      278 GETUPVAL                         R28 5
      279 GETTABLEKS                       R27 R28 K31 ["createElement"]
      281 LOADK                            R28 K42 ["Frame"]
      282 NEWTABLE                         R29 4 0
      284 GETIMPORT                        R30 K45 [UDim2.fromScale]
      286 LOADN                            R31 1
      287 LOADN                            R32 1
      288 CALL                             R30 2 1
      289 SETTABLEKS                       R30 R29 K46 ["Size"]
      291 LOADN                            R30 1
      292 SETTABLEKS                       R30 R29 K47 ["BackgroundTransparency"]
      294 GETUPVAL                         R32 5
      295 GETTABLEKS                       R31 R32 K48 ["Event"]
      297 GETTABLEKS                       R30 R31 K49 ["InputBegan"]
      299 SETTABLE                         R18 R29 R30
      300 GETUPVAL                         R32 5
      301 GETTABLEKS                       R31 R32 K48 ["Event"]
      303 GETTABLEKS                       R30 R31 K50 ["InputEnded"]
      305 SETTABLE                         R19 R29 R30
      306 DUPTABLE                         R30 K52 [{"Canvas"}]
      307 GETUPVAL                         R32 5
      308 GETTABLEKS                       R31 R32 K31 ["createElement"]
      310 GETUPVAL                         R33 11
      311 GETTABLEKS                       R32 R33 K51 ["Canvas"]
      313 DUPTABLE                         R33 K59 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      314 GETIMPORT                        R34 K45 [UDim2.fromScale]
      316 LOADN                            R35 1
      317 LOADN                            R36 1
      318 CALL                             R34 2 1
      319 SETTABLEKS                       R34 R33 K46 ["Size"]
      321 SETTABLEKS                       R14 R33 K22 ["GraphRect"]
      323 GETIMPORT                        R34 K62 [UDim.new]
      325 LOADN                            R35 0
      326 LOADN                            R36 0
      327 CALL                             R34 2 1
      328 SETTABLEKS                       R34 R33 K53 ["ViewportPaddingLeft"]
      330 GETIMPORT                        R34 K62 [UDim.new]
      332 LOADN                            R35 0
      333 LOADN                            R36 0
      334 CALL                             R34 2 1
      335 SETTABLEKS                       R34 R33 K54 ["ViewportPaddingRight"]
      337 GETIMPORT                        R34 K62 [UDim.new]
      339 LOADN                            R35 0
      340 LOADN                            R36 0
      341 CALL                             R34 2 1
      342 SETTABLEKS                       R34 R33 K55 ["ViewportPaddingBottom"]
      344 GETIMPORT                        R34 K62 [UDim.new]
      346 LOADN                            R35 0
      347 LOADN                            R36 0
      348 CALL                             R34 2 1
      349 SETTABLEKS                       R34 R33 K56 ["ViewportPaddingTop"]
      351 LOADN                            R34 1
      352 SETTABLEKS                       R34 R33 K57 ["CanvasBackgroundTransparency"]
      354 LOADN                            R34 1
      355 SETTABLEKS                       R34 R33 K58 ["ViewportBackgroundTransparency"]
      357 DUPTABLE                         R34 K66 [{"Guides", "Points", "DragDetector"}]
      358 GETUPVAL                         R36 5
      359 GETTABLEKS                       R35 R36 K31 ["createElement"]
      361 GETUPVAL                         R36 12
      362 DUPTABLE                         R37 K70 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      363 SETTABLEKS                       R13 R37 K21 ["Extents"]
      365 SETTABLEKS                       R7 R37 K67 ["GridColor"]
      367 SETTABLEKS                       R8 R37 K68 ["AxisColor"]
      369 LOADK                            R38 K71 [0.1]
      370 SETTABLEKS                       R38 R37 K69 ["Thickness"]
      372 CALL                             R35 2 1
      373 SETTABLEKS                       R35 R34 K63 ["Guides"]
      375 GETUPVAL                         R36 5
      376 GETTABLEKS                       R35 R36 K31 ["createElement"]
      378 GETUPVAL                         R37 5
      379 GETTABLEKS                       R36 R37 K72 ["Fragment"]
      381 NEWTABLE                         R37 0 0
      383 MOVE                             R38 R17
      384 CALL                             R35 3 1
      385 SETTABLEKS                       R35 R34 K64 ["Points"]
      387 GETUPVAL                         R36 5
      388 GETTABLEKS                       R35 R36 K31 ["createElement"]
      390 LOADK                            R36 K73 ["UIDragDetector"]
      391 NEWTABLE                         R37 4 0
      393 GETIMPORT                        R38 K77 [Enum.UIDragDetectorDragStyle.Scriptable]
      395 SETTABLEKS                       R38 R37 K78 ["DragStyle"]
      397 GETUPVAL                         R40 5
      398 GETTABLEKS                       R39 R40 K48 ["Event"]
      400 GETTABLEKS                       R38 R39 K79 ["DragStart"]
      402 SETTABLE                         R20 R37 R38
      403 GETUPVAL                         R40 5
      404 GETTABLEKS                       R39 R40 K48 ["Event"]
      406 GETTABLEKS                       R38 R39 K80 ["DragContinue"]
      408 SETTABLE                         R21 R37 R38
      409 GETUPVAL                         R40 5
      410 GETTABLEKS                       R39 R40 K48 ["Event"]
      412 GETTABLEKS                       R38 R39 K81 ["DragEnd"]
      414 SETTABLE                         R22 R37 R38
      415 CALL                             R35 2 1
      416 SETTABLEKS                       R35 R34 K65 ["DragDetector"]
      418 CALL                             R31 3 1
      419 SETTABLEKS                       R31 R30 K51 ["Canvas"]
      421 CALL                             R27 3 1
      422 SETTABLEKS                       R27 R26 K40 ["ShiftListener"]
      424 CALL                             R23 3 -1
      425 RETURN                           R23 -1

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
       21 GETTABLEKS                       R4 R5 K13 ["Blend1DMap"]
       23 GETTABLEKS                       R3 R4 K14 ["Blend1DGuides"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R5 R0 K15 ["Util"]
       30 GETTABLEKS                       R4 R5 K16 ["Constants"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R9 R0 K10 ["Components"]
       37 GETTABLEKS                       R8 R9 K11 ["NodeView"]
       39 GETTABLEKS                       R7 R8 K12 ["CompositorNodeProperty"]
       41 GETTABLEKS                       R6 R7 K17 ["BlendMapShared"]
       43 GETTABLEKS                       R5 R6 K18 ["DraggablePin"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K9 [require]
       48 GETTABLEKS                       R7 R0 K19 ["Parent"]
       50 GETTABLEKS                       R6 R7 K20 ["Foundation"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K9 [require]
       55 GETTABLEKS                       R8 R0 K19 ["Parent"]
       57 GETTABLEKS                       R7 R8 K21 ["Graphing"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R9 R0 K22 ["Contexts"]
       64 GETTABLEKS                       R8 R9 K23 ["NativeGraphContext"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R12 R0 K10 ["Components"]
       71 GETTABLEKS                       R11 R12 K11 ["NodeView"]
       73 GETTABLEKS                       R10 R11 K12 ["CompositorNodeProperty"]
       75 GETTABLEKS                       R9 R10 K24 ["PropertyUtils"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K9 [require]
       80 GETTABLEKS                       R11 R0 K19 ["Parent"]
       82 GETTABLEKS                       R10 R11 K25 ["React"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R12 R0 K19 ["Parent"]
       89 GETTABLEKS                       R11 R12 K26 ["ReactUtils"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K9 [require]
       94 GETTABLEKS                       R13 R0 K27 ["Hooks"]
       96 GETTABLEKS                       R12 R13 K28 ["useAbsoluteSize"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K9 [require]
      101 GETTABLEKS                       R14 R0 K27 ["Hooks"]
      103 GETTABLEKS                       R13 R14 K29 ["useSignalRef"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K32 [Rect.new]
      108 LOADN                            R14 0
      109 LOADN                            R15 0
      110 LOADN                            R16 1
      111 LOADN                            R17 0
      112 CALL                             R13 4 1
      113 DUPCLOSURE                       R14 K33 [PROTO_0]
      114 CAPTURE                          VAL R1
      115 DUPCLOSURE                       R15 K34 [PROTO_10]
      116 CAPTURE                          VAL R5
      117 CAPTURE                          VAL R11
      118 CAPTURE                          VAL R12
      119 CAPTURE                          VAL R10
      120 CAPTURE                          VAL R14
      121 CAPTURE                          VAL R9
      122 CAPTURE                          VAL R7
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R8
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R2
      129 RETURN                           R15 1
