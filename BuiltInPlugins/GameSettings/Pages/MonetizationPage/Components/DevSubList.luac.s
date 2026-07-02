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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["DeveloperSubscriptions"]
        4 GETTABLEKS                       R2 R0 K0 ["props"]
        6 GETTABLEKS                       R2 R2 K2 ["OnDeveloperSubscriptionEdited"]
        8 GETTABLEKS                       R3 R0 K0 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["OnDeveloperSubscriptionCreated"]
       12 GETTABLEKS                       R5 R0 K0 ["props"]
       14 GETTABLEKS                       R5 R5 K5 ["ListItemHeight"]
       16 ORK                              R4 R5 K4 [32]
       17 GETTABLEKS                       R5 R0 K0 ["props"]
       19 GETTABLEKS                       R5 R5 K6 ["Stylizer"]
       21 GETTABLEKS                       R6 R0 K0 ["props"]
       23 GETTABLEKS                       R6 R6 K7 ["Localization"]
       25 GETTABLEKS                       R7 R0 K0 ["props"]
       27 GETTABLEKS                       R7 R7 K8 ["LayoutOrder"]
       29 LOADK                            R10 K9 ["General"]
       30 LOADK                            R11 K10 ["DevSubsCreateAction"]
       31 NAMECALL                         R8 R6 K11 ["getText"]
       33 CALL                             R8 3 1
       34 GETUPVAL                         R9 0
       35 MOVE                             R10 R8
       36 GETTABLEKS                       R11 R5 K12 ["fontStyle"]
       38 GETTABLEKS                       R11 R11 K13 ["Normal"]
       40 GETTABLEKS                       R11 R11 K14 ["TextSize"]
       42 GETTABLEKS                       R12 R5 K12 ["fontStyle"]
       44 GETTABLEKS                       R12 R12 K13 ["Normal"]
       46 GETTABLEKS                       R12 R12 K15 ["Font"]
       48 CALL                             R9 3 1
       49 DUPTABLE                         R10 K18 [{"Header", "ListHeader"}]
       50 GETUPVAL                         R11 1
       51 GETTABLEKS                       R11 R11 K19 ["createElement"]
       53 LOADK                            R12 K20 ["TextLabel"]
       54 GETUPVAL                         R13 2
       55 GETTABLEKS                       R13 R13 K21 ["Dictionary"]
       57 GETTABLEKS                       R13 R13 K22 ["join"]
       59 GETTABLEKS                       R14 R5 K12 ["fontStyle"]
       61 GETTABLEKS                       R14 R14 K23 ["Title"]
       63 DUPTABLE                         R15 K33 [{["Size"], ["Text"], ["TextColor3"], ["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["TextXAlignment"], ["TextYAlignment"], ["LayoutOrder"] = 0}]
       64 GETIMPORT                        R16 K36 [UDim2.new]
       66 LOADN                            R17 1
       67 LOADN                            R18 0
       68 LOADN                            R19 0
       69 GETUPVAL                         R20 3
       70 GETTABLEKS                       R20 R20 K37 ["HEADER_HEIGHT"]
       72 CALL                             R16 4 1
       73 SETTABLEKS                       R16 R15 K24 ["Size"]
       75 LOADK                            R18 K9 ["General"]
       76 LOADK                            R19 K38 ["DevSubsListHeader"]
       77 NAMECALL                         R16 R6 K11 ["getText"]
       79 CALL                             R16 3 1
       80 SETTABLEKS                       R16 R15 K25 ["Text"]
       82 GETIMPORT                        R16 K41 [Color3.fromRGB]
       84 LOADN                            R17 170
       85 LOADN                            R18 170
       86 LOADN                            R19 170
       87 CALL                             R16 3 1
       88 SETTABLEKS                       R16 R15 K26 ["TextColor3"]
       90 GETIMPORT                        R16 K44 [Enum.TextXAlignment.Left]
       92 SETTABLEKS                       R16 R15 K31 ["TextXAlignment"]
       94 GETIMPORT                        R16 K46 [Enum.TextYAlignment.Center]
       96 SETTABLEKS                       R16 R15 K32 ["TextYAlignment"]
       98 CALL                             R13 2 1
       99 DUPTABLE                         R14 K50 [{"Padding", "Layout", "CreateButton"}]
      100 GETUPVAL                         R15 1
      101 GETTABLEKS                       R15 R15 K19 ["createElement"]
      103 LOADK                            R16 K51 ["UIPadding"]
      104 DUPTABLE                         R17 K53 [{"PaddingRight"}]
      105 GETIMPORT                        R18 K55 [UDim.new]
      107 LOADN                            R19 0
      108 LOADN                            R20 12
      109 CALL                             R18 2 1
      110 SETTABLEKS                       R18 R17 K52 ["PaddingRight"]
      112 CALL                             R15 2 1
      113 SETTABLEKS                       R15 R14 K47 ["Padding"]
      115 GETUPVAL                         R15 1
      116 GETTABLEKS                       R15 R15 K19 ["createElement"]
      118 LOADK                            R16 K56 ["UIListLayout"]
      119 DUPTABLE                         R17 K59 [{"HorizontalAlignment", "VerticalAlignment"}]
      120 GETIMPORT                        R18 K61 [Enum.HorizontalAlignment.Right]
      122 SETTABLEKS                       R18 R17 K57 ["HorizontalAlignment"]
      124 GETIMPORT                        R18 K63 [Enum.VerticalAlignment.Bottom]
      126 SETTABLEKS                       R18 R17 K58 ["VerticalAlignment"]
      128 CALL                             R15 2 1
      129 SETTABLEKS                       R15 R14 K48 ["Layout"]
      131 GETUPVAL                         R15 1
      132 GETTABLEKS                       R15 R15 K19 ["createElement"]
      134 GETUPVAL                         R16 4
      135 DUPTABLE                         R17 K67 [{["Style"] = "GameSettingsPrimaryButton", ["Text"], ["Size"], ["OnClick"]}]
      136 LOADK                            R20 K9 ["General"]
      137 LOADK                            R21 K10 ["DevSubsCreateAction"]
      138 NAMECALL                         R18 R6 K11 ["getText"]
      140 CALL                             R18 3 1
      141 SETTABLEKS                       R18 R17 K25 ["Text"]
      143 GETIMPORT                        R18 K36 [UDim2.new]
      145 LOADN                            R19 0
      146 GETTABLEKS                       R21 R9 K68 ["X"]
      148 GETTABLEKS                       R22 R5 K69 ["createButton"]
      150 GETTABLEKS                       R22 R22 K70 ["PaddingX"]
      152 ADD                              R20 R21 R22
      153 LOADN                            R21 0
      154 GETTABLEKS                       R23 R9 K71 ["Y"]
      156 GETTABLEKS                       R24 R5 K69 ["createButton"]
      158 GETTABLEKS                       R24 R24 K72 ["PaddingY"]
      160 ADD                              R22 R23 R24
      161 CALL                             R18 4 1
      162 SETTABLEKS                       R18 R17 K24 ["Size"]
      164 SETTABLEKS                       R3 R17 K66 ["OnClick"]
      166 CALL                             R15 2 1
      167 SETTABLEKS                       R15 R14 K49 ["CreateButton"]
      169 CALL                             R11 3 1
      170 SETTABLEKS                       R11 R10 K16 ["Header"]
      172 GETUPVAL                         R11 1
      173 GETTABLEKS                       R11 R11 K19 ["createElement"]
      175 LOADK                            R12 K73 ["Frame"]
      176 DUPTABLE                         R13 K74 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"] = 1}]
      177 GETIMPORT                        R14 K36 [UDim2.new]
      179 LOADN                            R15 1
      180 LOADN                            R16 0
      181 LOADN                            R17 0
      182 MOVE                             R18 R4
      183 CALL                             R14 4 1
      184 SETTABLEKS                       R14 R13 K24 ["Size"]
      186 DUPTABLE                         R14 K79 [{"Padding", "Layout", "IdText", "NameText", "SubscribersText", "CreationDateText"}]
      187 GETUPVAL                         R15 1
      188 GETTABLEKS                       R15 R15 K19 ["createElement"]
      190 LOADK                            R16 K51 ["UIPadding"]
      191 DUPTABLE                         R17 K81 [{"PaddingLeft", "PaddingRight"}]
      192 GETIMPORT                        R18 K55 [UDim.new]
      194 LOADN                            R19 0
      195 LOADN                            R20 4
      196 CALL                             R18 2 1
      197 SETTABLEKS                       R18 R17 K80 ["PaddingLeft"]
      199 GETIMPORT                        R18 K55 [UDim.new]
      201 LOADN                            R19 0
      202 LOADN                            R20 24
      203 CALL                             R18 2 1
      204 SETTABLEKS                       R18 R17 K52 ["PaddingRight"]
      206 CALL                             R15 2 1
      207 SETTABLEKS                       R15 R14 K47 ["Padding"]
      209 GETUPVAL                         R15 1
      210 GETTABLEKS                       R15 R15 K19 ["createElement"]
      212 LOADK                            R16 K56 ["UIListLayout"]
      213 DUPTABLE                         R17 K84 [{"SortOrder", "FillDirection"}]
      214 GETIMPORT                        R18 K85 [Enum.SortOrder.LayoutOrder]
      216 SETTABLEKS                       R18 R17 K82 ["SortOrder"]
      218 GETIMPORT                        R18 K87 [Enum.FillDirection.Horizontal]
      220 SETTABLEKS                       R18 R17 K83 ["FillDirection"]
      222 CALL                             R15 2 1
      223 SETTABLEKS                       R15 R14 K48 ["Layout"]
      225 GETUPVAL                         R15 1
      226 GETTABLEKS                       R15 R15 K19 ["createElement"]
      228 GETUPVAL                         R16 5
      229 DUPTABLE                         R17 K89 [{["Size"], ["Text"], ["LayoutOrder"] = 1, ["Alignment"]}]
      230 GETIMPORT                        R18 K36 [UDim2.new]
      232 LOADK                            R19 K90 [0.25]
      233 LOADN                            R20 0
      234 LOADN                            R21 1
      235 LOADN                            R22 0
      236 CALL                             R18 4 1
      237 SETTABLEKS                       R18 R17 K24 ["Size"]
      239 LOADK                            R20 K9 ["General"]
      240 LOADK                            R21 K91 ["DevSubsPlanID"]
      241 NAMECALL                         R18 R6 K11 ["getText"]
      243 CALL                             R18 3 1
      244 SETTABLEKS                       R18 R17 K25 ["Text"]
      246 GETIMPORT                        R18 K44 [Enum.TextXAlignment.Left]
      248 SETTABLEKS                       R18 R17 K88 ["Alignment"]
      250 CALL                             R15 2 1
      251 SETTABLEKS                       R15 R14 K75 ["IdText"]
      253 GETUPVAL                         R15 1
      254 GETTABLEKS                       R15 R15 K19 ["createElement"]
      256 GETUPVAL                         R16 5
      257 DUPTABLE                         R17 K93 [{["Size"], ["Text"], ["LayoutOrder"] = 2, ["Alignment"]}]
      258 GETIMPORT                        R18 K36 [UDim2.new]
      260 LOADK                            R19 K90 [0.25]
      261 LOADN                            R20 0
      262 LOADN                            R21 1
      263 LOADN                            R22 0
      264 CALL                             R18 4 1
      265 SETTABLEKS                       R18 R17 K24 ["Size"]
      267 LOADK                            R20 K9 ["General"]
      268 LOADK                            R21 K94 ["DevSubsName"]
      269 NAMECALL                         R18 R6 K11 ["getText"]
      271 CALL                             R18 3 1
      272 SETTABLEKS                       R18 R17 K25 ["Text"]
      274 GETIMPORT                        R18 K44 [Enum.TextXAlignment.Left]
      276 SETTABLEKS                       R18 R17 K88 ["Alignment"]
      278 CALL                             R15 2 1
      279 SETTABLEKS                       R15 R14 K76 ["NameText"]
      281 GETUPVAL                         R15 1
      282 GETTABLEKS                       R15 R15 K19 ["createElement"]
      284 GETUPVAL                         R16 5
      285 DUPTABLE                         R17 K96 [{["Size"], ["Text"], ["LayoutOrder"] = 3, ["Alignment"]}]
      286 GETIMPORT                        R18 K36 [UDim2.new]
      288 LOADK                            R19 K97 [0.2]
      289 LOADN                            R20 0
      290 LOADN                            R21 1
      291 LOADN                            R22 0
      292 CALL                             R18 4 1
      293 SETTABLEKS                       R18 R17 K24 ["Size"]
      295 LOADK                            R20 K9 ["General"]
      296 LOADK                            R21 K98 ["DevSubsSubscribers"]
      297 NAMECALL                         R18 R6 K11 ["getText"]
      299 CALL                             R18 3 1
      300 SETTABLEKS                       R18 R17 K25 ["Text"]
      302 GETIMPORT                        R18 K44 [Enum.TextXAlignment.Left]
      304 SETTABLEKS                       R18 R17 K88 ["Alignment"]
      306 CALL                             R15 2 1
      307 SETTABLEKS                       R15 R14 K77 ["SubscribersText"]
      309 GETUPVAL                         R15 1
      310 GETTABLEKS                       R15 R15 K19 ["createElement"]
      312 GETUPVAL                         R16 5
      313 DUPTABLE                         R17 K100 [{["Size"], ["Text"], ["LayoutOrder"] = 4, ["Alignment"]}]
      314 GETIMPORT                        R18 K36 [UDim2.new]
      316 LOADK                            R19 K97 [0.2]
      317 LOADN                            R20 0
      318 LOADN                            R21 1
      319 LOADN                            R22 0
      320 CALL                             R18 4 1
      321 SETTABLEKS                       R18 R17 K24 ["Size"]
      323 LOADK                            R20 K9 ["General"]
      324 LOADK                            R21 K101 ["DevSubsCreationDate"]
      325 NAMECALL                         R18 R6 K11 ["getText"]
      327 CALL                             R18 3 1
      328 SETTABLEKS                       R18 R17 K25 ["Text"]
      330 GETIMPORT                        R18 K44 [Enum.TextXAlignment.Left]
      332 SETTABLEKS                       R18 R17 K88 ["Alignment"]
      334 CALL                             R15 2 1
      335 SETTABLEKS                       R15 R14 K78 ["CreationDateText"]
      337 CALL                             R11 3 1
      338 SETTABLEKS                       R11 R10 K17 ["ListHeader"]
      340 NEWTABLE                         R11 0 0
      342 GETIMPORT                        R12 K103 [pairs]
      344 MOVE                             R13 R1
      345 CALL                             R12 1 3
      346 FORGPREP_NEXT                    R12
      347 FASTCALL2                        TABLE_INSERT R11 R16 ; [+5]
      349 MOVE                             R18 R11
      350 MOVE                             R19 R16
      351 GETIMPORT                        R17 K106 [table.insert]
      353 CALL                             R17 2 0
      354 FORGLOOP                         R12 2 ; [-8]
      356 GETIMPORT                        R12 K108 [table.sort]
      358 MOVE                             R13 R11
      359 DUPCLOSURE                       R14 K109 [PROTO_0]
      360 CALL                             R12 2 0
      361 LOADN                            R12 1
      362 GETIMPORT                        R13 K111 [ipairs]
      364 MOVE                             R14 R11
      365 CALL                             R13 1 3
      366 FORGPREP_INEXT                   R13
      367 NEWCLOSURE                       R18 P1
      368 CAPTURE                          VAL R2
      369 CAPTURE                          VAL R17
      370 GETTABLEKS                       R19 R17 K112 ["Key"]
      372 GETUPVAL                         R20 1
      373 GETTABLEKS                       R20 R20 K19 ["createElement"]
      375 GETUPVAL                         R21 6
      376 DUPTABLE                         R22 K121 [{"Name", "Id", "Subscribers", "Active", "LayoutOrder", "OnEditButtonActivated", "Height", "HasError", "CreationDate"}]
      377 GETTABLEKS                       R24 R17 K113 ["Name"]
      379 ORK                              R23 R24 K122 [""]
      380 SETTABLEKS                       R23 R22 K113 ["Name"]
      382 GETTABLEKS                       R23 R17 K114 ["Id"]
      384 SETTABLEKS                       R23 R22 K114 ["Id"]
      386 GETTABLEKS                       R23 R17 K115 ["Subscribers"]
      388 SETTABLEKS                       R23 R22 K115 ["Subscribers"]
      390 GETTABLEKS                       R23 R17 K116 ["Active"]
      392 SETTABLEKS                       R23 R22 K116 ["Active"]
      394 ADDK                             R23 R12 K28 [1]
      395 SETTABLEKS                       R23 R22 K8 ["LayoutOrder"]
      397 SETTABLEKS                       R18 R22 K117 ["OnEditButtonActivated"]
      399 SETTABLEKS                       R4 R22 K118 ["Height"]
      401 GETTABLEKS                       R25 R0 K0 ["props"]
      403 GETTABLEKS                       R25 R25 K123 ["DevSubsErrors"]
      405 GETTABLEKS                       R26 R17 K112 ["Key"]
      407 GETTABLE                         R24 R25 R26
      408 JUMPIFNOTEQKNIL                  R24 ; [+2]
      410 LOADB                            R23 0 +1
      411 LOADB                            R23 1
      412 SETTABLEKS                       R23 R22 K119 ["HasError"]
      414 GETTABLEKS                       R24 R17 K120 ["CreationDate"]
      416 ORK                              R23 R24 K122 [""]
      417 SETTABLEKS                       R23 R22 K120 ["CreationDate"]
      419 CALL                             R20 2 1
      420 SETTABLE                         R20 R10 R19
      421 ADDK                             R12 R12 K28 [1]
      422 FORGLOOP                         R13 2 [inext] ; [-56]
      424 GETUPVAL                         R13 1
      425 GETTABLEKS                       R13 R13 K19 ["createElement"]
      427 LOADK                            R14 K73 ["Frame"]
      428 DUPTABLE                         R15 K124 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
      429 GETIMPORT                        R16 K36 [UDim2.new]
      431 LOADN                            R17 1
      432 LOADN                            R18 0
      433 LOADN                            R19 0
      434 LOADN                            R20 0
      435 CALL                             R16 4 1
      436 SETTABLEKS                       R16 R15 K24 ["Size"]
      438 ADDK                             R16 R12 K28 [1]
      439 SETTABLEKS                       R16 R15 K8 ["LayoutOrder"]
      441 CALL                             R13 2 1
      442 SETTABLEKS                       R13 R10 K125 ["Space"]
      444 GETUPVAL                         R13 1
      445 GETTABLEKS                       R13 R13 K19 ["createElement"]
      447 GETUPVAL                         R14 7
      448 DUPTABLE                         R15 K128 [{"Layout", "LayoutOrder", "AutomaticSize", "Spacing"}]
      449 GETIMPORT                        R16 K130 [Enum.FillDirection.Vertical]
      451 SETTABLEKS                       R16 R15 K48 ["Layout"]
      453 SETTABLEKS                       R7 R15 K8 ["LayoutOrder"]
      455 GETIMPORT                        R16 K131 [Enum.AutomaticSize.Y]
      457 SETTABLEKS                       R16 R15 K126 ["AutomaticSize"]
      459 GETIMPORT                        R16 K55 [UDim.new]
      461 LOADN                            R17 0
      462 LOADN                            R18 10
      463 CALL                             R16 2 1
      464 SETTABLEKS                       R16 R15 K127 ["Spacing"]
      466 MOVE                             R16 R10
      467 CALL                             R13 3 -1
      468 RETURN                           R13 -1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Settings"]
        2 GETTABLEKS                       R2 R2 K1 ["Errors"]
        4 GETTABLEKS                       R3 R0 K0 ["Settings"]
        6 GETTABLEKS                       R3 R3 K2 ["Current"]
        8 JUMPIF                           R3 ; [+2]
        9 NEWTABLE                         R3 0 0
       11 GETTABLEKS                       R4 R3 K3 ["DeveloperSubscriptions"]
       13 JUMPIF                           R4 ; [+2]
       14 NEWTABLE                         R4 0 0
       16 MOVE                             R3 R4
       17 GETTABLEKS                       R4 R0 K0 ["Settings"]
       19 GETTABLEKS                       R4 R4 K4 ["Changed"]
       21 JUMPIF                           R4 ; [+2]
       22 NEWTABLE                         R4 0 0
       24 GETTABLEKS                       R5 R4 K3 ["DeveloperSubscriptions"]
       26 JUMPIF                           R5 ; [+2]
       27 NEWTABLE                         R5 0 0
       29 MOVE                             R4 R5
       30 DUPTABLE                         R5 K7 [{"DeveloperSubscriptions", "ModeratedDevSubs", "DevSubsErrors"}]
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K8 ["Merge"]
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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Cryo"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K5 ["Packages"]
       29 GETTABLEKS                       R4 R4 K8 ["RoactRodux"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Packages"]
       36 GETTABLEKS                       R5 R5 K9 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K10 ["Util"]
       41 GETTABLEKS                       R6 R5 K11 ["GetTextSize"]
       43 GETTABLEKS                       R7 R4 K12 ["UI"]
       45 GETTABLEKS                       R8 R7 K13 ["Button"]
       47 GETTABLEKS                       R9 R7 K14 ["Pane"]
       49 GETTABLEKS                       R10 R4 K15 ["ContextServices"]
       51 GETTABLEKS                       R11 R10 K16 ["withContext"]
       53 GETIMPORT                        R12 K4 [require]
       55 GETIMPORT                        R13 K1 [script]
       57 GETTABLEKS                       R13 R13 K2 ["Parent"]
       59 GETTABLEKS                       R13 R13 K17 ["DevSubListItem"]
       61 CALL                             R12 1 1
       62 GETIMPORT                        R13 K4 [require]
       64 GETIMPORT                        R14 K1 [script]
       66 GETTABLEKS                       R14 R14 K2 ["Parent"]
       68 GETTABLEKS                       R14 R14 K18 ["DevSubListHeaderText"]
       70 CALL                             R13 1 1
       71 GETIMPORT                        R14 K4 [require]
       73 GETTABLEKS                       R15 R0 K19 ["Src"]
       75 GETTABLEKS                       R15 R15 K10 ["Util"]
       77 GETTABLEKS                       R15 R15 K20 ["DEPRECATED_Constants"]
       79 CALL                             R14 1 1
       80 GETIMPORT                        R15 K4 [require]
       82 GETTABLEKS                       R16 R0 K19 ["Src"]
       84 GETTABLEKS                       R16 R16 K10 ["Util"]
       86 GETTABLEKS                       R16 R16 K21 ["DeepMergeTables"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K4 [require]
       91 GETTABLEKS                       R17 R0 K19 ["Src"]
       93 GETTABLEKS                       R17 R17 K22 ["Actions"]
       95 GETTABLEKS                       R17 R17 K23 ["AddChange"]
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
