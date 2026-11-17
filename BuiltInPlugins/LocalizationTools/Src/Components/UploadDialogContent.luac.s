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
       78 DUPTABLE                         R20 K27 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["Size"]}]
       79 GETTABLEKS                       R21 R2 K28 ["MainBackground"]
       81 SETTABLEKS                       R21 R20 K25 ["BackgroundColor3"]
       83 GETIMPORT                        R21 K31 [UDim2.new]
       85 LOADN                            R22 1
       86 LOADN                            R23 0
       87 LOADN                            R24 1
       88 LOADN                            R25 0
       89 CALL                             R21 4 1
       90 SETTABLEKS                       R21 R20 K26 ["Size"]
       92 DUPTABLE                         R21 K36 [{"Padding", "Layout", "InfoFrame", "ButtonFrame"}]
       93 GETUPVAL                         R22 0
       94 GETTABLEKS                       R22 R22 K22 ["createElement"]
       96 LOADK                            R23 K37 ["UIPadding"]
       97 DUPTABLE                         R24 K41 [{"PaddingLeft", "PaddingRight", "PaddingTop"}]
       98 GETIMPORT                        R25 K43 [UDim.new]
      100 LOADN                            R26 0
      101 GETTABLEKS                       R27 R2 K32 ["Padding"]
      103 CALL                             R25 2 1
      104 SETTABLEKS                       R25 R24 K38 ["PaddingLeft"]
      106 GETIMPORT                        R25 K43 [UDim.new]
      108 LOADN                            R26 0
      109 GETTABLEKS                       R27 R2 K32 ["Padding"]
      111 CALL                             R25 2 1
      112 SETTABLEKS                       R25 R24 K39 ["PaddingRight"]
      114 GETIMPORT                        R25 K43 [UDim.new]
      116 LOADN                            R26 0
      117 GETTABLEKS                       R27 R2 K32 ["Padding"]
      119 CALL                             R25 2 1
      120 SETTABLEKS                       R25 R24 K40 ["PaddingTop"]
      122 CALL                             R22 2 1
      123 SETTABLEKS                       R22 R21 K32 ["Padding"]
      125 GETUPVAL                         R22 0
      126 GETTABLEKS                       R22 R22 K22 ["createElement"]
      128 LOADK                            R23 K44 ["UIListLayout"]
      129 DUPTABLE                         R24 K46 [{"SortOrder"}]
      130 GETIMPORT                        R25 K49 [Enum.SortOrder.LayoutOrder]
      132 SETTABLEKS                       R25 R24 K45 ["SortOrder"]
      134 CALL                             R22 2 1
      135 SETTABLEKS                       R22 R21 K33 ["Layout"]
      137 GETUPVAL                         R22 0
      138 GETTABLEKS                       R22 R22 K22 ["createElement"]
      140 LOADK                            R23 K23 ["Frame"]
      141 DUPTABLE                         R24 K51 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"]}]
      142 GETIMPORT                        R25 K31 [UDim2.new]
      144 LOADN                            R26 1
      145 LOADN                            R27 0
      146 LOADN                            R28 0
      147 GETTABLEKS                       R29 R2 K52 ["PatchInfoFrameHeight"]
      149 CALL                             R25 4 1
      150 SETTABLEKS                       R25 R24 K26 ["Size"]
      152 DUPTABLE                         R25 K58 [{"Layout", "TableContentTitle", "TableContentFrame", "ThisPatchWillTitle", "ThisPatchWillFrame", "Message"}]
      153 GETUPVAL                         R26 0
      154 GETTABLEKS                       R26 R26 K22 ["createElement"]
      156 LOADK                            R27 K44 ["UIListLayout"]
      157 DUPTABLE                         R28 K46 [{"SortOrder"}]
      158 GETIMPORT                        R29 K49 [Enum.SortOrder.LayoutOrder]
      160 SETTABLEKS                       R29 R28 K45 ["SortOrder"]
      162 CALL                             R26 2 1
      163 SETTABLEKS                       R26 R25 K33 ["Layout"]
      165 GETUPVAL                         R26 0
      166 GETTABLEKS                       R26 R26 K22 ["createElement"]
      168 GETUPVAL                         R27 1
      169 DUPTABLE                         R28 K61 [{["Color"], ["LayoutOrder"] = 1, ["Text"]}]
      170 GETTABLEKS                       R29 R2 K62 ["BrightText"]
      172 SETTABLEKS                       R29 R28 K59 ["Color"]
      174 LOADK                            R31 K18 ["UploadDialogContent"]
      175 LOADK                            R32 K63 ["PatchContainsLabel"]
      176 NAMECALL                         R29 R3 K20 ["getText"]
      178 CALL                             R29 3 1
      179 SETTABLEKS                       R29 R28 K60 ["Text"]
      181 CALL                             R26 2 1
      182 SETTABLEKS                       R26 R25 K53 ["TableContentTitle"]
      184 GETUPVAL                         R26 0
      185 GETTABLEKS                       R26 R26 K22 ["createElement"]
      187 LOADK                            R27 K23 ["Frame"]
      188 DUPTABLE                         R28 K65 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["Size"]}]
      189 GETIMPORT                        R29 K31 [UDim2.new]
      191 LOADN                            R30 1
      192 LOADN                            R31 0
      193 LOADN                            R32 0
      194 GETTABLEKS                       R33 R2 K66 ["TableContentsFrameHeight"]
      196 CALL                             R29 4 1
      197 SETTABLEKS                       R29 R28 K26 ["Size"]
      199 DUPTABLE                         R29 K71 [{"Layout", "Padding", "TotalRowsLine", "TranslationsLine", "SupportedLocales", "UnsupportedLocales"}]
      200 GETUPVAL                         R30 0
      201 GETTABLEKS                       R30 R30 K22 ["createElement"]
      203 LOADK                            R31 K44 ["UIListLayout"]
      204 DUPTABLE                         R32 K46 [{"SortOrder"}]
      205 GETIMPORT                        R33 K49 [Enum.SortOrder.LayoutOrder]
      207 SETTABLEKS                       R33 R32 K45 ["SortOrder"]
      209 CALL                             R30 2 1
      210 SETTABLEKS                       R30 R29 K33 ["Layout"]
      212 GETUPVAL                         R30 0
      213 GETTABLEKS                       R30 R30 K22 ["createElement"]
      215 LOADK                            R31 K37 ["UIPadding"]
      216 DUPTABLE                         R32 K72 [{"PaddingLeft", "PaddingTop"}]
      217 GETIMPORT                        R33 K43 [UDim.new]
      219 LOADN                            R34 0
      220 GETTABLEKS                       R35 R2 K73 ["TableContentPaddingLeft"]
      222 CALL                             R33 2 1
      223 SETTABLEKS                       R33 R32 K38 ["PaddingLeft"]
      225 GETIMPORT                        R33 K43 [UDim.new]
      227 LOADN                            R34 0
      228 GETTABLEKS                       R35 R2 K74 ["TableContentPaddingTop"]
      230 CALL                             R33 2 1
      231 SETTABLEKS                       R33 R32 K40 ["PaddingTop"]
      233 CALL                             R30 2 1
      234 SETTABLEKS                       R30 R29 K32 ["Padding"]
      236 GETUPVAL                         R30 0
      237 GETTABLEKS                       R30 R30 K22 ["createElement"]
      239 GETUPVAL                         R31 2
      240 DUPTABLE                         R32 K79 [{["PreText"], ["Content"], ["ColorA"], ["ColorB"], ["LayoutOrder"] = 1}]
      241 LOADK                            R35 K18 ["UploadDialogContent"]
      242 LOADK                            R36 K80 ["PatchTotalRowsLabel"]
      243 NAMECALL                         R33 R3 K20 ["getText"]
      245 CALL                             R33 3 1
      246 SETTABLEKS                       R33 R32 K75 ["PreText"]
      248 SETTABLEKS                       R6 R32 K76 ["Content"]
      250 GETTABLEKS                       R33 R2 K62 ["BrightText"]
      252 SETTABLEKS                       R33 R32 K77 ["ColorA"]
      254 GETTABLEKS                       R33 R2 K81 ["ErrorText"]
      256 SETTABLEKS                       R33 R32 K78 ["ColorB"]
      258 CALL                             R30 2 1
      259 SETTABLEKS                       R30 R29 K67 ["TotalRowsLine"]
      261 GETUPVAL                         R30 0
      262 GETTABLEKS                       R30 R30 K22 ["createElement"]
      264 GETUPVAL                         R31 2
      265 DUPTABLE                         R32 K82 [{["PreText"], ["Content"], ["ColorA"], ["ColorB"], ["LayoutOrder"] = 2}]
      266 LOADK                            R35 K18 ["UploadDialogContent"]
      267 LOADK                            R36 K83 ["PatchTotalTranslationsLabel"]
      268 NAMECALL                         R33 R3 K20 ["getText"]
      270 CALL                             R33 3 1
      271 SETTABLEKS                       R33 R32 K75 ["PreText"]
      273 SETTABLEKS                       R7 R32 K76 ["Content"]
      275 GETTABLEKS                       R33 R2 K62 ["BrightText"]
      277 SETTABLEKS                       R33 R32 K77 ["ColorA"]
      279 GETTABLEKS                       R33 R2 K81 ["ErrorText"]
      281 SETTABLEKS                       R33 R32 K78 ["ColorB"]
      283 CALL                             R30 2 1
      284 SETTABLEKS                       R30 R29 K68 ["TranslationsLine"]
      286 GETUPVAL                         R30 0
      287 GETTABLEKS                       R30 R30 K22 ["createElement"]
      289 GETUPVAL                         R31 2
      290 DUPTABLE                         R32 K85 [{["PreText"], ["Content"], ["ColorA"], ["ColorB"], ["LayoutOrder"] = 3}]
      291 LOADK                            R35 K18 ["UploadDialogContent"]
      292 LOADK                            R36 K86 ["PatchLanguagesLabel"]
      293 NAMECALL                         R33 R3 K20 ["getText"]
      295 CALL                             R33 3 1
      296 SETTABLEKS                       R33 R32 K75 ["PreText"]
      298 SETTABLEKS                       R8 R32 K76 ["Content"]
      300 GETTABLEKS                       R33 R2 K62 ["BrightText"]
      302 SETTABLEKS                       R33 R32 K77 ["ColorA"]
      304 GETTABLEKS                       R33 R2 K87 ["DimmedText"]
      306 SETTABLEKS                       R33 R32 K78 ["ColorB"]
      308 CALL                             R30 2 1
      309 SETTABLEKS                       R30 R29 K69 ["SupportedLocales"]
      311 GETUPVAL                         R30 0
      312 GETTABLEKS                       R30 R30 K22 ["createElement"]
      314 GETUPVAL                         R31 3
      315 DUPTABLE                         R32 K89 [{["PreText"], ["Content"], ["Color"], ["LayoutOrder"] = 4}]
      316 LOADK                            R35 K18 ["UploadDialogContent"]
      317 LOADK                            R36 K90 ["PatchInvalidLanguagesLabel"]
      318 NAMECALL                         R33 R3 K20 ["getText"]
      320 CALL                             R33 3 1
      321 SETTABLEKS                       R33 R32 K75 ["PreText"]
      323 SETTABLEKS                       R9 R32 K76 ["Content"]
      325 GETTABLEKS                       R33 R2 K91 ["WarningText"]
      327 SETTABLEKS                       R33 R32 K59 ["Color"]
      329 CALL                             R30 2 1
      330 SETTABLEKS                       R30 R29 K70 ["UnsupportedLocales"]
      332 CALL                             R26 3 1
      333 SETTABLEKS                       R26 R25 K54 ["TableContentFrame"]
      335 GETUPVAL                         R26 0
      336 GETTABLEKS                       R26 R26 K22 ["createElement"]
      338 GETUPVAL                         R27 1
      339 DUPTABLE                         R28 K92 [{["Text"], ["Color"], ["LayoutOrder"] = 3}]
      340 LOADK                            R31 K18 ["UploadDialogContent"]
      341 LOADK                            R32 K93 ["PatchWillLabel"]
      342 NAMECALL                         R29 R3 K20 ["getText"]
      344 CALL                             R29 3 1
      345 SETTABLEKS                       R29 R28 K60 ["Text"]
      347 GETTABLEKS                       R29 R2 K62 ["BrightText"]
      349 SETTABLEKS                       R29 R28 K59 ["Color"]
      351 CALL                             R26 2 1
      352 SETTABLEKS                       R26 R25 K55 ["ThisPatchWillTitle"]
      354 GETUPVAL                         R26 0
      355 GETTABLEKS                       R26 R26 K22 ["createElement"]
      357 LOADK                            R27 K23 ["Frame"]
      358 DUPTABLE                         R28 K94 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 4, ["Size"]}]
      359 GETIMPORT                        R29 K31 [UDim2.new]
      361 LOADN                            R30 1
      362 LOADN                            R31 0
      363 LOADN                            R32 0
      364 GETTABLEKS                       R33 R2 K95 ["ThisPatchWIllFrameHeight"]
      366 CALL                             R29 4 1
      367 SETTABLEKS                       R29 R28 K26 ["Size"]
      369 DUPTABLE                         R29 K102 [{"Layout", "Padding", "AddEntriesLine", "AddTranslationsLine", "ChangeLine", "DeleteEntriesLine", "DeleteTranslationsLine", "AddLanguagesLine"}]
      370 GETUPVAL                         R30 0
      371 GETTABLEKS                       R30 R30 K22 ["createElement"]
      373 LOADK                            R31 K44 ["UIListLayout"]
      374 DUPTABLE                         R32 K46 [{"SortOrder"}]
      375 GETIMPORT                        R33 K49 [Enum.SortOrder.LayoutOrder]
      377 SETTABLEKS                       R33 R32 K45 ["SortOrder"]
      379 CALL                             R30 2 1
      380 SETTABLEKS                       R30 R29 K33 ["Layout"]
      382 GETUPVAL                         R30 0
      383 GETTABLEKS                       R30 R30 K22 ["createElement"]
      385 LOADK                            R31 K37 ["UIPadding"]
      386 DUPTABLE                         R32 K72 [{"PaddingLeft", "PaddingTop"}]
      387 GETIMPORT                        R33 K43 [UDim.new]
      389 LOADN                            R34 0
      390 GETTABLEKS                       R35 R2 K73 ["TableContentPaddingLeft"]
      392 CALL                             R33 2 1
      393 SETTABLEKS                       R33 R32 K38 ["PaddingLeft"]
      395 GETIMPORT                        R33 K43 [UDim.new]
      397 LOADN                            R34 0
      398 GETTABLEKS                       R35 R2 K74 ["TableContentPaddingTop"]
      400 CALL                             R33 2 1
      401 SETTABLEKS                       R33 R32 K40 ["PaddingTop"]
      403 CALL                             R30 2 1
      404 SETTABLEKS                       R30 R29 K32 ["Padding"]
      406 GETUPVAL                         R30 0
      407 GETTABLEKS                       R30 R30 K22 ["createElement"]
      409 GETUPVAL                         R31 4
      410 DUPTABLE                         R32 K106 [{["PreText"], ["Count"], ["EnabledColor"], ["DisabledColor"], ["LayoutOrder"] = 1}]
      411 LOADK                            R35 K18 ["UploadDialogContent"]
      412 LOADK                            R36 K107 ["AddEntriesPreText"]
      413 NAMECALL                         R33 R3 K20 ["getText"]
      415 CALL                             R33 3 1
      416 SETTABLEKS                       R33 R32 K75 ["PreText"]
      418 SETTABLEKS                       R10 R32 K103 ["Count"]
      420 GETTABLEKS                       R33 R2 K62 ["BrightText"]
      422 SETTABLEKS                       R33 R32 K104 ["EnabledColor"]
      424 GETTABLEKS                       R33 R2 K87 ["DimmedText"]
      426 SETTABLEKS                       R33 R32 K105 ["DisabledColor"]
      428 CALL                             R30 2 1
      429 SETTABLEKS                       R30 R29 K96 ["AddEntriesLine"]
      431 GETUPVAL                         R30 0
      432 GETTABLEKS                       R30 R30 K22 ["createElement"]
      434 GETUPVAL                         R31 4
      435 DUPTABLE                         R32 K108 [{["PreText"], ["Count"], ["EnabledColor"], ["DisabledColor"], ["LayoutOrder"] = 2}]
      436 LOADK                            R35 K18 ["UploadDialogContent"]
      437 LOADK                            R36 K109 ["AddTranslationsPretext"]
      438 NAMECALL                         R33 R3 K20 ["getText"]
      440 CALL                             R33 3 1
      441 SETTABLEKS                       R33 R32 K75 ["PreText"]
      443 SETTABLEKS                       R11 R32 K103 ["Count"]
      445 GETTABLEKS                       R33 R2 K62 ["BrightText"]
      447 SETTABLEKS                       R33 R32 K104 ["EnabledColor"]
      449 GETTABLEKS                       R33 R2 K87 ["DimmedText"]
      451 SETTABLEKS                       R33 R32 K105 ["DisabledColor"]
      453 CALL                             R30 2 1
      454 SETTABLEKS                       R30 R29 K97 ["AddTranslationsLine"]
      456 GETUPVAL                         R30 0
      457 GETTABLEKS                       R30 R30 K22 ["createElement"]
      459 GETUPVAL                         R31 4
      460 DUPTABLE                         R32 K110 [{["PreText"], ["Count"], ["EnabledColor"], ["DisabledColor"], ["LayoutOrder"] = 3}]
      461 LOADK                            R35 K18 ["UploadDialogContent"]
      462 LOADK                            R36 K111 ["ChangeTranslationsPretext"]
      463 NAMECALL                         R33 R3 K20 ["getText"]
      465 CALL                             R33 3 1
      466 SETTABLEKS                       R33 R32 K75 ["PreText"]
      468 SETTABLEKS                       R12 R32 K103 ["Count"]
      470 GETTABLEKS                       R33 R2 K62 ["BrightText"]
      472 SETTABLEKS                       R33 R32 K104 ["EnabledColor"]
      474 GETTABLEKS                       R33 R2 K87 ["DimmedText"]
      476 SETTABLEKS                       R33 R32 K105 ["DisabledColor"]
      478 CALL                             R30 2 1
      479 SETTABLEKS                       R30 R29 K98 ["ChangeLine"]
      481 MOVE                             R30 R13
      482 JUMPIFNOT                        R30 ; [+23]
      483 GETUPVAL                         R30 0
      484 GETTABLEKS                       R30 R30 K22 ["createElement"]
      486 GETUPVAL                         R31 4
      487 DUPTABLE                         R32 K112 [{["PreText"], ["Count"], ["EnabledColor"], ["DisabledColor"], ["LayoutOrder"] = 4}]
      488 LOADK                            R35 K18 ["UploadDialogContent"]
      489 LOADK                            R36 K113 ["DeleteEntriesPretext"]
      490 NAMECALL                         R33 R3 K20 ["getText"]
      492 CALL                             R33 3 1
      493 SETTABLEKS                       R33 R32 K75 ["PreText"]
      495 SETTABLEKS                       R14 R32 K103 ["Count"]
      497 GETTABLEKS                       R33 R2 K62 ["BrightText"]
      499 SETTABLEKS                       R33 R32 K104 ["EnabledColor"]
      501 GETTABLEKS                       R33 R2 K87 ["DimmedText"]
      503 SETTABLEKS                       R33 R32 K105 ["DisabledColor"]
      505 CALL                             R30 2 1
      506 SETTABLEKS                       R30 R29 K99 ["DeleteEntriesLine"]
      508 MOVE                             R30 R13
      509 JUMPIFNOT                        R30 ; [+23]
      510 GETUPVAL                         R30 0
      511 GETTABLEKS                       R30 R30 K22 ["createElement"]
      513 GETUPVAL                         R31 4
      514 DUPTABLE                         R32 K115 [{["PreText"], ["Count"], ["EnabledColor"], ["DisabledColor"], ["LayoutOrder"] = 5}]
      515 LOADK                            R35 K18 ["UploadDialogContent"]
      516 LOADK                            R36 K116 ["DeleteTranslationsPretext"]
      517 NAMECALL                         R33 R3 K20 ["getText"]
      519 CALL                             R33 3 1
      520 SETTABLEKS                       R33 R32 K75 ["PreText"]
      522 SETTABLEKS                       R15 R32 K103 ["Count"]
      524 GETTABLEKS                       R33 R2 K62 ["BrightText"]
      526 SETTABLEKS                       R33 R32 K104 ["EnabledColor"]
      528 GETTABLEKS                       R33 R2 K87 ["DimmedText"]
      530 SETTABLEKS                       R33 R32 K105 ["DisabledColor"]
      532 CALL                             R30 2 1
      533 SETTABLEKS                       R30 R29 K100 ["DeleteTranslationsLine"]
      535 LOADB                            R30 0
      536 JUMPIFEQKNIL                     R16 ; [+26]
      538 LOADB                            R30 0
      539 JUMPIFEQKS                       R16 K117 [""] ; [+23]
      541 GETUPVAL                         R30 0
      542 GETTABLEKS                       R30 R30 K22 ["createElement"]
      544 GETUPVAL                         R31 1
      545 DUPTABLE                         R32 K119 [{["Text"], ["Color"], ["LayoutOrder"] = 6}]
      546 GETIMPORT                        R33 K122 [string.format]
      548 LOADK                            R34 K123 ["%s %s"]
      549 LOADK                            R37 K18 ["UploadDialogContent"]
      550 LOADK                            R38 K124 ["AddLanguagesPretext"]
      551 NAMECALL                         R35 R3 K20 ["getText"]
      553 CALL                             R35 3 1
      554 MOVE                             R36 R16
      555 CALL                             R33 3 1
      556 SETTABLEKS                       R33 R32 K60 ["Text"]
      558 GETTABLEKS                       R33 R2 K62 ["BrightText"]
      560 SETTABLEKS                       R33 R32 K59 ["Color"]
      562 CALL                             R30 2 1
      563 SETTABLEKS                       R30 R29 K101 ["AddLanguagesLine"]
      565 CALL                             R26 3 1
      566 SETTABLEKS                       R26 R25 K56 ["ThisPatchWillFrame"]
      568 GETUPVAL                         R26 0
      569 GETTABLEKS                       R26 R26 K22 ["createElement"]
      571 GETUPVAL                         R27 1
      572 DUPTABLE                         R28 K125 [{["Color"], ["LayoutOrder"] = 5, ["Text"]}]
      573 GETTABLEKS                       R29 R2 K62 ["BrightText"]
      575 SETTABLEKS                       R29 R28 K59 ["Color"]
      577 SETTABLEKS                       R17 R28 K60 ["Text"]
      579 CALL                             R26 2 1
      580 SETTABLEKS                       R26 R25 K57 ["Message"]
      582 CALL                             R22 3 1
      583 SETTABLEKS                       R22 R21 K34 ["InfoFrame"]
      585 GETUPVAL                         R22 0
      586 GETTABLEKS                       R22 R22 K22 ["createElement"]
      588 LOADK                            R23 K23 ["Frame"]
      589 DUPTABLE                         R24 K65 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["Size"]}]
      590 GETIMPORT                        R25 K31 [UDim2.new]
      592 LOADN                            R26 1
      593 LOADN                            R27 0
      594 LOADN                            R28 0
      595 GETTABLEKS                       R29 R2 K126 ["ButtonFrameHeight"]
      597 CALL                             R25 4 1
      598 SETTABLEKS                       R25 R24 K26 ["Size"]
      600 DUPTABLE                         R25 K129 [{"Cancel", "Confirm"}]
      601 GETUPVAL                         R26 0
      602 GETTABLEKS                       R26 R26 K22 ["createElement"]
      604 GETUPVAL                         R27 5
      605 DUPTABLE                         R28 K134 [{["LayoutOrder"] = 1, ["OnClick"], ["Position"], ["Size"], ["Style"] = "TextButton", ["Text"]}]
      606 SETTABLEKS                       R4 R28 K130 ["OnClick"]
      608 GETIMPORT                        R29 K31 [UDim2.new]
      610 LOADK                            R30 K135 [0.5]
      611 GETTABLEKS                       R33 R2 K136 ["ButtonWidth"]
      613 MINUS                            R32 R33
      614 GETTABLEKS                       R33 R2 K32 ["Padding"]
      616 SUB                              R31 R32 R33
      617 LOADN                            R32 0
      618 LOADN                            R33 0
      619 CALL                             R29 4 1
      620 SETTABLEKS                       R29 R28 K131 ["Position"]
      622 GETIMPORT                        R29 K31 [UDim2.new]
      624 LOADN                            R30 0
      625 GETTABLEKS                       R31 R2 K136 ["ButtonWidth"]
      627 LOADN                            R32 0
      628 GETTABLEKS                       R33 R2 K137 ["ButtonHeight"]
      630 CALL                             R29 4 1
      631 SETTABLEKS                       R29 R28 K26 ["Size"]
      633 LOADK                            R31 K18 ["UploadDialogContent"]
      634 LOADK                            R32 K138 ["CancelButton"]
      635 NAMECALL                         R29 R3 K20 ["getText"]
      637 CALL                             R29 3 1
      638 SETTABLEKS                       R29 R28 K60 ["Text"]
      640 NEWTABLE                         R29 0 1
      642 GETUPVAL                         R30 0
      643 GETTABLEKS                       R30 R30 K22 ["createElement"]
      645 GETUPVAL                         R31 6
      646 DUPTABLE                         R32 K141 [{["Cursor"] = "PointingHand"}]
      647 CALL                             R30 2 -1
      648 SETLIST                          R29 R30 -1 [1]
      650 CALL                             R26 3 1
      651 SETTABLEKS                       R26 R25 K127 ["Cancel"]
      653 GETUPVAL                         R26 0
      654 GETTABLEKS                       R26 R26 K22 ["createElement"]
      656 GETUPVAL                         R27 5
      657 DUPTABLE                         R28 K143 [{["LayoutOrder"] = 2, ["OnClick"], ["Position"], ["Size"], ["Style"] = "PrimeTextButton", ["Text"]}]
      658 SETTABLEKS                       R5 R28 K130 ["OnClick"]
      660 GETIMPORT                        R29 K31 [UDim2.new]
      662 LOADK                            R30 K135 [0.5]
      663 GETTABLEKS                       R31 R2 K32 ["Padding"]
      665 LOADN                            R32 0
      666 LOADN                            R33 0
      667 CALL                             R29 4 1
      668 SETTABLEKS                       R29 R28 K131 ["Position"]
      670 GETIMPORT                        R29 K31 [UDim2.new]
      672 LOADN                            R30 0
      673 GETTABLEKS                       R31 R2 K136 ["ButtonWidth"]
      675 LOADN                            R32 0
      676 GETTABLEKS                       R33 R2 K137 ["ButtonHeight"]
      678 CALL                             R29 4 1
      679 SETTABLEKS                       R29 R28 K26 ["Size"]
      681 LOADK                            R31 K18 ["UploadDialogContent"]
      682 LOADK                            R32 K144 ["ConfirmButton"]
      683 NAMECALL                         R29 R3 K20 ["getText"]
      685 CALL                             R29 3 1
      686 SETTABLEKS                       R29 R28 K60 ["Text"]
      688 NEWTABLE                         R29 0 1
      690 GETUPVAL                         R30 0
      691 GETTABLEKS                       R30 R30 K22 ["createElement"]
      693 GETUPVAL                         R31 6
      694 DUPTABLE                         R32 K141 [{["Cursor"] = "PointingHand"}]
      695 CALL                             R30 2 -1
      696 SETLIST                          R29 R30 -1 [1]
      698 CALL                             R26 3 1
      699 SETTABLEKS                       R26 R25 K128 ["Confirm"]
      701 CALL                             R22 3 1
      702 SETTABLEKS                       R22 R21 K35 ["ButtonFrame"]
      704 CALL                             R18 3 -1
      705 RETURN                           R18 -1

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
