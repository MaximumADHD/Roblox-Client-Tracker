PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIF                           R1 ; [+2]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K0 ["observeAbsoluteSize"]
        8 MOVE                             R2 R0
        9 CALL                             R1 1 1
       10 LOADB                            R2 0
       11 JUMPIFEQKNIL                     R1 ; [+8]
       13 GETTABLEKS                       R3 R1 K1 ["X"]
       15 LOADN                            R4 0
       16 JUMPIFLT                         R4 R3 ; [+2]
       18 LOADB                            R2 0 +1
       19 LOADB                            R2 1
       20 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeZoomRatio"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 LOADN                            R2 0
        6 JUMPIFNOTLE                      R1 R2 ; [+3]
        8 LOADN                            R2 1
        9 RETURN                           R2 1
       10 DIVRK                            R2 K1 [1] R1
       11 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["observeZoomRatio"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 SUBRK                            R3 K2 [0.6] R1
        6 DIVK                             R2 R3 K1 [0.4]
        7 LOADN                            R5 0
        8 LOADN                            R6 1
        9 FASTCALL3                        MATH_CLAMP R2 R5 R6
       11 MOVE                             R4 R2
       12 GETIMPORT                        R3 K5 [math.clamp]
       14 CALL                             R3 3 1
       15 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 -1
        6 RETURN                           R0 -1

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       36 GETTABLEKS                       R4 R4 K7 ["isShiftPressed"]
       38 CALL                             R4 0 1
       39 JUMPIFNOT                        R4 ; [+16]
       40 GETUPVAL                         R4 4
       41 GETTABLEKS                       R4 R4 K8 ["roundStep"]
       43 MOVE                             R5 R3
       44 GETUPVAL                         R6 5
       45 GETTABLEKS                       R6 R6 K5 ["Min"]
       47 GETTABLEKS                       R6 R6 K4 ["X"]
       49 GETUPVAL                         R7 5
       50 GETTABLEKS                       R7 R7 K9 ["Max"]
       52 GETTABLEKS                       R7 R7 K4 ["X"]
       54 CALL                             R4 3 1
       55 MOVE                             R3 R4
       56 JUMPIFNOT                        R1 ; [+17]
       57 GETUPVAL                         R6 5
       58 GETTABLEKS                       R6 R6 K5 ["Min"]
       60 GETTABLEKS                       R6 R6 K4 ["X"]
       62 GETUPVAL                         R7 5
       63 GETTABLEKS                       R7 R7 K9 ["Max"]
       65 GETTABLEKS                       R7 R7 K4 ["X"]
       67 FASTCALL3                        MATH_CLAMP R3 R6 R7
       69 MOVE                             R5 R3
       70 GETIMPORT                        R4 K12 [math.clamp]
       72 CALL                             R4 3 1
       73 MOVE                             R3 R4
       74 GETIMPORT                        R4 K14 [Vector2.new]
       76 MOVE                             R5 R3
       77 LOADN                            R6 0
       78 CALL                             R4 2 -1
       79 RETURN                           R4 -1

PROTO_9:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Position"]
        5 JUMPIFEQKNIL                     R1 ; [+50]
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["createElement"]
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K18 [{["AbsToMap"], ["Clamp"] = True, ["Color3"], ["Extents"], ["Image"] = "rbxasset://textures/AnimLibrary/BlendMapCursor.png", ["Index"] = 0, ["LockExtents"], ["Mode"], ["OnPinDragged"], [10], ["ZIndex"] = 4, ["Size"] = 12}]
       12 GETUPVAL                         R4 3
       13 SETTABLEKS                       R4 R3 K2 ["AbsToMap"]
       15 GETUPVAL                         R4 4
       16 GETTABLEKS                       R4 R4 K19 ["Color"]
       18 GETTABLEKS                       R4 R4 K20 ["System"]
       20 GETTABLEKS                       R4 R4 K21 ["Warning"]
       22 GETTABLEKS                       R4 R4 K5 ["Color3"]
       24 SETTABLEKS                       R4 R3 K5 ["Color3"]
       26 GETUPVAL                         R4 5
       27 SETTABLEKS                       R4 R3 K6 ["Extents"]
       29 GETUPVAL                         R4 6
       30 SETTABLEKS                       R4 R3 K11 ["LockExtents"]
       32 GETUPVAL                         R4 7
       33 GETTABLEKS                       R4 R4 K22 ["DRAGGABLE_PIN_MODES"]
       35 GETTABLEKS                       R4 R4 K23 ["Blend1D"]
       37 SETTABLEKS                       R4 R3 K12 ["Mode"]
       39 GETUPVAL                         R4 0
       40 GETTABLEKS                       R4 R4 K13 ["OnPinDragged"]
       42 SETTABLEKS                       R4 R3 K13 ["OnPinDragged"]
       44 GETIMPORT                        R4 K26 [Vector2.new]
       46 GETUPVAL                         R5 0
       47 GETTABLEKS                       R5 R5 K0 ["Position"]
       49 LOADN                            R6 0
       50 CALL                             R4 2 1
       51 SETTABLEKS                       R4 R3 K0 ["Position"]
       53 CALL                             R1 2 1
       54 SETTABLEKS                       R1 R0 K27 ["current"]
       56 GETUPVAL                         R1 0
       57 GETTABLEKS                       R1 R1 K28 ["HidePins"]
       59 JUMPIF                           R1 ; [+72]
       60 GETUPVAL                         R1 0
       61 GETTABLEKS                       R1 R1 K29 ["Pins"]
       63 LOADNIL                          R2
       64 LOADNIL                          R3
       65 FORGPREP                         R1
       66 LOADK                            R7 K30 ["point-"]
       67 FASTCALL1                        TOSTRING R4 ; [+3]
       68 MOVE                             R9 R4
       69 GETIMPORT                        R8 K32 [tostring]
       71 CALL                             R8 1 1
       72 CONCAT                           R6 R7 R8
       73 GETUPVAL                         R7 1
       74 GETTABLEKS                       R7 R7 K1 ["createElement"]
       76 GETUPVAL                         R8 2
       77 DUPTABLE                         R9 K37 [{["AbsToMap"], ["Clamp"] = False, ["Color3"], ["Extents"], ["Index"], ["Label"], ["LockExtents"], ["Mode"], ["OnPinDragged"], [10], ["ZIndex"] = 3, ["Size"] = 9}]
       78 GETUPVAL                         R10 3
       79 SETTABLEKS                       R10 R9 K2 ["AbsToMap"]
       81 GETUPVAL                         R10 8
       82 SETTABLEKS                       R10 R9 K5 ["Color3"]
       84 GETUPVAL                         R10 5
       85 SETTABLEKS                       R10 R9 K6 ["Extents"]
       87 SETTABLEKS                       R4 R9 K9 ["Index"]
       89 GETUPVAL                         R11 9
       90 CALL                             R11 0 1
       91 JUMPIFNOT                        R11 ; [+11]
       92 GETUPVAL                         R11 0
       93 GETTABLEKS                       R11 R11 K38 ["PinLabels"]
       95 JUMPIFNOT                        R11 ; [+5]
       96 GETUPVAL                         R11 0
       97 GETTABLEKS                       R11 R11 K38 ["PinLabels"]
       99 GETTABLE                         R10 R11 R4
      100 JUMP                             ; [+3]
      101 LOADNIL                          R10
      102 JUMP                             ; [+1]
      103 LOADNIL                          R10
      104 SETTABLEKS                       R10 R9 K34 ["Label"]
      106 GETUPVAL                         R10 6
      107 SETTABLEKS                       R10 R9 K11 ["LockExtents"]
      109 GETUPVAL                         R10 7
      110 GETTABLEKS                       R10 R10 K22 ["DRAGGABLE_PIN_MODES"]
      112 GETTABLEKS                       R10 R10 K23 ["Blend1D"]
      114 SETTABLEKS                       R10 R9 K12 ["Mode"]
      116 GETUPVAL                         R10 0
      117 GETTABLEKS                       R10 R10 K13 ["OnPinDragged"]
      119 SETTABLEKS                       R10 R9 K13 ["OnPinDragged"]
      121 GETIMPORT                        R10 K26 [Vector2.new]
      123 MOVE                             R11 R5
      124 LOADN                            R12 0
      125 CALL                             R10 2 1
      126 SETTABLEKS                       R10 R9 K0 ["Position"]
      128 CALL                             R7 2 1
      129 SETTABLE                         R7 R0 R6
      130 FORGLOOP                         R1 2 ; [-65]
      132 RETURN                           R0 1

PROTO_10:
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
       32 GETUPVAL                         R7 3
       33 GETTABLEKS                       R7 R7 K4 ["useContext"]
       35 GETUPVAL                         R8 5
       36 GETTABLEKS                       R8 R8 K7 ["ViewportRectContext"]
       38 GETTABLEKS                       R8 R8 K5 ["Context"]
       40 CALL                             R7 1 1
       41 GETUPVAL                         R8 3
       42 GETTABLEKS                       R8 R8 K8 ["useMemo"]
       44 NEWCLOSURE                       R9 P0
       45 CAPTURE                          UPVAL U6
       46 CAPTURE                          UPVAL U7
       47 CAPTURE                          VAL R2
       48 NEWTABLE                         R10 0 1
       50 GETTABLEKS                       R11 R2 K2 ["observeAbsoluteSize"]
       52 SETLIST                          R10 R11 1 [1]
       54 CALL                             R8 2 1
       55 GETUPVAL                         R9 8
       56 GETTABLEKS                       R9 R9 K9 ["useSignalState"]
       58 MOVE                             R10 R8
       59 CALL                             R9 1 1
       60 GETTABLEKS                       R10 R1 K10 ["Color"]
       62 GETTABLEKS                       R10 R10 K11 ["Stroke"]
       64 GETTABLEKS                       R10 R10 K12 ["Default"]
       66 GETTABLEKS                       R10 R10 K13 ["Color3"]
       68 GETTABLEKS                       R12 R1 K10 ["Color"]
       70 GETTABLEKS                       R12 R12 K14 ["Surface"]
       72 GETTABLEKS                       R12 R12 K15 ["Surface_0"]
       74 GETTABLEKS                       R12 R12 K13 ["Color3"]
       76 LOADK                            R13 K16 [0.75]
       77 NAMECALL                         R10 R10 K17 ["Lerp"]
       79 CALL                             R10 3 1
       80 GETTABLEKS                       R11 R1 K10 ["Color"]
       82 GETTABLEKS                       R11 R11 K11 ["Stroke"]
       84 GETTABLEKS                       R11 R11 K12 ["Default"]
       86 GETTABLEKS                       R11 R11 K13 ["Color3"]
       88 GETTABLEKS                       R13 R1 K10 ["Color"]
       90 GETTABLEKS                       R13 R13 K14 ["Surface"]
       92 GETTABLEKS                       R13 R13 K15 ["Surface_0"]
       94 GETTABLEKS                       R13 R13 K13 ["Color3"]
       96 LOADK                            R14 K18 [0.25]
       97 NAMECALL                         R11 R11 K17 ["Lerp"]
       99 CALL                             R11 3 1
      100 GETTABLEKS                       R12 R1 K10 ["Color"]
      102 GETTABLEKS                       R12 R12 K11 ["Stroke"]
      104 GETTABLEKS                       R12 R12 K12 ["Default"]
      106 GETTABLEKS                       R12 R12 K13 ["Color3"]
      108 GETTABLEKS                       R14 R1 K10 ["Color"]
      110 GETTABLEKS                       R14 R14 K14 ["Surface"]
      112 GETTABLEKS                       R14 R14 K15 ["Surface_0"]
      114 GETTABLEKS                       R14 R14 K13 ["Color3"]
      116 LOADK                            R15 K19 [0.6]
      117 NAMECALL                         R12 R12 K17 ["Lerp"]
      119 CALL                             R12 3 1
      120 GETUPVAL                         R13 3
      121 GETTABLEKS                       R13 R13 K8 ["useMemo"]
      123 NEWCLOSURE                       R14 P1
      124 CAPTURE                          UPVAL U6
      125 CAPTURE                          VAL R7
      126 NEWTABLE                         R15 0 1
      128 GETTABLEKS                       R16 R7 K20 ["observeZoomRatio"]
      130 SETLIST                          R15 R16 1 [1]
      132 CALL                             R13 2 1
      133 GETUPVAL                         R14 3
      134 GETTABLEKS                       R14 R14 K8 ["useMemo"]
      136 NEWCLOSURE                       R15 P2
      137 CAPTURE                          UPVAL U6
      138 CAPTURE                          VAL R7
      139 NEWTABLE                         R16 0 1
      141 GETTABLEKS                       R17 R7 K20 ["observeZoomRatio"]
      143 SETLIST                          R16 R17 1 [1]
      145 CALL                             R14 2 1
      146 GETUPVAL                         R15 8
      147 GETTABLEKS                       R15 R15 K21 ["useSignalBinding"]
      149 MOVE                             R16 R14
      150 CALL                             R15 1 1
      151 GETUPVAL                         R16 3
      152 GETTABLEKS                       R16 R16 K22 ["useState"]
      154 LOADNIL                          R17
      155 CALL                             R16 1 2
      156 GETTABLEKS                       R19 R0 K24 ["Padding"]
      158 ORK                              R18 R19 K23 [15]
      159 GETUPVAL                         R19 3
      160 GETTABLEKS                       R19 R19 K8 ["useMemo"]
      162 NEWCLOSURE                       R20 P3
      163 CAPTURE                          VAL R16
      164 CAPTURE                          VAL R3
      165 CAPTURE                          UPVAL U9
      166 CAPTURE                          VAL R0
      167 CAPTURE                          VAL R18
      168 NEWTABLE                         R21 0 6
      170 MOVE                             R22 R16
      171 JUMPIFNOT                        R22 ; [+2]
      172 GETTABLEKS                       R22 R16 K25 ["Extents"]
      174 MOVE                             R23 R16
      175 JUMPIFNOT                        R23 ; [+2]
      176 GETTABLEKS                       R23 R16 K26 ["GraphRect"]
      178 GETTABLEKS                       R24 R0 K27 ["Pins"]
      180 MOVE                             R25 R18
      181 GETTABLEKS                       R26 R3 K28 ["current"]
      183 MOVE                             R27 R9
      184 SETLIST                          R21 R22 6 [1]
      186 CALL                             R19 2 2
      187 GETUPVAL                         R21 3
      188 GETTABLEKS                       R21 R21 K29 ["useCallback"]
      190 NEWCLOSURE                       R22 P4
      191 CAPTURE                          VAL R17
      192 CAPTURE                          VAL R19
      193 CAPTURE                          VAL R20
      194 NEWTABLE                         R23 0 2
      196 MOVE                             R24 R19
      197 MOVE                             R25 R20
      198 SETLIST                          R23 R24 2 [1]
      200 CALL                             R21 2 1
      201 GETUPVAL                         R22 3
      202 GETTABLEKS                       R22 R22 K29 ["useCallback"]
      204 NEWCLOSURE                       R23 P5
      205 CAPTURE                          VAL R3
      206 CAPTURE                          VAL R4
      207 CAPTURE                          VAL R20
      208 CAPTURE                          VAL R6
      209 CAPTURE                          UPVAL U10
      210 CAPTURE                          VAL R19
      211 NEWTABLE                         R24 0 5
      213 MOVE                             R25 R19
      214 GETTABLEKS                       R26 R3 K28 ["current"]
      216 GETTABLEKS                       R27 R4 K28 ["current"]
      218 MOVE                             R28 R20
      219 GETTABLEKS                       R29 R6 K30 ["isShiftPressed"]
      221 CALL                             R29 0 -1
      222 SETLIST                          R24 R25 -1 [1]
      224 CALL                             R22 2 1
      225 GETUPVAL                         R23 3
      226 GETTABLEKS                       R23 R23 K8 ["useMemo"]
      228 NEWCLOSURE                       R24 P6
      229 CAPTURE                          VAL R0
      230 CAPTURE                          UPVAL U3
      231 CAPTURE                          UPVAL U11
      232 CAPTURE                          VAL R22
      233 CAPTURE                          VAL R1
      234 CAPTURE                          VAL R19
      235 CAPTURE                          VAL R21
      236 CAPTURE                          UPVAL U12
      237 CAPTURE                          VAL R12
      238 CAPTURE                          UPVAL U13
      239 NEWTABLE                         R25 0 7
      241 MOVE                             R26 R19
      242 MOVE                             R27 R21
      243 GETTABLEKS                       R28 R0 K31 ["Position"]
      245 GETTABLEKS                       R29 R0 K27 ["Pins"]
      247 GETTABLEKS                       R30 R0 K32 ["OnPinDragged"]
      249 GETTABLEKS                       R31 R0 K33 ["HidePins"]
      251 MOVE                             R32 R22
      252 SETLIST                          R25 R26 7 [1]
      254 CALL                             R23 2 1
      255 GETUPVAL                         R24 3
      256 GETTABLEKS                       R24 R24 K29 ["useCallback"]
      258 NEWCLOSURE                       R25 P7
      259 CAPTURE                          VAL R5
      260 CAPTURE                          VAL R22
      261 CAPTURE                          VAL R0
      262 NEWTABLE                         R26 0 3
      264 GETTABLEKS                       R27 R0 K32 ["OnPinDragged"]
      266 MOVE                             R28 R22
      267 MOVE                             R29 R5
      268 SETLIST                          R26 R27 3 [1]
      270 CALL                             R24 2 1
      271 GETUPVAL                         R25 3
      272 GETTABLEKS                       R25 R25 K29 ["useCallback"]
      274 NEWCLOSURE                       R26 P8
      275 CAPTURE                          VAL R22
      276 CAPTURE                          VAL R0
      277 NEWTABLE                         R27 0 2
      279 GETTABLEKS                       R28 R0 K32 ["OnPinDragged"]
      281 MOVE                             R29 R22
      282 SETLIST                          R27 R28 2 [1]
      284 CALL                             R25 2 1
      285 GETUPVAL                         R26 3
      286 GETTABLEKS                       R26 R26 K29 ["useCallback"]
      288 NEWCLOSURE                       R27 P9
      289 CAPTURE                          VAL R5
      290 NEWTABLE                         R28 0 1
      292 MOVE                             R29 R5
      293 SETLIST                          R28 R29 1 [1]
      295 CALL                             R26 2 1
      296 GETUPVAL                         R27 3
      297 GETTABLEKS                       R27 R27 K34 ["createElement"]
      299 GETUPVAL                         R28 14
      300 DUPTABLE                         R29 K39 [{"Extents", "GridColor", "AxisColor", "Thickness", "ObserveThickness"}]
      301 SETTABLEKS                       R19 R29 K25 ["Extents"]
      303 SETTABLEKS                       R10 R29 K35 ["GridColor"]
      305 SETTABLEKS                       R11 R29 K36 ["AxisColor"]
      307 GETUPVAL                         R31 15
      308 CALL                             R31 0 1
      309 JUMPIFNOT                        R31 ; [+2]
      310 LOADNIL                          R30
      311 JUMP                             ; [+1]
      312 LOADK                            R30 K40 [0.1]
      313 SETTABLEKS                       R30 R29 K37 ["Thickness"]
      315 GETUPVAL                         R31 15
      316 CALL                             R31 0 1
      317 JUMPIFNOT                        R31 ; [+2]
      318 MOVE                             R30 R13
      319 JUMP                             ; [+1]
      320 LOADNIL                          R30
      321 SETTABLEKS                       R30 R29 K38 ["ObserveThickness"]
      323 CALL                             R27 2 1
      324 GETUPVAL                         R28 3
      325 GETTABLEKS                       R28 R28 K34 ["createElement"]
      327 GETUPVAL                         R29 0
      328 GETTABLEKS                       R29 R29 K41 ["View"]
      330 DUPTABLE                         R30 K47 [{["tag"] = "size-full-700", ["LayoutOrder"], ["backgroundStyle"], ["ref"]}]
      331 GETTABLEKS                       R31 R0 K44 ["LayoutOrder"]
      333 SETTABLEKS                       R31 R30 K44 ["LayoutOrder"]
      335 GETTABLEKS                       R31 R1 K10 ["Color"]
      337 GETTABLEKS                       R31 R31 K14 ["Surface"]
      339 GETTABLEKS                       R31 R31 K15 ["Surface_0"]
      341 SETTABLEKS                       R31 R30 K45 ["backgroundStyle"]
      343 GETTABLEKS                       R31 R2 K48 ["setFrame"]
      345 SETTABLEKS                       R31 R30 K46 ["ref"]
      347 DUPTABLE                         R31 K50 [{"Canvas"}]
      348 GETUPVAL                         R32 3
      349 GETTABLEKS                       R32 R32 K34 ["createElement"]
      351 GETUPVAL                         R33 16
      352 GETTABLEKS                       R33 R33 K49 ["Canvas"]
      354 DUPTABLE                         R34 K59 [{["Size"], ["GraphRect"], ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingBottom"], ["ViewportPaddingTop"], ["CanvasBackgroundTransparency"] = 1, ["ViewportBackgroundTransparency"] = 1}]
      355 GETIMPORT                        R35 K62 [UDim2.fromScale]
      357 LOADN                            R36 1
      358 LOADN                            R37 1
      359 CALL                             R35 2 1
      360 SETTABLEKS                       R35 R34 K51 ["Size"]
      362 SETTABLEKS                       R20 R34 K26 ["GraphRect"]
      364 GETIMPORT                        R35 K65 [UDim.new]
      366 LOADN                            R36 0
      367 LOADN                            R37 0
      368 CALL                             R35 2 1
      369 SETTABLEKS                       R35 R34 K52 ["ViewportPaddingLeft"]
      371 GETIMPORT                        R35 K65 [UDim.new]
      373 LOADN                            R36 0
      374 LOADN                            R37 0
      375 CALL                             R35 2 1
      376 SETTABLEKS                       R35 R34 K53 ["ViewportPaddingRight"]
      378 GETIMPORT                        R35 K65 [UDim.new]
      380 LOADN                            R36 0
      381 LOADN                            R37 0
      382 CALL                             R35 2 1
      383 SETTABLEKS                       R35 R34 K54 ["ViewportPaddingBottom"]
      385 GETIMPORT                        R35 K65 [UDim.new]
      387 LOADN                            R36 0
      388 LOADN                            R37 0
      389 CALL                             R35 2 1
      390 SETTABLEKS                       R35 R34 K55 ["ViewportPaddingTop"]
      392 DUPTABLE                         R35 K69 [{"Guides", "Points", "DragDetector"}]
      393 GETUPVAL                         R37 15
      394 CALL                             R37 0 1
      395 JUMPIFNOT                        R37 ; [+19]
      396 GETUPVAL                         R36 3
      397 GETTABLEKS                       R36 R36 K34 ["createElement"]
      399 LOADK                            R37 K70 ["CanvasGroup"]
      400 DUPTABLE                         R38 K76 [{["Size"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["GroupTransparency"], ["ZIndex"] = 1}]
      401 GETIMPORT                        R39 K62 [UDim2.fromScale]
      403 LOADN                            R40 1
      404 LOADN                            R41 1
      405 CALL                             R39 2 1
      406 SETTABLEKS                       R39 R38 K51 ["Size"]
      408 SETTABLEKS                       R15 R38 K74 ["GroupTransparency"]
      410 DUPTABLE                         R39 K77 [{"Guides"}]
      411 SETTABLEKS                       R27 R39 K66 ["Guides"]
      413 CALL                             R36 3 1
      414 JUMP                             ; [+1]
      415 MOVE                             R36 R27
      416 SETTABLEKS                       R36 R35 K66 ["Guides"]
      418 GETUPVAL                         R36 3
      419 GETTABLEKS                       R36 R36 K34 ["createElement"]
      421 GETUPVAL                         R37 3
      422 GETTABLEKS                       R37 R37 K78 ["Fragment"]
      424 NEWTABLE                         R38 0 0
      426 MOVE                             R39 R23
      427 CALL                             R36 3 1
      428 SETTABLEKS                       R36 R35 K67 ["Points"]
      430 GETUPVAL                         R36 3
      431 GETTABLEKS                       R36 R36 K34 ["createElement"]
      433 LOADK                            R37 K79 ["UIDragDetector"]
      434 NEWTABLE                         R38 4 0
      436 GETIMPORT                        R39 K83 [Enum.UIDragDetectorDragStyle.Scriptable]
      438 SETTABLEKS                       R39 R38 K84 ["DragStyle"]
      440 GETUPVAL                         R39 3
      441 GETTABLEKS                       R39 R39 K85 ["Event"]
      443 GETTABLEKS                       R39 R39 K86 ["DragStart"]
      445 SETTABLE                         R24 R38 R39
      446 GETUPVAL                         R39 3
      447 GETTABLEKS                       R39 R39 K85 ["Event"]
      449 GETTABLEKS                       R39 R39 K87 ["DragContinue"]
      451 SETTABLE                         R25 R38 R39
      452 GETUPVAL                         R39 3
      453 GETTABLEKS                       R39 R39 K85 ["Event"]
      455 GETTABLEKS                       R39 R39 K88 ["DragEnd"]
      457 SETTABLE                         R26 R38 R39
      458 CALL                             R36 2 1
      459 SETTABLEKS                       R36 R35 K68 ["DragDetector"]
      461 CALL                             R32 3 1
      462 SETTABLEKS                       R32 R31 K49 ["Canvas"]
      464 CALL                             R28 3 -1
      465 RETURN                           R28 -1

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
       15 GETTABLEKS                       R2 R2 K9 ["Blend1DMap"]
       17 GETTABLEKS                       R2 R2 K10 ["Blend1DGuides"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K5 [require]
       22 GETTABLEKS                       R3 R0 K11 ["Util"]
       24 GETTABLEKS                       R3 R3 K12 ["Constants"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K5 [require]
       29 GETTABLEKS                       R4 R0 K6 ["Components"]
       31 GETTABLEKS                       R4 R4 K7 ["NodeView"]
       33 GETTABLEKS                       R4 R4 K8 ["CompositorNodeProperty"]
       35 GETTABLEKS                       R4 R4 K13 ["BlendMapShared"]
       37 GETTABLEKS                       R4 R4 K14 ["DraggablePin"]
       39 CALL                             R3 1 1
       40 GETIMPORT                        R4 K5 [require]
       42 GETTABLEKS                       R5 R0 K15 ["Parent"]
       44 GETTABLEKS                       R5 R5 K16 ["Foundation"]
       46 CALL                             R4 1 1
       47 GETIMPORT                        R5 K5 [require]
       49 GETTABLEKS                       R6 R0 K15 ["Parent"]
       51 GETTABLEKS                       R6 R6 K17 ["Graphing"]
       53 CALL                             R5 1 1
       54 GETIMPORT                        R6 K5 [require]
       56 GETTABLEKS                       R7 R0 K18 ["Contexts"]
       58 GETTABLEKS                       R7 R7 K19 ["NativeGraphContext"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K15 ["Parent"]
       65 GETTABLEKS                       R8 R8 K20 ["NodeGraphing"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Components"]
       72 GETTABLEKS                       R9 R9 K7 ["NodeView"]
       74 GETTABLEKS                       R9 R9 K8 ["CompositorNodeProperty"]
       76 GETTABLEKS                       R9 R9 K21 ["PropertyUtils"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K15 ["Parent"]
       83 GETTABLEKS                       R10 R10 K22 ["React"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K15 ["Parent"]
       90 GETTABLEKS                       R11 R11 K23 ["Signals"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K15 ["Parent"]
       97 GETTABLEKS                       R12 R12 K24 ["SignalsReact"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K25 ["Hooks"]
      104 GETTABLEKS                       R13 R13 K26 ["useAbsoluteSize"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K25 ["Hooks"]
      111 GETTABLEKS                       R14 R14 K27 ["useSignalRef"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K5 [require]
      116 GETTABLEKS                       R15 R0 K28 ["Flags"]
      118 GETTABLEKS                       R15 R15 K29 ["getFFlagAnimGraphUIBlendMapCrispLines"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K28 ["Flags"]
      125 GETTABLEKS                       R16 R16 K30 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K5 [require]
      130 GETTABLEKS                       R17 R0 K28 ["Flags"]
      132 GETTABLEKS                       R17 R17 K31 ["getFFlagAnimGraphUI_FixBlendMapInitialRender"]
      134 CALL                             R16 1 1
      135 GETIMPORT                        R17 K34 [Rect.new]
      137 LOADN                            R18 0
      138 LOADN                            R19 0
      139 LOADN                            R20 1
      140 LOADN                            R21 0
      141 CALL                             R17 4 1
      142 DUPCLOSURE                       R18 K35 [PROTO_13]
      143 CAPTURE                          VAL R4
      144 CAPTURE                          VAL R12
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R6
      148 CAPTURE                          VAL R7
      149 CAPTURE                          VAL R10
      150 CAPTURE                          VAL R16
      151 CAPTURE                          VAL R11
      152 CAPTURE                          VAL R17
      153 CAPTURE                          VAL R8
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R15
      157 CAPTURE                          VAL R1
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R5
      160 RETURN                           R18 1
