PROTO_0:
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

PROTO_1:
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

PROTO_2:
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

PROTO_3:
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
       56 GETUPVAL                         R1 8
       57 CALL                             R1 0 1
       58 JUMPIFNOT                        R1 ; [+4]
       59 GETUPVAL                         R1 0
       60 GETTABLEKS                       R1 R1 K28 ["HidePins"]
       62 JUMPIF                           R1 ; [+72]
       63 GETUPVAL                         R1 0
       64 GETTABLEKS                       R1 R1 K29 ["Pins"]
       66 LOADNIL                          R2
       67 LOADNIL                          R3
       68 FORGPREP                         R1
       69 LOADK                            R7 K30 ["point-"]
       70 FASTCALL1                        TOSTRING R4 ; [+3]
       71 MOVE                             R9 R4
       72 GETIMPORT                        R8 K32 [tostring]
       74 CALL                             R8 1 1
       75 CONCAT                           R6 R7 R8
       76 GETUPVAL                         R7 1
       77 GETTABLEKS                       R7 R7 K1 ["createElement"]
       79 GETUPVAL                         R8 2
       80 DUPTABLE                         R9 K37 [{["AbsToMap"], ["Clamp"] = False, ["Color3"], ["Extents"], ["Index"], ["Label"], ["LockExtents"], ["Mode"], ["OnPinDragged"], [10], ["ZIndex"] = 3, ["Size"] = 9}]
       81 GETUPVAL                         R10 3
       82 SETTABLEKS                       R10 R9 K2 ["AbsToMap"]
       84 GETUPVAL                         R10 9
       85 SETTABLEKS                       R10 R9 K5 ["Color3"]
       87 GETUPVAL                         R10 5
       88 SETTABLEKS                       R10 R9 K6 ["Extents"]
       90 SETTABLEKS                       R4 R9 K9 ["Index"]
       92 GETUPVAL                         R11 10
       93 CALL                             R11 0 1
       94 JUMPIFNOT                        R11 ; [+11]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K38 ["PinLabels"]
       98 JUMPIFNOT                        R11 ; [+5]
       99 GETUPVAL                         R11 0
      100 GETTABLEKS                       R11 R11 K38 ["PinLabels"]
      102 GETTABLE                         R10 R11 R4
      103 JUMP                             ; [+3]
      104 LOADNIL                          R10
      105 JUMP                             ; [+1]
      106 LOADNIL                          R10
      107 SETTABLEKS                       R10 R9 K34 ["Label"]
      109 GETUPVAL                         R10 6
      110 SETTABLEKS                       R10 R9 K11 ["LockExtents"]
      112 GETUPVAL                         R10 7
      113 GETTABLEKS                       R10 R10 K22 ["DRAGGABLE_PIN_MODES"]
      115 GETTABLEKS                       R10 R10 K23 ["Blend1D"]
      117 SETTABLEKS                       R10 R9 K12 ["Mode"]
      119 GETUPVAL                         R10 0
      120 GETTABLEKS                       R10 R10 K13 ["OnPinDragged"]
      122 SETTABLEKS                       R10 R9 K13 ["OnPinDragged"]
      124 GETIMPORT                        R10 K26 [Vector2.new]
      126 MOVE                             R11 R5
      127 LOADN                            R12 0
      128 CALL                             R10 2 1
      129 SETTABLEKS                       R10 R9 K0 ["Position"]
      131 CALL                             R7 2 1
      132 SETTABLE                         R7 R0 R6
      133 FORGLOOP                         R1 2 ; [-65]
      135 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["finishUndoTransaction"]
        3 CALL                             R2 0 0
        4 RETURN                           R0 0

PROTO_7:
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
       32 GETTABLEKS                       R7 R1 K7 ["Color"]
       34 GETTABLEKS                       R7 R7 K8 ["Stroke"]
       36 GETTABLEKS                       R7 R7 K9 ["Default"]
       38 GETTABLEKS                       R7 R7 K10 ["Color3"]
       40 GETTABLEKS                       R9 R1 K7 ["Color"]
       42 GETTABLEKS                       R9 R9 K11 ["Surface"]
       44 GETTABLEKS                       R9 R9 K12 ["Surface_0"]
       46 GETTABLEKS                       R9 R9 K10 ["Color3"]
       48 LOADK                            R10 K13 [0.75]
       49 NAMECALL                         R7 R7 K14 ["Lerp"]
       51 CALL                             R7 3 1
       52 GETTABLEKS                       R8 R1 K7 ["Color"]
       54 GETTABLEKS                       R8 R8 K8 ["Stroke"]
       56 GETTABLEKS                       R8 R8 K9 ["Default"]
       58 GETTABLEKS                       R8 R8 K10 ["Color3"]
       60 GETTABLEKS                       R10 R1 K7 ["Color"]
       62 GETTABLEKS                       R10 R10 K11 ["Surface"]
       64 GETTABLEKS                       R10 R10 K12 ["Surface_0"]
       66 GETTABLEKS                       R10 R10 K10 ["Color3"]
       68 LOADK                            R11 K15 [0.25]
       69 NAMECALL                         R8 R8 K14 ["Lerp"]
       71 CALL                             R8 3 1
       72 GETTABLEKS                       R9 R1 K7 ["Color"]
       74 GETTABLEKS                       R9 R9 K8 ["Stroke"]
       76 GETTABLEKS                       R9 R9 K9 ["Default"]
       78 GETTABLEKS                       R9 R9 K10 ["Color3"]
       80 GETTABLEKS                       R11 R1 K7 ["Color"]
       82 GETTABLEKS                       R11 R11 K11 ["Surface"]
       84 GETTABLEKS                       R11 R11 K12 ["Surface_0"]
       86 GETTABLEKS                       R11 R11 K10 ["Color3"]
       88 LOADK                            R12 K16 [0.6]
       89 NAMECALL                         R9 R9 K14 ["Lerp"]
       91 CALL                             R9 3 1
       92 GETUPVAL                         R10 3
       93 GETTABLEKS                       R10 R10 K17 ["useState"]
       95 LOADNIL                          R11
       96 CALL                             R10 1 2
       97 GETTABLEKS                       R13 R0 K19 ["Padding"]
       99 ORK                              R12 R13 K18 [15]
      100 GETUPVAL                         R13 3
      101 GETTABLEKS                       R13 R13 K20 ["useMemo"]
      103 NEWCLOSURE                       R14 P0
      104 CAPTURE                          VAL R10
      105 CAPTURE                          VAL R3
      106 CAPTURE                          UPVAL U6
      107 CAPTURE                          VAL R0
      108 CAPTURE                          VAL R12
      109 NEWTABLE                         R15 0 4
      111 MOVE                             R16 R10
      112 JUMPIFNOT                        R16 ; [+2]
      113 GETTABLEKS                       R16 R10 K21 ["Extents"]
      115 MOVE                             R17 R10
      116 JUMPIFNOT                        R17 ; [+2]
      117 GETTABLEKS                       R17 R10 K22 ["GraphRect"]
      119 GETTABLEKS                       R18 R0 K23 ["Pins"]
      121 GETTABLEKS                       R19 R3 K24 ["current"]
      123 SETLIST                          R15 R16 4 [1]
      125 CALL                             R13 2 2
      126 GETUPVAL                         R15 3
      127 GETTABLEKS                       R15 R15 K25 ["useCallback"]
      129 NEWCLOSURE                       R16 P1
      130 CAPTURE                          VAL R11
      131 CAPTURE                          VAL R13
      132 CAPTURE                          VAL R14
      133 NEWTABLE                         R17 0 2
      135 MOVE                             R18 R13
      136 MOVE                             R19 R14
      137 SETLIST                          R17 R18 2 [1]
      139 CALL                             R15 2 1
      140 GETUPVAL                         R16 3
      141 GETTABLEKS                       R16 R16 K25 ["useCallback"]
      143 NEWCLOSURE                       R17 P2
      144 CAPTURE                          VAL R3
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R6
      148 CAPTURE                          UPVAL U7
      149 CAPTURE                          VAL R13
      150 NEWTABLE                         R18 0 5
      152 MOVE                             R19 R13
      153 GETTABLEKS                       R20 R3 K24 ["current"]
      155 GETTABLEKS                       R21 R4 K24 ["current"]
      157 MOVE                             R22 R14
      158 GETTABLEKS                       R23 R6 K26 ["isShiftPressed"]
      160 CALL                             R23 0 -1
      161 SETLIST                          R18 R19 -1 [1]
      163 CALL                             R16 2 1
      164 GETUPVAL                         R17 3
      165 GETTABLEKS                       R17 R17 K20 ["useMemo"]
      167 NEWCLOSURE                       R18 P3
      168 CAPTURE                          VAL R0
      169 CAPTURE                          UPVAL U3
      170 CAPTURE                          UPVAL U8
      171 CAPTURE                          VAL R16
      172 CAPTURE                          VAL R1
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R15
      175 CAPTURE                          UPVAL U9
      176 CAPTURE                          UPVAL U10
      177 CAPTURE                          VAL R9
      178 CAPTURE                          UPVAL U11
      179 NEWTABLE                         R19 0 7
      181 MOVE                             R20 R13
      182 MOVE                             R21 R15
      183 GETTABLEKS                       R22 R0 K27 ["Position"]
      185 GETTABLEKS                       R23 R0 K23 ["Pins"]
      187 GETTABLEKS                       R24 R0 K28 ["OnPinDragged"]
      189 GETTABLEKS                       R25 R0 K29 ["HidePins"]
      191 MOVE                             R26 R16
      192 SETLIST                          R19 R20 7 [1]
      194 CALL                             R17 2 1
      195 GETUPVAL                         R18 3
      196 GETTABLEKS                       R18 R18 K25 ["useCallback"]
      198 NEWCLOSURE                       R19 P4
      199 CAPTURE                          VAL R5
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R0
      202 NEWTABLE                         R20 0 3
      204 GETTABLEKS                       R21 R0 K28 ["OnPinDragged"]
      206 MOVE                             R22 R16
      207 MOVE                             R23 R5
      208 SETLIST                          R20 R21 3 [1]
      210 CALL                             R18 2 1
      211 GETUPVAL                         R19 3
      212 GETTABLEKS                       R19 R19 K25 ["useCallback"]
      214 NEWCLOSURE                       R20 P5
      215 CAPTURE                          VAL R16
      216 CAPTURE                          VAL R0
      217 NEWTABLE                         R21 0 2
      219 GETTABLEKS                       R22 R0 K28 ["OnPinDragged"]
      221 MOVE                             R23 R16
      222 SETLIST                          R21 R22 2 [1]
      224 CALL                             R19 2 1
      225 GETUPVAL                         R20 3
      226 GETTABLEKS                       R20 R20 K25 ["useCallback"]
      228 NEWCLOSURE                       R21 P6
      229 CAPTURE                          VAL R5
      230 NEWTABLE                         R22 0 1
      232 MOVE                             R23 R5
      233 SETLIST                          R22 R23 1 [1]
      235 CALL                             R20 2 1
      236 GETUPVAL                         R21 3
      237 GETTABLEKS                       R21 R21 K30 ["createElement"]
      239 GETUPVAL                         R22 0
      240 GETTABLEKS                       R22 R22 K31 ["View"]
      242 DUPTABLE                         R23 K37 [{["tag"] = "size-full-700", ["LayoutOrder"], ["backgroundStyle"], ["ref"]}]
      243 GETTABLEKS                       R24 R0 K34 ["LayoutOrder"]
      245 SETTABLEKS                       R24 R23 K34 ["LayoutOrder"]
      247 GETTABLEKS                       R24 R1 K7 ["Color"]
      249 GETTABLEKS                       R24 R24 K11 ["Surface"]
      251 GETTABLEKS                       R24 R24 K12 ["Surface_0"]
      253 SETTABLEKS                       R24 R23 K35 ["backgroundStyle"]
      255 GETTABLEKS                       R24 R2 K38 ["setFrame"]
      257 SETTABLEKS                       R24 R23 K36 ["ref"]
      259 DUPTABLE                         R24 K40 [{"Canvas"}]
      260 GETUPVAL                         R25 3
      261 GETTABLEKS                       R25 R25 K30 ["createElement"]
      263 GETUPVAL                         R26 12
      264 GETTABLEKS                       R26 R26 K39 ["Canvas"]
      266 DUPTABLE                         R27 K49 [{["Size"], ["GraphRect"], ["ViewportPaddingLeft"], ["ViewportPaddingRight"], ["ViewportPaddingBottom"], ["ViewportPaddingTop"], ["CanvasBackgroundTransparency"] = 1, ["ViewportBackgroundTransparency"] = 1}]
      267 GETIMPORT                        R28 K52 [UDim2.fromScale]
      269 LOADN                            R29 1
      270 LOADN                            R30 1
      271 CALL                             R28 2 1
      272 SETTABLEKS                       R28 R27 K41 ["Size"]
      274 SETTABLEKS                       R14 R27 K22 ["GraphRect"]
      276 GETIMPORT                        R28 K55 [UDim.new]
      278 LOADN                            R29 0
      279 LOADN                            R30 0
      280 CALL                             R28 2 1
      281 SETTABLEKS                       R28 R27 K42 ["ViewportPaddingLeft"]
      283 GETIMPORT                        R28 K55 [UDim.new]
      285 LOADN                            R29 0
      286 LOADN                            R30 0
      287 CALL                             R28 2 1
      288 SETTABLEKS                       R28 R27 K43 ["ViewportPaddingRight"]
      290 GETIMPORT                        R28 K55 [UDim.new]
      292 LOADN                            R29 0
      293 LOADN                            R30 0
      294 CALL                             R28 2 1
      295 SETTABLEKS                       R28 R27 K44 ["ViewportPaddingBottom"]
      297 GETIMPORT                        R28 K55 [UDim.new]
      299 LOADN                            R29 0
      300 LOADN                            R30 0
      301 CALL                             R28 2 1
      302 SETTABLEKS                       R28 R27 K45 ["ViewportPaddingTop"]
      304 DUPTABLE                         R28 K59 [{"Guides", "Points", "DragDetector"}]
      305 GETUPVAL                         R29 3
      306 GETTABLEKS                       R29 R29 K30 ["createElement"]
      308 GETUPVAL                         R30 13
      309 DUPTABLE                         R31 K64 [{["Extents"], ["GridColor"], ["AxisColor"], ["Thickness"] = 0.1}]
      310 SETTABLEKS                       R13 R31 K21 ["Extents"]
      312 SETTABLEKS                       R7 R31 K60 ["GridColor"]
      314 SETTABLEKS                       R8 R31 K61 ["AxisColor"]
      316 CALL                             R29 2 1
      317 SETTABLEKS                       R29 R28 K56 ["Guides"]
      319 GETUPVAL                         R29 3
      320 GETTABLEKS                       R29 R29 K30 ["createElement"]
      322 GETUPVAL                         R30 3
      323 GETTABLEKS                       R30 R30 K65 ["Fragment"]
      325 NEWTABLE                         R31 0 0
      327 MOVE                             R32 R17
      328 CALL                             R29 3 1
      329 SETTABLEKS                       R29 R28 K57 ["Points"]
      331 GETUPVAL                         R29 3
      332 GETTABLEKS                       R29 R29 K30 ["createElement"]
      334 LOADK                            R30 K66 ["UIDragDetector"]
      335 NEWTABLE                         R31 4 0
      337 GETIMPORT                        R32 K70 [Enum.UIDragDetectorDragStyle.Scriptable]
      339 SETTABLEKS                       R32 R31 K71 ["DragStyle"]
      341 GETUPVAL                         R32 3
      342 GETTABLEKS                       R32 R32 K72 ["Event"]
      344 GETTABLEKS                       R32 R32 K73 ["DragStart"]
      346 SETTABLE                         R18 R31 R32
      347 GETUPVAL                         R32 3
      348 GETTABLEKS                       R32 R32 K72 ["Event"]
      350 GETTABLEKS                       R32 R32 K74 ["DragContinue"]
      352 SETTABLE                         R19 R31 R32
      353 GETUPVAL                         R32 3
      354 GETTABLEKS                       R32 R32 K72 ["Event"]
      356 GETTABLEKS                       R32 R32 K75 ["DragEnd"]
      358 SETTABLE                         R20 R31 R32
      359 CALL                             R29 2 1
      360 SETTABLEKS                       R29 R28 K58 ["DragDetector"]
      362 CALL                             R25 3 1
      363 SETTABLEKS                       R25 R24 K39 ["Canvas"]
      365 CALL                             R21 3 -1
      366 RETURN                           R21 -1

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
       88 GETTABLEKS                       R11 R0 K23 ["Hooks"]
       90 GETTABLEKS                       R11 R11 K24 ["useAbsoluteSize"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K23 ["Hooks"]
       97 GETTABLEKS                       R12 R12 K25 ["useSignalRef"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K26 ["Flags"]
      104 GETTABLEKS                       R13 R13 K27 ["getFFlagAnimGraphUIBlendMapPinTooltip"]
      106 CALL                             R12 1 1
      107 GETIMPORT                        R13 K5 [require]
      109 GETTABLEKS                       R14 R0 K26 ["Flags"]
      111 GETTABLEKS                       R14 R14 K28 ["getFFlagAnimGraphUIWeightSlider"]
      113 CALL                             R13 1 1
      114 GETIMPORT                        R14 K31 [Rect.new]
      116 LOADN                            R15 0
      117 LOADN                            R16 0
      118 LOADN                            R17 1
      119 LOADN                            R18 0
      120 CALL                             R14 4 1
      121 DUPCLOSURE                       R15 K32 [PROTO_7]
      122 CAPTURE                          VAL R4
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R11
      125 CAPTURE                          VAL R9
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R14
      129 CAPTURE                          VAL R8
      130 CAPTURE                          VAL R3
      131 CAPTURE                          VAL R2
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R5
      135 CAPTURE                          VAL R1
      136 RETURN                           R15 1
