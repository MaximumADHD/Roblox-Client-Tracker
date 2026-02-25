PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Height"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["LayoutOrder"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["Name"]
       12 GETTABLEKS                       R5 R0 K0 ["props"]
       14 GETTABLEKS                       R4 R5 K4 ["Subscribers"]
       16 GETTABLEKS                       R6 R0 K0 ["props"]
       18 GETTABLEKS                       R5 R6 K5 ["Id"]
       20 GETTABLEKS                       R7 R0 K0 ["props"]
       22 GETTABLEKS                       R6 R7 K6 ["CreationDate"]
       24 GETTABLEKS                       R8 R0 K0 ["props"]
       26 GETTABLEKS                       R7 R8 K7 ["OnEditButtonActivated"]
       28 GETTABLEKS                       R9 R0 K0 ["props"]
       30 GETTABLEKS                       R8 R9 K8 ["Stylizer"]
       32 GETTABLEKS                       R10 R0 K0 ["props"]
       34 GETTABLEKS                       R9 R10 K9 ["Localization"]
       36 GETUPVAL                         R11 0
       37 GETTABLEKS                       R10 R11 K10 ["new"]
       39 CALL                             R10 0 1
       40 GETUPVAL                         R12 1
       41 GETTABLEKS                       R11 R12 K11 ["createElement"]
       43 LOADK                            R12 K12 ["ImageLabel"]
       44 DUPTABLE                         R13 K20 [{"Size", "LayoutOrder", "BackgroundTransparency", "Image", "ImageTransparency", "ImageColor3", "ScaleType", "SliceCenter"}]
       45 GETIMPORT                        R14 K22 [UDim2.new]
       47 LOADN                            R15 1
       48 LOADN                            R16 0
       49 LOADN                            R17 0
       50 MOVE                             R18 R1
       51 CALL                             R14 4 1
       52 SETTABLEKS                       R14 R13 K13 ["Size"]
       54 SETTABLEKS                       R2 R13 K2 ["LayoutOrder"]
       56 LOADN                            R14 1
       57 SETTABLEKS                       R14 R13 K14 ["BackgroundTransparency"]
       59 GETUPVAL                         R15 2
       60 GETTABLEKS                       R14 R15 K23 ["ROUNDED_BACKGROUND_IMAGE"]
       62 SETTABLEKS                       R14 R13 K15 ["Image"]
       64 LOADN                            R14 0
       65 SETTABLEKS                       R14 R13 K16 ["ImageTransparency"]
       67 GETTABLEKS                       R16 R8 K24 ["table"]
       69 GETTABLEKS                       R15 R16 K25 ["item"]
       71 GETTABLEKS                       R14 R15 K26 ["background"]
       73 SETTABLEKS                       R14 R13 K17 ["ImageColor3"]
       75 GETIMPORT                        R14 K29 [Enum.ScaleType.Slice]
       77 SETTABLEKS                       R14 R13 K18 ["ScaleType"]
       79 GETUPVAL                         R15 2
       80 GETTABLEKS                       R14 R15 K30 ["ROUNDED_FRAME_SLICE"]
       82 SETTABLEKS                       R14 R13 K19 ["SliceCenter"]
       84 DUPTABLE                         R14 K33 [{"DetailsFrame", "ErrorIcon"}]
       85 GETUPVAL                         R16 1
       86 GETTABLEKS                       R15 R16 K11 ["createElement"]
       88 LOADK                            R16 K34 ["Frame"]
       89 DUPTABLE                         R17 K35 [{"BackgroundTransparency", "Size"}]
       90 LOADN                            R18 1
       91 SETTABLEKS                       R18 R17 K14 ["BackgroundTransparency"]
       93 GETIMPORT                        R18 K22 [UDim2.new]
       95 LOADN                            R19 1
       96 LOADN                            R20 0
       97 LOADN                            R21 1
       98 LOADN                            R22 0
       99 CALL                             R18 4 1
      100 SETTABLEKS                       R18 R17 K13 ["Size"]
      102 DUPTABLE                         R18 K43 [{"Padding", "Layout", "IdText", "NameText", "SubscribersText", "CreationDateText", "EditFrame"}]
      103 GETUPVAL                         R20 1
      104 GETTABLEKS                       R19 R20 K11 ["createElement"]
      106 LOADK                            R20 K44 ["UIPadding"]
      107 DUPTABLE                         R21 K47 [{"PaddingLeft", "PaddingRight"}]
      108 GETIMPORT                        R22 K49 [UDim.new]
      110 LOADN                            R23 0
      111 LOADN                            R24 4
      112 CALL                             R22 2 1
      113 SETTABLEKS                       R22 R21 K45 ["PaddingLeft"]
      115 GETIMPORT                        R22 K49 [UDim.new]
      117 LOADN                            R23 0
      118 LOADN                            R24 24
      119 CALL                             R22 2 1
      120 SETTABLEKS                       R22 R21 K46 ["PaddingRight"]
      122 CALL                             R19 2 1
      123 SETTABLEKS                       R19 R18 K36 ["Padding"]
      125 GETUPVAL                         R20 1
      126 GETTABLEKS                       R19 R20 K11 ["createElement"]
      128 LOADK                            R20 K50 ["UIListLayout"]
      129 DUPTABLE                         R21 K53 [{"SortOrder", "FillDirection"}]
      130 GETIMPORT                        R22 K54 [Enum.SortOrder.LayoutOrder]
      132 SETTABLEKS                       R22 R21 K51 ["SortOrder"]
      134 GETIMPORT                        R22 K56 [Enum.FillDirection.Horizontal]
      136 SETTABLEKS                       R22 R21 K52 ["FillDirection"]
      138 CALL                             R19 2 1
      139 SETTABLEKS                       R19 R18 K37 ["Layout"]
      141 GETUPVAL                         R20 1
      142 GETTABLEKS                       R19 R20 K11 ["createElement"]
      144 GETUPVAL                         R20 3
      145 DUPTABLE                         R21 K59 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      146 GETIMPORT                        R22 K22 [UDim2.new]
      148 LOADK                            R23 K60 [0.25]
      149 LOADN                            R24 0
      150 LOADN                            R25 1
      151 LOADN                            R26 0
      152 CALL                             R22 4 1
      153 SETTABLEKS                       R22 R21 K13 ["Size"]
      155 JUMPIFEQKN                       R5 K61 [-1] ; [+3]
      157 MOVE                             R22 R5
      158 JUMPIF                           R22 ; [+5]
      159 LOADK                            R24 K62 ["Monetization"]
      160 LOADK                            R25 K63 ["UnsavedDevProduct"]
      161 NAMECALL                         R22 R9 K64 ["getText"]
      163 CALL                             R22 3 1
      164 SETTABLEKS                       R22 R21 K57 ["Text"]
      166 NAMECALL                         R22 R10 K65 ["getNextOrder"]
      168 CALL                             R22 1 1
      169 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      171 GETIMPORT                        R22 K68 [Enum.TextXAlignment.Left]
      173 SETTABLEKS                       R22 R21 K58 ["Alignment"]
      175 CALL                             R19 2 1
      176 SETTABLEKS                       R19 R18 K38 ["IdText"]
      178 GETUPVAL                         R20 1
      179 GETTABLEKS                       R19 R20 K11 ["createElement"]
      181 GETUPVAL                         R20 3
      182 DUPTABLE                         R21 K59 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      183 GETIMPORT                        R22 K22 [UDim2.new]
      185 LOADK                            R23 K60 [0.25]
      186 LOADN                            R24 0
      187 LOADN                            R25 1
      188 LOADN                            R26 0
      189 CALL                             R22 4 1
      190 SETTABLEKS                       R22 R21 K13 ["Size"]
      192 SETTABLEKS                       R3 R21 K57 ["Text"]
      194 NAMECALL                         R22 R10 K65 ["getNextOrder"]
      196 CALL                             R22 1 1
      197 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      199 GETIMPORT                        R22 K68 [Enum.TextXAlignment.Left]
      201 SETTABLEKS                       R22 R21 K58 ["Alignment"]
      203 CALL                             R19 2 1
      204 SETTABLEKS                       R19 R18 K39 ["NameText"]
      206 GETUPVAL                         R20 1
      207 GETTABLEKS                       R19 R20 K11 ["createElement"]
      209 GETUPVAL                         R20 3
      210 DUPTABLE                         R21 K59 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      211 GETIMPORT                        R22 K22 [UDim2.new]
      213 LOADK                            R23 K69 [0.2]
      214 LOADN                            R24 0
      215 LOADN                            R25 1
      216 LOADN                            R26 0
      217 CALL                             R22 4 1
      218 SETTABLEKS                       R22 R21 K13 ["Size"]
      220 GETUPVAL                         R22 4
      221 MOVE                             R23 R4
      222 CALL                             R22 1 1
      223 SETTABLEKS                       R22 R21 K57 ["Text"]
      225 NAMECALL                         R22 R10 K65 ["getNextOrder"]
      227 CALL                             R22 1 1
      228 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      230 GETIMPORT                        R22 K68 [Enum.TextXAlignment.Left]
      232 SETTABLEKS                       R22 R21 K58 ["Alignment"]
      234 CALL                             R19 2 1
      235 SETTABLEKS                       R19 R18 K40 ["SubscribersText"]
      237 GETUPVAL                         R20 1
      238 GETTABLEKS                       R19 R20 K11 ["createElement"]
      240 GETUPVAL                         R20 3
      241 DUPTABLE                         R21 K59 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      242 GETIMPORT                        R22 K22 [UDim2.new]
      244 LOADK                            R23 K69 [0.2]
      245 LOADN                            R24 0
      246 LOADN                            R25 1
      247 LOADN                            R26 0
      248 CALL                             R22 4 1
      249 SETTABLEKS                       R22 R21 K13 ["Size"]
      251 LOADN                            R24 0
      252 LOADN                            R25 10
      253 NAMECALL                         R22 R6 K70 ["sub"]
      255 CALL                             R22 3 1
      256 SETTABLEKS                       R22 R21 K57 ["Text"]
      258 NAMECALL                         R22 R10 K65 ["getNextOrder"]
      260 CALL                             R22 1 1
      261 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      263 GETIMPORT                        R22 K68 [Enum.TextXAlignment.Left]
      265 SETTABLEKS                       R22 R21 K58 ["Alignment"]
      267 CALL                             R19 2 1
      268 SETTABLEKS                       R19 R18 K41 ["CreationDateText"]
      270 GETUPVAL                         R20 1
      271 GETTABLEKS                       R19 R20 K11 ["createElement"]
      273 LOADK                            R20 K34 ["Frame"]
      274 DUPTABLE                         R21 K71 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
      275 LOADN                            R22 1
      276 SETTABLEKS                       R22 R21 K14 ["BackgroundTransparency"]
      278 GETIMPORT                        R22 K22 [UDim2.new]
      280 LOADK                            R23 K72 [0.1]
      281 LOADN                            R24 0
      282 LOADN                            R25 1
      283 LOADN                            R26 0
      284 CALL                             R22 4 1
      285 SETTABLEKS                       R22 R21 K13 ["Size"]
      287 NAMECALL                         R22 R10 K65 ["getNextOrder"]
      289 CALL                             R22 1 1
      290 SETTABLEKS                       R22 R21 K2 ["LayoutOrder"]
      292 DUPTABLE                         R22 K74 [{"Button"}]
      293 GETUPVAL                         R24 1
      294 GETTABLEKS                       R23 R24 K11 ["createElement"]
      296 LOADK                            R24 K75 ["ImageButton"]
      297 NEWTABLE                         R25 8 0
      299 LOADN                            R26 1
      300 SETTABLEKS                       R26 R25 K14 ["BackgroundTransparency"]
      302 GETIMPORT                        R26 K22 [UDim2.new]
      304 LOADN                            R27 0
      305 GETTABLEKS                       R30 R8 K24 ["table"]
      307 GETTABLEKS                       R29 R30 K76 ["menu"]
      309 GETTABLEKS                       R28 R29 K77 ["buttonSize"]
      311 LOADN                            R29 0
      312 GETTABLEKS                       R32 R8 K24 ["table"]
      314 GETTABLEKS                       R31 R32 K76 ["menu"]
      316 GETTABLEKS                       R30 R31 K77 ["buttonSize"]
      318 CALL                             R26 4 1
      319 SETTABLEKS                       R26 R25 K13 ["Size"]
      321 GETIMPORT                        R26 K79 [Vector2.new]
      323 LOADN                            R27 1
      324 LOADK                            R28 K80 [0.5]
      325 CALL                             R26 2 1
      326 SETTABLEKS                       R26 R25 K81 ["AnchorPoint"]
      328 GETIMPORT                        R26 K22 [UDim2.new]
      330 LOADN                            R27 1
      331 LOADN                            R28 0
      332 LOADK                            R29 K80 [0.5]
      333 LOADN                            R30 0
      334 CALL                             R26 4 1
      335 SETTABLEKS                       R26 R25 K82 ["Position"]
      337 GETUPVAL                         R28 1
      338 GETTABLEKS                       R27 R28 K83 ["Event"]
      340 GETTABLEKS                       R26 R27 K84 ["Activated"]
      342 SETTABLE                         R7 R25 R26
      343 NEWTABLE                         R26 1 1
      345 GETUPVAL                         R29 1
      346 GETTABLEKS                       R28 R29 K11 ["createElement"]
      348 GETUPVAL                         R29 5
      349 GETUPVAL                         R32 6
      350 GETTABLEKS                       R31 R32 K85 ["Dictionary"]
      352 GETTABLEKS                       R30 R31 K86 ["join"]
      354 GETTABLEKS                       R32 R8 K87 ["fontStyle"]
      356 GETTABLEKS                       R31 R32 K88 ["Normal"]
      358 DUPTABLE                         R32 K91 [{"Position", "AnchorPoint", "Text", "Font", "BackgroundTransparency", "width"}]
      359 GETIMPORT                        R33 K22 [UDim2.new]
      361 LOADK                            R34 K80 [0.5]
      362 LOADN                            R35 0
      363 LOADK                            R36 K80 [0.5]
      364 LOADN                            R37 0
      365 CALL                             R33 4 1
      366 SETTABLEKS                       R33 R32 K82 ["Position"]
      368 GETIMPORT                        R33 K79 [Vector2.new]
      370 LOADK                            R34 K80 [0.5]
      371 LOADK                            R35 K80 [0.5]
      372 CALL                             R33 2 1
      373 SETTABLEKS                       R33 R32 K81 ["AnchorPoint"]
      375 LOADK                            R33 K92 ["..."]
      376 SETTABLEKS                       R33 R32 K57 ["Text"]
      378 GETIMPORT                        R33 K94 [Enum.Font.SourceSansBold]
      380 SETTABLEKS                       R33 R32 K89 ["Font"]
      382 LOADN                            R33 1
      383 SETTABLEKS                       R33 R32 K14 ["BackgroundTransparency"]
      385 GETTABLEKS                       R35 R8 K24 ["table"]
      387 GETTABLEKS                       R34 R35 K76 ["menu"]
      389 GETTABLEKS                       R33 R34 K77 ["buttonSize"]
      391 SETTABLEKS                       R33 R32 K90 ["width"]
      393 CALL                             R30 2 -1
      394 CALL                             R28 -1 1
      395 SETTABLEKS                       R28 R26 K95 ["Dots"]
      397 GETUPVAL                         R28 1
      398 GETTABLEKS                       R27 R28 K11 ["createElement"]
      400 GETUPVAL                         R28 7
      401 DUPTABLE                         R29 K97 [{"Cursor"}]
      402 LOADK                            R30 K98 ["PointingHand"]
      403 SETTABLEKS                       R30 R29 K96 ["Cursor"]
      405 CALL                             R27 2 -1
      406 SETLIST                          R26 R27 -1 [1]
      408 CALL                             R23 3 1
      409 SETTABLEKS                       R23 R22 K73 ["Button"]
      411 CALL                             R19 3 1
      412 SETTABLEKS                       R19 R18 K42 ["EditFrame"]
      414 CALL                             R15 3 1
      415 SETTABLEKS                       R15 R14 K31 ["DetailsFrame"]
      417 GETTABLEKS                       R16 R0 K0 ["props"]
      419 GETTABLEKS                       R15 R16 K99 ["HasError"]
      421 JUMPIFNOT                        R15 ; [+39]
      422 GETUPVAL                         R16 1
      423 GETTABLEKS                       R15 R16 K11 ["createElement"]
      425 LOADK                            R16 K75 ["ImageButton"]
      426 DUPTABLE                         R17 K100 [{"BackgroundTransparency", "Image", "Size", "Position", "AnchorPoint"}]
      427 LOADN                            R18 1
      428 SETTABLEKS                       R18 R17 K14 ["BackgroundTransparency"]
      430 GETUPVAL                         R19 2
      431 GETTABLEKS                       R18 R19 K101 ["ERROR_IMAGE"]
      433 SETTABLEKS                       R18 R17 K15 ["Image"]
      435 GETIMPORT                        R18 K22 [UDim2.new]
      437 LOADN                            R19 0
      438 LOADN                            R20 16
      439 LOADN                            R21 0
      440 LOADN                            R22 16
      441 CALL                             R18 4 1
      442 SETTABLEKS                       R18 R17 K13 ["Size"]
      444 GETIMPORT                        R18 K22 [UDim2.new]
      446 LOADN                            R19 1
      447 LOADN                            R20 240
      448 LOADN                            R21 0
      449 LOADN                            R22 16
      450 CALL                             R18 4 1
      451 SETTABLEKS                       R18 R17 K82 ["Position"]
      453 GETIMPORT                        R18 K79 [Vector2.new]
      455 LOADK                            R19 K80 [0.5]
      456 LOADK                            R20 K80 [0.5]
      457 CALL                             R18 2 1
      458 SETTABLEKS                       R18 R17 K81 ["AnchorPoint"]
      460 CALL                             R15 2 1
      461 SETTABLEKS                       R15 R14 K32 ["ErrorIcon"]
      463 CALL                             R11 3 -1
      464 RETURN                           R11 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["FitFrame"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R4 K1 [script]
       20 GETTABLEKS                       R3 R4 K2 ["Parent"]
       22 GETTABLEKS                       R2 R3 K2 ["Parent"]
       24 GETIMPORT                        R3 K4 [require]
       26 GETTABLEKS                       R5 R0 K5 ["Packages"]
       28 GETTABLEKS                       R4 R5 K7 ["Roact"]
       30 CALL                             R3 1 1
       31 GETIMPORT                        R4 K4 [require]
       33 GETTABLEKS                       R6 R0 K5 ["Packages"]
       35 GETTABLEKS                       R5 R6 K8 ["Cryo"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K4 [require]
       40 GETTABLEKS                       R8 R0 K9 ["Src"]
       42 GETTABLEKS                       R7 R8 K10 ["Util"]
       44 GETTABLEKS                       R6 R7 K11 ["DEPRECATED_Constants"]
       46 CALL                             R5 1 1
       47 GETIMPORT                        R6 K4 [require]
       49 GETTABLEKS                       R8 R2 K10 ["Util"]
       51 GETTABLEKS                       R7 R8 K12 ["numberWithCommas"]
       53 CALL                             R6 1 1
       54 GETIMPORT                        R7 K4 [require]
       56 GETIMPORT                        R10 K1 [script]
       58 GETTABLEKS                       R9 R10 K2 ["Parent"]
       60 GETTABLEKS                       R8 R9 K13 ["DevSubListItemText"]
       62 CALL                             R7 1 1
       63 GETIMPORT                        R8 K4 [require]
       65 GETTABLEKS                       R10 R0 K5 ["Packages"]
       67 GETTABLEKS                       R9 R10 K14 ["Framework"]
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
