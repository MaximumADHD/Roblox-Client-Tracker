PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pageChange"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pageChange"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["props"]
        6 GETTABLEKS                       R2 R2 K3 ["PageIndex"]
        8 ADDK                             R1 R2 K1 [1]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pageChange"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["PageCount"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["pageChange"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K2 ["props"]
        6 GETTABLEKS                       R2 R2 K3 ["PageIndex"]
        8 SUBK                             R1 R2 K1 [1]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K2 [tonumber]
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [1]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K3 ["pageChange"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R3 1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["props"]
        4 GETTABLEKS                       R4 R4 K1 ["PageCount"]
        6 FASTCALL3                        MATH_CLAMP R0 R3 R4
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [math.clamp]
       11 CALL                             R1 3 1
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["props"]
       15 GETTABLEKS                       R2 R2 K5 ["PageIndex"]
       17 JUMPIFEQ                         R1 R2 ; [+8]
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["props"]
       22 GETTABLEKS                       R2 R2 K6 ["OnPageChange"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["firstPage"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["nextPage"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K2 ["lastPage"]
       12 NEWCLOSURE                       R1 P3
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K3 ["prevPage"]
       16 NEWCLOSURE                       R1 P4
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K4 ["textChanged"]
       20 NEWCLOSURE                       R1 P5
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K5 ["pageChange"]
       24 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["PageIndex"]
        6 GETTABLEKS                       R4 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R4 K3 ["Localization"]
       10 JUMPIFNOTEQKN                    R3 K4 [1] ; [+5]
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K5 ["Disabled"]
       15 JUMPIF                           R5 ; [+1]
       16 LOADNIL                          R5
       17 GETTABLEKS                       R7 R1 K6 ["PageCount"]
       19 JUMPIFNOTLE                      R7 R3 ; [+5]
       21 GETUPVAL                         R6 0
       22 GETTABLEKS                       R6 R6 K5 ["Disabled"]
       24 JUMPIF                           R6 ; [+1]
       25 LOADNIL                          R6
       26 GETUPVAL                         R7 1
       27 GETTABLEKS                       R7 R7 K7 ["createElement"]
       29 GETUPVAL                         R8 2
       30 DUPTABLE                         R9 K12 [{"Padding", "AutomaticSize", "Layout", "Spacing"}]
       31 GETTABLEKS                       R10 R2 K8 ["Padding"]
       33 SETTABLEKS                       R10 R9 K8 ["Padding"]
       35 GETIMPORT                        R10 K15 [Enum.AutomaticSize.XY]
       37 SETTABLEKS                       R10 R9 K9 ["AutomaticSize"]
       39 GETIMPORT                        R10 K18 [Enum.FillDirection.Horizontal]
       41 SETTABLEKS                       R10 R9 K10 ["Layout"]
       43 GETTABLEKS                       R10 R2 K11 ["Spacing"]
       45 SETTABLEKS                       R10 R9 K11 ["Spacing"]
       47 DUPTABLE                         R10 K24 [{"First", "Prev", "Page", "PageIndex", "PageCount", "Next", "Last"}]
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R11 R11 K7 ["createElement"]
       51 GETUPVAL                         R12 3
       52 DUPTABLE                         R13 K31 [{["StyleModifier"], ["Style"] = "RoundSubtle", ["Size"], ["LayoutOrder"] = 1, ["OnClick"]}]
       53 SETTABLEKS                       R5 R13 K25 ["StyleModifier"]
       55 GETIMPORT                        R14 K34 [UDim2.fromOffset]
       57 GETTABLEKS                       R15 R2 K35 ["ButtonSize"]
       59 GETTABLEKS                       R16 R2 K35 ["ButtonSize"]
       61 CALL                             R14 2 1
       62 SETTABLEKS                       R14 R13 K28 ["Size"]
       64 GETTABLEKS                       R14 R0 K36 ["firstPage"]
       66 SETTABLEKS                       R14 R13 K30 ["OnClick"]
       68 DUPTABLE                         R14 K39 [{"Tooltip", "Icon"}]
       69 GETUPVAL                         R15 1
       70 GETTABLEKS                       R15 R15 K7 ["createElement"]
       72 GETUPVAL                         R16 4
       73 DUPTABLE                         R17 K41 [{"Text"}]
       74 GETUPVAL                         R20 5
       75 LOADK                            R21 K42 ["PageNavigation"]
       76 LOADK                            R22 K43 ["FirstPage"]
       77 NAMECALL                         R18 R4 K44 ["getProjectText"]
       79 CALL                             R18 4 1
       80 SETTABLEKS                       R18 R17 K40 ["Text"]
       82 CALL                             R15 2 1
       83 SETTABLEKS                       R15 R14 K37 ["Tooltip"]
       85 GETUPVAL                         R15 1
       86 GETTABLEKS                       R15 R15 K7 ["createElement"]
       88 GETUPVAL                         R16 6
       89 DUPTABLE                         R17 K50 [{["Size"], ["Position"], ["AnchorPoint"], ["ImageColor3"], ["Image"] = "rbxasset://textures/DeveloperFramework/PageNavigation/button_control_start.png"}]
       90 GETIMPORT                        R18 K34 [UDim2.fromOffset]
       92 GETTABLEKS                       R19 R2 K51 ["IconSize"]
       94 GETTABLEKS                       R20 R2 K51 ["IconSize"]
       96 CALL                             R18 2 1
       97 SETTABLEKS                       R18 R17 K28 ["Size"]
       99 GETIMPORT                        R18 K53 [UDim2.fromScale]
      101 LOADK                            R19 K54 [0.5]
      102 LOADK                            R20 K54 [0.5]
      103 CALL                             R18 2 1
      104 SETTABLEKS                       R18 R17 K45 ["Position"]
      106 GETIMPORT                        R18 K57 [Vector2.new]
      108 LOADK                            R19 K54 [0.5]
      109 LOADK                            R20 K54 [0.5]
      110 CALL                             R18 2 1
      111 SETTABLEKS                       R18 R17 K46 ["AnchorPoint"]
      113 GETTABLEKS                       R18 R2 K58 ["IconColor"]
      115 SETTABLEKS                       R18 R17 K47 ["ImageColor3"]
      117 CALL                             R15 2 1
      118 SETTABLEKS                       R15 R14 K38 ["Icon"]
      120 CALL                             R11 3 1
      121 SETTABLEKS                       R11 R10 K19 ["First"]
      123 GETUPVAL                         R11 1
      124 GETTABLEKS                       R11 R11 K7 ["createElement"]
      126 GETUPVAL                         R12 3
      127 DUPTABLE                         R13 K60 [{["StyleModifier"], ["Style"] = "RoundSubtle", ["Size"], ["LayoutOrder"] = 2, ["OnClick"]}]
      128 SETTABLEKS                       R5 R13 K25 ["StyleModifier"]
      130 GETIMPORT                        R14 K34 [UDim2.fromOffset]
      132 GETTABLEKS                       R15 R2 K35 ["ButtonSize"]
      134 GETTABLEKS                       R16 R2 K35 ["ButtonSize"]
      136 CALL                             R14 2 1
      137 SETTABLEKS                       R14 R13 K28 ["Size"]
      139 GETTABLEKS                       R14 R0 K61 ["prevPage"]
      141 SETTABLEKS                       R14 R13 K30 ["OnClick"]
      143 DUPTABLE                         R14 K39 [{"Tooltip", "Icon"}]
      144 GETUPVAL                         R15 1
      145 GETTABLEKS                       R15 R15 K7 ["createElement"]
      147 GETUPVAL                         R16 4
      148 DUPTABLE                         R17 K41 [{"Text"}]
      149 GETUPVAL                         R20 5
      150 LOADK                            R21 K42 ["PageNavigation"]
      151 LOADK                            R22 K62 ["PreviousPage"]
      152 NAMECALL                         R18 R4 K44 ["getProjectText"]
      154 CALL                             R18 4 1
      155 SETTABLEKS                       R18 R17 K40 ["Text"]
      157 CALL                             R15 2 1
      158 SETTABLEKS                       R15 R14 K37 ["Tooltip"]
      160 GETUPVAL                         R15 1
      161 GETTABLEKS                       R15 R15 K7 ["createElement"]
      163 GETUPVAL                         R16 6
      164 DUPTABLE                         R17 K64 [{["Size"], ["Position"], ["AnchorPoint"], ["ImageColor3"], ["Image"] = "rbxasset://textures/DeveloperFramework/PageNavigation/button_control_previous.png"}]
      165 GETIMPORT                        R18 K34 [UDim2.fromOffset]
      167 GETTABLEKS                       R19 R2 K51 ["IconSize"]
      169 GETTABLEKS                       R20 R2 K51 ["IconSize"]
      171 CALL                             R18 2 1
      172 SETTABLEKS                       R18 R17 K28 ["Size"]
      174 GETIMPORT                        R18 K53 [UDim2.fromScale]
      176 LOADK                            R19 K54 [0.5]
      177 LOADK                            R20 K54 [0.5]
      178 CALL                             R18 2 1
      179 SETTABLEKS                       R18 R17 K45 ["Position"]
      181 GETIMPORT                        R18 K57 [Vector2.new]
      183 LOADK                            R19 K54 [0.5]
      184 LOADK                            R20 K54 [0.5]
      185 CALL                             R18 2 1
      186 SETTABLEKS                       R18 R17 K46 ["AnchorPoint"]
      188 GETTABLEKS                       R18 R2 K58 ["IconColor"]
      190 SETTABLEKS                       R18 R17 K47 ["ImageColor3"]
      192 CALL                             R15 2 1
      193 SETTABLEKS                       R15 R14 K38 ["Icon"]
      195 CALL                             R11 3 1
      196 SETTABLEKS                       R11 R10 K20 ["Prev"]
      198 GETUPVAL                         R11 1
      199 GETTABLEKS                       R11 R11 K7 ["createElement"]
      201 GETUPVAL                         R12 7
      202 DUPTABLE                         R13 K66 [{["Text"] = "Page", ["LayoutOrder"] = 3, ["AutomaticSize"]}]
      203 GETIMPORT                        R14 K15 [Enum.AutomaticSize.XY]
      205 SETTABLEKS                       R14 R13 K9 ["AutomaticSize"]
      207 CALL                             R11 2 1
      208 SETTABLEKS                       R11 R10 K21 ["Page"]
      210 GETUPVAL                         R11 1
      211 GETTABLEKS                       R11 R11 K7 ["createElement"]
      213 GETUPVAL                         R12 8
      214 DUPTABLE                         R13 K70 [{["LayoutOrder"] = 4, ["Text"], ["OnTextChanged"], ["Style"] = "RoundedBorder", ["Size"]}]
      215 GETTABLEKS                       R15 R1 K2 ["PageIndex"]
      217 FASTCALL1                        TOSTRING R15 ; [+2]
      218 GETIMPORT                        R14 K72 [tostring]
      220 CALL                             R14 1 1
      221 SETTABLEKS                       R14 R13 K40 ["Text"]
      223 GETTABLEKS                       R14 R0 K73 ["textChanged"]
      225 SETTABLEKS                       R14 R13 K68 ["OnTextChanged"]
      227 GETIMPORT                        R14 K74 [UDim2.new]
      229 LOADN                            R15 0
      230 GETTABLEKS                       R16 R2 K75 ["InputWidth"]
      232 LOADN                            R17 0
      233 GETTABLEKS                       R18 R2 K35 ["ButtonSize"]
      235 CALL                             R14 4 1
      236 SETTABLEKS                       R14 R13 K28 ["Size"]
      238 CALL                             R11 2 1
      239 SETTABLEKS                       R11 R10 K2 ["PageIndex"]
      241 GETUPVAL                         R11 1
      242 GETTABLEKS                       R11 R11 K7 ["createElement"]
      244 GETUPVAL                         R12 7
      245 DUPTABLE                         R13 K77 [{["LayoutOrder"] = 5, ["Text"], ["AutomaticSize"]}]
      246 GETUPVAL                         R16 5
      247 LOADK                            R17 K42 ["PageNavigation"]
      248 LOADK                            R18 K6 ["PageCount"]
      249 DUPTABLE                         R19 K79 [{"count"}]
      250 GETTABLEKS                       R20 R1 K6 ["PageCount"]
      252 SETTABLEKS                       R20 R19 K78 ["count"]
      254 NAMECALL                         R14 R4 K44 ["getProjectText"]
      256 CALL                             R14 5 1
      257 SETTABLEKS                       R14 R13 K40 ["Text"]
      259 GETIMPORT                        R14 K15 [Enum.AutomaticSize.XY]
      261 SETTABLEKS                       R14 R13 K9 ["AutomaticSize"]
      263 CALL                             R11 2 1
      264 SETTABLEKS                       R11 R10 K6 ["PageCount"]
      266 GETUPVAL                         R11 1
      267 GETTABLEKS                       R11 R11 K7 ["createElement"]
      269 GETUPVAL                         R12 3
      270 DUPTABLE                         R13 K81 [{["StyleModifier"], ["Style"] = "RoundSubtle", ["Size"], ["LayoutOrder"] = 6, ["OnClick"]}]
      271 SETTABLEKS                       R6 R13 K25 ["StyleModifier"]
      273 GETIMPORT                        R14 K34 [UDim2.fromOffset]
      275 GETTABLEKS                       R15 R2 K35 ["ButtonSize"]
      277 GETTABLEKS                       R16 R2 K35 ["ButtonSize"]
      279 CALL                             R14 2 1
      280 SETTABLEKS                       R14 R13 K28 ["Size"]
      282 GETTABLEKS                       R14 R0 K82 ["nextPage"]
      284 SETTABLEKS                       R14 R13 K30 ["OnClick"]
      286 DUPTABLE                         R14 K39 [{"Tooltip", "Icon"}]
      287 GETUPVAL                         R15 1
      288 GETTABLEKS                       R15 R15 K7 ["createElement"]
      290 GETUPVAL                         R16 4
      291 DUPTABLE                         R17 K41 [{"Text"}]
      292 GETUPVAL                         R20 5
      293 LOADK                            R21 K42 ["PageNavigation"]
      294 LOADK                            R22 K83 ["NextPage"]
      295 NAMECALL                         R18 R4 K44 ["getProjectText"]
      297 CALL                             R18 4 1
      298 SETTABLEKS                       R18 R17 K40 ["Text"]
      300 CALL                             R15 2 1
      301 SETTABLEKS                       R15 R14 K37 ["Tooltip"]
      303 GETUPVAL                         R15 1
      304 GETTABLEKS                       R15 R15 K7 ["createElement"]
      306 GETUPVAL                         R16 6
      307 DUPTABLE                         R17 K85 [{["Size"], ["Position"], ["AnchorPoint"], ["ImageColor3"], ["Image"] = "rbxasset://textures/DeveloperFramework/PageNavigation/button_control_next.png"}]
      308 GETIMPORT                        R18 K34 [UDim2.fromOffset]
      310 GETTABLEKS                       R19 R2 K51 ["IconSize"]
      312 GETTABLEKS                       R20 R2 K51 ["IconSize"]
      314 CALL                             R18 2 1
      315 SETTABLEKS                       R18 R17 K28 ["Size"]
      317 GETIMPORT                        R18 K53 [UDim2.fromScale]
      319 LOADK                            R19 K54 [0.5]
      320 LOADK                            R20 K54 [0.5]
      321 CALL                             R18 2 1
      322 SETTABLEKS                       R18 R17 K45 ["Position"]
      324 GETIMPORT                        R18 K57 [Vector2.new]
      326 LOADK                            R19 K54 [0.5]
      327 LOADK                            R20 K54 [0.5]
      328 CALL                             R18 2 1
      329 SETTABLEKS                       R18 R17 K46 ["AnchorPoint"]
      331 GETTABLEKS                       R18 R2 K58 ["IconColor"]
      333 SETTABLEKS                       R18 R17 K47 ["ImageColor3"]
      335 CALL                             R15 2 1
      336 SETTABLEKS                       R15 R14 K38 ["Icon"]
      338 CALL                             R11 3 1
      339 SETTABLEKS                       R11 R10 K22 ["Next"]
      341 GETUPVAL                         R11 1
      342 GETTABLEKS                       R11 R11 K7 ["createElement"]
      344 GETUPVAL                         R12 3
      345 DUPTABLE                         R13 K87 [{["StyleModifier"], ["Style"] = "RoundSubtle", ["Size"], ["LayoutOrder"] = 7, ["OnClick"]}]
      346 SETTABLEKS                       R6 R13 K25 ["StyleModifier"]
      348 GETIMPORT                        R14 K34 [UDim2.fromOffset]
      350 GETTABLEKS                       R15 R2 K35 ["ButtonSize"]
      352 GETTABLEKS                       R16 R2 K35 ["ButtonSize"]
      354 CALL                             R14 2 1
      355 SETTABLEKS                       R14 R13 K28 ["Size"]
      357 GETTABLEKS                       R14 R0 K88 ["lastPage"]
      359 SETTABLEKS                       R14 R13 K30 ["OnClick"]
      361 DUPTABLE                         R14 K39 [{"Tooltip", "Icon"}]
      362 GETUPVAL                         R15 1
      363 GETTABLEKS                       R15 R15 K7 ["createElement"]
      365 GETUPVAL                         R16 4
      366 DUPTABLE                         R17 K41 [{"Text"}]
      367 GETUPVAL                         R20 5
      368 LOADK                            R21 K42 ["PageNavigation"]
      369 LOADK                            R22 K89 ["LastPage"]
      370 NAMECALL                         R18 R4 K44 ["getProjectText"]
      372 CALL                             R18 4 1
      373 SETTABLEKS                       R18 R17 K40 ["Text"]
      375 CALL                             R15 2 1
      376 SETTABLEKS                       R15 R14 K37 ["Tooltip"]
      378 GETUPVAL                         R15 1
      379 GETTABLEKS                       R15 R15 K7 ["createElement"]
      381 GETUPVAL                         R16 6
      382 DUPTABLE                         R17 K91 [{["Size"], ["Position"], ["AnchorPoint"], ["ImageColor3"], ["Image"] = "rbxasset://textures/DeveloperFramework/PageNavigation/button_control_end.png"}]
      383 GETIMPORT                        R18 K34 [UDim2.fromOffset]
      385 GETTABLEKS                       R19 R2 K51 ["IconSize"]
      387 GETTABLEKS                       R20 R2 K51 ["IconSize"]
      389 CALL                             R18 2 1
      390 SETTABLEKS                       R18 R17 K28 ["Size"]
      392 GETIMPORT                        R18 K53 [UDim2.fromScale]
      394 LOADK                            R19 K54 [0.5]
      395 LOADK                            R20 K54 [0.5]
      396 CALL                             R18 2 1
      397 SETTABLEKS                       R18 R17 K45 ["Position"]
      399 GETIMPORT                        R18 K57 [Vector2.new]
      401 LOADK                            R19 K54 [0.5]
      402 LOADK                            R20 K54 [0.5]
      403 CALL                             R18 2 1
      404 SETTABLEKS                       R18 R17 K46 ["AnchorPoint"]
      406 GETTABLEKS                       R18 R2 K58 ["IconColor"]
      408 SETTABLEKS                       R18 R17 K47 ["ImageColor3"]
      410 CALL                             R15 2 1
      411 SETTABLEKS                       R15 R14 K38 ["Icon"]
      413 CALL                             R11 3 1
      414 SETTABLEKS                       R11 R10 K23 ["Last"]
      416 CALL                             R7 3 -1
      417 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Resources"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["LOCALIZATION_PROJECT_NAME"]
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R0 K2 ["UI"]
       36 GETTABLEKS                       R7 R7 K12 ["Components"]
       38 GETTABLEKS                       R7 R7 K13 ["Pane"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K6 [require]
       43 GETTABLEKS                       R8 R0 K2 ["UI"]
       45 GETTABLEKS                       R8 R8 K12 ["Components"]
       47 GETTABLEKS                       R8 R8 K14 ["DEPRECATED_Button"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K6 [require]
       52 GETTABLEKS                       R9 R0 K2 ["UI"]
       54 GETTABLEKS                       R9 R9 K12 ["Components"]
       56 GETTABLEKS                       R9 R9 K15 ["Tooltip"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K6 [require]
       61 GETTABLEKS                       R10 R0 K2 ["UI"]
       63 GETTABLEKS                       R10 R10 K12 ["Components"]
       65 GETTABLEKS                       R10 R10 K16 ["Image"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K6 [require]
       70 GETTABLEKS                       R11 R0 K2 ["UI"]
       72 GETTABLEKS                       R11 R11 K12 ["Components"]
       74 GETTABLEKS                       R11 R11 K17 ["DEPRECATED_TextInput"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K6 [require]
       79 GETTABLEKS                       R12 R0 K2 ["UI"]
       81 GETTABLEKS                       R12 R12 K12 ["Components"]
       83 GETTABLEKS                       R12 R12 K18 ["TextLabel"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K6 [require]
       88 GETTABLEKS                       R13 R0 K19 ["Util"]
       90 GETTABLEKS                       R13 R13 K20 ["StyleModifier"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K6 [require]
       95 GETTABLEKS                       R14 R0 K19 ["Util"]
       97 GETTABLEKS                       R14 R14 K21 ["Typecheck"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R1 K22 ["PureComponent"]
      102 LOADK                            R16 K23 ["PageNavigation"]
      103 NAMECALL                         R14 R14 K24 ["extend"]
      105 CALL                             R14 2 1
      106 GETTABLEKS                       R15 R13 K25 ["wrap"]
      108 MOVE                             R16 R14
      109 GETIMPORT                        R17 K1 [script]
      111 CALL                             R15 2 0
      112 DUPCLOSURE                       R15 K26 [PROTO_6]
      113 SETTABLEKS                       R15 R14 K27 ["init"]
      115 DUPCLOSURE                       R15 K28 [PROTO_7]
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R10
      125 SETTABLEKS                       R15 R14 K29 ["render"]
      127 MOVE                             R15 R3
      128 DUPTABLE                         R16 K32 [{"Localization", "Stylizer"}]
      129 GETTABLEKS                       R17 R2 K30 ["Localization"]
      131 SETTABLEKS                       R17 R16 K30 ["Localization"]
      133 GETTABLEKS                       R17 R2 K31 ["Stylizer"]
      135 SETTABLEKS                       R17 R16 K31 ["Stylizer"]
      137 CALL                             R15 1 1
      138 MOVE                             R16 R14
      139 CALL                             R15 1 1
      140 MOVE                             R14 R15
      141 RETURN                           R14 1
