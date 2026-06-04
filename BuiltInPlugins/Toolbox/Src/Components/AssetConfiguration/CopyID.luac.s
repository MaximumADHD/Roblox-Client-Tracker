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
       14 DUPTABLE                         R3 K6 [{"copied"}]
       15 LOADB                            R4 1
       16 SETTABLEKS                       R4 R3 K5 ["copied"]
       18 NAMECALL                         R1 R1 K7 ["setState"]
       20 CALL                             R1 2 0
       21 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"copied"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["copied"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K3 ["onCopyClicked"]
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R4 R2 K3 ["copied"]
        8 GETTABLEKS                       R5 R1 K4 ["YPos"]
       10 GETTABLEKS                       R6 R1 K5 ["AssetId"]
       12 GETUPVAL                         R7 0
       13 CALL                             R7 0 1
       14 JUMPIFNOT                        R7 ; [+197]
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
       54 DUPTABLE                         R13 K22 [{"tag", "Size"}]
       55 LOADK                            R14 K23 ["row align-x-center align-y-center gap-xsmall"]
       56 SETTABLEKS                       R14 R13 K21 ["tag"]
       58 GETIMPORT                        R14 K14 [UDim2.new]
       60 LOADN                            R15 1
       61 LOADN                            R16 0
       62 LOADN                            R17 1
       63 LOADN                            R18 0
       64 CALL                             R14 4 1
       65 SETTABLEKS                       R14 R13 K10 ["Size"]
       67 DUPTABLE                         R14 K26 [{"IDLabel", "CopyButton"}]
       68 GETUPVAL                         R15 1
       69 GETTABLEKS                       R15 R15 K6 ["createElement"]
       71 GETUPVAL                         R16 2
       72 GETTABLEKS                       R16 R16 K27 ["Text"]
       74 DUPTABLE                         R17 K30 [{"tag", "Text", "textStyle", "Size", "LayoutOrder"}]
       75 LOADK                            R18 K31 ["text-body-medium text-align-x-right"]
       76 SETTABLEKS                       R18 R17 K21 ["tag"]
       78 LOADK                            R19 K32 ["ID: "]
       79 MOVE                             R20 R6
       80 CONCAT                           R18 R19 R20
       81 SETTABLEKS                       R18 R17 K27 ["Text"]
       83 DUPTABLE                         R18 K34 [{"Color3"}]
       84 GETTABLEKS                       R19 R3 K35 ["uploadResult"]
       86 GETTABLEKS                       R19 R19 K36 ["idText"]
       88 SETTABLEKS                       R19 R18 K33 ["Color3"]
       90 SETTABLEKS                       R18 R17 K28 ["textStyle"]
       92 GETIMPORT                        R18 K14 [UDim2.new]
       94 LOADN                            R19 0
       95 LOADN                            R20 120
       96 LOADN                            R21 1
       97 LOADN                            R22 0
       98 CALL                             R18 4 1
       99 SETTABLEKS                       R18 R17 K10 ["Size"]
      101 LOADN                            R18 1
      102 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K24 ["IDLabel"]
      107 GETUPVAL                         R15 1
      108 GETTABLEKS                       R15 R15 K6 ["createElement"]
      110 LOADK                            R16 K37 ["ImageButton"]
      111 NEWTABLE                         R17 8 0
      113 GETIMPORT                        R18 K14 [UDim2.new]
      115 LOADN                            R19 0
      116 LOADN                            R20 20
      117 LOADN                            R21 0
      118 LOADN                            R22 20
      119 CALL                             R18 4 1
      120 SETTABLEKS                       R18 R17 K10 ["Size"]
      122 LOADK                            R18 K38 ["rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"]
      123 SETTABLEKS                       R18 R17 K39 ["Image"]
      125 GETTABLEKS                       R18 R3 K35 ["uploadResult"]
      127 GETTABLEKS                       R18 R18 K40 ["buttonColor"]
      129 SETTABLEKS                       R18 R17 K41 ["ImageColor3"]
      131 LOADN                            R18 1
      132 SETTABLEKS                       R18 R17 K42 ["BackgroundTransparency"]
      134 LOADN                            R18 2
      135 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
      137 GETUPVAL                         R18 1
      138 GETTABLEKS                       R18 R18 K43 ["Event"]
      140 GETTABLEKS                       R18 R18 K44 ["MouseButton1Click"]
      142 GETTABLEKS                       R19 R0 K45 ["onCopyClicked"]
      144 SETTABLE                         R19 R17 R18
      145 CALL                             R15 2 1
      146 SETTABLEKS                       R15 R14 K25 ["CopyButton"]
      148 CALL                             R11 3 1
      149 SETTABLEKS                       R11 R10 K18 ["Row"]
      151 JUMPIFNOT                        R4 ; [+55]
      152 GETUPVAL                         R11 1
      153 GETTABLEKS                       R11 R11 K6 ["createElement"]
      155 GETUPVAL                         R12 2
      156 GETTABLEKS                       R12 R12 K27 ["Text"]
      158 DUPTABLE                         R13 K46 [{"tag", "Text", "textStyle", "Size", "AnchorPoint", "Position"}]
      159 LOADK                            R14 K47 ["text-body-medium text-align-x-center"]
      160 SETTABLEKS                       R14 R13 K21 ["tag"]
      162 GETTABLEKS                       R14 R1 K48 ["Localization"]
      164 LOADK                            R16 K49 ["AssetConfigUpload"]
      165 LOADK                            R17 K50 ["IDCopied"]
      166 NAMECALL                         R14 R14 K51 ["getText"]
      168 CALL                             R14 3 1
      169 SETTABLEKS                       R14 R13 K27 ["Text"]
      171 DUPTABLE                         R14 K34 [{"Color3"}]
      172 GETTABLEKS                       R15 R3 K35 ["uploadResult"]
      174 GETTABLEKS                       R15 R15 K52 ["greenText"]
      176 SETTABLEKS                       R15 R14 K33 ["Color3"]
      178 SETTABLEKS                       R14 R13 K28 ["textStyle"]
      180 GETIMPORT                        R14 K14 [UDim2.new]
      182 LOADN                            R15 0
      183 LOADN                            R16 64
      184 LOADN                            R17 1
      185 LOADN                            R18 0
      186 CALL                             R14 4 1
      187 SETTABLEKS                       R14 R13 K10 ["Size"]
      189 GETIMPORT                        R14 K17 [Vector2.new]
      191 LOADN                            R15 0
      192 LOADK                            R16 K15 [0.5]
      193 CALL                             R14 2 1
      194 SETTABLEKS                       R14 R13 K9 ["AnchorPoint"]
      196 GETIMPORT                        R14 K14 [UDim2.new]
      198 LOADN                            R15 0
      199 LOADN                            R16 150
      200 LOADK                            R17 K15 [0.5]
      201 LOADN                            R18 0
      202 CALL                             R14 4 1
      203 SETTABLEKS                       R14 R13 K8 ["Position"]
      205 CALL                             R11 2 1
      206 JUMPIF                           R11 ; [+1]
      207 LOADNIL                          R11
      208 SETTABLEKS                       R11 R10 K19 ["CopiedLabel"]
      210 CALL                             R7 3 -1
      211 RETURN                           R7 -1
      212 GETUPVAL                         R7 3
      213 GETTABLEKS                       R7 R7 K6 ["createElement"]
      215 LOADK                            R8 K53 ["Frame"]
      216 DUPTABLE                         R9 K54 [{"BackgroundTransparency", "Position", "AnchorPoint", "Size"}]
      217 LOADN                            R10 1
      218 SETTABLEKS                       R10 R9 K42 ["BackgroundTransparency"]
      220 GETIMPORT                        R10 K14 [UDim2.new]
      222 LOADK                            R11 K15 [0.5]
      223 LOADN                            R12 0
      224 LOADN                            R13 0
      225 MOVE                             R14 R5
      226 CALL                             R10 4 1
      227 SETTABLEKS                       R10 R9 K8 ["Position"]
      229 GETIMPORT                        R10 K17 [Vector2.new]
      231 LOADK                            R11 K15 [0.5]
      232 LOADN                            R12 0
      233 CALL                             R10 2 1
      234 SETTABLEKS                       R10 R9 K9 ["AnchorPoint"]
      236 GETIMPORT                        R10 K14 [UDim2.new]
      238 LOADN                            R11 0
      239 LOADN                            R12 145
      240 LOADN                            R13 0
      241 LOADN                            R14 24
      242 CALL                             R10 4 1
      243 SETTABLEKS                       R10 R9 K10 ["Size"]
      245 DUPTABLE                         R10 K56 [{"LayoutContainer", "CopiedLabel"}]
      246 GETUPVAL                         R11 3
      247 GETTABLEKS                       R11 R11 K6 ["createElement"]
      249 LOADK                            R12 K53 ["Frame"]
      250 DUPTABLE                         R13 K57 [{"BackgroundTransparency", "Size"}]
      251 LOADN                            R14 1
      252 SETTABLEKS                       R14 R13 K42 ["BackgroundTransparency"]
      254 GETIMPORT                        R14 K14 [UDim2.new]
      256 LOADN                            R15 1
      257 LOADN                            R16 0
      258 LOADN                            R17 1
      259 LOADN                            R18 0
      260 CALL                             R14 4 1
      261 SETTABLEKS                       R14 R13 K10 ["Size"]
      263 DUPTABLE                         R14 K59 [{"UIListLayout", "IDLabel", "CopyButton"}]
      264 GETUPVAL                         R15 3
      265 GETTABLEKS                       R15 R15 K6 ["createElement"]
      267 LOADK                            R16 K58 ["UIListLayout"]
      268 DUPTABLE                         R17 K65 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment", "SortOrder", "Padding"}]
      269 GETIMPORT                        R18 K68 [Enum.FillDirection.Horizontal]
      271 SETTABLEKS                       R18 R17 K60 ["FillDirection"]
      273 GETIMPORT                        R18 K70 [Enum.HorizontalAlignment.Center]
      275 SETTABLEKS                       R18 R17 K61 ["HorizontalAlignment"]
      277 GETIMPORT                        R18 K71 [Enum.VerticalAlignment.Center]
      279 SETTABLEKS                       R18 R17 K62 ["VerticalAlignment"]
      281 GETIMPORT                        R18 K72 [Enum.SortOrder.LayoutOrder]
      283 SETTABLEKS                       R18 R17 K63 ["SortOrder"]
      285 GETIMPORT                        R18 K74 [UDim.new]
      287 LOADN                            R19 0
      288 LOADN                            R20 5
      289 CALL                             R18 2 1
      290 SETTABLEKS                       R18 R17 K64 ["Padding"]
      292 CALL                             R15 2 1
      293 SETTABLEKS                       R15 R14 K58 ["UIListLayout"]
      295 GETUPVAL                         R15 3
      296 GETTABLEKS                       R15 R15 K6 ["createElement"]
      298 LOADK                            R16 K75 ["TextLabel"]
      299 DUPTABLE                         R17 K81 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "TextYAlignment", "TextXAlignment", "LayoutOrder"}]
      300 LOADN                            R18 1
      301 SETTABLEKS                       R18 R17 K42 ["BackgroundTransparency"]
      303 GETUPVAL                         R18 4
      304 GETTABLEKS                       R18 R18 K82 ["FONT"]
      306 SETTABLEKS                       R18 R17 K76 ["Font"]
      308 LOADK                            R19 K32 ["ID: "]
      309 MOVE                             R20 R6
      310 CONCAT                           R18 R19 R20
      311 SETTABLEKS                       R18 R17 K27 ["Text"]
      313 GETTABLEKS                       R18 R3 K35 ["uploadResult"]
      315 GETTABLEKS                       R18 R18 K36 ["idText"]
      317 SETTABLEKS                       R18 R17 K77 ["TextColor3"]
      319 GETUPVAL                         R18 4
      320 GETTABLEKS                       R18 R18 K83 ["FONT_SIZE_MEDIUM"]
      322 SETTABLEKS                       R18 R17 K78 ["TextSize"]
      324 GETIMPORT                        R18 K14 [UDim2.new]
      326 LOADN                            R19 0
      327 LOADN                            R20 120
      328 LOADN                            R21 1
      329 LOADN                            R22 0
      330 CALL                             R18 4 1
      331 SETTABLEKS                       R18 R17 K10 ["Size"]
      333 GETIMPORT                        R18 K84 [Enum.TextYAlignment.Center]
      335 SETTABLEKS                       R18 R17 K79 ["TextYAlignment"]
      337 GETIMPORT                        R18 K86 [Enum.TextXAlignment.Right]
      339 SETTABLEKS                       R18 R17 K80 ["TextXAlignment"]
      341 LOADN                            R18 1
      342 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
      344 CALL                             R15 2 1
      345 SETTABLEKS                       R15 R14 K24 ["IDLabel"]
      347 GETUPVAL                         R15 3
      348 GETTABLEKS                       R15 R15 K6 ["createElement"]
      350 LOADK                            R16 K37 ["ImageButton"]
      351 NEWTABLE                         R17 8 0
      353 GETIMPORT                        R18 K14 [UDim2.new]
      355 LOADN                            R19 0
      356 LOADN                            R20 20
      357 LOADN                            R21 0
      358 LOADN                            R22 20
      359 CALL                             R18 4 1
      360 SETTABLEKS                       R18 R17 K10 ["Size"]
      362 LOADK                            R18 K38 ["rbxasset://textures/StudioToolbox/AssetConfig/copy_2x.png"]
      363 SETTABLEKS                       R18 R17 K39 ["Image"]
      365 GETTABLEKS                       R18 R3 K35 ["uploadResult"]
      367 GETTABLEKS                       R18 R18 K40 ["buttonColor"]
      369 SETTABLEKS                       R18 R17 K41 ["ImageColor3"]
      371 LOADN                            R18 1
      372 SETTABLEKS                       R18 R17 K42 ["BackgroundTransparency"]
      374 LOADN                            R18 2
      375 SETTABLEKS                       R18 R17 K29 ["LayoutOrder"]
      377 GETUPVAL                         R18 3
      378 GETTABLEKS                       R18 R18 K43 ["Event"]
      380 GETTABLEKS                       R18 R18 K44 ["MouseButton1Click"]
      382 GETTABLEKS                       R19 R0 K45 ["onCopyClicked"]
      384 SETTABLE                         R19 R17 R18
      385 CALL                             R15 2 1
      386 SETTABLEKS                       R15 R14 K25 ["CopyButton"]
      388 CALL                             R11 3 1
      389 SETTABLEKS                       R11 R10 K55 ["LayoutContainer"]
      391 MOVE                             R11 R4
      392 JUMPIFNOT                        R11 ; [+67]
      393 GETUPVAL                         R11 3
      394 GETTABLEKS                       R11 R11 K6 ["createElement"]
      396 LOADK                            R12 K75 ["TextLabel"]
      397 DUPTABLE                         R13 K87 [{"BackgroundTransparency", "Font", "Text", "TextColor3", "TextSize", "Size", "AnchorPoint", "Position", "TextYAlignment", "TextXAlignment"}]
      398 LOADN                            R14 1
      399 SETTABLEKS                       R14 R13 K42 ["BackgroundTransparency"]
      401 GETUPVAL                         R14 4
      402 GETTABLEKS                       R14 R14 K82 ["FONT"]
      404 SETTABLEKS                       R14 R13 K76 ["Font"]
      406 GETTABLEKS                       R14 R1 K48 ["Localization"]
      408 LOADK                            R16 K49 ["AssetConfigUpload"]
      409 LOADK                            R17 K50 ["IDCopied"]
      410 NAMECALL                         R14 R14 K51 ["getText"]
      412 CALL                             R14 3 1
      413 SETTABLEKS                       R14 R13 K27 ["Text"]
      415 GETTABLEKS                       R14 R3 K35 ["uploadResult"]
      417 GETTABLEKS                       R14 R14 K52 ["greenText"]
      419 SETTABLEKS                       R14 R13 K77 ["TextColor3"]
      421 GETUPVAL                         R14 4
      422 GETTABLEKS                       R14 R14 K83 ["FONT_SIZE_MEDIUM"]
      424 SETTABLEKS                       R14 R13 K78 ["TextSize"]
      426 GETIMPORT                        R14 K14 [UDim2.new]
      428 LOADN                            R15 0
      429 LOADN                            R16 64
      430 LOADN                            R17 1
      431 LOADN                            R18 0
      432 CALL                             R14 4 1
      433 SETTABLEKS                       R14 R13 K10 ["Size"]
      435 GETIMPORT                        R14 K17 [Vector2.new]
      437 LOADN                            R15 0
      438 LOADK                            R16 K15 [0.5]
      439 CALL                             R14 2 1
      440 SETTABLEKS                       R14 R13 K9 ["AnchorPoint"]
      442 GETIMPORT                        R14 K14 [UDim2.new]
      444 LOADN                            R15 0
      445 LOADN                            R16 150
      446 LOADK                            R17 K15 [0.5]
      447 LOADN                            R18 0
      448 CALL                             R14 4 1
      449 SETTABLEKS                       R14 R13 K8 ["Position"]
      451 GETIMPORT                        R14 K84 [Enum.TextYAlignment.Center]
      453 SETTABLEKS                       R14 R13 K79 ["TextYAlignment"]
      455 GETIMPORT                        R14 K88 [Enum.TextXAlignment.Center]
      457 SETTABLEKS                       R14 R13 K80 ["TextXAlignment"]
      459 CALL                             R11 2 1
      460 SETTABLEKS                       R11 R10 K19 ["CopiedLabel"]
      462 CALL                             R7 3 -1
      463 RETURN                           R7 -1

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
