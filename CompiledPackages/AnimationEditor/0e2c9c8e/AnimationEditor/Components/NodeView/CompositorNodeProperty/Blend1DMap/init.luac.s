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
       77 JUMPIF                           R1 ; [+81]
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
       95 DUPTABLE                         R9 K30 [{"AbsToMap", "Clamp", "Color3", "Extents", "Index", "Label", "LockExtents", "Mode", "OnPinDragged", "Position", "ZIndex", "Size"}]
       96 GETUPVAL                         R10 3
       97 SETTABLEKS                       R10 R9 K2 ["AbsToMap"]
       99 LOADB                            R10 0
      100 SETTABLEKS                       R10 R9 K3 ["Clamp"]
      102 GETUPVAL                         R10 9
      103 SETTABLEKS                       R10 R9 K4 ["Color3"]
      105 GETUPVAL                         R10 5
      106 SETTABLEKS                       R10 R9 K5 ["Extents"]
      108 SETTABLEKS                       R4 R9 K7 ["Index"]
      110 GETUPVAL                         R11 10
      111 CALL                             R11 0 1
      112 JUMPIFNOT                        R11 ; [+11]
      113 GETUPVAL                         R11 0
      114 GETTABLEKS                       R11 R11 K31 ["PinLabels"]
      116 JUMPIFNOT                        R11 ; [+5]
      117 GETUPVAL                         R11 0
      118 GETTABLEKS                       R11 R11 K31 ["PinLabels"]
      120 GETTABLE                         R10 R11 R4
      121 JUMP                             ; [+3]
      122 LOADNIL                          R10
      123 JUMP                             ; [+1]
      124 LOADNIL                          R10
      125 SETTABLEKS                       R10 R9 K29 ["Label"]
      127 GETUPVAL                         R10 6
      128 SETTABLEKS                       R10 R9 K8 ["LockExtents"]
      130 GETUPVAL                         R10 7
      131 GETTABLEKS                       R10 R10 K18 ["DRAGGABLE_PIN_MODES"]
      133 GETTABLEKS                       R10 R10 K19 ["Blend1D"]
      135 SETTABLEKS                       R10 R9 K9 ["Mode"]
      137 GETUPVAL                         R10 0
      138 GETTABLEKS                       R10 R10 K10 ["OnPinDragged"]
      140 SETTABLEKS                       R10 R9 K10 ["OnPinDragged"]
      142 GETIMPORT                        R10 K22 [Vector2.new]
      144 MOVE                             R11 R5
      145 LOADN                            R12 0
      146 CALL                             R10 2 1
      147 SETTABLEKS                       R10 R9 K0 ["Position"]
      149 LOADN                            R10 3
      150 SETTABLEKS                       R10 R9 K11 ["ZIndex"]
      152 LOADN                            R10 9
      153 SETTABLEKS                       R10 R9 K12 ["Size"]
      155 CALL                             R7 2 1
      156 SETTABLE                         R7 R0 R6
      157 FORGLOOP                         R1 2 ; [-74]
      159 RETURN                           R0 1

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
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R3
      111 CAPTURE                          UPVAL U8
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R13
      114 NEWTABLE                         R16 0 4
      116 MOVE                             R17 R11
      117 JUMPIFNOT                        R17 ; [+2]
      118 GETTABLEKS                       R17 R11 K22 ["Extents"]
      120 MOVE                             R18 R11
      121 JUMPIFNOT                        R18 ; [+2]
      122 GETTABLEKS                       R18 R11 K23 ["GraphRect"]
      124 GETTABLEKS                       R19 R0 K24 ["Pins"]
      126 GETTABLEKS                       R20 R3 K25 ["current"]
      128 SETLIST                          R16 R17 4 [1]
      130 CALL                             R14 2 2
      131 GETUPVAL                         R16 5
      132 GETTABLEKS                       R16 R16 K26 ["useCallback"]
      134 NEWCLOSURE                       R17 P1
      135 CAPTURE                          VAL R12
      136 CAPTURE                          VAL R14
      137 CAPTURE                          VAL R15
      138 NEWTABLE                         R18 0 2
      140 MOVE                             R19 R14
      141 MOVE                             R20 R15
      142 SETLIST                          R18 R19 2 [1]
      144 CALL                             R16 2 1
      145 GETUPVAL                         R17 5
      146 GETTABLEKS                       R17 R17 K26 ["useCallback"]
      148 NEWCLOSURE                       R18 P2
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R4
      151 CAPTURE                          VAL R15
      152 CAPTURE                          UPVAL U9
      153 CAPTURE                          VAL R7
      154 CAPTURE                          VAL R5
      155 CAPTURE                          UPVAL U10
      156 CAPTURE                          VAL R14
      157 NEWTABLE                         R19 0 7
      159 MOVE                             R20 R14
      160 GETTABLEKS                       R21 R3 K25 ["current"]
      162 GETTABLEKS                       R22 R4 K25 ["current"]
      164 MOVE                             R23 R15
      165 GETTABLEKS                       R24 R5 K27 ["enabled"]
      167 GETUPVAL                         R25 9
      168 CALL                             R25 0 1
      169 GETTABLEKS                       R26 R7 K28 ["isShiftPressed"]
      171 CALL                             R26 0 -1
      172 SETLIST                          R19 R20 -1 [1]
      174 CALL                             R17 2 1
      175 GETUPVAL                         R18 5
      176 GETTABLEKS                       R18 R18 K21 ["useMemo"]
      178 NEWCLOSURE                       R19 P3
      179 CAPTURE                          VAL R0
      180 CAPTURE                          UPVAL U5
      181 CAPTURE                          UPVAL U11
      182 CAPTURE                          VAL R17
      183 CAPTURE                          VAL R1
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R16
      186 CAPTURE                          UPVAL U12
      187 CAPTURE                          UPVAL U13
      188 CAPTURE                          VAL R10
      189 CAPTURE                          UPVAL U14
      190 NEWTABLE                         R20 0 7
      192 MOVE                             R21 R14
      193 MOVE                             R22 R16
      194 GETTABLEKS                       R23 R0 K29 ["Position"]
      196 GETTABLEKS                       R24 R0 K24 ["Pins"]
      198 GETTABLEKS                       R25 R0 K30 ["OnPinDragged"]
      200 GETTABLEKS                       R26 R0 K31 ["HidePins"]
      202 MOVE                             R27 R17
      203 SETLIST                          R20 R21 7 [1]
      205 CALL                             R18 2 1
      206 GETUPVAL                         R19 5
      207 GETTABLEKS                       R19 R19 K26 ["useCallback"]
      209 NEWCLOSURE                       R20 P4
      210 CAPTURE                          VAL R5
      211 NEWTABLE                         R21 0 1
      213 GETTABLEKS                       R22 R5 K32 ["enable"]
      215 SETLIST                          R21 R22 1 [1]
      217 CALL                             R19 2 1
      218 GETUPVAL                         R20 5
      219 GETTABLEKS                       R20 R20 K26 ["useCallback"]
      221 NEWCLOSURE                       R21 P5
      222 CAPTURE                          VAL R5
      223 NEWTABLE                         R22 0 1
      225 GETTABLEKS                       R23 R5 K33 ["disable"]
      227 SETLIST                          R22 R23 1 [1]
      229 CALL                             R20 2 1
      230 GETUPVAL                         R21 5
      231 GETTABLEKS                       R21 R21 K26 ["useCallback"]
      233 NEWCLOSURE                       R22 P6
      234 CAPTURE                          VAL R6
      235 CAPTURE                          VAL R17
      236 CAPTURE                          VAL R0
      237 NEWTABLE                         R23 0 3
      239 GETTABLEKS                       R24 R0 K30 ["OnPinDragged"]
      241 MOVE                             R25 R17
      242 MOVE                             R26 R6
      243 SETLIST                          R23 R24 3 [1]
      245 CALL                             R21 2 1
      246 GETUPVAL                         R22 5
      247 GETTABLEKS                       R22 R22 K26 ["useCallback"]
      249 NEWCLOSURE                       R23 P7
      250 CAPTURE                          VAL R17
      251 CAPTURE                          VAL R0
      252 NEWTABLE                         R24 0 2
      254 GETTABLEKS                       R25 R0 K30 ["OnPinDragged"]
      256 MOVE                             R26 R17
      257 SETLIST                          R24 R25 2 [1]
      259 CALL                             R22 2 1
      260 GETUPVAL                         R23 5
      261 GETTABLEKS                       R23 R23 K26 ["useCallback"]
      263 NEWCLOSURE                       R24 P8
      264 CAPTURE                          VAL R6
      265 NEWTABLE                         R25 0 1
      267 MOVE                             R26 R6
      268 SETLIST                          R25 R26 1 [1]
      270 CALL                             R23 2 1
      271 GETUPVAL                         R24 5
      272 GETTABLEKS                       R24 R24 K34 ["createElement"]
      274 GETUPVAL                         R25 0
      275 GETTABLEKS                       R25 R25 K35 ["View"]
      277 DUPTABLE                         R26 K40 [{"tag", "LayoutOrder", "backgroundStyle", "ref"}]
      278 LOADK                            R27 K41 ["size-full-700"]
      279 SETTABLEKS                       R27 R26 K36 ["tag"]
      281 GETTABLEKS                       R27 R0 K37 ["LayoutOrder"]
      283 SETTABLEKS                       R27 R26 K37 ["LayoutOrder"]
      285 GETTABLEKS                       R27 R1 K8 ["Color"]
      287 GETTABLEKS                       R27 R27 K12 ["Surface"]
      289 GETTABLEKS                       R27 R27 K13 ["Surface_0"]
      291 SETTABLEKS                       R27 R26 K38 ["backgroundStyle"]
      293 GETTABLEKS                       R27 R2 K42 ["setFrame"]
      295 SETTABLEKS                       R27 R26 K39 ["ref"]
      297 GETUPVAL                         R28 9
      298 CALL                             R28 0 1
      299 JUMPIFNOT                        R28 ; [+116]
      300 DUPTABLE                         R27 K44 [{"Canvas"}]
      301 GETUPVAL                         R28 5
      302 GETTABLEKS                       R28 R28 K34 ["createElement"]
      304 GETUPVAL                         R29 15
      305 GETTABLEKS                       R29 R29 K43 ["Canvas"]
      307 DUPTABLE                         R30 K52 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      308 GETIMPORT                        R31 K55 [UDim2.fromScale]
      310 LOADN                            R32 1
      311 LOADN                            R33 1
      312 CALL                             R31 2 1
      313 SETTABLEKS                       R31 R30 K45 ["Size"]
      315 SETTABLEKS                       R15 R30 K23 ["GraphRect"]
      317 GETIMPORT                        R31 K58 [UDim.new]
      319 LOADN                            R32 0
      320 LOADN                            R33 0
      321 CALL                             R31 2 1
      322 SETTABLEKS                       R31 R30 K46 ["ViewportPaddingLeft"]
      324 GETIMPORT                        R31 K58 [UDim.new]
      326 LOADN                            R32 0
      327 LOADN                            R33 0
      328 CALL                             R31 2 1
      329 SETTABLEKS                       R31 R30 K47 ["ViewportPaddingRight"]
      331 GETIMPORT                        R31 K58 [UDim.new]
      333 LOADN                            R32 0
      334 LOADN                            R33 0
      335 CALL                             R31 2 1
      336 SETTABLEKS                       R31 R30 K48 ["ViewportPaddingBottom"]
      338 GETIMPORT                        R31 K58 [UDim.new]
      340 LOADN                            R32 0
      341 LOADN                            R33 0
      342 CALL                             R31 2 1
      343 SETTABLEKS                       R31 R30 K49 ["ViewportPaddingTop"]
      345 LOADN                            R31 1
      346 SETTABLEKS                       R31 R30 K50 ["CanvasBackgroundTransparency"]
      348 LOADN                            R31 1
      349 SETTABLEKS                       R31 R30 K51 ["ViewportBackgroundTransparency"]
      351 DUPTABLE                         R31 K62 [{"Guides", "Points", "DragDetector"}]
      352 GETUPVAL                         R32 5
      353 GETTABLEKS                       R32 R32 K34 ["createElement"]
      355 GETUPVAL                         R33 16
      356 DUPTABLE                         R34 K66 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      357 SETTABLEKS                       R14 R34 K22 ["Extents"]
      359 SETTABLEKS                       R8 R34 K63 ["GridColor"]
      361 SETTABLEKS                       R9 R34 K64 ["AxisColor"]
      363 LOADK                            R35 K67 [0.1]
      364 SETTABLEKS                       R35 R34 K65 ["Thickness"]
      366 CALL                             R32 2 1
      367 SETTABLEKS                       R32 R31 K59 ["Guides"]
      369 GETUPVAL                         R32 5
      370 GETTABLEKS                       R32 R32 K34 ["createElement"]
      372 GETUPVAL                         R33 5
      373 GETTABLEKS                       R33 R33 K68 ["Fragment"]
      375 NEWTABLE                         R34 0 0
      377 MOVE                             R35 R18
      378 CALL                             R32 3 1
      379 SETTABLEKS                       R32 R31 K60 ["Points"]
      381 GETUPVAL                         R32 5
      382 GETTABLEKS                       R32 R32 K34 ["createElement"]
      384 LOADK                            R33 K69 ["UIDragDetector"]
      385 NEWTABLE                         R34 4 0
      387 GETIMPORT                        R35 K73 [Enum.UIDragDetectorDragStyle.Scriptable]
      389 SETTABLEKS                       R35 R34 K74 ["DragStyle"]
      391 GETUPVAL                         R35 5
      392 GETTABLEKS                       R35 R35 K75 ["Event"]
      394 GETTABLEKS                       R35 R35 K76 ["DragStart"]
      396 SETTABLE                         R21 R34 R35
      397 GETUPVAL                         R35 5
      398 GETTABLEKS                       R35 R35 K75 ["Event"]
      400 GETTABLEKS                       R35 R35 K77 ["DragContinue"]
      402 SETTABLE                         R22 R34 R35
      403 GETUPVAL                         R35 5
      404 GETTABLEKS                       R35 R35 K75 ["Event"]
      406 GETTABLEKS                       R35 R35 K78 ["DragEnd"]
      408 SETTABLE                         R23 R34 R35
      409 CALL                             R32 2 1
      410 SETTABLEKS                       R32 R31 K61 ["DragDetector"]
      412 CALL                             R28 3 1
      413 SETTABLEKS                       R28 R27 K43 ["Canvas"]
      415 JUMP                             ; [+147]
      416 DUPTABLE                         R27 K80 [{"ShiftListener"}]
      417 GETUPVAL                         R28 5
      418 GETTABLEKS                       R28 R28 K34 ["createElement"]
      420 LOADK                            R29 K81 ["Frame"]
      421 NEWTABLE                         R30 4 0
      423 GETIMPORT                        R31 K55 [UDim2.fromScale]
      425 LOADN                            R32 1
      426 LOADN                            R33 1
      427 CALL                             R31 2 1
      428 SETTABLEKS                       R31 R30 K45 ["Size"]
      430 LOADN                            R31 1
      431 SETTABLEKS                       R31 R30 K82 ["BackgroundTransparency"]
      433 GETUPVAL                         R31 5
      434 GETTABLEKS                       R31 R31 K75 ["Event"]
      436 GETTABLEKS                       R31 R31 K83 ["InputBegan"]
      438 SETTABLE                         R19 R30 R31
      439 GETUPVAL                         R31 5
      440 GETTABLEKS                       R31 R31 K75 ["Event"]
      442 GETTABLEKS                       R31 R31 K84 ["InputEnded"]
      444 SETTABLE                         R20 R30 R31
      445 DUPTABLE                         R31 K44 [{"Canvas"}]
      446 GETUPVAL                         R32 5
      447 GETTABLEKS                       R32 R32 K34 ["createElement"]
      449 GETUPVAL                         R33 15
      450 GETTABLEKS                       R33 R33 K43 ["Canvas"]
      452 DUPTABLE                         R34 K52 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop", "CanvasBackgroundTransparency", "ViewportBackgroundTransparency"}]
      453 GETIMPORT                        R35 K55 [UDim2.fromScale]
      455 LOADN                            R36 1
      456 LOADN                            R37 1
      457 CALL                             R35 2 1
      458 SETTABLEKS                       R35 R34 K45 ["Size"]
      460 SETTABLEKS                       R15 R34 K23 ["GraphRect"]
      462 GETIMPORT                        R35 K58 [UDim.new]
      464 LOADN                            R36 0
      465 LOADN                            R37 0
      466 CALL                             R35 2 1
      467 SETTABLEKS                       R35 R34 K46 ["ViewportPaddingLeft"]
      469 GETIMPORT                        R35 K58 [UDim.new]
      471 LOADN                            R36 0
      472 LOADN                            R37 0
      473 CALL                             R35 2 1
      474 SETTABLEKS                       R35 R34 K47 ["ViewportPaddingRight"]
      476 GETIMPORT                        R35 K58 [UDim.new]
      478 LOADN                            R36 0
      479 LOADN                            R37 0
      480 CALL                             R35 2 1
      481 SETTABLEKS                       R35 R34 K48 ["ViewportPaddingBottom"]
      483 GETIMPORT                        R35 K58 [UDim.new]
      485 LOADN                            R36 0
      486 LOADN                            R37 0
      487 CALL                             R35 2 1
      488 SETTABLEKS                       R35 R34 K49 ["ViewportPaddingTop"]
      490 LOADN                            R35 1
      491 SETTABLEKS                       R35 R34 K50 ["CanvasBackgroundTransparency"]
      493 LOADN                            R35 1
      494 SETTABLEKS                       R35 R34 K51 ["ViewportBackgroundTransparency"]
      496 DUPTABLE                         R35 K62 [{"Guides", "Points", "DragDetector"}]
      497 GETUPVAL                         R36 5
      498 GETTABLEKS                       R36 R36 K34 ["createElement"]
      500 GETUPVAL                         R37 16
      501 DUPTABLE                         R38 K66 [{"Extents", "GridColor", "AxisColor", "Thickness"}]
      502 SETTABLEKS                       R14 R38 K22 ["Extents"]
      504 SETTABLEKS                       R8 R38 K63 ["GridColor"]
      506 SETTABLEKS                       R9 R38 K64 ["AxisColor"]
      508 LOADK                            R39 K67 [0.1]
      509 SETTABLEKS                       R39 R38 K65 ["Thickness"]
      511 CALL                             R36 2 1
      512 SETTABLEKS                       R36 R35 K59 ["Guides"]
      514 GETUPVAL                         R36 5
      515 GETTABLEKS                       R36 R36 K34 ["createElement"]
      517 GETUPVAL                         R37 5
      518 GETTABLEKS                       R37 R37 K68 ["Fragment"]
      520 NEWTABLE                         R38 0 0
      522 MOVE                             R39 R18
      523 CALL                             R36 3 1
      524 SETTABLEKS                       R36 R35 K60 ["Points"]
      526 GETUPVAL                         R36 5
      527 GETTABLEKS                       R36 R36 K34 ["createElement"]
      529 LOADK                            R37 K69 ["UIDragDetector"]
      530 NEWTABLE                         R38 4 0
      532 GETIMPORT                        R39 K73 [Enum.UIDragDetectorDragStyle.Scriptable]
      534 SETTABLEKS                       R39 R38 K74 ["DragStyle"]
      536 GETUPVAL                         R39 5
      537 GETTABLEKS                       R39 R39 K75 ["Event"]
      539 GETTABLEKS                       R39 R39 K76 ["DragStart"]
      541 SETTABLE                         R21 R38 R39
      542 GETUPVAL                         R39 5
      543 GETTABLEKS                       R39 R39 K75 ["Event"]
      545 GETTABLEKS                       R39 R39 K77 ["DragContinue"]
      547 SETTABLE                         R22 R38 R39
      548 GETUPVAL                         R39 5
      549 GETTABLEKS                       R39 R39 K75 ["Event"]
      551 GETTABLEKS                       R39 R39 K78 ["DragEnd"]
      553 SETTABLE                         R23 R38 R39
      554 CALL                             R36 2 1
      555 SETTABLEKS                       R36 R35 K61 ["DragDetector"]
      557 CALL                             R32 3 1
      558 SETTABLEKS                       R32 R31 K43 ["Canvas"]
      560 CALL                             R28 3 1
      561 SETTABLEKS                       R28 R27 K79 ["ShiftListener"]
      563 CALL                             R24 3 -1
      564 RETURN                           R24 -1

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
       64 GETTABLEKS                       R8 R8 K23 ["NativeGraphContext"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R9 R0 K19 ["Parent"]
       71 GETTABLEKS                       R9 R9 K24 ["NodeGraphing"]
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
      117 GETTABLEKS                       R15 R15 K32 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      119 CALL                             R14 1 1
      120 GETIMPORT                        R15 K9 [require]
      122 GETTABLEKS                       R16 R0 K31 ["Flags"]
      124 GETTABLEKS                       R16 R16 K33 ["getFFlagAnimGraphUIInputSelection"]
      126 CALL                             R15 1 1
      127 GETIMPORT                        R16 K9 [require]
      129 GETTABLEKS                       R17 R0 K31 ["Flags"]
      131 GETTABLEKS                       R17 R17 K34 ["getFFlagAnimGraphUIWeightSlider"]
      133 CALL                             R16 1 1
      134 GETIMPORT                        R17 K37 [Rect.new]
      136 LOADN                            R18 0
      137 LOADN                            R19 0
      138 LOADN                            R20 1
      139 LOADN                            R21 0
      140 CALL                             R17 4 1
      141 DUPCLOSURE                       R18 K38 [PROTO_0]
      142 CAPTURE                          VAL R1
      143 DUPCLOSURE                       R19 K39 [PROTO_10]
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R13
      147 CAPTURE                          VAL R11
      148 CAPTURE                          VAL R18
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R7
      151 CAPTURE                          VAL R8
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R9
      155 CAPTURE                          VAL R4
      156 CAPTURE                          VAL R3
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R6
      160 CAPTURE                          VAL R2
      161 RETURN                           R19 1
