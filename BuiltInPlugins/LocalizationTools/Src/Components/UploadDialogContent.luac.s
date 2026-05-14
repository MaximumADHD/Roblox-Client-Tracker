PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K5 [{"AutomaticSize", "Text", "TextColor", "LayoutOrder"}]
        5 GETIMPORT                        R4 K8 [Enum.AutomaticSize.XY]
        7 SETTABLEKS                       R4 R3 K1 ["AutomaticSize"]
        9 GETTABLEKS                       R4 R0 K2 ["Text"]
       11 SETTABLEKS                       R4 R3 K2 ["Text"]
       13 GETTABLEKS                       R4 R0 K9 ["Color"]
       15 SETTABLEKS                       R4 R3 K3 ["TextColor"]
       17 GETTABLEKS                       R4 R0 K4 ["LayoutOrder"]
       19 SETTABLEKS                       R4 R3 K4 ["LayoutOrder"]
       21 CALL                             R1 2 -1
       22 RETURN                           R1 -1

PROTO_1:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["Content"]
        3 JUMPIFEQKS                       R2 K1 [""] ; [+12]
        5 LOADB                            R1 1
        6 GETTABLEKS                       R2 R0 K0 ["Content"]
        8 JUMPIFEQKNIL                     R2 ; [+7]
       10 GETTABLEKS                       R2 R0 K0 ["Content"]
       12 JUMPIFEQKN                       R2 K2 [0] ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 JUMPIFNOT                        R1 ; [+3]
       17 GETTABLEKS                       R2 R0 K3 ["ColorB"]
       19 JUMPIF                           R2 ; [+2]
       20 GETTABLEKS                       R2 R0 K4 ["ColorA"]
       22 GETIMPORT                        R3 K7 [string.format]
       24 LOADK                            R4 K8 ["%s %s"]
       25 GETTABLEKS                       R5 R0 K9 ["PreText"]
       27 JUMPIFNOT                        R1 ; [+2]
       28 LOADK                            R6 K10 ["none"]
       29 JUMP                             ; [+6]
       30 GETTABLEKS                       R7 R0 K0 ["Content"]
       32 FASTCALL1                        TOSTRING R7 ; [+2]
       33 GETIMPORT                        R6 K12 [tostring]
       35 CALL                             R6 1 1
       36 CALL                             R3 3 1
       37 GETUPVAL                         R4 0
       38 GETTABLEKS                       R4 R4 K13 ["createElement"]
       40 GETUPVAL                         R5 1
       41 DUPTABLE                         R6 K17 [{"Text", "Color", "LayoutOrder"}]
       42 SETTABLEKS                       R3 R6 K14 ["Text"]
       44 SETTABLEKS                       R2 R6 K15 ["Color"]
       46 GETTABLEKS                       R7 R0 K16 ["LayoutOrder"]
       48 SETTABLEKS                       R7 R6 K16 ["LayoutOrder"]
       50 CALL                             R4 2 -1
       51 RETURN                           R4 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["Content"]
        2 JUMPIFEQKNIL                     R1 ; [+30]
        4 GETTABLEKS                       R1 R0 K0 ["Content"]
        6 JUMPIFEQKS                       R1 K1 [""] ; [+26]
        8 GETIMPORT                        R1 K4 [string.format]
       10 LOADK                            R2 K5 ["%s %s"]
       11 GETTABLEKS                       R3 R0 K6 ["PreText"]
       13 GETTABLEKS                       R4 R0 K0 ["Content"]
       15 CALL                             R1 3 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K7 ["createElement"]
       19 GETUPVAL                         R3 1
       20 DUPTABLE                         R4 K11 [{"Text", "Color", "LayoutOrder"}]
       21 SETTABLEKS                       R1 R4 K8 ["Text"]
       23 GETTABLEKS                       R5 R0 K9 ["Color"]
       25 SETTABLEKS                       R5 R4 K9 ["Color"]
       27 GETTABLEKS                       R5 R0 K10 ["LayoutOrder"]
       29 SETTABLEKS                       R5 R4 K10 ["LayoutOrder"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1
       33 LOADNIL                          R1
       34 RETURN                           R1 1

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["Count"]
        2 LOADN                            R3 0
        3 JUMPIFLT                         R3 R2 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R0 K1 ["EnabledColor"]
       10 JUMPIF                           R2 ; [+2]
       11 GETTABLEKS                       R2 R0 K2 ["DisabledColor"]
       13 GETIMPORT                        R3 K5 [string.format]
       15 LOADK                            R4 K6 ["%s %d"]
       16 GETTABLEKS                       R5 R0 K7 ["PreText"]
       18 GETTABLEKS                       R6 R0 K0 ["Count"]
       20 CALL                             R3 3 1
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K8 ["createElement"]
       24 GETUPVAL                         R5 1
       25 DUPTABLE                         R6 K12 [{"Text", "Color", "LayoutOrder"}]
       26 SETTABLEKS                       R3 R6 K9 ["Text"]
       28 SETTABLEKS                       R2 R6 K10 ["Color"]
       30 GETTABLEKS                       R7 R0 K11 ["LayoutOrder"]
       32 SETTABLEKS                       R7 R6 K11 ["LayoutOrder"]
       34 CALL                             R4 2 -1
       35 RETURN                           R4 -1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["CancelCallback"]
        8 GETTABLEKS                       R5 R1 K4 ["OkCallback"]
       10 GETTABLEKS                       R6 R1 K5 ["PatchInfo"]
       12 GETTABLEKS                       R6 R6 K6 ["totalRows"]
       14 GETTABLEKS                       R7 R1 K5 ["PatchInfo"]
       16 GETTABLEKS                       R7 R7 K7 ["totalTranslations"]
       18 GETTABLEKS                       R8 R1 K5 ["PatchInfo"]
       20 GETTABLEKS                       R8 R8 K8 ["supportedLocales"]
       22 GETTABLEKS                       R9 R1 K5 ["PatchInfo"]
       24 GETTABLEKS                       R9 R9 K9 ["unsupportedLocales"]
       26 GETTABLEKS                       R10 R1 K5 ["PatchInfo"]
       28 GETTABLEKS                       R10 R10 K10 ["numAddedEntries"]
       30 GETTABLEKS                       R11 R1 K5 ["PatchInfo"]
       32 GETTABLEKS                       R11 R11 K11 ["numAddedTranslations"]
       34 GETTABLEKS                       R12 R1 K5 ["PatchInfo"]
       36 GETTABLEKS                       R12 R12 K12 ["numChangedTranslations"]
       38 GETTABLEKS                       R13 R1 K5 ["PatchInfo"]
       40 GETTABLEKS                       R13 R13 K13 ["includeDeletes"]
       42 GETTABLEKS                       R14 R1 K5 ["PatchInfo"]
       44 GETTABLEKS                       R14 R14 K14 ["numRemovedEntries"]
       46 GETTABLEKS                       R15 R1 K5 ["PatchInfo"]
       48 GETTABLEKS                       R15 R15 K15 ["numRemovedTranslations"]
       50 GETTABLEKS                       R16 R1 K5 ["PatchInfo"]
       52 GETTABLEKS                       R16 R16 K16 ["newLanguages"]
       54 LOADNIL                          R17
       55 ADD                              R21 R11 R12
       56 ADD                              R20 R21 R15
       57 ADD                              R19 R20 R10
       58 ADD                              R18 R19 R14
       59 JUMPIFNOTEQKN                    R18 K17 [0] ; [+8]
       61 LOADK                            R20 K18 ["UploadDialogContent"]
       62 LOADK                            R21 K19 ["PatchEmptyMessage"]
       63 NAMECALL                         R18 R3 K20 ["getText"]
       65 CALL                             R18 3 1
       66 MOVE                             R17 R18
       67 JUMP                             ; [+6]
       68 LOADK                            R20 K18 ["UploadDialogContent"]
       69 LOADK                            R21 K21 ["UploadPatchMessage"]
       70 NAMECALL                         R18 R3 K20 ["getText"]
       72 CALL                             R18 3 1
       73 MOVE                             R17 R18
       74 GETUPVAL                         R18 0
       75 GETTABLEKS                       R18 R18 K22 ["createElement"]
       77 LOADK                            R19 K23 ["Frame"]
       78 DUPTABLE                         R20 K27 [{"BackgroundTransparency", "BackgroundColor3", "Size"}]
       79 LOADN                            R21 0
       80 SETTABLEKS                       R21 R20 K24 ["BackgroundTransparency"]
       82 GETTABLEKS                       R21 R2 K28 ["MainBackground"]
       84 SETTABLEKS                       R21 R20 K25 ["BackgroundColor3"]
       86 GETIMPORT                        R21 K31 [UDim2.new]
       88 LOADN                            R22 1
       89 LOADN                            R23 0
       90 LOADN                            R24 1
       91 LOADN                            R25 0
       92 CALL                             R21 4 1
       93 SETTABLEKS                       R21 R20 K26 ["Size"]
       95 DUPTABLE                         R21 K36 [{"Padding", "Layout", "InfoFrame", "ButtonFrame"}]
       96 GETUPVAL                         R22 0
       97 GETTABLEKS                       R22 R22 K22 ["createElement"]
       99 LOADK                            R23 K37 ["UIPadding"]
      100 DUPTABLE                         R24 K41 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
      101 GETIMPORT                        R25 K43 [UDim.new]
      103 LOADN                            R26 0
      104 GETTABLEKS                       R27 R2 K32 ["Padding"]
      106 CALL                             R25 2 1
      107 SETTABLEKS                       R25 R24 K38 ["PaddingLeft"]
      109 GETIMPORT                        R25 K43 [UDim.new]
      111 LOADN                            R26 0
      112 GETTABLEKS                       R27 R2 K32 ["Padding"]
      114 CALL                             R25 2 1
      115 SETTABLEKS                       R25 R24 K39 ["PaddingRight"]
      117 GETIMPORT                        R25 K43 [UDim.new]
      119 LOADN                            R26 0
      120 GETTABLEKS                       R27 R2 K32 ["Padding"]
      122 CALL                             R25 2 1
      123 SETTABLEKS                       R25 R24 K40 ["PaddingTop"]
      125 CALL                             R22 2 1
      126 SETTABLEKS                       R22 R21 K32 ["Padding"]
      128 GETUPVAL                         R22 0
      129 GETTABLEKS                       R22 R22 K22 ["createElement"]
      131 LOADK                            R23 K44 ["UIListLayout"]
      132 DUPTABLE                         R24 K46 [{"SortOrder"}]
      133 GETIMPORT                        R25 K49 [Enum.SortOrder.LayoutOrder]
      135 SETTABLEKS                       R25 R24 K45 ["SortOrder"]
      137 CALL                             R22 2 1
      138 SETTABLEKS                       R22 R21 K33 ["Layout"]
      140 GETUPVAL                         R22 0
      141 GETTABLEKS                       R22 R22 K22 ["createElement"]
      143 LOADK                            R23 K23 ["Frame"]
      144 DUPTABLE                         R24 K50 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      145 LOADN                            R25 1
      146 SETTABLEKS                       R25 R24 K24 ["BackgroundTransparency"]
      148 LOADN                            R25 1
      149 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      151 GETIMPORT                        R25 K31 [UDim2.new]
      153 LOADN                            R26 1
      154 LOADN                            R27 0
      155 LOADN                            R28 0
      156 GETTABLEKS                       R29 R2 K51 ["PatchInfoFrameHeight"]
      158 CALL                             R25 4 1
      159 SETTABLEKS                       R25 R24 K26 ["Size"]
      161 DUPTABLE                         R25 K57 [{"Layout", "TableContentTitle", "TableContentFrame", "ThisPatchWillTitle", "ThisPatchWillFrame", "Message"}]
      162 GETUPVAL                         R26 0
      163 GETTABLEKS                       R26 R26 K22 ["createElement"]
      165 LOADK                            R27 K44 ["UIListLayout"]
      166 DUPTABLE                         R28 K46 [{"SortOrder"}]
      167 GETIMPORT                        R29 K49 [Enum.SortOrder.LayoutOrder]
      169 SETTABLEKS                       R29 R28 K45 ["SortOrder"]
      171 CALL                             R26 2 1
      172 SETTABLEKS                       R26 R25 K33 ["Layout"]
      174 GETUPVAL                         R26 0
      175 GETTABLEKS                       R26 R26 K22 ["createElement"]
      177 GETUPVAL                         R27 1
      178 DUPTABLE                         R28 K60 [{"Color", "LayoutOrder", "Text"}]
      179 GETTABLEKS                       R29 R2 K61 ["BrightText"]
      181 SETTABLEKS                       R29 R28 K58 ["Color"]
      183 LOADN                            R29 1
      184 SETTABLEKS                       R29 R28 K48 ["LayoutOrder"]
      186 LOADK                            R31 K18 ["UploadDialogContent"]
      187 LOADK                            R32 K62 ["PatchContainsLabel"]
      188 NAMECALL                         R29 R3 K20 ["getText"]
      190 CALL                             R29 3 1
      191 SETTABLEKS                       R29 R28 K59 ["Text"]
      193 CALL                             R26 2 1
      194 SETTABLEKS                       R26 R25 K52 ["TableContentTitle"]
      196 GETUPVAL                         R26 0
      197 GETTABLEKS                       R26 R26 K22 ["createElement"]
      199 LOADK                            R27 K23 ["Frame"]
      200 DUPTABLE                         R28 K50 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      201 LOADN                            R29 1
      202 SETTABLEKS                       R29 R28 K24 ["BackgroundTransparency"]
      204 LOADN                            R29 2
      205 SETTABLEKS                       R29 R28 K48 ["LayoutOrder"]
      207 GETIMPORT                        R29 K31 [UDim2.new]
      209 LOADN                            R30 1
      210 LOADN                            R31 0
      211 LOADN                            R32 0
      212 GETTABLEKS                       R33 R2 K63 ["TableContentsFrameHeight"]
      214 CALL                             R29 4 1
      215 SETTABLEKS                       R29 R28 K26 ["Size"]
      217 DUPTABLE                         R29 K68 [{"Layout", "Padding", "TotalRowsLine", "TranslationsLine", "SupportedLocales", "UnsupportedLocales"}]
      218 GETUPVAL                         R30 0
      219 GETTABLEKS                       R30 R30 K22 ["createElement"]
      221 LOADK                            R31 K44 ["UIListLayout"]
      222 DUPTABLE                         R32 K46 [{"SortOrder"}]
      223 GETIMPORT                        R33 K49 [Enum.SortOrder.LayoutOrder]
      225 SETTABLEKS                       R33 R32 K45 ["SortOrder"]
      227 CALL                             R30 2 1
      228 SETTABLEKS                       R30 R29 K33 ["Layout"]
      230 GETUPVAL                         R30 0
      231 GETTABLEKS                       R30 R30 K22 ["createElement"]
      233 LOADK                            R31 K37 ["UIPadding"]
      234 DUPTABLE                         R32 K69 [{"PaddingLeft", "PaddingTop"}]
      235 GETIMPORT                        R33 K43 [UDim.new]
      237 LOADN                            R34 0
      238 GETTABLEKS                       R35 R2 K70 ["TableContentPaddingLeft"]
      240 CALL                             R33 2 1
      241 SETTABLEKS                       R33 R32 K38 ["PaddingLeft"]
      243 GETIMPORT                        R33 K43 [UDim.new]
      245 LOADN                            R34 0
      246 GETTABLEKS                       R35 R2 K71 ["TableContentPaddingTop"]
      248 CALL                             R33 2 1
      249 SETTABLEKS                       R33 R32 K40 ["PaddingTop"]
      251 CALL                             R30 2 1
      252 SETTABLEKS                       R30 R29 K32 ["Padding"]
      254 GETUPVAL                         R30 0
      255 GETTABLEKS                       R30 R30 K22 ["createElement"]
      257 GETUPVAL                         R31 2
      258 DUPTABLE                         R32 K76 [{"PreText", "Content", "ColorA", "ColorB", "LayoutOrder"}]
      259 LOADK                            R35 K18 ["UploadDialogContent"]
      260 LOADK                            R36 K77 ["PatchTotalRowsLabel"]
      261 NAMECALL                         R33 R3 K20 ["getText"]
      263 CALL                             R33 3 1
      264 SETTABLEKS                       R33 R32 K72 ["PreText"]
      266 SETTABLEKS                       R6 R32 K73 ["Content"]
      268 GETTABLEKS                       R33 R2 K61 ["BrightText"]
      270 SETTABLEKS                       R33 R32 K74 ["ColorA"]
      272 GETTABLEKS                       R33 R2 K78 ["ErrorText"]
      274 SETTABLEKS                       R33 R32 K75 ["ColorB"]
      276 LOADN                            R33 1
      277 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      279 CALL                             R30 2 1
      280 SETTABLEKS                       R30 R29 K64 ["TotalRowsLine"]
      282 GETUPVAL                         R30 0
      283 GETTABLEKS                       R30 R30 K22 ["createElement"]
      285 GETUPVAL                         R31 2
      286 DUPTABLE                         R32 K76 [{"PreText", "Content", "ColorA", "ColorB", "LayoutOrder"}]
      287 LOADK                            R35 K18 ["UploadDialogContent"]
      288 LOADK                            R36 K79 ["PatchTotalTranslationsLabel"]
      289 NAMECALL                         R33 R3 K20 ["getText"]
      291 CALL                             R33 3 1
      292 SETTABLEKS                       R33 R32 K72 ["PreText"]
      294 SETTABLEKS                       R7 R32 K73 ["Content"]
      296 GETTABLEKS                       R33 R2 K61 ["BrightText"]
      298 SETTABLEKS                       R33 R32 K74 ["ColorA"]
      300 GETTABLEKS                       R33 R2 K78 ["ErrorText"]
      302 SETTABLEKS                       R33 R32 K75 ["ColorB"]
      304 LOADN                            R33 2
      305 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      307 CALL                             R30 2 1
      308 SETTABLEKS                       R30 R29 K65 ["TranslationsLine"]
      310 GETUPVAL                         R30 0
      311 GETTABLEKS                       R30 R30 K22 ["createElement"]
      313 GETUPVAL                         R31 2
      314 DUPTABLE                         R32 K76 [{"PreText", "Content", "ColorA", "ColorB", "LayoutOrder"}]
      315 LOADK                            R35 K18 ["UploadDialogContent"]
      316 LOADK                            R36 K80 ["PatchLanguagesLabel"]
      317 NAMECALL                         R33 R3 K20 ["getText"]
      319 CALL                             R33 3 1
      320 SETTABLEKS                       R33 R32 K72 ["PreText"]
      322 SETTABLEKS                       R8 R32 K73 ["Content"]
      324 GETTABLEKS                       R33 R2 K61 ["BrightText"]
      326 SETTABLEKS                       R33 R32 K74 ["ColorA"]
      328 GETTABLEKS                       R33 R2 K81 ["DimmedText"]
      330 SETTABLEKS                       R33 R32 K75 ["ColorB"]
      332 LOADN                            R33 3
      333 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      335 CALL                             R30 2 1
      336 SETTABLEKS                       R30 R29 K66 ["SupportedLocales"]
      338 GETUPVAL                         R30 0
      339 GETTABLEKS                       R30 R30 K22 ["createElement"]
      341 GETUPVAL                         R31 3
      342 DUPTABLE                         R32 K82 [{"PreText", "Content", "Color", "LayoutOrder"}]
      343 LOADK                            R35 K18 ["UploadDialogContent"]
      344 LOADK                            R36 K83 ["PatchInvalidLanguagesLabel"]
      345 NAMECALL                         R33 R3 K20 ["getText"]
      347 CALL                             R33 3 1
      348 SETTABLEKS                       R33 R32 K72 ["PreText"]
      350 SETTABLEKS                       R9 R32 K73 ["Content"]
      352 GETTABLEKS                       R33 R2 K84 ["WarningText"]
      354 SETTABLEKS                       R33 R32 K58 ["Color"]
      356 LOADN                            R33 4
      357 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      359 CALL                             R30 2 1
      360 SETTABLEKS                       R30 R29 K67 ["UnsupportedLocales"]
      362 CALL                             R26 3 1
      363 SETTABLEKS                       R26 R25 K53 ["TableContentFrame"]
      365 GETUPVAL                         R26 0
      366 GETTABLEKS                       R26 R26 K22 ["createElement"]
      368 GETUPVAL                         R27 1
      369 DUPTABLE                         R28 K85 [{"Text", "Color", "LayoutOrder"}]
      370 LOADK                            R31 K18 ["UploadDialogContent"]
      371 LOADK                            R32 K86 ["PatchWillLabel"]
      372 NAMECALL                         R29 R3 K20 ["getText"]
      374 CALL                             R29 3 1
      375 SETTABLEKS                       R29 R28 K59 ["Text"]
      377 GETTABLEKS                       R29 R2 K61 ["BrightText"]
      379 SETTABLEKS                       R29 R28 K58 ["Color"]
      381 LOADN                            R29 3
      382 SETTABLEKS                       R29 R28 K48 ["LayoutOrder"]
      384 CALL                             R26 2 1
      385 SETTABLEKS                       R26 R25 K54 ["ThisPatchWillTitle"]
      387 GETUPVAL                         R26 0
      388 GETTABLEKS                       R26 R26 K22 ["createElement"]
      390 LOADK                            R27 K23 ["Frame"]
      391 DUPTABLE                         R28 K50 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      392 LOADN                            R29 1
      393 SETTABLEKS                       R29 R28 K24 ["BackgroundTransparency"]
      395 LOADN                            R29 4
      396 SETTABLEKS                       R29 R28 K48 ["LayoutOrder"]
      398 GETIMPORT                        R29 K31 [UDim2.new]
      400 LOADN                            R30 1
      401 LOADN                            R31 0
      402 LOADN                            R32 0
      403 GETTABLEKS                       R33 R2 K87 ["ThisPatchWIllFrameHeight"]
      405 CALL                             R29 4 1
      406 SETTABLEKS                       R29 R28 K26 ["Size"]
      408 DUPTABLE                         R29 K94 [{"Layout", "Padding", "AddEntriesLine", "AddTranslationsLine", "ChangeLine", "DeleteEntriesLine", "DeleteTranslationsLine", "AddLanguagesLine"}]
      409 GETUPVAL                         R30 0
      410 GETTABLEKS                       R30 R30 K22 ["createElement"]
      412 LOADK                            R31 K44 ["UIListLayout"]
      413 DUPTABLE                         R32 K46 [{"SortOrder"}]
      414 GETIMPORT                        R33 K49 [Enum.SortOrder.LayoutOrder]
      416 SETTABLEKS                       R33 R32 K45 ["SortOrder"]
      418 CALL                             R30 2 1
      419 SETTABLEKS                       R30 R29 K33 ["Layout"]
      421 GETUPVAL                         R30 0
      422 GETTABLEKS                       R30 R30 K22 ["createElement"]
      424 LOADK                            R31 K37 ["UIPadding"]
      425 DUPTABLE                         R32 K69 [{"PaddingLeft", "PaddingTop"}]
      426 GETIMPORT                        R33 K43 [UDim.new]
      428 LOADN                            R34 0
      429 GETTABLEKS                       R35 R2 K70 ["TableContentPaddingLeft"]
      431 CALL                             R33 2 1
      432 SETTABLEKS                       R33 R32 K38 ["PaddingLeft"]
      434 GETIMPORT                        R33 K43 [UDim.new]
      436 LOADN                            R34 0
      437 GETTABLEKS                       R35 R2 K71 ["TableContentPaddingTop"]
      439 CALL                             R33 2 1
      440 SETTABLEKS                       R33 R32 K40 ["PaddingTop"]
      442 CALL                             R30 2 1
      443 SETTABLEKS                       R30 R29 K32 ["Padding"]
      445 GETUPVAL                         R30 0
      446 GETTABLEKS                       R30 R30 K22 ["createElement"]
      448 GETUPVAL                         R31 4
      449 DUPTABLE                         R32 K98 [{"PreText", "Count", "EnabledColor", "DisabledColor", "LayoutOrder"}]
      450 LOADK                            R35 K18 ["UploadDialogContent"]
      451 LOADK                            R36 K99 ["AddEntriesPreText"]
      452 NAMECALL                         R33 R3 K20 ["getText"]
      454 CALL                             R33 3 1
      455 SETTABLEKS                       R33 R32 K72 ["PreText"]
      457 SETTABLEKS                       R10 R32 K95 ["Count"]
      459 GETTABLEKS                       R33 R2 K61 ["BrightText"]
      461 SETTABLEKS                       R33 R32 K96 ["EnabledColor"]
      463 GETTABLEKS                       R33 R2 K81 ["DimmedText"]
      465 SETTABLEKS                       R33 R32 K97 ["DisabledColor"]
      467 LOADN                            R33 1
      468 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      470 CALL                             R30 2 1
      471 SETTABLEKS                       R30 R29 K88 ["AddEntriesLine"]
      473 GETUPVAL                         R30 0
      474 GETTABLEKS                       R30 R30 K22 ["createElement"]
      476 GETUPVAL                         R31 4
      477 DUPTABLE                         R32 K98 [{"PreText", "Count", "EnabledColor", "DisabledColor", "LayoutOrder"}]
      478 LOADK                            R35 K18 ["UploadDialogContent"]
      479 LOADK                            R36 K100 ["AddTranslationsPretext"]
      480 NAMECALL                         R33 R3 K20 ["getText"]
      482 CALL                             R33 3 1
      483 SETTABLEKS                       R33 R32 K72 ["PreText"]
      485 SETTABLEKS                       R11 R32 K95 ["Count"]
      487 GETTABLEKS                       R33 R2 K61 ["BrightText"]
      489 SETTABLEKS                       R33 R32 K96 ["EnabledColor"]
      491 GETTABLEKS                       R33 R2 K81 ["DimmedText"]
      493 SETTABLEKS                       R33 R32 K97 ["DisabledColor"]
      495 LOADN                            R33 2
      496 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      498 CALL                             R30 2 1
      499 SETTABLEKS                       R30 R29 K89 ["AddTranslationsLine"]
      501 GETUPVAL                         R30 0
      502 GETTABLEKS                       R30 R30 K22 ["createElement"]
      504 GETUPVAL                         R31 4
      505 DUPTABLE                         R32 K98 [{"PreText", "Count", "EnabledColor", "DisabledColor", "LayoutOrder"}]
      506 LOADK                            R35 K18 ["UploadDialogContent"]
      507 LOADK                            R36 K101 ["ChangeTranslationsPretext"]
      508 NAMECALL                         R33 R3 K20 ["getText"]
      510 CALL                             R33 3 1
      511 SETTABLEKS                       R33 R32 K72 ["PreText"]
      513 SETTABLEKS                       R12 R32 K95 ["Count"]
      515 GETTABLEKS                       R33 R2 K61 ["BrightText"]
      517 SETTABLEKS                       R33 R32 K96 ["EnabledColor"]
      519 GETTABLEKS                       R33 R2 K81 ["DimmedText"]
      521 SETTABLEKS                       R33 R32 K97 ["DisabledColor"]
      523 LOADN                            R33 3
      524 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      526 CALL                             R30 2 1
      527 SETTABLEKS                       R30 R29 K90 ["ChangeLine"]
      529 MOVE                             R30 R13
      530 JUMPIFNOT                        R30 ; [+26]
      531 GETUPVAL                         R30 0
      532 GETTABLEKS                       R30 R30 K22 ["createElement"]
      534 GETUPVAL                         R31 4
      535 DUPTABLE                         R32 K98 [{"PreText", "Count", "EnabledColor", "DisabledColor", "LayoutOrder"}]
      536 LOADK                            R35 K18 ["UploadDialogContent"]
      537 LOADK                            R36 K102 ["DeleteEntriesPretext"]
      538 NAMECALL                         R33 R3 K20 ["getText"]
      540 CALL                             R33 3 1
      541 SETTABLEKS                       R33 R32 K72 ["PreText"]
      543 SETTABLEKS                       R14 R32 K95 ["Count"]
      545 GETTABLEKS                       R33 R2 K61 ["BrightText"]
      547 SETTABLEKS                       R33 R32 K96 ["EnabledColor"]
      549 GETTABLEKS                       R33 R2 K81 ["DimmedText"]
      551 SETTABLEKS                       R33 R32 K97 ["DisabledColor"]
      553 LOADN                            R33 4
      554 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      556 CALL                             R30 2 1
      557 SETTABLEKS                       R30 R29 K91 ["DeleteEntriesLine"]
      559 MOVE                             R30 R13
      560 JUMPIFNOT                        R30 ; [+26]
      561 GETUPVAL                         R30 0
      562 GETTABLEKS                       R30 R30 K22 ["createElement"]
      564 GETUPVAL                         R31 4
      565 DUPTABLE                         R32 K98 [{"PreText", "Count", "EnabledColor", "DisabledColor", "LayoutOrder"}]
      566 LOADK                            R35 K18 ["UploadDialogContent"]
      567 LOADK                            R36 K103 ["DeleteTranslationsPretext"]
      568 NAMECALL                         R33 R3 K20 ["getText"]
      570 CALL                             R33 3 1
      571 SETTABLEKS                       R33 R32 K72 ["PreText"]
      573 SETTABLEKS                       R15 R32 K95 ["Count"]
      575 GETTABLEKS                       R33 R2 K61 ["BrightText"]
      577 SETTABLEKS                       R33 R32 K96 ["EnabledColor"]
      579 GETTABLEKS                       R33 R2 K81 ["DimmedText"]
      581 SETTABLEKS                       R33 R32 K97 ["DisabledColor"]
      583 LOADN                            R33 5
      584 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      586 CALL                             R30 2 1
      587 SETTABLEKS                       R30 R29 K92 ["DeleteTranslationsLine"]
      589 LOADB                            R30 0
      590 JUMPIFEQKNIL                     R16 ; [+29]
      592 LOADB                            R30 0
      593 JUMPIFEQKS                       R16 K104 [""] ; [+26]
      595 GETUPVAL                         R30 0
      596 GETTABLEKS                       R30 R30 K22 ["createElement"]
      598 GETUPVAL                         R31 1
      599 DUPTABLE                         R32 K85 [{"Text", "Color", "LayoutOrder"}]
      600 GETIMPORT                        R33 K107 [string.format]
      602 LOADK                            R34 K108 ["%s %s"]
      603 LOADK                            R37 K18 ["UploadDialogContent"]
      604 LOADK                            R38 K109 ["AddLanguagesPretext"]
      605 NAMECALL                         R35 R3 K20 ["getText"]
      607 CALL                             R35 3 1
      608 MOVE                             R36 R16
      609 CALL                             R33 3 1
      610 SETTABLEKS                       R33 R32 K59 ["Text"]
      612 GETTABLEKS                       R33 R2 K61 ["BrightText"]
      614 SETTABLEKS                       R33 R32 K58 ["Color"]
      616 LOADN                            R33 6
      617 SETTABLEKS                       R33 R32 K48 ["LayoutOrder"]
      619 CALL                             R30 2 1
      620 SETTABLEKS                       R30 R29 K93 ["AddLanguagesLine"]
      622 CALL                             R26 3 1
      623 SETTABLEKS                       R26 R25 K55 ["ThisPatchWillFrame"]
      625 GETUPVAL                         R26 0
      626 GETTABLEKS                       R26 R26 K22 ["createElement"]
      628 GETUPVAL                         R27 1
      629 DUPTABLE                         R28 K60 [{"Color", "LayoutOrder", "Text"}]
      630 GETTABLEKS                       R29 R2 K61 ["BrightText"]
      632 SETTABLEKS                       R29 R28 K58 ["Color"]
      634 LOADN                            R29 5
      635 SETTABLEKS                       R29 R28 K48 ["LayoutOrder"]
      637 SETTABLEKS                       R17 R28 K59 ["Text"]
      639 CALL                             R26 2 1
      640 SETTABLEKS                       R26 R25 K56 ["Message"]
      642 CALL                             R22 3 1
      643 SETTABLEKS                       R22 R21 K34 ["InfoFrame"]
      645 GETUPVAL                         R22 0
      646 GETTABLEKS                       R22 R22 K22 ["createElement"]
      648 LOADK                            R23 K23 ["Frame"]
      649 DUPTABLE                         R24 K50 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      650 LOADN                            R25 1
      651 SETTABLEKS                       R25 R24 K24 ["BackgroundTransparency"]
      653 LOADN                            R25 2
      654 SETTABLEKS                       R25 R24 K48 ["LayoutOrder"]
      656 GETIMPORT                        R25 K31 [UDim2.new]
      658 LOADN                            R26 1
      659 LOADN                            R27 0
      660 LOADN                            R28 0
      661 GETTABLEKS                       R29 R2 K110 ["ButtonFrameHeight"]
      663 CALL                             R25 4 1
      664 SETTABLEKS                       R25 R24 K26 ["Size"]
      666 DUPTABLE                         R25 K113 [{"Cancel", "Confirm"}]
      667 GETUPVAL                         R26 0
      668 GETTABLEKS                       R26 R26 K22 ["createElement"]
      670 GETUPVAL                         R27 5
      671 DUPTABLE                         R28 K117 [{"LayoutOrder", "OnClick", "Position", "Size", "Style", "Text"}]
      672 LOADN                            R29 1
      673 SETTABLEKS                       R29 R28 K48 ["LayoutOrder"]
      675 SETTABLEKS                       R4 R28 K114 ["OnClick"]
      677 GETIMPORT                        R29 K31 [UDim2.new]
      679 LOADK                            R30 K118 [0.5]
      680 GETTABLEKS                       R33 R2 K119 ["ButtonWidth"]
      682 MINUS                            R32 R33
      683 GETTABLEKS                       R33 R2 K32 ["Padding"]
      685 SUB                              R31 R32 R33
      686 LOADN                            R32 0
      687 LOADN                            R33 0
      688 CALL                             R29 4 1
      689 SETTABLEKS                       R29 R28 K115 ["Position"]
      691 GETIMPORT                        R29 K31 [UDim2.new]
      693 LOADN                            R30 0
      694 GETTABLEKS                       R31 R2 K119 ["ButtonWidth"]
      696 LOADN                            R32 0
      697 GETTABLEKS                       R33 R2 K120 ["ButtonHeight"]
      699 CALL                             R29 4 1
      700 SETTABLEKS                       R29 R28 K26 ["Size"]
      702 LOADK                            R29 K121 ["TextButton"]
      703 SETTABLEKS                       R29 R28 K116 ["Style"]
      705 LOADK                            R31 K18 ["UploadDialogContent"]
      706 LOADK                            R32 K122 ["CancelButton"]
      707 NAMECALL                         R29 R3 K20 ["getText"]
      709 CALL                             R29 3 1
      710 SETTABLEKS                       R29 R28 K59 ["Text"]
      712 NEWTABLE                         R29 0 1
      714 GETUPVAL                         R30 0
      715 GETTABLEKS                       R30 R30 K22 ["createElement"]
      717 GETUPVAL                         R31 6
      718 DUPTABLE                         R32 K124 [{"Cursor"}]
      719 LOADK                            R33 K125 ["PointingHand"]
      720 SETTABLEKS                       R33 R32 K123 ["Cursor"]
      722 CALL                             R30 2 -1
      723 SETLIST                          R29 R30 -1 [1]
      725 CALL                             R26 3 1
      726 SETTABLEKS                       R26 R25 K111 ["Cancel"]
      728 GETUPVAL                         R26 0
      729 GETTABLEKS                       R26 R26 K22 ["createElement"]
      731 GETUPVAL                         R27 5
      732 DUPTABLE                         R28 K117 [{"LayoutOrder", "OnClick", "Position", "Size", "Style", "Text"}]
      733 LOADN                            R29 2
      734 SETTABLEKS                       R29 R28 K48 ["LayoutOrder"]
      736 SETTABLEKS                       R5 R28 K114 ["OnClick"]
      738 GETIMPORT                        R29 K31 [UDim2.new]
      740 LOADK                            R30 K118 [0.5]
      741 GETTABLEKS                       R31 R2 K32 ["Padding"]
      743 LOADN                            R32 0
      744 LOADN                            R33 0
      745 CALL                             R29 4 1
      746 SETTABLEKS                       R29 R28 K115 ["Position"]
      748 GETIMPORT                        R29 K31 [UDim2.new]
      750 LOADN                            R30 0
      751 GETTABLEKS                       R31 R2 K119 ["ButtonWidth"]
      753 LOADN                            R32 0
      754 GETTABLEKS                       R33 R2 K120 ["ButtonHeight"]
      756 CALL                             R29 4 1
      757 SETTABLEKS                       R29 R28 K26 ["Size"]
      759 LOADK                            R29 K126 ["PrimeTextButton"]
      760 SETTABLEKS                       R29 R28 K116 ["Style"]
      762 LOADK                            R31 K18 ["UploadDialogContent"]
      763 LOADK                            R32 K127 ["ConfirmButton"]
      764 NAMECALL                         R29 R3 K20 ["getText"]
      766 CALL                             R29 3 1
      767 SETTABLEKS                       R29 R28 K59 ["Text"]
      769 NEWTABLE                         R29 0 1
      771 GETUPVAL                         R30 0
      772 GETTABLEKS                       R30 R30 K22 ["createElement"]
      774 GETUPVAL                         R31 6
      775 DUPTABLE                         R32 K124 [{"Cursor"}]
      776 LOADK                            R33 K125 ["PointingHand"]
      777 SETTABLEKS                       R33 R32 K123 ["Cursor"]
      779 CALL                             R30 2 -1
      780 SETLIST                          R29 R30 -1 [1]
      782 CALL                             R26 3 1
      783 SETTABLEKS                       R26 R25 K112 ["Confirm"]
      785 CALL                             R22 3 1
      786 SETTABLEKS                       R22 R21 K35 ["ButtonFrame"]
      788 CALL                             R18 3 -1
      789 RETURN                           R18 -1

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
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["withContext"]
       27 GETTABLEKS                       R5 R2 K10 ["UI"]
       29 GETTABLEKS                       R6 R5 K11 ["Button"]
       31 GETTABLEKS                       R7 R5 K12 ["HoverArea"]
       33 GETTABLEKS                       R8 R5 K13 ["TextLabel"]
       35 GETTABLEKS                       R9 R1 K14 ["PureComponent"]
       37 LOADK                            R11 K15 ["UploadDialogContent"]
       38 NAMECALL                         R9 R9 K16 ["extend"]
       40 CALL                             R9 2 1
       41 DUPCLOSURE                       R10 K17 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R8
       44 DUPCLOSURE                       R11 K18 [PROTO_1]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R10
       47 DUPCLOSURE                       R12 K19 [PROTO_2]
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R10
       50 DUPCLOSURE                       R13 K20 [PROTO_3]
       51 CAPTURE                          VAL R1
       52 CAPTURE                          VAL R10
       53 DUPCLOSURE                       R14 K21 [PROTO_4]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R11
       57 CAPTURE                          VAL R12
       58 CAPTURE                          VAL R13
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 SETTABLEKS                       R14 R9 K22 ["render"]
       63 MOVE                             R14 R4
       64 DUPTABLE                         R15 K25 [{"Stylizer", "Localization"}]
       65 GETTABLEKS                       R16 R3 K23 ["Stylizer"]
       67 SETTABLEKS                       R16 R15 K23 ["Stylizer"]
       69 GETTABLEKS                       R16 R3 K24 ["Localization"]
       71 SETTABLEKS                       R16 R15 K24 ["Localization"]
       73 CALL                             R14 1 1
       74 MOVE                             R15 R9
       75 CALL                             R14 1 1
       76 MOVE                             R9 R14
       77 RETURN                           R9 1
