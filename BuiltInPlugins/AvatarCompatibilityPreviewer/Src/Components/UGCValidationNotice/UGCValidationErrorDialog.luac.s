PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteSize"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsolutePosition"]
        3 GETTABLEKS                       R2 R3 K1 ["Y"]
        5 CALL                             R1 1 0
        6 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOTEQKS                    R0 K0 ["ok"] ; [+6]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K1 ["OnClose"]
        5 CALL                             R1 0 0
        6 RETURN                           R0 0
        7 JUMPIFNOTEQKS                    R0 K2 ["rerun"] ; [+14]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R1 R2 K3 ["ValidationCompleted"]
       12 JUMPIFNOT                        R1 ; [+9]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K4 ["RunValidation"]
       16 CALL                             R1 0 0
       17 GETUPVAL                         R2 0
       18 GETTABLEKS                       R1 R2 K1 ["OnClose"]
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
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K9 [{"key", "AutomaticSize", "Size", "Text", "TextXAlignment", "TextSize", "TextWrapped", "LayoutOrder"}]
        5 LOADK                            R6 K10 ["Error%*"]
        6 MOVE                             R8 R1
        7 NAMECALL                         R6 R6 K11 ["format"]
        9 CALL                             R6 2 1
       10 MOVE                             R5 R6
       11 SETTABLEKS                       R5 R4 K1 ["key"]
       13 GETIMPORT                        R5 K14 [Enum.AutomaticSize.Y]
       15 SETTABLEKS                       R5 R4 K2 ["AutomaticSize"]
       17 GETIMPORT                        R5 K17 [UDim2.fromScale]
       19 LOADN                            R6 1
       20 LOADN                            R7 0
       21 CALL                             R5 2 1
       22 SETTABLEKS                       R5 R4 K3 ["Size"]
       24 GETTABLEKS                       R7 R0 K18 ["error"]
       26 GETTABLEKS                       R6 R7 K19 ["type"]
       28 JUMPIFNOTEQKS                    R6 K20 ["message"] ; [+6]
       30 GETTABLEKS                       R6 R0 K18 ["error"]
       32 GETTABLEKS                       R5 R6 K20 ["message"]
       34 JUMP                             ; [+37]
       35 GETTABLEKS                       R7 R0 K18 ["error"]
       37 GETTABLEKS                       R6 R7 K19 ["type"]
       39 JUMPIFNOTEQKS                    R6 K21 ["notFound"] ; [+26]
       41 GETUPVAL                         R5 2
       42 LOADK                            R7 K22 ["UGCValidation"]
       43 LOADK                            R8 K23 ["AssetNotFound"]
       44 DUPTABLE                         R9 K25 [{"asset"}]
       45 GETUPVAL                         R10 2
       46 LOADK                            R12 K26 ["AssetType"]
       47 GETTABLEKS                       R15 R0 K27 ["assetType"]
       49 FASTCALL2K                       ASSERT R15 K28 ; [+4]
       51 LOADK                            R16 K28 ["notFound sent with no error type"]
       52 GETIMPORT                        R14 K30 [assert]
       54 CALL                             R14 2 1
       55 GETTABLEKS                       R13 R14 K31 ["Name"]
       57 NAMECALL                         R10 R10 K32 ["getText"]
       59 CALL                             R10 3 1
       60 SETTABLEKS                       R10 R9 K24 ["asset"]
       62 NAMECALL                         R5 R5 K32 ["getText"]
       64 CALL                             R5 4 1
       65 JUMP                             ; [+6]
       66 GETUPVAL                         R5 3
       67 GETTABLEKS                       R7 R0 K18 ["error"]
       69 GETTABLEKS                       R6 R7 K19 ["type"]
       71 CALL                             R5 1 1
       72 SETTABLEKS                       R5 R4 K4 ["Text"]
       74 GETIMPORT                        R5 K34 [Enum.TextXAlignment.Left]
       76 SETTABLEKS                       R5 R4 K5 ["TextXAlignment"]
       78 GETUPVAL                         R6 4
       79 GETTABLEKS                       R5 R6 K6 ["TextSize"]
       81 SETTABLEKS                       R5 R4 K6 ["TextSize"]
       83 LOADB                            R5 1
       84 SETTABLEKS                       R5 R4 K7 ["TextWrapped"]
       86 GETUPVAL                         R5 5
       87 NAMECALL                         R5 R5 K35 ["getNextOrder"]
       89 CALL                             R5 1 1
       90 SETTABLEKS                       R5 R4 K8 ["LayoutOrder"]
       92 CALL                             R2 2 -1
       93 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["new"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 NAMECALL                         R2 R2 K1 ["use"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 LOADK                            R5 K2 ["UGCValidationErrorDialog"]
       10 NAMECALL                         R3 R3 K1 ["use"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R4 R5 K3 ["useState"]
       16 LOADN                            R5 0
       17 CALL                             R4 1 2
       18 GETUPVAL                         R7 3
       19 GETTABLEKS                       R6 R7 K4 ["useCallback"]
       21 NEWCLOSURE                       R7 P0
       22 CAPTURE                          VAL R5
       23 NEWTABLE                         R8 0 0
       25 CALL                             R6 2 1
       26 GETUPVAL                         R8 3
       27 GETTABLEKS                       R7 R8 K3 ["useState"]
       29 LOADN                            R8 0
       30 CALL                             R7 1 2
       31 GETUPVAL                         R10 3
       32 GETTABLEKS                       R9 R10 K4 ["useCallback"]
       34 NEWCLOSURE                       R10 P1
       35 CAPTURE                          VAL R8
       36 NEWTABLE                         R11 0 0
       38 CALL                             R9 2 1
       39 GETUPVAL                         R11 3
       40 GETTABLEKS                       R10 R11 K5 ["useContext"]
       42 GETUPVAL                         R12 4
       43 GETTABLEKS                       R11 R12 K6 ["Context"]
       45 CALL                             R10 1 1
       46 GETTABLEKS                       R12 R10 K7 ["canUploadBundles"]
       48 JUMPIFEQKNIL                     R12 ; [+12]
       50 GETTABLEKS                       R13 R10 K7 ["canUploadBundles"]
       52 GETTABLEKS                       R12 R13 K8 ["type"]
       54 JUMPIFNOTEQKS                    R12 K9 ["notAllowed"] ; [+6]
       56 GETTABLEKS                       R12 R10 K7 ["canUploadBundles"]
       58 GETTABLEKS                       R11 R12 K10 ["denyReason"]
       60 JUMP                             ; [+1]
       61 LOADNIL                          R11
       62 GETUPVAL                         R13 3
       63 GETTABLEKS                       R12 R13 K11 ["createElement"]
       65 GETUPVAL                         R13 5
       66 DUPTABLE                         R14 K20 [{"Style", "Title", "MinContentSize", "Modal", "Resizable", "Buttons", "OnButtonPressed", "OnClose"}]
       67 LOADK                            R15 K21 ["CancelAccept"]
       68 SETTABLEKS                       R15 R14 K12 ["Style"]
       70 LOADK                            R17 K22 ["UGCValidation"]
       71 LOADK                            R18 K23 ["AlertTitle"]
       72 NAMECALL                         R15 R2 K24 ["getText"]
       74 CALL                             R15 3 1
       75 SETTABLEKS                       R15 R14 K13 ["Title"]
       77 GETTABLEKS                       R15 R3 K25 ["AlertMinContentSize"]
       79 SETTABLEKS                       R15 R14 K14 ["MinContentSize"]
       81 LOADB                            R15 1
       82 SETTABLEKS                       R15 R14 K15 ["Modal"]
       84 LOADB                            R15 1
       85 SETTABLEKS                       R15 R14 K16 ["Resizable"]
       87 NEWTABLE                         R15 0 2
       89 DUPTABLE                         R16 K29 [{"Key", "Text", "StyleModifier"}]
       90 LOADK                            R17 K30 ["rerun"]
       91 SETTABLEKS                       R17 R16 K26 ["Key"]
       93 LOADK                            R19 K22 ["UGCValidation"]
       94 LOADK                            R20 K31 ["RerunValidation"]
       95 NAMECALL                         R17 R2 K24 ["getText"]
       97 CALL                             R17 3 1
       98 SETTABLEKS                       R17 R16 K27 ["Text"]
      100 GETTABLEKS                       R18 R0 K32 ["ValidationCompleted"]
      102 JUMPIFNOT                        R18 ; [+2]
      103 LOADNIL                          R17
      104 JUMP                             ; [+3]
      105 GETUPVAL                         R18 6
      106 GETTABLEKS                       R17 R18 K33 ["Disabled"]
      108 SETTABLEKS                       R17 R16 K28 ["StyleModifier"]
      110 DUPTABLE                         R17 K34 [{"Key", "Text"}]
      111 LOADK                            R18 K35 ["ok"]
      112 SETTABLEKS                       R18 R17 K26 ["Key"]
      114 LOADK                            R20 K22 ["UGCValidation"]
      115 LOADK                            R21 K36 ["OK"]
      116 NAMECALL                         R18 R2 K24 ["getText"]
      118 CALL                             R18 3 1
      119 SETTABLEKS                       R18 R17 K27 ["Text"]
      121 SETLIST                          R15 R16 2 [1]
      123 SETTABLEKS                       R15 R14 K17 ["Buttons"]
      125 NEWCLOSURE                       R15 P2
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R15 R14 K18 ["OnButtonPressed"]
      129 GETTABLEKS                       R15 R0 K19 ["OnClose"]
      131 SETTABLEKS                       R15 R14 K19 ["OnClose"]
      133 DUPTABLE                         R15 K38 [{"Contents"}]
      134 GETUPVAL                         R17 3
      135 GETTABLEKS                       R16 R17 K11 ["createElement"]
      137 GETUPVAL                         R17 7
      138 DUPTABLE                         R18 K42 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
      139 GETIMPORT                        R19 K46 [Enum.FillDirection.Horizontal]
      141 SETTABLEKS                       R19 R18 K39 ["Layout"]
      143 GETIMPORT                        R19 K48 [Enum.HorizontalAlignment.Left]
      145 SETTABLEKS                       R19 R18 K40 ["HorizontalAlignment"]
      147 GETIMPORT                        R19 K50 [Enum.VerticalAlignment.Top]
      149 SETTABLEKS                       R19 R18 K41 ["VerticalAlignment"]
      151 DUPTABLE                         R19 K54 [{"LeftColumn", "RightColumn", "Rerun_Disabled"}]
      152 GETUPVAL                         R21 3
      153 GETTABLEKS                       R20 R21 K11 ["createElement"]
      155 GETUPVAL                         R21 7
      156 DUPTABLE                         R22 K57 [{"Size", "LayoutOrder"}]
      157 GETIMPORT                        R23 K60 [UDim2.fromOffset]
      159 GETTABLEKS                       R25 R3 K61 ["TextSize"]
      161 GETTABLEKS                       R26 R3 K62 ["IconTextSpacing"]
      163 ADD                              R24 R25 R26
      164 GETTABLEKS                       R25 R3 K61 ["TextSize"]
      166 CALL                             R23 2 1
      167 SETTABLEKS                       R23 R22 K55 ["Size"]
      169 NAMECALL                         R23 R1 K63 ["getNextOrder"]
      171 CALL                             R23 1 1
      172 SETTABLEKS                       R23 R22 K56 ["LayoutOrder"]
      174 DUPTABLE                         R23 K65 [{"Image"}]
      175 GETUPVAL                         R25 3
      176 GETTABLEKS                       R24 R25 K11 ["createElement"]
      178 GETUPVAL                         R25 8
      179 DUPTABLE                         R26 K67 [{"Image", "ImageColor3", "Size"}]
      180 GETTABLEKS                       R27 R3 K68 ["WarningImage"]
      182 SETTABLEKS                       R27 R26 K64 ["Image"]
      184 GETTABLEKS                       R27 R3 K69 ["WarningColor"]
      186 SETTABLEKS                       R27 R26 K66 ["ImageColor3"]
      188 GETIMPORT                        R27 K60 [UDim2.fromOffset]
      190 GETTABLEKS                       R28 R3 K61 ["TextSize"]
      192 GETTABLEKS                       R29 R3 K61 ["TextSize"]
      194 CALL                             R27 2 1
      195 SETTABLEKS                       R27 R26 K55 ["Size"]
      197 CALL                             R24 2 1
      198 SETTABLEKS                       R24 R23 K64 ["Image"]
      200 CALL                             R20 3 1
      201 SETTABLEKS                       R20 R19 K51 ["LeftColumn"]
      203 GETUPVAL                         R21 3
      204 GETTABLEKS                       R20 R21 K11 ["createElement"]
      206 GETUPVAL                         R21 7
      207 NEWTABLE                         R22 8 0
      209 GETIMPORT                        R23 K70 [UDim2.new]
      211 LOADN                            R24 1
      212 GETTABLEKS                       R26 R3 K61 ["TextSize"]
      214 MINUS                            R25 R26
      215 LOADN                            R26 1
      216 LOADN                            R27 0
      217 CALL                             R23 4 1
      218 SETTABLEKS                       R23 R22 K55 ["Size"]
      220 NAMECALL                         R23 R1 K63 ["getNextOrder"]
      222 CALL                             R23 1 1
      223 SETTABLEKS                       R23 R22 K56 ["LayoutOrder"]
      225 GETIMPORT                        R23 K72 [Enum.FillDirection.Vertical]
      227 SETTABLEKS                       R23 R22 K39 ["Layout"]
      229 GETTABLEKS                       R23 R3 K73 ["TitleDetailsSpacing"]
      231 SETTABLEKS                       R23 R22 K74 ["Spacing"]
      233 GETIMPORT                        R23 K48 [Enum.HorizontalAlignment.Left]
      235 SETTABLEKS                       R23 R22 K40 ["HorizontalAlignment"]
      237 GETIMPORT                        R23 K50 [Enum.VerticalAlignment.Top]
      239 SETTABLEKS                       R23 R22 K41 ["VerticalAlignment"]
      241 GETUPVAL                         R25 3
      242 GETTABLEKS                       R24 R25 K75 ["Change"]
      244 GETTABLEKS                       R23 R24 K76 ["AbsoluteSize"]
      246 SETTABLE                         R6 R22 R23
      247 DUPTABLE                         R23 K79 [{"WarningLabel", "Warnings"}]
      248 GETUPVAL                         R25 3
      249 GETTABLEKS                       R24 R25 K11 ["createElement"]
      251 GETUPVAL                         R25 9
      252 DUPTABLE                         R26 K85 [{"AutomaticSize", "Font", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextWrapped"}]
      253 GETIMPORT                        R27 K87 [Enum.AutomaticSize.Y]
      255 SETTABLEKS                       R27 R26 K80 ["AutomaticSize"]
      257 GETTABLEKS                       R27 R3 K88 ["WarningFont"]
      259 SETTABLEKS                       R27 R26 K81 ["Font"]
      261 GETIMPORT                        R27 K90 [UDim2.fromScale]
      263 LOADN                            R28 1
      264 LOADN                            R29 0
      265 CALL                             R27 2 1
      266 SETTABLEKS                       R27 R26 K55 ["Size"]
      268 GETUPVAL                         R27 10
      269 MOVE                             R28 R2
      270 LOADK                            R29 K22 ["UGCValidation"]
      271 LOADK                            R30 K91 ["WarningLongTitle"]
      272 GETTABLEKS                       R33 R0 K92 ["Errors"]
      274 LENGTH                           R32 R33
      275 JUMPIFNOTEQKNIL                  R11 ; [+3]
      277 LOADN                            R33 0
      278 JUMP                             ; [+1]
      279 LOADN                            R33 1
      280 ADD                              R31 R32 R33
      281 CALL                             R27 4 1
      282 SETTABLEKS                       R27 R26 K27 ["Text"]
      284 GETTABLEKS                       R27 R3 K69 ["WarningColor"]
      286 SETTABLEKS                       R27 R26 K82 ["TextColor"]
      288 GETTABLEKS                       R27 R3 K61 ["TextSize"]
      290 SETTABLEKS                       R27 R26 K61 ["TextSize"]
      292 GETIMPORT                        R27 K93 [Enum.TextXAlignment.Left]
      294 SETTABLEKS                       R27 R26 K83 ["TextXAlignment"]
      296 LOADB                            R27 1
      297 SETTABLEKS                       R27 R26 K84 ["TextWrapped"]
      299 CALL                             R24 2 1
      300 SETTABLEKS                       R24 R23 K77 ["WarningLabel"]
      302 GETUPVAL                         R25 3
      303 GETTABLEKS                       R24 R25 K11 ["createElement"]
      305 GETUPVAL                         R25 11
      306 NEWTABLE                         R26 8 0
      308 GETIMPORT                        R27 K87 [Enum.AutomaticSize.Y]
      310 SETTABLEKS                       R27 R26 K94 ["AutomaticCanvasSize"]
      312 GETIMPORT                        R27 K70 [UDim2.new]
      314 LOADN                            R28 1
      315 LOADN                            R29 0
      316 LOADN                            R30 0
      317 SUB                              R31 R4 R7
      318 CALL                             R27 4 1
      319 SETTABLEKS                       R27 R26 K55 ["Size"]
      321 GETIMPORT                        R27 K72 [Enum.FillDirection.Vertical]
      323 SETTABLEKS                       R27 R26 K39 ["Layout"]
      325 GETIMPORT                        R27 K96 [UDim.new]
      327 LOADN                            R28 0
      328 GETTABLEKS                       R29 R3 K97 ["DetailsSpacing"]
      330 CALL                             R27 2 1
      331 SETTABLEKS                       R27 R26 K74 ["Spacing"]
      333 GETUPVAL                         R29 3
      334 GETTABLEKS                       R28 R29 K75 ["Change"]
      336 GETTABLEKS                       R27 R28 K98 ["AbsolutePosition"]
      338 SETTABLE                         R9 R26 R27
      339 NEWTABLE                         R27 0 2
      341 MOVE                             R28 R11
      342 JUMPIFNOT                        R28 ; [+147]
      343 GETUPVAL                         R29 3
      344 GETTABLEKS                       R28 R29 K11 ["createElement"]
      346 GETUPVAL                         R30 3
      347 GETTABLEKS                       R29 R30 K99 ["Fragment"]
      349 NEWTABLE                         R30 0 0
      351 DUPTABLE                         R31 K102 [{"Header", "ErrorText"}]
      352 GETUPVAL                         R33 3
      353 GETTABLEKS                       R32 R33 K11 ["createElement"]
      355 GETUPVAL                         R33 9
      356 DUPTABLE                         R34 K103 [{"Text", "Style", "AutomaticSize", "Size", "TextXAlignment", "TextSize", "TextWrapped", "LayoutOrder"}]
      357 LOADK                            R37 K22 ["UGCValidation"]
      358 LOADK                            R38 K104 ["PermissionsRequiredHeader"]
      359 NAMECALL                         R35 R2 K24 ["getText"]
      361 CALL                             R35 3 1
      362 SETTABLEKS                       R35 R34 K27 ["Text"]
      364 LOADK                            R35 K105 ["Bold"]
      365 SETTABLEKS                       R35 R34 K12 ["Style"]
      367 GETIMPORT                        R35 K87 [Enum.AutomaticSize.Y]
      369 SETTABLEKS                       R35 R34 K80 ["AutomaticSize"]
      371 GETIMPORT                        R35 K90 [UDim2.fromScale]
      373 LOADN                            R36 1
      374 LOADN                            R37 0
      375 CALL                             R35 2 1
      376 SETTABLEKS                       R35 R34 K55 ["Size"]
      378 GETIMPORT                        R35 K93 [Enum.TextXAlignment.Left]
      380 SETTABLEKS                       R35 R34 K83 ["TextXAlignment"]
      382 GETTABLEKS                       R35 R3 K61 ["TextSize"]
      384 SETTABLEKS                       R35 R34 K61 ["TextSize"]
      386 LOADB                            R35 1
      387 SETTABLEKS                       R35 R34 K84 ["TextWrapped"]
      389 NAMECALL                         R35 R1 K63 ["getNextOrder"]
      391 CALL                             R35 1 1
      392 SETTABLEKS                       R35 R34 K56 ["LayoutOrder"]
      394 CALL                             R32 2 1
      395 SETTABLEKS                       R32 R31 K100 ["Header"]
      397 GETUPVAL                         R33 3
      398 GETTABLEKS                       R32 R33 K11 ["createElement"]
      400 GETUPVAL                         R33 12
      401 DUPTABLE                         R34 K108 [{"LayoutOrder", "Text", "TextProps", "HorizontalAlignment", "LinkMap"}]
      402 NAMECALL                         R35 R1 K63 ["getNextOrder"]
      404 CALL                             R35 1 1
      405 SETTABLEKS                       R35 R34 K56 ["LayoutOrder"]
      407 JUMPIFNOTEQKS                    R11 K109 ["MissingIdVerification"] ; [+7]
      409 LOADK                            R37 K22 ["UGCValidation"]
      410 LOADK                            R38 K110 ["UploadBundleDenied_MissingIdVerification_Text"]
      411 NAMECALL                         R35 R2 K24 ["getText"]
      413 CALL                             R35 3 1
      414 JUMP                             ; [+16]
      415 JUMPIFNOTEQKS                    R11 K111 ["MissingPremiumSubscriptionTier"] ; [+7]
      417 LOADK                            R37 K22 ["UGCValidation"]
      418 LOADK                            R38 K112 ["UploadBundleDenied_MissingPremiumSubscriptionTier_Text"]
      419 NAMECALL                         R35 R2 K24 ["getText"]
      421 CALL                             R35 3 1
      422 JUMP                             ; [+8]
      423 LOADK                            R37 K22 ["UGCValidation"]
      424 LOADK                            R38 K113 ["UploadBundleDenied_UnknownError"]
      425 DUPTABLE                         R39 K115 [{"errorCode"}]
      426 SETTABLEKS                       R11 R39 K114 ["errorCode"]
      428 NAMECALL                         R35 R2 K24 ["getText"]
      430 CALL                             R35 4 1
      431 SETTABLEKS                       R35 R34 K27 ["Text"]
      433 DUPTABLE                         R35 K116 [{"Font", "TextSize", "TextXAlignment"}]
      434 GETIMPORT                        R36 K118 [Enum.Font.SourceSans]
      436 SETTABLEKS                       R36 R35 K81 ["Font"]
      438 GETTABLEKS                       R36 R3 K61 ["TextSize"]
      440 SETTABLEKS                       R36 R35 K61 ["TextSize"]
      442 GETIMPORT                        R36 K93 [Enum.TextXAlignment.Left]
      444 SETTABLEKS                       R36 R35 K83 ["TextXAlignment"]
      446 SETTABLEKS                       R35 R34 K106 ["TextProps"]
      448 GETIMPORT                        R35 K48 [Enum.HorizontalAlignment.Left]
      450 SETTABLEKS                       R35 R34 K40 ["HorizontalAlignment"]
      452 NEWTABLE                         R35 2 0
      454 DUPTABLE                         R36 K121 [{"LinkText", "LinkCallback"}]
      455 LOADK                            R39 K22 ["UGCValidation"]
      456 LOADK                            R40 K122 ["UploadBundleDenied_MissingIdVerification_Link"]
      457 NAMECALL                         R37 R2 K24 ["getText"]
      459 CALL                             R37 3 1
      460 SETTABLEKS                       R37 R36 K119 ["LinkText"]
      462 DUPCLOSURE                       R37 K123 [PROTO_3]
      463 CAPTURE                          UPVAL U13
      464 CAPTURE                          UPVAL U14
      465 SETTABLEKS                       R37 R36 K120 ["LinkCallback"]
      467 SETTABLEKS                       R36 R35 K124 ["[Age_Verified]"]
      469 DUPTABLE                         R36 K121 [{"LinkText", "LinkCallback"}]
      470 LOADK                            R39 K22 ["UGCValidation"]
      471 LOADK                            R40 K125 ["UploadBundleDenied_MissingPremiumSubscriptionTier_Link"]
      472 NAMECALL                         R37 R2 K24 ["getText"]
      474 CALL                             R37 3 1
      475 SETTABLEKS                       R37 R36 K119 ["LinkText"]
      477 DUPCLOSURE                       R37 K126 [PROTO_4]
      478 CAPTURE                          UPVAL U13
      479 CAPTURE                          UPVAL U15
      480 SETTABLEKS                       R37 R36 K120 ["LinkCallback"]
      482 SETTABLEKS                       R36 R35 K127 ["[Premium_1000_Or_2200_Subscription]"]
      484 SETTABLEKS                       R35 R34 K107 ["LinkMap"]
      486 CALL                             R32 2 1
      487 SETTABLEKS                       R32 R31 K101 ["ErrorText"]
      489 CALL                             R28 3 1
      490 LOADB                            R29 0
      491 GETTABLEKS                       R31 R0 K92 ["Errors"]
      493 LENGTH                           R30 R31
      494 LOADN                            R31 0
      495 JUMPIFNOTLT                      R31 R30 ; [+69]
      497 GETUPVAL                         R30 3
      498 GETTABLEKS                       R29 R30 K11 ["createElement"]
      500 GETUPVAL                         R31 3
      501 GETTABLEKS                       R30 R31 K99 ["Fragment"]
      503 NEWTABLE                         R31 0 0
      505 DUPTABLE                         R32 K128 [{"Header"}]
      506 GETUPVAL                         R34 3
      507 GETTABLEKS                       R33 R34 K11 ["createElement"]
      509 GETUPVAL                         R34 9
      510 DUPTABLE                         R35 K103 [{"Text", "Style", "AutomaticSize", "Size", "TextXAlignment", "TextSize", "TextWrapped", "LayoutOrder"}]
      511 LOADK                            R38 K22 ["UGCValidation"]
      512 LOADK                            R39 K129 ["ValidationErrorsHeader"]
      513 NAMECALL                         R36 R2 K24 ["getText"]
      515 CALL                             R36 3 1
      516 SETTABLEKS                       R36 R35 K27 ["Text"]
      518 LOADK                            R36 K105 ["Bold"]
      519 SETTABLEKS                       R36 R35 K12 ["Style"]
      521 GETIMPORT                        R36 K87 [Enum.AutomaticSize.Y]
      523 SETTABLEKS                       R36 R35 K80 ["AutomaticSize"]
      525 GETIMPORT                        R36 K90 [UDim2.fromScale]
      527 LOADN                            R37 1
      528 LOADN                            R38 0
      529 CALL                             R36 2 1
      530 SETTABLEKS                       R36 R35 K55 ["Size"]
      532 GETIMPORT                        R36 K93 [Enum.TextXAlignment.Left]
      534 SETTABLEKS                       R36 R35 K83 ["TextXAlignment"]
      536 GETTABLEKS                       R36 R3 K61 ["TextSize"]
      538 SETTABLEKS                       R36 R35 K61 ["TextSize"]
      540 LOADB                            R36 1
      541 SETTABLEKS                       R36 R35 K84 ["TextWrapped"]
      543 NAMECALL                         R36 R1 K63 ["getNextOrder"]
      545 CALL                             R36 1 1
      546 SETTABLEKS                       R36 R35 K56 ["LayoutOrder"]
      548 CALL                             R33 2 1
      549 SETTABLEKS                       R33 R32 K100 ["Header"]
      551 GETUPVAL                         R34 16
      552 GETTABLEKS                       R33 R34 K130 ["map"]
      554 GETTABLEKS                       R34 R0 K92 ["Errors"]
      556 NEWCLOSURE                       R35 P5
      557 CAPTURE                          UPVAL U3
      558 CAPTURE                          UPVAL U9
      559 CAPTURE                          VAL R2
      560 CAPTURE                          UPVAL U17
      561 CAPTURE                          VAL R3
      562 CAPTURE                          VAL R1
      563 CALL                             R33 2 -1
      564 CALL                             R29 -1 1
      565 SETLIST                          R27 R28 2 [1]
      567 CALL                             R24 3 1
      568 SETTABLEKS                       R24 R23 K78 ["Warnings"]
      570 CALL                             R20 3 1
      571 SETTABLEKS                       R20 R19 K52 ["RightColumn"]
      573 GETTABLEKS                       R21 R0 K32 ["ValidationCompleted"]
      575 NOT                              R20 R21
      576 JUMPIFNOT                        R20 ; [+5]
      577 GETUPVAL                         R21 3
      578 GETTABLEKS                       R20 R21 K11 ["createElement"]
      580 LOADK                            R21 K131 ["Folder"]
      581 CALL                             R20 1 1
      582 SETTABLEKS                       R20 R19 K53 ["Rerun_Disabled"]
      584 CALL                             R16 3 1
      585 SETTABLEKS                       R16 R15 K37 ["Contents"]
      587 CALL                             R12 3 -1
      588 RETURN                           R12 -1

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
       15 GETTABLEKS                       R4 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R4 K11 ["Dash"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R5 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R5 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R6 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["React"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K9 [require]
       36 GETTABLEKS                       R7 R1 K10 ["Packages"]
       38 GETTABLEKS                       R6 R7 K14 ["UGCValidation"]
       40 CALL                             R5 1 1
       41 GETIMPORT                        R6 K9 [require]
       43 GETTABLEKS                       R9 R1 K15 ["Src"]
       45 GETTABLEKS                       R8 R9 K16 ["Components"]
       47 GETTABLEKS                       R7 R8 K17 ["UGCValidationContext"]
       49 CALL                             R6 1 1
       50 GETIMPORT                        R7 K9 [require]
       52 GETTABLEKS                       R10 R1 K15 ["Src"]
       54 GETTABLEKS                       R9 R10 K18 ["Resources"]
       56 GETTABLEKS                       R8 R9 K19 ["Theme"]
       58 CALL                             R7 1 1
       59 GETIMPORT                        R8 K9 [require]
       61 GETTABLEKS                       R11 R1 K15 ["Src"]
       63 GETTABLEKS                       R10 R11 K20 ["Util"]
       65 GETTABLEKS                       R9 R10 K21 ["exhaustiveMatch"]
       67 CALL                             R8 1 1
       68 GETIMPORT                        R9 K9 [require]
       70 GETTABLEKS                       R12 R1 K15 ["Src"]
       72 GETTABLEKS                       R11 R12 K20 ["Util"]
       74 GETTABLEKS                       R10 R11 K22 ["localizePlural"]
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
      105 GETTABLEKS                       R20 R3 K20 ["Util"]
      107 GETTABLEKS                       R19 R20 K35 ["LayoutOrderIterator"]
      109 GETTABLEKS                       R21 R3 K20 ["Util"]
      111 GETTABLEKS                       R20 R21 K36 ["StyleModifier"]
      113 GETTABLEKS                       R22 R3 K37 ["ContextServices"]
      115 GETTABLEKS                       R21 R22 K38 ["Localization"]
      117 GETTABLEKS                       R23 R3 K37 ["ContextServices"]
      119 GETTABLEKS                       R22 R23 K39 ["Stylizer"]
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
