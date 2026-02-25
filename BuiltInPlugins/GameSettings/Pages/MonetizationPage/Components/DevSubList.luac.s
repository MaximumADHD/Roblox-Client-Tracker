PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["Active"]
        2 GETTABLEKS                       R3 R1 K0 ["Active"]
        4 JUMPIFEQ                         R2 R3 ; [+11]
        6 GETTABLEKS                       R2 R0 K0 ["Active"]
        8 JUMPIFNOT                        R2 ; [+2]
        9 LOADB                            R2 1
       10 RETURN                           R2 1
       11 GETTABLEKS                       R2 R1 K0 ["Active"]
       13 JUMPIFNOT                        R2 ; [+2]
       14 LOADB                            R2 0
       15 RETURN                           R2 1
       16 GETTABLEKS                       R3 R0 K1 ["Key"]
       18 NAMECALL                         R3 R3 K2 ["upper"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R1 K1 ["Key"]
       23 NAMECALL                         R4 R4 K2 ["upper"]
       25 CALL                             R4 1 1
       26 JUMPIFLT                         R3 R4 ; [+2]
       28 LOADB                            R2 0 +1
       29 LOADB                            R2 1
       30 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["DeveloperSubscriptions"]
        4 GETTABLEKS                       R3 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R3 K2 ["OnDeveloperSubscriptionEdited"]
        8 GETTABLEKS                       R4 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K3 ["OnDeveloperSubscriptionCreated"]
       12 GETTABLEKS                       R6 R0 K0 ["props"]
       14 GETTABLEKS                       R5 R6 K5 ["ListItemHeight"]
       16 ORK                              R4 R5 K4 [32]
       17 GETTABLEKS                       R6 R0 K0 ["props"]
       19 GETTABLEKS                       R5 R6 K6 ["Stylizer"]
       21 GETTABLEKS                       R7 R0 K0 ["props"]
       23 GETTABLEKS                       R6 R7 K7 ["Localization"]
       25 GETTABLEKS                       R8 R0 K0 ["props"]
       27 GETTABLEKS                       R7 R8 K8 ["LayoutOrder"]
       29 LOADK                            R10 K9 ["General"]
       30 LOADK                            R11 K10 ["DevSubsCreateAction"]
       31 NAMECALL                         R8 R6 K11 ["getText"]
       33 CALL                             R8 3 1
       34 GETUPVAL                         R9 0
       35 MOVE                             R10 R8
       36 GETTABLEKS                       R13 R5 K12 ["fontStyle"]
       38 GETTABLEKS                       R12 R13 K13 ["Normal"]
       40 GETTABLEKS                       R11 R12 K14 ["TextSize"]
       42 GETTABLEKS                       R14 R5 K12 ["fontStyle"]
       44 GETTABLEKS                       R13 R14 K13 ["Normal"]
       46 GETTABLEKS                       R12 R13 K15 ["Font"]
       48 CALL                             R9 3 1
       49 DUPTABLE                         R10 K18 [{"Header", "ListHeader"}]
       50 GETUPVAL                         R12 1
       51 GETTABLEKS                       R11 R12 K19 ["createElement"]
       53 LOADK                            R12 K20 ["TextLabel"]
       54 GETUPVAL                         R15 2
       55 GETTABLEKS                       R14 R15 K21 ["Dictionary"]
       57 GETTABLEKS                       R13 R14 K22 ["join"]
       59 GETTABLEKS                       R15 R5 K12 ["fontStyle"]
       61 GETTABLEKS                       R14 R15 K23 ["Title"]
       63 DUPTABLE                         R15 K31 [{"Size", "Text", "TextColor3", "BackgroundTransparency", "BorderSizePixel", "TextXAlignment", "TextYAlignment", "LayoutOrder"}]
       64 GETIMPORT                        R16 K34 [UDim2.new]
       66 LOADN                            R17 1
       67 LOADN                            R18 0
       68 LOADN                            R19 0
       69 GETUPVAL                         R21 3
       70 GETTABLEKS                       R20 R21 K35 ["HEADER_HEIGHT"]
       72 CALL                             R16 4 1
       73 SETTABLEKS                       R16 R15 K24 ["Size"]
       75 LOADK                            R18 K9 ["General"]
       76 LOADK                            R19 K36 ["DevSubsListHeader"]
       77 NAMECALL                         R16 R6 K11 ["getText"]
       79 CALL                             R16 3 1
       80 SETTABLEKS                       R16 R15 K25 ["Text"]
       82 GETIMPORT                        R16 K39 [Color3.fromRGB]
       84 LOADN                            R17 170
       85 LOADN                            R18 170
       86 LOADN                            R19 170
       87 CALL                             R16 3 1
       88 SETTABLEKS                       R16 R15 K26 ["TextColor3"]
       90 LOADN                            R16 1
       91 SETTABLEKS                       R16 R15 K27 ["BackgroundTransparency"]
       93 LOADN                            R16 0
       94 SETTABLEKS                       R16 R15 K28 ["BorderSizePixel"]
       96 GETIMPORT                        R16 K42 [Enum.TextXAlignment.Left]
       98 SETTABLEKS                       R16 R15 K29 ["TextXAlignment"]
      100 GETIMPORT                        R16 K44 [Enum.TextYAlignment.Center]
      102 SETTABLEKS                       R16 R15 K30 ["TextYAlignment"]
      104 LOADN                            R16 0
      105 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      107 CALL                             R13 2 1
      108 DUPTABLE                         R14 K48 [{"Padding", "Layout", "CreateButton"}]
      109 GETUPVAL                         R16 1
      110 GETTABLEKS                       R15 R16 K19 ["createElement"]
      112 LOADK                            R16 K49 ["UIPadding"]
      113 DUPTABLE                         R17 K51 [{"PaddingRight"}]
      114 GETIMPORT                        R18 K53 [UDim.new]
      116 LOADN                            R19 0
      117 LOADN                            R20 12
      118 CALL                             R18 2 1
      119 SETTABLEKS                       R18 R17 K50 ["PaddingRight"]
      121 CALL                             R15 2 1
      122 SETTABLEKS                       R15 R14 K45 ["Padding"]
      124 GETUPVAL                         R16 1
      125 GETTABLEKS                       R15 R16 K19 ["createElement"]
      127 LOADK                            R16 K54 ["UIListLayout"]
      128 DUPTABLE                         R17 K57 [{"HorizontalAlignment", "VerticalAlignment"}]
      129 GETIMPORT                        R18 K59 [Enum.HorizontalAlignment.Right]
      131 SETTABLEKS                       R18 R17 K55 ["HorizontalAlignment"]
      133 GETIMPORT                        R18 K61 [Enum.VerticalAlignment.Bottom]
      135 SETTABLEKS                       R18 R17 K56 ["VerticalAlignment"]
      137 CALL                             R15 2 1
      138 SETTABLEKS                       R15 R14 K46 ["Layout"]
      140 GETUPVAL                         R16 1
      141 GETTABLEKS                       R15 R16 K19 ["createElement"]
      143 GETUPVAL                         R16 4
      144 DUPTABLE                         R17 K64 [{"Style", "Text", "Size", "OnClick"}]
      145 LOADK                            R18 K65 ["GameSettingsPrimaryButton"]
      146 SETTABLEKS                       R18 R17 K62 ["Style"]
      148 LOADK                            R20 K9 ["General"]
      149 LOADK                            R21 K10 ["DevSubsCreateAction"]
      150 NAMECALL                         R18 R6 K11 ["getText"]
      152 CALL                             R18 3 1
      153 SETTABLEKS                       R18 R17 K25 ["Text"]
      155 GETIMPORT                        R18 K34 [UDim2.new]
      157 LOADN                            R19 0
      158 GETTABLEKS                       R21 R9 K66 ["X"]
      160 GETTABLEKS                       R23 R5 K67 ["createButton"]
      162 GETTABLEKS                       R22 R23 K68 ["PaddingX"]
      164 ADD                              R20 R21 R22
      165 LOADN                            R21 0
      166 GETTABLEKS                       R23 R9 K69 ["Y"]
      168 GETTABLEKS                       R25 R5 K67 ["createButton"]
      170 GETTABLEKS                       R24 R25 K70 ["PaddingY"]
      172 ADD                              R22 R23 R24
      173 CALL                             R18 4 1
      174 SETTABLEKS                       R18 R17 K24 ["Size"]
      176 SETTABLEKS                       R3 R17 K63 ["OnClick"]
      178 CALL                             R15 2 1
      179 SETTABLEKS                       R15 R14 K47 ["CreateButton"]
      181 CALL                             R11 3 1
      182 SETTABLEKS                       R11 R10 K16 ["Header"]
      184 GETUPVAL                         R12 1
      185 GETTABLEKS                       R11 R12 K19 ["createElement"]
      187 LOADK                            R12 K71 ["Frame"]
      188 DUPTABLE                         R13 K72 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
      189 LOADN                            R14 1
      190 SETTABLEKS                       R14 R13 K27 ["BackgroundTransparency"]
      192 GETIMPORT                        R14 K34 [UDim2.new]
      194 LOADN                            R15 1
      195 LOADN                            R16 0
      196 LOADN                            R17 0
      197 MOVE                             R18 R4
      198 CALL                             R14 4 1
      199 SETTABLEKS                       R14 R13 K24 ["Size"]
      201 LOADN                            R14 1
      202 SETTABLEKS                       R14 R13 K8 ["LayoutOrder"]
      204 DUPTABLE                         R14 K77 [{"Padding", "Layout", "IdText", "NameText", "SubscribersText", "CreationDateText"}]
      205 GETUPVAL                         R16 1
      206 GETTABLEKS                       R15 R16 K19 ["createElement"]
      208 LOADK                            R16 K49 ["UIPadding"]
      209 DUPTABLE                         R17 K79 [{"PaddingLeft", "PaddingRight"}]
      210 GETIMPORT                        R18 K53 [UDim.new]
      212 LOADN                            R19 0
      213 LOADN                            R20 4
      214 CALL                             R18 2 1
      215 SETTABLEKS                       R18 R17 K78 ["PaddingLeft"]
      217 GETIMPORT                        R18 K53 [UDim.new]
      219 LOADN                            R19 0
      220 LOADN                            R20 24
      221 CALL                             R18 2 1
      222 SETTABLEKS                       R18 R17 K50 ["PaddingRight"]
      224 CALL                             R15 2 1
      225 SETTABLEKS                       R15 R14 K45 ["Padding"]
      227 GETUPVAL                         R16 1
      228 GETTABLEKS                       R15 R16 K19 ["createElement"]
      230 LOADK                            R16 K54 ["UIListLayout"]
      231 DUPTABLE                         R17 K82 [{"SortOrder", "FillDirection"}]
      232 GETIMPORT                        R18 K83 [Enum.SortOrder.LayoutOrder]
      234 SETTABLEKS                       R18 R17 K80 ["SortOrder"]
      236 GETIMPORT                        R18 K85 [Enum.FillDirection.Horizontal]
      238 SETTABLEKS                       R18 R17 K81 ["FillDirection"]
      240 CALL                             R15 2 1
      241 SETTABLEKS                       R15 R14 K46 ["Layout"]
      243 GETUPVAL                         R16 1
      244 GETTABLEKS                       R15 R16 K19 ["createElement"]
      246 GETUPVAL                         R16 5
      247 DUPTABLE                         R17 K87 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      248 GETIMPORT                        R18 K34 [UDim2.new]
      250 LOADK                            R19 K88 [0.25]
      251 LOADN                            R20 0
      252 LOADN                            R21 1
      253 LOADN                            R22 0
      254 CALL                             R18 4 1
      255 SETTABLEKS                       R18 R17 K24 ["Size"]
      257 LOADK                            R20 K9 ["General"]
      258 LOADK                            R21 K89 ["DevSubsPlanID"]
      259 NAMECALL                         R18 R6 K11 ["getText"]
      261 CALL                             R18 3 1
      262 SETTABLEKS                       R18 R17 K25 ["Text"]
      264 LOADN                            R18 1
      265 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      267 GETIMPORT                        R18 K42 [Enum.TextXAlignment.Left]
      269 SETTABLEKS                       R18 R17 K86 ["Alignment"]
      271 CALL                             R15 2 1
      272 SETTABLEKS                       R15 R14 K73 ["IdText"]
      274 GETUPVAL                         R16 1
      275 GETTABLEKS                       R15 R16 K19 ["createElement"]
      277 GETUPVAL                         R16 5
      278 DUPTABLE                         R17 K87 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      279 GETIMPORT                        R18 K34 [UDim2.new]
      281 LOADK                            R19 K88 [0.25]
      282 LOADN                            R20 0
      283 LOADN                            R21 1
      284 LOADN                            R22 0
      285 CALL                             R18 4 1
      286 SETTABLEKS                       R18 R17 K24 ["Size"]
      288 LOADK                            R20 K9 ["General"]
      289 LOADK                            R21 K90 ["DevSubsName"]
      290 NAMECALL                         R18 R6 K11 ["getText"]
      292 CALL                             R18 3 1
      293 SETTABLEKS                       R18 R17 K25 ["Text"]
      295 LOADN                            R18 2
      296 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      298 GETIMPORT                        R18 K42 [Enum.TextXAlignment.Left]
      300 SETTABLEKS                       R18 R17 K86 ["Alignment"]
      302 CALL                             R15 2 1
      303 SETTABLEKS                       R15 R14 K74 ["NameText"]
      305 GETUPVAL                         R16 1
      306 GETTABLEKS                       R15 R16 K19 ["createElement"]
      308 GETUPVAL                         R16 5
      309 DUPTABLE                         R17 K87 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      310 GETIMPORT                        R18 K34 [UDim2.new]
      312 LOADK                            R19 K91 [0.2]
      313 LOADN                            R20 0
      314 LOADN                            R21 1
      315 LOADN                            R22 0
      316 CALL                             R18 4 1
      317 SETTABLEKS                       R18 R17 K24 ["Size"]
      319 LOADK                            R20 K9 ["General"]
      320 LOADK                            R21 K92 ["DevSubsSubscribers"]
      321 NAMECALL                         R18 R6 K11 ["getText"]
      323 CALL                             R18 3 1
      324 SETTABLEKS                       R18 R17 K25 ["Text"]
      326 LOADN                            R18 3
      327 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      329 GETIMPORT                        R18 K42 [Enum.TextXAlignment.Left]
      331 SETTABLEKS                       R18 R17 K86 ["Alignment"]
      333 CALL                             R15 2 1
      334 SETTABLEKS                       R15 R14 K75 ["SubscribersText"]
      336 GETUPVAL                         R16 1
      337 GETTABLEKS                       R15 R16 K19 ["createElement"]
      339 GETUPVAL                         R16 5
      340 DUPTABLE                         R17 K87 [{"Size", "Text", "LayoutOrder", "Alignment"}]
      341 GETIMPORT                        R18 K34 [UDim2.new]
      343 LOADK                            R19 K91 [0.2]
      344 LOADN                            R20 0
      345 LOADN                            R21 1
      346 LOADN                            R22 0
      347 CALL                             R18 4 1
      348 SETTABLEKS                       R18 R17 K24 ["Size"]
      350 LOADK                            R20 K9 ["General"]
      351 LOADK                            R21 K93 ["DevSubsCreationDate"]
      352 NAMECALL                         R18 R6 K11 ["getText"]
      354 CALL                             R18 3 1
      355 SETTABLEKS                       R18 R17 K25 ["Text"]
      357 LOADN                            R18 4
      358 SETTABLEKS                       R18 R17 K8 ["LayoutOrder"]
      360 GETIMPORT                        R18 K42 [Enum.TextXAlignment.Left]
      362 SETTABLEKS                       R18 R17 K86 ["Alignment"]
      364 CALL                             R15 2 1
      365 SETTABLEKS                       R15 R14 K76 ["CreationDateText"]
      367 CALL                             R11 3 1
      368 SETTABLEKS                       R11 R10 K17 ["ListHeader"]
      370 NEWTABLE                         R11 0 0
      372 GETIMPORT                        R12 K95 [pairs]
      374 MOVE                             R13 R1
      375 CALL                             R12 1 3
      376 FORGPREP_NEXT                    R12
      377 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
      379 MOVE                             R18 R11
      380 MOVE                             R19 R16
      381 GETIMPORT                        R17 K98 [table.insert]
      383 CALL                             R17 2 0
      384 FORGLOOP                         R12 2 ; [-8]
      386 GETIMPORT                        R12 K100 [table.sort]
      388 MOVE                             R13 R11
      389 DUPCLOSURE                       R14 K101 [PROTO_0]
      390 CALL                             R12 2 0
      391 LOADN                            R12 1
      392 GETIMPORT                        R13 K103 [ipairs]
      394 MOVE                             R14 R11
      395 CALL                             R13 1 3
      396 FORGPREP_INEXT                   R13
      397 NEWCLOSURE                       R18 P1
      398 CAPTURE                          VAL R2
      399 CAPTURE                          VAL R17
      400 GETTABLEKS                       R19 R17 K104 ["Key"]
      402 GETUPVAL                         R21 1
      403 GETTABLEKS                       R20 R21 K19 ["createElement"]
      405 GETUPVAL                         R21 6
      406 DUPTABLE                         R22 K113 [{"Name", "Id", "Subscribers", "Active", "LayoutOrder", "OnEditButtonActivated", "Height", "HasError", "CreationDate"}]
      407 GETTABLEKS                       R24 R17 K105 ["Name"]
      409 ORK                              R23 R24 K114 [""]
      410 SETTABLEKS                       R23 R22 K105 ["Name"]
      412 GETTABLEKS                       R23 R17 K106 ["Id"]
      414 SETTABLEKS                       R23 R22 K106 ["Id"]
      416 GETTABLEKS                       R23 R17 K107 ["Subscribers"]
      418 SETTABLEKS                       R23 R22 K107 ["Subscribers"]
      420 GETTABLEKS                       R23 R17 K108 ["Active"]
      422 SETTABLEKS                       R23 R22 K108 ["Active"]
      424 ADDK                             R23 R12 K115 [1]
      425 SETTABLEKS                       R23 R22 K8 ["LayoutOrder"]
      427 SETTABLEKS                       R18 R22 K109 ["OnEditButtonActivated"]
      429 SETTABLEKS                       R4 R22 K110 ["Height"]
      431 GETTABLEKS                       R26 R0 K0 ["props"]
      433 GETTABLEKS                       R25 R26 K116 ["DevSubsErrors"]
      435 GETTABLEKS                       R26 R17 K104 ["Key"]
      437 GETTABLE                         R24 R25 R26
      438 JUMPIFNOTEQKNIL                  R24 ; [+2]
      440 LOADB                            R23 0 +1
      441 LOADB                            R23 1
      442 SETTABLEKS                       R23 R22 K111 ["HasError"]
      444 GETTABLEKS                       R24 R17 K112 ["CreationDate"]
      446 ORK                              R23 R24 K114 [""]
      447 SETTABLEKS                       R23 R22 K112 ["CreationDate"]
      449 CALL                             R20 2 1
      450 SETTABLE                         R20 R10 R19
      451 ADDK                             R12 R12 K115 [1]
      452 FORGLOOP                         R13 2 [inext] ; [-56]
      454 GETUPVAL                         R14 1
      455 GETTABLEKS                       R13 R14 K19 ["createElement"]
      457 LOADK                            R14 K71 ["Frame"]
      458 DUPTABLE                         R15 K72 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
      459 LOADN                            R16 1
      460 SETTABLEKS                       R16 R15 K27 ["BackgroundTransparency"]
      462 GETIMPORT                        R16 K34 [UDim2.new]
      464 LOADN                            R17 1
      465 LOADN                            R18 0
      466 LOADN                            R19 0
      467 LOADN                            R20 0
      468 CALL                             R16 4 1
      469 SETTABLEKS                       R16 R15 K24 ["Size"]
      471 ADDK                             R16 R12 K115 [1]
      472 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      474 CALL                             R13 2 1
      475 SETTABLEKS                       R13 R10 K117 ["Space"]
      477 GETUPVAL                         R14 1
      478 GETTABLEKS                       R13 R14 K19 ["createElement"]
      480 GETUPVAL                         R14 7
      481 DUPTABLE                         R15 K120 [{"Layout", "LayoutOrder", "AutomaticSize", "Spacing"}]
      482 GETIMPORT                        R16 K122 [Enum.FillDirection.Vertical]
      484 SETTABLEKS                       R16 R15 K46 ["Layout"]
      486 SETTABLEKS                       R7 R15 K8 ["LayoutOrder"]
      488 GETIMPORT                        R16 K123 [Enum.AutomaticSize.Y]
      490 SETTABLEKS                       R16 R15 K118 ["AutomaticSize"]
      492 GETIMPORT                        R16 K53 [UDim.new]
      494 LOADN                            R17 0
      495 LOADN                            R18 10
      496 CALL                             R16 2 1
      497 SETTABLEKS                       R16 R15 K119 ["Spacing"]
      499 MOVE                             R16 R10
      500 CALL                             R13 3 -1
      501 RETURN                           R13 -1

PROTO_3:
        0 GETTABLEKS                       R3 R0 K0 ["Settings"]
        2 GETTABLEKS                       R2 R3 K1 ["Errors"]
        4 GETTABLEKS                       R4 R0 K0 ["Settings"]
        6 GETTABLEKS                       R3 R4 K2 ["Current"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 GETTABLEKS                       R4 R3 K3 ["DeveloperSubscriptions"]
       13 JUMPIF                           R4 ; [+2]
       14 NEWTABLE                         R4 0 0
       16 MOVE                             R3 R4
       17 GETTABLEKS                       R5 R0 K0 ["Settings"]
       19 GETTABLEKS                       R4 R5 K4 ["Changed"]
       21 JUMPIF                           R4 ; [+2]
       22 NEWTABLE                         R4 0 0
       24 GETTABLEKS                       R5 R4 K3 ["DeveloperSubscriptions"]
       26 JUMPIF                           R5 ; [+2]
       27 NEWTABLE                         R5 0 0
       29 MOVE                             R4 R5
       30 DUPTABLE                         R5 K7 [{"DeveloperSubscriptions", "ModeratedDevSubs", "DevSubsErrors"}]
       31 GETUPVAL                         R7 0
       32 GETTABLEKS                       R6 R7 K8 ["Merge"]
       34 MOVE                             R7 R3
       35 MOVE                             R8 R4
       36 CALL                             R6 2 1
       37 JUMPIF                           R6 ; [+2]
       38 NEWTABLE                         R6 0 0
       40 SETTABLEKS                       R6 R5 K3 ["DeveloperSubscriptions"]
       42 GETTABLEKS                       R6 R0 K9 ["DevSubModeration"]
       44 JUMPIF                           R6 ; [+2]
       45 NEWTABLE                         R6 0 0
       47 SETTABLEKS                       R6 R5 K5 ["ModeratedDevSubs"]
       49 GETTABLEKS                       R6 R2 K3 ["DeveloperSubscriptions"]
       51 JUMPIF                           R6 ; [+2]
       52 NEWTABLE                         R6 0 0
       54 SETTABLEKS                       R6 R5 K6 ["DevSubsErrors"]
       56 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADK                            R3 K0 ["isEditingSubscription"]
        3 LOADB                            R4 1
        4 CALL                             R2 2 -1
        5 CALL                             R1 -1 0
        6 GETUPVAL                         R1 0
        7 GETUPVAL                         R2 1
        8 LOADK                            R3 K1 ["editedSubscriptionKey"]
        9 GETTABLEKS                       R4 R0 K2 ["Key"]
       11 CALL                             R2 2 -1
       12 CALL                             R1 -1 0
       13 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"OnDeveloperSubscriptionEdited"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["OnDeveloperSubscriptionEdited"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Cryo"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R5 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R5 K8 ["RoactRodux"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R6 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R6 K9 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K10 ["Util"]
       41 GETTABLEKS                       R6 R5 K11 ["GetTextSize"]
       43 GETTABLEKS                       R7 R4 K12 ["UI"]
       45 GETTABLEKS                       R8 R7 K13 ["Button"]
       47 GETTABLEKS                       R9 R7 K14 ["Pane"]
       49 GETTABLEKS                       R10 R4 K15 ["ContextServices"]
       51 GETTABLEKS                       R11 R10 K16 ["withContext"]
       53 GETIMPORT                        R12 K4 [require]
       55 GETIMPORT                        R15 K1 [script]
       57 GETTABLEKS                       R14 R15 K2 ["Parent"]
       59 GETTABLEKS                       R13 R14 K17 ["DevSubListItem"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K4 [require]
       64 GETIMPORT                        R16 K1 [script]
       66 GETTABLEKS                       R15 R16 K2 ["Parent"]
       68 GETTABLEKS                       R14 R15 K18 ["DevSubListHeaderText"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K4 [require]
       73 GETTABLEKS                       R17 R0 K19 ["Src"]
       75 GETTABLEKS                       R16 R17 K10 ["Util"]
       77 GETTABLEKS                       R15 R16 K20 ["DEPRECATED_Constants"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K4 [require]
       82 GETTABLEKS                       R18 R0 K19 ["Src"]
       84 GETTABLEKS                       R17 R18 K10 ["Util"]
       86 GETTABLEKS                       R16 R17 K21 ["DeepMergeTables"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K4 [require]
       91 GETTABLEKS                       R19 R0 K19 ["Src"]
       93 GETTABLEKS                       R18 R19 K22 ["Actions"]
       95 GETTABLEKS                       R17 R18 K23 ["AddChange"]
       97 CALL                             R16 1 1
       98 GETTABLEKS                       R17 R1 K24 ["Component"]
      100 LOADK                            R19 K25 ["DeveloperSubscriptionList"]
      101 NAMECALL                         R17 R17 K26 ["extend"]
      103 CALL                             R17 2 1
      104 DUPCLOSURE                       R18 K27 [PROTO_2]
      105 CAPTURE                          VAL R6
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R2
      108 CAPTURE                          VAL R14
      109 CAPTURE                          VAL R8
      110 CAPTURE                          VAL R13
      111 CAPTURE                          VAL R12
      112 CAPTURE                          VAL R9
      113 SETTABLEKS                       R18 R17 K28 ["render"]
      115 MOVE                             R18 R11
      116 DUPTABLE                         R19 K31 [{"Stylizer", "Localization"}]
      117 GETTABLEKS                       R20 R10 K29 ["Stylizer"]
      119 SETTABLEKS                       R20 R19 K29 ["Stylizer"]
      121 GETTABLEKS                       R20 R10 K30 ["Localization"]
      123 SETTABLEKS                       R20 R19 K30 ["Localization"]
      125 CALL                             R18 1 1
      126 MOVE                             R19 R17
      127 CALL                             R18 1 1
      128 MOVE                             R17 R18
      129 GETTABLEKS                       R18 R3 K32 ["connect"]
      131 DUPCLOSURE                       R19 K33 [PROTO_3]
      132 CAPTURE                          VAL R15
      133 DUPCLOSURE                       R20 K34 [PROTO_5]
      134 CAPTURE                          VAL R16
      135 CALL                             R18 2 1
      136 MOVE                             R19 R17
      137 CALL                             R18 1 -1
      138 RETURN                           R18 -1
