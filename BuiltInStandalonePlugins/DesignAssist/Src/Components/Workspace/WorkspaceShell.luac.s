PROTO_0:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["Frame"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R0 R2 K4 ["Name"]
        6 LOADN                            R3 1
        7 SETTABLEKS                       R3 R2 K5 ["BackgroundTransparency"]
        9 LOADN                            R3 0
       10 SETTABLEKS                       R3 R2 K6 ["BorderSizePixel"]
       12 SETTABLEKS                       R1 R2 K7 ["Parent"]
       14 RETURN                           R2 1

PROTO_1:
        0 GETIMPORT                        R3 K2 [Instance.new]
        2 LOADK                            R4 K3 ["Frame"]
        3 CALL                             R3 1 1
        4 SETTABLEKS                       R0 R3 K4 ["Name"]
        6 LOADN                            R4 1
        7 SETTABLEKS                       R4 R3 K5 ["BackgroundTransparency"]
        9 LOADN                            R4 0
       10 SETTABLEKS                       R4 R3 K6 ["BorderSizePixel"]
       12 SETTABLEKS                       R1 R3 K7 ["Parent"]
       14 MOVE                             R2 R3
       15 GETIMPORT                        R3 K9 [UDim2.new]
       17 LOADN                            R4 1
       18 LOADN                            R5 0
       19 LOADN                            R6 0
       20 LOADN                            R7 40
       21 CALL                             R3 4 1
       22 SETTABLEKS                       R3 R2 K10 ["Size"]
       24 LOADN                            R3 10
       25 SETTABLEKS                       R3 R2 K11 ["ZIndex"]
       27 RETURN                           R2 1

PROTO_2:
        0 GETIMPORT                        R4 K2 [Instance.new]
        2 LOADK                            R5 K3 ["Frame"]
        3 CALL                             R4 1 1
        4 SETTABLEKS                       R0 R4 K4 ["Name"]
        6 LOADN                            R5 1
        7 SETTABLEKS                       R5 R4 K5 ["BackgroundTransparency"]
        9 LOADN                            R5 0
       10 SETTABLEKS                       R5 R4 K6 ["BorderSizePixel"]
       12 SETTABLEKS                       R2 R4 K7 ["Parent"]
       14 MOVE                             R3 R4
       15 GETIMPORT                        R4 K9 [UDim2.new]
       17 LOADN                            R5 0
       18 LOADN                            R6 320
       19 LOADN                            R7 1
       20 LOADN                            R8 0
       21 CALL                             R4 4 1
       22 SETTABLEKS                       R4 R3 K10 ["Size"]
       24 LOADN                            R4 2
       25 SETTABLEKS                       R4 R3 K11 ["ZIndex"]
       27 JUMPIFNOTEQKS                    R1 K12 ["right"] ; [+15]
       29 GETIMPORT                        R4 K14 [Vector2.new]
       31 LOADN                            R5 1
       32 LOADN                            R6 0
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R3 K15 ["AnchorPoint"]
       36 GETIMPORT                        R4 K17 [UDim2.fromScale]
       38 LOADN                            R5 1
       39 LOADN                            R6 0
       40 CALL                             R4 2 1
       41 SETTABLEKS                       R4 R3 K18 ["Position"]
       43 JUMPIFNOTEQKS                    R1 K19 ["left"] ; [+3]
       45 LOADK                            R5 K20 ["RightDivider"]
       46 JUMP                             ; [+1]
       47 LOADK                            R5 K21 ["LeftDivider"]
       48 GETIMPORT                        R6 K2 [Instance.new]
       50 LOADK                            R7 K3 ["Frame"]
       51 CALL                             R6 1 1
       52 SETTABLEKS                       R5 R6 K4 ["Name"]
       54 LOADN                            R7 1
       55 SETTABLEKS                       R7 R6 K5 ["BackgroundTransparency"]
       57 LOADN                            R7 0
       58 SETTABLEKS                       R7 R6 K6 ["BorderSizePixel"]
       60 SETTABLEKS                       R3 R6 K7 ["Parent"]
       62 MOVE                             R4 R6
       63 GETIMPORT                        R5 K9 [UDim2.new]
       65 LOADN                            R6 0
       66 LOADN                            R7 1
       67 LOADN                            R8 1
       68 LOADN                            R9 0
       69 CALL                             R5 4 1
       70 SETTABLEKS                       R5 R4 K10 ["Size"]
       72 JUMPIFNOTEQKS                    R1 K19 ["left"] ; [+9]
       74 GETIMPORT                        R5 K9 [UDim2.new]
       76 LOADN                            R6 1
       77 LOADN                            R7 -1
       78 LOADN                            R8 0
       79 LOADN                            R9 0
       80 CALL                             R5 4 1
       81 JUMP                             ; [+5]
       82 GETIMPORT                        R5 K23 [UDim2.fromOffset]
       84 LOADN                            R6 0
       85 LOADN                            R7 0
       86 CALL                             R5 2 1
       87 SETTABLEKS                       R5 R4 K18 ["Position"]
       89 LOADN                            R5 20
       90 SETTABLEKS                       R5 R4 K11 ["ZIndex"]
       92 DUPTABLE                         R5 K28 [{["shell"], ["divider"], ["width"] = 320}]
       93 SETTABLEKS                       R3 R5 K24 ["shell"]
       95 SETTABLEKS                       R4 R5 K25 ["divider"]
       97 RETURN                           R5 1

PROTO_3:
        0 MOVE                             R4 R0
        1 LOADK                            R5 K0 ["Divider"]
        2 CONCAT                           R3 R4 R5
        3 GETIMPORT                        R4 K3 [Instance.new]
        5 LOADK                            R5 K4 ["Frame"]
        6 CALL                             R4 1 1
        7 SETTABLEKS                       R3 R4 K5 ["Name"]
        9 LOADN                            R5 1
       10 SETTABLEKS                       R5 R4 K6 ["BackgroundTransparency"]
       12 LOADN                            R5 0
       13 SETTABLEKS                       R5 R4 K7 ["BorderSizePixel"]
       15 SETTABLEKS                       R1 R4 K8 ["Parent"]
       17 MOVE                             R2 R4
       18 GETIMPORT                        R3 K10 [UDim2.new]
       20 LOADN                            R4 1
       21 LOADN                            R5 0
       22 LOADN                            R6 0
       23 LOADN                            R7 1
       24 CALL                             R3 4 1
       25 SETTABLEKS                       R3 R2 K11 ["Size"]
       27 LOADN                            R3 20
       28 SETTABLEKS                       R3 R2 K12 ["ZIndex"]
       30 DUPTABLE                         R3 K14 [{"divider"}]
       31 SETTABLEKS                       R2 R3 K13 ["divider"]
       33 RETURN                           R3 1

PROTO_4:
        0 GETIMPORT                        R2 K2 [Instance.new]
        2 LOADK                            R3 K3 ["ScrollingFrame"]
        3 CALL                             R2 1 1
        4 SETTABLEKS                       R0 R2 K4 ["Name"]
        6 LOADN                            R3 1
        7 SETTABLEKS                       R3 R2 K5 ["BackgroundTransparency"]
        9 LOADN                            R3 0
       10 SETTABLEKS                       R3 R2 K6 ["BorderSizePixel"]
       12 LOADN                            R3 4
       13 SETTABLEKS                       R3 R2 K7 ["ScrollBarThickness"]
       15 GETIMPORT                        R3 K10 [UDim2.fromScale]
       17 LOADN                            R4 0
       18 LOADN                            R5 0
       19 CALL                             R3 2 1
       20 SETTABLEKS                       R3 R2 K11 ["CanvasSize"]
       22 GETIMPORT                        R3 K15 [Enum.AutomaticSize.Y]
       24 SETTABLEKS                       R3 R2 K16 ["AutomaticCanvasSize"]
       26 SETTABLEKS                       R1 R2 K17 ["Parent"]
       28 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["getResolutionScale"]
        3 CALL                             R0 0 1
        4 GETIMPORT                        R2 K3 [Vector2.new]
        6 LOADN                            R3 16
        7 LOADN                            R4 16
        8 CALL                             R2 2 1
        9 MUL                              R1 R2 R0
       10 GETIMPORT                        R3 K3 [Vector2.new]
       12 LOADN                            R4 17
       13 LOADN                            R5 17
       14 CALL                             R3 2 1
       15 MUL                              R2 R3 R0
       16 GETIMPORT                        R3 K5 [Rect.new]
       18 MOVE                             R4 R1
       19 MOVE                             R5 R2
       20 CALL                             R3 2 1
       21 DIVRK                            R4 K6 [1] R0
       22 RETURN                           R3 2

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 SETTABLEKS                       R1 R0 K0 ["ScrollBarImageTransparency"]
        4 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOT                        R0 ; [+2]
        1 LOADN                            R1 0
        2 JUMP                             ; [+1]
        3 LOADN                            R1 1
        4 SETUPVAL                         R1 0
        5 GETUPVAL                         R1 1
        6 GETUPVAL                         R2 0
        7 SETTABLEKS                       R2 R1 K0 ["ScrollBarImageTransparency"]
        9 RETURN                           R0 0

PROTO_8:
        0 LOADN                            R0 0
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 0
        4 SETTABLEKS                       R1 R0 K0 ["ScrollBarImageTransparency"]
        6 RETURN                           R0 0

PROTO_9:
        0 LOADN                            R0 1
        1 SETUPVAL                         R0 0
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 0
        4 SETTABLEKS                       R1 R0 K0 ["ScrollBarImageTransparency"]
        6 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AbsoluteSize"]
        3 GETUPVAL                         R1 1
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R2 R2 K1 ["Visible"]
        7 SETTABLEKS                       R2 R1 K1 ["Visible"]
        9 GETUPVAL                         R1 1
       10 GETIMPORT                        R2 K4 [UDim2.new]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K5 ["Position"]
       15 GETTABLEKS                       R3 R3 K6 ["X"]
       17 GETTABLEKS                       R3 R3 K7 ["Scale"]
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R5 R5 K5 ["Position"]
       22 GETTABLEKS                       R5 R5 K6 ["X"]
       24 GETTABLEKS                       R5 R5 K9 ["Offset"]
       26 SUBK                             R4 R5 K8 [8]
       27 GETUPVAL                         R5 0
       28 GETTABLEKS                       R5 R5 K5 ["Position"]
       30 GETTABLEKS                       R5 R5 K10 ["Y"]
       32 GETTABLEKS                       R5 R5 K7 ["Scale"]
       34 GETUPVAL                         R8 0
       35 GETTABLEKS                       R8 R8 K5 ["Position"]
       37 GETTABLEKS                       R8 R8 K10 ["Y"]
       39 GETTABLEKS                       R8 R8 K9 ["Offset"]
       41 SUBK                             R7 R8 K8 [8]
       42 ADDK                             R6 R7 K11 [2]
       43 CALL                             R2 4 1
       44 SETTABLEKS                       R2 R1 K5 ["Position"]
       46 GETUPVAL                         R1 1
       47 GETIMPORT                        R2 K13 [UDim2.fromOffset]
       49 LOADN                            R4 0
       50 GETTABLEKS                       R6 R0 K6 ["X"]
       52 ADDK                             R5 R6 K14 [16]
       53 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       55 GETIMPORT                        R3 K17 [math.max]
       57 CALL                             R3 2 1
       58 LOADN                            R5 0
       59 GETTABLEKS                       R7 R0 K10 ["Y"]
       61 ADDK                             R6 R7 K14 [16]
       62 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       64 GETIMPORT                        R4 K17 [math.max]
       66 CALL                             R4 2 1
       67 CALL                             R2 2 1
       68 SETTABLEKS                       R2 R1 K18 ["Size"]
       70 RETURN                           R0 0

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K2 [Instance.new]
        4 LOADK                            R3 K3 ["TextLabel"]
        5 CALL                             R2 1 1
        6 LOADK                            R3 K4 ["TitleStamp"]
        7 SETTABLEKS                       R3 R2 K5 ["Name"]
        9 GETIMPORT                        R3 K8 [UDim2.fromOffset]
       11 LOADN                            R4 1
       12 LOADN                            R5 1
       13 CALL                             R3 2 1
       14 SETTABLEKS                       R3 R2 K9 ["Size"]
       16 GETIMPORT                        R3 K8 [UDim2.fromOffset]
       18 LOADN                            R4 -9999
       19 LOADN                            R5 -9999
       20 CALL                             R3 2 1
       21 SETTABLEKS                       R3 R2 K10 ["Position"]
       23 LOADN                            R3 1
       24 SETTABLEKS                       R3 R2 K11 ["BackgroundTransparency"]
       26 LOADK                            R3 K12 ["DESIGN ASSIST dev-three-pane-shell"]
       27 SETTABLEKS                       R3 R2 K13 ["Text"]
       29 LOADN                            R3 1
       30 SETTABLEKS                       R3 R2 K14 ["TextTransparency"]
       32 LOADB                            R3 0
       33 SETTABLEKS                       R3 R2 K15 ["Visible"]
       35 SETTABLEKS                       R0 R2 K16 ["Parent"]
       37 GETIMPORT                        R4 K2 [Instance.new]
       39 LOADK                            R5 K17 ["Frame"]
       40 CALL                             R4 1 1
       41 LOADK                            R5 K18 ["Overlay"]
       42 SETTABLEKS                       R5 R4 K5 ["Name"]
       44 LOADN                            R5 1
       45 SETTABLEKS                       R5 R4 K11 ["BackgroundTransparency"]
       47 LOADN                            R5 0
       48 SETTABLEKS                       R5 R4 K19 ["BorderSizePixel"]
       50 SETTABLEKS                       R0 R4 K16 ["Parent"]
       52 MOVE                             R3 R4
       53 GETIMPORT                        R4 K21 [UDim2.fromScale]
       55 LOADN                            R5 1
       56 LOADN                            R6 1
       57 CALL                             R4 2 1
       58 SETTABLEKS                       R4 R3 K9 ["Size"]
       60 LOADN                            R4 200
       61 SETTABLEKS                       R4 R3 K22 ["ZIndex"]
       63 GETIMPORT                        R5 K2 [Instance.new]
       65 LOADK                            R6 K17 ["Frame"]
       66 CALL                             R5 1 1
       67 LOADK                            R6 K23 ["Workspace"]
       68 SETTABLEKS                       R6 R5 K5 ["Name"]
       70 LOADN                            R6 1
       71 SETTABLEKS                       R6 R5 K11 ["BackgroundTransparency"]
       73 LOADN                            R6 0
       74 SETTABLEKS                       R6 R5 K19 ["BorderSizePixel"]
       76 SETTABLEKS                       R0 R5 K16 ["Parent"]
       78 MOVE                             R4 R5
       79 GETIMPORT                        R5 K21 [UDim2.fromScale]
       81 LOADN                            R6 1
       82 LOADN                            R7 1
       83 CALL                             R5 2 1
       84 SETTABLEKS                       R5 R4 K9 ["Size"]
       86 LOADB                            R5 1
       87 SETTABLEKS                       R5 R4 K24 ["ClipsDescendants"]
       89 GETUPVAL                         R5 0
       90 LOADK                            R6 K25 ["PrimaryPane"]
       91 LOADK                            R7 K26 ["left"]
       92 MOVE                             R8 R4
       93 CALL                             R5 3 1
       94 GETIMPORT                        R7 K2 [Instance.new]
       96 LOADK                            R8 K17 ["Frame"]
       97 CALL                             R7 1 1
       98 LOADK                            R8 K27 ["CanvasPane"]
       99 SETTABLEKS                       R8 R7 K5 ["Name"]
      101 LOADN                            R8 1
      102 SETTABLEKS                       R8 R7 K11 ["BackgroundTransparency"]
      104 LOADN                            R8 0
      105 SETTABLEKS                       R8 R7 K19 ["BorderSizePixel"]
      107 SETTABLEKS                       R4 R7 K16 ["Parent"]
      109 MOVE                             R6 R7
      110 GETIMPORT                        R7 K28 [UDim2.new]
      112 LOADN                            R8 1
      113 LOADN                            R9 -640
      114 LOADN                            R10 1
      115 LOADN                            R11 0
      116 CALL                             R7 4 1
      117 SETTABLEKS                       R7 R6 K9 ["Size"]
      119 GETIMPORT                        R7 K8 [UDim2.fromOffset]
      121 LOADN                            R8 320
      122 LOADN                            R9 0
      123 CALL                             R7 2 1
      124 SETTABLEKS                       R7 R6 K10 ["Position"]
      126 LOADB                            R7 1
      127 SETTABLEKS                       R7 R6 K24 ["ClipsDescendants"]
      129 LOADN                            R7 1
      130 SETTABLEKS                       R7 R6 K22 ["ZIndex"]
      132 GETUPVAL                         R7 0
      133 LOADK                            R8 K29 ["SecondaryPane"]
      134 LOADK                            R9 K30 ["right"]
      135 MOVE                             R10 R4
      136 CALL                             R7 3 1
      137 GETTABLEKS                       R9 R5 K31 ["shell"]
      139 GETIMPORT                        R11 K2 [Instance.new]
      141 LOADK                            R12 K17 ["Frame"]
      142 CALL                             R11 1 1
      143 LOADK                            R12 K32 ["ContextHeader"]
      144 SETTABLEKS                       R12 R11 K5 ["Name"]
      146 LOADN                            R12 1
      147 SETTABLEKS                       R12 R11 K11 ["BackgroundTransparency"]
      149 LOADN                            R12 0
      150 SETTABLEKS                       R12 R11 K19 ["BorderSizePixel"]
      152 SETTABLEKS                       R9 R11 K16 ["Parent"]
      154 MOVE                             R10 R11
      155 GETIMPORT                        R11 K28 [UDim2.new]
      157 LOADN                            R12 1
      158 LOADN                            R13 0
      159 LOADN                            R14 0
      160 LOADN                            R15 40
      161 CALL                             R11 4 1
      162 SETTABLEKS                       R11 R10 K9 ["Size"]
      164 LOADN                            R11 10
      165 SETTABLEKS                       R11 R10 K22 ["ZIndex"]
      167 MOVE                             R8 R10
      168 GETTABLEKS                       R10 R5 K31 ["shell"]
      170 GETIMPORT                        R11 K2 [Instance.new]
      172 LOADK                            R12 K17 ["Frame"]
      173 CALL                             R11 1 1
      174 LOADK                            R12 K33 ["ScreensSection"]
      175 SETTABLEKS                       R12 R11 K5 ["Name"]
      177 LOADN                            R12 1
      178 SETTABLEKS                       R12 R11 K11 ["BackgroundTransparency"]
      180 LOADN                            R12 0
      181 SETTABLEKS                       R12 R11 K19 ["BorderSizePixel"]
      183 SETTABLEKS                       R10 R11 K16 ["Parent"]
      185 MOVE                             R9 R11
      186 GETIMPORT                        R10 K8 [UDim2.fromOffset]
      188 LOADN                            R11 0
      189 LOADN                            R12 40
      190 CALL                             R10 2 1
      191 SETTABLEKS                       R10 R9 K10 ["Position"]
      193 GETIMPORT                        R10 K28 [UDim2.new]
      195 LOADN                            R11 1
      196 LOADN                            R12 -1
      197 LOADN                            R13 0
      198 LOADN                            R14 264
      199 CALL                             R10 4 1
      200 SETTABLEKS                       R10 R9 K9 ["Size"]
      202 GETIMPORT                        R12 K2 [Instance.new]
      204 LOADK                            R13 K17 ["Frame"]
      205 CALL                             R12 1 1
      206 LOADK                            R13 K34 ["ScreensTabsHeader"]
      207 SETTABLEKS                       R13 R12 K5 ["Name"]
      209 LOADN                            R13 1
      210 SETTABLEKS                       R13 R12 K11 ["BackgroundTransparency"]
      212 LOADN                            R13 0
      213 SETTABLEKS                       R13 R12 K19 ["BorderSizePixel"]
      215 SETTABLEKS                       R9 R12 K16 ["Parent"]
      217 MOVE                             R11 R12
      218 GETIMPORT                        R12 K28 [UDim2.new]
      220 LOADN                            R13 1
      221 LOADN                            R14 0
      222 LOADN                            R15 0
      223 LOADN                            R16 40
      224 CALL                             R12 4 1
      225 SETTABLEKS                       R12 R11 K9 ["Size"]
      227 LOADN                            R12 10
      228 SETTABLEKS                       R12 R11 K22 ["ZIndex"]
      230 MOVE                             R10 R11
      231 GETIMPORT                        R12 K2 [Instance.new]
      233 LOADK                            R13 K17 ["Frame"]
      234 CALL                             R12 1 1
      235 LOADK                            R13 K35 ["ScreensHost"]
      236 SETTABLEKS                       R13 R12 K5 ["Name"]
      238 LOADN                            R13 1
      239 SETTABLEKS                       R13 R12 K11 ["BackgroundTransparency"]
      241 LOADN                            R13 0
      242 SETTABLEKS                       R13 R12 K19 ["BorderSizePixel"]
      244 SETTABLEKS                       R9 R12 K16 ["Parent"]
      246 MOVE                             R11 R12
      247 GETIMPORT                        R12 K8 [UDim2.fromOffset]
      249 LOADN                            R13 0
      250 LOADN                            R14 40
      251 CALL                             R12 2 1
      252 SETTABLEKS                       R12 R11 K10 ["Position"]
      254 GETIMPORT                        R12 K28 [UDim2.new]
      256 LOADN                            R13 1
      257 LOADN                            R14 0
      258 LOADN                            R15 1
      259 LOADN                            R16 -40
      260 CALL                             R12 4 1
      261 SETTABLEKS                       R12 R11 K9 ["Size"]
      263 LOADB                            R12 1
      264 SETTABLEKS                       R12 R11 K24 ["ClipsDescendants"]
      266 GETIMPORT                        R13 K2 [Instance.new]
      268 LOADK                            R14 K17 ["Frame"]
      269 CALL                             R13 1 1
      270 LOADK                            R14 K36 ["LibraryHost"]
      271 SETTABLEKS                       R14 R13 K5 ["Name"]
      273 LOADN                            R14 1
      274 SETTABLEKS                       R14 R13 K11 ["BackgroundTransparency"]
      276 LOADN                            R14 0
      277 SETTABLEKS                       R14 R13 K19 ["BorderSizePixel"]
      279 SETTABLEKS                       R9 R13 K16 ["Parent"]
      281 MOVE                             R12 R13
      282 GETTABLEKS                       R13 R11 K10 ["Position"]
      284 SETTABLEKS                       R13 R12 K10 ["Position"]
      286 GETTABLEKS                       R13 R11 K9 ["Size"]
      288 SETTABLEKS                       R13 R12 K9 ["Size"]
      290 LOADB                            R13 1
      291 SETTABLEKS                       R13 R12 K24 ["ClipsDescendants"]
      293 LOADB                            R13 0
      294 SETTABLEKS                       R13 R12 K15 ["Visible"]
      296 GETTABLEKS                       R14 R5 K31 ["shell"]
      298 GETIMPORT                        R15 K2 [Instance.new]
      300 LOADK                            R16 K17 ["Frame"]
      301 CALL                             R15 1 1
      302 LOADK                            R16 K37 ["LayersSection"]
      303 SETTABLEKS                       R16 R15 K5 ["Name"]
      305 LOADN                            R16 1
      306 SETTABLEKS                       R16 R15 K11 ["BackgroundTransparency"]
      308 LOADN                            R16 0
      309 SETTABLEKS                       R16 R15 K19 ["BorderSizePixel"]
      311 SETTABLEKS                       R14 R15 K16 ["Parent"]
      313 MOVE                             R13 R15
      314 GETIMPORT                        R14 K8 [UDim2.fromOffset]
      316 LOADN                            R15 0
      317 LOADN                            R16 304
      318 CALL                             R14 2 1
      319 SETTABLEKS                       R14 R13 K10 ["Position"]
      321 GETIMPORT                        R14 K28 [UDim2.new]
      323 LOADN                            R15 1
      324 LOADN                            R16 -1
      325 LOADN                            R17 1
      326 LOADN                            R18 -304
      327 CALL                             R14 4 1
      328 SETTABLEKS                       R14 R13 K9 ["Size"]
      330 GETIMPORT                        R16 K2 [Instance.new]
      332 LOADK                            R17 K17 ["Frame"]
      333 CALL                             R16 1 1
      334 LOADK                            R17 K38 ["LayersDivider"]
      335 SETTABLEKS                       R17 R16 K5 ["Name"]
      337 LOADN                            R17 1
      338 SETTABLEKS                       R17 R16 K11 ["BackgroundTransparency"]
      340 LOADN                            R17 0
      341 SETTABLEKS                       R17 R16 K19 ["BorderSizePixel"]
      343 SETTABLEKS                       R13 R16 K16 ["Parent"]
      345 MOVE                             R15 R16
      346 GETIMPORT                        R16 K28 [UDim2.new]
      348 LOADN                            R17 1
      349 LOADN                            R18 0
      350 LOADN                            R19 0
      351 LOADN                            R20 1
      352 CALL                             R16 4 1
      353 SETTABLEKS                       R16 R15 K9 ["Size"]
      355 LOADN                            R16 20
      356 SETTABLEKS                       R16 R15 K22 ["ZIndex"]
      358 DUPTABLE                         R14 K40 [{"divider"}]
      359 SETTABLEKS                       R15 R14 K39 ["divider"]
      361 GETIMPORT                        R17 K2 [Instance.new]
      363 LOADK                            R18 K17 ["Frame"]
      364 CALL                             R17 1 1
      365 LOADK                            R18 K41 ["LayersHeader"]
      366 SETTABLEKS                       R18 R17 K5 ["Name"]
      368 LOADN                            R18 1
      369 SETTABLEKS                       R18 R17 K11 ["BackgroundTransparency"]
      371 LOADN                            R18 0
      372 SETTABLEKS                       R18 R17 K19 ["BorderSizePixel"]
      374 SETTABLEKS                       R13 R17 K16 ["Parent"]
      376 MOVE                             R16 R17
      377 GETIMPORT                        R17 K28 [UDim2.new]
      379 LOADN                            R18 1
      380 LOADN                            R19 0
      381 LOADN                            R20 0
      382 LOADN                            R21 40
      383 CALL                             R17 4 1
      384 SETTABLEKS                       R17 R16 K9 ["Size"]
      386 LOADN                            R17 10
      387 SETTABLEKS                       R17 R16 K22 ["ZIndex"]
      389 MOVE                             R15 R16
      390 GETIMPORT                        R17 K2 [Instance.new]
      392 LOADK                            R18 K42 ["ScrollingFrame"]
      393 CALL                             R17 1 1
      394 LOADK                            R18 K43 ["LayersPanel"]
      395 SETTABLEKS                       R18 R17 K5 ["Name"]
      397 LOADN                            R18 1
      398 SETTABLEKS                       R18 R17 K11 ["BackgroundTransparency"]
      400 LOADN                            R18 0
      401 SETTABLEKS                       R18 R17 K19 ["BorderSizePixel"]
      403 LOADN                            R18 4
      404 SETTABLEKS                       R18 R17 K44 ["ScrollBarThickness"]
      406 GETIMPORT                        R18 K21 [UDim2.fromScale]
      408 LOADN                            R19 0
      409 LOADN                            R20 0
      410 CALL                             R18 2 1
      411 SETTABLEKS                       R18 R17 K45 ["CanvasSize"]
      413 GETIMPORT                        R18 K49 [Enum.AutomaticSize.Y]
      415 SETTABLEKS                       R18 R17 K50 ["AutomaticCanvasSize"]
      417 SETTABLEKS                       R13 R17 K16 ["Parent"]
      419 MOVE                             R16 R17
      420 GETIMPORT                        R17 K8 [UDim2.fromOffset]
      422 LOADN                            R18 0
      423 LOADN                            R19 40
      424 CALL                             R17 2 1
      425 SETTABLEKS                       R17 R16 K10 ["Position"]
      427 GETIMPORT                        R17 K28 [UDim2.new]
      429 LOADN                            R18 1
      430 LOADN                            R19 0
      431 LOADN                            R20 1
      432 LOADN                            R21 -40
      433 CALL                             R17 4 1
      434 SETTABLEKS                       R17 R16 K9 ["Size"]
      436 GETIMPORT                        R17 K52 [Enum.AutomaticSize.None]
      438 SETTABLEKS                       R17 R16 K50 ["AutomaticCanvasSize"]
      440 LOADB                            R17 1
      441 SETTABLEKS                       R17 R16 K24 ["ClipsDescendants"]
      443 LOADN                            R17 1
      444 SETTABLEKS                       R17 R16 K53 ["ScrollBarImageTransparency"]
      446 GETIMPORT                        R17 K2 [Instance.new]
      448 LOADK                            R18 K54 ["UIPadding"]
      449 CALL                             R17 1 1
      450 GETIMPORT                        R18 K56 [UDim.new]
      452 LOADN                            R19 0
      453 LOADN                            R20 4
      454 CALL                             R18 2 1
      455 SETTABLEKS                       R18 R17 K57 ["PaddingTop"]
      457 GETIMPORT                        R18 K56 [UDim.new]
      459 LOADN                            R19 0
      460 LOADN                            R20 4
      461 CALL                             R18 2 1
      462 SETTABLEKS                       R18 R17 K58 ["PaddingBottom"]
      464 SETTABLEKS                       R16 R17 K16 ["Parent"]
      466 LOADN                            R18 1
      467 NEWCLOSURE                       R19 P0
      468 CAPTURE                          VAL R16
      469 CAPTURE                          REF R18
      470 NEWCLOSURE                       R20 P1
      471 CAPTURE                          REF R18
      472 CAPTURE                          VAL R16
      473 MOVE                             R22 R1
      474 GETTABLEKS                       R23 R13 K59 ["MouseEnter"]
      476 NEWCLOSURE                       R25 P2
      477 CAPTURE                          REF R18
      478 CAPTURE                          VAL R16
      479 NAMECALL                         R23 R23 K60 ["Connect"]
      481 CALL                             R23 2 -1
      482 FASTCALL                         TABLE_INSERT ; [+2]
      483 GETIMPORT                        R21 K63 [table.insert]
      485 CALL                             R21 -1 0
      486 MOVE                             R22 R1
      487 GETTABLEKS                       R23 R13 K64 ["MouseLeave"]
      489 NEWCLOSURE                       R25 P3
      490 CAPTURE                          REF R18
      491 CAPTURE                          VAL R16
      492 NAMECALL                         R23 R23 K60 ["Connect"]
      494 CALL                             R23 2 -1
      495 FASTCALL                         TABLE_INSERT ; [+2]
      496 GETIMPORT                        R21 K63 [table.insert]
      498 CALL                             R21 -1 0
      499 GETIMPORT                        R23 K2 [Instance.new]
      501 LOADK                            R24 K17 ["Frame"]
      502 CALL                             R23 1 1
      503 LOADK                            R24 K65 ["CanvasTools"]
      504 SETTABLEKS                       R24 R23 K5 ["Name"]
      506 LOADN                            R24 1
      507 SETTABLEKS                       R24 R23 K11 ["BackgroundTransparency"]
      509 LOADN                            R24 0
      510 SETTABLEKS                       R24 R23 K19 ["BorderSizePixel"]
      512 SETTABLEKS                       R6 R23 K16 ["Parent"]
      514 MOVE                             R22 R23
      515 GETIMPORT                        R23 K28 [UDim2.new]
      517 LOADN                            R24 1
      518 LOADN                            R25 0
      519 LOADN                            R26 0
      520 LOADN                            R27 40
      521 CALL                             R23 4 1
      522 SETTABLEKS                       R23 R22 K9 ["Size"]
      524 LOADN                            R23 10
      525 SETTABLEKS                       R23 R22 K22 ["ZIndex"]
      527 MOVE                             R21 R22
      528 GETIMPORT                        R23 K2 [Instance.new]
      530 LOADK                            R24 K17 ["Frame"]
      531 CALL                             R23 1 1
      532 LOADK                            R24 K66 ["CanvasBody"]
      533 SETTABLEKS                       R24 R23 K5 ["Name"]
      535 LOADN                            R24 1
      536 SETTABLEKS                       R24 R23 K11 ["BackgroundTransparency"]
      538 LOADN                            R24 0
      539 SETTABLEKS                       R24 R23 K19 ["BorderSizePixel"]
      541 SETTABLEKS                       R6 R23 K16 ["Parent"]
      543 MOVE                             R22 R23
      544 GETIMPORT                        R23 K8 [UDim2.fromOffset]
      546 LOADN                            R24 0
      547 LOADN                            R25 40
      548 CALL                             R23 2 1
      549 SETTABLEKS                       R23 R22 K10 ["Position"]
      551 GETIMPORT                        R23 K28 [UDim2.new]
      553 LOADN                            R24 1
      554 LOADN                            R25 0
      555 LOADN                            R26 1
      556 LOADN                            R27 -40
      557 CALL                             R23 4 1
      558 SETTABLEKS                       R23 R22 K9 ["Size"]
      560 LOADB                            R23 1
      561 SETTABLEKS                       R23 R22 K24 ["ClipsDescendants"]
      563 GETIMPORT                        R24 K2 [Instance.new]
      565 LOADK                            R25 K17 ["Frame"]
      566 CALL                             R24 1 1
      567 LOADK                            R25 K67 ["PreviewClip"]
      568 SETTABLEKS                       R25 R24 K5 ["Name"]
      570 LOADN                            R25 1
      571 SETTABLEKS                       R25 R24 K11 ["BackgroundTransparency"]
      573 LOADN                            R25 0
      574 SETTABLEKS                       R25 R24 K19 ["BorderSizePixel"]
      576 SETTABLEKS                       R22 R24 K16 ["Parent"]
      578 MOVE                             R23 R24
      579 GETIMPORT                        R24 K21 [UDim2.fromScale]
      581 LOADN                            R25 1
      582 LOADN                            R26 1
      583 CALL                             R24 2 1
      584 SETTABLEKS                       R24 R23 K9 ["Size"]
      586 LOADB                            R24 1
      587 SETTABLEKS                       R24 R23 K24 ["ClipsDescendants"]
      589 LOADB                            R24 1
      590 SETTABLEKS                       R24 R23 K68 ["Active"]
      592 GETIMPORT                        R25 K2 [Instance.new]
      594 LOADK                            R26 K17 ["Frame"]
      595 CALL                             R25 1 1
      596 LOADK                            R26 K69 ["PreviewInner"]
      597 SETTABLEKS                       R26 R25 K5 ["Name"]
      599 LOADN                            R26 1
      600 SETTABLEKS                       R26 R25 K11 ["BackgroundTransparency"]
      602 LOADN                            R26 0
      603 SETTABLEKS                       R26 R25 K19 ["BorderSizePixel"]
      605 SETTABLEKS                       R23 R25 K16 ["Parent"]
      607 MOVE                             R24 R25
      608 GETIMPORT                        R25 K21 [UDim2.fromScale]
      610 LOADN                            R26 1
      611 LOADN                            R27 1
      612 CALL                             R25 2 1
      613 SETTABLEKS                       R25 R24 K9 ["Size"]
      615 LOADN                            R25 2
      616 SETTABLEKS                       R25 R24 K22 ["ZIndex"]
      618 GETIMPORT                        R26 K2 [Instance.new]
      620 LOADK                            R27 K17 ["Frame"]
      621 CALL                             R26 1 1
      622 LOADK                            R27 K70 ["InputOverlay"]
      623 SETTABLEKS                       R27 R26 K5 ["Name"]
      625 LOADN                            R27 1
      626 SETTABLEKS                       R27 R26 K11 ["BackgroundTransparency"]
      628 LOADN                            R27 0
      629 SETTABLEKS                       R27 R26 K19 ["BorderSizePixel"]
      631 SETTABLEKS                       R23 R26 K16 ["Parent"]
      633 MOVE                             R25 R26
      634 GETIMPORT                        R26 K21 [UDim2.fromScale]
      636 LOADN                            R27 1
      637 LOADN                            R28 1
      638 CALL                             R26 2 1
      639 SETTABLEKS                       R26 R25 K9 ["Size"]
      641 LOADN                            R26 50
      642 SETTABLEKS                       R26 R25 K22 ["ZIndex"]
      644 LOADB                            R26 0
      645 SETTABLEKS                       R26 R25 K68 ["Active"]
      647 GETIMPORT                        R27 K2 [Instance.new]
      649 LOADK                            R28 K17 ["Frame"]
      650 CALL                             R27 1 1
      651 LOADK                            R28 K71 ["FloatingChrome"]
      652 SETTABLEKS                       R28 R27 K5 ["Name"]
      654 LOADN                            R28 1
      655 SETTABLEKS                       R28 R27 K11 ["BackgroundTransparency"]
      657 LOADN                            R28 0
      658 SETTABLEKS                       R28 R27 K19 ["BorderSizePixel"]
      660 SETTABLEKS                       R22 R27 K16 ["Parent"]
      662 MOVE                             R26 R27
      663 GETIMPORT                        R27 K21 [UDim2.fromScale]
      665 LOADN                            R28 1
      666 LOADN                            R29 1
      667 CALL                             R27 2 1
      668 SETTABLEKS                       R27 R26 K9 ["Size"]
      670 LOADN                            R27 60
      671 SETTABLEKS                       R27 R26 K22 ["ZIndex"]
      673 GETIMPORT                        R28 K2 [Instance.new]
      675 LOADK                            R29 K17 ["Frame"]
      676 CALL                             R28 1 1
      677 LOADK                            R29 K72 ["FloatingStoryControls"]
      678 SETTABLEKS                       R29 R28 K5 ["Name"]
      680 LOADN                            R29 1
      681 SETTABLEKS                       R29 R28 K11 ["BackgroundTransparency"]
      683 LOADN                            R29 0
      684 SETTABLEKS                       R29 R28 K19 ["BorderSizePixel"]
      686 SETTABLEKS                       R22 R28 K16 ["Parent"]
      688 MOVE                             R27 R28
      689 GETIMPORT                        R28 K28 [UDim2.new]
      691 LOADN                            R29 0
      692 LOADN                            R30 265
      693 LOADN                            R31 0
      694 LOADN                            R32 0
      695 CALL                             R28 4 1
      696 SETTABLEKS                       R28 R27 K9 ["Size"]
      698 GETIMPORT                        R28 K28 [UDim2.new]
      700 LOADN                            R29 1
      701 LOADN                            R30 -289
      702 LOADN                            R31 0
      703 LOADN                            R32 24
      704 CALL                             R28 4 1
      705 SETTABLEKS                       R28 R27 K10 ["Position"]
      707 GETIMPORT                        R28 K49 [Enum.AutomaticSize.Y]
      709 SETTABLEKS                       R28 R27 K47 ["AutomaticSize"]
      711 LOADN                            R28 0
      712 SETTABLEKS                       R28 R27 K11 ["BackgroundTransparency"]
      714 LOADB                            R28 1
      715 SETTABLEKS                       R28 R27 K68 ["Active"]
      717 LOADB                            R28 0
      718 SETTABLEKS                       R28 R27 K15 ["Visible"]
      720 LOADN                            R28 65
      721 SETTABLEKS                       R28 R27 K22 ["ZIndex"]
      723 GETUPVAL                         R29 1
      724 GETTABLEKS                       R29 R29 K74 ["Images"]
      726 GETTABLEKS                       R28 R29 K73 ["component_assets/dropshadow_17_8"]
      728 GETUPVAL                         R29 2
      729 CALL                             R29 0 2
      730 GETIMPORT                        R31 K2 [Instance.new]
      732 LOADK                            R32 K75 ["ImageLabel"]
      733 CALL                             R31 1 1
      734 LOADK                            R32 K76 ["PopoverShadow"]
      735 SETTABLEKS                       R32 R31 K5 ["Name"]
      737 LOADN                            R32 1
      738 SETTABLEKS                       R32 R31 K11 ["BackgroundTransparency"]
      740 GETTABLEKS                       R32 R28 K77 ["Image"]
      742 SETTABLEKS                       R32 R31 K77 ["Image"]
      744 GETTABLEKS                       R32 R28 K78 ["ImageRectOffset"]
      746 SETTABLEKS                       R32 R31 K78 ["ImageRectOffset"]
      748 GETTABLEKS                       R32 R28 K79 ["ImageRectSize"]
      750 SETTABLEKS                       R32 R31 K79 ["ImageRectSize"]
      752 GETIMPORT                        R32 K81 [Color3.new]
      754 LOADN                            R33 0
      755 LOADN                            R34 0
      756 LOADN                            R35 0
      757 CALL                             R32 3 1
      758 SETTABLEKS                       R32 R31 K82 ["ImageColor3"]
      760 LOADK                            R32 K83 [0.8]
      761 SETTABLEKS                       R32 R31 K84 ["ImageTransparency"]
      763 GETIMPORT                        R32 K87 [Enum.ScaleType.Slice]
      765 SETTABLEKS                       R32 R31 K85 ["ScaleType"]
      767 SETTABLEKS                       R29 R31 K88 ["SliceCenter"]
      769 SETTABLEKS                       R30 R31 K89 ["SliceScale"]
      771 LOADB                            R32 0
      772 SETTABLEKS                       R32 R31 K15 ["Visible"]
      774 LOADN                            R32 64
      775 SETTABLEKS                       R32 R31 K22 ["ZIndex"]
      777 SETTABLEKS                       R22 R31 K16 ["Parent"]
      779 NEWCLOSURE                       R32 P4
      780 CAPTURE                          VAL R27
      781 CAPTURE                          VAL R31
      782 MOVE                             R33 R32
      783 CALL                             R33 0 0
      784 NEWTABLE                         R33 0 3
      786 LOADK                            R36 K90 ["AbsoluteSize"]
      787 LOADK                            R37 K10 ["Position"]
      788 LOADK                            R38 K15 ["Visible"]
      789 SETLIST                          R33 R36 3 [1]
      791 LOADNIL                          R34
      792 LOADNIL                          R35
      793 FORGPREP                         R33
      794 MOVE                             R39 R1
      795 MOVE                             R42 R37
      796 NAMECALL                         R40 R27 K91 ["GetPropertyChangedSignal"]
      798 CALL                             R40 2 1
      799 MOVE                             R42 R32
      800 NAMECALL                         R40 R40 K60 ["Connect"]
      802 CALL                             R40 2 -1
      803 FASTCALL                         TABLE_INSERT ; [+2]
      804 GETIMPORT                        R38 K63 [table.insert]
      806 CALL                             R38 -1 0
      807 FORGLOOP                         R33 2 ; [-14]
      809 GETIMPORT                        R33 K2 [Instance.new]
      811 LOADK                            R34 K92 ["UIStroke"]
      812 CALL                             R33 1 1
      813 LOADK                            R34 K93 ["OuterStroke"]
      814 SETTABLEKS                       R34 R33 K5 ["Name"]
      816 GETIMPORT                        R34 K96 [Enum.ApplyStrokeMode.Border]
      818 SETTABLEKS                       R34 R33 K94 ["ApplyStrokeMode"]
      820 LOADN                            R34 1
      821 SETTABLEKS                       R34 R33 K97 ["Thickness"]
      823 SETTABLEKS                       R27 R33 K16 ["Parent"]
      825 GETTABLEKS                       R35 R7 K31 ["shell"]
      827 GETIMPORT                        R37 K2 [Instance.new]
      829 LOADK                            R38 K17 ["Frame"]
      830 CALL                             R37 1 1
      831 LOADK                            R38 K98 ["DesignTabsHeader"]
      832 SETTABLEKS                       R38 R37 K5 ["Name"]
      834 LOADN                            R38 1
      835 SETTABLEKS                       R38 R37 K11 ["BackgroundTransparency"]
      837 LOADN                            R38 0
      838 SETTABLEKS                       R38 R37 K19 ["BorderSizePixel"]
      840 SETTABLEKS                       R35 R37 K16 ["Parent"]
      842 MOVE                             R36 R37
      843 GETIMPORT                        R37 K28 [UDim2.new]
      845 LOADN                            R38 1
      846 LOADN                            R39 0
      847 LOADN                            R40 0
      848 LOADN                            R41 40
      849 CALL                             R37 4 1
      850 SETTABLEKS                       R37 R36 K9 ["Size"]
      852 LOADN                            R37 10
      853 SETTABLEKS                       R37 R36 K22 ["ZIndex"]
      855 MOVE                             R34 R36
      856 GETIMPORT                        R35 K28 [UDim2.new]
      858 LOADN                            R36 1
      859 LOADN                            R37 -1
      860 LOADN                            R38 0
      861 LOADN                            R39 40
      862 CALL                             R35 4 1
      863 SETTABLEKS                       R35 R34 K9 ["Size"]
      865 GETIMPORT                        R35 K8 [UDim2.fromOffset]
      867 LOADN                            R36 1
      868 LOADN                            R37 0
      869 CALL                             R35 2 1
      870 SETTABLEKS                       R35 R34 K10 ["Position"]
      872 GETTABLEKS                       R36 R7 K31 ["shell"]
      874 GETIMPORT                        R37 K2 [Instance.new]
      876 LOADK                            R38 K17 ["Frame"]
      877 CALL                             R37 1 1
      878 LOADK                            R38 K99 ["DesignRegion"]
      879 SETTABLEKS                       R38 R37 K5 ["Name"]
      881 LOADN                            R38 1
      882 SETTABLEKS                       R38 R37 K11 ["BackgroundTransparency"]
      884 LOADN                            R38 0
      885 SETTABLEKS                       R38 R37 K19 ["BorderSizePixel"]
      887 SETTABLEKS                       R36 R37 K16 ["Parent"]
      889 MOVE                             R35 R37
      890 GETIMPORT                        R36 K8 [UDim2.fromOffset]
      892 LOADN                            R37 1
      893 LOADN                            R38 40
      894 CALL                             R36 2 1
      895 SETTABLEKS                       R36 R35 K10 ["Position"]
      897 GETIMPORT                        R36 K28 [UDim2.new]
      899 LOADN                            R37 1
      900 LOADN                            R38 -1
      901 LOADN                            R39 1
      902 LOADN                            R40 -219
      903 CALL                             R36 4 1
      904 SETTABLEKS                       R36 R35 K9 ["Size"]
      906 LOADB                            R36 1
      907 SETTABLEKS                       R36 R35 K24 ["ClipsDescendants"]
      909 GETIMPORT                        R37 K2 [Instance.new]
      911 LOADK                            R38 K42 ["ScrollingFrame"]
      912 CALL                             R37 1 1
      913 LOADK                            R38 K100 ["PropertiesPanel"]
      914 SETTABLEKS                       R38 R37 K5 ["Name"]
      916 LOADN                            R38 1
      917 SETTABLEKS                       R38 R37 K11 ["BackgroundTransparency"]
      919 LOADN                            R38 0
      920 SETTABLEKS                       R38 R37 K19 ["BorderSizePixel"]
      922 LOADN                            R38 4
      923 SETTABLEKS                       R38 R37 K44 ["ScrollBarThickness"]
      925 GETIMPORT                        R38 K21 [UDim2.fromScale]
      927 LOADN                            R39 0
      928 LOADN                            R40 0
      929 CALL                             R38 2 1
      930 SETTABLEKS                       R38 R37 K45 ["CanvasSize"]
      932 GETIMPORT                        R38 K49 [Enum.AutomaticSize.Y]
      934 SETTABLEKS                       R38 R37 K50 ["AutomaticCanvasSize"]
      936 SETTABLEKS                       R35 R37 K16 ["Parent"]
      938 MOVE                             R36 R37
      939 GETIMPORT                        R37 K21 [UDim2.fromScale]
      941 LOADN                            R38 1
      942 LOADN                            R39 1
      943 CALL                             R37 2 1
      944 SETTABLEKS                       R37 R36 K9 ["Size"]
      946 GETIMPORT                        R37 K2 [Instance.new]
      948 LOADK                            R38 K101 ["UIListLayout"]
      949 CALL                             R37 1 1
      950 GETIMPORT                        R38 K104 [Enum.SortOrder.LayoutOrder]
      952 SETTABLEKS                       R38 R37 K102 ["SortOrder"]
      954 GETIMPORT                        R38 K56 [UDim.new]
      956 LOADN                            R39 0
      957 LOADN                            R40 0
      958 CALL                             R38 2 1
      959 SETTABLEKS                       R38 R37 K105 ["Padding"]
      961 SETTABLEKS                       R36 R37 K16 ["Parent"]
      963 GETIMPORT                        R39 K2 [Instance.new]
      965 LOADK                            R40 K17 ["Frame"]
      966 CALL                             R39 1 1
      967 LOADK                            R40 K106 ["BindingsHost"]
      968 SETTABLEKS                       R40 R39 K5 ["Name"]
      970 LOADN                            R40 1
      971 SETTABLEKS                       R40 R39 K11 ["BackgroundTransparency"]
      973 LOADN                            R40 0
      974 SETTABLEKS                       R40 R39 K19 ["BorderSizePixel"]
      976 SETTABLEKS                       R35 R39 K16 ["Parent"]
      978 MOVE                             R38 R39
      979 GETIMPORT                        R39 K21 [UDim2.fromScale]
      981 LOADN                            R40 1
      982 LOADN                            R41 1
      983 CALL                             R39 2 1
      984 SETTABLEKS                       R39 R38 K9 ["Size"]
      986 LOADB                            R39 0
      987 SETTABLEKS                       R39 R38 K15 ["Visible"]
      989 GETIMPORT                        R40 K2 [Instance.new]
      991 LOADK                            R41 K17 ["Frame"]
      992 CALL                             R40 1 1
      993 LOADK                            R41 K107 ["InspectHost"]
      994 SETTABLEKS                       R41 R40 K5 ["Name"]
      996 LOADN                            R41 1
      997 SETTABLEKS                       R41 R40 K11 ["BackgroundTransparency"]
      999 LOADN                            R41 0
     1000 SETTABLEKS                       R41 R40 K19 ["BorderSizePixel"]
     1002 SETTABLEKS                       R35 R40 K16 ["Parent"]
     1004 MOVE                             R39 R40
     1005 GETIMPORT                        R40 K21 [UDim2.fromScale]
     1007 LOADN                            R41 1
     1008 LOADN                            R42 1
     1009 CALL                             R40 2 1
     1010 SETTABLEKS                       R40 R39 K9 ["Size"]
     1012 LOADB                            R40 0
     1013 SETTABLEKS                       R40 R39 K15 ["Visible"]
     1015 GETTABLEKS                       R41 R7 K31 ["shell"]
     1017 GETIMPORT                        R42 K2 [Instance.new]
     1019 LOADK                            R43 K17 ["Frame"]
     1020 CALL                             R42 1 1
     1021 LOADK                            R43 K108 ["AssistantSection"]
     1022 SETTABLEKS                       R43 R42 K5 ["Name"]
     1024 LOADN                            R43 1
     1025 SETTABLEKS                       R43 R42 K11 ["BackgroundTransparency"]
     1027 LOADN                            R43 0
     1028 SETTABLEKS                       R43 R42 K19 ["BorderSizePixel"]
     1030 SETTABLEKS                       R41 R42 K16 ["Parent"]
     1032 MOVE                             R40 R42
     1033 GETIMPORT                        R41 K28 [UDim2.new]
     1035 LOADN                            R42 0
     1036 LOADN                            R43 1
     1037 LOADN                            R44 1
     1038 LOADN                            R45 -179
     1039 CALL                             R41 4 1
     1040 SETTABLEKS                       R41 R40 K10 ["Position"]
     1042 GETIMPORT                        R41 K28 [UDim2.new]
     1044 LOADN                            R42 1
     1045 LOADN                            R43 -1
     1046 LOADN                            R44 0
     1047 LOADN                            R45 179
     1048 CALL                             R41 4 1
     1049 SETTABLEKS                       R41 R40 K9 ["Size"]
     1051 GETIMPORT                        R43 K2 [Instance.new]
     1053 LOADK                            R44 K17 ["Frame"]
     1054 CALL                             R43 1 1
     1055 LOADK                            R44 K109 ["AssistantDivider"]
     1056 SETTABLEKS                       R44 R43 K5 ["Name"]
     1058 LOADN                            R44 1
     1059 SETTABLEKS                       R44 R43 K11 ["BackgroundTransparency"]
     1061 LOADN                            R44 0
     1062 SETTABLEKS                       R44 R43 K19 ["BorderSizePixel"]
     1064 SETTABLEKS                       R40 R43 K16 ["Parent"]
     1066 MOVE                             R42 R43
     1067 GETIMPORT                        R43 K28 [UDim2.new]
     1069 LOADN                            R44 1
     1070 LOADN                            R45 0
     1071 LOADN                            R46 0
     1072 LOADN                            R47 1
     1073 CALL                             R43 4 1
     1074 SETTABLEKS                       R43 R42 K9 ["Size"]
     1076 LOADN                            R43 20
     1077 SETTABLEKS                       R43 R42 K22 ["ZIndex"]
     1079 DUPTABLE                         R41 K40 [{"divider"}]
     1080 SETTABLEKS                       R42 R41 K39 ["divider"]
     1082 GETIMPORT                        R44 K2 [Instance.new]
     1084 LOADK                            R45 K17 ["Frame"]
     1085 CALL                             R44 1 1
     1086 LOADK                            R45 K110 ["AssistantHeader"]
     1087 SETTABLEKS                       R45 R44 K5 ["Name"]
     1089 LOADN                            R45 1
     1090 SETTABLEKS                       R45 R44 K11 ["BackgroundTransparency"]
     1092 LOADN                            R45 0
     1093 SETTABLEKS                       R45 R44 K19 ["BorderSizePixel"]
     1095 SETTABLEKS                       R40 R44 K16 ["Parent"]
     1097 MOVE                             R43 R44
     1098 GETIMPORT                        R44 K28 [UDim2.new]
     1100 LOADN                            R45 1
     1101 LOADN                            R46 0
     1102 LOADN                            R47 0
     1103 LOADN                            R48 40
     1104 CALL                             R44 4 1
     1105 SETTABLEKS                       R44 R43 K9 ["Size"]
     1107 LOADN                            R44 10
     1108 SETTABLEKS                       R44 R43 K22 ["ZIndex"]
     1110 MOVE                             R42 R43
     1111 GETIMPORT                        R44 K2 [Instance.new]
     1113 LOADK                            R45 K17 ["Frame"]
     1114 CALL                             R44 1 1
     1115 LOADK                            R45 K111 ["ChatPanel"]
     1116 SETTABLEKS                       R45 R44 K5 ["Name"]
     1118 LOADN                            R45 1
     1119 SETTABLEKS                       R45 R44 K11 ["BackgroundTransparency"]
     1121 LOADN                            R45 0
     1122 SETTABLEKS                       R45 R44 K19 ["BorderSizePixel"]
     1124 SETTABLEKS                       R40 R44 K16 ["Parent"]
     1126 MOVE                             R43 R44
     1127 GETIMPORT                        R44 K8 [UDim2.fromOffset]
     1129 LOADN                            R45 0
     1130 LOADN                            R46 40
     1131 CALL                             R44 2 1
     1132 SETTABLEKS                       R44 R43 K10 ["Position"]
     1134 GETIMPORT                        R44 K28 [UDim2.new]
     1136 LOADN                            R45 1
     1137 LOADN                            R46 0
     1138 LOADN                            R47 1
     1139 LOADN                            R48 -40
     1140 CALL                             R44 4 1
     1141 SETTABLEKS                       R44 R43 K9 ["Size"]
     1143 LOADB                            R44 1
     1144 SETTABLEKS                       R44 R43 K24 ["ClipsDescendants"]
     1146 NEWTABLE                         R44 64 0
     1148 SETTABLEKS                       R2 R44 K112 ["titleLabel"]
     1150 SETTABLEKS                       R3 R44 K113 ["overlayFrame"]
     1152 SETTABLEKS                       R4 R44 K114 ["contentFrame"]
     1154 SETTABLEKS                       R5 R44 K115 ["primary"]
     1156 SETTABLEKS                       R6 R44 K116 ["canvasPaneFrame"]
     1158 SETTABLEKS                       R7 R44 K117 ["secondary"]
     1160 SETTABLEKS                       R8 R44 K118 ["primaryContextHeaderFrame"]
     1162 SETTABLEKS                       R10 R44 K119 ["primaryTabsHeaderFrame"]
     1164 SETTABLEKS                       R9 R44 K120 ["screensSection"]
     1166 SETTABLEKS                       R11 R44 K121 ["screensHostFrame"]
     1168 SETTABLEKS                       R12 R44 K122 ["libraryHostFrame"]
     1170 SETTABLEKS                       R13 R44 K123 ["layersSection"]
     1172 SETTABLEKS                       R14 R44 K124 ["layersSectionDivider"]
     1174 SETTABLEKS                       R15 R44 K125 ["layersHeaderFrame"]
     1176 SETTABLEKS                       R16 R44 K126 ["layersPanel"]
     1178 SETTABLEKS                       R21 R44 K127 ["headerBarFrame"]
     1180 SETTABLEKS                       R22 R44 K128 ["canvasBodyFrame"]
     1182 SETTABLEKS                       R23 R44 K129 ["previewClipFrame"]
     1184 SETTABLEKS                       R24 R44 K130 ["previewFrame"]
     1186 SETTABLEKS                       R25 R44 K131 ["inputOverlay"]
     1188 SETTABLEKS                       R26 R44 K132 ["floatingChromeFrame"]
     1190 SETTABLEKS                       R27 R44 K133 ["floatingStoryControlsFrame"]
     1192 SETTABLEKS                       R33 R44 K134 ["floatingStoryControlsStroke"]
     1194 SETTABLEKS                       R34 R44 K135 ["secondaryTabsHeaderFrame"]
     1196 SETTABLEKS                       R35 R44 K136 ["designRegion"]
     1198 SETTABLEKS                       R36 R44 K137 ["propertiesPanel"]
     1200 SETTABLEKS                       R38 R44 K138 ["bindingsHostFrame"]
     1202 SETTABLEKS                       R39 R44 K139 ["inspectHostFrame"]
     1204 SETTABLEKS                       R40 R44 K140 ["assistantSection"]
     1206 SETTABLEKS                       R41 R44 K141 ["assistantSectionDivider"]
     1208 SETTABLEKS                       R42 R44 K142 ["assistantHeaderFrame"]
     1210 SETTABLEKS                       R43 R44 K143 ["chatPanelFrame"]
     1212 SETTABLEKS                       R19 R44 K144 ["applyLayersScrollbarVisibility"]
     1214 SETTABLEKS                       R20 R44 K145 ["setLayersScrollbarVisible"]
     1216 SETTABLEKS                       R1 R44 K146 ["idleConnections"]
     1218 CLOSEUPVALS                      R18
     1219 RETURN                           R44 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["DesignAssist"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 FASTCALL2K                       ASSERT R0 K4 ; [+5]
        9 MOVE                             R2 R0
       10 LOADK                            R3 K4 ["WorkspaceShell must run inside the DesignAssist plugin tree"]
       11 GETIMPORT                        R1 K6 [assert]
       13 CALL                             R1 2 0
       14 GETIMPORT                        R1 K8 [require]
       16 GETTABLEKS                       R2 R0 K9 ["Packages"]
       18 GETTABLEKS                       R2 R2 K10 ["_Index"]
       20 GETTABLEKS                       R2 R2 K11 ["Foundation"]
       22 GETTABLEKS                       R2 R2 K12 ["FoundationImages"]
       24 CALL                             R1 1 1
       25 NEWTABLE                         R2 1 0
       27 DUPCLOSURE                       R3 K13 [PROTO_0]
       28 DUPCLOSURE                       R4 K14 [PROTO_1]
       29 DUPCLOSURE                       R5 K15 [PROTO_2]
       30 DUPCLOSURE                       R6 K16 [PROTO_3]
       31 DUPCLOSURE                       R7 K17 [PROTO_4]
       32 DUPCLOSURE                       R8 K18 [PROTO_5]
       33 CAPTURE                          VAL R1
       34 DUPCLOSURE                       R9 K19 [PROTO_11]
       35 CAPTURE                          VAL R5
       36 CAPTURE                          VAL R1
       37 CAPTURE                          VAL R8
       38 SETTABLEKS                       R9 R2 K20 ["new"]
       40 RETURN                           R2 1
