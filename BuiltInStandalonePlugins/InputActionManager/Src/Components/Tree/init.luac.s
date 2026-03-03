PROTO_0:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K3 ["uuid"]
        7 SETTABLE                         R0 R1 R2
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [table.clone]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R2 R3 K3 ["uuid"]
        7 SETTABLE                         R0 R1 R2
        8 GETUPVAL                         R2 2
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 CALL                             R2 0 2
        6 GETUPVAL                         R5 2
        7 GETTABLEKS                       R4 R5 K1 ["useState"]
        9 NEWTABLE                         R5 0 0
       11 CALL                             R4 1 2
       12 NEWTABLE                         R6 0 0
       14 NEWTABLE                         R7 0 0
       16 MOVE                             R8 R2
       17 LOADNIL                          R9
       18 LOADNIL                          R10
       19 FORGPREP                         R8
       20 GETTABLEKS                       R13 R12 K2 ["ItemType"]
       22 JUMPIFNOTEQKS                    R13 K3 ["InputContext"] ; [+71]
       24 GETTABLEKS                       R13 R12 K4 ["Item"]
       26 MOVE                             R14 R1
       27 CALL                             R14 0 1
       28 LOADK                            R16 K5 ["%*%*"]
       29 GETTABLEKS                       R18 R13 K6 ["name"]
       31 MOVE                             R19 R14
       32 NAMECALL                         R16 R16 K7 ["format"]
       34 CALL                             R16 3 1
       35 MOVE                             R15 R16
       36 GETUPVAL                         R17 2
       37 GETTABLEKS                       R16 R17 K8 ["createElement"]
       39 GETUPVAL                         R17 3
       40 DUPTABLE                         R18 K10 [{"LayoutOrder"}]
       41 SETTABLEKS                       R14 R18 K9 ["LayoutOrder"]
       43 CALL                             R16 2 1
       44 SETTABLE                         R16 R6 R15
       45 LOADK                            R16 K5 ["%*%*"]
       46 GETTABLEKS                       R18 R13 K6 ["name"]
       48 MOVE                             R19 R14
       49 NAMECALL                         R16 R16 K7 ["format"]
       51 CALL                             R16 3 1
       52 MOVE                             R15 R16
       53 GETUPVAL                         R17 2
       54 GETTABLEKS                       R16 R17 K8 ["createElement"]
       56 GETUPVAL                         R17 4
       57 DUPTABLE                         R18 K16 [{"depth", "expandable", "expanded", "inputType", "LayoutOrder", "name", "setExpanded"}]
       58 LOADN                            R19 0
       59 SETTABLEKS                       R19 R18 K11 ["depth"]
       61 GETTABLEKS                       R21 R13 K17 ["actions"]
       63 LENGTH                           R20 R21
       64 LOADN                            R21 0
       65 JUMPIFLT                         R21 R20 ; [+2]
       67 LOADB                            R19 0 +1
       68 LOADB                            R19 1
       69 SETTABLEKS                       R19 R18 K12 ["expandable"]
       71 GETTABLEKS                       R20 R13 K18 ["uuid"]
       73 GETTABLE                         R19 R4 R20
       74 SETTABLEKS                       R19 R18 K13 ["expanded"]
       76 GETTABLEKS                       R19 R12 K2 ["ItemType"]
       78 SETTABLEKS                       R19 R18 K14 ["inputType"]
       80 SETTABLEKS                       R14 R18 K9 ["LayoutOrder"]
       82 GETTABLEKS                       R19 R13 K6 ["name"]
       84 SETTABLEKS                       R19 R18 K6 ["name"]
       86 NEWCLOSURE                       R19 P0
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R5
       90 SETTABLEKS                       R19 R18 K15 ["setExpanded"]
       92 CALL                             R16 2 1
       93 SETTABLE                         R16 R7 R15
       94 GETTABLEKS                       R13 R12 K2 ["ItemType"]
       96 JUMPIFNOTEQKS                    R13 K19 ["InputAction"] ; [+80]
       98 GETTABLEKS                       R13 R12 K20 ["Parent"]
      100 JUMPIFNOT                        R13 ; [+4]
      101 GETTABLEKS                       R14 R12 K20 ["Parent"]
      103 GETTABLE                         R13 R4 R14
      104 JUMPIFNOT                        R13 ; [+72]
      105 GETTABLEKS                       R13 R12 K4 ["Item"]
      107 MOVE                             R14 R1
      108 CALL                             R14 0 1
      109 LOADK                            R16 K5 ["%*%*"]
      110 GETTABLEKS                       R18 R13 K6 ["name"]
      112 MOVE                             R19 R14
      113 NAMECALL                         R16 R16 K7 ["format"]
      115 CALL                             R16 3 1
      116 MOVE                             R15 R16
      117 GETUPVAL                         R17 2
      118 GETTABLEKS                       R16 R17 K8 ["createElement"]
      120 GETUPVAL                         R17 3
      121 DUPTABLE                         R18 K23 [{"inputBindings", "inputActionType", "LayoutOrder"}]
      122 GETTABLEKS                       R20 R13 K18 ["uuid"]
      124 GETTABLE                         R19 R3 R20
      125 SETTABLEKS                       R19 R18 K21 ["inputBindings"]
      127 GETTABLEKS                       R19 R13 K24 ["type"]
      129 SETTABLEKS                       R19 R18 K22 ["inputActionType"]
      131 SETTABLEKS                       R14 R18 K9 ["LayoutOrder"]
      133 CALL                             R16 2 1
      134 SETTABLE                         R16 R6 R15
      135 LOADK                            R16 K5 ["%*%*"]
      136 GETTABLEKS                       R18 R13 K6 ["name"]
      138 MOVE                             R19 R14
      139 NAMECALL                         R16 R16 K7 ["format"]
      141 CALL                             R16 3 1
      142 MOVE                             R15 R16
      143 GETUPVAL                         R17 2
      144 GETTABLEKS                       R16 R17 K8 ["createElement"]
      146 GETUPVAL                         R17 4
      147 DUPTABLE                         R18 K16 [{"depth", "expandable", "expanded", "inputType", "LayoutOrder", "name", "setExpanded"}]
      148 LOADN                            R19 1
      149 SETTABLEKS                       R19 R18 K11 ["depth"]
      151 LOADB                            R19 0
      152 SETTABLEKS                       R19 R18 K12 ["expandable"]
      154 GETTABLEKS                       R20 R13 K18 ["uuid"]
      156 GETTABLE                         R19 R4 R20
      157 SETTABLEKS                       R19 R18 K13 ["expanded"]
      159 GETTABLEKS                       R19 R12 K2 ["ItemType"]
      161 SETTABLEKS                       R19 R18 K14 ["inputType"]
      163 SETTABLEKS                       R14 R18 K9 ["LayoutOrder"]
      165 GETTABLEKS                       R19 R13 K6 ["name"]
      167 SETTABLEKS                       R19 R18 K6 ["name"]
      169 NEWCLOSURE                       R19 P1
      170 CAPTURE                          VAL R4
      171 CAPTURE                          VAL R13
      172 CAPTURE                          VAL R5
      173 SETTABLEKS                       R19 R18 K15 ["setExpanded"]
      175 CALL                             R16 2 1
      176 SETTABLE                         R16 R7 R15
      177 FORGLOOP                         R8 2 ; [-158]
      179 GETUPVAL                         R9 2
      180 GETTABLEKS                       R8 R9 K8 ["createElement"]
      182 GETUPVAL                         R9 5
      183 DUPTABLE                         R10 K26 [{"LayoutOrder", "tag"}]
      184 GETTABLEKS                       R11 R0 K9 ["LayoutOrder"]
      186 SETTABLEKS                       R11 R10 K9 ["LayoutOrder"]
      188 LOADK                            R11 K27 ["size-full-0 grow col align-y-top bg-surface-200"]
      189 SETTABLEKS                       R11 R10 K25 ["tag"]
      191 DUPTABLE                         R11 K31 [{"Header", "Divider", "ScrollView"}]
      192 GETUPVAL                         R13 2
      193 GETTABLEKS                       R12 R13 K8 ["createElement"]
      195 GETUPVAL                         R13 6
      196 DUPTABLE                         R14 K10 [{"LayoutOrder"}]
      197 MOVE                             R15 R1
      198 CALL                             R15 0 1
      199 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      201 CALL                             R12 2 1
      202 SETTABLEKS                       R12 R11 K28 ["Header"]
      204 GETUPVAL                         R13 2
      205 GETTABLEKS                       R12 R13 K8 ["createElement"]
      207 GETUPVAL                         R13 7
      208 DUPTABLE                         R14 K33 [{"LayoutOrder", "orientation", "tag"}]
      209 MOVE                             R15 R1
      210 CALL                             R15 0 1
      211 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      213 GETUPVAL                         R18 8
      214 GETTABLEKS                       R17 R18 K34 ["Enums"]
      216 GETTABLEKS                       R16 R17 K35 ["Orientation"]
      218 GETTABLEKS                       R15 R16 K36 ["Horizontal"]
      220 SETTABLEKS                       R15 R14 K32 ["orientation"]
      222 LOADK                            R15 K37 ["auto-x"]
      223 SETTABLEKS                       R15 R14 K25 ["tag"]
      225 CALL                             R12 2 1
      226 SETTABLEKS                       R12 R11 K29 ["Divider"]
      228 GETUPVAL                         R13 2
      229 GETTABLEKS                       R12 R13 K8 ["createElement"]
      231 GETUPVAL                         R13 9
      232 DUPTABLE                         R14 K39 [{"LayoutOrder", "scroll", "tag"}]
      233 MOVE                             R15 R1
      234 CALL                             R15 0 1
      235 SETTABLEKS                       R15 R14 K9 ["LayoutOrder"]
      237 DUPTABLE                         R15 K42 [{"AutomaticCanvasSize", "CanvasSize"}]
      238 GETIMPORT                        R16 K46 [Enum.AutomaticSize.Y]
      240 SETTABLEKS                       R16 R15 K40 ["AutomaticCanvasSize"]
      242 GETIMPORT                        R16 K49 [UDim2.fromScale]
      244 LOADN                            R17 0
      245 LOADN                            R18 0
      246 CALL                             R16 2 1
      247 SETTABLEKS                       R16 R15 K41 ["CanvasSize"]
      249 SETTABLEKS                       R15 R14 K38 ["scroll"]
      251 LOADK                            R15 K50 ["size-full-0 grow"]
      252 SETTABLEKS                       R15 R14 K25 ["tag"]
      254 DUPTABLE                         R15 K52 [{"Content"}]
      255 GETUPVAL                         R17 2
      256 GETTABLEKS                       R16 R17 K8 ["createElement"]
      258 GETUPVAL                         R17 5
      259 DUPTABLE                         R18 K53 [{"tag"}]
      260 LOADK                            R19 K54 ["size-full-0 auto-y row"]
      261 SETTABLEKS                       R19 R18 K25 ["tag"]
      263 DUPTABLE                         R19 K57 [{"Tree", "Divider", "Table"}]
      264 GETUPVAL                         R21 2
      265 GETTABLEKS                       R20 R21 K8 ["createElement"]
      267 GETUPVAL                         R21 5
      268 DUPTABLE                         R22 K26 [{"LayoutOrder", "tag"}]
      269 MOVE                             R23 R1
      270 CALL                             R23 0 1
      271 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      273 LOADK                            R23 K58 ["columns-tree col auto-y top-align"]
      274 SETTABLEKS                       R23 R22 K25 ["tag"]
      276 MOVE                             R23 R7
      277 CALL                             R20 3 1
      278 SETTABLEKS                       R20 R19 K55 ["Tree"]
      280 GETUPVAL                         R21 2
      281 GETTABLEKS                       R20 R21 K8 ["createElement"]
      283 GETUPVAL                         R21 7
      284 DUPTABLE                         R22 K33 [{"LayoutOrder", "orientation", "tag"}]
      285 MOVE                             R23 R1
      286 CALL                             R23 0 1
      287 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      289 GETUPVAL                         R26 8
      290 GETTABLEKS                       R25 R26 K34 ["Enums"]
      292 GETTABLEKS                       R24 R25 K35 ["Orientation"]
      294 GETTABLEKS                       R23 R24 K59 ["Vertical"]
      296 SETTABLEKS                       R23 R22 K32 ["orientation"]
      298 LOADK                            R23 K60 ["auto-y"]
      299 SETTABLEKS                       R23 R22 K25 ["tag"]
      301 CALL                             R20 2 1
      302 SETTABLEKS                       R20 R19 K29 ["Divider"]
      304 GETUPVAL                         R21 2
      305 GETTABLEKS                       R20 R21 K8 ["createElement"]
      307 GETUPVAL                         R21 9
      308 DUPTABLE                         R22 K39 [{"LayoutOrder", "scroll", "tag"}]
      309 MOVE                             R23 R1
      310 CALL                             R23 0 1
      311 SETTABLEKS                       R23 R22 K9 ["LayoutOrder"]
      313 DUPTABLE                         R23 K62 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
      314 GETIMPORT                        R24 K64 [Enum.AutomaticSize.X]
      316 SETTABLEKS                       R24 R23 K40 ["AutomaticCanvasSize"]
      318 GETIMPORT                        R24 K49 [UDim2.fromScale]
      320 LOADN                            R25 0
      321 LOADN                            R26 0
      322 CALL                             R24 2 1
      323 SETTABLEKS                       R24 R23 K41 ["CanvasSize"]
      325 GETIMPORT                        R24 K65 [Enum.ScrollingDirection.X]
      327 SETTABLEKS                       R24 R23 K61 ["ScrollingDirection"]
      329 SETTABLEKS                       R23 R22 K38 ["scroll"]
      331 LOADK                            R23 K66 ["columns-fill col auto-y"]
      332 SETTABLEKS                       R23 R22 K25 ["tag"]
      334 DUPTABLE                         R23 K52 [{"Content"}]
      335 GETUPVAL                         R25 2
      336 GETTABLEKS                       R24 R25 K8 ["createElement"]
      338 GETUPVAL                         R25 5
      339 DUPTABLE                         R26 K53 [{"tag"}]
      340 LOADK                            R27 K67 ["size-full-full col align-y-top"]
      341 SETTABLEKS                       R27 R26 K25 ["tag"]
      343 MOVE                             R27 R6
      344 CALL                             R24 3 1
      345 SETTABLEKS                       R24 R23 K51 ["Content"]
      347 CALL                             R20 3 1
      348 SETTABLEKS                       R20 R19 K56 ["Table"]
      350 CALL                             R16 3 1
      351 SETTABLEKS                       R16 R15 K51 ["Content"]
      353 CALL                             R12 3 1
      354 SETTABLEKS                       R12 R11 K30 ["ScrollView"]
      356 CALL                             R8 3 -1
      357 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Divider"]
       30 GETTABLEKS                       R5 R3 K11 ["View"]
       32 GETTABLEKS                       R7 R0 K12 ["Src"]
       34 GETTABLEKS                       R6 R7 K13 ["Components"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R9 R6 K14 ["Tree"]
       40 GETTABLEKS                       R8 R9 K15 ["Header"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K5 [require]
       45 GETTABLEKS                       R10 R6 K14 ["Tree"]
       47 GETTABLEKS                       R9 R10 K16 ["Node"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R12 R6 K14 ["Tree"]
       54 GETTABLEKS                       R11 R12 K17 ["Table"]
       56 GETTABLEKS                       R10 R11 K18 ["Row"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R3 K19 ["ScrollView"]
       61 GETIMPORT                        R11 K5 [require]
       63 GETTABLEKS                       R13 R0 K12 ["Src"]
       65 GETTABLEKS                       R12 R13 K20 ["Types"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R15 R0 K12 ["Src"]
       72 GETTABLEKS                       R14 R15 K21 ["Hooks"]
       74 GETTABLEKS                       R13 R14 K22 ["useInputItems"]
       76 CALL                             R12 1 1
       77 DUPCLOSURE                       R13 K23 [PROTO_2]
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R12
       80 CAPTURE                          VAL R1
       81 CAPTURE                          VAL R9
       82 CAPTURE                          VAL R8
       83 CAPTURE                          VAL R5
       84 CAPTURE                          VAL R7
       85 CAPTURE                          VAL R4
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R10
       88 RETURN                           R13 1
