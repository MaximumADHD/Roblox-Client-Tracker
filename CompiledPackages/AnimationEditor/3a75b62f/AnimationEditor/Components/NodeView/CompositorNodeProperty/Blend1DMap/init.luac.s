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
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R1 R2 K2 ["current"]
       12 GETTABLEKS                       R0 R1 K3 ["X"]
       14 JUMPIFNOTEQKN                    R0 K4 [0] ; [+4]
       16 GETUPVAL                         R0 2
       17 GETUPVAL                         R1 2
       18 RETURN                           R0 2
       19 LOADN                            R0 0
       20 LOADN                            R1 1
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R3 R4 K5 ["Pins"]
       24 LENGTH                           R2 R3
       25 LOADN                            R3 0
       26 JUMPIFNOTLT                      R3 R2 ; [+39]
       28 LOADK                            R0 K6 [∞]
       29 LOADK                            R1 K7 [-∞]
       30 GETUPVAL                         R5 3
       31 GETTABLEKS                       R2 R5 K5 ["Pins"]
       33 LOADNIL                          R3
       34 LOADNIL                          R4
       35 FORGPREP                         R2
       36 FASTCALL2                        MATH_MIN R0 R6 ; [+5]
       38 MOVE                             R8 R0
       39 MOVE                             R9 R6
       40 GETIMPORT                        R7 K10 [math.min]
       42 CALL                             R7 2 1
       43 MOVE                             R0 R7
       44 FASTCALL2                        MATH_MAX R1 R6 ; [+5]
       46 MOVE                             R8 R1
       47 MOVE                             R9 R6
       48 GETIMPORT                        R7 K12 [math.max]
       50 CALL                             R7 2 1
       51 MOVE                             R1 R7
       52 FORGLOOP                         R2 2 ; [-17]
       54 JUMPIFNOTEQ                      R0 R1 ; [+11]
       56 GETUPVAL                         R4 2
       57 GETTABLEKS                       R3 R4 K14 ["Width"]
       59 DIVK                             R2 R3 K13 [2]
       60 SUB                              R0 R0 R2
       61 GETUPVAL                         R4 2
       62 GETTABLEKS                       R3 R4 K14 ["Width"]
       64 DIVK                             R2 R3 K13 [2]
       65 ADD                              R1 R1 R2
       66 ADD                              R3 R0 R1
       67 DIVK                             R2 R3 K13 [2]
       68 SUB                              R5 R1 R0
       69 GETUPVAL                         R9 1
       70 GETTABLEKS                       R8 R9 K2 ["current"]
       72 GETTABLEKS                       R7 R8 K3 ["X"]
       74 LOADN                            R9 2
       75 GETUPVAL                         R10 4
       76 MUL                              R8 R9 R10
       77 ADD                              R6 R7 R8
       78 MUL                              R4 R5 R6
       79 GETUPVAL                         R7 1
       80 GETTABLEKS                       R6 R7 K2 ["current"]
       82 GETTABLEKS                       R5 R6 K3 ["X"]
       84 DIV                              R3 R4 R5
       85 GETIMPORT                        R4 K17 [Rect.new]
       87 GETIMPORT                        R5 K19 [Vector2.new]
       89 MOVE                             R6 R0
       90 LOADK                            R7 K20 [-0.5]
       91 CALL                             R5 2 1
       92 GETIMPORT                        R6 K19 [Vector2.new]
       94 MOVE                             R7 R1
       95 LOADK                            R8 K21 [0.5]
       96 CALL                             R6 2 -1
       97 CALL                             R4 -1 1
       98 GETIMPORT                        R5 K17 [Rect.new]
      100 GETIMPORT                        R6 K19 [Vector2.new]
      102 DIVK                             R8 R3 K13 [2]
      103 SUB                              R7 R2 R8
      104 LOADK                            R8 K20 [-0.5]
      105 CALL                             R6 2 1
      106 GETIMPORT                        R7 K19 [Vector2.new]
      108 DIVK                             R9 R3 K13 [2]
      109 ADD                              R8 R2 R9
      110 LOADK                            R9 K21 [0.5]
      111 CALL                             R7 2 -1
      112 CALL                             R5 -1 -1
      113 RETURN                           R4 -1

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
        0 GETTABLEKS                       R3 R0 K0 ["X"]
        2 GETUPVAL                         R6 0
        3 GETTABLEKS                       R5 R6 K1 ["current"]
        5 GETTABLEKS                       R4 R5 K0 ["X"]
        7 SUB                              R2 R3 R4
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K1 ["current"]
       11 GETTABLEKS                       R3 R4 K0 ["X"]
       13 DIV                              R1 R2 R3
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K2 ["Min"]
       17 GETTABLEKS                       R3 R4 K0 ["X"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K3 ["Width"]
       22 MUL                              R4 R1 R5
       23 ADD                              R2 R3 R4
       24 GETUPVAL                         R4 3
       25 GETTABLEKS                       R3 R4 K4 ["enabled"]
       27 JUMPIFNOT                        R3 ; [+16]
       28 GETUPVAL                         R4 4
       29 GETTABLEKS                       R3 R4 K5 ["roundStep"]
       31 MOVE                             R4 R2
       32 GETUPVAL                         R7 5
       33 GETTABLEKS                       R6 R7 K2 ["Min"]
       35 GETTABLEKS                       R5 R6 K0 ["X"]
       37 GETUPVAL                         R8 5
       38 GETTABLEKS                       R7 R8 K6 ["Max"]
       40 GETTABLEKS                       R6 R7 K0 ["X"]
       42 CALL                             R3 3 1
       43 MOVE                             R2 R3
       44 GETIMPORT                        R3 K9 [Vector2.new]
       46 MOVE                             R4 R2
       47 LOADN                            R5 0
       48 CALL                             R3 2 -1
       49 RETURN                           R3 -1

PROTO_4:
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["Position"]
        5 JUMPIFEQKNIL                     R1 ; [+61]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["createElement"]
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K11 [{"AbsToMap", "Color3", "Extents", "Image", "Index", "LockExtents", "Mode", "OnPinDragged", "Position", "ZIndex"}]
       12 GETUPVAL                         R4 3
       13 SETTABLEKS                       R4 R3 K2 ["AbsToMap"]
       15 GETUPVAL                         R9 4
       16 GETTABLEKS                       R8 R9 K12 ["Color"]
       18 GETTABLEKS                       R7 R8 K13 ["Extended"]
       20 GETTABLEKS                       R6 R7 K14 ["Yellow"]
       22 GETTABLEKS                       R5 R6 K15 ["Yellow_800"]
       24 GETTABLEKS                       R4 R5 K3 ["Color3"]
       26 SETTABLEKS                       R4 R3 K3 ["Color3"]
       28 GETUPVAL                         R4 5
       29 SETTABLEKS                       R4 R3 K4 ["Extents"]
       31 LOADK                            R4 K16 ["rbxasset://textures/AnimLibrary/BlendMapCursor.png"]
       32 SETTABLEKS                       R4 R3 K5 ["Image"]
       34 LOADN                            R4 0
       35 SETTABLEKS                       R4 R3 K6 ["Index"]
       37 GETUPVAL                         R4 6
       38 SETTABLEKS                       R4 R3 K7 ["LockExtents"]
       40 GETUPVAL                         R6 7
       41 GETTABLEKS                       R5 R6 K17 ["DRAGGABLE_PIN_MODES"]
       43 GETTABLEKS                       R4 R5 K18 ["Blend1D"]
       45 SETTABLEKS                       R4 R3 K8 ["Mode"]
       47 GETUPVAL                         R5 0
       48 GETTABLEKS                       R4 R5 K9 ["OnPinDragged"]
       50 SETTABLEKS                       R4 R3 K9 ["OnPinDragged"]
       52 GETIMPORT                        R4 K21 [Vector2.new]
       54 GETUPVAL                         R6 0
       55 GETTABLEKS                       R5 R6 K0 ["Position"]
       57 LOADN                            R6 0
       58 CALL                             R4 2 1
       59 SETTABLEKS                       R4 R3 K0 ["Position"]
       61 LOADN                            R4 3
       62 SETTABLEKS                       R4 R3 K10 ["ZIndex"]
       64 CALL                             R1 2 1
       65 SETTABLEKS                       R1 R0 K22 ["current"]
       67 GETUPVAL                         R4 0
       68 GETTABLEKS                       R1 R4 K23 ["Pins"]
       70 LOADNIL                          R2
       71 LOADNIL                          R3
       72 FORGPREP                         R1
       73 LOADK                            R7 K24 ["point-"]
       74 FASTCALL1                        TOSTRING R4 ; [+3]
       75 MOVE                             R9 R4
       76 GETIMPORT                        R8 K26 [tostring]
       78 CALL                             R8 1 1
       79 CONCAT                           R6 R7 R8
       80 GETUPVAL                         R8 1
       81 GETTABLEKS                       R7 R8 K1 ["createElement"]
       83 GETUPVAL                         R8 2
       84 DUPTABLE                         R9 K27 [{"AbsToMap", "Color3", "Extents", "Index", "LockExtents", "Mode", "OnPinDragged", "Position", "ZIndex"}]
       85 GETUPVAL                         R10 3
       86 SETTABLEKS                       R10 R9 K2 ["AbsToMap"]
       88 GETUPVAL                         R15 4
       89 GETTABLEKS                       R14 R15 K12 ["Color"]
       91 GETTABLEKS                       R13 R14 K13 ["Extended"]
       93 GETTABLEKS                       R12 R13 K28 ["Gray"]
       95 GETTABLEKS                       R11 R12 K29 ["Gray_600"]
       97 GETTABLEKS                       R10 R11 K3 ["Color3"]
       99 SETTABLEKS                       R10 R9 K3 ["Color3"]
      101 GETUPVAL                         R10 5
      102 SETTABLEKS                       R10 R9 K4 ["Extents"]
      104 SETTABLEKS                       R4 R9 K6 ["Index"]
      106 GETUPVAL                         R10 6
      107 SETTABLEKS                       R10 R9 K7 ["LockExtents"]
      109 GETUPVAL                         R12 7
      110 GETTABLEKS                       R11 R12 K17 ["DRAGGABLE_PIN_MODES"]
      112 GETTABLEKS                       R10 R11 K18 ["Blend1D"]
      114 SETTABLEKS                       R10 R9 K8 ["Mode"]
      116 GETUPVAL                         R11 0
      117 GETTABLEKS                       R10 R11 K9 ["OnPinDragged"]
      119 SETTABLEKS                       R10 R9 K9 ["OnPinDragged"]
      121 GETIMPORT                        R10 K21 [Vector2.new]
      123 MOVE                             R11 R5
      124 LOADN                            R12 0
      125 CALL                             R10 2 1
      126 SETTABLEKS                       R10 R9 K0 ["Position"]
      128 LOADN                            R10 3
      129 SETTABLEKS                       R10 R9 K10 ["ZIndex"]
      131 CALL                             R7 2 1
      132 SETTABLE                         R7 R0 R6
      133 FORGLOOP                         R1 2 ; [-61]
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

PROTO_8:
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
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R3
       47 CAPTURE                          UPVAL U5
       48 CAPTURE                          VAL R0
       49 CAPTURE                          VAL R8
       50 NEWTABLE                         R11 0 4
       52 MOVE                             R12 R6
       53 JUMPIFNOT                        R12 ; [+2]
       54 GETTABLEKS                       R12 R6 K11 ["Extents"]
       56 MOVE                             R13 R6
       57 JUMPIFNOT                        R13 ; [+2]
       58 GETTABLEKS                       R13 R6 K12 ["GraphRect"]
       60 GETTABLEKS                       R14 R0 K13 ["Pins"]
       62 GETTABLEKS                       R15 R3 K4 ["current"]
       64 SETLIST                          R11 R12 4 [1]
       66 CALL                             R9 2 2
       67 GETUPVAL                         R12 2
       68 GETTABLEKS                       R11 R12 K14 ["useCallback"]
       70 NEWCLOSURE                       R12 P1
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R10
       74 NEWTABLE                         R13 0 2
       76 MOVE                             R14 R9
       77 MOVE                             R15 R10
       78 SETLIST                          R13 R14 2 [1]
       80 CALL                             R11 2 1
       81 GETUPVAL                         R13 2
       82 GETTABLEKS                       R12 R13 K14 ["useCallback"]
       84 NEWCLOSURE                       R13 P2
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R5
       89 CAPTURE                          UPVAL U6
       90 CAPTURE                          VAL R9
       91 NEWTABLE                         R14 0 5
       93 MOVE                             R15 R9
       94 GETTABLEKS                       R16 R3 K4 ["current"]
       96 GETTABLEKS                       R17 R4 K4 ["current"]
       98 MOVE                             R18 R10
       99 GETTABLEKS                       R19 R5 K15 ["enabled"]
      101 SETLIST                          R14 R15 5 [1]
      103 CALL                             R12 2 1
      104 GETUPVAL                         R14 2
      105 GETTABLEKS                       R13 R14 K10 ["useMemo"]
      107 NEWCLOSURE                       R14 P3
      108 CAPTURE                          VAL R0
      109 CAPTURE                          UPVAL U2
      110 CAPTURE                          UPVAL U7
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R9
      114 CAPTURE                          VAL R11
      115 CAPTURE                          UPVAL U8
      116 NEWTABLE                         R15 0 4
      118 MOVE                             R16 R9
      119 MOVE                             R17 R11
      120 GETTABLEKS                       R18 R0 K16 ["Position"]
      122 GETTABLEKS                       R19 R0 K13 ["Pins"]
      124 SETLIST                          R15 R16 4 [1]
      126 CALL                             R13 2 1
      127 GETUPVAL                         R15 2
      128 GETTABLEKS                       R14 R15 K14 ["useCallback"]
      130 NEWCLOSURE                       R15 P4
      131 CAPTURE                          VAL R5
      132 NEWTABLE                         R16 0 1
      134 GETTABLEKS                       R17 R5 K17 ["enable"]
      136 SETLIST                          R16 R17 1 [1]
      138 CALL                             R14 2 1
      139 GETUPVAL                         R16 2
      140 GETTABLEKS                       R15 R16 K14 ["useCallback"]
      142 NEWCLOSURE                       R16 P5
      143 CAPTURE                          VAL R5
      144 NEWTABLE                         R17 0 1
      146 GETTABLEKS                       R18 R5 K18 ["disable"]
      148 SETLIST                          R17 R18 1 [1]
      150 CALL                             R15 2 1
      151 GETUPVAL                         R17 2
      152 GETTABLEKS                       R16 R17 K14 ["useCallback"]
      154 NEWCLOSURE                       R17 P6
      155 CAPTURE                          VAL R12
      156 CAPTURE                          VAL R0
      157 NEWTABLE                         R18 0 2
      159 GETTABLEKS                       R19 R0 K19 ["OnPinDragged"]
      161 MOVE                             R20 R12
      162 SETLIST                          R18 R19 2 [1]
      164 CALL                             R16 2 1
      165 GETUPVAL                         R18 2
      166 GETTABLEKS                       R17 R18 K20 ["createElement"]
      168 GETUPVAL                         R19 0
      169 GETTABLEKS                       R18 R19 K21 ["View"]
      171 DUPTABLE                         R19 K25 [{"tag", "LayoutOrder", "ref"}]
      172 LOADK                            R20 K26 ["size-full-700"]
      173 SETTABLEKS                       R20 R19 K22 ["tag"]
      175 GETTABLEKS                       R20 R0 K23 ["LayoutOrder"]
      177 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      179 GETTABLEKS                       R20 R2 K27 ["setFrame"]
      181 SETTABLEKS                       R20 R19 K24 ["ref"]
      183 DUPTABLE                         R20 K29 [{"ShiftListener"}]
      184 GETUPVAL                         R22 2
      185 GETTABLEKS                       R21 R22 K20 ["createElement"]
      187 LOADK                            R22 K30 ["Frame"]
      188 NEWTABLE                         R23 4 0
      190 GETIMPORT                        R24 K33 [UDim2.fromScale]
      192 LOADN                            R25 1
      193 LOADN                            R26 1
      194 CALL                             R24 2 1
      195 SETTABLEKS                       R24 R23 K34 ["Size"]
      197 LOADN                            R24 1
      198 SETTABLEKS                       R24 R23 K35 ["BackgroundTransparency"]
      200 GETUPVAL                         R26 2
      201 GETTABLEKS                       R25 R26 K36 ["Event"]
      203 GETTABLEKS                       R24 R25 K37 ["InputBegan"]
      205 SETTABLE                         R14 R23 R24
      206 GETUPVAL                         R26 2
      207 GETTABLEKS                       R25 R26 K36 ["Event"]
      209 GETTABLEKS                       R24 R25 K38 ["InputEnded"]
      211 SETTABLE                         R15 R23 R24
      212 DUPTABLE                         R24 K40 [{"Canvas"}]
      213 GETUPVAL                         R26 2
      214 GETTABLEKS                       R25 R26 K20 ["createElement"]
      216 GETUPVAL                         R27 9
      217 GETTABLEKS                       R26 R27 K39 ["Canvas"]
      219 DUPTABLE                         R27 K45 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop"}]
      220 GETIMPORT                        R28 K33 [UDim2.fromScale]
      222 LOADN                            R29 1
      223 LOADN                            R30 1
      224 CALL                             R28 2 1
      225 SETTABLEKS                       R28 R27 K34 ["Size"]
      227 SETTABLEKS                       R10 R27 K12 ["GraphRect"]
      229 GETIMPORT                        R28 K48 [UDim.new]
      231 LOADN                            R29 0
      232 LOADN                            R30 0
      233 CALL                             R28 2 1
      234 SETTABLEKS                       R28 R27 K41 ["ViewportPaddingLeft"]
      236 GETIMPORT                        R28 K48 [UDim.new]
      238 LOADN                            R29 0
      239 LOADN                            R30 0
      240 CALL                             R28 2 1
      241 SETTABLEKS                       R28 R27 K42 ["ViewportPaddingRight"]
      243 GETIMPORT                        R28 K48 [UDim.new]
      245 LOADN                            R29 0
      246 LOADN                            R30 0
      247 CALL                             R28 2 1
      248 SETTABLEKS                       R28 R27 K43 ["ViewportPaddingBottom"]
      250 GETIMPORT                        R28 K48 [UDim.new]
      252 LOADN                            R29 0
      253 LOADN                            R30 0
      254 CALL                             R28 2 1
      255 SETTABLEKS                       R28 R27 K44 ["ViewportPaddingTop"]
      257 DUPTABLE                         R28 K52 [{"Guides", "Points", "DragDetector"}]
      258 GETUPVAL                         R30 2
      259 GETTABLEKS                       R29 R30 K20 ["createElement"]
      261 GETUPVAL                         R30 10
      262 DUPTABLE                         R31 K55 [{"Extents", "GridColor", "AxisColor"}]
      263 SETTABLEKS                       R9 R31 K11 ["Extents"]
      265 GETTABLEKS                       R36 R1 K56 ["Color"]
      267 GETTABLEKS                       R35 R36 K57 ["Extended"]
      269 GETTABLEKS                       R34 R35 K58 ["Gray"]
      271 GETTABLEKS                       R33 R34 K59 ["Gray_600"]
      273 GETTABLEKS                       R32 R33 K60 ["Color3"]
      275 SETTABLEKS                       R32 R31 K53 ["GridColor"]
      277 GETTABLEKS                       R36 R1 K56 ["Color"]
      279 GETTABLEKS                       R35 R36 K57 ["Extended"]
      281 GETTABLEKS                       R34 R35 K58 ["Gray"]
      283 GETTABLEKS                       R33 R34 K61 ["Gray_300"]
      285 GETTABLEKS                       R32 R33 K60 ["Color3"]
      287 SETTABLEKS                       R32 R31 K54 ["AxisColor"]
      289 CALL                             R29 2 1
      290 SETTABLEKS                       R29 R28 K49 ["Guides"]
      292 GETUPVAL                         R30 2
      293 GETTABLEKS                       R29 R30 K20 ["createElement"]
      295 GETUPVAL                         R31 2
      296 GETTABLEKS                       R30 R31 K62 ["Fragment"]
      298 NEWTABLE                         R31 0 0
      300 MOVE                             R32 R13
      301 CALL                             R29 3 1
      302 SETTABLEKS                       R29 R28 K50 ["Points"]
      304 GETUPVAL                         R30 2
      305 GETTABLEKS                       R29 R30 K20 ["createElement"]
      307 LOADK                            R30 K63 ["UIDragDetector"]
      308 NEWTABLE                         R31 4 0
      310 GETIMPORT                        R32 K67 [Enum.UIDragDetectorDragStyle.Scriptable]
      312 SETTABLEKS                       R32 R31 K68 ["DragStyle"]
      314 GETUPVAL                         R34 2
      315 GETTABLEKS                       R33 R34 K36 ["Event"]
      317 GETTABLEKS                       R32 R33 K69 ["DragStart"]
      319 SETTABLE                         R16 R31 R32
      320 GETUPVAL                         R34 2
      321 GETTABLEKS                       R33 R34 K36 ["Event"]
      323 GETTABLEKS                       R32 R33 K70 ["DragContinue"]
      325 SETTABLE                         R16 R31 R32
      326 CALL                             R29 2 1
      327 SETTABLEKS                       R29 R28 K51 ["DragDetector"]
      329 CALL                             R25 3 1
      330 SETTABLEKS                       R25 R24 K39 ["Canvas"]
      332 CALL                             R21 3 1
      333 SETTABLEKS                       R21 R20 K28 ["ShiftListener"]
      335 CALL                             R17 3 -1
      336 RETURN                           R17 -1

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
       62 GETTABLEKS                       R11 R0 K10 ["Components"]
       64 GETTABLEKS                       R10 R11 K11 ["NodeView"]
       66 GETTABLEKS                       R9 R10 K12 ["CompositorNodeProperty"]
       68 GETTABLEKS                       R8 R9 K22 ["PropertyUtils"]
       70 CALL                             R7 1 1
       71 GETIMPORT                        R8 K9 [require]
       73 GETTABLEKS                       R10 R0 K19 ["Parent"]
       75 GETTABLEKS                       R9 R10 K23 ["React"]
       77 CALL                             R8 1 1
       78 GETIMPORT                        R9 K9 [require]
       80 GETTABLEKS                       R11 R0 K19 ["Parent"]
       82 GETTABLEKS                       R10 R11 K24 ["ReactUtils"]
       84 CALL                             R9 1 1
       85 GETIMPORT                        R10 K9 [require]
       87 GETTABLEKS                       R12 R0 K25 ["Hooks"]
       89 GETTABLEKS                       R11 R12 K26 ["useAbsoluteSize"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K29 [Rect.new]
       94 LOADN                            R12 0
       95 LOADN                            R13 0
       96 LOADN                            R14 1
       97 LOADN                            R15 0
       98 CALL                             R11 4 1
       99 DUPCLOSURE                       R12 K30 [PROTO_0]
      100 CAPTURE                          VAL R1
      101 DUPCLOSURE                       R13 K31 [PROTO_8]
      102 CAPTURE                          VAL R5
      103 CAPTURE                          VAL R10
      104 CAPTURE                          VAL R8
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R12
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R7
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R2
      113 RETURN                           R13 1
