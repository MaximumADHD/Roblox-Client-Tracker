PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

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
      148 JUMPIFNOT                        R19 ; [+161]
      149 DUPTABLE                         R19 K43 [{"stories"}]
      150 NEWTABLE                         R20 0 2
      152 DUPTABLE                         R21 K46 [{["name"] = "Shimmer", ["story"]}]
      153 GETTABLEKS                       R22 R2 K47 ["createElement"]
      155 MOVE                             R23 R13
      156 DUPTABLE                         R24 K50 [{["CornerRadius"] = 4, ["Size"]}]
      157 GETIMPORT                        R25 K53 [UDim2.fromOffset]
      159 LOADN                            R26 128
      160 LOADN                            R27 128
      161 CALL                             R25 2 1
      162 SETTABLEKS                       R25 R24 K49 ["Size"]
      164 CALL                             R22 2 1
      165 SETTABLEKS                       R22 R21 K45 ["story"]
      167 DUPTABLE                         R22 K57 [{["name"] = "Content Placeholder", ["summary"] = "Multiple shimmers can be combined to create a placeholder for loading content", ["story"]}]
      168 GETTABLEKS                       R23 R4 K58 ["provide"]
      170 NEWTABLE                         R24 0 1
      172 MOVE                             R25 R17
      173 SETLIST                          R24 R25 1 [1]
      175 DUPTABLE                         R25 K60 [{"Story"}]
      176 GETTABLEKS                       R26 R2 K47 ["createElement"]
      178 MOVE                             R27 R12
      179 DUPTABLE                         R28 K62 [{["Size"], ["Style"] = "PlaceholderContent"}]
      180 GETIMPORT                        R29 K53 [UDim2.fromOffset]
      182 LOADN                            R30 256
      183 LOADN                            R31 128
      184 CALL                             R29 2 1
      185 SETTABLEKS                       R29 R28 K49 ["Size"]
      187 DUPTABLE                         R29 K67 [{"UICorner", "ImagePlaceholder", "TextPlaceholder1", "TextPlaceholder2"}]
      188 GETTABLEKS                       R30 R2 K47 ["createElement"]
      190 LOADK                            R31 K63 ["UICorner"]
      191 DUPTABLE                         R32 K68 [{"CornerRadius"}]
      192 GETIMPORT                        R33 K31 [UDim.new]
      194 LOADN                            R34 0
      195 LOADN                            R35 4
      196 CALL                             R33 2 1
      197 SETTABLEKS                       R33 R32 K28 ["CornerRadius"]
      199 CALL                             R30 2 1
      200 SETTABLEKS                       R30 R29 K63 ["UICorner"]
      202 GETTABLEKS                       R30 R2 K47 ["createElement"]
      204 MOVE                             R31 R13
      205 DUPTABLE                         R32 K71 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      206 GETIMPORT                        R33 K73 [Vector2.new]
      208 LOADN                            R34 0
      209 LOADK                            R35 K74 [0.5]
      210 CALL                             R33 2 1
      211 SETTABLEKS                       R33 R32 K69 ["AnchorPoint"]
      213 GETIMPORT                        R33 K31 [UDim.new]
      215 LOADK                            R34 K74 [0.5]
      216 LOADN                            R35 0
      217 CALL                             R33 2 1
      218 SETTABLEKS                       R33 R32 K28 ["CornerRadius"]
      220 GETIMPORT                        R33 K75 [UDim2.new]
      222 LOADN                            R34 0
      223 LOADN                            R35 16
      224 LOADK                            R36 K74 [0.5]
      225 LOADN                            R37 0
      226 CALL                             R33 4 1
      227 SETTABLEKS                       R33 R32 K70 ["Position"]
      229 GETIMPORT                        R33 K53 [UDim2.fromOffset]
      231 LOADN                            R34 80
      232 LOADN                            R35 80
      233 CALL                             R33 2 1
      234 SETTABLEKS                       R33 R32 K49 ["Size"]
      236 CALL                             R30 2 1
      237 SETTABLEKS                       R30 R29 K64 ["ImagePlaceholder"]
      239 GETTABLEKS                       R30 R2 K47 ["createElement"]
      241 MOVE                             R31 R13
      242 DUPTABLE                         R32 K77 [{["AnchorPoint"], ["CornerRadius"] = 6, ["Position"], ["Size"]}]
      243 GETIMPORT                        R33 K73 [Vector2.new]
      245 LOADN                            R34 1
      246 LOADK                            R35 K74 [0.5]
      247 CALL                             R33 2 1
      248 SETTABLEKS                       R33 R32 K69 ["AnchorPoint"]
      250 GETIMPORT                        R33 K75 [UDim2.new]
      252 LOADN                            R34 1
      253 LOADN                            R35 -16
      254 LOADK                            R36 K78 [0.33]
      255 LOADN                            R37 0
      256 CALL                             R33 4 1
      257 SETTABLEKS                       R33 R32 K70 ["Position"]
      259 GETIMPORT                        R33 K53 [UDim2.fromOffset]
      261 LOADN                            R34 128
      262 LOADN                            R35 24
      263 CALL                             R33 2 1
      264 SETTABLEKS                       R33 R32 K49 ["Size"]
      266 CALL                             R30 2 1
      267 SETTABLEKS                       R30 R29 K65 ["TextPlaceholder1"]
      269 GETTABLEKS                       R30 R2 K47 ["createElement"]
      271 MOVE                             R31 R13
      272 DUPTABLE                         R32 K77 [{["AnchorPoint"], ["CornerRadius"] = 6, ["Position"], ["Size"]}]
      273 GETIMPORT                        R33 K73 [Vector2.new]
      275 LOADN                            R34 1
      276 LOADK                            R35 K74 [0.5]
      277 CALL                             R33 2 1
      278 SETTABLEKS                       R33 R32 K69 ["AnchorPoint"]
      280 GETIMPORT                        R33 K75 [UDim2.new]
      282 LOADN                            R34 1
      283 LOADN                            R35 -16
      284 LOADK                            R36 K79 [0.66]
      285 LOADN                            R37 0
      286 CALL                             R33 4 1
      287 SETTABLEKS                       R33 R32 K70 ["Position"]
      289 GETIMPORT                        R33 K53 [UDim2.fromOffset]
      291 LOADN                            R34 128
      292 LOADN                            R35 24
      293 CALL                             R33 2 1
      294 SETTABLEKS                       R33 R32 K49 ["Size"]
      296 CALL                             R30 2 1
      297 SETTABLEKS                       R30 R29 K66 ["TextPlaceholder2"]
      299 CALL                             R26 3 1
      300 SETTABLEKS                       R26 R25 K59 ["Story"]
      302 CALL                             R23 2 1
      303 SETTABLEKS                       R23 R22 K45 ["story"]
      305 SETLIST                          R20 R21 2 [1]
      307 SETTABLEKS                       R20 R19 K42 ["stories"]
      309 RETURN                           R19 1
      310 DUPTABLE                         R19 K43 [{"stories"}]
      311 NEWTABLE                         R20 0 2
      313 DUPTABLE                         R21 K46 [{["name"] = "Shimmer", ["story"]}]
      314 GETTABLEKS                       R22 R2 K47 ["createElement"]
      316 MOVE                             R23 R13
      317 DUPTABLE                         R24 K80 [{"Size"}]
      318 GETIMPORT                        R25 K53 [UDim2.fromOffset]
      320 LOADN                            R26 200
      321 LOADN                            R27 200
      322 CALL                             R25 2 1
      323 SETTABLEKS                       R25 R24 K49 ["Size"]
      325 CALL                             R22 2 1
      326 SETTABLEKS                       R22 R21 K45 ["story"]
      328 DUPTABLE                         R22 K82 [{["name"] = "Multiple shimmers, deferred", ["story"]}]
      329 GETTABLEKS                       R23 R2 K47 ["createElement"]
      331 MOVE                             R24 R12
      332 DUPTABLE                         R25 K87 [{["AutomaticSize"], ["Spacing"] = 10, ["Layout"]}]
      333 GETIMPORT                        R26 K90 [Enum.AutomaticSize.XY]
      335 SETTABLEKS                       R26 R25 K83 ["AutomaticSize"]
      337 GETIMPORT                        R26 K93 [Enum.FillDirection.Horizontal]
      339 SETTABLEKS                       R26 R25 K86 ["Layout"]
      341 DUPTABLE                         R26 K96 [{"Shimmer1", "Shimmer2"}]
      342 GETTABLEKS                       R27 R2 K47 ["createElement"]
      344 MOVE                             R28 R13
      345 DUPTABLE                         R29 K80 [{"Size"}]
      346 GETIMPORT                        R30 K53 [UDim2.fromOffset]
      348 LOADN                            R31 200
      349 LOADN                            R32 200
      350 CALL                             R30 2 1
      351 SETTABLEKS                       R30 R29 K49 ["Size"]
      353 CALL                             R27 2 1
      354 SETTABLEKS                       R27 R26 K94 ["Shimmer1"]
      356 GETTABLEKS                       R27 R2 K47 ["createElement"]
      358 MOVE                             R28 R18
      359 DUPTABLE                         R29 K99 [{["delay"] = 2}]
      360 DUPTABLE                         R30 K100 [{"Shimmer"}]
      361 GETTABLEKS                       R31 R2 K47 ["createElement"]
      363 MOVE                             R32 R13
      364 DUPTABLE                         R33 K80 [{"Size"}]
      365 GETIMPORT                        R34 K53 [UDim2.fromOffset]
      367 LOADN                            R35 200
      368 LOADN                            R36 200
      369 CALL                             R34 2 1
      370 SETTABLEKS                       R34 R33 K49 ["Size"]
      372 CALL                             R31 2 1
      373 SETTABLEKS                       R31 R30 K21 ["Shimmer"]
      375 CALL                             R27 3 1
      376 SETTABLEKS                       R27 R26 K95 ["Shimmer2"]
      378 CALL                             R23 3 1
      379 SETTABLEKS                       R23 R22 K45 ["story"]
      381 SETLIST                          R20 R21 2 [1]
      383 SETTABLEKS                       R20 R19 K42 ["stories"]
      385 RETURN                           R19 1
