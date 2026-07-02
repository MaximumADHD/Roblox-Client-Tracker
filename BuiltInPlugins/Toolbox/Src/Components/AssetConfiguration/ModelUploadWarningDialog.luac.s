PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["isDead"]
        3 JUMPIFNOT                        R1 ; [+1]
        4 RETURN                           R0 0
        5 GETTABLEKS                       R1 R0 K1 ["Enabled"]
        7 JUMPIF                           R1 ; [+12]
        8 GETUPVAL                         R1 0
        9 GETTABLEKS                       R1 R1 K2 ["props"]
       11 GETTABLEKS                       R1 R1 K3 ["OnClose"]
       13 JUMPIFNOT                        R1 ; [+6]
       14 GETUPVAL                         R1 0
       15 GETTABLEKS                       R1 R1 K2 ["props"]
       17 GETTABLEKS                       R1 R1 K3 ["OnClose"]
       19 CALL                             R1 0 0
       20 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["isDead"]
        3 JUMPIFNOT                        R3 ; [+1]
        4 RETURN                           R0 0
        5 JUMPIF                           R2 ; [+12]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K1 ["props"]
        9 GETTABLEKS                       R3 R3 K2 ["OnClose"]
       11 JUMPIFNOT                        R3 ; [+6]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K1 ["props"]
       15 GETTABLEKS                       R3 R3 K2 ["OnClose"]
       17 CALL                             R3 0 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["OnClose"]
        5 CALL                             R0 0 0
        6 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["NonBlockingDependencyIssues"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 NEWTABLE                         R1 0 0
        9 GETIMPORT                        R2 K3 [ipairs]
       11 GETUPVAL                         R3 1
       12 CALL                             R2 1 3
       13 FORGPREP_INEXT                   R2
       14 GETTABLE                         R7 R0 R6
       15 JUMPIFNOT                        R7 ; [+24]
       16 LENGTH                           R8 R7
       17 LOADN                            R9 0
       18 JUMPIFNOTLT                      R9 R8 ; [+21]
       20 GETIMPORT                        R8 K3 [ipairs]
       22 MOVE                             R9 R7
       23 CALL                             R8 1 3
       24 FORGPREP_INEXT                   R8
       25 LOADK                            R16 K4 ["rbxassetid://"]
       26 FASTCALL1                        TOSTRING R12 ; [+3]
       27 MOVE                             R18 R12
       28 GETIMPORT                        R17 K6 [tostring]
       30 CALL                             R17 1 1
       31 CONCAT                           R15 R16 R17
       32 FASTCALL2                        TABLE_INSERT R1 R15 ; [+4]
       34 MOVE                             R14 R1
       35 GETIMPORT                        R13 K9 [table.insert]
       37 CALL                             R13 2 0
       38 FORGLOOP                         R8 2 [inext] ; [-14]
       40 FORGLOOP                         R2 2 [inext] ; [-27]
       42 GETIMPORT                        R2 K11 [table.concat]
       44 MOVE                             R3 R1
       45 LOADK                            R4 K12 ["\n"]
       46 CALL                             R2 2 1
       47 GETUPVAL                         R3 2
       48 MOVE                             R5 R2
       49 NAMECALL                         R3 R3 K13 ["CopyToClipboard"]
       51 CALL                             R3 2 0
       52 GETUPVAL                         R3 0
       53 DUPTABLE                         R5 K16 [{["copied"] = True}]
       54 NAMECALL                         R3 R3 K17 ["setState"]
       56 CALL                             R3 2 0
       57 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["isDead"]
        3 DUPTABLE                         R3 K3 [{["copied"] = False}]
        4 NAMECALL                         R1 R0 K4 ["setState"]
        6 CALL                             R1 2 0
        7 NEWCLOSURE                       R1 P0
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["onEnabledChanged"]
       11 NEWCLOSURE                       R1 P1
       12 CAPTURE                          VAL R0
       13 SETTABLEKS                       R1 R0 K6 ["onAncestryChanged"]
       15 NEWCLOSURE                       R1 P2
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K7 ["onCloseButtonClicked"]
       19 NEWCLOSURE                       R1 P3
       20 CAPTURE                          VAL R0
       21 CAPTURE                          UPVAL U0
       22 CAPTURE                          UPVAL U1
       23 SETTABLEKS                       R1 R0 K8 ["onCopyButtonClicked"]
       25 RETURN                           R0 0

PROTO_5:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["isDead"]
        3 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["NonBlockingDependencyIssues"]
        8 GETTABLEKS                       R5 R2 K4 ["messageBox"]
       10 GETTABLEKS                       R5 R5 K5 ["textColor"]
       12 GETTABLEKS                       R6 R2 K4 ["messageBox"]
       14 GETTABLEKS                       R6 R6 K6 ["separatorColor"]
       16 JUMPIF                           R6 ; [+6]
       17 GETIMPORT                        R6 K9 [Color3.fromRGB]
       19 LOADN                            R7 180
       20 LOADN                            R8 180
       21 LOADN                            R9 180
       22 CALL                             R6 3 1
       23 DUPTABLE                         R7 K13 [{"BadPermissionState", "StoreIneligible", "NotFound"}]
       24 LOADK                            R10 K14 ["ModelUploadWarning"]
       25 LOADK                            R11 K15 ["ReasonBadPermissionState"]
       26 NAMECALL                         R8 R3 K16 ["getText"]
       28 CALL                             R8 3 1
       29 SETTABLEKS                       R8 R7 K10 ["BadPermissionState"]
       31 LOADK                            R10 K14 ["ModelUploadWarning"]
       32 LOADK                            R11 K17 ["ReasonStoreIneligible"]
       33 NAMECALL                         R8 R3 K16 ["getText"]
       35 CALL                             R8 3 1
       36 SETTABLEKS                       R8 R7 K11 ["StoreIneligible"]
       38 LOADK                            R10 K14 ["ModelUploadWarning"]
       39 LOADK                            R11 K18 ["ReasonNotFound"]
       40 NAMECALL                         R8 R3 K16 ["getText"]
       42 CALL                             R8 3 1
       43 SETTABLEKS                       R8 R7 K12 ["NotFound"]
       45 NEWTABLE                         R8 0 0
       47 JUMPIFNOT                        R4 ; [+38]
       48 GETIMPORT                        R9 K20 [ipairs]
       50 GETUPVAL                         R10 0
       51 CALL                             R9 1 3
       52 FORGPREP_INEXT                   R9
       53 GETTABLE                         R14 R4 R13
       54 GETTABLE                         R16 R7 R13
       55 OR                               R15 R16 R13
       56 JUMPIFNOT                        R14 ; [+27]
       57 LENGTH                           R16 R14
       58 LOADN                            R17 0
       59 JUMPIFNOTLT                      R17 R16 ; [+24]
       61 GETIMPORT                        R16 K20 [ipairs]
       63 MOVE                             R17 R14
       64 CALL                             R16 1 3
       65 FORGPREP_INEXT                   R16
       66 DUPTABLE                         R23 K23 [{"id", "reason"}]
       67 FASTCALL1                        TOSTRING R20 ; [+3]
       68 MOVE                             R25 R20
       69 GETIMPORT                        R24 K25 [tostring]
       71 CALL                             R24 1 1
       72 SETTABLEKS                       R24 R23 K21 ["id"]
       74 SETTABLEKS                       R15 R23 K22 ["reason"]
       76 FASTCALL2                        TABLE_INSERT R8 R23 ; [+4]
       78 MOVE                             R22 R8
       79 GETIMPORT                        R21 K28 [table.insert]
       81 CALL                             R21 2 0
       82 FORGLOOP                         R16 2 [inext] ; [-17]
       84 FORGLOOP                         R9 2 [inext] ; [-32]
       86 DUPTABLE                         R9 K30 [{"Layout"}]
       87 GETUPVAL                         R10 1
       88 GETTABLEKS                       R10 R10 K31 ["createElement"]
       90 LOADK                            R11 K32 ["UIListLayout"]
       91 DUPTABLE                         R12 K36 [{"SortOrder", "FillDirection", "Padding"}]
       92 GETIMPORT                        R13 K39 [Enum.SortOrder.LayoutOrder]
       94 SETTABLEKS                       R13 R12 K33 ["SortOrder"]
       96 GETIMPORT                        R13 K41 [Enum.FillDirection.Vertical]
       98 SETTABLEKS                       R13 R12 K34 ["FillDirection"]
      100 GETIMPORT                        R13 K44 [UDim.new]
      102 LOADN                            R14 0
      103 LOADN                            R15 0
      104 CALL                             R13 2 1
      105 SETTABLEKS                       R13 R12 K35 ["Padding"]
      107 CALL                             R10 2 1
      108 SETTABLEKS                       R10 R9 K29 ["Layout"]
      110 GETIMPORT                        R10 K20 [ipairs]
      112 MOVE                             R11 R8
      113 CALL                             R10 1 3
      114 FORGPREP_INEXT                   R10
      115 LOADK                            R16 K45 ["Row_"]
      116 MOVE                             R17 R13
      117 CONCAT                           R15 R16 R17
      118 GETUPVAL                         R16 1
      119 GETTABLEKS                       R16 R16 K31 ["createElement"]
      121 LOADK                            R17 K46 ["Frame"]
      122 DUPTABLE                         R18 K52 [{["BackgroundTransparency"], ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Size"]}]
      123 MODK                             R20 R13 K53 [2]
      124 JUMPIFNOTEQKN                    R20 K50 [0] ; [+3]
      126 LOADK                            R19 K54 [0.96]
      127 JUMP                             ; [+1]
      128 LOADN                            R19 1
      129 SETTABLEKS                       R19 R18 K47 ["BackgroundTransparency"]
      131 SETTABLEKS                       R5 R18 K48 ["BackgroundColor3"]
      133 SETTABLEKS                       R13 R18 K38 ["LayoutOrder"]
      135 GETIMPORT                        R19 K56 [UDim2.new]
      137 LOADN                            R20 1
      138 LOADN                            R21 0
      139 LOADN                            R22 0
      140 LOADN                            R23 22
      141 CALL                             R19 4 1
      142 SETTABLEKS                       R19 R18 K51 ["Size"]
      144 DUPTABLE                         R19 K59 [{"AssetId", "Reason"}]
      145 GETUPVAL                         R20 1
      146 GETTABLEKS                       R20 R20 K31 ["createElement"]
      148 LOADK                            R21 K60 ["TextBox"]
      149 DUPTABLE                         R22 K74 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["Font"], ["Position"], ["Size"], ["Text"], ["TextEditable"] = False, ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextTruncate"], ["ClipsDescendants"] = True}]
      150 GETUPVAL                         R23 2
      151 GETTABLEKS                       R23 R23 K75 ["FONT"]
      153 SETTABLEKS                       R23 R22 K64 ["Font"]
      155 GETIMPORT                        R23 K56 [UDim2.new]
      157 LOADN                            R24 0
      158 LOADN                            R25 0
      159 LOADN                            R26 0
      160 LOADN                            R27 0
      161 CALL                             R23 4 1
      162 SETTABLEKS                       R23 R22 K65 ["Position"]
      164 GETIMPORT                        R23 K56 [UDim2.new]
      166 LOADK                            R24 K76 [0.6]
      167 LOADN                            R25 -4
      168 LOADN                            R26 1
      169 LOADN                            R27 0
      170 CALL                             R23 4 1
      171 SETTABLEKS                       R23 R22 K51 ["Size"]
      173 LOADK                            R24 K77 ["rbxassetid://"]
      174 GETTABLEKS                       R25 R14 K21 ["id"]
      176 CONCAT                           R23 R24 R25
      177 SETTABLEKS                       R23 R22 K66 ["Text"]
      179 GETUPVAL                         R23 2
      180 GETTABLEKS                       R23 R23 K78 ["FONT_SIZE_SMALL"]
      182 SETTABLEKS                       R23 R22 K68 ["TextSize"]
      184 SETTABLEKS                       R5 R22 K69 ["TextColor3"]
      186 GETIMPORT                        R23 K80 [Enum.TextXAlignment.Left]
      188 SETTABLEKS                       R23 R22 K70 ["TextXAlignment"]
      190 GETIMPORT                        R23 K82 [Enum.TextTruncate.AtEnd]
      192 SETTABLEKS                       R23 R22 K71 ["TextTruncate"]
      194 DUPTABLE                         R23 K83 [{"Padding"}]
      195 GETUPVAL                         R24 1
      196 GETTABLEKS                       R24 R24 K31 ["createElement"]
      198 LOADK                            R25 K84 ["UIPadding"]
      199 DUPTABLE                         R26 K86 [{"PaddingLeft"}]
      200 GETIMPORT                        R27 K44 [UDim.new]
      202 LOADN                            R28 0
      203 LOADN                            R29 4
      204 CALL                             R27 2 1
      205 SETTABLEKS                       R27 R26 K85 ["PaddingLeft"]
      207 CALL                             R24 2 1
      208 SETTABLEKS                       R24 R23 K35 ["Padding"]
      210 CALL                             R20 3 1
      211 SETTABLEKS                       R20 R19 K57 ["AssetId"]
      213 GETUPVAL                         R20 1
      214 GETTABLEKS                       R20 R20 K31 ["createElement"]
      216 LOADK                            R21 K87 ["TextLabel"]
      217 DUPTABLE                         R22 K89 [{["BackgroundTransparency"] = 1, ["Font"], ["AnchorPoint"], ["Position"], ["Size"], ["Text"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextTruncate"]}]
      218 GETUPVAL                         R23 2
      219 GETTABLEKS                       R23 R23 K75 ["FONT"]
      221 SETTABLEKS                       R23 R22 K64 ["Font"]
      223 GETIMPORT                        R23 K91 [Vector2.new]
      225 LOADN                            R24 1
      226 LOADN                            R25 0
      227 CALL                             R23 2 1
      228 SETTABLEKS                       R23 R22 K88 ["AnchorPoint"]
      230 GETIMPORT                        R23 K56 [UDim2.new]
      232 LOADN                            R24 1
      233 LOADN                            R25 0
      234 LOADN                            R26 0
      235 LOADN                            R27 0
      236 CALL                             R23 4 1
      237 SETTABLEKS                       R23 R22 K65 ["Position"]
      239 GETIMPORT                        R23 K56 [UDim2.new]
      241 LOADK                            R24 K92 [0.4]
      242 LOADN                            R25 -4
      243 LOADN                            R26 1
      244 LOADN                            R27 0
      245 CALL                             R23 4 1
      246 SETTABLEKS                       R23 R22 K51 ["Size"]
      248 GETTABLEKS                       R23 R14 K22 ["reason"]
      250 SETTABLEKS                       R23 R22 K66 ["Text"]
      252 GETUPVAL                         R23 2
      253 GETTABLEKS                       R23 R23 K78 ["FONT_SIZE_SMALL"]
      255 SETTABLEKS                       R23 R22 K68 ["TextSize"]
      257 SETTABLEKS                       R5 R22 K69 ["TextColor3"]
      259 GETIMPORT                        R23 K80 [Enum.TextXAlignment.Left]
      261 SETTABLEKS                       R23 R22 K70 ["TextXAlignment"]
      263 GETIMPORT                        R23 K82 [Enum.TextTruncate.AtEnd]
      265 SETTABLEKS                       R23 R22 K71 ["TextTruncate"]
      267 DUPTABLE                         R23 K83 [{"Padding"}]
      268 GETUPVAL                         R24 1
      269 GETTABLEKS                       R24 R24 K31 ["createElement"]
      271 LOADK                            R25 K84 ["UIPadding"]
      272 DUPTABLE                         R26 K86 [{"PaddingLeft"}]
      273 GETIMPORT                        R27 K44 [UDim.new]
      275 LOADN                            R28 0
      276 LOADN                            R29 4
      277 CALL                             R27 2 1
      278 SETTABLEKS                       R27 R26 K85 ["PaddingLeft"]
      280 CALL                             R24 2 1
      281 SETTABLEKS                       R24 R23 K35 ["Padding"]
      283 CALL                             R20 3 1
      284 SETTABLEKS                       R20 R19 K58 ["Reason"]
      286 CALL                             R16 3 1
      287 SETTABLE                         R16 R9 R15
      288 FORGLOOP                         R10 2 [inext] ; [-174]
      290 GETUPVAL                         R10 1
      291 GETTABLEKS                       R10 R10 K31 ["createElement"]
      293 GETUPVAL                         R11 3
      294 NEWTABLE                         R12 16 0
      296 LOADK                            R13 K93 ["Roblox Studio"]
      297 SETTABLEKS                       R13 R12 K94 ["Title"]
      299 LOADK                            R13 K95 ["ModelUploadWarningDialog"]
      300 SETTABLEKS                       R13 R12 K96 ["Name"]
      302 GETUPVAL                         R13 4
      303 SETTABLEKS                       R13 R12 K51 ["Size"]
      305 GETUPVAL                         R13 5
      306 SETTABLEKS                       R13 R12 K97 ["MinSize"]
      308 LOADB                            R13 1
      309 SETTABLEKS                       R13 R12 K98 ["Resizable"]
      311 LOADB                            R13 1
      312 SETTABLEKS                       R13 R12 K99 ["Modal"]
      314 GETTABLEKS                       R13 R1 K100 ["Plugin"]
      316 NAMECALL                         R13 R13 K101 ["get"]
      318 CALL                             R13 1 1
      319 SETTABLEKS                       R13 R12 K102 ["plugin"]
      321 GETUPVAL                         R13 1
      322 GETTABLEKS                       R13 R13 K103 ["Change"]
      324 GETTABLEKS                       R13 R13 K104 ["Enabled"]
      326 GETTABLEKS                       R14 R0 K105 ["onEnabledChanged"]
      328 SETTABLE                         R14 R12 R13
      329 GETUPVAL                         R13 1
      330 GETTABLEKS                       R13 R13 K106 ["Event"]
      332 GETTABLEKS                       R13 R13 K107 ["AncestryChanged"]
      334 GETTABLEKS                       R14 R0 K108 ["onAncestryChanged"]
      336 SETTABLE                         R14 R12 R13
      337 DUPTABLE                         R13 K110 [{"Background"}]
      338 GETUPVAL                         R14 1
      339 GETTABLEKS                       R14 R14 K31 ["createElement"]
      341 LOADK                            R15 K46 ["Frame"]
      342 DUPTABLE                         R16 K111 [{"Size", "BackgroundColor3"}]
      343 GETIMPORT                        R17 K56 [UDim2.new]
      345 LOADN                            R18 1
      346 LOADN                            R19 0
      347 LOADN                            R20 1
      348 LOADN                            R21 0
      349 CALL                             R17 4 1
      350 SETTABLEKS                       R17 R16 K51 ["Size"]
      352 GETTABLEKS                       R17 R2 K4 ["messageBox"]
      354 GETTABLEKS                       R17 R17 K112 ["backgroundColor"]
      356 SETTABLEKS                       R17 R16 K48 ["BackgroundColor3"]
      358 DUPTABLE                         R17 K117 [{"UIPadding", "Header", "TableArea", "InfoBar", "ButtonBar"}]
      359 GETUPVAL                         R18 1
      360 GETTABLEKS                       R18 R18 K31 ["createElement"]
      362 LOADK                            R19 K84 ["UIPadding"]
      363 DUPTABLE                         R20 K121 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      364 GETIMPORT                        R21 K44 [UDim.new]
      366 LOADN                            R22 0
      367 LOADN                            R23 12
      368 CALL                             R21 2 1
      369 SETTABLEKS                       R21 R20 K118 ["PaddingTop"]
      371 GETIMPORT                        R21 K44 [UDim.new]
      373 LOADN                            R22 0
      374 LOADN                            R23 12
      375 CALL                             R21 2 1
      376 SETTABLEKS                       R21 R20 K119 ["PaddingBottom"]
      378 GETIMPORT                        R21 K44 [UDim.new]
      380 LOADN                            R22 0
      381 LOADN                            R23 12
      382 CALL                             R21 2 1
      383 SETTABLEKS                       R21 R20 K85 ["PaddingLeft"]
      385 GETIMPORT                        R21 K44 [UDim.new]
      387 LOADN                            R22 0
      388 LOADN                            R23 12
      389 CALL                             R21 2 1
      390 SETTABLEKS                       R21 R20 K120 ["PaddingRight"]
      392 CALL                             R18 2 1
      393 SETTABLEKS                       R18 R17 K84 ["UIPadding"]
      395 GETUPVAL                         R18 1
      396 GETTABLEKS                       R18 R18 K31 ["createElement"]
      398 LOADK                            R19 K46 ["Frame"]
      399 DUPTABLE                         R20 K122 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      400 GETIMPORT                        R21 K56 [UDim2.new]
      402 LOADN                            R22 0
      403 LOADN                            R23 0
      404 LOADN                            R24 0
      405 LOADN                            R25 0
      406 CALL                             R21 4 1
      407 SETTABLEKS                       R21 R20 K65 ["Position"]
      409 GETIMPORT                        R21 K56 [UDim2.new]
      411 LOADN                            R22 1
      412 LOADN                            R23 0
      413 LOADN                            R24 0
      414 LOADN                            R25 100
      415 CALL                             R21 4 1
      416 SETTABLEKS                       R21 R20 K51 ["Size"]
      418 DUPTABLE                         R21 K125 [{"Icon", "Title", "Subtitle"}]
      419 GETUPVAL                         R22 1
      420 GETTABLEKS                       R22 R22 K31 ["createElement"]
      422 LOADK                            R23 K126 ["ImageLabel"]
      423 DUPTABLE                         R24 K129 [{["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["Position"], ["Size"]}]
      424 GETUPVAL                         R25 6
      425 GETTABLEKS                       R25 R25 K130 ["WARNING_ICON"]
      427 SETTABLEKS                       R25 R24 K127 ["Image"]
      429 GETTABLEKS                       R25 R2 K131 ["publishAsset"]
      431 GETTABLEKS                       R25 R25 K132 ["warningIconColor"]
      433 SETTABLEKS                       R25 R24 K128 ["ImageColor3"]
      435 GETIMPORT                        R25 K56 [UDim2.new]
      437 LOADN                            R26 0
      438 LOADN                            R27 0
      439 LOADN                            R28 0
      440 LOADN                            R29 12
      441 CALL                             R25 4 1
      442 SETTABLEKS                       R25 R24 K65 ["Position"]
      444 GETIMPORT                        R25 K134 [UDim2.fromOffset]
      446 LOADN                            R26 20
      447 LOADN                            R27 20
      448 CALL                             R25 2 1
      449 SETTABLEKS                       R25 R24 K51 ["Size"]
      451 CALL                             R22 2 1
      452 SETTABLEKS                       R22 R21 K123 ["Icon"]
      454 GETUPVAL                         R22 1
      455 GETTABLEKS                       R22 R22 K31 ["createElement"]
      457 LOADK                            R23 K60 ["TextBox"]
      458 DUPTABLE                         R24 K136 [{["BackgroundTransparency"] = 1, ["BorderSizePixel"] = 0, ["ClearTextOnFocus"] = False, ["Font"], ["Position"], ["Size"], ["Text"], ["TextEditable"] = False, ["TextWrapped"] = True, ["TextXAlignment"], ["TextSize"], ["TextColor3"]}]
      459 GETUPVAL                         R25 2
      460 GETTABLEKS                       R25 R25 K137 ["FONT_BOLD"]
      462 SETTABLEKS                       R25 R24 K64 ["Font"]
      464 GETIMPORT                        R25 K56 [UDim2.new]
      466 LOADN                            R26 0
      467 LOADN                            R27 28
      468 LOADN                            R28 0
      469 LOADN                            R29 0
      470 CALL                             R25 4 1
      471 SETTABLEKS                       R25 R24 K65 ["Position"]
      473 GETIMPORT                        R25 K56 [UDim2.new]
      475 LOADN                            R26 1
      476 LOADN                            R27 -28
      477 LOADN                            R28 0
      478 LOADN                            R29 44
      479 CALL                             R25 4 1
      480 SETTABLEKS                       R25 R24 K51 ["Size"]
      482 LOADK                            R27 K14 ["ModelUploadWarning"]
      483 LOADK                            R28 K94 ["Title"]
      484 NAMECALL                         R25 R3 K16 ["getText"]
      486 CALL                             R25 3 1
      487 SETTABLEKS                       R25 R24 K66 ["Text"]
      489 GETIMPORT                        R25 K80 [Enum.TextXAlignment.Left]
      491 SETTABLEKS                       R25 R24 K70 ["TextXAlignment"]
      493 GETUPVAL                         R25 2
      494 GETTABLEKS                       R25 R25 K138 ["FONT_SIZE_MEDIUM"]
      496 SETTABLEKS                       R25 R24 K68 ["TextSize"]
      498 SETTABLEKS                       R5 R24 K69 ["TextColor3"]
      500 CALL                             R22 2 1
      501 SETTABLEKS                       R22 R21 K94 ["Title"]
      503 GETUPVAL                         R22 1
      504 GETTABLEKS                       R22 R22 K31 ["createElement"]
      506 LOADK                            R23 K87 ["TextLabel"]
      507 DUPTABLE                         R24 K139 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextWrapped"] = True}]
      508 GETUPVAL                         R25 2
      509 GETTABLEKS                       R25 R25 K75 ["FONT"]
      511 SETTABLEKS                       R25 R24 K64 ["Font"]
      513 GETIMPORT                        R25 K56 [UDim2.new]
      515 LOADN                            R26 0
      516 LOADN                            R27 28
      517 LOADN                            R28 0
      518 LOADN                            R29 46
      519 CALL                             R25 4 1
      520 SETTABLEKS                       R25 R24 K65 ["Position"]
      522 GETIMPORT                        R25 K56 [UDim2.new]
      524 LOADN                            R26 1
      525 LOADN                            R27 -28
      526 LOADN                            R28 0
      527 LOADN                            R29 54
      528 CALL                             R25 4 1
      529 SETTABLEKS                       R25 R24 K51 ["Size"]
      531 LOADK                            R27 K14 ["ModelUploadWarning"]
      532 LOADK                            R28 K124 ["Subtitle"]
      533 NAMECALL                         R25 R3 K16 ["getText"]
      535 CALL                             R25 3 1
      536 SETTABLEKS                       R25 R24 K66 ["Text"]
      538 GETUPVAL                         R25 2
      539 GETTABLEKS                       R25 R25 K78 ["FONT_SIZE_SMALL"]
      541 SETTABLEKS                       R25 R24 K68 ["TextSize"]
      543 SETTABLEKS                       R5 R24 K69 ["TextColor3"]
      545 GETIMPORT                        R25 K80 [Enum.TextXAlignment.Left]
      547 SETTABLEKS                       R25 R24 K70 ["TextXAlignment"]
      549 CALL                             R22 2 1
      550 SETTABLEKS                       R22 R21 K124 ["Subtitle"]
      552 CALL                             R18 3 1
      553 SETTABLEKS                       R18 R17 K113 ["Header"]
      555 GETUPVAL                         R18 1
      556 GETTABLEKS                       R18 R18 K31 ["createElement"]
      558 LOADK                            R19 K46 ["Frame"]
      559 DUPTABLE                         R20 K122 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      560 GETIMPORT                        R21 K56 [UDim2.new]
      562 LOADN                            R22 0
      563 LOADN                            R23 0
      564 LOADN                            R24 0
      565 LOADN                            R25 110
      566 CALL                             R21 4 1
      567 SETTABLEKS                       R21 R20 K65 ["Position"]
      569 GETIMPORT                        R21 K56 [UDim2.new]
      571 LOADN                            R22 1
      572 LOADN                            R23 0
      573 LOADN                            R24 1
      574 LOADN                            R25 -174
      575 CALL                             R21 4 1
      576 SETTABLEKS                       R21 R20 K51 ["Size"]
      578 DUPTABLE                         R21 K142 [{"TableHeader", "TableRows"}]
      579 GETUPVAL                         R22 1
      580 GETTABLEKS                       R22 R22 K31 ["createElement"]
      582 LOADK                            R23 K46 ["Frame"]
      583 DUPTABLE                         R24 K122 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      584 GETIMPORT                        R25 K56 [UDim2.new]
      586 LOADN                            R26 0
      587 LOADN                            R27 0
      588 LOADN                            R28 0
      589 LOADN                            R29 0
      590 CALL                             R25 4 1
      591 SETTABLEKS                       R25 R24 K65 ["Position"]
      593 GETIMPORT                        R25 K56 [UDim2.new]
      595 LOADN                            R26 1
      596 LOADN                            R27 0
      597 LOADN                            R28 0
      598 LOADN                            R29 24
      599 CALL                             R25 4 1
      600 SETTABLEKS                       R25 R24 K51 ["Size"]
      602 DUPTABLE                         R25 K147 [{"AssetIdLabel", "ColumnDivider", "ReasonLabel", "BottomSeparator"}]
      603 GETUPVAL                         R26 1
      604 GETTABLEKS                       R26 R26 K31 ["createElement"]
      606 LOADK                            R27 K87 ["TextLabel"]
      607 DUPTABLE                         R28 K148 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"], ["TextSize"], ["TextColor3"], ["TextXAlignment"]}]
      608 GETUPVAL                         R29 2
      609 GETTABLEKS                       R29 R29 K137 ["FONT_BOLD"]
      611 SETTABLEKS                       R29 R28 K64 ["Font"]
      613 GETIMPORT                        R29 K56 [UDim2.new]
      615 LOADN                            R30 0
      616 LOADN                            R31 4
      617 LOADN                            R32 0
      618 LOADN                            R33 0
      619 CALL                             R29 4 1
      620 SETTABLEKS                       R29 R28 K65 ["Position"]
      622 GETIMPORT                        R29 K56 [UDim2.new]
      624 LOADK                            R30 K76 [0.6]
      625 LOADN                            R31 -8
      626 LOADN                            R32 1
      627 LOADN                            R33 0
      628 CALL                             R29 4 1
      629 SETTABLEKS                       R29 R28 K51 ["Size"]
      631 LOADK                            R31 K14 ["ModelUploadWarning"]
      632 LOADK                            R32 K149 ["ColumnAssetId"]
      633 NAMECALL                         R29 R3 K16 ["getText"]
      635 CALL                             R29 3 1
      636 SETTABLEKS                       R29 R28 K66 ["Text"]
      638 GETUPVAL                         R29 2
      639 GETTABLEKS                       R29 R29 K78 ["FONT_SIZE_SMALL"]
      641 SETTABLEKS                       R29 R28 K68 ["TextSize"]
      643 SETTABLEKS                       R5 R28 K69 ["TextColor3"]
      645 GETIMPORT                        R29 K80 [Enum.TextXAlignment.Left]
      647 SETTABLEKS                       R29 R28 K70 ["TextXAlignment"]
      649 CALL                             R26 2 1
      650 SETTABLEKS                       R26 R25 K143 ["AssetIdLabel"]
      652 GETUPVAL                         R26 1
      653 GETTABLEKS                       R26 R26 K31 ["createElement"]
      655 LOADK                            R27 K46 ["Frame"]
      656 DUPTABLE                         R28 K150 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
      657 SETTABLEKS                       R6 R28 K48 ["BackgroundColor3"]
      659 GETIMPORT                        R29 K56 [UDim2.new]
      661 LOADK                            R30 K76 [0.6]
      662 LOADN                            R31 0
      663 LOADN                            R32 0
      664 LOADN                            R33 2
      665 CALL                             R29 4 1
      666 SETTABLEKS                       R29 R28 K65 ["Position"]
      668 GETIMPORT                        R29 K56 [UDim2.new]
      670 LOADN                            R30 0
      671 LOADN                            R31 1
      672 LOADN                            R32 1
      673 LOADN                            R33 -4
      674 CALL                             R29 4 1
      675 SETTABLEKS                       R29 R28 K51 ["Size"]
      677 CALL                             R26 2 1
      678 SETTABLEKS                       R26 R25 K144 ["ColumnDivider"]
      680 GETUPVAL                         R26 1
      681 GETTABLEKS                       R26 R26 K31 ["createElement"]
      683 LOADK                            R27 K87 ["TextLabel"]
      684 DUPTABLE                         R28 K151 [{["BackgroundTransparency"] = 1, ["Font"], ["AnchorPoint"], ["Position"], ["Size"], ["Text"], ["TextSize"], ["TextColor3"], ["TextXAlignment"]}]
      685 GETUPVAL                         R29 2
      686 GETTABLEKS                       R29 R29 K137 ["FONT_BOLD"]
      688 SETTABLEKS                       R29 R28 K64 ["Font"]
      690 GETIMPORT                        R29 K91 [Vector2.new]
      692 LOADN                            R30 1
      693 LOADN                            R31 0
      694 CALL                             R29 2 1
      695 SETTABLEKS                       R29 R28 K88 ["AnchorPoint"]
      697 GETIMPORT                        R29 K56 [UDim2.new]
      699 LOADN                            R30 1
      700 LOADN                            R31 -4
      701 LOADN                            R32 0
      702 LOADN                            R33 0
      703 CALL                             R29 4 1
      704 SETTABLEKS                       R29 R28 K65 ["Position"]
      706 GETIMPORT                        R29 K56 [UDim2.new]
      708 LOADK                            R30 K92 [0.4]
      709 LOADN                            R31 -8
      710 LOADN                            R32 1
      711 LOADN                            R33 0
      712 CALL                             R29 4 1
      713 SETTABLEKS                       R29 R28 K51 ["Size"]
      715 LOADK                            R31 K14 ["ModelUploadWarning"]
      716 LOADK                            R32 K152 ["ColumnReason"]
      717 NAMECALL                         R29 R3 K16 ["getText"]
      719 CALL                             R29 3 1
      720 SETTABLEKS                       R29 R28 K66 ["Text"]
      722 GETUPVAL                         R29 2
      723 GETTABLEKS                       R29 R29 K78 ["FONT_SIZE_SMALL"]
      725 SETTABLEKS                       R29 R28 K68 ["TextSize"]
      727 SETTABLEKS                       R5 R28 K69 ["TextColor3"]
      729 GETIMPORT                        R29 K80 [Enum.TextXAlignment.Left]
      731 SETTABLEKS                       R29 R28 K70 ["TextXAlignment"]
      733 CALL                             R26 2 1
      734 SETTABLEKS                       R26 R25 K145 ["ReasonLabel"]
      736 GETUPVAL                         R26 1
      737 GETTABLEKS                       R26 R26 K31 ["createElement"]
      739 LOADK                            R27 K46 ["Frame"]
      740 DUPTABLE                         R28 K153 [{["AnchorPoint"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["Position"], ["Size"]}]
      741 GETIMPORT                        R29 K91 [Vector2.new]
      743 LOADN                            R30 0
      744 LOADN                            R31 1
      745 CALL                             R29 2 1
      746 SETTABLEKS                       R29 R28 K88 ["AnchorPoint"]
      748 SETTABLEKS                       R6 R28 K48 ["BackgroundColor3"]
      750 GETIMPORT                        R29 K56 [UDim2.new]
      752 LOADN                            R30 0
      753 LOADN                            R31 0
      754 LOADN                            R32 1
      755 LOADN                            R33 0
      756 CALL                             R29 4 1
      757 SETTABLEKS                       R29 R28 K65 ["Position"]
      759 GETIMPORT                        R29 K56 [UDim2.new]
      761 LOADN                            R30 1
      762 LOADN                            R31 0
      763 LOADN                            R32 0
      764 LOADN                            R33 1
      765 CALL                             R29 4 1
      766 SETTABLEKS                       R29 R28 K51 ["Size"]
      768 CALL                             R26 2 1
      769 SETTABLEKS                       R26 R25 K146 ["BottomSeparator"]
      771 CALL                             R22 3 1
      772 SETTABLEKS                       R22 R21 K140 ["TableHeader"]
      774 GETUPVAL                         R22 1
      775 GETTABLEKS                       R22 R22 K31 ["createElement"]
      777 GETUPVAL                         R23 7
      778 DUPTABLE                         R24 K156 [{"Position", "Size", "AutomaticCanvasSize", "CanvasSize"}]
      779 GETIMPORT                        R25 K56 [UDim2.new]
      781 LOADN                            R26 0
      782 LOADN                            R27 0
      783 LOADN                            R28 0
      784 LOADN                            R29 25
      785 CALL                             R25 4 1
      786 SETTABLEKS                       R25 R24 K65 ["Position"]
      788 GETIMPORT                        R25 K56 [UDim2.new]
      790 LOADN                            R26 1
      791 LOADN                            R27 0
      792 LOADN                            R28 1
      793 LOADN                            R29 -25
      794 CALL                             R25 4 1
      795 SETTABLEKS                       R25 R24 K51 ["Size"]
      797 GETIMPORT                        R25 K159 [Enum.AutomaticSize.Y]
      799 SETTABLEKS                       R25 R24 K154 ["AutomaticCanvasSize"]
      801 GETIMPORT                        R25 K56 [UDim2.new]
      803 LOADN                            R26 1
      804 LOADN                            R27 0
      805 LOADN                            R28 0
      806 LOADN                            R29 0
      807 CALL                             R25 4 1
      808 SETTABLEKS                       R25 R24 K155 ["CanvasSize"]
      810 MOVE                             R25 R9
      811 CALL                             R22 3 1
      812 SETTABLEKS                       R22 R21 K141 ["TableRows"]
      814 CALL                             R18 3 1
      815 SETTABLEKS                       R18 R17 K114 ["TableArea"]
      817 GETUPVAL                         R18 1
      818 GETTABLEKS                       R18 R18 K31 ["createElement"]
      820 LOADK                            R19 K46 ["Frame"]
      821 DUPTABLE                         R20 K122 [{["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      822 GETIMPORT                        R21 K56 [UDim2.new]
      824 LOADN                            R22 0
      825 LOADN                            R23 0
      826 LOADN                            R24 1
      827 LOADN                            R25 -58
      828 CALL                             R21 4 1
      829 SETTABLEKS                       R21 R20 K65 ["Position"]
      831 GETIMPORT                        R21 K56 [UDim2.new]
      833 LOADN                            R22 1
      834 LOADN                            R23 0
      835 LOADN                            R24 0
      836 LOADN                            R25 18
      837 CALL                             R21 4 1
      838 SETTABLEKS                       R21 R20 K51 ["Size"]
      840 DUPTABLE                         R21 K161 [{"Label"}]
      841 GETUPVAL                         R22 1
      842 GETTABLEKS                       R22 R22 K31 ["createElement"]
      844 LOADK                            R23 K87 ["TextLabel"]
      845 DUPTABLE                         R24 K162 [{["BackgroundTransparency"] = 1, ["Font"], ["Size"], ["Text"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["TextTruncate"]}]
      846 GETUPVAL                         R25 2
      847 GETTABLEKS                       R25 R25 K75 ["FONT"]
      849 SETTABLEKS                       R25 R24 K64 ["Font"]
      851 GETIMPORT                        R25 K56 [UDim2.new]
      853 LOADN                            R26 1
      854 LOADN                            R27 0
      855 LOADN                            R28 1
      856 LOADN                            R29 0
      857 CALL                             R25 4 1
      858 SETTABLEKS                       R25 R24 K51 ["Size"]
      860 LOADK                            R27 K14 ["ModelUploadWarning"]
      861 LOADK                            R28 K163 ["AiAssistantTip"]
      862 NAMECALL                         R25 R3 K16 ["getText"]
      864 CALL                             R25 3 1
      865 SETTABLEKS                       R25 R24 K66 ["Text"]
      867 GETUPVAL                         R25 2
      868 GETTABLEKS                       R25 R25 K78 ["FONT_SIZE_SMALL"]
      870 SETTABLEKS                       R25 R24 K68 ["TextSize"]
      872 SETTABLEKS                       R5 R24 K69 ["TextColor3"]
      874 GETIMPORT                        R25 K80 [Enum.TextXAlignment.Left]
      876 SETTABLEKS                       R25 R24 K70 ["TextXAlignment"]
      878 GETIMPORT                        R25 K82 [Enum.TextTruncate.AtEnd]
      880 SETTABLEKS                       R25 R24 K71 ["TextTruncate"]
      882 CALL                             R22 2 1
      883 SETTABLEKS                       R22 R21 K160 ["Label"]
      885 CALL                             R18 3 1
      886 SETTABLEKS                       R18 R17 K115 ["InfoBar"]
      888 GETUPVAL                         R18 1
      889 GETTABLEKS                       R18 R18 K31 ["createElement"]
      891 LOADK                            R19 K46 ["Frame"]
      892 DUPTABLE                         R20 K164 [{["AnchorPoint"], ["BackgroundTransparency"] = 1, ["Position"], ["Size"]}]
      893 GETIMPORT                        R21 K91 [Vector2.new]
      895 LOADN                            R22 0
      896 LOADN                            R23 1
      897 CALL                             R21 2 1
      898 SETTABLEKS                       R21 R20 K88 ["AnchorPoint"]
      900 GETIMPORT                        R21 K56 [UDim2.new]
      902 LOADN                            R22 0
      903 LOADN                            R23 0
      904 LOADN                            R24 1
      905 LOADN                            R25 0
      906 CALL                             R21 4 1
      907 SETTABLEKS                       R21 R20 K65 ["Position"]
      909 GETIMPORT                        R21 K56 [UDim2.new]
      911 LOADN                            R22 1
      912 LOADN                            R23 0
      913 LOADN                            R24 0
      914 LOADN                            R25 32
      915 CALL                             R21 4 1
      916 SETTABLEKS                       R21 R20 K51 ["Size"]
      918 DUPTABLE                         R21 K169 [{"CopiedLabel", "ButtonLayout", "CopyButton", "CloseButton"}]
      919 GETUPVAL                         R22 1
      920 GETTABLEKS                       R22 R22 K31 ["createElement"]
      922 LOADK                            R23 K87 ["TextLabel"]
      923 DUPTABLE                         R24 K171 [{["BackgroundTransparency"] = 1, ["Font"], ["Position"], ["Size"], ["Text"], ["TextSize"], ["TextColor3"], ["TextXAlignment"], ["Visible"]}]
      924 GETUPVAL                         R25 2
      925 GETTABLEKS                       R25 R25 K75 ["FONT"]
      927 SETTABLEKS                       R25 R24 K64 ["Font"]
      929 GETIMPORT                        R25 K56 [UDim2.new]
      931 LOADN                            R26 0
      932 LOADN                            R27 0
      933 LOADN                            R28 0
      934 LOADN                            R29 0
      935 CALL                             R25 4 1
      936 SETTABLEKS                       R25 R24 K65 ["Position"]
      938 GETIMPORT                        R25 K56 [UDim2.new]
      940 LOADN                            R26 0
      941 LOADN                            R27 70
      942 LOADN                            R28 1
      943 LOADN                            R29 0
      944 CALL                             R25 4 1
      945 SETTABLEKS                       R25 R24 K51 ["Size"]
      947 LOADK                            R27 K14 ["ModelUploadWarning"]
      948 LOADK                            R28 K172 ["Copied"]
      949 NAMECALL                         R25 R3 K16 ["getText"]
      951 CALL                             R25 3 1
      952 SETTABLEKS                       R25 R24 K66 ["Text"]
      954 GETUPVAL                         R25 2
      955 GETTABLEKS                       R25 R25 K78 ["FONT_SIZE_SMALL"]
      957 SETTABLEKS                       R25 R24 K68 ["TextSize"]
      959 SETTABLEKS                       R5 R24 K69 ["TextColor3"]
      961 GETIMPORT                        R25 K80 [Enum.TextXAlignment.Left]
      963 SETTABLEKS                       R25 R24 K70 ["TextXAlignment"]
      965 GETTABLEKS                       R25 R0 K173 ["state"]
      967 GETTABLEKS                       R25 R25 K174 ["copied"]
      969 SETTABLEKS                       R25 R24 K170 ["Visible"]
      971 CALL                             R22 2 1
      972 SETTABLEKS                       R22 R21 K165 ["CopiedLabel"]
      974 GETUPVAL                         R22 1
      975 GETTABLEKS                       R22 R22 K31 ["createElement"]
      977 LOADK                            R23 K32 ["UIListLayout"]
      978 DUPTABLE                         R24 K177 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment", "Padding"}]
      979 GETIMPORT                        R25 K179 [Enum.FillDirection.Horizontal]
      981 SETTABLEKS                       R25 R24 K34 ["FillDirection"]
      983 GETIMPORT                        R25 K181 [Enum.HorizontalAlignment.Right]
      985 SETTABLEKS                       R25 R24 K175 ["HorizontalAlignment"]
      987 GETIMPORT                        R25 K39 [Enum.SortOrder.LayoutOrder]
      989 SETTABLEKS                       R25 R24 K33 ["SortOrder"]
      991 GETIMPORT                        R25 K183 [Enum.VerticalAlignment.Center]
      993 SETTABLEKS                       R25 R24 K176 ["VerticalAlignment"]
      995 GETIMPORT                        R25 K44 [UDim.new]
      997 LOADN                            R26 0
      998 LOADN                            R27 8
      999 CALL                             R25 2 1
     1000 SETTABLEKS                       R25 R24 K35 ["Padding"]
     1002 CALL                             R22 2 1
     1003 SETTABLEKS                       R22 R21 K166 ["ButtonLayout"]
     1005 GETUPVAL                         R22 1
     1006 GETTABLEKS                       R22 R22 K31 ["createElement"]
     1008 LOADK                            R23 K184 ["TextButton"]
     1009 NEWTABLE                         R24 16 0
     1011 LOADB                            R25 1
     1012 SETTABLEKS                       R25 R24 K185 ["AutoButtonColor"]
     1014 GETTABLEKS                       R25 R2 K4 ["messageBox"]
     1016 GETTABLEKS                       R25 R25 K112 ["backgroundColor"]
     1018 SETTABLEKS                       R25 R24 K48 ["BackgroundColor3"]
     1020 SETTABLEKS                       R6 R24 K186 ["BorderColor3"]
     1022 LOADN                            R25 1
     1023 SETTABLEKS                       R25 R24 K49 ["BorderSizePixel"]
     1025 GETUPVAL                         R25 2
     1026 GETTABLEKS                       R25 R25 K75 ["FONT"]
     1028 SETTABLEKS                       R25 R24 K64 ["Font"]
     1030 LOADN                            R25 1
     1031 SETTABLEKS                       R25 R24 K38 ["LayoutOrder"]
     1033 GETIMPORT                        R25 K56 [UDim2.new]
     1035 LOADN                            R26 0
     1036 LOADN                            R27 130
     1037 LOADN                            R28 1
     1038 LOADN                            R29 0
     1039 CALL                             R25 4 1
     1040 SETTABLEKS                       R25 R24 K51 ["Size"]
     1042 LOADK                            R27 K14 ["ModelUploadWarning"]
     1043 LOADK                            R28 K187 ["CopyToClipboard"]
     1044 NAMECALL                         R25 R3 K16 ["getText"]
     1046 CALL                             R25 3 1
     1047 SETTABLEKS                       R25 R24 K66 ["Text"]
     1049 GETUPVAL                         R25 2
     1050 GETTABLEKS                       R25 R25 K78 ["FONT_SIZE_SMALL"]
     1052 SETTABLEKS                       R25 R24 K68 ["TextSize"]
     1054 SETTABLEKS                       R5 R24 K69 ["TextColor3"]
     1056 GETUPVAL                         R25 1
     1057 GETTABLEKS                       R25 R25 K106 ["Event"]
     1059 GETTABLEKS                       R25 R25 K188 ["Activated"]
     1061 GETTABLEKS                       R26 R0 K189 ["onCopyButtonClicked"]
     1063 SETTABLE                         R26 R24 R25
     1064 CALL                             R22 2 1
     1065 SETTABLEKS                       R22 R21 K167 ["CopyButton"]
     1067 GETUPVAL                         R22 1
     1068 GETTABLEKS                       R22 R22 K31 ["createElement"]
     1070 GETUPVAL                         R23 8
     1071 DUPTABLE                         R24 K194 [{["index"] = 2, ["Text"], ["action"] = "close", ["onButtonClicked"]}]
     1072 LOADK                            R27 K195 ["AssetUploadResult"]
     1073 LOADK                            R28 K196 ["Close"]
     1074 NAMECALL                         R25 R3 K16 ["getText"]
     1076 CALL                             R25 3 1
     1077 SETTABLEKS                       R25 R24 K66 ["Text"]
     1079 GETTABLEKS                       R25 R0 K197 ["onCloseButtonClicked"]
     1081 SETTABLEKS                       R25 R24 K193 ["onButtonClicked"]
     1083 CALL                             R22 2 1
     1084 SETTABLEKS                       R22 R21 K168 ["CloseButton"]
     1086 CALL                             R18 3 1
     1087 SETTABLEKS                       R18 R17 K116 ["ButtonBar"]
     1089 CALL                             R14 3 1
     1090 SETTABLEKS                       R14 R13 K109 ["Background"]
     1092 CALL                             R10 3 -1
     1093 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Roact"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R2 K9 ["ContextServices"]
       21 GETTABLEKS                       R5 R4 K10 ["withContext"]
       23 GETIMPORT                        R6 K6 [require]
       25 GETTABLEKS                       R7 R0 K11 ["Src"]
       27 GETTABLEKS                       R7 R7 K12 ["Util"]
       29 GETTABLEKS                       R7 R7 K13 ["Constants"]
       31 CALL                             R6 1 1
       32 GETIMPORT                        R7 K6 [require]
       34 GETTABLEKS                       R8 R0 K11 ["Src"]
       36 GETTABLEKS                       R8 R8 K12 ["Util"]
       38 GETTABLEKS                       R8 R8 K14 ["Images"]
       40 CALL                             R7 1 1
       41 GETIMPORT                        R8 K6 [require]
       43 GETTABLEKS                       R9 R0 K11 ["Src"]
       45 GETTABLEKS                       R9 R9 K15 ["Components"]
       47 GETTABLEKS                       R9 R9 K16 ["PluginWidget"]
       49 GETTABLEKS                       R9 R9 K17 ["Dialog"]
       51 CALL                             R8 1 1
       52 GETIMPORT                        R9 K6 [require]
       54 GETTABLEKS                       R10 R0 K11 ["Src"]
       56 GETTABLEKS                       R10 R10 K15 ["Components"]
       58 GETTABLEKS                       R10 R10 K18 ["MessageBox"]
       60 GETTABLEKS                       R10 R10 K19 ["MessageBoxButton"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K6 [require]
       65 GETTABLEKS                       R11 R0 K11 ["Src"]
       67 GETTABLEKS                       R11 R11 K15 ["Components"]
       69 GETTABLEKS                       R11 R11 K20 ["StyledScrollingFrame"]
       71 CALL                             R10 1 1
       72 GETIMPORT                        R11 K22 [game]
       74 LOADK                            R13 K23 ["StudioService"]
       75 NAMECALL                         R11 R11 K24 ["GetService"]
       77 CALL                             R11 2 1
       78 GETIMPORT                        R12 K27 [Vector2.new]
       80 LOADN                            R13 560
       81 LOADN                            R14 460
       82 CALL                             R12 2 1
       83 GETIMPORT                        R13 K27 [Vector2.new]
       85 LOADN                            R14 400
       86 LOADN                            R15 300
       87 CALL                             R13 2 1
       88 NEWTABLE                         R14 0 3
       90 LOADK                            R15 K28 ["BadPermissionState"]
       91 LOADK                            R16 K29 ["StoreIneligible"]
       92 LOADK                            R17 K30 ["NotFound"]
       93 SETLIST                          R14 R15 3 [1]
       95 GETTABLEKS                       R15 R3 K31 ["PureComponent"]
       97 LOADK                            R17 K32 ["ModelUploadWarningDialog"]
       98 NAMECALL                         R15 R15 K33 ["extend"]
      100 CALL                             R15 2 1
      101 DUPCLOSURE                       R16 K34 [PROTO_4]
      102 CAPTURE                          VAL R14
      103 CAPTURE                          VAL R11
      104 SETTABLEKS                       R16 R15 K35 ["init"]
      106 DUPCLOSURE                       R16 K36 [PROTO_5]
      107 SETTABLEKS                       R16 R15 K37 ["willUnmount"]
      109 DUPCLOSURE                       R16 K38 [PROTO_6]
      110 CAPTURE                          VAL R14
      111 CAPTURE                          VAL R3
      112 CAPTURE                          VAL R6
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R12
      115 CAPTURE                          VAL R13
      116 CAPTURE                          VAL R7
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R9
      119 SETTABLEKS                       R16 R15 K39 ["render"]
      121 MOVE                             R16 R5
      122 DUPTABLE                         R17 K43 [{"Plugin", "Stylizer", "Localization"}]
      123 GETTABLEKS                       R18 R4 K40 ["Plugin"]
      125 SETTABLEKS                       R18 R17 K40 ["Plugin"]
      127 GETTABLEKS                       R18 R4 K41 ["Stylizer"]
      129 SETTABLEKS                       R18 R17 K41 ["Stylizer"]
      131 GETTABLEKS                       R18 R4 K42 ["Localization"]
      133 SETTABLEKS                       R18 R17 K42 ["Localization"]
      135 CALL                             R16 1 1
      136 MOVE                             R17 R15
      137 CALL                             R16 1 1
      138 MOVE                             R15 R16
      139 RETURN                           R15 1
