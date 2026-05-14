PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["MaterialListItem"]
        8 GETTABLEKS                       R4 R1 K4 ["ApplyToSelection"]
       10 GETTABLEKS                       R5 R1 K5 ["Hover"]
       12 GETTABLEKS                       R6 R1 K6 ["Material"]
       14 GETTABLEKS                       R7 R1 K7 ["MaterialDescription"]
       16 GETTABLEKS                       R8 R1 K8 ["MaterialName"]
       18 GETTABLEKS                       R9 R6 K9 ["MaterialVariant"]
       20 GETTABLEKS                       R10 R6 K6 ["Material"]
       22 GETTABLEKS                       R11 R1 K10 ["Selected"]
       24 GETTABLEKS                       R12 R1 K11 ["Status"]
       26 GETTABLEKS                       R13 R3 K12 ["Height"]
       28 GETTABLEKS                       R14 R3 K13 ["TextSize"]
       30 JUMPIFNOT                        R9 ; [+2]
       31 LOADB                            R15 1
       32 JUMP                             ; [+1]
       33 LOADB                            R15 0
       34 JUMPIF                           R9 ; [+9]
       35 MOVE                             R16 R12
       36 JUMPIFNOT                        R16 ; [+8]
       37 GETIMPORT                        R17 K17 [Enum.PropertyStatus.Ok]
       39 JUMPIFNOTEQ                      R12 R17 ; [+2]
       41 LOADB                            R16 0 +1
       42 LOADB                            R16 1
       43 JUMP                             ; [+1]
       44 LOADB                            R16 0
       45 NEWTABLE                         R17 0 4
       47 GETIMPORT                        R18 K20 [UDim.new]
       49 LOADN                            R19 0
       50 MOVE                             R20 R13
       51 CALL                             R18 2 1
       52 JUMPIFNOT                        R15 ; [+5]
       53 GETTABLEKS                       R19 R3 K21 ["IconSize"]
       55 GETTABLEKS                       R19 R19 K22 ["X"]
       57 JUMP                             ; [+5]
       58 GETIMPORT                        R19 K20 [UDim.new]
       60 LOADN                            R20 0
       61 LOADN                            R21 0
       62 CALL                             R19 2 1
       63 JUMPIFNOT                        R16 ; [+5]
       64 GETTABLEKS                       R20 R3 K21 ["IconSize"]
       66 GETTABLEKS                       R20 R20 K22 ["X"]
       68 JUMP                             ; [+5]
       69 GETIMPORT                        R20 K20 [UDim.new]
       71 LOADN                            R21 0
       72 LOADN                            R22 0
       73 CALL                             R20 2 1
       74 JUMPIFNOT                        R5 ; [+5]
       75 GETTABLEKS                       R21 R3 K23 ["ButtonSize"]
       77 GETTABLEKS                       R21 R21 K22 ["X"]
       79 JUMP                             ; [+5]
       80 GETIMPORT                        R21 K20 [UDim.new]
       82 LOADN                            R22 0
       83 LOADN                            R23 0
       84 CALL                             R21 2 1
       85 SETLIST                          R17 R18 4 [1]
       87 GETIMPORT                        R18 K25 [UDim2.new]
       89 GETUPVAL                         R19 0
       90 MOVE                             R20 R17
       91 LOADN                            R21 0
       92 GETTABLEKS                       R22 R3 K26 ["Spacing"]
       94 CALL                             R19 3 1
       95 GETIMPORT                        R20 K20 [UDim.new]
       97 LOADN                            R21 0
       98 MOVE                             R22 R13
       99 CALL                             R20 2 -1
      100 CALL                             R18 -1 1
      101 GETUPVAL                         R19 1
      102 GETTABLEKS                       R19 R19 K27 ["createElement"]
      104 GETUPVAL                         R20 2
      105 DUPTABLE                         R21 K35 [{"DisableHover", "LayoutOrder", "OnClick", "OnMouseEnter", "OnMouseLeave", "Style", "Size"}]
      106 GETTABLEKS                       R22 R1 K36 ["MenuHover"]
      108 SETTABLEKS                       R22 R21 K28 ["DisableHover"]
      110 GETTABLEKS                       R22 R1 K29 ["LayoutOrder"]
      112 SETTABLEKS                       R22 R21 K29 ["LayoutOrder"]
      114 GETTABLEKS                       R22 R1 K30 ["OnClick"]
      116 SETTABLEKS                       R22 R21 K30 ["OnClick"]
      118 GETTABLEKS                       R22 R1 K31 ["OnMouseEnter"]
      120 SETTABLEKS                       R22 R21 K31 ["OnMouseEnter"]
      122 GETTABLEKS                       R22 R1 K32 ["OnMouseLeave"]
      124 SETTABLEKS                       R22 R21 K32 ["OnMouseLeave"]
      126 JUMPIFNOT                        R11 ; [+2]
      127 LOADK                            R22 K37 ["RoundActive"]
      128 JUMP                             ; [+1]
      129 LOADK                            R22 K38 ["Round"]
      130 SETTABLEKS                       R22 R21 K33 ["Style"]
      132 GETIMPORT                        R22 K40 [UDim2.fromScale]
      134 LOADN                            R23 1
      135 LOADN                            R24 1
      136 CALL                             R22 2 1
      137 SETTABLEKS                       R22 R21 K34 ["Size"]
      139 DUPTABLE                         R22 K42 [{"Content"}]
      140 GETUPVAL                         R23 1
      141 GETTABLEKS                       R23 R23 K27 ["createElement"]
      143 GETUPVAL                         R24 3
      144 DUPTABLE                         R25 K45 [{"HorizontalAlignment", "Layout", "Spacing", "Size"}]
      145 GETIMPORT                        R26 K47 [Enum.HorizontalAlignment.Left]
      147 SETTABLEKS                       R26 R25 K43 ["HorizontalAlignment"]
      149 GETIMPORT                        R26 K50 [Enum.FillDirection.Horizontal]
      151 SETTABLEKS                       R26 R25 K44 ["Layout"]
      153 GETTABLEKS                       R26 R3 K26 ["Spacing"]
      155 SETTABLEKS                       R26 R25 K26 ["Spacing"]
      157 GETIMPORT                        R26 K25 [UDim2.new]
      159 LOADN                            R27 1
      160 LOADN                            R28 246
      161 LOADN                            R29 1
      162 LOADN                            R30 0
      163 CALL                             R26 4 1
      164 SETTABLEKS                       R26 R25 K34 ["Size"]
      166 DUPTABLE                         R26 K55 [{"MaterialPreview", "NameLabel", "ApplyToSelection", "MaterialVariantIcon", "StatusIcon"}]
      167 GETUPVAL                         R27 1
      168 GETTABLEKS                       R27 R27 K27 ["createElement"]
      170 GETUPVAL                         R28 4
      171 DUPTABLE                         R29 K58 [{"Clone", "Hover", "LayoutOrder", "Material", "MaterialVariant", "Size", "Static"}]
      172 LOADB                            R30 0
      173 SETTABLEKS                       R30 R29 K56 ["Clone"]
      175 SETTABLEKS                       R5 R29 K5 ["Hover"]
      177 LOADN                            R30 1
      178 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      180 SETTABLEKS                       R10 R29 K6 ["Material"]
      182 SETTABLEKS                       R9 R29 K9 ["MaterialVariant"]
      184 GETIMPORT                        R30 K60 [UDim2.fromOffset]
      186 MOVE                             R31 R13
      187 MOVE                             R32 R13
      188 CALL                             R30 2 1
      189 SETTABLEKS                       R30 R29 K34 ["Size"]
      191 LOADB                            R30 1
      192 SETTABLEKS                       R30 R29 K57 ["Static"]
      194 CALL                             R27 2 1
      195 SETTABLEKS                       R27 R26 K51 ["MaterialPreview"]
      197 GETUPVAL                         R27 1
      198 GETTABLEKS                       R27 R27 K27 ["createElement"]
      200 GETUPVAL                         R28 3
      201 DUPTABLE                         R29 K61 [{"HorizontalAlignment", "Layout", "LayoutOrder", "Size"}]
      202 GETIMPORT                        R30 K47 [Enum.HorizontalAlignment.Left]
      204 SETTABLEKS                       R30 R29 K43 ["HorizontalAlignment"]
      206 GETIMPORT                        R30 K63 [Enum.FillDirection.Vertical]
      208 SETTABLEKS                       R30 R29 K44 ["Layout"]
      210 LOADN                            R30 2
      211 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      213 SETTABLEKS                       R18 R29 K34 ["Size"]
      215 DUPTABLE                         R30 K65 [{"Name"}]
      216 GETUPVAL                         R31 1
      217 GETTABLEKS                       R31 R31 K27 ["createElement"]
      219 GETUPVAL                         R32 5
      220 DUPTABLE                         R33 K71 [{"Size", "Text", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      221 GETIMPORT                        R34 K40 [UDim2.fromScale]
      223 LOADN                            R35 1
      224 LOADN                            R36 1
      225 CALL                             R34 2 1
      226 SETTABLEKS                       R34 R33 K34 ["Size"]
      228 SETTABLEKS                       R8 R33 K66 ["Text"]
      230 SETTABLEKS                       R14 R33 K13 ["TextSize"]
      232 GETIMPORT                        R34 K73 [Enum.TextTruncate.AtEnd]
      234 SETTABLEKS                       R34 R33 K67 ["TextTruncate"]
      236 GETIMPORT                        R34 K74 [Enum.TextXAlignment.Left]
      238 SETTABLEKS                       R34 R33 K68 ["TextXAlignment"]
      240 GETIMPORT                        R34 K76 [Enum.TextYAlignment.Center]
      242 SETTABLEKS                       R34 R33 K69 ["TextYAlignment"]
      244 LOADB                            R34 0
      245 SETTABLEKS                       R34 R33 K70 ["TextWrapped"]
      247 CALL                             R31 2 1
      248 SETTABLEKS                       R31 R30 K64 ["Name"]
      250 CALL                             R27 3 1
      251 SETTABLEKS                       R27 R26 K52 ["NameLabel"]
      253 JUMPIFNOT                        R5 ; [+69]
      254 GETUPVAL                         R27 1
      255 GETTABLEKS                       R27 R27 K27 ["createElement"]
      257 GETUPVAL                         R28 2
      258 DUPTABLE                         R29 K78 [{"LayoutOrder", "OnClick", "Position", "Size", "Style"}]
      259 LOADN                            R30 3
      260 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      262 SETTABLEKS                       R4 R29 K30 ["OnClick"]
      264 GETTABLEKS                       R30 R3 K79 ["ApplyIconPosition"]
      266 SETTABLEKS                       R30 R29 K77 ["Position"]
      268 GETTABLEKS                       R30 R3 K23 ["ButtonSize"]
      270 SETTABLEKS                       R30 R29 K34 ["Size"]
      272 LOADK                            R30 K38 ["Round"]
      273 SETTABLEKS                       R30 R29 K33 ["Style"]
      275 DUPTABLE                         R30 K82 [{"Image", "Tooltip"}]
      276 GETUPVAL                         R31 1
      277 GETTABLEKS                       R31 R31 K27 ["createElement"]
      279 GETUPVAL                         R32 6
      280 DUPTABLE                         R33 K84 [{"AnchorPoint", "Position", "Size", "Style"}]
      281 GETIMPORT                        R34 K86 [Vector2.new]
      283 LOADK                            R35 K87 [0.5]
      284 LOADK                            R36 K87 [0.5]
      285 CALL                             R34 2 1
      286 SETTABLEKS                       R34 R33 K83 ["AnchorPoint"]
      288 GETIMPORT                        R34 K40 [UDim2.fromScale]
      290 LOADK                            R35 K87 [0.5]
      291 LOADK                            R36 K87 [0.5]
      292 CALL                             R34 2 1
      293 SETTABLEKS                       R34 R33 K77 ["Position"]
      295 GETTABLEKS                       R34 R3 K21 ["IconSize"]
      297 SETTABLEKS                       R34 R33 K34 ["Size"]
      299 GETTABLEKS                       R34 R3 K88 ["ApplyIcon"]
      301 SETTABLEKS                       R34 R33 K33 ["Style"]
      303 CALL                             R31 2 1
      304 SETTABLEKS                       R31 R30 K80 ["Image"]
      306 GETUPVAL                         R31 1
      307 GETTABLEKS                       R31 R31 K27 ["createElement"]
      309 GETUPVAL                         R32 7
      310 DUPTABLE                         R33 K89 [{"Text"}]
      311 LOADK                            R36 K90 ["TopBar"]
      312 LOADK                            R37 K91 ["Apply"]
      313 NAMECALL                         R34 R2 K92 ["getText"]
      315 CALL                             R34 3 1
      316 SETTABLEKS                       R34 R33 K66 ["Text"]
      318 CALL                             R31 2 1
      319 SETTABLEKS                       R31 R30 K81 ["Tooltip"]
      321 CALL                             R27 3 1
      322 JUMP                             ; [+1]
      323 LOADNIL                          R27
      324 SETTABLEKS                       R27 R26 K4 ["ApplyToSelection"]
      326 JUMPIFNOT                        R9 ; [+37]
      327 GETUPVAL                         R27 1
      328 GETTABLEKS                       R27 R27 K27 ["createElement"]
      330 GETUPVAL                         R28 8
      331 DUPTABLE                         R29 K93 [{"LayoutOrder", "Size"}]
      332 LOADN                            R30 4
      333 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      335 GETTABLEKS                       R30 R3 K21 ["IconSize"]
      337 SETTABLEKS                       R30 R29 K34 ["Size"]
      339 DUPTABLE                         R30 K82 [{"Image", "Tooltip"}]
      340 GETUPVAL                         R31 1
      341 GETTABLEKS                       R31 R31 K27 ["createElement"]
      343 GETUPVAL                         R32 6
      344 DUPTABLE                         R33 K94 [{"Style"}]
      345 GETTABLEKS                       R34 R3 K53 ["MaterialVariantIcon"]
      347 SETTABLEKS                       R34 R33 K33 ["Style"]
      349 CALL                             R31 2 1
      350 SETTABLEKS                       R31 R30 K80 ["Image"]
      352 GETUPVAL                         R31 1
      353 GETTABLEKS                       R31 R31 K27 ["createElement"]
      355 GETUPVAL                         R32 7
      356 DUPTABLE                         R33 K89 [{"Text"}]
      357 SETTABLEKS                       R7 R33 K66 ["Text"]
      359 CALL                             R31 2 1
      360 SETTABLEKS                       R31 R30 K81 ["Tooltip"]
      362 CALL                             R27 3 1
      363 JUMP                             ; [+1]
      364 LOADNIL                          R27
      365 SETTABLEKS                       R27 R26 K53 ["MaterialVariantIcon"]
      367 JUMPIFNOT                        R12 ; [+22]
      368 GETIMPORT                        R28 K17 [Enum.PropertyStatus.Ok]
      370 JUMPIFEQ                         R12 R28 ; [+19]
      372 GETUPVAL                         R27 1
      373 GETTABLEKS                       R27 R27 K27 ["createElement"]
      375 GETUPVAL                         R28 9
      376 DUPTABLE                         R29 K95 [{"LayoutOrder", "Material", "Size", "Status"}]
      377 LOADN                            R30 5
      378 SETTABLEKS                       R30 R29 K29 ["LayoutOrder"]
      380 SETTABLEKS                       R6 R29 K6 ["Material"]
      382 GETTABLEKS                       R30 R3 K21 ["IconSize"]
      384 SETTABLEKS                       R30 R29 K34 ["Size"]
      386 SETTABLEKS                       R12 R29 K11 ["Status"]
      388 CALL                             R27 2 1
      389 JUMP                             ; [+1]
      390 LOADNIL                          R27
      391 SETTABLEKS                       R27 R26 K54 ["StatusIcon"]
      393 CALL                             R23 3 1
      394 SETTABLEKS                       R23 R22 K41 ["Content"]
      396 CALL                             R19 3 -1
      397 RETURN                           R19 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R2 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R3 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R4 K9 ["Framework"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       36 GETTABLEKS                       R5 R4 K11 ["withContext"]
       38 GETTABLEKS                       R6 R4 K12 ["Analytics"]
       40 GETTABLEKS                       R7 R4 K13 ["Localization"]
       42 GETTABLEKS                       R8 R3 K14 ["Style"]
       44 GETTABLEKS                       R8 R8 K15 ["Stylizer"]
       46 GETTABLEKS                       R9 R3 K16 ["UI"]
       48 GETTABLEKS                       R10 R9 K17 ["Button"]
       50 GETTABLEKS                       R11 R9 K18 ["Container"]
       52 GETTABLEKS                       R12 R9 K19 ["Pane"]
       54 GETTABLEKS                       R13 R9 K20 ["Image"]
       56 GETTABLEKS                       R14 R9 K21 ["TextLabel"]
       58 GETTABLEKS                       R15 R9 K22 ["Tooltip"]
       60 GETTABLEKS                       R16 R0 K5 ["Src"]
       62 GETTABLEKS                       R16 R16 K23 ["Components"]
       64 GETIMPORT                        R17 K4 [require]
       66 GETTABLEKS                       R18 R16 K24 ["MaterialPreview"]
       68 CALL                             R17 1 1
       69 GETIMPORT                        R18 K4 [require]
       71 GETTABLEKS                       R19 R16 K25 ["StatusIcon"]
       73 CALL                             R18 1 1
       74 GETTABLEKS                       R19 R0 K5 ["Src"]
       76 GETTABLEKS                       R19 R19 K26 ["Util"]
       78 GETIMPORT                        R20 K4 [require]
       80 GETTABLEKS                       R21 R19 K27 ["CalculateFillWidth"]
       82 CALL                             R20 1 1
       83 GETTABLEKS                       R21 R2 K28 ["PureComponent"]
       85 LOADK                            R23 K29 ["MaterialListItem"]
       86 NAMECALL                         R21 R21 K30 ["extend"]
       88 CALL                             R21 2 1
       89 DUPCLOSURE                       R22 K31 [PROTO_0]
       90 CAPTURE                          VAL R20
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R10
       93 CAPTURE                          VAL R12
       94 CAPTURE                          VAL R17
       95 CAPTURE                          VAL R14
       96 CAPTURE                          VAL R13
       97 CAPTURE                          VAL R15
       98 CAPTURE                          VAL R11
       99 CAPTURE                          VAL R18
      100 SETTABLEKS                       R22 R21 K32 ["render"]
      102 MOVE                             R22 R5
      103 DUPTABLE                         R23 K33 [{"Analytics", "Localization", "Stylizer"}]
      104 SETTABLEKS                       R6 R23 K12 ["Analytics"]
      106 SETTABLEKS                       R7 R23 K13 ["Localization"]
      108 SETTABLEKS                       R8 R23 K15 ["Stylizer"]
      110 CALL                             R22 1 1
      111 MOVE                             R23 R21
      112 CALL                             R22 1 -1
      113 RETURN                           R22 -1
