PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["props"]
        4 GETTABLEKS                       R4 R4 K1 ["AssetId"]
        6 FASTCALL1                        TOSTRING R4 ; [+2]
        7 GETIMPORT                        R3 K3 [tostring]
        9 CALL                             R3 1 1
       10 NAMECALL                         R1 R1 K4 ["CopyToClipboard"]
       12 CALL                             R1 2 0
       13 GETUPVAL                         R1 1
       14 DUPTABLE                         R3 K7 [{["copied"] = True}]
       15 NAMECALL                         R1 R1 K8 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U0
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K4 ["onCopyClicked"]
        8 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R2 K3 ["copied"]
        8 GETTABLEKS                       R5 R1 K4 ["YPos"]
       10 GETTABLEKS                       R6 R1 K5 ["AssetId"]
       12 GETUPVAL                         R7 0
       13 CALL                             R7 0 1
       14 JUMPIFNOT                        R7 ; [+185]
       15 GETUPVAL                         R7 1
       16 GETTABLEKS                       R7 R7 K6 ["createElement"]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R8 R8 K7 ["View"]
       21 DUPTABLE                         R9 K11 [{"Position", "AnchorPoint", "Size"}]
       22 GETIMPORT                        R10 K14 [UDim2.new]
       24 LOADK                            R11 K15 [0.5]
       25 LOADN                            R12 0
       26 LOADN                            R13 0
       27 MOVE                             R14 R5
       28 CALL                             R10 4 1
       29 SETTABLEKS                       R10 R9 K8 ["Position"]
       31 GETIMPORT                        R10 K17 [Vector2.new]
       33 LOADK                            R11 K15 [0.5]
       34 LOADN                            R12 0
       35 CALL                             R10 2 1
       36 SETTABLEKS                       R10 R9 K9 ["AnchorPoint"]
       38 GETIMPORT                        R10 K14 [UDim2.new]
       40 LOADN                            R11 0
       41 LOADN                            R12 145
       42 LOADN                            R13 0
       43 LOADN                            R14 24
       44 CALL                             R10 4 1
       45 SETTABLEKS                       R10 R9 K10 ["Size"]
       47 DUPTABLE                         R10 K20 [{"Row", "CopiedLabel"}]
       48 GETUPVAL                         R11 1
       49 GETTABLEKS                       R11 R11 K6 ["createElement"]
       51 GETUPVAL                         R12 2
       52 GETTABLEKS                       R12 R12 K7 ["View"]
       54 DUPTABLE                         R13 K23 [{["tag"] = "row align-x-center align-y-center gap-xsmall", ["Size"]}]
       55 GETIMPORT                        R14 K14 [UDim2.new]
       57 LOADN                            R15 1
       58 LOADN                            R16 0
       59 LOADN                            R17 1
       60 LOADN                            R18 0
       61 CALL                             R14 4 1
       62 SETTABLEKS                       R14 R13 K10 ["Size"]
       64 DUPTABLE                         R14 K26 [{"IDLabel", "CopyButton"}]
       65 GETUPVAL                         R15 1
       66 GETTABLEKS                       R15 R15 K6 ["createElement"]
       68 GETUPVAL                         R16 2
       69 GETTABLEKS                       R16 R16 K27 ["Text"]
       71 DUPTABLE                         R17 K32 [{["tag"] = "text-body-medium text-align-x-right", ["Text"], ["textStyle"], ["Size"], ["LayoutOrder"] = 1}]
       72 LOADK                            R19 K33 ["ID: "]
       73 MOVE                             R20 R6
       74 CONCAT                           R18 R19 R20
       75 SETTABLEKS                       R18 R17 K27 ["Text"]
       77 DUPTABLE                         R18 K35 [{"Color3"}]
       78 GETTABLEKS                       R19 R3 K36 ["uploadResult"]
       80 GETTABLEKS                       R19 R19 K37 ["idText"]
       82 SETTABLEKS                       R19 R18 K34 ["Color3"]
       84 SETTABLEKS                       R18 R17 K29 ["textStyle"]
       86 GETIMPORT                        R18 K14 [UDim2.new]
       88 LOADN                            R19 0
       89 LOADN                            R20 120
       90 LOADN                            R21 1
       91 LOADN                            R22 0
       92 CALL                             R18 4 1
       93 SETTABLEKS                       R18 R17 K10 ["Size"]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K24 ["IDLabel"]
       98 GETUPVAL                         R15 1
       99 GETTABLEKS                       R15 R15 K6 ["createElement"]
      101 LOADK                            R16 K38 ["ImageButton"]
      102 NEWTABLE                         R17 8 0
      104 GETIMPORT                        R18 K14 [UDim2.new]
      106 LOADN                            R19 0
      107 LOADN                            R20 20
      108 LOADN                            R21 0
      109 LOADN                            R22 20
      110 CALL                             R18 4 1
      111 SETTABLEKS                       R18 R17 K10 ["Size"]
      113 LOADK                            R18 K39 ["rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"]
      114 SETTABLEKS                       R18 R17 K40 ["Image"]
      116 GETTABLEKS                       R18 R3 K36 ["uploadResult"]
      118 GETTABLEKS                       R18 R18 K41 ["buttonColor"]
      120 SETTABLEKS                       R18 R17 K42 ["ImageColor3"]
      122 LOADN                            R18 1
      123 SETTABLEKS                       R18 R17 K43 ["BackgroundTransparency"]
      125 LOADN                            R18 2
      126 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      128 GETUPVAL                         R18 1
      129 GETTABLEKS                       R18 R18 K44 ["Event"]
      131 GETTABLEKS                       R18 R18 K45 ["MouseButton1Click"]
      133 GETTABLEKS                       R19 R0 K46 ["onCopyClicked"]
      135 SETTABLE                         R19 R17 R18
      136 CALL                             R15 2 1
      137 SETTABLEKS                       R15 R14 K25 ["CopyButton"]
      139 CALL                             R11 3 1
      140 SETTABLEKS                       R11 R10 K18 ["Row"]
      142 JUMPIFNOT                        R4 ; [+52]
      143 GETUPVAL                         R11 1
      144 GETTABLEKS                       R11 R11 K6 ["createElement"]
      146 GETUPVAL                         R12 2
      147 GETTABLEKS                       R12 R12 K27 ["Text"]
      149 DUPTABLE                         R13 K48 [{["tag"] = "text-body-medium text-align-x-center", ["Text"], ["textStyle"], ["Size"], ["AnchorPoint"], ["Position"]}]
      150 GETTABLEKS                       R14 R1 K49 ["Localization"]
      152 LOADK                            R16 K50 ["AssetConfigUpload"]
      153 LOADK                            R17 K51 ["IDCopied"]
      154 NAMECALL                         R14 R14 K52 ["getText"]
      156 CALL                             R14 3 1
      157 SETTABLEKS                       R14 R13 K27 ["Text"]
      159 DUPTABLE                         R14 K35 [{"Color3"}]
      160 GETTABLEKS                       R15 R3 K36 ["uploadResult"]
      162 GETTABLEKS                       R15 R15 K53 ["greenText"]
      164 SETTABLEKS                       R15 R14 K34 ["Color3"]
      166 SETTABLEKS                       R14 R13 K29 ["textStyle"]
      168 GETIMPORT                        R14 K14 [UDim2.new]
      170 LOADN                            R15 0
      171 LOADN                            R16 64
      172 LOADN                            R17 1
      173 LOADN                            R18 0
      174 CALL                             R14 4 1
      175 SETTABLEKS                       R14 R13 K10 ["Size"]
      177 GETIMPORT                        R14 K17 [Vector2.new]
      179 LOADN                            R15 0
      180 LOADK                            R16 K15 [0.5]
      181 CALL                             R14 2 1
      182 SETTABLEKS                       R14 R13 K9 ["AnchorPoint"]
      184 GETIMPORT                        R14 K14 [UDim2.new]
      186 LOADN                            R15 0
      187 LOADN                            R16 150
      188 LOADK                            R17 K15 [0.5]
      189 LOADN                            R18 0
      190 CALL                             R14 4 1
      191 SETTABLEKS                       R14 R13 K8 ["Position"]
      193 CALL                             R11 2 1
      194 JUMPIF                           R11 ; [+1]
      195 LOADNIL                          R11
      196 SETTABLEKS                       R11 R10 K19 ["CopiedLabel"]
      198 CALL                             R7 3 -1
      199 RETURN                           R7 -1
      200 GETUPVAL                         R7 3
      201 GETTABLEKS                       R7 R7 K6 ["createElement"]
      203 LOADK                            R8 K54 ["Frame"]
      204 DUPTABLE                         R9 K55 [{["BackgroundTransparency"] = 1, ["Position"], ["AnchorPoint"], ["Size"]}]
      205 GETIMPORT                        R10 K14 [UDim2.new]
      207 LOADK                            R11 K15 [0.5]
      208 LOADN                            R12 0
      209 LOADN                            R13 0
      210 MOVE                             R14 R5
      211 CALL                             R10 4 1
      212 SETTABLEKS                       R10 R9 K8 ["Position"]
      214 GETIMPORT                        R10 K17 [Vector2.new]
      216 LOADK                            R11 K15 [0.5]
      217 LOADN                            R12 0
      218 CALL                             R10 2 1
      219 SETTABLEKS                       R10 R9 K9 ["AnchorPoint"]
      221 GETIMPORT                        R10 K14 [UDim2.new]
      223 LOADN                            R11 0
      224 LOADN                            R12 145
      225 LOADN                            R13 0
      226 LOADN                            R14 24
      227 CALL                             R10 4 1
      228 SETTABLEKS                       R10 R9 K10 ["Size"]
      230 DUPTABLE                         R10 K57 [{"LayoutContainer", "CopiedLabel"}]
      231 GETUPVAL                         R11 3
      232 GETTABLEKS                       R11 R11 K6 ["createElement"]
      234 LOADK                            R12 K54 ["Frame"]
      235 DUPTABLE                         R13 K58 [{["BackgroundTransparency"] = 1, ["Size"]}]
      236 GETIMPORT                        R14 K14 [UDim2.new]
      238 LOADN                            R15 1
      239 LOADN                            R16 0
      240 LOADN                            R17 1
      241 LOADN                            R18 0
      242 CALL                             R14 4 1
      243 SETTABLEKS                       R14 R13 K10 ["Size"]
      245 DUPTABLE                         R14 K60 [{"UIListLayout", "IDLabel", "CopyButton"}]
      246 GETUPVAL                         R15 3
      247 GETTABLEKS                       R15 R15 K6 ["createElement"]
      249 LOADK                            R16 K59 ["UIListLayout"]
      250 DUPTABLE                         R17 K66 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      251 GETIMPORT                        R18 K69 [Enum.FillDirection.Horizontal]
      253 SETTABLEKS                       R18 R17 K61 ["FillDirection"]
      255 GETIMPORT                        R18 K71 [Enum.HorizontalAlignment.Center]
      257 SETTABLEKS                       R18 R17 K62 ["HorizontalAlignment"]
      259 GETIMPORT                        R18 K72 [Enum.VerticalAlignment.Center]
      261 SETTABLEKS                       R18 R17 K63 ["VerticalAlignment"]
      263 GETIMPORT                        R18 K73 [Enum.SortOrder.LayoutOrder]
      265 SETTABLEKS                       R18 R17 K64 ["SortOrder"]
      267 GETIMPORT                        R18 K75 [UDim.new]
      269 LOADN                            R19 0
      270 LOADN                            R20 5
      271 CALL                             R18 2 1
      272 SETTABLEKS                       R18 R17 K65 ["Padding"]
      274 CALL                             R15 2 1
      275 SETTABLEKS                       R15 R14 K59 ["UIListLayout"]
      277 GETUPVAL                         R15 3
      278 GETTABLEKS                       R15 R15 K6 ["createElement"]
      280 LOADK                            R16 K76 ["TextLabel"]
      281 DUPTABLE                         R17 K82 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["TextYAlignment"], ["TextXAlignment"], ["LayoutOrder"] = 1}]
      282 GETUPVAL                         R18 4
      283 GETTABLEKS                       R18 R18 K83 ["FONT"]
      285 SETTABLEKS                       R18 R17 K77 ["Font"]
      287 LOADK                            R19 K33 ["ID: "]
      288 MOVE                             R20 R6
      289 CONCAT                           R18 R19 R20
      290 SETTABLEKS                       R18 R17 K27 ["Text"]
      292 GETTABLEKS                       R18 R3 K36 ["uploadResult"]
      294 GETTABLEKS                       R18 R18 K37 ["idText"]
      296 SETTABLEKS                       R18 R17 K78 ["TextColor3"]
      298 GETUPVAL                         R18 4
      299 GETTABLEKS                       R18 R18 K84 ["FONT_SIZE_MEDIUM"]
      301 SETTABLEKS                       R18 R17 K79 ["TextSize"]
      303 GETIMPORT                        R18 K14 [UDim2.new]
      305 LOADN                            R19 0
      306 LOADN                            R20 120
      307 LOADN                            R21 1
      308 LOADN                            R22 0
      309 CALL                             R18 4 1
      310 SETTABLEKS                       R18 R17 K10 ["Size"]
      312 GETIMPORT                        R18 K85 [Enum.TextYAlignment.Center]
      314 SETTABLEKS                       R18 R17 K80 ["TextYAlignment"]
      316 GETIMPORT                        R18 K87 [Enum.TextXAlignment.Right]
      318 SETTABLEKS                       R18 R17 K81 ["TextXAlignment"]
      320 CALL                             R15 2 1
      321 SETTABLEKS                       R15 R14 K24 ["IDLabel"]
      323 GETUPVAL                         R15 3
      324 GETTABLEKS                       R15 R15 K6 ["createElement"]
      326 LOADK                            R16 K38 ["ImageButton"]
      327 NEWTABLE                         R17 8 0
      329 GETIMPORT                        R18 K14 [UDim2.new]
      331 LOADN                            R19 0
      332 LOADN                            R20 20
      333 LOADN                            R21 0
      334 LOADN                            R22 20
      335 CALL                             R18 4 1
      336 SETTABLEKS                       R18 R17 K10 ["Size"]
      338 LOADK                            R18 K39 ["rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"]
      339 SETTABLEKS                       R18 R17 K40 ["Image"]
      341 GETTABLEKS                       R18 R3 K36 ["uploadResult"]
      343 GETTABLEKS                       R18 R18 K41 ["buttonColor"]
      345 SETTABLEKS                       R18 R17 K42 ["ImageColor3"]
      347 LOADN                            R18 1
      348 SETTABLEKS                       R18 R17 K43 ["BackgroundTransparency"]
      350 LOADN                            R18 2
      351 SETTABLEKS                       R18 R17 K30 ["LayoutOrder"]
      353 GETUPVAL                         R18 3
      354 GETTABLEKS                       R18 R18 K44 ["Event"]
      356 GETTABLEKS                       R18 R18 K45 ["MouseButton1Click"]
      358 GETTABLEKS                       R19 R0 K46 ["onCopyClicked"]
      360 SETTABLE                         R19 R17 R18
      361 CALL                             R15 2 1
      362 SETTABLEKS                       R15 R14 K25 ["CopyButton"]
      364 CALL                             R11 3 1
      365 SETTABLEKS                       R11 R10 K56 ["LayoutContainer"]
      367 MOVE                             R11 R4
      368 JUMPIFNOT                        R11 ; [+64]
      369 GETUPVAL                         R11 3
      370 GETTABLEKS                       R11 R11 K6 ["createElement"]
      372 LOADK                            R12 K76 ["TextLabel"]
      373 DUPTABLE                         R13 K88 [{["BackgroundTransparency"] = 1, ["Font"], ["Text"], ["TextColor3"], ["TextSize"], ["Size"], ["AnchorPoint"], ["Position"], ["TextYAlignment"], ["TextXAlignment"]}]
      374 GETUPVAL                         R14 4
      375 GETTABLEKS                       R14 R14 K83 ["FONT"]
      377 SETTABLEKS                       R14 R13 K77 ["Font"]
      379 GETTABLEKS                       R14 R1 K49 ["Localization"]
      381 LOADK                            R16 K50 ["AssetConfigUpload"]
      382 LOADK                            R17 K51 ["IDCopied"]
      383 NAMECALL                         R14 R14 K52 ["getText"]
      385 CALL                             R14 3 1
      386 SETTABLEKS                       R14 R13 K27 ["Text"]
      388 GETTABLEKS                       R14 R3 K36 ["uploadResult"]
      390 GETTABLEKS                       R14 R14 K53 ["greenText"]
      392 SETTABLEKS                       R14 R13 K78 ["TextColor3"]
      394 GETUPVAL                         R14 4
      395 GETTABLEKS                       R14 R14 K84 ["FONT_SIZE_MEDIUM"]
      397 SETTABLEKS                       R14 R13 K79 ["TextSize"]
      399 GETIMPORT                        R14 K14 [UDim2.new]
      401 LOADN                            R15 0
      402 LOADN                            R16 64
      403 LOADN                            R17 1
      404 LOADN                            R18 0
      405 CALL                             R14 4 1
      406 SETTABLEKS                       R14 R13 K10 ["Size"]
      408 GETIMPORT                        R14 K17 [Vector2.new]
      410 LOADN                            R15 0
      411 LOADK                            R16 K15 [0.5]
      412 CALL                             R14 2 1
      413 SETTABLEKS                       R14 R13 K9 ["AnchorPoint"]
      415 GETIMPORT                        R14 K14 [UDim2.new]
      417 LOADN                            R15 0
      418 LOADN                            R16 150
      419 LOADK                            R17 K15 [0.5]
      420 LOADN                            R18 0
      421 CALL                             R14 4 1
      422 SETTABLEKS                       R14 R13 K8 ["Position"]
      424 GETIMPORT                        R14 K85 [Enum.TextYAlignment.Center]
      426 SETTABLEKS                       R14 R13 K80 ["TextYAlignment"]
      428 GETIMPORT                        R14 K89 [Enum.TextXAlignment.Center]
      430 SETTABLEKS                       R14 R13 K81 ["TextXAlignment"]
      432 CALL                             R11 2 1
      433 SETTABLEKS                       R11 R10 K19 ["CopiedLabel"]
      435 CALL                             R7 3 -1
      436 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [game]
       13 LOADK                            R3 K5 ["StudioService"]
       14 NAMECALL                         R1 R1 K6 ["GetService"]
       16 CALL                             R1 2 1
       17 GETTABLEKS                       R2 R0 K7 ["Packages"]
       19 GETIMPORT                        R3 K9 [require]
       21 GETTABLEKS                       R4 R2 K10 ["Roact"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K9 [require]
       26 GETTABLEKS                       R5 R2 K11 ["React"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K9 [require]
       31 GETTABLEKS                       R6 R2 K12 ["Foundation"]
       33 CALL                             R5 1 1
       34 GETTABLEKS                       R6 R0 K13 ["Src"]
       36 GETTABLEKS                       R6 R6 K14 ["Util"]
       38 GETIMPORT                        R7 K9 [require]
       40 GETTABLEKS                       R8 R6 K15 ["Constants"]
       42 CALL                             R7 1 1
       43 GETIMPORT                        R8 K9 [require]
       45 GETTABLEKS                       R9 R0 K13 ["Src"]
       47 GETTABLEKS                       R9 R9 K16 ["Flags"]
       49 GETTABLEKS                       R9 R9 K17 ["getFFlagToolboxAssetConfigFoundationMigration"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K9 [require]
       54 GETTABLEKS                       R10 R2 K18 ["Framework"]
       56 CALL                             R9 1 1
       57 GETTABLEKS                       R9 R9 K19 ["ContextServices"]
       59 GETTABLEKS                       R10 R9 K20 ["withContext"]
       61 GETTABLEKS                       R11 R3 K21 ["PureComponent"]
       63 LOADK                            R13 K22 ["CopyID"]
       64 NAMECALL                         R11 R11 K23 ["extend"]
       66 CALL                             R11 2 1
       67 DUPCLOSURE                       R12 K24 [PROTO_1]
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R12 R11 K25 ["init"]
       71 DUPCLOSURE                       R12 K26 [PROTO_2]
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R3
       76 CAPTURE                          VAL R7
       77 SETTABLEKS                       R12 R11 K27 ["render"]
       79 MOVE                             R12 R10
       80 DUPTABLE                         R13 K30 [{"Stylizer", "Localization"}]
       81 GETTABLEKS                       R14 R9 K28 ["Stylizer"]
       83 SETTABLEKS                       R14 R13 K28 ["Stylizer"]
       85 GETTABLEKS                       R14 R9 K29 ["Localization"]
       87 SETTABLEKS                       R14 R13 K29 ["Localization"]
       89 CALL                             R12 1 1
       90 MOVE                             R13 R11
       91 CALL                             R12 1 1
       92 MOVE                             R11 R12
       93 RETURN                           R11 1
