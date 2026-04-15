PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["dataSource"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K1 ["dimensions"]
        7 GETUPVAL                         R4 1
        8 GETTABLEKS                       R3 R4 K2 ["direction"]
       10 CALL                             R0 3 -1
       11 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["destroy"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R1 R2 K0 ["getCanvasSize"]
        4 CALL                             R1 0 -1
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["bindToUpdate"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U0
        6 CALL                             R0 1 -1
        7 RETURN                           R0 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteWindowSize"]
        3 CALL                             R1 1 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["setWindowSize"]
        7 GETTABLEKS                       R2 R0 K0 ["AbsoluteWindowSize"]
        9 CALL                             R1 1 0
       10 GETUPVAL                         R2 2
       11 GETTABLEKS                       R1 R2 K2 ["onAbsoluteWindowSizeChanged"]
       13 JUMPIFEQKNIL                     R1 ; [+7]
       15 GETUPVAL                         R2 2
       16 GETTABLEKS                       R1 R2 K2 ["onAbsoluteWindowSizeChanged"]
       18 GETTABLEKS                       R2 R0 K0 ["AbsoluteWindowSize"]
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setScrollAxis"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 GETUPVAL                         R0 2
        6 GETUPVAL                         R1 1
        7 CALL                             R0 1 0
        8 GETUPVAL                         R1 3
        9 GETTABLEKS                       R0 R1 K1 ["onScrollAxisChanged"]
       11 JUMPIFEQKNIL                     R0 ; [+6]
       13 GETUPVAL                         R1 3
       14 GETTABLEKS                       R0 R1 K1 ["onScrollAxisChanged"]
       16 GETUPVAL                         R1 1
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["direction"]
        3 JUMPIFNOTEQKS                    R2 K1 ["x"] ; [+6]
        5 GETTABLEKS                       R2 R0 K2 ["CanvasPosition"]
        7 GETTABLEKS                       R1 R2 K3 ["X"]
        9 JUMP                             ; [+15]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K0 ["direction"]
       13 JUMPIFNOTEQKS                    R2 K4 ["y"] ; [+6]
       15 GETTABLEKS                       R2 R0 K2 ["CanvasPosition"]
       17 GETTABLEKS                       R1 R2 K5 ["Y"]
       19 JUMP                             ; [+5]
       20 GETUPVAL                         R1 1
       21 GETUPVAL                         R3 0
       22 GETTABLEKS                       R2 R3 K0 ["direction"]
       24 CALL                             R1 1 1
       25 GETUPVAL                         R3 2
       26 GETTABLEKS                       R2 R3 K6 ["Heartbeat"]
       28 NEWCLOSURE                       R4 P0
       29 CAPTURE                          UPVAL U3
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          UPVAL U0
       33 NAMECALL                         R2 R2 K7 ["Once"]
       35 CALL                             R2 2 0
       36 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setDataSource"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["dataSource"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["setDimensions"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["dimensions"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_10:
        0 GETIMPORT                        R1 K2 [UDim2.fromOffset]
        2 GETTABLEKS                       R2 R0 K3 ["X"]
        4 GETTABLEKS                       R3 R0 K4 ["Y"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 NEWCLOSURE                       R2 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["useEffect"]
       10 NEWCLOSURE                       R3 P1
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 0
       14 CALL                             R2 2 0
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K2 ["useBinding"]
       18 GETTABLEKS                       R3 R1 K3 ["getCanvasSize"]
       20 CALL                             R3 0 -1
       21 CALL                             R2 -1 2
       22 GETUPVAL                         R5 0
       23 GETTABLEKS                       R4 R5 K2 ["useBinding"]
       25 GETIMPORT                        R5 K6 [Vector2.zero]
       27 CALL                             R4 1 2
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K2 ["useBinding"]
       31 LOADN                            R7 0
       32 CALL                             R6 1 2
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R8 R9 K1 ["useEffect"]
       36 NEWCLOSURE                       R9 P2
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R3
       39 NEWTABLE                         R10 0 0
       41 CALL                             R8 2 0
       42 GETUPVAL                         R9 0
       43 GETTABLEKS                       R8 R9 K7 ["useCallback"]
       45 NEWCLOSURE                       R9 P3
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R0
       49 NEWTABLE                         R10 0 2
       51 GETTABLEKS                       R11 R0 K8 ["direction"]
       53 GETTABLEKS                       R12 R0 K9 ["onAbsoluteWindowSizeChanged"]
       55 SETLIST                          R10 R11 2 [1]
       57 CALL                             R8 2 1
       58 GETUPVAL                         R10 0
       59 GETTABLEKS                       R9 R10 K7 ["useCallback"]
       61 NEWCLOSURE                       R10 P4
       62 CAPTURE                          VAL R0
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          UPVAL U3
       65 CAPTURE                          VAL R1
       66 CAPTURE                          VAL R7
       67 NEWTABLE                         R11 0 2
       69 GETTABLEKS                       R12 R0 K8 ["direction"]
       71 GETTABLEKS                       R13 R0 K10 ["onScrollAxisChanged"]
       73 SETLIST                          R11 R12 2 [1]
       75 CALL                             R9 2 1
       76 GETUPVAL                         R11 0
       77 GETTABLEKS                       R10 R11 K1 ["useEffect"]
       79 NEWCLOSURE                       R11 P5
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R0
       82 NEWTABLE                         R12 0 1
       84 GETTABLEKS                       R13 R0 K11 ["dataSource"]
       86 SETLIST                          R12 R13 1 [1]
       88 CALL                             R10 2 0
       89 GETUPVAL                         R11 0
       90 GETTABLEKS                       R10 R11 K1 ["useEffect"]
       92 NEWCLOSURE                       R11 P6
       93 CAPTURE                          VAL R1
       94 CAPTURE                          VAL R0
       95 NEWTABLE                         R12 0 1
       97 GETTABLEKS                       R13 R0 K12 ["dimensions"]
       99 SETLIST                          R12 R13 1 [1]
      101 CALL                             R10 2 0
      102 NEWTABLE                         R10 8 0
      104 GETIMPORT                        R11 K15 [UDim2.fromScale]
      106 LOADN                            R12 1
      107 LOADN                            R13 1
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K16 ["Size"]
      111 SETTABLEKS                       R2 R10 K17 ["CanvasSize"]
      113 GETUPVAL                         R13 0
      114 GETTABLEKS                       R12 R13 K18 ["Change"]
      116 GETTABLEKS                       R11 R12 K19 ["AbsoluteWindowSize"]
      118 SETTABLE                         R8 R10 R11
      119 GETUPVAL                         R13 0
      120 GETTABLEKS                       R12 R13 K18 ["Change"]
      122 GETTABLEKS                       R11 R12 K20 ["CanvasPosition"]
      124 SETTABLE                         R9 R10 R11
      125 GETUPVAL                         R12 0
      126 GETTABLEKS                       R11 R12 K21 ["Tag"]
      128 GETTABLEKS                       R12 R0 K22 ["tag"]
      130 SETTABLE                         R12 R10 R11
      131 GETTABLEKS                       R11 R0 K23 ["scrollingFrameRef"]
      133 SETTABLEKS                       R11 R10 K24 ["ref"]
      135 GETTABLEKS                       R11 R0 K25 ["native"]
      137 JUMPIFEQKNIL                     R11 ; [+21]
      139 GETTABLEKS                       R11 R0 K25 ["native"]
      141 LOADNIL                          R12
      142 LOADNIL                          R13
      143 FORGPREP                         R11
      144 GETTABLE                         R16 R10 R14
      145 JUMPIFEQKNIL                     R16 ; [+10]
      147 GETIMPORT                        R16 K27 [error]
      149 LOADK                            R18 K28 ["%* is already used by UltimateList"]
      150 MOVE                             R20 R14
      151 NAMECALL                         R18 R18 K29 ["format"]
      153 CALL                             R18 2 1
      154 MOVE                             R17 R18
      155 CALL                             R16 1 0
      156 SETTABLE                         R15 R10 R14
      157 FORGLOOP                         R11 2 ; [-14]
      159 GETUPVAL                         R11 4
      160 LOADK                            R12 K30 ["Frame"]
      161 DUPTABLE                         R13 K32 [{"BackgroundTransparency", "Size"}]
      162 LOADN                            R14 1
      163 SETTABLEKS                       R14 R13 K31 ["BackgroundTransparency"]
      165 GETIMPORT                        R14 K15 [UDim2.fromScale]
      167 LOADN                            R15 1
      168 LOADN                            R16 1
      169 CALL                             R14 2 1
      170 SETTABLEKS                       R14 R13 K16 ["Size"]
      172 DUPTABLE                         R14 K35 [{"ScrollingFrame", "RendererOverlay"}]
      173 GETUPVAL                         R15 4
      174 LOADK                            R16 K33 ["ScrollingFrame"]
      175 MOVE                             R17 R10
      176 CALL                             R15 2 1
      177 SETTABLEKS                       R15 R14 K33 ["ScrollingFrame"]
      179 GETUPVAL                         R15 4
      180 LOADK                            R16 K30 ["Frame"]
      181 DUPTABLE                         R17 K38 [{"BackgroundTransparency", "ClipsDescendants", "Size", "ZIndex"}]
      182 LOADN                            R18 1
      183 SETTABLEKS                       R18 R17 K31 ["BackgroundTransparency"]
      185 LOADB                            R18 1
      186 SETTABLEKS                       R18 R17 K36 ["ClipsDescendants"]
      188 DUPCLOSURE                       R20 K39 [PROTO_10]
      189 NAMECALL                         R18 R4 K40 ["map"]
      191 CALL                             R18 2 1
      192 SETTABLEKS                       R18 R17 K16 ["Size"]
      194 LOADN                            R18 2
      195 SETTABLEKS                       R18 R17 K37 ["ZIndex"]
      197 DUPTABLE                         R18 K42 [{"Renderer"}]
      198 GETTABLEKS                       R21 R0 K43 ["renderer"]
      200 GETTABLEKS                       R20 R21 K44 ["type"]
      202 JUMPIFNOTEQKS                    R20 K45 ["byState"] ; [+34]
      204 GETUPVAL                         R19 4
      205 GETUPVAL                         R20 5
      206 DUPTABLE                         R21 K51 [{"virtualizedListController", "config", "dimensions", "direction", "callback", "getKey", "scrollAxisBinding"}]
      207 SETTABLEKS                       R1 R21 K46 ["virtualizedListController"]
      209 GETTABLEKS                       R23 R0 K43 ["renderer"]
      211 GETTABLEKS                       R22 R23 K47 ["config"]
      213 SETTABLEKS                       R22 R21 K47 ["config"]
      215 GETTABLEKS                       R22 R0 K12 ["dimensions"]
      217 SETTABLEKS                       R22 R21 K12 ["dimensions"]
      219 GETTABLEKS                       R22 R0 K8 ["direction"]
      221 SETTABLEKS                       R22 R21 K8 ["direction"]
      223 GETTABLEKS                       R23 R0 K43 ["renderer"]
      225 GETTABLEKS                       R22 R23 K48 ["callback"]
      227 SETTABLEKS                       R22 R21 K48 ["callback"]
      229 GETTABLEKS                       R22 R0 K49 ["getKey"]
      231 SETTABLEKS                       R22 R21 K49 ["getKey"]
      233 SETTABLEKS                       R6 R21 K50 ["scrollAxisBinding"]
      235 CALL                             R19 2 1
      236 JUMP                             ; [+39]
      237 GETTABLEKS                       R21 R0 K43 ["renderer"]
      239 GETTABLEKS                       R20 R21 K44 ["type"]
      241 JUMPIFNOTEQKS                    R20 K52 ["byBinding"] ; [+28]
      243 GETUPVAL                         R19 4
      244 GETUPVAL                         R20 6
      245 DUPTABLE                         R21 K53 [{"virtualizedListController", "scrollAxisBinding", "dimensions", "direction", "callback", "getKey"}]
      246 SETTABLEKS                       R1 R21 K46 ["virtualizedListController"]
      248 SETTABLEKS                       R6 R21 K50 ["scrollAxisBinding"]
      250 GETTABLEKS                       R22 R0 K12 ["dimensions"]
      252 SETTABLEKS                       R22 R21 K12 ["dimensions"]
      254 GETTABLEKS                       R22 R0 K8 ["direction"]
      256 SETTABLEKS                       R22 R21 K8 ["direction"]
      258 GETTABLEKS                       R23 R0 K43 ["renderer"]
      260 GETTABLEKS                       R22 R23 K48 ["callback"]
      262 SETTABLEKS                       R22 R21 K48 ["callback"]
      264 GETTABLEKS                       R22 R0 K49 ["getKey"]
      266 SETTABLEKS                       R22 R21 K49 ["getKey"]
      268 CALL                             R19 2 1
      269 JUMP                             ; [+6]
      270 GETUPVAL                         R19 2
      271 GETTABLEKS                       R21 R0 K43 ["renderer"]
      273 GETTABLEKS                       R20 R21 K44 ["type"]
      275 CALL                             R19 1 1
      276 SETTABLEKS                       R19 R18 K41 ["Renderer"]
      278 CALL                             R15 3 1
      279 SETTABLEKS                       R15 R14 K34 ["RendererOverlay"]
      281 CALL                             R11 3 -1
      282 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["RunService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ultimate-list"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["DataSources"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K9 [require]
       20 GETTABLEKS                       R4 R1 K11 ["Dimensions"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K9 [require]
       25 GETTABLEKS                       R6 R1 K12 ["Parent"]
       27 GETTABLEKS                       R5 R6 K13 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K9 [require]
       32 GETTABLEKS                       R7 R1 K14 ["Renderers"]
       34 GETTABLEKS                       R6 R7 K15 ["ReactBindingsRenderer"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K9 [require]
       39 GETTABLEKS                       R8 R1 K14 ["Renderers"]
       41 GETTABLEKS                       R7 R8 K16 ["ReactStateRenderer"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K9 [require]
       46 GETTABLEKS                       R8 R1 K14 ["Renderers"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K9 [require]
       51 GETTABLEKS                       R9 R1 K17 ["createVirtualizedListController"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K9 [require]
       56 GETTABLEKS                       R11 R1 K18 ["Util"]
       58 GETTABLEKS                       R10 R11 K19 ["exhaustiveMatch"]
       60 CALL                             R9 1 1
       61 GETTABLEKS                       R10 R4 K20 ["createElement"]
       63 DUPCLOSURE                       R11 K21 [PROTO_11]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R5
       71 RETURN                           R11 1
