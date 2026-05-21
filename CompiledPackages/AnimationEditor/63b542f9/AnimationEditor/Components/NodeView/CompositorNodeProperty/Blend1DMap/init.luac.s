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
        2 GETUPVAL                         R0 0
        3 GETTABLEKS                       R0 R0 K0 ["Extents"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["GraphRect"]
        8 RETURN                           R0 2
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K2 ["current"]
       12 JUMPIFNOT                        R0 ; [+7]
       13 GETUPVAL                         R0 1
       14 GETTABLEKS                       R0 R0 K2 ["current"]
       16 GETTABLEKS                       R0 R0 K3 ["X"]
       18 JUMPIFNOTEQKN                    R0 K4 [0] ; [+4]
       20 GETUPVAL                         R0 2
       21 GETUPVAL                         R1 2
       22 RETURN                           R0 2
       23 LOADN                            R0 0
       24 LOADN                            R1 1
       25 GETUPVAL                         R3 3
       26 GETTABLEKS                       R3 R3 K5 ["Pins"]
       28 LENGTH                           R2 R3
       29 LOADN                            R3 0
       30 JUMPIFNOTLT                      R3 R2 ; [+39]
       32 LOADK                            R0 K6 [∞]
       33 LOADK                            R1 K7 [-∞]
       34 GETUPVAL                         R2 3
       35 GETTABLEKS                       R2 R2 K5 ["Pins"]
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
       60 GETUPVAL                         R3 2
       61 GETTABLEKS                       R3 R3 K14 ["Width"]
       63 DIVK                             R2 R3 K13 [2]
       64 SUB                              R0 R0 R2
       65 GETUPVAL                         R3 2
       66 GETTABLEKS                       R3 R3 K14 ["Width"]
       68 DIVK                             R2 R3 K13 [2]
       69 ADD                              R1 R1 R2
       70 ADD                              R3 R0 R1
       71 DIVK                             R2 R3 K13 [2]
       72 SUB                              R5 R1 R0
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K2 ["current"]
       76 GETTABLEKS                       R7 R7 K3 ["X"]
       78 LOADN                            R9 2
       79 GETUPVAL                         R10 4
       80 MUL                              R8 R9 R10
       81 ADD                              R6 R7 R8
       82 MUL                              R4 R5 R6
       83 GETUPVAL                         R5 1
       84 GETTABLEKS                       R5 R5 K2 ["current"]
       86 GETTABLEKS                       R5 R5 K3 ["X"]
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
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R4 R4 K5 ["Min"]
       28 GETTABLEKS                       R4 R4 K4 ["X"]
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K6 ["Width"]
       33 MUL                              R5 R2 R6
       34 ADD                              R3 R4 R5
       35 GETUPVAL                         R4 3
       36 CALL                             R4 0 1
       37 JUMPIFNOT                        R4 ; [+5]
       38 GETUPVAL                         R4 4
       39 GETTABLEKS                       R4 R4 K7 ["isShiftPressed"]
       41 CALL                             R4 0 1
       42 JUMPIF                           R4 ; [+7]
       43 GETUPVAL                         R4 3
       44 CALL                             R4 0 1
       45 JUMPIF                           R4 ; [+20]
       46 GETUPVAL                         R4 5
       47 GETTABLEKS                       R4 R4 K8 ["enabled"]
       49 JUMPIFNOT                        R4 ; [+16]
       50 GETUPVAL                         R4 6
       51 GETTABLEKS                       R4 R4 K9 ["roundStep"]
       53 MOVE                             R5 R3
       54 GETUPVAL                         R6 7
       55 GETTABLEKS                       R6 R6 K5 ["Min"]
       57 GETTABLEKS                       R6 R6 K4 ["X"]
       59 GETUPVAL                         R7 7
       60 GETTABLEKS                       R7 R7 K10 ["Max"]
       62 GETTABLEKS                       R7 R7 K4 ["X"]
       64 CALL                             R4 3 1
       65 MOVE                             R3 R4
       66 JUMPIFNOT                        R1 ; [+17]
       67 GETUPVAL                         R6 7
       68 GETTABLEKS                       R6 R6 K5 ["Min"]
       70 GETTABLEKS                       R6 R6 K4 ["X"]
       72 GETUPVAL                         R7 7
       73 GETTABLEKS                       R7 R7 K10 ["Max"]
       75 GETTABLEKS                       R7 R7 K4 ["X"]
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
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Position"]
        5 JUMPIFEQKNIL                     R1 ; [+65]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["createElement"]
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K13 [{"AbsToMap", "Clamp", "Color3", "Extents", "Image", "Index", "LockExtents", "Mode", "OnPinDragged", "Position", "ZIndex", "Size"}]
       12 GETUPVAL                         R4 3
       13 SETTABLEKS                       R4 R3 K2 ["AbsToMap"]
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K3 ["Clamp"]
       18 GETUPVAL                         R4 4
       19 GETTABLEKS                       R4 R4 K14 ["Color"]
       21 GETTABLEKS                       R4 R4 K15 ["System"]
       23 GETTABLEKS                       R4 R4 K16 ["Warning"]
       25 GETTABLEKS                       R4 R4 K4 ["Color3"]
       27 SETTABLEKS                       R4 R3 K4 ["Color3"]
       29 GETUPVAL                         R4 5
       30 SETTABLEKS                       R4 R3 K5 ["Extents"]
       32 LOADK                            R4 K17 ["rbxasset://textures/AnimLibrary/BlendMapCursor.png"]
       33 SETTABLEKS                       R4 R3 K6 ["Image"]
       35 LOADN                            R4 0
       36 SETTABLEKS                       R4 R3 K7 ["Index"]
       38 GETUPVAL                         R4 6
       39 SETTABLEKS                       R4 R3 K8 ["LockExtents"]
       41 GETUPVAL                         R4 7
       42 GETTABLEKS                       R4 R4 K18 ["DRAGGABLE_PIN_MODES"]
       44 GETTABLEKS                       R4 R4 K19 ["Blend1D"]
       46 SETTABLEKS                       R4 R3 K9 ["Mode"]
       48 GETUPVAL                         R4 0
       49 GETTABLEKS                       R4 R4 K10 ["OnPinDragged"]
       51 SETTABLEKS                       R4 R3 K10 ["OnPinDragged"]
       53 GETIMPORT                        R4 K22 [Vector2.new]
       55 GETUPVAL                         R5 0
       56 GETTABLEKS                       R5 R5 K0 ["Position"]
       58 LOADN                            R6 0
       59 CALL                             R4 2 1
       60 SETTABLEKS                       R4 R3 K0 ["Position"]
       62 LOADN                            R4 4
       63 SETTABLEKS                       R4 R3 K11 ["ZIndex"]
       65 LOADN                            R4 12
       66 SETTABLEKS                       R4 R3 K12 ["Size"]
       68 CALL                             R1 2 1
       69 SETTABLEKS                       R1 R0 K23 ["current"]
       71 GETUPVAL                         R1 8
       72 CALL                             R1 0 1
       73 JUMPIFNOT                        R1 ; [+4]
       74 GETUPVAL                         R1 0
       75 GETTABLEKS                       R1 R1 K24 ["HidePins"]
       77 JUMPIF                           R1 ; [+64]
       78 GETUPVAL                         R1 0
       79 GETTABLEKS                       R1 R1 K25 ["Pins"]
       81 LOADNIL                          R2
       82 LOADNIL                          R3
       83 FORGPREP                         R1
       84 LOADK                            R7 K26 ["point-"]
       85 FASTCALL1                        TOSTRING R4 ; [+3]
       86 MOVE                             R9 R4
       87 GETIMPORT                        R8 K28 [tostring]
       89 CALL                             R8 1 1
       90 CONCAT                           R6 R7 R8
       91 GETUPVAL                         R7 1
       92 GETTABLEKS                       R7 R7 K1 ["createElement"]
       94 GETUPVAL                         R8 2
       95 DUPTABLE                         R9 K29 [{"AbsToMap", "Clamp", "Color3", "Extents", "Index", "LockExtents", "Mode", "OnPinDragged", "Position", "ZIndex", "Size"}]
       96 GETUPVAL                         R10 3
       97 SETTABLEKS                       R10 R9 K2 ["AbsToMap"]
       99 LOADB                            R10 0
      100 SETTABLEKS                       R10 R9 K3 ["Clamp"]
      102 GETUPVAL                         R10 9
      103 SETTABLEKS                       R10 R9 K4 ["Color3"]
      105 GETUPVAL                         R10 5
      106 SETTABLEKS                       R10 R9 K5 ["Extents"]
      108 SETTABLEKS                       R4 R9 K7 ["Index"]
      110 GETUPVAL                         R10 6
      111 SETTABLEKS                       R10 R9 K8 ["LockExtents"]
      113 GETUPVAL                         R10 7
      114 GETTABLEKS                       R10 R10 K18 ["DRAGGABLE_PIN_MODES"]
      116 GETTABLEKS                       R10 R10 K19 ["Blend1D"]
      118 SETTABLEKS                       R10 R9 K9 ["Mode"]
      120 GETUPVAL                         R10 0
      121 GETTABLEKS                       R10 R10 K10 ["OnPinDragged"]
      123 SETTABLEKS                       R10 R9 K10 ["OnPinDragged"]
      125 GETIMPORT                        R10 K22 [Vector2.new]
      127 MOVE                             R11 R5
      128 LOADN                            R12 0
      129 CALL                             R10 2 1
      130 SETTABLEKS                       R10 R9 K0 ["Position"]
      132 LOADN                            R10 3
      133 SETTABLEKS                       R10 R9 K11 ["ZIndex"]
      135 LOADN                            R10 9
      136 SETTABLEKS                       R10 R9 K12 ["Size"]
      138 CALL                             R7 2 1
      139 SETTABLE                         R7 R0 R6
      140 FORGLOOP                         R1 2 ; [-57]
      142 RETURN                           R0 1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["beginUndoTransaction"]
        3 LOADK                            R3 K1 ["Blend1DMap Drag"]
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
      129 GETUPVAL                         R16 5
      130 GETTABLEKS                       R16 R16 K25 ["useCallback"]
      132 NEWCLOSURE                       R17 P1
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R14
      135 CAPTURE                          VAL R15
      136 NEWTABLE                         R18 0 2
      138 MOVE                             R19 R14
      139 MOVE                             R20 R15
      140 SETLIST                          R18 R19 2 [1]
      142 CALL                             R16 2 1
      143 GETUPVAL                         R17 5
      144 GETTABLEKS                       R17 R17 K25 ["useCallback"]
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
      173 GETUPVAL                         R18 5
      174 GETTABLEKS                       R18 R18 K20 ["useMemo"]
      176 NEWCLOSURE                       R19 P3
      177 CAPTURE                          VAL R0
      178 CAPTURE                          UPVAL U5
      179 CAPTURE                          UPVAL U11
      180 CAPTURE                          VAL R17
      181 CAPTURE                          VAL R1
      182 CAPTURE                          VAL R14
      183 CAPTURE                          VAL R16
      184 CAPTURE                          UPVAL U12
      185 CAPTURE                          UPVAL U13
      186 CAPTURE                          VAL R10
      187 NEWTABLE                         R20 0 7
      189 MOVE                             R21 R14
      190 MOVE                             R22 R16
      191 GETTABLEKS                       R23 R0 K28 ["Position"]
      193 GETTABLEKS                       R24 R0 K23 ["Pins"]
      195 GETTABLEKS                       R25 R0 K29 ["OnPinDragged"]
      197 GETTABLEKS                       R26 R0 K30 ["HidePins"]
      199 MOVE                             R27 R17
      200 SETLIST                          R20 R21 7 [1]
      202 CALL                             R18 2 1
      203 GETUPVAL                         R19 5
      204 GETTABLEKS                       R19 R19 K25 ["useCallback"]
      206 NEWCLOSURE                       R20 P4
      207 CAPTURE                          VAL R5
      208 NEWTABLE                         R21 0 1
      210 GETTABLEKS                       R22 R5 K31 ["enable"]
      212 SETLIST                          R21 R22 1 [1]
      214 CALL                             R19 2 1
      215 GETUPVAL                         R20 5
      216 GETTABLEKS                       R20 R20 K25 ["useCallback"]
      218 NEWCLOSURE                       R21 P5
      219 CAPTURE                          VAL R5
      220 NEWTABLE                         R22 0 1
      222 GETTABLEKS                       R23 R5 K32 ["disable"]
      224 SETLIST                          R22 R23 1 [1]
      226 CALL                             R20 2 1
      227 GETUPVAL                         R21 5
      228 GETTABLEKS                       R21 R21 K25 ["useCallback"]
      230 NEWCLOSURE                       R22 P6
      231 CAPTURE                          VAL R6
      232 CAPTURE                          VAL R17
      233 CAPTURE                          VAL R0
      234 NEWTABLE                         R23 0 3
      236 GETTABLEKS                       R24 R0 K29 ["OnPinDragged"]
      238 MOVE                             R25 R17
      239 MOVE                             R26 R6
      240 SETLIST                          R23 R24 3 [1]
      242 CALL                             R21 2 1
      243 GETUPVAL                         R22 5
      244 GETTABLEKS                       R22 R22 K25 ["useCallback"]
      246 NEWCLOSURE                       R23 P7
      247 CAPTURE                          VAL R17
      248 CAPTURE                          VAL R0
      249 NEWTABLE                         R24 0 2
      251 GETTABLEKS                       R25 R0 K29 ["OnPinDragged"]
      253 MOVE                             R26 R17
      254 SETLIST                          R24 R25 2 [1]
      256 CALL                             R22 2 1
      257 GETUPVAL                         R23 5
      258 GETTABLEKS                       R23 R23 K25 ["useCallback"]
      260 NEWCLOSURE                       R24 P8
      261 CAPTURE                          VAL R6
      262 NEWTABLE                         R25 0 1
      264 MOVE                             R26 R6
      265 SETLIST                          R25 R26 1 [1]
      267 CALL                             R23 2 1
      268 GETUPVAL                         R24 5
      269 GETTABLEKS                       R24 R24 K33 ["createElement"]
      271 GETUPVAL                         R25 0
      272 GETTABLEKS                       R25 R25 K34 ["View"]
      274 DUPTABLE                         R26 K39 [{"tag", "LayoutOrder", "backgroundStyle", "ref"}]
      275 LOADK                            R27 K40 ["size-full-700"]
      276 SETTABLEKS                       R27 R26 K35 ["tag"]
      278 GETTABLEKS                       R27 R0 K36 ["LayoutOrder"]
      280 SETTABLEKS                       R27 R26 K36 ["LayoutOrder"]
      282 GETTABLEKS                       R27 R1 K7 ["Color"]
      284 GETTABLEKS                       R27 R27 K11 ["Surface"]
      286 GETTABLEKS                       R27 R27 K12 ["Surface_0"]
      288 SETTABLEKS                       R27 R26 K37 ["backgroundStyle"]
      290 GETTABLEKS                       R27 R2 K41 ["setFrame"]
      292 SETTABLEKS                       R27 R26 K38 ["ref"]
      294 GETUPVAL                         R28 9
      295 CALL                             R28 0 1
      296 JUMPIFNOT                        R28 ; [+116]
      297 DUPTABLE                         R27 K43 [{"Canvas"}]
      298 GETUPVAL                         R28 5
      299 GETTABLEKS                       R28 R28 K33 ["createElement"]
      301 GETUPVAL                         R29 14
      302 GETTABLEKS                       R29 R29 K42 ["Canvas"]
      304 DUPTABLE                         R30 K51 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      305 GETIMPORT                        R31 K54 [UDim2.fromScale]
      307 LOADN                            R32 1
      308 LOADN                            R33 1
      309 CALL                             R31 2 1
      310 SETTABLEKS                       R31 R30 K44 ["Size"]
      312 SETTABLEKS                       R15 R30 K22 ["GraphRect"]
      314 GETIMPORT                        R31 K57 [UDim.new]
      316 LOADN                            R32 0
      317 LOADN                            R33 0
      318 CALL                             R31 2 1
      319 SETTABLEKS                       R31 R30 K45 ["ViewportPaddingLeft"]
      321 GETIMPORT                        R31 K57 [UDim.new]
      323 LOADN                            R32 0
      324 LOADN                            R33 0
      325 CALL                             R31 2 1
      326 SETTABLEKS                       R31 R30 K46 ["ViewportPaddingRight"]
      328 GETIMPORT                        R31 K57 [UDim.new]
      330 LOADN                            R32 0
      331 LOADN                            R33 0
      332 CALL                             R31 2 1
      333 SETTABLEKS                       R31 R30 K47 ["ViewportPaddingBottom"]
      335 GETIMPORT                        R31 K57 [UDim.new]
      337 LOADN                            R32 0
      338 LOADN                            R33 0
      339 CALL                             R31 2 1
      340 SETTABLEKS                       R31 R30 K48 ["ViewportPaddingTop"]
      342 LOADN                            R31 1
      343 SETTABLEKS                       R31 R30 K49 ["CanvasBackgroundTransparency"]
      345 LOADN                            R31 1
      346 SETTABLEKS                       R31 R30 K50 ["ViewportBackgroundTransparency"]
      348 DUPTABLE                         R31 K61 [{"Guides", "Points", "DragDetector"}]
      349 GETUPVAL                         R32 5
      350 GETTABLEKS                       R32 R32 K33 ["createElement"]
      352 GETUPVAL                         R33 15
      353 DUPTABLE                         R34 K65 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      354 SETTABLEKS                       R14 R34 K21 ["Extents"]
      356 SETTABLEKS                       R8 R34 K62 ["GridColor"]
      358 SETTABLEKS                       R9 R34 K63 ["AxisColor"]
      360 LOADK                            R35 K66 [0.1]
      361 SETTABLEKS                       R35 R34 K64 ["Thickness"]
      363 CALL                             R32 2 1
      364 SETTABLEKS                       R32 R31 K58 ["Guides"]
      366 GETUPVAL                         R32 5
      367 GETTABLEKS                       R32 R32 K33 ["createElement"]
      369 GETUPVAL                         R33 5
      370 GETTABLEKS                       R33 R33 K67 ["Fragment"]
      372 NEWTABLE                         R34 0 0
      374 MOVE                             R35 R18
      375 CALL                             R32 3 1
      376 SETTABLEKS                       R32 R31 K59 ["Points"]
      378 GETUPVAL                         R32 5
      379 GETTABLEKS                       R32 R32 K33 ["createElement"]
      381 LOADK                            R33 K68 ["UIDragDetector"]
      382 NEWTABLE                         R34 4 0
      384 GETIMPORT                        R35 K72 [Enum.UIDragDetectorDragStyle.Scriptable]
      386 SETTABLEKS                       R35 R34 K73 ["DragStyle"]
      388 GETUPVAL                         R35 5
      389 GETTABLEKS                       R35 R35 K74 ["Event"]
      391 GETTABLEKS                       R35 R35 K75 ["DragStart"]
      393 SETTABLE                         R21 R34 R35
      394 GETUPVAL                         R35 5
      395 GETTABLEKS                       R35 R35 K74 ["Event"]
      397 GETTABLEKS                       R35 R35 K76 ["DragContinue"]
      399 SETTABLE                         R22 R34 R35
      400 GETUPVAL                         R35 5
      401 GETTABLEKS                       R35 R35 K74 ["Event"]
      403 GETTABLEKS                       R35 R35 K77 ["DragEnd"]
      405 SETTABLE                         R23 R34 R35
      406 CALL                             R32 2 1
      407 SETTABLEKS                       R32 R31 K60 ["DragDetector"]
      409 CALL                             R28 3 1
      410 SETTABLEKS                       R28 R27 K42 ["Canvas"]
      412 JUMP                             ; [+147]
      413 DUPTABLE                         R27 K79 [{"ShiftListener"}]
      414 GETUPVAL                         R28 5
      415 GETTABLEKS                       R28 R28 K33 ["createElement"]
      417 LOADK                            R29 K80 ["Frame"]
      418 NEWTABLE                         R30 4 0
      420 GETIMPORT                        R31 K54 [UDim2.fromScale]
      422 LOADN                            R32 1
      423 LOADN                            R33 1
      424 CALL                             R31 2 1
      425 SETTABLEKS                       R31 R30 K44 ["Size"]
      427 LOADN                            R31 1
      428 SETTABLEKS                       R31 R30 K81 ["BackgroundTransparency"]
      430 GETUPVAL                         R31 5
      431 GETTABLEKS                       R31 R31 K74 ["Event"]
      433 GETTABLEKS                       R31 R31 K82 ["InputBegan"]
      435 SETTABLE                         R19 R30 R31
      436 GETUPVAL                         R31 5
      437 GETTABLEKS                       R31 R31 K74 ["Event"]
      439 GETTABLEKS                       R31 R31 K83 ["InputEnded"]
      441 SETTABLE                         R20 R30 R31
      442 DUPTABLE                         R31 K43 [{"Canvas"}]
      443 GETUPVAL                         R32 5
      444 GETTABLEKS                       R32 R32 K33 ["createElement"]
      446 GETUPVAL                         R33 14
      447 GETTABLEKS                       R33 R33 K42 ["Canvas"]
      449 DUPTABLE                         R34 K51 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      450 GETIMPORT                        R35 K54 [UDim2.fromScale]
      452 LOADN                            R36 1
      453 LOADN                            R37 1
      454 CALL                             R35 2 1
      455 SETTABLEKS                       R35 R34 K44 ["Size"]
      457 SETTABLEKS                       R15 R34 K22 ["GraphRect"]
      459 GETIMPORT                        R35 K57 [UDim.new]
      461 LOADN                            R36 0
      462 LOADN                            R37 0
      463 CALL                             R35 2 1
      464 SETTABLEKS                       R35 R34 K45 ["ViewportPaddingLeft"]
      466 GETIMPORT                        R35 K57 [UDim.new]
      468 LOADN                            R36 0
      469 LOADN                            R37 0
      470 CALL                             R35 2 1
      471 SETTABLEKS                       R35 R34 K46 ["ViewportPaddingRight"]
      473 GETIMPORT                        R35 K57 [UDim.new]
      475 LOADN                            R36 0
      476 LOADN                            R37 0
      477 CALL                             R35 2 1
      478 SETTABLEKS                       R35 R34 K47 ["ViewportPaddingBottom"]
      480 GETIMPORT                        R35 K57 [UDim.new]
      482 LOADN                            R36 0
      483 LOADN                            R37 0
      484 CALL                             R35 2 1
      485 SETTABLEKS                       R35 R34 K48 ["ViewportPaddingTop"]
      487 LOADN                            R35 1
      488 SETTABLEKS                       R35 R34 K49 ["CanvasBackgroundTransparency"]
      490 LOADN                            R35 1
      491 SETTABLEKS                       R35 R34 K50 ["ViewportBackgroundTransparency"]
      493 DUPTABLE                         R35 K61 [{"Guides", "Points", "DragDetector"}]
      494 GETUPVAL                         R36 5
      495 GETTABLEKS                       R36 R36 K33 ["createElement"]
      497 GETUPVAL                         R37 15
      498 DUPTABLE                         R38 K65 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      499 SETTABLEKS                       R14 R38 K21 ["Extents"]
      501 SETTABLEKS                       R8 R38 K62 ["GridColor"]
      503 SETTABLEKS                       R9 R38 K63 ["AxisColor"]
      505 LOADK                            R39 K66 [0.1]
      506 SETTABLEKS                       R39 R38 K64 ["Thickness"]
      508 CALL                             R36 2 1
      509 SETTABLEKS                       R36 R35 K58 ["Guides"]
      511 GETUPVAL                         R36 5
      512 GETTABLEKS                       R36 R36 K33 ["createElement"]
      514 GETUPVAL                         R37 5
      515 GETTABLEKS                       R37 R37 K67 ["Fragment"]
      517 NEWTABLE                         R38 0 0
      519 MOVE                             R39 R18
      520 CALL                             R36 3 1
      521 SETTABLEKS                       R36 R35 K59 ["Points"]
      523 GETUPVAL                         R36 5
      524 GETTABLEKS                       R36 R36 K33 ["createElement"]
      526 LOADK                            R37 K68 ["UIDragDetector"]
      527 NEWTABLE                         R38 4 0
      529 GETIMPORT                        R39 K72 [Enum.UIDragDetectorDragStyle.Scriptable]
      531 SETTABLEKS                       R39 R38 K73 ["DragStyle"]
      533 GETUPVAL                         R39 5
      534 GETTABLEKS                       R39 R39 K74 ["Event"]
      536 GETTABLEKS                       R39 R39 K75 ["DragStart"]
      538 SETTABLE                         R21 R38 R39
      539 GETUPVAL                         R39 5
      540 GETTABLEKS                       R39 R39 K74 ["Event"]
      542 GETTABLEKS                       R39 R39 K76 ["DragContinue"]
      544 SETTABLE                         R22 R38 R39
      545 GETUPVAL                         R39 5
      546 GETTABLEKS                       R39 R39 K74 ["Event"]
      548 GETTABLEKS                       R39 R39 K77 ["DragEnd"]
      550 SETTABLE                         R23 R38 R39
      551 CALL                             R36 2 1
      552 SETTABLEKS                       R36 R35 K60 ["DragDetector"]
      554 CALL                             R32 3 1
      555 SETTABLEKS                       R32 R31 K42 ["Canvas"]
      557 CALL                             R28 3 1
      558 SETTABLEKS                       R28 R27 K78 ["ShiftListener"]
      560 CALL                             R24 3 -1
      561 RETURN                           R24 -1

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
       21 GETTABLEKS                       R3 R3 K13 ["Blend1DMap"]
       23 GETTABLEKS                       R3 R3 K14 ["Blend1DGuides"]
       25 CALL                             R2 1 1
       26 GETIMPORT                        R3 K9 [require]
       28 GETTABLEKS                       R4 R0 K15 ["Util"]
       30 GETTABLEKS                       R4 R4 K16 ["Constants"]
       32 CALL                             R3 1 1
       33 GETIMPORT                        R4 K9 [require]
       35 GETTABLEKS                       R5 R0 K10 ["Components"]
       37 GETTABLEKS                       R5 R5 K11 ["NodeView"]
       39 GETTABLEKS                       R5 R5 K12 ["CompositorNodeProperty"]
       41 GETTABLEKS                       R5 R5 K17 ["BlendMapShared"]
       43 GETTABLEKS                       R5 R5 K18 ["DraggablePin"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K9 [require]
       48 GETTABLEKS                       R6 R0 K19 ["Parent"]
       50 GETTABLEKS                       R6 R6 K20 ["Foundation"]
       52 CALL                             R5 1 1
       53 GETIMPORT                        R6 K9 [require]
       55 GETTABLEKS                       R7 R0 K19 ["Parent"]
       57 GETTABLEKS                       R7 R7 K21 ["Graphing"]
       59 CALL                             R6 1 1
       60 GETIMPORT                        R7 K9 [require]
       62 GETTABLEKS                       R8 R0 K22 ["Contexts"]
       64 GETTABLEKS                       R8 R8 K23 ["ModifierKeysContext"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R9 R0 K22 ["Contexts"]
       71 GETTABLEKS                       R9 R9 K24 ["NativeGraphContext"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R10 R0 K10 ["Components"]
       78 GETTABLEKS                       R10 R10 K11 ["NodeView"]
       80 GETTABLEKS                       R10 R10 K12 ["CompositorNodeProperty"]
       82 GETTABLEKS                       R10 R10 K25 ["PropertyUtils"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R11 R0 K19 ["Parent"]
       89 GETTABLEKS                       R11 R11 K26 ["React"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K9 [require]
       94 GETTABLEKS                       R12 R0 K19 ["Parent"]
       96 GETTABLEKS                       R12 R12 K27 ["ReactUtils"]
       98 CALL                             R11 1 1
       99 GETIMPORT                        R12 K9 [require]
      101 GETTABLEKS                       R13 R0 K28 ["Hooks"]
      103 GETTABLEKS                       R13 R13 K29 ["useAbsoluteSize"]
      105 CALL                             R12 1 1
      106 GETIMPORT                        R13 K9 [require]
      108 GETTABLEKS                       R14 R0 K28 ["Hooks"]
      110 GETTABLEKS                       R14 R14 K30 ["useSignalRef"]
      112 CALL                             R13 1 1
      113 GETIMPORT                        R14 K9 [require]
      115 GETTABLEKS                       R15 R0 K31 ["Flags"]
      117 GETTABLEKS                       R15 R15 K32 ["getFFlagAnimGraphUIInputSelection"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K9 [require]
      122 GETTABLEKS                       R16 R0 K31 ["Flags"]
      124 GETTABLEKS                       R16 R16 K33 ["getFFlagAnimGraphUIWeightSlider"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K36 [Rect.new]
      129 LOADN                            R17 0
      130 LOADN                            R18 0
      131 LOADN                            R19 1
      132 LOADN                            R20 0
      133 CALL                             R16 4 1
      134 DUPCLOSURE                       R17 K37 [PROTO_0]
      135 CAPTURE                          VAL R1
      136 DUPCLOSURE                       R18 K38 [PROTO_10]
      137 CAPTURE                          VAL R5
      138 CAPTURE                          VAL R12
      139 CAPTURE                          VAL R13
      140 CAPTURE                          VAL R11
      141 CAPTURE                          VAL R17
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R8
      144 CAPTURE                          VAL R7
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R9
      148 CAPTURE                          VAL R4
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R15
      151 CAPTURE                          VAL R6
      152 CAPTURE                          VAL R2
      153 RETURN                           R18 1
