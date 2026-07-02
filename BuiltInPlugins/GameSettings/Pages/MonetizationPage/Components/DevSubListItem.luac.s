PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["Height"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["LayoutOrder"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["Name"]
       12 GETTABLEKS                       R4 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R4 K4 ["Subscribers"]
       16 GETTABLEKS                       R5 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R5 K5 ["Id"]
       20 GETTABLEKS                       R6 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R6 K6 ["CreationDate"]
       24 GETTABLEKS                       R7 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R7 K7 ["OnEditButtonActivated"]
       28 GETTABLEKS                       R8 R0 K0 ["props"]
       30 GETTABLEKS                       R8 R8 K8 ["Stylizer"]
       32 GETTABLEKS                       R9 R0 K0 ["props"]
       34 GETTABLEKS                       R9 R9 K9 ["Localization"]
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R10 R10 K10 ["new"]
       39 CALL                             R10 0 1
       40 GETUPVAL                         R11 1
       41 GETTABLEKS                       R11 R11 K11 ["createElement"]
       43 LOADK                            R12 K12 ["ImageLabel"]
       44 DUPTABLE                         R13 K22 [{["Size"], ["LayoutOrder"], ["BackgroundTransparency"] = 1, ["Image"], ["ImageTransparency"] = 0, ["ImageColor3"], ["ScaleType"], ["SliceCenter"]}]
       45 GETIMPORT                        R14 K24 [UDim2.new]
       47 LOADN                            R15 1
       48 LOADN                            R16 0
       49 LOADN                            R17 0
       50 MOVE                             R18 R1
       51 CALL                             R14 4 1
       52 SETTABLEKS                       R14 R13 K13 ["Size"]
       54 SETTABLEKS                       R2 R13 K2 ["LayoutOrder"]
       56 GETUPVAL                         R14 2
       57 GETTABLEKS                       R14 R14 K25 ["ROUNDED_BACKGROUND_IMAGE"]
       59 SETTABLEKS                       R14 R13 K16 ["Image"]
       61 GETTABLEKS                       R14 R8 K26 ["table"]
       63 GETTABLEKS                       R14 R14 K27 ["item"]
       65 GETTABLEKS                       R14 R14 K28 ["background"]
       67 SETTABLEKS                       R14 R13 K19 ["ImageColor3"]
       69 GETIMPORT                        R14 K31 [Enum.ScaleType.Slice]
       71 SETTABLEKS                       R14 R13 K20 ["ScaleType"]
       73 GETUPVAL                         R14 2
       74 GETTABLEKS                       R14 R14 K32 ["ROUNDED_FRAME_SLICE"]
       76 SETTABLEKS                       R14 R13 K21 ["SliceCenter"]
       78 DUPTABLE                         R14 K35 [{"DetailsFrame", "ErrorIcon"}]
       79 GETUPVAL                         R15 1
       80 GETTABLEKS                       R15 R15 K11 ["createElement"]
       82 LOADK                            R16 K36 ["Frame"]
       83 DUPTABLE                         R17 K37 [{["BackgroundTransparency"] = 1, ["Size"]}]
       84 GETIMPORT                        R18 K24 [UDim2.new]
       86 LOADN                            R19 1
       87 LOADN                            R20 0
       88 LOADN                            R21 1
       89 LOADN                            R22 0
       90 CALL                             R18 4 1
       91 SETTABLEKS                       R18 R17 K13 ["Size"]
       93 DUPTABLE                         R18 K45 [{"Padding", "Layout", "IdText", "NameText", "SubscribersText", "CreationDateText", "EditFrame"}]
       94 GETUPVAL                         R19 1
       95 GETTABLEKS                       R19 R19 K11 ["createElement"]
       97 LOADK                            R20 K46 ["UIPadding"]
       98 DUPTABLE                         R21 K49 [{"PaddingLeft", "PaddingRight"}]
       99 GETIMPORT                        R22 K51 [UDim.new]
      101 LOADN                            R23 0
      102 LOADN                            R24 4
      103 CALL                             R22 2 1
      104 SETTABLEKS                       R22 R21 K47 ["PaddingLeft"]
      106 GETIMPORT                        R22 K51 [UDim.new]
      108 LOADN                            R23 0
      109 LOADN                            R24 24
      110 CALL                             R22 2 1
      111 SETTABLEKS                       R22 R21 K48 ["PaddingRight"]
      113 CALL                             R19 2 1
      114 SETTABLEKS                       R19 R18 K38 ["Padding"]
      116 GETUPVAL                         R19 1
      117 GETTABLEKS                       R19 R19 K11 ["createElement"]
      119 LOADK                            R20 K52 ["UIListLayout"]
      120 DUPTABLE                         R21 K55 [{"SortOrder", "FillDirection"}]
      121 GETIMPORT                        R22 K56 [Enum.SortOrder.LayoutOrder]
      123 SETTABLEKS                       R22 R21 K53 ["SortOrder"]
      125 GETIMPORT                        R22 K58 [Enum.FillDirection.Horizontal]
      127 SETTABLEKS                       R22 R21 K54 ["FillDirection"]
      129 CALL                             R19 2 1
      130 SETTABLEKS                       R19 R18 K39 ["Layout"]
      132 GETUPVAL                         R19 1
      133 GETTABLEKS                       R19 R19 K11 ["createElement"]
      135 GETUPVAL                         R20 3
      136 DUPTABLE                         R21 K61 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      137 GETIMPORT                        R22 K24 [UDim2.new]
      139 LOADK                            R23 K62 [0.25]
      140 LOADN                            R24 0
      141 LOADN                            R25 1
      142 LOADN                            R26 0
      143 CALL                             R22 4 1
      144 SETTABLEKS                       R22 R21 K13 ["Size"]
      146 JUMPIFEQKN                       R5 K63 [-1] ; [+3]
      148 MOVE                             R22 R5
      149 JUMPIF                           R22 ; [+5]
      150 LOADK                            R24 K64 ["Monetization"]
      151 LOADK                            R25 K65 ["UnsavedDevProduct"]
      152 NAMECALL                         R22 R9 K66 ["getText"]
      154 CALL                             R22 3 1
      155 SETTABLEKS                       R22 R21 K59 ["Text"]
      157 NAMECALL                         R22 R10 K67 ["getNextOrder"]
      159 CALL                             R22 1 1
      160 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      162 GETIMPORT                        R22 K70 [Enum.TextXAlignment.Left]
      164 SETTABLEKS                       R22 R21 K60 ["Alignment"]
      166 CALL                             R19 2 1
      167 SETTABLEKS                       R19 R18 K40 ["IdText"]
      169 GETUPVAL                         R19 1
      170 GETTABLEKS                       R19 R19 K11 ["createElement"]
      172 GETUPVAL                         R20 3
      173 DUPTABLE                         R21 K61 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      174 GETIMPORT                        R22 K24 [UDim2.new]
      176 LOADK                            R23 K62 [0.25]
      177 LOADN                            R24 0
      178 LOADN                            R25 1
      179 LOADN                            R26 0
      180 CALL                             R22 4 1
      181 SETTABLEKS                       R22 R21 K13 ["Size"]
      183 SETTABLEKS                       R3 R21 K59 ["Text"]
      185 NAMECALL                         R22 R10 K67 ["getNextOrder"]
      187 CALL                             R22 1 1
      188 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      190 GETIMPORT                        R22 K70 [Enum.TextXAlignment.Left]
      192 SETTABLEKS                       R22 R21 K60 ["Alignment"]
      194 CALL                             R19 2 1
      195 SETTABLEKS                       R19 R18 K41 ["NameText"]
      197 GETUPVAL                         R19 1
      198 GETTABLEKS                       R19 R19 K11 ["createElement"]
      200 GETUPVAL                         R20 3
      201 DUPTABLE                         R21 K61 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      202 GETIMPORT                        R22 K24 [UDim2.new]
      204 LOADK                            R23 K71 [0.2]
      205 LOADN                            R24 0
      206 LOADN                            R25 1
      207 LOADN                            R26 0
      208 CALL                             R22 4 1
      209 SETTABLEKS                       R22 R21 K13 ["Size"]
      211 GETUPVAL                         R22 4
      212 MOVE                             R23 R4
      213 CALL                             R22 1 1
      214 SETTABLEKS                       R22 R21 K59 ["Text"]
      216 NAMECALL                         R22 R10 K67 ["getNextOrder"]
      218 CALL                             R22 1 1
      219 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      221 GETIMPORT                        R22 K70 [Enum.TextXAlignment.Left]
      223 SETTABLEKS                       R22 R21 K60 ["Alignment"]
      225 CALL                             R19 2 1
      226 SETTABLEKS                       R19 R18 K42 ["SubscribersText"]
      228 GETUPVAL                         R19 1
      229 GETTABLEKS                       R19 R19 K11 ["createElement"]
      231 GETUPVAL                         R20 3
      232 DUPTABLE                         R21 K61 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      233 GETIMPORT                        R22 K24 [UDim2.new]
      235 LOADK                            R23 K71 [0.2]
      236 LOADN                            R24 0
      237 LOADN                            R25 1
      238 LOADN                            R26 0
      239 CALL                             R22 4 1
      240 SETTABLEKS                       R22 R21 K13 ["Size"]
      242 LOADN                            R24 0
      243 LOADN                            R25 10
      244 NAMECALL                         R22 R6 K72 ["sub"]
      246 CALL                             R22 3 1
      247 SETTABLEKS                       R22 R21 K59 ["Text"]
      249 NAMECALL                         R22 R10 K67 ["getNextOrder"]
      251 CALL                             R22 1 1
      252 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      254 GETIMPORT                        R22 K70 [Enum.TextXAlignment.Left]
      256 SETTABLEKS                       R22 R21 K60 ["Alignment"]
      258 CALL                             R19 2 1
      259 SETTABLEKS                       R19 R18 K43 ["CreationDateText"]
      261 GETUPVAL                         R19 1
      262 GETTABLEKS                       R19 R19 K11 ["createElement"]
      264 LOADK                            R20 K36 ["Frame"]
      265 DUPTABLE                         R21 K73 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
      266 GETIMPORT                        R22 K24 [UDim2.new]
      268 LOADK                            R23 K74 [0.1]
      269 LOADN                            R24 0
      270 LOADN                            R25 1
      271 LOADN                            R26 0
      272 CALL                             R22 4 1
      273 SETTABLEKS                       R22 R21 K13 ["Size"]
      275 NAMECALL                         R22 R10 K67 ["getNextOrder"]
      277 CALL                             R22 1 1
      278 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      280 DUPTABLE                         R22 K76 [{"Button"}]
      281 GETUPVAL                         R23 1
      282 GETTABLEKS                       R23 R23 K11 ["createElement"]
      284 LOADK                            R24 K77 ["ImageButton"]
      285 NEWTABLE                         R25 8 0
      287 LOADN                            R26 1
      288 SETTABLEKS                       R26 R25 K14 ["BackgroundTransparency"]
      290 GETIMPORT                        R26 K24 [UDim2.new]
      292 LOADN                            R27 0
      293 GETTABLEKS                       R28 R8 K26 ["table"]
      295 GETTABLEKS                       R28 R28 K78 ["menu"]
      297 GETTABLEKS                       R28 R28 K79 ["buttonSize"]
      299 LOADN                            R29 0
      300 GETTABLEKS                       R30 R8 K26 ["table"]
      302 GETTABLEKS                       R30 R30 K78 ["menu"]
      304 GETTABLEKS                       R30 R30 K79 ["buttonSize"]
      306 CALL                             R26 4 1
      307 SETTABLEKS                       R26 R25 K13 ["Size"]
      309 GETIMPORT                        R26 K81 [Vector2.new]
      311 LOADN                            R27 1
      312 LOADK                            R28 K82 [0.5]
      313 CALL                             R26 2 1
      314 SETTABLEKS                       R26 R25 K83 ["AnchorPoint"]
      316 GETIMPORT                        R26 K24 [UDim2.new]
      318 LOADN                            R27 1
      319 LOADN                            R28 0
      320 LOADK                            R29 K82 [0.5]
      321 LOADN                            R30 0
      322 CALL                             R26 4 1
      323 SETTABLEKS                       R26 R25 K84 ["Position"]
      325 GETUPVAL                         R26 1
      326 GETTABLEKS                       R26 R26 K85 ["Event"]
      328 GETTABLEKS                       R26 R26 K86 ["Activated"]
      330 SETTABLE                         R7 R25 R26
      331 NEWTABLE                         R26 1 1
      333 GETUPVAL                         R28 1
      334 GETTABLEKS                       R28 R28 K11 ["createElement"]
      336 GETUPVAL                         R29 5
      337 GETUPVAL                         R30 6
      338 GETTABLEKS                       R30 R30 K87 ["Dictionary"]
      340 GETTABLEKS                       R30 R30 K88 ["join"]
      342 GETTABLEKS                       R31 R8 K89 ["fontStyle"]
      344 GETTABLEKS                       R31 R31 K90 ["Normal"]
      346 DUPTABLE                         R32 K94 [{["Position"], ["AnchorPoint"], ["Text"] = "...", ["Font"], ["BackgroundTransparency"] = 1, ["width"]}]
      347 GETIMPORT                        R33 K24 [UDim2.new]
      349 LOADK                            R34 K82 [0.5]
      350 LOADN                            R35 0
      351 LOADK                            R36 K82 [0.5]
      352 LOADN                            R37 0
      353 CALL                             R33 4 1
      354 SETTABLEKS                       R33 R32 K84 ["Position"]
      356 GETIMPORT                        R33 K81 [Vector2.new]
      358 LOADK                            R34 K82 [0.5]
      359 LOADK                            R35 K82 [0.5]
      360 CALL                             R33 2 1
      361 SETTABLEKS                       R33 R32 K83 ["AnchorPoint"]
      363 GETIMPORT                        R33 K96 [Enum.Font.SourceSansBold]
      365 SETTABLEKS                       R33 R32 K92 ["Font"]
      367 GETTABLEKS                       R33 R8 K26 ["table"]
      369 GETTABLEKS                       R33 R33 K78 ["menu"]
      371 GETTABLEKS                       R33 R33 K79 ["buttonSize"]
      373 SETTABLEKS                       R33 R32 K93 ["width"]
      375 CALL                             R30 2 -1
      376 CALL                             R28 -1 1
      377 SETTABLEKS                       R28 R26 K97 ["Dots"]
      379 GETUPVAL                         R27 1
      380 GETTABLEKS                       R27 R27 K11 ["createElement"]
      382 GETUPVAL                         R28 7
      383 DUPTABLE                         R29 K100 [{["Cursor"] = "PointingHand"}]
      384 CALL                             R27 2 -1
      385 SETLIST                          R26 R27 -1 [1]
      387 CALL                             R23 3 1
      388 SETTABLEKS                       R23 R22 K75 ["Button"]
      390 CALL                             R19 3 1
      391 SETTABLEKS                       R19 R18 K44 ["EditFrame"]
      393 CALL                             R15 3 1
      394 SETTABLEKS                       R15 R14 K33 ["DetailsFrame"]
      396 GETTABLEKS                       R15 R0 K0 ["props"]
      398 GETTABLEKS                       R15 R15 K101 ["HasError"]
      400 JUMPIFNOT                        R15 ; [+36]
      401 GETUPVAL                         R15 1
      402 GETTABLEKS                       R15 R15 K11 ["createElement"]
      404 LOADK                            R16 K77 ["ImageButton"]
      405 DUPTABLE                         R17 K102 [{["BackgroundTransparency"] = 1, ["Image"], ["Size"], ["Position"], ["AnchorPoint"]}]
      406 GETUPVAL                         R18 2
      407 GETTABLEKS                       R18 R18 K103 ["ERROR_IMAGE"]
      409 SETTABLEKS                       R18 R17 K16 ["Image"]
      411 GETIMPORT                        R18 K24 [UDim2.new]
      413 LOADN                            R19 0
      414 LOADN                            R20 16
      415 LOADN                            R21 0
      416 LOADN                            R22 16
      417 CALL                             R18 4 1
      418 SETTABLEKS                       R18 R17 K13 ["Size"]
      420 GETIMPORT                        R18 K24 [UDim2.new]
      422 LOADN                            R19 1
      423 LOADN                            R20 -16
      424 LOADN                            R21 0
      425 LOADN                            R22 16
      426 CALL                             R18 4 1
      427 SETTABLEKS                       R18 R17 K84 ["Position"]
      429 GETIMPORT                        R18 K81 [Vector2.new]
      431 LOADK                            R19 K82 [0.5]
      432 LOADK                            R20 K82 [0.5]
      433 CALL                             R18 2 1
      434 SETTABLEKS                       R18 R17 K83 ["AnchorPoint"]
      436 CALL                             R15 2 1
      437 SETTABLEKS                       R15 R14 K34 ["ErrorIcon"]
      439 CALL                             R11 3 -1
      440 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["FitFrame"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K1 [script]
       20 GETTABLEKS                       R2 R2 K2 ["Parent"]
       22 GETTABLEKS                       R2 R2 K2 ["Parent"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R4 R0 K5 ["Packages"]
       28 GETTABLEKS                       R4 R4 K7 ["Roact"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R5 R0 K5 ["Packages"]
       35 GETTABLEKS                       R5 R5 K8 ["Cryo"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R6 R0 K9 ["Src"]
       42 GETTABLEKS                       R6 R6 K10 ["Util"]
       44 GETTABLEKS                       R6 R6 K11 ["DEPRECATED_Constants"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K4 [require]
       49 GETTABLEKS                       R7 R2 K10 ["Util"]
       51 GETTABLEKS                       R7 R7 K12 ["numberWithCommas"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETIMPORT                        R8 K1 [script]
       58 GETTABLEKS                       R8 R8 K2 ["Parent"]
       60 GETTABLEKS                       R8 R8 K13 ["DevSubListItemText"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R9 R0 K5 ["Packages"]
       67 GETTABLEKS                       R9 R9 K14 ["Framework"]
       69 CALL                             R8 1 1
       70 GETTABLEKS                       R9 R8 K15 ["ContextServices"]
       72 GETTABLEKS                       R10 R9 K16 ["withContext"]
       74 GETTABLEKS                       R11 R8 K10 ["Util"]
       76 GETTABLEKS                       R12 R1 K17 ["FitTextLabel"]
       78 GETTABLEKS                       R13 R11 K18 ["LayoutOrderIterator"]
       80 GETTABLEKS                       R14 R8 K19 ["UI"]
       82 GETTABLEKS                       R15 R14 K20 ["HoverArea"]
       84 GETTABLEKS                       R16 R3 K21 ["Component"]
       86 LOADK                            R18 K22 ["DeveloperSubscriptionListItem"]
       87 NAMECALL                         R16 R16 K23 ["extend"]
       89 CALL                             R16 2 1
       90 DUPCLOSURE                       R17 K24 [PROTO_0]
       91 CAPTURE                          VAL R13
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R7
       95 CAPTURE                          VAL R6
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R4
       98 CAPTURE                          VAL R15
       99 SETTABLEKS                       R17 R16 K25 ["render"]
      101 MOVE                             R17 R10
      102 DUPTABLE                         R18 K28 [{"Stylizer", "Localization"}]
      103 GETTABLEKS                       R19 R9 K26 ["Stylizer"]
      105 SETTABLEKS                       R19 R18 K26 ["Stylizer"]
      107 GETTABLEKS                       R19 R9 K27 ["Localization"]
      109 SETTABLEKS                       R19 R18 K27 ["Localization"]
      111 CALL                             R17 1 1
      112 MOVE                             R18 R16
      113 CALL                             R17 1 1
      114 MOVE                             R16 R17
      115 RETURN                           R16 1
