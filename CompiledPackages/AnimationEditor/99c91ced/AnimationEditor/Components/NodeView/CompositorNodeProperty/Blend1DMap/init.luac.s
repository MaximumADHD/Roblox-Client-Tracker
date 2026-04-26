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
       35 GETUPVAL                         R4 3
       36 CALL                             R4 0 1
       37 JUMPIFNOT                        R4 ; [+5]
       38 GETUPVAL                         R5 4
       39 GETTABLEKS                       R4 R5 K7 ["isShiftPressed"]
       41 CALL                             R4 0 1
       42 JUMPIF                           R4 ; [+7]
       43 GETUPVAL                         R4 3
       44 CALL                             R4 0 1
       45 JUMPIF                           R4 ; [+20]
       46 GETUPVAL                         R5 5
       47 GETTABLEKS                       R4 R5 K8 ["enabled"]
       49 JUMPIFNOT                        R4 ; [+16]
       50 GETUPVAL                         R5 6
       51 GETTABLEKS                       R4 R5 K9 ["roundStep"]
       53 MOVE                             R5 R3
       54 GETUPVAL                         R8 7
       55 GETTABLEKS                       R7 R8 K5 ["Min"]
       57 GETTABLEKS                       R6 R7 K4 ["X"]
       59 GETUPVAL                         R9 7
       60 GETTABLEKS                       R8 R9 K10 ["Max"]
       62 GETTABLEKS                       R7 R8 K4 ["X"]
       64 CALL                             R4 3 1
       65 MOVE                             R3 R4
       66 JUMPIFNOT                        R1 ; [+17]
       67 GETUPVAL                         R8 7
       68 GETTABLEKS                       R7 R8 K5 ["Min"]
       70 GETTABLEKS                       R6 R7 K4 ["X"]
       72 GETUPVAL                         R9 7
       73 GETTABLEKS                       R8 R9 K10 ["Max"]
       75 GETTABLEKS                       R7 R8 K4 ["X"]
       77 FASTCALL3                        MATH_CLAMP R3 R6 R7
       79 MOVE                             R5 R3
       80 GETIMPORT                        R4 K13 [math.clamp]
       82 CALL                             R4 3 1
       83 MOVE                             R3 R4
       84 GETIMPORT                        R4 K15 [Vector2.new]
       86 MOVE                             R5 R3
       87 LOADN                            R6 0
       88 CALL                             R4 2 -1
       89 RETURN                           R4 -1

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
       28 GETUPVAL                         R8 5
       29 GETTABLEKS                       R7 R8 K5 ["useContext"]
       31 GETUPVAL                         R9 7
       32 GETTABLEKS                       R8 R9 K6 ["Context"]
       34 CALL                             R7 1 1
       35 GETTABLEKS                       R11 R1 K7 ["Color"]
       37 GETTABLEKS                       R10 R11 K8 ["Stroke"]
       39 GETTABLEKS                       R9 R10 K9 ["Default"]
       41 GETTABLEKS                       R8 R9 K10 ["Color3"]
       43 GETTABLEKS                       R13 R1 K7 ["Color"]
       45 GETTABLEKS                       R12 R13 K11 ["Surface"]
       47 GETTABLEKS                       R11 R12 K12 ["Surface_0"]
       49 GETTABLEKS                       R10 R11 K10 ["Color3"]
       51 LOADK                            R11 K13 [0.75]
       52 NAMECALL                         R8 R8 K14 ["Lerp"]
       54 CALL                             R8 3 1
       55 GETTABLEKS                       R12 R1 K7 ["Color"]
       57 GETTABLEKS                       R11 R12 K8 ["Stroke"]
       59 GETTABLEKS                       R10 R11 K9 ["Default"]
       61 GETTABLEKS                       R9 R10 K10 ["Color3"]
       63 GETTABLEKS                       R14 R1 K7 ["Color"]
       65 GETTABLEKS                       R13 R14 K11 ["Surface"]
       67 GETTABLEKS                       R12 R13 K12 ["Surface_0"]
       69 GETTABLEKS                       R11 R12 K10 ["Color3"]
       71 LOADK                            R12 K15 [0.25]
       72 NAMECALL                         R9 R9 K14 ["Lerp"]
       74 CALL                             R9 3 1
       75 GETTABLEKS                       R13 R1 K7 ["Color"]
       77 GETTABLEKS                       R12 R13 K8 ["Stroke"]
       79 GETTABLEKS                       R11 R12 K9 ["Default"]
       81 GETTABLEKS                       R10 R11 K10 ["Color3"]
       83 GETTABLEKS                       R15 R1 K7 ["Color"]
       85 GETTABLEKS                       R14 R15 K11 ["Surface"]
       87 GETTABLEKS                       R13 R14 K12 ["Surface_0"]
       89 GETTABLEKS                       R12 R13 K10 ["Color3"]
       91 LOADK                            R13 K16 [0.6]
       92 NAMECALL                         R10 R10 K14 ["Lerp"]
       94 CALL                             R10 3 1
       95 GETUPVAL                         R12 5
       96 GETTABLEKS                       R11 R12 K17 ["useState"]
       98 LOADNIL                          R12
       99 CALL                             R11 1 2
      100 GETTABLEKS                       R14 R0 K19 ["Padding"]
      102 ORK                              R13 R14 K18 [15]
      103 GETUPVAL                         R15 5
      104 GETTABLEKS                       R14 R15 K20 ["useMemo"]
      106 NEWCLOSURE                       R15 P0
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R3
      109 CAPTURE                          UPVAL U8
      110 CAPTURE                          VAL R0
      111 CAPTURE                          VAL R13
      112 NEWTABLE                         R16 0 4
      114 MOVE                             R17 R11
      115 JUMPIFNOT                        R17 ; [+2]
      116 GETTABLEKS                       R17 R11 K21 ["Extents"]
      118 MOVE                             R18 R11
      119 JUMPIFNOT                        R18 ; [+2]
      120 GETTABLEKS                       R18 R11 K22 ["GraphRect"]
      122 GETTABLEKS                       R19 R0 K23 ["Pins"]
      124 GETTABLEKS                       R20 R3 K24 ["current"]
      126 SETLIST                          R16 R17 4 [1]
      128 CALL                             R14 2 2
      129 GETUPVAL                         R17 5
      130 GETTABLEKS                       R16 R17 K25 ["useCallback"]
      132 NEWCLOSURE                       R17 P1
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R15
      136 NEWTABLE                         R18 0 2
      138 MOVE                             R19 R14
      139 MOVE                             R20 R15
      140 SETLIST                          R18 R19 2 [1]
      142 CALL                             R16 2 1
      143 GETUPVAL                         R18 5
      144 GETTABLEKS                       R17 R18 K25 ["useCallback"]
      146 NEWCLOSURE                       R18 P2
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R15
      150 CAPTURE                          UPVAL U9
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R5
      153 CAPTURE                          UPVAL U10
      154 CAPTURE                          VAL R14
      155 NEWTABLE                         R19 0 7
      157 MOVE                             R20 R14
      158 GETTABLEKS                       R21 R3 K24 ["current"]
      160 GETTABLEKS                       R22 R4 K24 ["current"]
      162 MOVE                             R23 R15
      163 GETTABLEKS                       R24 R5 K26 ["enabled"]
      165 GETUPVAL                         R25 9
      166 CALL                             R25 0 1
      167 GETTABLEKS                       R26 R7 K27 ["isShiftPressed"]
      169 CALL                             R26 0 -1
      170 SETLIST                          R19 R20 -1 [1]
      172 CALL                             R17 2 1
      173 GETUPVAL                         R19 5
      174 GETTABLEKS                       R18 R19 K20 ["useMemo"]
      176 NEWCLOSURE                       R19 P3
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U5
      179 CAPTURE                          UPVAL U11
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R16
      184 CAPTURE                          UPVAL U12
      185 CAPTURE                          VAL R10
      186 NEWTABLE                         R20 0 6
      188 MOVE                             R21 R14
      189 MOVE                             R22 R16
      190 GETTABLEKS                       R23 R0 K28 ["Position"]
      192 GETTABLEKS                       R24 R0 K23 ["Pins"]
      194 GETTABLEKS                       R25 R0 K29 ["OnPinDragged"]
      196 MOVE                             R26 R17
      197 SETLIST                          R20 R21 6 [1]
      199 CALL                             R18 2 1
      200 GETUPVAL                         R20 5
      201 GETTABLEKS                       R19 R20 K25 ["useCallback"]
      203 NEWCLOSURE                       R20 P4
      204 CAPTURE                          VAL R5
      205 NEWTABLE                         R21 0 1
      207 GETTABLEKS                       R22 R5 K30 ["enable"]
      209 SETLIST                          R21 R22 1 [1]
      211 CALL                             R19 2 1
      212 GETUPVAL                         R21 5
      213 GETTABLEKS                       R20 R21 K25 ["useCallback"]
      215 NEWCLOSURE                       R21 P5
      216 CAPTURE                          VAL R5
      217 NEWTABLE                         R22 0 1
      219 GETTABLEKS                       R23 R5 K31 ["disable"]
      221 SETLIST                          R22 R23 1 [1]
      223 CALL                             R20 2 1
      224 GETUPVAL                         R22 5
      225 GETTABLEKS                       R21 R22 K25 ["useCallback"]
      227 NEWCLOSURE                       R22 P6
      228 CAPTURE                          VAL R6
      229 CAPTURE                          VAL R17
      230 CAPTURE                          VAL R0
      231 NEWTABLE                         R23 0 3
      233 GETTABLEKS                       R24 R0 K29 ["OnPinDragged"]
      235 MOVE                             R25 R17
      236 MOVE                             R26 R6
      237 SETLIST                          R23 R24 3 [1]
      239 CALL                             R21 2 1
      240 GETUPVAL                         R23 5
      241 GETTABLEKS                       R22 R23 K25 ["useCallback"]
      243 NEWCLOSURE                       R23 P7
      244 CAPTURE                          VAL R17
      245 CAPTURE                          VAL R0
      246 NEWTABLE                         R24 0 2
      248 GETTABLEKS                       R25 R0 K29 ["OnPinDragged"]
      250 MOVE                             R26 R17
      251 SETLIST                          R24 R25 2 [1]
      253 CALL                             R22 2 1
      254 GETUPVAL                         R24 5
      255 GETTABLEKS                       R23 R24 K25 ["useCallback"]
      257 NEWCLOSURE                       R24 P8
      258 CAPTURE                          VAL R6
      259 NEWTABLE                         R25 0 1
      261 MOVE                             R26 R6
      262 SETLIST                          R25 R26 1 [1]
      264 CALL                             R23 2 1
      265 GETUPVAL                         R25 5
      266 GETTABLEKS                       R24 R25 K32 ["createElement"]
      268 GETUPVAL                         R26 0
      269 GETTABLEKS                       R25 R26 K33 ["View"]
      271 DUPTABLE                         R26 K38 [{"tag", "LayoutOrder", "backgroundStyle", "ref"}]
      272 LOADK                            R27 K39 ["size-full-700"]
      273 SETTABLEKS                       R27 R26 K34 ["tag"]
      275 GETTABLEKS                       R27 R0 K35 ["LayoutOrder"]
      277 SETTABLEKS                       R27 R26 K35 ["LayoutOrder"]
      279 GETTABLEKS                       R29 R1 K7 ["Color"]
      281 GETTABLEKS                       R28 R29 K11 ["Surface"]
      283 GETTABLEKS                       R27 R28 K12 ["Surface_0"]
      285 SETTABLEKS                       R27 R26 K36 ["backgroundStyle"]
      287 GETTABLEKS                       R27 R2 K40 ["setFrame"]
      289 SETTABLEKS                       R27 R26 K37 ["ref"]
      291 GETUPVAL                         R28 9
      292 CALL                             R28 0 1
      293 JUMPIFNOT                        R28 ; [+116]
      294 DUPTABLE                         R27 K42 [{"Canvas"}]
      295 GETUPVAL                         R29 5
      296 GETTABLEKS                       R28 R29 K32 ["createElement"]
      298 GETUPVAL                         R30 13
      299 GETTABLEKS                       R29 R30 K41 ["Canvas"]
      301 DUPTABLE                         R30 K50 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      302 GETIMPORT                        R31 K53 [UDim2.fromScale]
      304 LOADN                            R32 1
      305 LOADN                            R33 1
      306 CALL                             R31 2 1
      307 SETTABLEKS                       R31 R30 K43 ["Size"]
      309 SETTABLEKS                       R15 R30 K22 ["GraphRect"]
      311 GETIMPORT                        R31 K56 [UDim.new]
      313 LOADN                            R32 0
      314 LOADN                            R33 0
      315 CALL                             R31 2 1
      316 SETTABLEKS                       R31 R30 K44 ["ViewportPaddingLeft"]
      318 GETIMPORT                        R31 K56 [UDim.new]
      320 LOADN                            R32 0
      321 LOADN                            R33 0
      322 CALL                             R31 2 1
      323 SETTABLEKS                       R31 R30 K45 ["ViewportPaddingRight"]
      325 GETIMPORT                        R31 K56 [UDim.new]
      327 LOADN                            R32 0
      328 LOADN                            R33 0
      329 CALL                             R31 2 1
      330 SETTABLEKS                       R31 R30 K46 ["ViewportPaddingBottom"]
      332 GETIMPORT                        R31 K56 [UDim.new]
      334 LOADN                            R32 0
      335 LOADN                            R33 0
      336 CALL                             R31 2 1
      337 SETTABLEKS                       R31 R30 K47 ["ViewportPaddingTop"]
      339 LOADN                            R31 1
      340 SETTABLEKS                       R31 R30 K48 ["CanvasBackgroundTransparency"]
      342 LOADN                            R31 1
      343 SETTABLEKS                       R31 R30 K49 ["ViewportBackgroundTransparency"]
      345 DUPTABLE                         R31 K60 [{"Guides", "Points", "DragDetector"}]
      346 GETUPVAL                         R33 5
      347 GETTABLEKS                       R32 R33 K32 ["createElement"]
      349 GETUPVAL                         R33 14
      350 DUPTABLE                         R34 K64 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      351 SETTABLEKS                       R14 R34 K21 ["Extents"]
      353 SETTABLEKS                       R8 R34 K61 ["GridColor"]
      355 SETTABLEKS                       R9 R34 K62 ["AxisColor"]
      357 LOADK                            R35 K65 [0.1]
      358 SETTABLEKS                       R35 R34 K63 ["Thickness"]
      360 CALL                             R32 2 1
      361 SETTABLEKS                       R32 R31 K57 ["Guides"]
      363 GETUPVAL                         R33 5
      364 GETTABLEKS                       R32 R33 K32 ["createElement"]
      366 GETUPVAL                         R34 5
      367 GETTABLEKS                       R33 R34 K66 ["Fragment"]
      369 NEWTABLE                         R34 0 0
      371 MOVE                             R35 R18
      372 CALL                             R32 3 1
      373 SETTABLEKS                       R32 R31 K58 ["Points"]
      375 GETUPVAL                         R33 5
      376 GETTABLEKS                       R32 R33 K32 ["createElement"]
      378 LOADK                            R33 K67 ["UIDragDetector"]
      379 NEWTABLE                         R34 4 0
      381 GETIMPORT                        R35 K71 [Enum.UIDragDetectorDragStyle.Scriptable]
      383 SETTABLEKS                       R35 R34 K72 ["DragStyle"]
      385 GETUPVAL                         R37 5
      386 GETTABLEKS                       R36 R37 K73 ["Event"]
      388 GETTABLEKS                       R35 R36 K74 ["DragStart"]
      390 SETTABLE                         R21 R34 R35
      391 GETUPVAL                         R37 5
      392 GETTABLEKS                       R36 R37 K73 ["Event"]
      394 GETTABLEKS                       R35 R36 K75 ["DragContinue"]
      396 SETTABLE                         R22 R34 R35
      397 GETUPVAL                         R37 5
      398 GETTABLEKS                       R36 R37 K73 ["Event"]
      400 GETTABLEKS                       R35 R36 K76 ["DragEnd"]
      402 SETTABLE                         R23 R34 R35
      403 CALL                             R32 2 1
      404 SETTABLEKS                       R32 R31 K59 ["DragDetector"]
      406 CALL                             R28 3 1
      407 SETTABLEKS                       R28 R27 K41 ["Canvas"]
      409 JUMP                             ; [+147]
      410 DUPTABLE                         R27 K78 [{"ShiftListener"}]
      411 GETUPVAL                         R29 5
      412 GETTABLEKS                       R28 R29 K32 ["createElement"]
      414 LOADK                            R29 K79 ["Frame"]
      415 NEWTABLE                         R30 4 0
      417 GETIMPORT                        R31 K53 [UDim2.fromScale]
      419 LOADN                            R32 1
      420 LOADN                            R33 1
      421 CALL                             R31 2 1
      422 SETTABLEKS                       R31 R30 K43 ["Size"]
      424 LOADN                            R31 1
      425 SETTABLEKS                       R31 R30 K80 ["BackgroundTransparency"]
      427 GETUPVAL                         R33 5
      428 GETTABLEKS                       R32 R33 K73 ["Event"]
      430 GETTABLEKS                       R31 R32 K81 ["InputBegan"]
      432 SETTABLE                         R19 R30 R31
      433 GETUPVAL                         R33 5
      434 GETTABLEKS                       R32 R33 K73 ["Event"]
      436 GETTABLEKS                       R31 R32 K82 ["InputEnded"]
      438 SETTABLE                         R20 R30 R31
      439 DUPTABLE                         R31 K42 [{"Canvas"}]
      440 GETUPVAL                         R33 5
      441 GETTABLEKS                       R32 R33 K32 ["createElement"]
      443 GETUPVAL                         R34 13
      444 GETTABLEKS                       R33 R34 K41 ["Canvas"]
      446 DUPTABLE                         R34 K50 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      447 GETIMPORT                        R35 K53 [UDim2.fromScale]
      449 LOADN                            R36 1
      450 LOADN                            R37 1
      451 CALL                             R35 2 1
      452 SETTABLEKS                       R35 R34 K43 ["Size"]
      454 SETTABLEKS                       R15 R34 K22 ["GraphRect"]
      456 GETIMPORT                        R35 K56 [UDim.new]
      458 LOADN                            R36 0
      459 LOADN                            R37 0
      460 CALL                             R35 2 1
      461 SETTABLEKS                       R35 R34 K44 ["ViewportPaddingLeft"]
      463 GETIMPORT                        R35 K56 [UDim.new]
      465 LOADN                            R36 0
      466 LOADN                            R37 0
      467 CALL                             R35 2 1
      468 SETTABLEKS                       R35 R34 K45 ["ViewportPaddingRight"]
      470 GETIMPORT                        R35 K56 [UDim.new]
      472 LOADN                            R36 0
      473 LOADN                            R37 0
      474 CALL                             R35 2 1
      475 SETTABLEKS                       R35 R34 K46 ["ViewportPaddingBottom"]
      477 GETIMPORT                        R35 K56 [UDim.new]
      479 LOADN                            R36 0
      480 LOADN                            R37 0
      481 CALL                             R35 2 1
      482 SETTABLEKS                       R35 R34 K47 ["ViewportPaddingTop"]
      484 LOADN                            R35 1
      485 SETTABLEKS                       R35 R34 K48 ["CanvasBackgroundTransparency"]
      487 LOADN                            R35 1
      488 SETTABLEKS                       R35 R34 K49 ["ViewportBackgroundTransparency"]
      490 DUPTABLE                         R35 K60 [{"Guides", "Points", "DragDetector"}]
      491 GETUPVAL                         R37 5
      492 GETTABLEKS                       R36 R37 K32 ["createElement"]
      494 GETUPVAL                         R37 14
      495 DUPTABLE                         R38 K64 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      496 SETTABLEKS                       R14 R38 K21 ["Extents"]
      498 SETTABLEKS                       R8 R38 K61 ["GridColor"]
      500 SETTABLEKS                       R9 R38 K62 ["AxisColor"]
      502 LOADK                            R39 K65 [0.1]
      503 SETTABLEKS                       R39 R38 K63 ["Thickness"]
      505 CALL                             R36 2 1
      506 SETTABLEKS                       R36 R35 K57 ["Guides"]
      508 GETUPVAL                         R37 5
      509 GETTABLEKS                       R36 R37 K32 ["createElement"]
      511 GETUPVAL                         R38 5
      512 GETTABLEKS                       R37 R38 K66 ["Fragment"]
      514 NEWTABLE                         R38 0 0
      516 MOVE                             R39 R18
      517 CALL                             R36 3 1
      518 SETTABLEKS                       R36 R35 K58 ["Points"]
      520 GETUPVAL                         R37 5
      521 GETTABLEKS                       R36 R37 K32 ["createElement"]
      523 LOADK                            R37 K67 ["UIDragDetector"]
      524 NEWTABLE                         R38 4 0
      526 GETIMPORT                        R39 K71 [Enum.UIDragDetectorDragStyle.Scriptable]
      528 SETTABLEKS                       R39 R38 K72 ["DragStyle"]
      530 GETUPVAL                         R41 5
      531 GETTABLEKS                       R40 R41 K73 ["Event"]
      533 GETTABLEKS                       R39 R40 K74 ["DragStart"]
      535 SETTABLE                         R21 R38 R39
      536 GETUPVAL                         R41 5
      537 GETTABLEKS                       R40 R41 K73 ["Event"]
      539 GETTABLEKS                       R39 R40 K75 ["DragContinue"]
      541 SETTABLE                         R22 R38 R39
      542 GETUPVAL                         R41 5
      543 GETTABLEKS                       R40 R41 K73 ["Event"]
      545 GETTABLEKS                       R39 R40 K76 ["DragEnd"]
      547 SETTABLE                         R23 R38 R39
      548 CALL                             R36 2 1
      549 SETTABLEKS                       R36 R35 K59 ["DragDetector"]
      551 CALL                             R32 3 1
      552 SETTABLEKS                       R32 R31 K41 ["Canvas"]
      554 CALL                             R28 3 1
      555 SETTABLEKS                       R28 R27 K77 ["ShiftListener"]
      557 CALL                             R24 3 -1
      558 RETURN                           R24 -1

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
       64 GETTABLEKS                       R8 R9 K23 ["ModifierKeysContext"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R10 R0 K22 ["Contexts"]
       71 GETTABLEKS                       R9 R10 K24 ["NativeGraphContext"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R13 R0 K10 ["Components"]
       78 GETTABLEKS                       R12 R13 K11 ["NodeView"]
       80 GETTABLEKS                       R11 R12 K12 ["CompositorNodeProperty"]
       82 GETTABLEKS                       R10 R11 K25 ["PropertyUtils"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R12 R0 K19 ["Parent"]
       89 GETTABLEKS                       R11 R12 K26 ["React"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K9 [require]
       94 GETTABLEKS                       R13 R0 K19 ["Parent"]
       96 GETTABLEKS                       R12 R13 K27 ["ReactUtils"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K9 [require]
      101 GETTABLEKS                       R14 R0 K28 ["Hooks"]
      103 GETTABLEKS                       R13 R14 K29 ["useAbsoluteSize"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K9 [require]
      108 GETTABLEKS                       R15 R0 K28 ["Hooks"]
      110 GETTABLEKS                       R14 R15 K30 ["useSignalRef"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K9 [require]
      115 GETTABLEKS                       R16 R0 K31 ["Flags"]
      117 GETTABLEKS                       R15 R16 K32 ["getFFlagAnimGraphUIInputSelection"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K35 [Rect.new]
      122 LOADN                            R16 0
      123 LOADN                            R17 0
      124 LOADN                            R18 1
      125 LOADN                            R19 0
      126 CALL                             R15 4 1
      127 DUPCLOSURE                       R16 K36 [PROTO_0]
      128 CAPTURE                          VAL R1
      129 DUPCLOSURE                       R17 K37 [PROTO_10]
      130 CAPTURE                          VAL R5
      131 CAPTURE                          VAL R12
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R16
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R8
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R15
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R9
      141 CAPTURE                          VAL R4
      142 CAPTURE                          VAL R3
      143 CAPTURE                          VAL R6
      144 CAPTURE                          VAL R2
      145 RETURN                           R17 1
