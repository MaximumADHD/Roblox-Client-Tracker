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
       25 GETTABLEKS                       R4 R0 K2 ["UI"]
       27 GETTABLEKS                       R4 R4 K9 ["ContextServices"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R0 K10 ["Style"]
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R4 K11 ["ComponentSymbols"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R4 K12 ["Colors"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R4 K13 ["StyleKey"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R9 R4 K14 ["ThemeSwitcher"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R4 K15 ["Themes"]
       56 GETTABLEKS                       R10 R10 K16 ["BaseTheme"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R0 K2 ["UI"]
       61 GETTABLEKS                       R10 R10 K17 ["Components"]
       63 GETIMPORT                        R11 K6 [require]
       65 GETTABLEKS                       R12 R10 K18 ["Pane"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K6 [require]
       70 GETTABLEKS                       R13 R10 K19 ["Shimmer"]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R13 R1 K20 ["join"]
       75 NEWTABLE                         R14 1 0
       77 GETTABLEKS                       R15 R7 K21 ["ShimmerContent"]
       79 GETTABLEKS                       R16 R6 K22 ["Gray_Mid"]
       81 SETTABLE                         R16 R14 R15
       82 NEWTABLE                         R15 1 0
       84 GETTABLEKS                       R16 R7 K21 ["ShimmerContent"]
       86 GETTABLEKS                       R17 R6 K23 ["Gray_Lightest"]
       88 SETTABLE                         R17 R15 R16
       89 GETTABLEKS                       R16 R8 K24 ["new"]
       91 MOVE                             R17 R14
       92 MOVE                             R18 R15
       93 CALL                             R16 2 1
       94 NEWTABLE                         R19 1 0
       96 GETTABLEKS                       R20 R5 K18 ["Pane"]
       98 MOVE                             R21 R13
       99 GETTABLEKS                       R23 R5 K18 ["Pane"]
      101 GETTABLE                         R22 R9 R23
      102 NEWTABLE                         R23 1 0
      104 DUPTABLE                         R24 K27 [{"Background", "CornerRadius"}]
      105 GETTABLEKS                       R25 R7 K21 ["ShimmerContent"]
      107 SETTABLEKS                       R25 R24 K25 ["Background"]
      109 GETIMPORT                        R25 K29 [UDim.new]
      111 LOADN                            R26 0
      112 LOADN                            R27 4
      113 CALL                             R25 2 1
      114 SETTABLEKS                       R25 R24 K26 ["CornerRadius"]
      116 SETTABLEKS                       R24 R23 K30 ["&PlaceholderContent"]
      118 CALL                             R21 2 1
      119 SETTABLE                         R21 R19 R20
      120 NAMECALL                         R17 R16 K31 ["extend"]
      122 CALL                             R17 2 0
      123 GETTABLEKS                       R17 R2 K32 ["Component"]
      125 LOADK                            R19 K33 ["RenderLater"]
      126 NAMECALL                         R17 R17 K31 ["extend"]
      128 CALL                             R17 2 1
      129 DUPCLOSURE                       R18 K34 [PROTO_1]
      130 SETTABLEKS                       R18 R17 K35 ["didMount"]
      132 DUPCLOSURE                       R18 K36 [PROTO_2]
      133 SETTABLEKS                       R18 R17 K37 ["willUnmount"]
      135 DUPCLOSURE                       R18 K38 [PROTO_3]
      136 CAPTURE                          VAL R2
      137 SETTABLEKS                       R18 R17 K39 ["render"]
      139 DUPTABLE                         R18 K41 [{"stories"}]
      140 NEWTABLE                         R19 0 2
      142 DUPTABLE                         R20 K44 [{["name"] = "Shimmer", ["story"]}]
      143 GETTABLEKS                       R21 R2 K45 ["createElement"]
      145 MOVE                             R22 R12
      146 DUPTABLE                         R23 K48 [{["CornerRadius"] = 4, ["Size"]}]
      147 GETIMPORT                        R24 K51 [UDim2.fromOffset]
      149 LOADN                            R25 128
      150 LOADN                            R26 128
      151 CALL                             R24 2 1
      152 SETTABLEKS                       R24 R23 K47 ["Size"]
      154 CALL                             R21 2 1
      155 SETTABLEKS                       R21 R20 K43 ["story"]
      157 DUPTABLE                         R21 K55 [{["name"] = "Content Placeholder", ["summary"] = "Multiple shimmers can be combined to create a placeholder for loading content", ["story"]}]
      158 GETTABLEKS                       R22 R3 K56 ["provide"]
      160 NEWTABLE                         R23 0 1
      162 MOVE                             R24 R16
      163 SETLIST                          R23 R24 1 [1]
      165 DUPTABLE                         R24 K58 [{"Story"}]
      166 GETTABLEKS                       R25 R2 K45 ["createElement"]
      168 MOVE                             R26 R11
      169 DUPTABLE                         R27 K60 [{["Size"], ["Style"] = "PlaceholderContent"}]
      170 GETIMPORT                        R28 K51 [UDim2.fromOffset]
      172 LOADN                            R29 256
      173 LOADN                            R30 128
      174 CALL                             R28 2 1
      175 SETTABLEKS                       R28 R27 K47 ["Size"]
      177 DUPTABLE                         R28 K65 [{"UICorner", "ImagePlaceholder", "TextPlaceholder1", "TextPlaceholder2"}]
      178 GETTABLEKS                       R29 R2 K45 ["createElement"]
      180 LOADK                            R30 K61 ["UICorner"]
      181 DUPTABLE                         R31 K66 [{"CornerRadius"}]
      182 GETIMPORT                        R32 K29 [UDim.new]
      184 LOADN                            R33 0
      185 LOADN                            R34 4
      186 CALL                             R32 2 1
      187 SETTABLEKS                       R32 R31 K26 ["CornerRadius"]
      189 CALL                             R29 2 1
      190 SETTABLEKS                       R29 R28 K61 ["UICorner"]
      192 GETTABLEKS                       R29 R2 K45 ["createElement"]
      194 MOVE                             R30 R12
      195 DUPTABLE                         R31 K69 [{"AnchorPoint", "CornerRadius", "Position", "Size"}]
      196 GETIMPORT                        R32 K71 [Vector2.new]
      198 LOADN                            R33 0
      199 LOADK                            R34 K72 [0.5]
      200 CALL                             R32 2 1
      201 SETTABLEKS                       R32 R31 K67 ["AnchorPoint"]
      203 GETIMPORT                        R32 K29 [UDim.new]
      205 LOADK                            R33 K72 [0.5]
      206 LOADN                            R34 0
      207 CALL                             R32 2 1
      208 SETTABLEKS                       R32 R31 K26 ["CornerRadius"]
      210 GETIMPORT                        R32 K73 [UDim2.new]
      212 LOADN                            R33 0
      213 LOADN                            R34 16
      214 LOADK                            R35 K72 [0.5]
      215 LOADN                            R36 0
      216 CALL                             R32 4 1
      217 SETTABLEKS                       R32 R31 K68 ["Position"]
      219 GETIMPORT                        R32 K51 [UDim2.fromOffset]
      221 LOADN                            R33 80
      222 LOADN                            R34 80
      223 CALL                             R32 2 1
      224 SETTABLEKS                       R32 R31 K47 ["Size"]
      226 CALL                             R29 2 1
      227 SETTABLEKS                       R29 R28 K62 ["ImagePlaceholder"]
      229 GETTABLEKS                       R29 R2 K45 ["createElement"]
      231 MOVE                             R30 R12
      232 DUPTABLE                         R31 K75 [{["AnchorPoint"], ["CornerRadius"] = 6, ["Position"], ["Size"]}]
      233 GETIMPORT                        R32 K71 [Vector2.new]
      235 LOADN                            R33 1
      236 LOADK                            R34 K72 [0.5]
      237 CALL                             R32 2 1
      238 SETTABLEKS                       R32 R31 K67 ["AnchorPoint"]
      240 GETIMPORT                        R32 K73 [UDim2.new]
      242 LOADN                            R33 1
      243 LOADN                            R34 -16
      244 LOADK                            R35 K76 [0.33]
      245 LOADN                            R36 0
      246 CALL                             R32 4 1
      247 SETTABLEKS                       R32 R31 K68 ["Position"]
      249 GETIMPORT                        R32 K51 [UDim2.fromOffset]
      251 LOADN                            R33 128
      252 LOADN                            R34 24
      253 CALL                             R32 2 1
      254 SETTABLEKS                       R32 R31 K47 ["Size"]
      256 CALL                             R29 2 1
      257 SETTABLEKS                       R29 R28 K63 ["TextPlaceholder1"]
      259 GETTABLEKS                       R29 R2 K45 ["createElement"]
      261 MOVE                             R30 R12
      262 DUPTABLE                         R31 K75 [{["AnchorPoint"], ["CornerRadius"] = 6, ["Position"], ["Size"]}]
      263 GETIMPORT                        R32 K71 [Vector2.new]
      265 LOADN                            R33 1
      266 LOADK                            R34 K72 [0.5]
      267 CALL                             R32 2 1
      268 SETTABLEKS                       R32 R31 K67 ["AnchorPoint"]
      270 GETIMPORT                        R32 K73 [UDim2.new]
      272 LOADN                            R33 1
      273 LOADN                            R34 -16
      274 LOADK                            R35 K77 [0.66]
      275 LOADN                            R36 0
      276 CALL                             R32 4 1
      277 SETTABLEKS                       R32 R31 K68 ["Position"]
      279 GETIMPORT                        R32 K51 [UDim2.fromOffset]
      281 LOADN                            R33 128
      282 LOADN                            R34 24
      283 CALL                             R32 2 1
      284 SETTABLEKS                       R32 R31 K47 ["Size"]
      286 CALL                             R29 2 1
      287 SETTABLEKS                       R29 R28 K64 ["TextPlaceholder2"]
      289 CALL                             R25 3 1
      290 SETTABLEKS                       R25 R24 K57 ["Story"]
      292 CALL                             R22 2 1
      293 SETTABLEKS                       R22 R21 K43 ["story"]
      295 SETLIST                          R19 R20 2 [1]
      297 SETTABLEKS                       R19 R18 K40 ["stories"]
      299 RETURN                           R18 1
