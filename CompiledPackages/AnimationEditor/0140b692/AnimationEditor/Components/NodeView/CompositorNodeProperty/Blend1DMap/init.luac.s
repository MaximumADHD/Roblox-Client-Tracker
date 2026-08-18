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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["finishUndoTransaction"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_9:
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
       33 GETTABLEKS                       R7 R7 K7 ["useMemo"]
       35 NEWCLOSURE                       R8 P0
       36 CAPTURE                          UPVAL U6
       37 CAPTURE                          UPVAL U7
       38 CAPTURE                          VAL R2
       39 NEWTABLE                         R9 0 1
       41 GETTABLEKS                       R10 R2 K2 ["observeAbsoluteSize"]
       43 SETLIST                          R9 R10 1 [1]
       45 CALL                             R7 2 1
       46 GETUPVAL                         R8 8
       47 GETTABLEKS                       R8 R8 K8 ["useSignalState"]
       49 MOVE                             R9 R7
       50 CALL                             R8 1 1
       51 GETTABLEKS                       R9 R1 K9 ["Color"]
       53 GETTABLEKS                       R9 R9 K10 ["Stroke"]
       55 GETTABLEKS                       R9 R9 K11 ["Default"]
       57 GETTABLEKS                       R9 R9 K12 ["Color3"]
       59 GETTABLEKS                       R11 R1 K9 ["Color"]
       61 GETTABLEKS                       R11 R11 K13 ["Surface"]
       63 GETTABLEKS                       R11 R11 K14 ["Surface_0"]
       65 GETTABLEKS                       R11 R11 K12 ["Color3"]
       67 LOADK                            R12 K15 [0.75]
       68 NAMECALL                         R9 R9 K16 ["Lerp"]
       70 CALL                             R9 3 1
       71 GETTABLEKS                       R10 R1 K9 ["Color"]
       73 GETTABLEKS                       R10 R10 K10 ["Stroke"]
       75 GETTABLEKS                       R10 R10 K11 ["Default"]
       77 GETTABLEKS                       R10 R10 K12 ["Color3"]
       79 GETTABLEKS                       R12 R1 K9 ["Color"]
       81 GETTABLEKS                       R12 R12 K13 ["Surface"]
       83 GETTABLEKS                       R12 R12 K14 ["Surface_0"]
       85 GETTABLEKS                       R12 R12 K12 ["Color3"]
       87 LOADK                            R13 K17 [0.25]
       88 NAMECALL                         R10 R10 K16 ["Lerp"]
       90 CALL                             R10 3 1
       91 GETTABLEKS                       R11 R1 K9 ["Color"]
       93 GETTABLEKS                       R11 R11 K10 ["Stroke"]
       95 GETTABLEKS                       R11 R11 K11 ["Default"]
       97 GETTABLEKS                       R11 R11 K12 ["Color3"]
       99 GETTABLEKS                       R13 R1 K9 ["Color"]
      101 GETTABLEKS                       R13 R13 K13 ["Surface"]
      103 GETTABLEKS                       R13 R13 K14 ["Surface_0"]
      105 GETTABLEKS                       R13 R13 K12 ["Color3"]
      107 LOADK                            R14 K18 [0.6]
      108 NAMECALL                         R11 R11 K16 ["Lerp"]
      110 CALL                             R11 3 1
      111 GETUPVAL                         R12 3
      112 GETTABLEKS                       R12 R12 K19 ["useState"]
      114 LOADNIL                          R13
      115 CALL                             R12 1 2
      116 GETTABLEKS                       R15 R0 K21 ["Padding"]
      118 ORK                              R14 R15 K20 [15]
      119 GETUPVAL                         R15 3
      120 GETTABLEKS                       R15 R15 K7 ["useMemo"]
      122 NEWCLOSURE                       R16 P1
      123 CAPTURE                          VAL R12
      124 CAPTURE                          VAL R3
      125 CAPTURE                          UPVAL U9
      126 CAPTURE                          VAL R0
      127 CAPTURE                          VAL R14
      128 NEWTABLE                         R17 0 6
      130 MOVE                             R18 R12
      131 JUMPIFNOT                        R18 ; [+2]
      132 GETTABLEKS                       R18 R12 K22 ["Extents"]
      134 MOVE                             R19 R12
      135 JUMPIFNOT                        R19 ; [+2]
      136 GETTABLEKS                       R19 R12 K23 ["GraphRect"]
      138 GETTABLEKS                       R20 R0 K24 ["Pins"]
      140 MOVE                             R21 R14
      141 GETTABLEKS                       R22 R3 K25 ["current"]
      143 MOVE                             R23 R8
      144 SETLIST                          R17 R18 6 [1]
      146 CALL                             R15 2 2
      147 GETUPVAL                         R17 3
      148 GETTABLEKS                       R17 R17 K26 ["useCallback"]
      150 NEWCLOSURE                       R18 P2
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R15
      153 CAPTURE                          VAL R16
      154 NEWTABLE                         R19 0 2
      156 MOVE                             R20 R15
      157 MOVE                             R21 R16
      158 SETLIST                          R19 R20 2 [1]
      160 CALL                             R17 2 1
      161 GETUPVAL                         R18 3
      162 GETTABLEKS                       R18 R18 K26 ["useCallback"]
      164 NEWCLOSURE                       R19 P3
      165 CAPTURE                          VAL R3
      166 CAPTURE                          VAL R4
      167 CAPTURE                          VAL R16
      168 CAPTURE                          VAL R6
      169 CAPTURE                          UPVAL U10
      170 CAPTURE                          VAL R15
      171 NEWTABLE                         R20 0 5
      173 MOVE                             R21 R15
      174 GETTABLEKS                       R22 R3 K25 ["current"]
      176 GETTABLEKS                       R23 R4 K25 ["current"]
      178 MOVE                             R24 R16
      179 GETTABLEKS                       R25 R6 K27 ["isShiftPressed"]
      181 CALL                             R25 0 -1
      182 SETLIST                          R20 R21 -1 [1]
      184 CALL                             R18 2 1
      185 GETUPVAL                         R19 3
      186 GETTABLEKS                       R19 R19 K7 ["useMemo"]
      188 NEWCLOSURE                       R20 P4
      189 CAPTURE                          VAL R0
      190 CAPTURE                          UPVAL U3
      191 CAPTURE                          UPVAL U11
      192 CAPTURE                          VAL R18
      193 CAPTURE                          VAL R1
      194 CAPTURE                          VAL R15
      195 CAPTURE                          VAL R17
      196 CAPTURE                          UPVAL U12
      197 CAPTURE                          VAL R11
      198 CAPTURE                          UPVAL U13
      199 NEWTABLE                         R21 0 7
      201 MOVE                             R22 R15
      202 MOVE                             R23 R17
      203 GETTABLEKS                       R24 R0 K28 ["Position"]
      205 GETTABLEKS                       R25 R0 K24 ["Pins"]
      207 GETTABLEKS                       R26 R0 K29 ["OnPinDragged"]
      209 GETTABLEKS                       R27 R0 K30 ["HidePins"]
      211 MOVE                             R28 R18
      212 SETLIST                          R21 R22 7 [1]
      214 CALL                             R19 2 1
      215 GETUPVAL                         R20 3
      216 GETTABLEKS                       R20 R20 K26 ["useCallback"]
      218 NEWCLOSURE                       R21 P5
      219 CAPTURE                          VAL R5
      220 CAPTURE                          VAL R18
      221 CAPTURE                          VAL R0
      222 NEWTABLE                         R22 0 3
      224 GETTABLEKS                       R23 R0 K29 ["OnPinDragged"]
      226 MOVE                             R24 R18
      227 MOVE                             R25 R5
      228 SETLIST                          R22 R23 3 [1]
      230 CALL                             R20 2 1
      231 GETUPVAL                         R21 3
      232 GETTABLEKS                       R21 R21 K26 ["useCallback"]
      234 NEWCLOSURE                       R22 P6
      235 CAPTURE                          VAL R18
      236 CAPTURE                          VAL R0
      237 NEWTABLE                         R23 0 2
      239 GETTABLEKS                       R24 R0 K29 ["OnPinDragged"]
      241 MOVE                             R25 R18
      242 SETLIST                          R23 R24 2 [1]
      244 CALL                             R21 2 1
      245 GETUPVAL                         R22 3
      246 GETTABLEKS                       R22 R22 K26 ["useCallback"]
      248 NEWCLOSURE                       R23 P7
      249 CAPTURE                          VAL R5
      250 NEWTABLE                         R24 0 1
      252 MOVE                             R25 R5
      253 SETLIST                          R24 R25 1 [1]
      255 CALL                             R22 2 1
      256 GETUPVAL                         R23 3
      257 GETTABLEKS                       R23 R23 K31 ["createElement"]
      259 GETUPVAL                         R24 0
      260 GETTABLEKS                       R24 R24 K32 ["View"]
      262 DUPTABLE                         R25 K38 [{["tag"] = "size-full-700", ["LayoutOrder"], ["backgroundStyle"], ["ref"]}]
      263 GETTABLEKS                       R26 R0 K35 ["LayoutOrder"]
      265 SETTABLEKS                       R26 R25 K35 ["LayoutOrder"]
      267 GETTABLEKS                       R26 R1 K9 ["Color"]
      269 GETTABLEKS                       R26 R26 K13 ["Surface"]
      271 GETTABLEKS                       R26 R26 K14 ["Surface_0"]
      273 SETTABLEKS                       R26 R25 K36 ["backgroundStyle"]
      275 GETTABLEKS                       R26 R2 K39 ["setFrame"]
      277 SETTABLEKS                       R26 R25 K37 ["ref"]
      279 DUPTABLE                         R26 K41 [{"Canvas"}]
      280 GETUPVAL                         R27 3
      281 GETTABLEKS                       R27 R27 K31 ["createElement"]
      283 GETUPVAL                         R28 14
      284 GETTABLEKS                       R28 R28 K40 ["Canvas"]
      286 DUPTABLE                         R29 K50 [{["Size"], ["GraphRect"], ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingBottom"], ["ViewportPaddingTop"], ["CanvasBackgroundTransparency"] = 1, ["ViewportBackgroundTransparency"] = 1}]
      287 GETIMPORT                        R30 K53 [UDim2.fromScale]
      289 LOADN                            R31 1
      290 LOADN                            R32 1
      291 CALL                             R30 2 1
      292 SETTABLEKS                       R30 R29 K42 ["Size"]
      294 SETTABLEKS                       R16 R29 K23 ["GraphRect"]
      296 GETIMPORT                        R30 K56 [UDim.new]
      298 LOADN                            R31 0
      299 LOADN                            R32 0
      300 CALL                             R30 2 1
      301 SETTABLEKS                       R30 R29 K43 ["ViewportPaddingLeft"]
      303 GETIMPORT                        R30 K56 [UDim.new]
      305 LOADN                            R31 0
      306 LOADN                            R32 0
      307 CALL                             R30 2 1
      308 SETTABLEKS                       R30 R29 K44 ["ViewportPaddingRight"]
      310 GETIMPORT                        R30 K56 [UDim.new]
      312 LOADN                            R31 0
      313 LOADN                            R32 0
      314 CALL                             R30 2 1
      315 SETTABLEKS                       R30 R29 K45 ["ViewportPaddingBottom"]
      317 GETIMPORT                        R30 K56 [UDim.new]
      319 LOADN                            R31 0
      320 LOADN                            R32 0
      321 CALL                             R30 2 1
      322 SETTABLEKS                       R30 R29 K46 ["ViewportPaddingTop"]
      324 DUPTABLE                         R30 K60 [{"Guides", "Points", "DragDetector"}]
      325 GETUPVAL                         R31 3
      326 GETTABLEKS                       R31 R31 K31 ["createElement"]
      328 GETUPVAL                         R32 15
      329 DUPTABLE                         R33 K65 [{["Extents"], ["GridColor"], ["AxisColor"], ["Thickness"] = 0.1}]
      330 SETTABLEKS                       R15 R33 K22 ["Extents"]
      332 SETTABLEKS                       R9 R33 K61 ["GridColor"]
      334 SETTABLEKS                       R10 R33 K62 ["AxisColor"]
      336 CALL                             R31 2 1
      337 SETTABLEKS                       R31 R30 K57 ["Guides"]
      339 GETUPVAL                         R31 3
      340 GETTABLEKS                       R31 R31 K31 ["createElement"]
      342 GETUPVAL                         R32 3
      343 GETTABLEKS                       R32 R32 K66 ["Fragment"]
      345 NEWTABLE                         R33 0 0
      347 MOVE                             R34 R19
      348 CALL                             R31 3 1
      349 SETTABLEKS                       R31 R30 K58 ["Points"]
      351 GETUPVAL                         R31 3
      352 GETTABLEKS                       R31 R31 K31 ["createElement"]
      354 LOADK                            R32 K67 ["UIDragDetector"]
      355 NEWTABLE                         R33 4 0
      357 GETIMPORT                        R34 K71 [Enum.UIDragDetectorDragStyle.Scriptable]
      359 SETTABLEKS                       R34 R33 K72 ["DragStyle"]
      361 GETUPVAL                         R34 3
      362 GETTABLEKS                       R34 R34 K73 ["Event"]
      364 GETTABLEKS                       R34 R34 K74 ["DragStart"]
      366 SETTABLE                         R20 R33 R34
      367 GETUPVAL                         R34 3
      368 GETTABLEKS                       R34 R34 K73 ["Event"]
      370 GETTABLEKS                       R34 R34 K75 ["DragContinue"]
      372 SETTABLE                         R21 R33 R34
      373 GETUPVAL                         R34 3
      374 GETTABLEKS                       R34 R34 K73 ["Event"]
      376 GETTABLEKS                       R34 R34 K76 ["DragEnd"]
      378 SETTABLE                         R22 R33 R34
      379 CALL                             R31 2 1
      380 SETTABLEKS                       R31 R30 K59 ["DragDetector"]
      382 CALL                             R27 3 1
      383 SETTABLEKS                       R27 R26 K40 ["Canvas"]
      385 CALL                             R23 3 -1
      386 RETURN                           R23 -1

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
      118 GETTABLEKS                       R15 R15 K29 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      120 CALL                             R14 1 1
      121 GETIMPORT                        R15 K5 [require]
      123 GETTABLEKS                       R16 R0 K28 ["Flags"]
      125 GETTABLEKS                       R16 R16 K30 ["getFFlagAnimGraphUI_FixBlendMapInitialRender"]
      127 CALL                             R15 1 1
      128 GETIMPORT                        R16 K33 [Rect.new]
      130 LOADN                            R17 0
      131 LOADN                            R18 0
      132 LOADN                            R19 1
      133 LOADN                            R20 0
      134 CALL                             R16 4 1
      135 DUPCLOSURE                       R17 K34 [PROTO_9]
      136 CAPTURE                          VAL R4
      137 CAPTURE                          VAL R12
      138 CAPTURE                          VAL R13
      139 CAPTURE                          VAL R9
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R7
      142 CAPTURE                          VAL R10
      143 CAPTURE                          VAL R15
      144 CAPTURE                          VAL R11
      145 CAPTURE                          VAL R16
      146 CAPTURE                          VAL R8
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R2
      149 CAPTURE                          VAL R14
      150 CAPTURE                          VAL R5
      151 CAPTURE                          VAL R1
      152 RETURN                           R17 1
