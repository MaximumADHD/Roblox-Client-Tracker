PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"mounted"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["mounted"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [task.delay]
        2 GETTABLEKS                       R2 R0 K1 ["delay"]
        4 NEWCLOSURE                       R3 P0
        5 CAPTURE                          VAL R0
        6 CALL                             R1 2 1
        7 SETTABLEKS                       R1 R0 K3 ["summonTask"]
        9 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R1 K2 [task.cancel]
        2 GETTABLEKS                       R2 R0 K3 ["summonTask"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETTABLEKS                       R1 R1 K1 ["mounted"]
        4 JUMPIFNOT                        R1 ; [+9]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K2 ["createFragment"]
        8 GETTABLEKS                       R2 R0 K3 ["props"]
       10 GETTABLEKS                       R2 R2 K4 ["children"]
       12 CALL                             R1 1 -1
       13 RETURN                           R1 -1
       14 LOADNIL                          R1
       15 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K4 ["Parent"]
       20 GETTABLEKS                       R3 R3 K8 ["Roact"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K6 [require]
       25 GETTABLEKS                       R4 R0 K9 ["SharedFlags"]
       27 GETTABLEKS                       R4 R4 K10 ["getFFlagDevFrameworkShimmerImprovements"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K6 [require]
       32 GETTABLEKS                       R5 R0 K2 ["UI"]
       34 GETTABLEKS                       R5 R5 K11 ["ContextServices"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R0 K12 ["Style"]
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R5 K13 ["ComponentSymbols"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R5 K14 ["Colors"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETTABLEKS                       R9 R5 K15 ["StyleKey"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K6 [require]
       56 GETTABLEKS                       R10 R5 K16 ["ThemeSwitcher"]
       58 CALL                             R9 1 1
       59 GETIMPORT                        R10 K6 [require]
       61 GETTABLEKS                       R11 R5 K17 ["Themes"]
       63 GETTABLEKS                       R11 R11 K18 ["BaseTheme"]
       65 CALL                             R10 1 1
       66 GETTABLEKS                       R11 R0 K2 ["UI"]
       68 GETTABLEKS                       R11 R11 K19 ["Components"]
       70 GETIMPORT                        R12 K6 [require]
       72 GETTABLEKS                       R13 R11 K20 ["Pane"]
       74 CALL                             R12 1 1
       75 GETIMPORT                        R13 K6 [require]
       77 GETTABLEKS                       R14 R11 K21 ["Shimmer"]
       79 CALL                             R13 1 1
       80 GETTABLEKS                       R14 R1 K22 ["join"]
       82 NEWTABLE                         R15 1 0
       84 GETTABLEKS                       R16 R8 K23 ["ShimmerContent"]
       86 GETTABLEKS                       R17 R7 K24 ["Gray_Mid"]
       88 SETTABLE                         R17 R15 R16
       89 NEWTABLE                         R16 1 0
       91 GETTABLEKS                       R17 R8 K23 ["ShimmerContent"]
       93 GETTABLEKS                       R18 R7 K25 ["Gray_Lightest"]
       95 SETTABLE                         R18 R16 R17
       96 GETTABLEKS                       R17 R9 K26 ["new"]
       98 MOVE                             R18 R15
       99 MOVE                             R19 R16
      100 CALL                             R17 2 1
      101 NEWTABLE                         R20 1 0
      103 GETTABLEKS                       R21 R6 K20 ["Pane"]
      105 MOVE                             R22 R14
      106 GETTABLEKS                       R24 R6 K20 ["Pane"]
      108 GETTABLE                         R23 R10 R24
      109 NEWTABLE                         R24 1 0
      111 DUPTABLE                         R25 K29 [{"Background", "CornerRadius"}]
      112 GETTABLEKS                       R26 R8 K23 ["ShimmerContent"]
      114 SETTABLEKS                       R26 R25 K27 ["Background"]
      116 GETIMPORT                        R26 K31 [UDim.new]
      118 LOADN                            R27 0
      119 LOADN                            R28 4
      120 CALL                             R26 2 1
      121 SETTABLEKS                       R26 R25 K28 ["CornerRadius"]
      123 SETTABLEKS                       R25 R24 K32 ["&PlaceholderContent"]
      125 CALL                             R22 2 1
      126 SETTABLE                         R22 R20 R21
      127 NAMECALL                         R18 R17 K33 ["extend"]
      129 CALL                             R18 2 0
      130 GETTABLEKS                       R18 R2 K34 ["Component"]
      132 LOADK                            R20 K35 ["RenderLater"]
      133 NAMECALL                         R18 R18 K33 ["extend"]
      135 CALL                             R18 2 1
      136 DUPCLOSURE                       R19 K36 [PROTO_1]
      137 SETTABLEKS                       R19 R18 K37 ["didMount"]
      139 DUPCLOSURE                       R19 K38 [PROTO_2]
      140 SETTABLEKS                       R19 R18 K39 ["willUnmount"]
      142 DUPCLOSURE                       R19 K40 [PROTO_3]
      143 CAPTURE                          VAL R2
      144 SETTABLEKS                       R19 R18 K41 ["render"]
      146 MOVE                             R19 R3
      147 CALL                             R19 0 1
      148 JUMPIFNOT                        R19 ; [+182]
      149 DUPTABLE                         R19 K43 [{"stories"}]
      150 NEWTABLE                         R20 0 2
      152 DUPTABLE                         R21 K46 [{"name", "story"}]
      153 LOADK                            R22 K21 ["Shimmer"]
      154 SETTABLEKS                       R22 R21 K44 ["name"]
      156 GETTABLEKS                       R22 R2 K47 ["createElement"]
      158 MOVE                             R23 R13
      159 DUPTABLE                         R24 K49 [{"CornerRadius", "Size"}]
      160 LOADN                            R25 4
      161 SETTABLEKS                       R25 R24 K28 ["CornerRadius"]
      163 GETIMPORT                        R25 K52 [UDim2.fromOffset]
      165 LOADN                            R26 128
      166 LOADN                            R27 128
      167 CALL                             R25 2 1
      168 SETTABLEKS                       R25 R24 K48 ["Size"]
      170 CALL                             R22 2 1
      171 SETTABLEKS                       R22 R21 K45 ["story"]
      173 DUPTABLE                         R22 K54 [{"name", "summary", "story"}]
      174 LOADK                            R23 K55 ["Content Placeholder"]
      175 SETTABLEKS                       R23 R22 K44 ["name"]
      177 LOADK                            R23 K56 ["Multiple shimmers can be combined to create a placeholder for loading content"]
      178 SETTABLEKS                       R23 R22 K53 ["summary"]
      180 GETTABLEKS                       R23 R4 K57 ["provide"]
      182 NEWTABLE                         R24 0 1
      184 MOVE                             R25 R17
      185 SETLIST                          R24 R25 1 [1]
      187 DUPTABLE                         R25 K59 [{"Story"}]
      188 GETTABLEKS                       R26 R2 K47 ["createElement"]
      190 MOVE                             R27 R12
      191 DUPTABLE                         R28 K60 [{"Size", "Style"}]
      192 GETIMPORT                        R29 K52 [UDim2.fromOffset]
      194 LOADN                            R30 0
      195 LOADN                            R31 128
      196 CALL                             R29 2 1
      197 SETTABLEKS                       R29 R28 K48 ["Size"]
      199 LOADK                            R29 K61 ["PlaceholderContent"]
      200 SETTABLEKS                       R29 R28 K12 ["Style"]
      202 DUPTABLE                         R29 K66 [{"UICorner", "ImagePlaceholder", "TextPlaceholder1", "TextPlaceholder2"}]
      203 GETTABLEKS                       R30 R2 K47 ["createElement"]
      205 LOADK                            R31 K62 ["UICorner"]
      206 DUPTABLE                         R32 K67 [{"CornerRadius"}]
      207 GETIMPORT                        R33 K31 [UDim.new]
      209 LOADN                            R34 0
      210 LOADN                            R35 4
      211 CALL                             R33 2 1
      212 SETTABLEKS                       R33 R32 K28 ["CornerRadius"]
      214 CALL                             R30 2 1
      215 SETTABLEKS                       R30 R29 K62 ["UICorner"]
      217 GETTABLEKS                       R30 R2 K47 ["createElement"]
      219 MOVE                             R31 R13
      220 DUPTABLE                         R32 K70 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      221 GETIMPORT                        R33 K72 [Vector2.new]
      223 LOADN                            R34 0
      224 LOADK                            R35 K73 [0.5]
      225 CALL                             R33 2 1
      226 SETTABLEKS                       R33 R32 K68 ["AnchorPoint"]
      228 GETIMPORT                        R33 K31 [UDim.new]
      230 LOADK                            R34 K73 [0.5]
      231 LOADN                            R35 0
      232 CALL                             R33 2 1
      233 SETTABLEKS                       R33 R32 K28 ["CornerRadius"]
      235 GETIMPORT                        R33 K74 [UDim2.new]
      237 LOADN                            R34 0
      238 LOADN                            R35 16
      239 LOADK                            R36 K73 [0.5]
      240 LOADN                            R37 0
      241 CALL                             R33 4 1
      242 SETTABLEKS                       R33 R32 K69 ["Position"]
      244 GETIMPORT                        R33 K52 [UDim2.fromOffset]
      246 LOADN                            R34 80
      247 LOADN                            R35 80
      248 CALL                             R33 2 1
      249 SETTABLEKS                       R33 R32 K48 ["Size"]
      251 CALL                             R30 2 1
      252 SETTABLEKS                       R30 R29 K63 ["ImagePlaceholder"]
      254 GETTABLEKS                       R30 R2 K47 ["createElement"]
      256 MOVE                             R31 R13
      257 DUPTABLE                         R32 K70 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      258 GETIMPORT                        R33 K72 [Vector2.new]
      260 LOADN                            R34 1
      261 LOADK                            R35 K73 [0.5]
      262 CALL                             R33 2 1
      263 SETTABLEKS                       R33 R32 K68 ["AnchorPoint"]
      265 LOADN                            R33 6
      266 SETTABLEKS                       R33 R32 K28 ["CornerRadius"]
      268 GETIMPORT                        R33 K74 [UDim2.new]
      270 LOADN                            R34 1
      271 LOADN                            R35 240
      272 LOADK                            R36 K75 [0.33]
      273 LOADN                            R37 0
      274 CALL                             R33 4 1
      275 SETTABLEKS                       R33 R32 K69 ["Position"]
      277 GETIMPORT                        R33 K52 [UDim2.fromOffset]
      279 LOADN                            R34 128
      280 LOADN                            R35 24
      281 CALL                             R33 2 1
      282 SETTABLEKS                       R33 R32 K48 ["Size"]
      284 CALL                             R30 2 1
      285 SETTABLEKS                       R30 R29 K64 ["TextPlaceholder1"]
      287 GETTABLEKS                       R30 R2 K47 ["createElement"]
      289 MOVE                             R31 R13
      290 DUPTABLE                         R32 K70 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      291 GETIMPORT                        R33 K72 [Vector2.new]
      293 LOADN                            R34 1
      294 LOADK                            R35 K73 [0.5]
      295 CALL                             R33 2 1
      296 SETTABLEKS                       R33 R32 K68 ["AnchorPoint"]
      298 LOADN                            R33 6
      299 SETTABLEKS                       R33 R32 K28 ["CornerRadius"]
      301 GETIMPORT                        R33 K74 [UDim2.new]
      303 LOADN                            R34 1
      304 LOADN                            R35 240
      305 LOADK                            R36 K76 [0.66]
      306 LOADN                            R37 0
      307 CALL                             R33 4 1
      308 SETTABLEKS                       R33 R32 K69 ["Position"]
      310 GETIMPORT                        R33 K52 [UDim2.fromOffset]
      312 LOADN                            R34 128
      313 LOADN                            R35 24
      314 CALL                             R33 2 1
      315 SETTABLEKS                       R33 R32 K48 ["Size"]
      317 CALL                             R30 2 1
      318 SETTABLEKS                       R30 R29 K65 ["TextPlaceholder2"]
      320 CALL                             R26 3 1
      321 SETTABLEKS                       R26 R25 K58 ["Story"]
      323 CALL                             R23 2 1
      324 SETTABLEKS                       R23 R22 K45 ["story"]
      326 SETLIST                          R20 R21 2 [1]
      328 SETTABLEKS                       R20 R19 K42 ["stories"]
      330 RETURN                           R19 1
      331 DUPTABLE                         R19 K43 [{"stories"}]
      332 NEWTABLE                         R20 0 2
      334 DUPTABLE                         R21 K46 [{"name", "story"}]
      335 LOADK                            R22 K21 ["Shimmer"]
      336 SETTABLEKS                       R22 R21 K44 ["name"]
      338 GETTABLEKS                       R22 R2 K47 ["createElement"]
      340 MOVE                             R23 R13
      341 DUPTABLE                         R24 K77 [{"Size"}]
      342 GETIMPORT                        R25 K52 [UDim2.fromOffset]
      344 LOADN                            R26 200
      345 LOADN                            R27 200
      346 CALL                             R25 2 1
      347 SETTABLEKS                       R25 R24 K48 ["Size"]
      349 CALL                             R22 2 1
      350 SETTABLEKS                       R22 R21 K45 ["story"]
      352 DUPTABLE                         R22 K46 [{"name", "story"}]
      353 LOADK                            R23 K78 ["Multiple shimmers, deferred"]
      354 SETTABLEKS                       R23 R22 K44 ["name"]
      356 GETTABLEKS                       R23 R2 K47 ["createElement"]
      358 MOVE                             R24 R12
      359 DUPTABLE                         R25 K82 [{"AutomaticSize", "Spacing", "Layout"}]
      360 GETIMPORT                        R26 K85 [Enum.AutomaticSize.XY]
      362 SETTABLEKS                       R26 R25 K79 ["AutomaticSize"]
      364 LOADN                            R26 10
      365 SETTABLEKS                       R26 R25 K80 ["Spacing"]
      367 GETIMPORT                        R26 K88 [Enum.FillDirection.Horizontal]
      369 SETTABLEKS                       R26 R25 K81 ["Layout"]
      371 DUPTABLE                         R26 K91 [{"Shimmer1", "Shimmer2"}]
      372 GETTABLEKS                       R27 R2 K47 ["createElement"]
      374 MOVE                             R28 R13
      375 DUPTABLE                         R29 K77 [{"Size"}]
      376 GETIMPORT                        R30 K52 [UDim2.fromOffset]
      378 LOADN                            R31 200
      379 LOADN                            R32 200
      380 CALL                             R30 2 1
      381 SETTABLEKS                       R30 R29 K48 ["Size"]
      383 CALL                             R27 2 1
      384 SETTABLEKS                       R27 R26 K89 ["Shimmer1"]
      386 GETTABLEKS                       R27 R2 K47 ["createElement"]
      388 MOVE                             R28 R18
      389 DUPTABLE                         R29 K93 [{"delay"}]
      390 LOADN                            R30 2
      391 SETTABLEKS                       R30 R29 K92 ["delay"]
      393 DUPTABLE                         R30 K94 [{"Shimmer"}]
      394 GETTABLEKS                       R31 R2 K47 ["createElement"]
      396 MOVE                             R32 R13
      397 DUPTABLE                         R33 K77 [{"Size"}]
      398 GETIMPORT                        R34 K52 [UDim2.fromOffset]
      400 LOADN                            R35 200
      401 LOADN                            R36 200
      402 CALL                             R34 2 1
      403 SETTABLEKS                       R34 R33 K48 ["Size"]
      405 CALL                             R31 2 1
      406 SETTABLEKS                       R31 R30 K21 ["Shimmer"]
      408 CALL                             R27 3 1
      409 SETTABLEKS                       R27 R26 K90 ["Shimmer2"]
      411 CALL                             R23 3 1
      412 SETTABLEKS                       R23 R22 K45 ["story"]
      414 SETLIST                          R20 R21 2 [1]
      416 SETTABLEKS                       R20 R19 K42 ["stories"]
      418 RETURN                           R19 1
