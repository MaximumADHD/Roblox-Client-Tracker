PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 DUPTABLE                         R3 K1 [{"expanded"}]
        3 GETUPVAL                         R5 2
        4 NOT                              R4 R5
        5 SETTABLEKS                       R4 R3 K0 ["expanded"]
        7 NAMECALL                         R0 R0 K2 ["logEvent"]
        9 CALL                             R0 3 0
       10 GETUPVAL                         R0 3
       11 GETUPVAL                         R2 2
       12 NOT                              R1 R2
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["useState"]
        7 LOADB                            R3 0
        8 CALL                             R2 1 2
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K2 ["createElement"]
       12 LOADK                            R5 K3 ["Frame"]
       13 NEWTABLE                         R6 8 0
       15 GETIMPORT                        R7 K7 [Enum.AutomaticSize.Y]
       17 SETTABLEKS                       R7 R6 K5 ["AutomaticSize"]
       19 GETIMPORT                        R7 K10 [UDim2.fromScale]
       21 LOADN                            R8 1
       22 LOADN                            R9 0
       23 CALL                             R7 2 1
       24 SETTABLEKS                       R7 R6 K11 ["Size"]
       26 LOADN                            R7 1
       27 SETTABLEKS                       R7 R6 K12 ["BackgroundTransparency"]
       29 GETTABLEKS                       R7 R0 K13 ["LayoutOrder"]
       31 SETTABLEKS                       R7 R6 K13 ["LayoutOrder"]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K14 ["Tag"]
       36 LOADK                            R8 K15 ["Component-DropdownDrawer"]
       37 SETTABLE                         R8 R6 R7
       38 DUPTABLE                         R7 K21 [{"Layout", "TopContentFrame", "PaddingFrame", "ExpandingContentFrame", "DividerFrame"}]
       39 GETUPVAL                         R8 1
       40 GETTABLEKS                       R8 R8 K2 ["createElement"]
       42 LOADK                            R9 K22 ["UIListLayout"]
       43 DUPTABLE                         R10 K28 [{"Padding", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder"}]
       44 GETIMPORT                        R11 K31 [UDim.new]
       46 LOADN                            R12 0
       47 LOADN                            R13 0
       48 CALL                             R11 2 1
       49 SETTABLEKS                       R11 R10 K23 ["Padding"]
       51 GETIMPORT                        R11 K33 [Enum.FillDirection.Vertical]
       53 SETTABLEKS                       R11 R10 K24 ["FillDirection"]
       55 GETIMPORT                        R11 K35 [Enum.HorizontalAlignment.Left]
       57 SETTABLEKS                       R11 R10 K25 ["HorizontalAlignment"]
       59 GETIMPORT                        R11 K37 [Enum.VerticalAlignment.Top]
       61 SETTABLEKS                       R11 R10 K26 ["VerticalAlignment"]
       63 GETIMPORT                        R11 K38 [Enum.SortOrder.LayoutOrder]
       65 SETTABLEKS                       R11 R10 K27 ["SortOrder"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K16 ["Layout"]
       70 GETUPVAL                         R8 1
       71 GETTABLEKS                       R8 R8 K2 ["createElement"]
       73 LOADK                            R9 K3 ["Frame"]
       74 DUPTABLE                         R10 K39 [{"AutomaticSize", "Size", "BackgroundTransparency", "LayoutOrder"}]
       75 GETIMPORT                        R11 K7 [Enum.AutomaticSize.Y]
       77 SETTABLEKS                       R11 R10 K5 ["AutomaticSize"]
       79 GETIMPORT                        R11 K10 [UDim2.fromScale]
       81 LOADN                            R12 1
       82 LOADN                            R13 0
       83 CALL                             R11 2 1
       84 SETTABLEKS                       R11 R10 K11 ["Size"]
       86 LOADN                            R11 1
       87 SETTABLEKS                       R11 R10 K12 ["BackgroundTransparency"]
       89 LOADN                            R11 1
       90 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
       92 DUPTABLE                         R11 K42 [{"DropArrow", "TopContent"}]
       93 GETUPVAL                         R12 1
       94 GETTABLEKS                       R12 R12 K2 ["createElement"]
       96 LOADK                            R13 K43 ["ImageButton"]
       97 NEWTABLE                         R14 8 0
       99 LOADN                            R15 1
      100 SETTABLEKS                       R15 R14 K12 ["BackgroundTransparency"]
      102 GETUPVAL                         R15 1
      103 GETTABLEKS                       R15 R15 K14 ["Tag"]
      105 JUMPIFNOT                        R2 ; [+2]
      106 LOADK                            R16 K44 ["UseUpArrow"]
      107 JUMP                             ; [+1]
      108 LOADK                            R16 K45 ["UseDownArrow"]
      109 SETTABLE                         R16 R14 R15
      110 GETIMPORT                        R15 K47 [Vector2.new]
      112 LOADN                            R16 1
      113 LOADN                            R17 1
      114 CALL                             R15 2 1
      115 SETTABLEKS                       R15 R14 K48 ["AnchorPoint"]
      117 GETIMPORT                        R15 K49 [UDim2.new]
      119 LOADN                            R16 0
      120 LOADN                            R17 16
      121 LOADN                            R18 0
      122 LOADN                            R19 16
      123 CALL                             R15 4 1
      124 SETTABLEKS                       R15 R14 K11 ["Size"]
      126 GETIMPORT                        R15 K49 [UDim2.new]
      128 LOADN                            R16 1
      129 LOADN                            R17 244
      130 LOADN                            R18 1
      131 LOADN                            R19 4
      132 CALL                             R15 4 1
      133 SETTABLEKS                       R15 R14 K50 ["Position"]
      135 GETUPVAL                         R15 1
      136 GETTABLEKS                       R15 R15 K51 ["Event"]
      138 GETTABLEKS                       R15 R15 K52 ["Activated"]
      140 NEWCLOSURE                       R16 P0
      141 CAPTURE                          VAL R1
      142 CAPTURE                          UPVAL U2
      143 CAPTURE                          VAL R2
      144 CAPTURE                          VAL R3
      145 SETTABLE                         R16 R14 R15
      146 LOADN                            R15 2
      147 SETTABLEKS                       R15 R14 K13 ["LayoutOrder"]
      149 CALL                             R12 2 1
      150 SETTABLEKS                       R12 R11 K40 ["DropArrow"]
      152 GETTABLEKS                       R12 R0 K41 ["TopContent"]
      154 SETTABLEKS                       R12 R11 K41 ["TopContent"]
      156 CALL                             R8 3 1
      157 SETTABLEKS                       R8 R7 K17 ["TopContentFrame"]
      159 GETUPVAL                         R8 1
      160 GETTABLEKS                       R8 R8 K2 ["createElement"]
      162 LOADK                            R9 K3 ["Frame"]
      163 DUPTABLE                         R10 K54 [{"BorderSizePixel", "LayoutOrder", "Size"}]
      164 LOADN                            R11 0
      165 SETTABLEKS                       R11 R10 K53 ["BorderSizePixel"]
      167 LOADN                            R11 2
      168 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
      170 GETIMPORT                        R11 K49 [UDim2.new]
      172 LOADN                            R12 0
      173 LOADN                            R13 0
      174 LOADN                            R14 0
      175 LOADN                            R15 8
      176 CALL                             R11 4 1
      177 SETTABLEKS                       R11 R10 K11 ["Size"]
      179 CALL                             R8 2 1
      180 SETTABLEKS                       R8 R7 K18 ["PaddingFrame"]
      182 GETUPVAL                         R8 1
      183 GETTABLEKS                       R8 R8 K2 ["createElement"]
      185 LOADK                            R9 K3 ["Frame"]
      186 DUPTABLE                         R10 K55 [{"AutomaticSize", "BorderSizePixel", "BackgroundTransparency", "LayoutOrder", "Size"}]
      187 GETIMPORT                        R11 K7 [Enum.AutomaticSize.Y]
      189 SETTABLEKS                       R11 R10 K5 ["AutomaticSize"]
      191 LOADN                            R11 0
      192 SETTABLEKS                       R11 R10 K53 ["BorderSizePixel"]
      194 LOADN                            R11 1
      195 SETTABLEKS                       R11 R10 K12 ["BackgroundTransparency"]
      197 LOADN                            R11 3
      198 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
      200 GETIMPORT                        R11 K10 [UDim2.fromScale]
      202 LOADN                            R12 1
      203 LOADN                            R13 0
      204 CALL                             R11 2 1
      205 SETTABLEKS                       R11 R10 K11 ["Size"]
      207 DUPTABLE                         R11 K57 [{"ExpandingContent"}]
      208 MOVE                             R12 R2
      209 JUMPIFNOT                        R12 ; [+2]
      210 GETTABLEKS                       R12 R0 K56 ["ExpandingContent"]
      212 SETTABLEKS                       R12 R11 K56 ["ExpandingContent"]
      214 CALL                             R8 3 1
      215 SETTABLEKS                       R8 R7 K19 ["ExpandingContentFrame"]
      217 GETUPVAL                         R8 1
      218 GETTABLEKS                       R8 R8 K2 ["createElement"]
      220 LOADK                            R9 K3 ["Frame"]
      221 DUPTABLE                         R10 K58 [{"Size", "BackgroundTransparency", "BorderSizePixel", "LayoutOrder"}]
      222 GETIMPORT                        R11 K49 [UDim2.new]
      224 LOADN                            R12 1
      225 LOADN                            R13 0
      226 LOADN                            R14 0
      227 LOADN                            R15 1
      228 CALL                             R11 4 1
      229 SETTABLEKS                       R11 R10 K11 ["Size"]
      231 LOADN                            R11 1
      232 SETTABLEKS                       R11 R10 K12 ["BackgroundTransparency"]
      234 LOADN                            R11 0
      235 SETTABLEKS                       R11 R10 K53 ["BorderSizePixel"]
      237 LOADN                            R11 4
      238 SETTABLEKS                       R11 R10 K13 ["LayoutOrder"]
      240 DUPTABLE                         R11 K60 [{"SimpleDivider"}]
      241 GETUPVAL                         R12 1
      242 GETTABLEKS                       R12 R12 K2 ["createElement"]
      244 LOADK                            R13 K3 ["Frame"]
      245 NEWTABLE                         R14 8 0
      247 GETUPVAL                         R15 1
      248 GETTABLEKS                       R15 R15 K14 ["Tag"]
      250 LOADK                            R16 K59 ["SimpleDivider"]
      251 SETTABLE                         R16 R14 R15
      252 GETIMPORT                        R15 K49 [UDim2.new]
      254 LOADN                            R16 1
      255 LOADN                            R17 220
      256 LOADN                            R18 0
      257 LOADN                            R19 1
      258 CALL                             R15 4 1
      259 SETTABLEKS                       R15 R14 K11 ["Size"]
      261 GETIMPORT                        R15 K49 [UDim2.new]
      263 LOADK                            R16 K61 [0.5]
      264 LOADN                            R17 0
      265 LOADN                            R18 0
      266 LOADN                            R19 0
      267 CALL                             R15 4 1
      268 SETTABLEKS                       R15 R14 K50 ["Position"]
      270 GETIMPORT                        R15 K47 [Vector2.new]
      272 LOADK                            R16 K61 [0.5]
      273 LOADN                            R17 0
      274 CALL                             R15 2 1
      275 SETTABLEKS                       R15 R14 K48 ["AnchorPoint"]
      277 LOADN                            R15 0
      278 SETTABLEKS                       R15 R14 K53 ["BorderSizePixel"]
      280 CALL                             R12 2 1
      281 SETTABLEKS                       R12 R11 K59 ["SimpleDivider"]
      283 CALL                             R8 3 1
      284 SETTABLEKS                       R8 R7 K20 ["DividerFrame"]
      286 CALL                             R4 3 -1
      287 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PerformanceTools"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Telemetry"]
       22 GETTABLEKS                       R3 R3 K11 ["TelemetryContext"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Src"]
       29 GETTABLEKS                       R4 R4 K9 ["Util"]
       31 GETTABLEKS                       R4 R4 K10 ["Telemetry"]
       33 GETTABLEKS                       R4 R4 K12 ["Events"]
       35 GETTABLEKS                       R4 R4 K13 ["ToggleMeasuringBarDropdown"]
       37 CALL                             R3 1 1
       38 DUPCLOSURE                       R4 K14 [PROTO_1]
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R1
       41 CAPTURE                          VAL R3
       42 RETURN                           R4 1
