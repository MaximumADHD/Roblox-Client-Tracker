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
        0 NEWTABLE                         R0 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["Position"]
        5 JUMPIFEQKNIL                     R1 ; [+69]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R1 R2 K1 ["createElement"]
       10 GETUPVAL                         R2 2
       11 DUPTABLE                         R3 K13 [{"AbsolutePositionRef", "AbsoluteSizeRef", "Color3", "Extents", "GraphRect", "Index", "LockExtents", "Mode", "OnPinDragged", "Position", "Snapping", "ZIndex"}]
       12 GETUPVAL                         R4 3
       13 SETTABLEKS                       R4 R3 K2 ["AbsolutePositionRef"]
       15 GETUPVAL                         R4 4
       16 SETTABLEKS                       R4 R3 K3 ["AbsoluteSizeRef"]
       18 GETUPVAL                         R9 5
       19 GETTABLEKS                       R8 R9 K14 ["Color"]
       21 GETTABLEKS                       R7 R8 K15 ["Extended"]
       23 GETTABLEKS                       R6 R7 K16 ["Yellow"]
       25 GETTABLEKS                       R5 R6 K17 ["Yellow_800"]
       27 GETTABLEKS                       R4 R5 K4 ["Color3"]
       29 SETTABLEKS                       R4 R3 K4 ["Color3"]
       31 GETUPVAL                         R4 6
       32 SETTABLEKS                       R4 R3 K5 ["Extents"]
       34 GETUPVAL                         R4 7
       35 SETTABLEKS                       R4 R3 K6 ["GraphRect"]
       37 LOADN                            R4 0
       38 SETTABLEKS                       R4 R3 K7 ["Index"]
       40 GETUPVAL                         R4 8
       41 SETTABLEKS                       R4 R3 K8 ["LockExtents"]
       43 GETUPVAL                         R6 9
       44 GETTABLEKS                       R5 R6 K18 ["DRAGGABLE_PIN_MODES"]
       46 GETTABLEKS                       R4 R5 K19 ["Blend1D"]
       48 SETTABLEKS                       R4 R3 K9 ["Mode"]
       50 GETUPVAL                         R5 0
       51 GETTABLEKS                       R4 R5 K10 ["OnPinDragged"]
       53 SETTABLEKS                       R4 R3 K10 ["OnPinDragged"]
       55 GETIMPORT                        R4 K22 [Vector2.new]
       57 GETUPVAL                         R6 0
       58 GETTABLEKS                       R5 R6 K0 ["Position"]
       60 LOADN                            R6 0
       61 CALL                             R4 2 1
       62 SETTABLEKS                       R4 R3 K0 ["Position"]
       64 GETUPVAL                         R5 10
       65 GETTABLEKS                       R4 R5 K23 ["enabled"]
       67 SETTABLEKS                       R4 R3 K11 ["Snapping"]
       69 LOADN                            R4 3
       70 SETTABLEKS                       R4 R3 K12 ["ZIndex"]
       72 CALL                             R1 2 1
       73 SETTABLEKS                       R1 R0 K24 ["current"]
       75 GETUPVAL                         R4 0
       76 GETTABLEKS                       R1 R4 K25 ["Pins"]
       78 LOADNIL                          R2
       79 LOADNIL                          R3
       80 FORGPREP                         R1
       81 LOADK                            R7 K26 ["point-"]
       82 FASTCALL1                        TOSTRING R4 ; [+3]
       83 MOVE                             R9 R4
       84 GETIMPORT                        R8 K28 [tostring]
       86 CALL                             R8 1 1
       87 CONCAT                           R6 R7 R8
       88 GETUPVAL                         R8 1
       89 GETTABLEKS                       R7 R8 K1 ["createElement"]
       91 GETUPVAL                         R8 2
       92 DUPTABLE                         R9 K13 [{"AbsolutePositionRef", "AbsoluteSizeRef", "Color3", "Extents", "GraphRect", "Index", "LockExtents", "Mode", "OnPinDragged", "Position", "Snapping", "ZIndex"}]
       93 GETUPVAL                         R10 3
       94 SETTABLEKS                       R10 R9 K2 ["AbsolutePositionRef"]
       96 GETUPVAL                         R10 4
       97 SETTABLEKS                       R10 R9 K3 ["AbsoluteSizeRef"]
       99 GETUPVAL                         R15 5
      100 GETTABLEKS                       R14 R15 K14 ["Color"]
      102 GETTABLEKS                       R13 R14 K15 ["Extended"]
      104 GETTABLEKS                       R12 R13 K29 ["Gray"]
      106 GETTABLEKS                       R11 R12 K30 ["Gray_600"]
      108 GETTABLEKS                       R10 R11 K4 ["Color3"]
      110 SETTABLEKS                       R10 R9 K4 ["Color3"]
      112 GETUPVAL                         R10 6
      113 SETTABLEKS                       R10 R9 K5 ["Extents"]
      115 GETUPVAL                         R10 7
      116 SETTABLEKS                       R10 R9 K6 ["GraphRect"]
      118 SETTABLEKS                       R4 R9 K7 ["Index"]
      120 GETUPVAL                         R10 8
      121 SETTABLEKS                       R10 R9 K8 ["LockExtents"]
      123 GETUPVAL                         R12 9
      124 GETTABLEKS                       R11 R12 K18 ["DRAGGABLE_PIN_MODES"]
      126 GETTABLEKS                       R10 R11 K19 ["Blend1D"]
      128 SETTABLEKS                       R10 R9 K9 ["Mode"]
      130 GETUPVAL                         R11 0
      131 GETTABLEKS                       R10 R11 K10 ["OnPinDragged"]
      133 SETTABLEKS                       R10 R9 K10 ["OnPinDragged"]
      135 GETIMPORT                        R10 K22 [Vector2.new]
      137 MOVE                             R11 R5
      138 LOADN                            R12 0
      139 CALL                             R10 2 1
      140 SETTABLEKS                       R10 R9 K0 ["Position"]
      142 GETUPVAL                         R11 10
      143 GETTABLEKS                       R10 R11 K23 ["enabled"]
      145 SETTABLEKS                       R10 R9 K11 ["Snapping"]
      147 LOADN                            R10 3
      148 SETTABLEKS                       R10 R9 K12 ["ZIndex"]
      150 CALL                             R7 2 1
      151 SETTABLE                         R7 R0 R6
      152 FORGLOOP                         R1 2 ; [-72]
      154 RETURN                           R0 1

PROTO_4:
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

PROTO_5:
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

PROTO_6:
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
       82 GETTABLEKS                       R12 R13 K10 ["useMemo"]
       84 NEWCLOSURE                       R13 P2
       85 CAPTURE                          VAL R0
       86 CAPTURE                          UPVAL U2
       87 CAPTURE                          UPVAL U6
       88 CAPTURE                          VAL R4
       89 CAPTURE                          VAL R3
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R11
       94 CAPTURE                          UPVAL U7
       95 CAPTURE                          VAL R5
       96 NEWTABLE                         R14 0 8
       98 GETTABLEKS                       R15 R3 K4 ["current"]
      100 GETTABLEKS                       R16 R4 K4 ["current"]
      102 MOVE                             R17 R9
      103 MOVE                             R18 R10
      104 MOVE                             R19 R11
      105 GETTABLEKS                       R20 R0 K15 ["Position"]
      107 GETTABLEKS                       R21 R0 K13 ["Pins"]
      109 GETTABLEKS                       R22 R3 K4 ["current"]
      111 SETLIST                          R14 R15 8 [1]
      113 CALL                             R12 2 1
      114 GETUPVAL                         R14 2
      115 GETTABLEKS                       R13 R14 K14 ["useCallback"]
      117 NEWCLOSURE                       R14 P3
      118 CAPTURE                          VAL R5
      119 NEWTABLE                         R15 0 1
      121 GETTABLEKS                       R16 R5 K16 ["enable"]
      123 SETLIST                          R15 R16 1 [1]
      125 CALL                             R13 2 1
      126 GETUPVAL                         R15 2
      127 GETTABLEKS                       R14 R15 K14 ["useCallback"]
      129 NEWCLOSURE                       R15 P4
      130 CAPTURE                          VAL R5
      131 NEWTABLE                         R16 0 1
      133 GETTABLEKS                       R17 R5 K17 ["disable"]
      135 SETLIST                          R16 R17 1 [1]
      137 CALL                             R14 2 1
      138 GETUPVAL                         R16 2
      139 GETTABLEKS                       R15 R16 K18 ["createElement"]
      141 GETUPVAL                         R17 0
      142 GETTABLEKS                       R16 R17 K19 ["View"]
      144 DUPTABLE                         R17 K23 [{"tag", "LayoutOrder", "ref"}]
      145 LOADK                            R18 K24 ["size-full-700"]
      146 SETTABLEKS                       R18 R17 K20 ["tag"]
      148 GETTABLEKS                       R18 R0 K21 ["LayoutOrder"]
      150 SETTABLEKS                       R18 R17 K21 ["LayoutOrder"]
      152 GETTABLEKS                       R18 R2 K25 ["setFrame"]
      154 SETTABLEKS                       R18 R17 K22 ["ref"]
      156 DUPTABLE                         R18 K27 [{"ShiftListener"}]
      157 GETUPVAL                         R20 2
      158 GETTABLEKS                       R19 R20 K18 ["createElement"]
      160 LOADK                            R20 K28 ["Frame"]
      161 NEWTABLE                         R21 4 0
      163 GETIMPORT                        R22 K31 [UDim2.fromScale]
      165 LOADN                            R23 1
      166 LOADN                            R24 1
      167 CALL                             R22 2 1
      168 SETTABLEKS                       R22 R21 K32 ["Size"]
      170 LOADN                            R22 1
      171 SETTABLEKS                       R22 R21 K33 ["BackgroundTransparency"]
      173 GETUPVAL                         R24 2
      174 GETTABLEKS                       R23 R24 K34 ["Event"]
      176 GETTABLEKS                       R22 R23 K35 ["InputBegan"]
      178 SETTABLE                         R13 R21 R22
      179 GETUPVAL                         R24 2
      180 GETTABLEKS                       R23 R24 K34 ["Event"]
      182 GETTABLEKS                       R22 R23 K36 ["InputEnded"]
      184 SETTABLE                         R14 R21 R22
      185 DUPTABLE                         R22 K38 [{"Canvas"}]
      186 GETUPVAL                         R24 2
      187 GETTABLEKS                       R23 R24 K18 ["createElement"]
      189 GETUPVAL                         R25 8
      190 GETTABLEKS                       R24 R25 K37 ["Canvas"]
      192 DUPTABLE                         R25 K43 [{"Size", "GraphRect", "ViewportPaddingLeft", "ViewportPaddingRight", "ViewportPaddingBottom", "ViewportPaddingTop"}]
      193 GETIMPORT                        R26 K31 [UDim2.fromScale]
      195 LOADN                            R27 1
      196 LOADN                            R28 1
      197 CALL                             R26 2 1
      198 SETTABLEKS                       R26 R25 K32 ["Size"]
      200 SETTABLEKS                       R10 R25 K12 ["GraphRect"]
      202 GETIMPORT                        R26 K46 [UDim.new]
      204 LOADN                            R27 0
      205 LOADN                            R28 0
      206 CALL                             R26 2 1
      207 SETTABLEKS                       R26 R25 K39 ["ViewportPaddingLeft"]
      209 GETIMPORT                        R26 K46 [UDim.new]
      211 LOADN                            R27 0
      212 LOADN                            R28 0
      213 CALL                             R26 2 1
      214 SETTABLEKS                       R26 R25 K40 ["ViewportPaddingRight"]
      216 GETIMPORT                        R26 K46 [UDim.new]
      218 LOADN                            R27 0
      219 LOADN                            R28 0
      220 CALL                             R26 2 1
      221 SETTABLEKS                       R26 R25 K41 ["ViewportPaddingBottom"]
      223 GETIMPORT                        R26 K46 [UDim.new]
      225 LOADN                            R27 0
      226 LOADN                            R28 0
      227 CALL                             R26 2 1
      228 SETTABLEKS                       R26 R25 K42 ["ViewportPaddingTop"]
      230 DUPTABLE                         R26 K49 [{"Guides", "Points"}]
      231 GETUPVAL                         R28 2
      232 GETTABLEKS                       R27 R28 K18 ["createElement"]
      234 GETUPVAL                         R28 9
      235 DUPTABLE                         R29 K52 [{"Extents", "GridColor", "AxisColor"}]
      236 SETTABLEKS                       R9 R29 K11 ["Extents"]
      238 GETTABLEKS                       R34 R1 K53 ["Color"]
      240 GETTABLEKS                       R33 R34 K54 ["Extended"]
      242 GETTABLEKS                       R32 R33 K55 ["Gray"]
      244 GETTABLEKS                       R31 R32 K56 ["Gray_600"]
      246 GETTABLEKS                       R30 R31 K57 ["Color3"]
      248 SETTABLEKS                       R30 R29 K50 ["GridColor"]
      250 GETTABLEKS                       R34 R1 K53 ["Color"]
      252 GETTABLEKS                       R33 R34 K54 ["Extended"]
      254 GETTABLEKS                       R32 R33 K55 ["Gray"]
      256 GETTABLEKS                       R31 R32 K58 ["Gray_300"]
      258 GETTABLEKS                       R30 R31 K57 ["Color3"]
      260 SETTABLEKS                       R30 R29 K51 ["AxisColor"]
      262 CALL                             R27 2 1
      263 SETTABLEKS                       R27 R26 K47 ["Guides"]
      265 GETUPVAL                         R28 2
      266 GETTABLEKS                       R27 R28 K18 ["createElement"]
      268 GETUPVAL                         R29 2
      269 GETTABLEKS                       R28 R29 K59 ["Fragment"]
      271 NEWTABLE                         R29 0 0
      273 MOVE                             R30 R12
      274 CALL                             R27 3 1
      275 SETTABLEKS                       R27 R26 K48 ["Points"]
      277 CALL                             R23 3 1
      278 SETTABLEKS                       R23 R22 K37 ["Canvas"]
      280 CALL                             R19 3 1
      281 SETTABLEKS                       R19 R18 K26 ["ShiftListener"]
      283 CALL                             R15 3 -1
      284 RETURN                           R15 -1

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
       62 GETTABLEKS                       R9 R0 K19 ["Parent"]
       64 GETTABLEKS                       R8 R9 K22 ["React"]
       66 CALL                             R7 1 1
       67 GETIMPORT                        R8 K9 [require]
       69 GETTABLEKS                       R10 R0 K19 ["Parent"]
       71 GETTABLEKS                       R9 R10 K23 ["ReactUtils"]
       73 CALL                             R8 1 1
       74 GETIMPORT                        R9 K9 [require]
       76 GETTABLEKS                       R11 R0 K24 ["Hooks"]
       78 GETTABLEKS                       R10 R11 K25 ["useAbsoluteSize"]
       80 CALL                             R9 1 1
       81 GETIMPORT                        R10 K28 [Rect.new]
       83 LOADN                            R11 0
       84 LOADN                            R12 0
       85 LOADN                            R13 1
       86 LOADN                            R14 0
       87 CALL                             R10 4 1
       88 DUPCLOSURE                       R11 K29 [PROTO_0]
       89 CAPTURE                          VAL R1
       90 DUPCLOSURE                       R12 K30 [PROTO_6]
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R9
       93 CAPTURE                          VAL R7
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R11
       96 CAPTURE                          VAL R10
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R3
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R2
      101 RETURN                           R12 1
