PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R2 R2 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["ok"] ; [+6]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["OnClose"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["rerun"] ; [+14]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K3 ["ValidationCompleted"]
       12 JUMPIFNOT                        R1 ; [+9]
       13 GETUPVAL                         R1 0
       14 GETTABLEKS                       R1 R1 K4 ["RunValidation"]
       16 CALL                             R1 0 0
       17 GETUPVAL                         R1 0
       18 GETTABLEKS                       R1 R1 K1 ["OnClose"]
       20 CALL                             R1 0 0
       21 RETURN                           R0 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K10 [{["key"], ["AutomaticSize"], ["Size"], ["Text"], ["TextXAlignment"], ["TextSize"], ["TextWrapped"] = True, ["LayoutOrder"]}]
        5 LOADK                            R6 K11 ["Error%*"]
        6 MOVE                             R8 R1
        7 NAMECALL                         R6 R6 K12 ["format"]
        9 CALL                             R6 2 1
       10 MOVE                             R5 R6
       11 SETTABLEKS                       R5 R4 K1 ["key"]
       13 GETIMPORT                        R5 K15 [Enum.AutomaticSize.Y]
       15 SETTABLEKS                       R5 R4 K2 ["AutomaticSize"]
       17 GETIMPORT                        R5 K18 [UDim2.fromScale]
       19 LOADN                            R6 1
       20 LOADN                            R7 0
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K3 ["Size"]
       24 GETTABLEKS                       R6 R0 K19 ["error"]
       26 GETTABLEKS                       R6 R6 K20 ["type"]
       28 JUMPIFNOTEQKS                    R6 K21 ["message"] ; [+6]
       30 GETTABLEKS                       R5 R0 K19 ["error"]
       32 GETTABLEKS                       R5 R5 K21 ["message"]
       34 JUMP                             ; [+37]
       35 GETTABLEKS                       R6 R0 K19 ["error"]
       37 GETTABLEKS                       R6 R6 K20 ["type"]
       39 JUMPIFNOTEQKS                    R6 K22 ["notFound"] ; [+26]
       41 GETUPVAL                         R5 2
       42 LOADK                            R7 K23 ["UGCValidation"]
       43 LOADK                            R8 K24 ["AssetNotFound"]
       44 DUPTABLE                         R9 K26 [{"asset"}]
       45 GETUPVAL                         R10 2
       46 LOADK                            R12 K27 ["AssetType"]
       47 GETTABLEKS                       R14 R0 K28 ["assetType"]
       49 FASTCALL2K                       ASSERT R14 K29 ; [+4]
       51 LOADK                            R15 K29 ["notFound sent with no error type"]
       52 GETIMPORT                        R13 K31 [assert]
       54 CALL                             R13 2 1
       55 GETTABLEKS                       R13 R13 K32 ["Name"]
       57 NAMECALL                         R10 R10 K33 ["getText"]
       59 CALL                             R10 3 1
       60 SETTABLEKS                       R10 R9 K25 ["asset"]
       62 NAMECALL                         R5 R5 K33 ["getText"]
       64 CALL                             R5 4 1
       65 JUMP                             ; [+6]
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R6 R0 K19 ["error"]
       69 GETTABLEKS                       R6 R6 K20 ["type"]
       71 CALL                             R5 1 1
       72 SETTABLEKS                       R5 R4 K4 ["Text"]
       74 GETIMPORT                        R5 K35 [Enum.TextXAlignment.Left]
       76 SETTABLEKS                       R5 R4 K5 ["TextXAlignment"]
       78 GETUPVAL                         R5 4
       79 GETTABLEKS                       R5 R5 K6 ["TextSize"]
       81 SETTABLEKS                       R5 R4 K6 ["TextSize"]
       83 GETUPVAL                         R5 5
       84 NAMECALL                         R5 R5 K36 ["getNextOrder"]
       86 CALL                             R5 1 1
       87 SETTABLEKS                       R5 R4 K9 ["LayoutOrder"]
       89 CALL                             R2 2 -1
       90 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R5 K2 ["UGCValidationErrorDialog"]
       10 NAMECALL                         R3 R3 K1 ["use"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R4 R4 K3 ["useState"]
       16 LOADN                            R5 0
       17 CALL                             R4 1 2
       18 GETUPVAL                         R6 3
       19 GETTABLEKS                       R6 R6 K4 ["useCallback"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R5
       23 NEWTABLE                         R8 0 0
       25 CALL                             R6 2 1
       26 GETUPVAL                         R7 3
       27 GETTABLEKS                       R7 R7 K3 ["useState"]
       29 LOADN                            R8 0
       30 CALL                             R7 1 2
       31 GETUPVAL                         R9 3
       32 GETTABLEKS                       R9 R9 K4 ["useCallback"]
       34 NEWCLOSURE                       R10 P1
       35 CAPTURE                          VAL R8
       36 NEWTABLE                         R11 0 0
       38 CALL                             R9 2 1
       39 GETUPVAL                         R10 3
       40 GETTABLEKS                       R10 R10 K5 ["useContext"]
       42 GETUPVAL                         R11 4
       43 GETTABLEKS                       R11 R11 K6 ["Context"]
       45 CALL                             R10 1 1
       46 GETTABLEKS                       R12 R10 K7 ["canUploadBundles"]
       48 JUMPIFEQKNIL                     R12 ; [+12]
       50 GETTABLEKS                       R12 R10 K7 ["canUploadBundles"]
       52 GETTABLEKS                       R12 R12 K8 ["type"]
       54 JUMPIFNOTEQKS                    R12 K9 ["notAllowed"] ; [+6]
       56 GETTABLEKS                       R11 R10 K7 ["canUploadBundles"]
       58 GETTABLEKS                       R11 R11 K10 ["denyReason"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R11
       62 GETUPVAL                         R12 3
       63 GETTABLEKS                       R12 R12 K11 ["createElement"]
       65 GETUPVAL                         R13 5
       66 DUPTABLE                         R14 K22 [{["Style"] = "CancelAccept", ["Title"], ["MinContentSize"], ["Modal"] = True, ["Resizable"] = True, ["Buttons"], ["OnButtonPressed"], ["OnClose"]}]
       67 LOADK                            R17 K23 ["UGCValidation"]
       68 LOADK                            R18 K24 ["AlertTitle"]
       69 NAMECALL                         R15 R2 K25 ["getText"]
       71 CALL                             R15 3 1
       72 SETTABLEKS                       R15 R14 K14 ["Title"]
       74 GETTABLEKS                       R15 R3 K26 ["AlertMinContentSize"]
       76 SETTABLEKS                       R15 R14 K15 ["MinContentSize"]
       78 NEWTABLE                         R15 0 2
       80 DUPTABLE                         R16 K31 [{["Key"] = "rerun", ["Text"], ["StyleModifier"]}]
       81 LOADK                            R19 K23 ["UGCValidation"]
       82 LOADK                            R20 K32 ["RerunValidation"]
       83 NAMECALL                         R17 R2 K25 ["getText"]
       85 CALL                             R17 3 1
       86 SETTABLEKS                       R17 R16 K29 ["Text"]
       88 GETTABLEKS                       R18 R0 K33 ["ValidationCompleted"]
       90 JUMPIFNOT                        R18 ; [+2]
       91 LOADNIL                          R17
       92 JUMP                             ; [+3]
       93 GETUPVAL                         R17 6
       94 GETTABLEKS                       R17 R17 K34 ["Disabled"]
       96 SETTABLEKS                       R17 R16 K30 ["StyleModifier"]
       98 DUPTABLE                         R17 K36 [{["Key"] = "ok", ["Text"]}]
       99 LOADK                            R20 K23 ["UGCValidation"]
      100 LOADK                            R21 K37 ["OK"]
      101 NAMECALL                         R18 R2 K25 ["getText"]
      103 CALL                             R18 3 1
      104 SETTABLEKS                       R18 R17 K29 ["Text"]
      106 SETLIST                          R15 R16 2 [1]
      108 SETTABLEKS                       R15 R14 K19 ["Buttons"]
      110 NEWCLOSURE                       R15 P2
      111 CAPTURE                          VAL R0
      112 SETTABLEKS                       R15 R14 K20 ["OnButtonPressed"]
      114 GETTABLEKS                       R15 R0 K21 ["OnClose"]
      116 SETTABLEKS                       R15 R14 K21 ["OnClose"]
      118 DUPTABLE                         R15 K39 [{"Contents"}]
      119 GETUPVAL                         R16 3
      120 GETTABLEKS                       R16 R16 K11 ["createElement"]
      122 GETUPVAL                         R17 7
      123 DUPTABLE                         R18 K43 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
      124 GETIMPORT                        R19 K47 [Enum.FillDirection.Horizontal]
      126 SETTABLEKS                       R19 R18 K40 ["Layout"]
      128 GETIMPORT                        R19 K49 [Enum.HorizontalAlignment.Left]
      130 SETTABLEKS                       R19 R18 K41 ["HorizontalAlignment"]
      132 GETIMPORT                        R19 K51 [Enum.VerticalAlignment.Top]
      134 SETTABLEKS                       R19 R18 K42 ["VerticalAlignment"]
      136 DUPTABLE                         R19 K55 [{"LeftColumn", "RightColumn", "Rerun_Disabled"}]
      137 GETUPVAL                         R20 3
      138 GETTABLEKS                       R20 R20 K11 ["createElement"]
      140 GETUPVAL                         R21 7
      141 DUPTABLE                         R22 K58 [{"Size", "LayoutOrder"}]
      142 GETIMPORT                        R23 K61 [UDim2.fromOffset]
      144 GETTABLEKS                       R25 R3 K62 ["TextSize"]
      146 GETTABLEKS                       R26 R3 K63 ["IconTextSpacing"]
      148 ADD                              R24 R25 R26
      149 GETTABLEKS                       R25 R3 K62 ["TextSize"]
      151 CALL                             R23 2 1
      152 SETTABLEKS                       R23 R22 K56 ["Size"]
      154 NAMECALL                         R23 R1 K64 ["getNextOrder"]
      156 CALL                             R23 1 1
      157 SETTABLEKS                       R23 R22 K57 ["LayoutOrder"]
      159 DUPTABLE                         R23 K66 [{"Image"}]
      160 GETUPVAL                         R24 3
      161 GETTABLEKS                       R24 R24 K11 ["createElement"]
      163 GETUPVAL                         R25 8
      164 DUPTABLE                         R26 K68 [{"Image", "ImageColor3", "Size"}]
      165 GETTABLEKS                       R27 R3 K69 ["WarningImage"]
      167 SETTABLEKS                       R27 R26 K65 ["Image"]
      169 GETTABLEKS                       R27 R3 K70 ["WarningColor"]
      171 SETTABLEKS                       R27 R26 K67 ["ImageColor3"]
      173 GETIMPORT                        R27 K61 [UDim2.fromOffset]
      175 GETTABLEKS                       R28 R3 K62 ["TextSize"]
      177 GETTABLEKS                       R29 R3 K62 ["TextSize"]
      179 CALL                             R27 2 1
      180 SETTABLEKS                       R27 R26 K56 ["Size"]
      182 CALL                             R24 2 1
      183 SETTABLEKS                       R24 R23 K65 ["Image"]
      185 CALL                             R20 3 1
      186 SETTABLEKS                       R20 R19 K52 ["LeftColumn"]
      188 GETUPVAL                         R20 3
      189 GETTABLEKS                       R20 R20 K11 ["createElement"]
      191 GETUPVAL                         R21 7
      192 NEWTABLE                         R22 8 0
      194 GETIMPORT                        R23 K71 [UDim2.new]
      196 LOADN                            R24 1
      197 GETTABLEKS                       R26 R3 K62 ["TextSize"]
      199 MINUS                            R25 R26
      200 LOADN                            R26 1
      201 LOADN                            R27 0
      202 CALL                             R23 4 1
      203 SETTABLEKS                       R23 R22 K56 ["Size"]
      205 NAMECALL                         R23 R1 K64 ["getNextOrder"]
      207 CALL                             R23 1 1
      208 SETTABLEKS                       R23 R22 K57 ["LayoutOrder"]
      210 GETIMPORT                        R23 K73 [Enum.FillDirection.Vertical]
      212 SETTABLEKS                       R23 R22 K40 ["Layout"]
      214 GETTABLEKS                       R23 R3 K74 ["TitleDetailsSpacing"]
      216 SETTABLEKS                       R23 R22 K75 ["Spacing"]
      218 GETIMPORT                        R23 K49 [Enum.HorizontalAlignment.Left]
      220 SETTABLEKS                       R23 R22 K41 ["HorizontalAlignment"]
      222 GETIMPORT                        R23 K51 [Enum.VerticalAlignment.Top]
      224 SETTABLEKS                       R23 R22 K42 ["VerticalAlignment"]
      226 GETUPVAL                         R23 3
      227 GETTABLEKS                       R23 R23 K76 ["Change"]
      229 GETTABLEKS                       R23 R23 K77 ["AbsoluteSize"]
      231 SETTABLE                         R6 R22 R23
      232 DUPTABLE                         R23 K80 [{"WarningLabel", "Warnings"}]
      233 GETUPVAL                         R24 3
      234 GETTABLEKS                       R24 R24 K11 ["createElement"]
      236 GETUPVAL                         R25 9
      237 DUPTABLE                         R26 K86 [{["AutomaticSize"], ["Font"], ["Size"], ["Text"], ["TextColor"], ["TextSize"], ["TextXAlignment"], ["TextWrapped"] = True}]
      238 GETIMPORT                        R27 K88 [Enum.AutomaticSize.Y]
      240 SETTABLEKS                       R27 R26 K81 ["AutomaticSize"]
      242 GETTABLEKS                       R27 R3 K89 ["WarningFont"]
      244 SETTABLEKS                       R27 R26 K82 ["Font"]
      246 GETIMPORT                        R27 K91 [UDim2.fromScale]
      248 LOADN                            R28 1
      249 LOADN                            R29 0
      250 CALL                             R27 2 1
      251 SETTABLEKS                       R27 R26 K56 ["Size"]
      253 GETUPVAL                         R27 10
      254 MOVE                             R28 R2
      255 LOADK                            R29 K23 ["UGCValidation"]
      256 LOADK                            R30 K92 ["WarningLongTitle"]
      257 GETTABLEKS                       R33 R0 K93 ["Errors"]
      259 LENGTH                           R32 R33
      260 JUMPIFNOTEQKNIL                  R11 ; [+3]
      262 LOADN                            R33 0
      263 JUMP                             ; [+1]
      264 LOADN                            R33 1
      265 ADD                              R31 R32 R33
      266 CALL                             R27 4 1
      267 SETTABLEKS                       R27 R26 K29 ["Text"]
      269 GETTABLEKS                       R27 R3 K70 ["WarningColor"]
      271 SETTABLEKS                       R27 R26 K83 ["TextColor"]
      273 GETTABLEKS                       R27 R3 K62 ["TextSize"]
      275 SETTABLEKS                       R27 R26 K62 ["TextSize"]
      277 GETIMPORT                        R27 K94 [Enum.TextXAlignment.Left]
      279 SETTABLEKS                       R27 R26 K84 ["TextXAlignment"]
      281 CALL                             R24 2 1
      282 SETTABLEKS                       R24 R23 K78 ["WarningLabel"]
      284 GETUPVAL                         R24 3
      285 GETTABLEKS                       R24 R24 K11 ["createElement"]
      287 GETUPVAL                         R25 11
      288 NEWTABLE                         R26 8 0
      290 GETIMPORT                        R27 K88 [Enum.AutomaticSize.Y]
      292 SETTABLEKS                       R27 R26 K95 ["AutomaticCanvasSize"]
      294 GETIMPORT                        R27 K71 [UDim2.new]
      296 LOADN                            R28 1
      297 LOADN                            R29 0
      298 LOADN                            R30 0
      299 SUB                              R31 R4 R7
      300 CALL                             R27 4 1
      301 SETTABLEKS                       R27 R26 K56 ["Size"]
      303 GETIMPORT                        R27 K73 [Enum.FillDirection.Vertical]
      305 SETTABLEKS                       R27 R26 K40 ["Layout"]
      307 GETIMPORT                        R27 K97 [UDim.new]
      309 LOADN                            R28 0
      310 GETTABLEKS                       R29 R3 K98 ["DetailsSpacing"]
      312 CALL                             R27 2 1
      313 SETTABLEKS                       R27 R26 K75 ["Spacing"]
      315 GETUPVAL                         R27 3
      316 GETTABLEKS                       R27 R27 K76 ["Change"]
      318 GETTABLEKS                       R27 R27 K99 ["AbsolutePosition"]
      320 SETTABLE                         R9 R26 R27
      321 NEWTABLE                         R27 0 2
      323 MOVE                             R28 R11
      324 JUMPIFNOT                        R28 ; [+141]
      325 GETUPVAL                         R28 3
      326 GETTABLEKS                       R28 R28 K11 ["createElement"]
      328 GETUPVAL                         R29 3
      329 GETTABLEKS                       R29 R29 K100 ["Fragment"]
      331 NEWTABLE                         R30 0 0
      333 DUPTABLE                         R31 K103 [{"Header", "ErrorText"}]
      334 GETUPVAL                         R32 3
      335 GETTABLEKS                       R32 R32 K11 ["createElement"]
      337 GETUPVAL                         R33 9
      338 DUPTABLE                         R34 K105 [{["Text"], ["Style"] = "Bold", ["AutomaticSize"], ["Size"], ["TextXAlignment"], ["TextSize"], ["TextWrapped"] = True, ["LayoutOrder"]}]
      339 LOADK                            R37 K23 ["UGCValidation"]
      340 LOADK                            R38 K106 ["PermissionsRequiredHeader"]
      341 NAMECALL                         R35 R2 K25 ["getText"]
      343 CALL                             R35 3 1
      344 SETTABLEKS                       R35 R34 K29 ["Text"]
      346 GETIMPORT                        R35 K88 [Enum.AutomaticSize.Y]
      348 SETTABLEKS                       R35 R34 K81 ["AutomaticSize"]
      350 GETIMPORT                        R35 K91 [UDim2.fromScale]
      352 LOADN                            R36 1
      353 LOADN                            R37 0
      354 CALL                             R35 2 1
      355 SETTABLEKS                       R35 R34 K56 ["Size"]
      357 GETIMPORT                        R35 K94 [Enum.TextXAlignment.Left]
      359 SETTABLEKS                       R35 R34 K84 ["TextXAlignment"]
      361 GETTABLEKS                       R35 R3 K62 ["TextSize"]
      363 SETTABLEKS                       R35 R34 K62 ["TextSize"]
      365 NAMECALL                         R35 R1 K64 ["getNextOrder"]
      367 CALL                             R35 1 1
      368 SETTABLEKS                       R35 R34 K57 ["LayoutOrder"]
      370 CALL                             R32 2 1
      371 SETTABLEKS                       R32 R31 K101 ["Header"]
      373 GETUPVAL                         R32 3
      374 GETTABLEKS                       R32 R32 K11 ["createElement"]
      376 GETUPVAL                         R33 12
      377 DUPTABLE                         R34 K109 [{"LayoutOrder", "Text", "TextProps", "HorizontalAlignment", "LinkMap"}]
      378 NAMECALL                         R35 R1 K64 ["getNextOrder"]
      380 CALL                             R35 1 1
      381 SETTABLEKS                       R35 R34 K57 ["LayoutOrder"]
      383 JUMPIFNOTEQKS                    R11 K110 ["MissingIdVerification"] ; [+7]
      385 LOADK                            R37 K23 ["UGCValidation"]
      386 LOADK                            R38 K111 ["UploadBundleDenied_MissingIdVerification_Text"]
      387 NAMECALL                         R35 R2 K25 ["getText"]
      389 CALL                             R35 3 1
      390 JUMP                             ; [+16]
      391 JUMPIFNOTEQKS                    R11 K112 ["MissingPremiumSubscriptionTier"] ; [+7]
      393 LOADK                            R37 K23 ["UGCValidation"]
      394 LOADK                            R38 K113 ["UploadBundleDenied_MissingPremiumSubscriptionTier_Text"]
      395 NAMECALL                         R35 R2 K25 ["getText"]
      397 CALL                             R35 3 1
      398 JUMP                             ; [+8]
      399 LOADK                            R37 K23 ["UGCValidation"]
      400 LOADK                            R38 K114 ["UploadBundleDenied_UnknownError"]
      401 DUPTABLE                         R39 K116 [{"errorCode"}]
      402 SETTABLEKS                       R11 R39 K115 ["errorCode"]
      404 NAMECALL                         R35 R2 K25 ["getText"]
      406 CALL                             R35 4 1
      407 SETTABLEKS                       R35 R34 K29 ["Text"]
      409 DUPTABLE                         R35 K117 [{"Font", "TextSize", "TextXAlignment"}]
      410 GETIMPORT                        R36 K119 [Enum.Font.SourceSans]
      412 SETTABLEKS                       R36 R35 K82 ["Font"]
      414 GETTABLEKS                       R36 R3 K62 ["TextSize"]
      416 SETTABLEKS                       R36 R35 K62 ["TextSize"]
      418 GETIMPORT                        R36 K94 [Enum.TextXAlignment.Left]
      420 SETTABLEKS                       R36 R35 K84 ["TextXAlignment"]
      422 SETTABLEKS                       R35 R34 K107 ["TextProps"]
      424 GETIMPORT                        R35 K49 [Enum.HorizontalAlignment.Left]
      426 SETTABLEKS                       R35 R34 K41 ["HorizontalAlignment"]
      428 NEWTABLE                         R35 2 0
      430 DUPTABLE                         R36 K122 [{"LinkText", "LinkCallback"}]
      431 LOADK                            R39 K23 ["UGCValidation"]
      432 LOADK                            R40 K123 ["UploadBundleDenied_MissingIdVerification_Link"]
      433 NAMECALL                         R37 R2 K25 ["getText"]
      435 CALL                             R37 3 1
      436 SETTABLEKS                       R37 R36 K120 ["LinkText"]
      438 DUPCLOSURE                       R37 K124 [PROTO_3]
      439 CAPTURE                          UPVAL U13
      440 CAPTURE                          UPVAL U14
      441 SETTABLEKS                       R37 R36 K121 ["LinkCallback"]
      443 SETTABLEKS                       R36 R35 K125 ["[Age_Verified]"]
      445 DUPTABLE                         R36 K122 [{"LinkText", "LinkCallback"}]
      446 LOADK                            R39 K23 ["UGCValidation"]
      447 LOADK                            R40 K126 ["UploadBundleDenied_MissingPremiumSubscriptionTier_Link"]
      448 NAMECALL                         R37 R2 K25 ["getText"]
      450 CALL                             R37 3 1
      451 SETTABLEKS                       R37 R36 K120 ["LinkText"]
      453 DUPCLOSURE                       R37 K127 [PROTO_4]
      454 CAPTURE                          UPVAL U13
      455 CAPTURE                          UPVAL U15
      456 SETTABLEKS                       R37 R36 K121 ["LinkCallback"]
      458 SETTABLEKS                       R36 R35 K128 ["[Premium_1000_Or_2200_Subscription]"]
      460 SETTABLEKS                       R35 R34 K108 ["LinkMap"]
      462 CALL                             R32 2 1
      463 SETTABLEKS                       R32 R31 K102 ["ErrorText"]
      465 CALL                             R28 3 1
      466 LOADB                            R29 0
      467 GETTABLEKS                       R31 R0 K93 ["Errors"]
      469 LENGTH                           R30 R31
      470 LOADN                            R31 0
      471 JUMPIFNOTLT                      R31 R30 ; [+63]
      473 GETUPVAL                         R29 3
      474 GETTABLEKS                       R29 R29 K11 ["createElement"]
      476 GETUPVAL                         R30 3
      477 GETTABLEKS                       R30 R30 K100 ["Fragment"]
      479 NEWTABLE                         R31 0 0
      481 DUPTABLE                         R32 K129 [{"Header"}]
      482 GETUPVAL                         R33 3
      483 GETTABLEKS                       R33 R33 K11 ["createElement"]
      485 GETUPVAL                         R34 9
      486 DUPTABLE                         R35 K105 [{["Text"], ["Style"] = "Bold", ["AutomaticSize"], ["Size"], ["TextXAlignment"], ["TextSize"], ["TextWrapped"] = True, ["LayoutOrder"]}]
      487 LOADK                            R38 K23 ["UGCValidation"]
      488 LOADK                            R39 K130 ["ValidationErrorsHeader"]
      489 NAMECALL                         R36 R2 K25 ["getText"]
      491 CALL                             R36 3 1
      492 SETTABLEKS                       R36 R35 K29 ["Text"]
      494 GETIMPORT                        R36 K88 [Enum.AutomaticSize.Y]
      496 SETTABLEKS                       R36 R35 K81 ["AutomaticSize"]
      498 GETIMPORT                        R36 K91 [UDim2.fromScale]
      500 LOADN                            R37 1
      501 LOADN                            R38 0
      502 CALL                             R36 2 1
      503 SETTABLEKS                       R36 R35 K56 ["Size"]
      505 GETIMPORT                        R36 K94 [Enum.TextXAlignment.Left]
      507 SETTABLEKS                       R36 R35 K84 ["TextXAlignment"]
      509 GETTABLEKS                       R36 R3 K62 ["TextSize"]
      511 SETTABLEKS                       R36 R35 K62 ["TextSize"]
      513 NAMECALL                         R36 R1 K64 ["getNextOrder"]
      515 CALL                             R36 1 1
      516 SETTABLEKS                       R36 R35 K57 ["LayoutOrder"]
      518 CALL                             R33 2 1
      519 SETTABLEKS                       R33 R32 K101 ["Header"]
      521 GETUPVAL                         R33 16
      522 GETTABLEKS                       R33 R33 K131 ["map"]
      524 GETTABLEKS                       R34 R0 K93 ["Errors"]
      526 NEWCLOSURE                       R35 P5
      527 CAPTURE                          UPVAL U3
      528 CAPTURE                          UPVAL U9
      529 CAPTURE                          VAL R2
      530 CAPTURE                          UPVAL U17
      531 CAPTURE                          VAL R3
      532 CAPTURE                          VAL R1
      533 CALL                             R33 2 -1
      534 CALL                             R29 -1 1
      535 SETLIST                          R27 R28 2 [1]
      537 CALL                             R24 3 1
      538 SETTABLEKS                       R24 R23 K79 ["Warnings"]
      540 CALL                             R20 3 1
      541 SETTABLEKS                       R20 R19 K53 ["RightColumn"]
      543 GETTABLEKS                       R21 R0 K33 ["ValidationCompleted"]
      545 NOT                              R20 R21
      546 JUMPIFNOT                        R20 ; [+5]
      547 GETUPVAL                         R20 3
      548 GETTABLEKS                       R20 R20 K11 ["createElement"]
      550 LOADK                            R21 K132 ["Folder"]
      551 CALL                             R20 1 1
      552 SETTABLEKS                       R20 R19 K54 ["Rerun_Disabled"]
      554 CALL                             R16 3 1
      555 SETTABLEKS                       R16 R15 K38 ["Contents"]
      557 CALL                             R12 3 -1
      558 RETURN                           R12 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["BrowserService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AvatarCompatibilityPreviewer"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R6 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R6 K14 ["UGCValidation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R7 R1 K15 ["Src"]
       45 GETTABLEKS                       R7 R7 K16 ["Components"]
       47 GETTABLEKS                       R7 R7 K17 ["UGCValidationContext"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R8 R1 K15 ["Src"]
       54 GETTABLEKS                       R8 R8 K18 ["Resources"]
       56 GETTABLEKS                       R8 R8 K19 ["Theme"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R9 R1 K15 ["Src"]
       63 GETTABLEKS                       R9 R9 K20 ["Util"]
       65 GETTABLEKS                       R9 R9 K21 ["exhaustiveMatch"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R10 R1 K15 ["Src"]
       72 GETTABLEKS                       R10 R10 K20 ["Util"]
       74 GETTABLEKS                       R10 R10 K22 ["localizePlural"]
       76 CALL                             R9 1 1
       77 GETIMPORT                        R10 K1 [game]
       79 LOADK                            R12 K23 ["AvatarPreviewerAgeIDVerificationLink"]
       80 LOADK                            R13 K24 ["https://en.help.roblox.com/hc/en-us/articles/4407282410644-Age-ID-Verification"]
       81 NAMECALL                         R10 R10 K25 ["DefineFastString"]
       83 CALL                             R10 3 1
       84 GETIMPORT                        R11 K1 [game]
       86 LOADK                            R13 K26 ["AvatarPreviewerPremiumLink"]
       87 LOADK                            R14 K27 ["https://www.roblox.com/premium/membership"]
       88 NAMECALL                         R11 R11 K25 ["DefineFastString"]
       90 CALL                             R11 3 1
       91 GETTABLEKS                       R12 R3 K28 ["UI"]
       93 GETTABLEKS                       R13 R12 K29 ["Image"]
       95 GETTABLEKS                       R14 R12 K30 ["TextLabel"]
       97 GETTABLEKS                       R15 R12 K31 ["TextWithLinks"]
       99 GETTABLEKS                       R16 R12 K32 ["Pane"]
      101 GETTABLEKS                       R17 R12 K33 ["ScrollingFrame"]
      103 GETTABLEKS                       R18 R12 K34 ["StyledDialog"]
      105 GETTABLEKS                       R19 R3 K20 ["Util"]
      107 GETTABLEKS                       R19 R19 K35 ["LayoutOrderIterator"]
      109 GETTABLEKS                       R20 R3 K20 ["Util"]
      111 GETTABLEKS                       R20 R20 K36 ["StyleModifier"]
      113 GETTABLEKS                       R21 R3 K37 ["ContextServices"]
      115 GETTABLEKS                       R21 R21 K38 ["Localization"]
      117 GETTABLEKS                       R22 R3 K37 ["ContextServices"]
      119 GETTABLEKS                       R22 R22 K39 ["Stylizer"]
      121 DUPCLOSURE                       R23 K40 [PROTO_6]
      122 CAPTURE                          VAL R19
      123 CAPTURE                          VAL R21
      124 CAPTURE                          VAL R22
      125 CAPTURE                          VAL R4
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R18
      128 CAPTURE                          VAL R20
      129 CAPTURE                          VAL R16
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R14
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R17
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R0
      136 CAPTURE                          VAL R10
      137 CAPTURE                          VAL R11
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R8
      140 RETURN                           R23 1
