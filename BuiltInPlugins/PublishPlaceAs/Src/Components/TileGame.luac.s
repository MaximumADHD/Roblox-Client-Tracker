PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+4]
        2 LENGTH                           R1 R0
        3 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        5 LOADK                            R1 K1 ["Private"]
        6 RETURN                           R1 1
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K2 ["audiencesIncludePublic"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 1
       12 JUMPIFNOT                        R1 ; [+2]
       13 LOADK                            R1 K3 ["Public"]
       14 RETURN                           R1 1
       15 GETUPVAL                         R1 0
       16 GETTABLEKS                       R1 R1 K4 ["audiencesAreEditorsOnly"]
       18 MOVE                             R2 R0
       19 CALL                             R1 1 1
       20 JUMPIFNOT                        R1 ; [+2]
       21 LOADK                            R1 K1 ["Private"]
       22 RETURN                           R1 1
       23 LOADK                            R1 K5 ["Limited"]
       24 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"assetFetchStatus"}]
        1 LOADNIL                          R2
        2 SETTABLEKS                       R2 R1 K0 ["assetFetchStatus"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 LOADB                            R1 0
        7 SETTABLEKS                       R1 R0 K3 ["isMounted"]
        9 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isMounted"]
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R4 K2 [{"assetFetchStatus"}]
        6 SETTABLEKS                       R1 R4 K1 ["assetFetchStatus"]
        8 NAMECALL                         R2 R2 K3 ["setState"]
       10 CALL                             R2 2 0
       11 RETURN                           R0 0

PROTO_3:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["thumbnailUrl"]
        5 SETLIST                          R0 R1 1 [1]
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          UPVAL U0
        9 GETUPVAL                         R2 1
       10 MOVE                             R4 R0
       11 MOVE                             R5 R1
       12 NAMECALL                         R2 R2 K1 ["PreloadAsync"]
       14 CALL                             R2 3 0
       15 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 GETIMPORT                        R1 K2 [spawn]
        5 NEWCLOSURE                       R2 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U0
        8 CALL                             R1 1 0
        9 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Name"]
        8 GETTABLEKS                       R5 R1 K4 ["MinimumAge"]
       10 GETTABLEKS                       R7 R1 K6 ["LayoutOrder"]
       12 ORK                              R6 R7 K5 [0]
       13 LOADNIL                          R7
       14 GETUPVAL                         R8 0
       15 CALL                             R8 0 1
       16 JUMPIFNOT                        R8 ; [+27]
       17 GETTABLEKS                       R8 R1 K7 ["Audiences"]
       19 JUMPIFEQKNIL                     R8 ; [+4]
       21 LENGTH                           R9 R8
       22 JUMPIFNOTEQKN                    R9 K5 [0] ; [+3]
       24 LOADK                            R7 K8 ["Private"]
       25 JUMP                             ; [+20]
       26 GETUPVAL                         R9 1
       27 GETTABLEKS                       R9 R9 K9 ["audiencesIncludePublic"]
       29 MOVE                             R10 R8
       30 CALL                             R9 1 1
       31 JUMPIFNOT                        R9 ; [+2]
       32 LOADK                            R7 K10 ["Public"]
       33 JUMP                             ; [+12]
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K11 ["audiencesAreEditorsOnly"]
       37 MOVE                             R10 R8
       38 CALL                             R9 1 1
       39 JUMPIFNOT                        R9 ; [+2]
       40 LOADK                            R7 K8 ["Private"]
       41 JUMP                             ; [+4]
       42 LOADK                            R7 K12 ["Limited"]
       43 JUMP                             ; [+2]
       44 GETTABLEKS                       R7 R1 K13 ["PrivacyType"]
       46 GETTABLEKS                       R8 R1 K14 ["OnActivated"]
       48 GETTABLEKS                       R9 R1 K15 ["Disabled"]
       50 GETIMPORT                        R10 K18 [string.format]
       52 LOADK                            R11 K19 ["rbxthumb://type=AutoGeneratedAsset&id=%i&w=%i&h=%i"]
       53 GETTABLEKS                       R12 R1 K20 ["Id"]
       55 LOADN                            R13 150
       56 LOADN                            R14 150
       57 CALL                             R10 4 1
       58 SETTABLEKS                       R10 R0 K21 ["thumbnailUrl"]
       60 GETTABLEKS                       R11 R0 K22 ["state"]
       62 GETTABLEKS                       R11 R11 K23 ["assetFetchStatus"]
       64 GETIMPORT                        R12 K27 [Enum.AssetFetchStatus.Success]
       66 JUMPIFEQ                         R11 R12 ; [+2]
       68 LOADB                            R10 0 +1
       69 LOADB                            R10 1
       70 GETTABLEKS                       R11 R2 K28 ["SCREEN_CHOOSE_GAME"]
       72 LOADNIL                          R12
       73 LOADNIL                          R13
       74 LOADNIL                          R14
       75 GETTABLEKS                       R12 R11 K29 ["ICON_SIZE"]
       77 GETTABLEKS                       R15 R11 K30 ["NAME_SIZE"]
       79 ADD                              R13 R12 R15
       80 GETTABLEKS                       R15 R11 K31 ["TILE_HEIGHT"]
       82 SUB                              R14 R15 R13
       83 GETUPVAL                         R15 2
       84 GETTABLEKS                       R15 R15 K32 ["createElement"]
       86 LOADK                            R16 K33 ["ImageButton"]
       87 NEWTABLE                         R17 8 0
       89 LOADN                            R18 1
       90 SETTABLEKS                       R18 R17 K34 ["BackgroundTransparency"]
       92 SETTABLEKS                       R6 R17 K6 ["LayoutOrder"]
       94 LOADN                            R18 0
       95 SETTABLEKS                       R18 R17 K35 ["BorderSizePixel"]
       97 JUMPIFNOT                        R9 ; [+2]
       98 LOADB                            R18 0
       99 JUMP                             ; [+1]
      100 LOADNIL                          R18
      101 SETTABLEKS                       R18 R17 K36 ["Active"]
      103 GETUPVAL                         R18 2
      104 GETTABLEKS                       R18 R18 K37 ["Event"]
      106 GETTABLEKS                       R18 R18 K38 ["Activated"]
      108 SETTABLE                         R8 R17 R18
      109 DUPTABLE                         R18 K42 [{"Icon", "Name", "Separator", "Footer"}]
      110 GETUPVAL                         R19 2
      111 GETTABLEKS                       R19 R19 K32 ["createElement"]
      113 LOADK                            R20 K43 ["ImageLabel"]
      114 DUPTABLE                         R21 K50 [{"Position", "Size", "Image", "ImageColor3", "BackgroundColor3", "ImageTransparency", "BorderSizePixel"}]
      115 GETIMPORT                        R22 K53 [UDim2.new]
      117 LOADN                            R23 0
      118 LOADN                            R24 0
      119 LOADN                            R25 0
      120 LOADN                            R26 0
      121 CALL                             R22 4 1
      122 SETTABLEKS                       R22 R21 K44 ["Position"]
      124 GETIMPORT                        R22 K53 [UDim2.new]
      126 LOADN                            R23 1
      127 LOADN                            R24 0
      128 LOADN                            R25 0
      129 GETTABLEKS                       R26 R11 K29 ["ICON_SIZE"]
      131 CALL                             R22 4 1
      132 SETTABLEKS                       R22 R21 K45 ["Size"]
      134 JUMPIFNOT                        R10 ; [+3]
      135 GETTABLEKS                       R22 R0 K21 ["thumbnailUrl"]
      137 JUMPIF                           R22 ; [+4]
      138 GETTABLEKS                       R22 R2 K54 ["icons"]
      140 GETTABLEKS                       R22 R22 K55 ["thumbnailPlaceHolder"]
      142 SETTABLEKS                       R22 R21 K46 ["Image"]
      144 JUMPIFNOT                        R10 ; [+7]
      145 GETIMPORT                        R22 K57 [Color3.new]
      147 LOADN                            R23 1
      148 LOADN                            R24 1
      149 LOADN                            R25 1
      150 CALL                             R22 3 1
      151 JUMPIF                           R22 ; [+4]
      152 GETTABLEKS                       R22 R2 K54 ["icons"]
      154 GETTABLEKS                       R22 R22 K58 ["imageColor"]
      156 SETTABLEKS                       R22 R21 K47 ["ImageColor3"]
      158 GETTABLEKS                       R22 R2 K54 ["icons"]
      160 GETTABLEKS                       R22 R22 K59 ["backgroundColor"]
      162 SETTABLEKS                       R22 R21 K48 ["BackgroundColor3"]
      164 JUMPIFNOT                        R9 ; [+2]
      165 LOADK                            R22 K60 [0.6]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R22
      168 SETTABLEKS                       R22 R21 K49 ["ImageTransparency"]
      170 LOADN                            R22 0
      171 SETTABLEKS                       R22 R21 K35 ["BorderSizePixel"]
      173 CALL                             R19 2 1
      174 SETTABLEKS                       R19 R18 K39 ["Icon"]
      176 GETUPVAL                         R19 2
      177 GETTABLEKS                       R19 R19 K32 ["createElement"]
      179 LOADK                            R20 K61 ["TextLabel"]
      180 DUPTABLE                         R21 K71 [{"Text", "Position", "Size", "TextWrapped", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextSize", "Font", "TextColor3", "TextTransparency", "BackgroundTransparency"}]
      181 SETTABLEKS                       R4 R21 K62 ["Text"]
      183 GETIMPORT                        R22 K73 [UDim2.fromOffset]
      185 LOADN                            R23 0
      186 MOVE                             R24 R12
      187 CALL                             R22 2 1
      188 SETTABLEKS                       R22 R21 K44 ["Position"]
      190 GETIMPORT                        R22 K53 [UDim2.new]
      192 LOADN                            R23 1
      193 LOADN                            R24 0
      194 LOADN                            R25 0
      195 GETTABLEKS                       R26 R11 K30 ["NAME_SIZE"]
      197 CALL                             R22 4 1
      198 SETTABLEKS                       R22 R21 K45 ["Size"]
      200 LOADB                            R22 1
      201 SETTABLEKS                       R22 R21 K63 ["TextWrapped"]
      203 GETIMPORT                        R22 K75 [Enum.TextTruncate.AtEnd]
      205 SETTABLEKS                       R22 R21 K64 ["TextTruncate"]
      207 GETIMPORT                        R22 K77 [Enum.TextXAlignment.Left]
      209 SETTABLEKS                       R22 R21 K65 ["TextXAlignment"]
      211 GETIMPORT                        R22 K79 [Enum.TextYAlignment.Top]
      213 SETTABLEKS                       R22 R21 K66 ["TextYAlignment"]
      215 LOADN                            R22 18
      216 SETTABLEKS                       R22 R21 K67 ["TextSize"]
      218 GETTABLEKS                       R22 R2 K80 ["font"]
      220 SETTABLEKS                       R22 R21 K68 ["Font"]
      222 GETTABLEKS                       R22 R2 K81 ["textColor"]
      224 SETTABLEKS                       R22 R21 K69 ["TextColor3"]
      226 JUMPIFNOT                        R9 ; [+2]
      227 LOADK                            R22 K60 [0.6]
      228 JUMP                             ; [+1]
      229 LOADNIL                          R22
      230 SETTABLEKS                       R22 R21 K70 ["TextTransparency"]
      232 LOADN                            R22 1
      233 SETTABLEKS                       R22 R21 K34 ["BackgroundTransparency"]
      235 DUPTABLE                         R22 K83 [{"Padding"}]
      236 GETUPVAL                         R23 2
      237 GETTABLEKS                       R23 R23 K32 ["createElement"]
      239 LOADK                            R24 K84 ["UIPadding"]
      240 DUPTABLE                         R25 K89 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      241 GETIMPORT                        R26 K91 [UDim.new]
      243 LOADN                            R27 0
      244 GETTABLEKS                       R28 R11 K92 ["NAME_PADDING"]
      246 CALL                             R26 2 1
      247 SETTABLEKS                       R26 R25 K85 ["PaddingTop"]
      249 GETIMPORT                        R26 K91 [UDim.new]
      251 LOADN                            R27 0
      252 GETTABLEKS                       R28 R11 K92 ["NAME_PADDING"]
      254 CALL                             R26 2 1
      255 SETTABLEKS                       R26 R25 K86 ["PaddingBottom"]
      257 GETIMPORT                        R26 K91 [UDim.new]
      259 LOADN                            R27 0
      260 GETTABLEKS                       R28 R11 K92 ["NAME_PADDING"]
      262 CALL                             R26 2 1
      263 SETTABLEKS                       R26 R25 K87 ["PaddingLeft"]
      265 GETIMPORT                        R26 K91 [UDim.new]
      267 LOADN                            R27 0
      268 GETTABLEKS                       R28 R11 K92 ["NAME_PADDING"]
      270 CALL                             R26 2 1
      271 SETTABLEKS                       R26 R25 K88 ["PaddingRight"]
      273 CALL                             R23 2 1
      274 SETTABLEKS                       R23 R22 K82 ["Padding"]
      276 CALL                             R19 3 1
      277 SETTABLEKS                       R19 R18 K3 ["Name"]
      279 GETUPVAL                         R19 2
      280 GETTABLEKS                       R19 R19 K32 ["createElement"]
      282 GETUPVAL                         R20 3
      283 DUPTABLE                         R21 K93 [{"Position"}]
      284 GETIMPORT                        R22 K53 [UDim2.new]
      286 LOADK                            R23 K94 [0.5]
      287 LOADN                            R24 0
      288 LOADN                            R25 0
      289 MOVE                             R26 R13
      290 CALL                             R22 4 1
      291 SETTABLEKS                       R22 R21 K44 ["Position"]
      293 CALL                             R19 2 1
      294 SETTABLEKS                       R19 R18 K40 ["Separator"]
      296 GETUPVAL                         R19 2
      297 GETTABLEKS                       R19 R19 K32 ["createElement"]
      299 LOADK                            R20 K95 ["Frame"]
      300 DUPTABLE                         R21 K96 [{"Size", "Position", "BackgroundTransparency"}]
      301 GETIMPORT                        R22 K53 [UDim2.new]
      303 LOADN                            R23 1
      304 LOADN                            R24 0
      305 LOADN                            R25 0
      306 MOVE                             R26 R14
      307 CALL                             R22 4 1
      308 SETTABLEKS                       R22 R21 K45 ["Size"]
      310 GETIMPORT                        R22 K73 [UDim2.fromOffset]
      312 LOADN                            R23 0
      313 MOVE                             R24 R13
      314 CALL                             R22 2 1
      315 SETTABLEKS                       R22 R21 K44 ["Position"]
      317 LOADN                            R22 1
      318 SETTABLEKS                       R22 R21 K34 ["BackgroundTransparency"]
      320 DUPTABLE                         R22 K99 [{"Padding", "PrivacyLabel", "AgeGuidelinesLabel"}]
      321 GETUPVAL                         R23 2
      322 GETTABLEKS                       R23 R23 K32 ["createElement"]
      324 LOADK                            R24 K84 ["UIPadding"]
      325 DUPTABLE                         R25 K100 [{"PaddingLeft", "PaddingRight"}]
      326 GETIMPORT                        R26 K91 [UDim.new]
      328 LOADN                            R27 0
      329 GETTABLEKS                       R28 R11 K101 ["FOOTER_SIDE_PADDING"]
      331 CALL                             R26 2 1
      332 SETTABLEKS                       R26 R25 K87 ["PaddingLeft"]
      334 GETIMPORT                        R26 K91 [UDim.new]
      336 LOADN                            R27 0
      337 GETTABLEKS                       R28 R11 K101 ["FOOTER_SIDE_PADDING"]
      339 CALL                             R26 2 1
      340 SETTABLEKS                       R26 R25 K88 ["PaddingRight"]
      342 CALL                             R23 2 1
      343 SETTABLEKS                       R23 R22 K82 ["Padding"]
      345 GETUPVAL                         R23 2
      346 GETTABLEKS                       R23 R23 K32 ["createElement"]
      348 LOADK                            R24 K61 ["TextLabel"]
      349 DUPTABLE                         R25 K103 [{"Text", "AnchorPoint", "Position", "Size", "TextWrapped", "TextXAlignment", "TextSize", "Font", "TextColor3", "TextTransparency", "BackgroundTransparency"}]
      350 LOADK                            R28 K13 ["PrivacyType"]
      351 MOVE                             R29 R7
      352 NAMECALL                         R26 R3 K104 ["getText"]
      354 CALL                             R26 3 1
      355 SETTABLEKS                       R26 R25 K62 ["Text"]
      357 GETIMPORT                        R26 K106 [Vector2.new]
      359 LOADN                            R27 0
      360 LOADK                            R28 K94 [0.5]
      361 CALL                             R26 2 1
      362 SETTABLEKS                       R26 R25 K102 ["AnchorPoint"]
      364 GETIMPORT                        R26 K108 [UDim2.fromScale]
      366 LOADN                            R27 0
      367 LOADK                            R28 K94 [0.5]
      368 CALL                             R26 2 1
      369 SETTABLEKS                       R26 R25 K44 ["Position"]
      371 GETIMPORT                        R26 K108 [UDim2.fromScale]
      373 LOADN                            R27 1
      374 LOADN                            R28 1
      375 CALL                             R26 2 1
      376 SETTABLEKS                       R26 R25 K45 ["Size"]
      378 LOADB                            R26 1
      379 SETTABLEKS                       R26 R25 K63 ["TextWrapped"]
      381 GETIMPORT                        R26 K77 [Enum.TextXAlignment.Left]
      383 SETTABLEKS                       R26 R25 K65 ["TextXAlignment"]
      385 LOADN                            R26 14
      386 SETTABLEKS                       R26 R25 K67 ["TextSize"]
      388 GETTABLEKS                       R26 R2 K80 ["font"]
      390 SETTABLEKS                       R26 R25 K68 ["Font"]
      392 JUMPIFEQKS                       R7 K10 ["Public"] ; [+3]
      394 JUMPIFNOTEQKS                    R7 K12 ["Limited"] ; [+6]
      396 GETTABLEKS                       R26 R2 K109 ["successText"]
      398 GETTABLEKS                       R26 R26 K110 ["text"]
      400 JUMPIF                           R26 ; [+2]
      401 GETTABLEKS                       R26 R2 K111 ["dimmerTextColor"]
      403 SETTABLEKS                       R26 R25 K69 ["TextColor3"]
      405 JUMPIFNOT                        R9 ; [+2]
      406 LOADK                            R26 K60 [0.6]
      407 JUMP                             ; [+1]
      408 LOADNIL                          R26
      409 SETTABLEKS                       R26 R25 K70 ["TextTransparency"]
      411 LOADN                            R26 1
      412 SETTABLEKS                       R26 R25 K34 ["BackgroundTransparency"]
      414 CALL                             R23 2 1
      415 SETTABLEKS                       R23 R22 K97 ["PrivacyLabel"]
      417 JUMPIFNOT                        R5 ; [+97]
      418 GETUPVAL                         R24 4
      419 GETTABLEKS                       R24 R24 K112 ["MINIMUM_AGE"]
      421 JUMPIFNOTLE                      R24 R5 ; [+93]
      423 GETUPVAL                         R23 2
      424 GETTABLEKS                       R23 R23 K32 ["createElement"]
      426 LOADK                            R24 K61 ["TextLabel"]
      427 DUPTABLE                         R25 K114 [{"Text", "AnchorPoint", "Position", "Size", "AutomaticSize", "TextSize", "Font", "TextColor3", "BackgroundColor3"}]
      428 MOVE                             R27 R5
      429 LOADK                            R28 K115 ["+"]
      430 CONCAT                           R26 R27 R28
      431 SETTABLEKS                       R26 R25 K62 ["Text"]
      433 GETIMPORT                        R26 K106 [Vector2.new]
      435 LOADN                            R27 1
      436 LOADK                            R28 K94 [0.5]
      437 CALL                             R26 2 1
      438 SETTABLEKS                       R26 R25 K102 ["AnchorPoint"]
      440 GETIMPORT                        R26 K108 [UDim2.fromScale]
      442 LOADN                            R27 1
      443 LOADK                            R28 K94 [0.5]
      444 CALL                             R26 2 1
      445 SETTABLEKS                       R26 R25 K44 ["Position"]
      447 GETIMPORT                        R26 K73 [UDim2.fromOffset]
      449 LOADN                            R27 0
      450 LOADN                            R28 20
      451 CALL                             R26 2 1
      452 SETTABLEKS                       R26 R25 K45 ["Size"]
      454 GETIMPORT                        R26 K117 [Enum.AutomaticSize.X]
      456 SETTABLEKS                       R26 R25 K113 ["AutomaticSize"]
      458 LOADN                            R26 12
      459 SETTABLEKS                       R26 R25 K67 ["TextSize"]
      461 GETTABLEKS                       R26 R2 K80 ["font"]
      463 SETTABLEKS                       R26 R25 K68 ["Font"]
      465 GETTABLEKS                       R26 R2 K81 ["textColor"]
      467 SETTABLEKS                       R26 R25 K69 ["TextColor3"]
      469 GETTABLEKS                       R26 R2 K118 ["foregroundColorContrast"]
      471 SETTABLEKS                       R26 R25 K48 ["BackgroundColor3"]
      473 DUPTABLE                         R26 K120 [{"Padding", "Corners"}]
      474 GETUPVAL                         R27 2
      475 GETTABLEKS                       R27 R27 K32 ["createElement"]
      477 LOADK                            R28 K84 ["UIPadding"]
      478 DUPTABLE                         R29 K100 [{"PaddingLeft", "PaddingRight"}]
      479 GETIMPORT                        R30 K91 [UDim.new]
      481 LOADN                            R31 0
      482 GETTABLEKS                       R32 R11 K121 ["GUIDELINE_LABEL_PADDING"]
      484 CALL                             R30 2 1
      485 SETTABLEKS                       R30 R29 K87 ["PaddingLeft"]
      487 GETIMPORT                        R30 K91 [UDim.new]
      489 LOADN                            R31 0
      490 GETTABLEKS                       R32 R11 K121 ["GUIDELINE_LABEL_PADDING"]
      492 CALL                             R30 2 1
      493 SETTABLEKS                       R30 R29 K88 ["PaddingRight"]
      495 CALL                             R27 2 1
      496 SETTABLEKS                       R27 R26 K82 ["Padding"]
      498 GETUPVAL                         R27 2
      499 GETTABLEKS                       R27 R27 K32 ["createElement"]
      501 LOADK                            R28 K122 ["UICorner"]
      502 DUPTABLE                         R29 K124 [{"CornerRadius"}]
      503 GETIMPORT                        R30 K91 [UDim.new]
      505 LOADN                            R31 0
      506 LOADN                            R32 4
      507 CALL                             R30 2 1
      508 SETTABLEKS                       R30 R29 K123 ["CornerRadius"]
      510 CALL                             R27 2 1
      511 SETTABLEKS                       R27 R26 K119 ["Corners"]
      513 CALL                             R23 3 1
      514 JUMP                             ; [+1]
      515 LOADNIL                          R23
      516 SETTABLEKS                       R23 R22 K98 ["AgeGuidelinesLabel"]
      518 CALL                             R19 3 1
      519 SETTABLEKS                       R19 R18 K41 ["Footer"]
      521 CALL                             R15 3 -1
      522 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R3 R3 K9 ["Separator"]
       27 GETTABLEKS                       R4 R2 K10 ["ContextServices"]
       29 GETTABLEKS                       R5 R4 K11 ["withContext"]
       31 GETIMPORT                        R6 K13 [game]
       33 LOADK                            R8 K14 ["ContentProvider"]
       34 NAMECALL                         R6 R6 K15 ["GetService"]
       36 CALL                             R6 2 1
       37 GETTABLEKS                       R7 R1 K16 ["PureComponent"]
       39 LOADK                            R9 K17 ["TileGame"]
       40 NAMECALL                         R7 R7 K18 ["extend"]
       42 CALL                             R7 2 1
       43 GETIMPORT                        R8 K4 [require]
       45 GETTABLEKS                       R9 R0 K19 ["Src"]
       47 GETTABLEKS                       R9 R9 K20 ["Resources"]
       49 GETTABLEKS                       R9 R9 K21 ["Constants"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K4 [require]
       54 GETTABLEKS                       R10 R0 K19 ["Src"]
       56 GETTABLEKS                       R10 R10 K22 ["Util"]
       58 GETTABLEKS                       R10 R10 K23 ["AudienceUtils"]
       60 CALL                             R9 1 1
       61 GETIMPORT                        R10 K4 [require]
       63 GETTABLEKS                       R11 R0 K19 ["Src"]
       65 GETTABLEKS                       R11 R11 K24 ["Flags"]
       67 GETTABLEKS                       R11 R11 K25 ["getFFlagPublishPlaceAsAudiencesReplacement"]
       69 CALL                             R10 1 1
       70 DUPCLOSURE                       R11 K26 [PROTO_0]
       71 CAPTURE                          VAL R9
       72 DUPCLOSURE                       R12 K27 [PROTO_1]
       73 SETTABLEKS                       R12 R7 K28 ["init"]
       75 DUPCLOSURE                       R12 K29 [PROTO_4]
       76 CAPTURE                          VAL R6
       77 SETTABLEKS                       R12 R7 K30 ["didMount"]
       79 DUPCLOSURE                       R12 K31 [PROTO_5]
       80 SETTABLEKS                       R12 R7 K32 ["willUnmount"]
       82 DUPCLOSURE                       R12 K33 [PROTO_6]
       83 CAPTURE                          VAL R10
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R8
       88 SETTABLEKS                       R12 R7 K34 ["render"]
       90 MOVE                             R12 R5
       91 DUPTABLE                         R13 K37 [{"Stylizer", "Localization"}]
       92 GETTABLEKS                       R14 R4 K35 ["Stylizer"]
       94 SETTABLEKS                       R14 R13 K35 ["Stylizer"]
       96 GETTABLEKS                       R14 R4 K36 ["Localization"]
       98 SETTABLEKS                       R14 R13 K36 ["Localization"]
      100 CALL                             R12 1 1
      101 MOVE                             R13 R7
      102 CALL                             R12 1 1
      103 MOVE                             R7 R12
      104 RETURN                           R7 1
