PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["API"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 GETTABLEKS                       R2 R0 K3 ["Localization"]
       10 GETTABLEKS                       R3 R0 K4 ["Analytics"]
       12 NAMECALL                         R3 R3 K2 ["get"]
       14 CALL                             R3 1 1
       15 GETTABLEKS                       R4 R0 K5 ["CloudTableId"]
       17 GETTABLEKS                       R5 R0 K6 ["DownloadAndSaveCloudTable"]
       19 MOVE                             R6 R1
       20 MOVE                             R7 R2
       21 MOVE                             R8 R3
       22 MOVE                             R9 R4
       23 CALL                             R5 4 0
       24 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["Plugin"]
        5 NAMECALL                         R2 R2 K2 ["get"]
        7 CALL                             R2 1 1
        8 GETTABLEKS                       R3 R1 K3 ["API"]
       10 NAMECALL                         R3 R3 K2 ["get"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R1 K4 ["Localization"]
       15 GETTABLEKS                       R5 R1 K5 ["Analytics"]
       17 NAMECALL                         R5 R5 K2 ["get"]
       19 CALL                             R5 1 1
       20 GETTABLEKS                       R6 R1 K6 ["Mouse"]
       22 GETTABLEKS                       R7 R1 K7 ["Stylizer"]
       24 GETUPVAL                         R8 1
       25 MOVE                             R9 R2
       26 MOVE                             R10 R4
       27 MOVE                             R11 R7
       28 MOVE                             R12 R6
       29 CALL                             R8 4 1
       30 GETTABLEKS                       R9 R1 K8 ["UpdateCloudTable"]
       32 MOVE                             R10 R3
       33 MOVE                             R11 R4
       34 MOVE                             R12 R5
       35 MOVE                             R13 R8
       36 MOVE                             R14 R0
       37 CALL                             R9 5 0
       38 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["IsBusy"]
        5 NOT                              R1 R2
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R0 K2 ["API"]
       10 NAMECALL                         R2 R2 K3 ["get"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R5 R2 K4 ["WWW"]
       15 GETTABLEKS                       R4 R5 K5 ["Localization"]
       17 GETTABLEKS                       R3 R4 K6 ["games"]
       19 GETIMPORT                        R5 K8 [game]
       21 GETTABLEKS                       R4 R5 K9 ["GameId"]
       23 CALL                             R3 1 1
       24 NAMECALL                         R3 R3 K10 ["getUrl"]
       26 CALL                             R3 1 1
       27 GETUPVAL                         R4 1
       28 MOVE                             R6 R3
       29 NAMECALL                         R4 R4 K11 ["OpenBrowserWindow"]
       31 CALL                             R4 2 0
       32 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["downloadCloudTable"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          UPVAL U0
        7 SETTABLEKS                       R1 R0 K1 ["updateCloudTable"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R1 R0 K2 ["openLocalizationSettings"]
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["updateCloudTable"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["updateCloudTable"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K6 [{"Active", "ButtonText", "LabelText", "LayoutOrder", "OnButtonClick"}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["Active"]
        8 GETUPVAL                         R3 3
        9 LOADK                            R5 K7 ["CloudTableSection"]
       10 LOADK                            R6 K8 ["ReplaceButton"]
       11 NAMECALL                         R3 R3 K9 ["getText"]
       13 CALL                             R3 3 1
       14 SETTABLEKS                       R3 R2 K2 ["ButtonText"]
       16 GETUPVAL                         R3 3
       17 LOADK                            R5 K7 ["CloudTableSection"]
       18 LOADK                            R6 K10 ["ReplaceTableLabel"]
       19 NAMECALL                         R3 R3 K9 ["getText"]
       21 CALL                             R3 3 1
       22 SETTABLEKS                       R3 R2 K3 ["LabelText"]
       24 LOADN                            R3 2
       25 SETTABLEKS                       R3 R2 K4 ["LayoutOrder"]
       27 NEWCLOSURE                       R3 P0
       28 CAPTURE                          UPVAL U4
       29 SETTABLEKS                       R3 R2 K5 ["OnButtonClick"]
       31 CALL                             R0 2 -1
       32 RETURN                           R0 -1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R6 R1 K4 ["IsBusy"]
       10 NOT                              R5 R6
       11 GETUPVAL                         R7 0
       12 GETTABLEKS                       R8 R1 K5 ["AllLanguages"]
       14 CALL                             R7 1 1
       15 NOT                              R6 R7
       16 JUMPIFNOT                        R6 ; [+5]
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R8 R1 K6 ["LocalesToLanguages"]
       20 CALL                             R7 1 1
       21 NOT                              R6 R7
       22 MOVE                             R7 R6
       23 JUMPIFNOT                        R7 ; [+9]
       24 GETTABLEKS                       R7 R1 K7 ["CanManageTranslation"]
       26 JUMPIFNOT                        R7 ; [+6]
       27 GETTABLEKS                       R8 R1 K8 ["CloudTableId"]
       29 JUMPIFNOTEQKS                    R8 K9 [""] ; [+2]
       31 LOADB                            R7 0 +1
       32 LOADB                            R7 1
       33 LOADNIL                          R8
       34 JUMPIFNOT                        R7 ; [+209]
       35 DUPTABLE                         R9 K15 [{"Padding", "Download", "Update", "Collapsible", "LinkTextFrame"}]
       36 GETUPVAL                         R11 1
       37 GETTABLEKS                       R10 R11 K16 ["createElement"]
       39 LOADK                            R11 K17 ["UIPadding"]
       40 DUPTABLE                         R12 K20 [{"PaddingTop", "PaddingLeft"}]
       41 GETIMPORT                        R13 K23 [UDim.new]
       43 LOADN                            R14 0
       44 GETUPVAL                         R16 2
       45 JUMPIFNOT                        R16 ; [+3]
       46 GETTABLEKS                       R15 R2 K24 ["SectionPadding"]
       48 JUMP                             ; [+2]
       49 GETTABLEKS                       R15 R2 K18 ["PaddingTop"]
       51 CALL                             R13 2 1
       52 SETTABLEKS                       R13 R12 K18 ["PaddingTop"]
       54 GETIMPORT                        R13 K23 [UDim.new]
       56 LOADN                            R14 0
       57 GETUPVAL                         R16 2
       58 JUMPIFNOT                        R16 ; [+3]
       59 GETTABLEKS                       R15 R2 K24 ["SectionPadding"]
       61 JUMP                             ; [+2]
       62 GETTABLEKS                       R15 R2 K25 ["LeftIndent"]
       64 CALL                             R13 2 1
       65 SETTABLEKS                       R13 R12 K19 ["PaddingLeft"]
       67 CALL                             R10 2 1
       68 SETTABLEKS                       R10 R9 K10 ["Padding"]
       70 GETUPVAL                         R11 1
       71 GETTABLEKS                       R10 R11 K16 ["createElement"]
       73 GETUPVAL                         R11 3
       74 DUPTABLE                         R12 K30 [{"Active", "ButtonText", "LabelText", "LayoutOrder", "OnButtonClick"}]
       75 SETTABLEKS                       R5 R12 K26 ["Active"]
       77 LOADK                            R15 K31 ["CloudTableSection"]
       78 LOADK                            R16 K32 ["DownloadButton"]
       79 NAMECALL                         R13 R3 K33 ["getText"]
       81 CALL                             R13 3 1
       82 SETTABLEKS                       R13 R12 K27 ["ButtonText"]
       84 LOADK                            R15 K31 ["CloudTableSection"]
       85 LOADK                            R16 K34 ["DownloadTableLabel"]
       86 NAMECALL                         R13 R3 K33 ["getText"]
       88 CALL                             R13 3 1
       89 SETTABLEKS                       R13 R12 K28 ["LabelText"]
       91 LOADN                            R13 1
       92 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
       94 GETTABLEKS                       R13 R0 K35 ["downloadCloudTable"]
       96 SETTABLEKS                       R13 R12 K29 ["OnButtonClick"]
       98 CALL                             R10 2 1
       99 SETTABLEKS                       R10 R9 K11 ["Download"]
      101 GETUPVAL                         R11 1
      102 GETTABLEKS                       R10 R11 K16 ["createElement"]
      104 GETUPVAL                         R11 3
      105 DUPTABLE                         R12 K30 [{"Active", "ButtonText", "LabelText", "LayoutOrder", "OnButtonClick"}]
      106 SETTABLEKS                       R5 R12 K26 ["Active"]
      108 LOADK                            R15 K31 ["CloudTableSection"]
      109 LOADK                            R16 K36 ["UpdateButton"]
      110 NAMECALL                         R13 R3 K33 ["getText"]
      112 CALL                             R13 3 1
      113 SETTABLEKS                       R13 R12 K27 ["ButtonText"]
      115 LOADK                            R15 K31 ["CloudTableSection"]
      116 LOADK                            R16 K37 ["UpdateTableLabel"]
      117 NAMECALL                         R13 R3 K33 ["getText"]
      119 CALL                             R13 3 1
      120 SETTABLEKS                       R13 R12 K28 ["LabelText"]
      122 LOADN                            R13 2
      123 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      125 NEWCLOSURE                       R13 P0
      126 CAPTURE                          VAL R0
      127 SETTABLEKS                       R13 R12 K29 ["OnButtonClick"]
      129 CALL                             R10 2 1
      130 SETTABLEKS                       R10 R9 K12 ["Update"]
      132 GETUPVAL                         R11 1
      133 GETTABLEKS                       R10 R11 K16 ["createElement"]
      135 GETUPVAL                         R11 4
      136 DUPTABLE                         R12 K40 [{"Active", "LayoutOrder", "RenderContent", "Title"}]
      137 SETTABLEKS                       R5 R12 K26 ["Active"]
      139 LOADN                            R13 3
      140 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      142 NEWCLOSURE                       R13 P1
      143 CAPTURE                          UPVAL U1
      144 CAPTURE                          UPVAL U3
      145 CAPTURE                          VAL R5
      146 CAPTURE                          VAL R3
      147 CAPTURE                          VAL R0
      148 SETTABLEKS                       R13 R12 K38 ["RenderContent"]
      150 LOADK                            R15 K31 ["CloudTableSection"]
      151 LOADK                            R16 K41 ["AdvancedButton"]
      152 NAMECALL                         R13 R3 K33 ["getText"]
      154 CALL                             R13 3 1
      155 SETTABLEKS                       R13 R12 K39 ["Title"]
      157 CALL                             R10 2 1
      158 SETTABLEKS                       R10 R9 K13 ["Collapsible"]
      160 GETUPVAL                         R11 1
      161 GETTABLEKS                       R10 R11 K16 ["createElement"]
      163 LOADK                            R11 K42 ["Frame"]
      164 DUPTABLE                         R12 K45 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
      165 LOADN                            R13 1
      166 SETTABLEKS                       R13 R12 K43 ["BackgroundTransparency"]
      168 LOADN                            R13 4
      169 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      171 GETIMPORT                        R13 K47 [UDim2.new]
      173 LOADN                            R14 1
      174 LOADN                            R15 0
      175 LOADN                            R16 0
      176 GETTABLEKS                       R17 R2 K48 ["LinkTextHeight"]
      178 CALL                             R13 4 1
      179 SETTABLEKS                       R13 R12 K44 ["Size"]
      181 DUPTABLE                         R13 K50 [{"LinkText"}]
      182 GETUPVAL                         R15 1
      183 GETTABLEKS                       R14 R15 K16 ["createElement"]
      185 GETUPVAL                         R15 5
      186 DUPTABLE                         R16 K55 [{"AnchorPoint", "Position", "OnClick", "Text"}]
      187 GETIMPORT                        R17 K57 [Vector2.new]
      189 LOADN                            R18 0
      190 LOADK                            R19 K58 [0.5]
      191 CALL                             R17 2 1
      192 SETTABLEKS                       R17 R16 K51 ["AnchorPoint"]
      194 GETIMPORT                        R17 K47 [UDim2.new]
      196 LOADN                            R18 0
      197 LOADN                            R19 0
      198 LOADK                            R20 K58 [0.5]
      199 LOADN                            R21 0
      200 CALL                             R17 4 1
      201 SETTABLEKS                       R17 R16 K52 ["Position"]
      203 GETTABLEKS                       R17 R0 K59 ["openLocalizationSettings"]
      205 SETTABLEKS                       R17 R16 K53 ["OnClick"]
      207 LOADK                            R19 K31 ["CloudTableSection"]
      208 LOADK                            R20 K60 ["CloudTablePageLinkText"]
      209 NAMECALL                         R17 R3 K33 ["getText"]
      211 CALL                             R17 3 1
      212 SETTABLEKS                       R17 R16 K54 ["Text"]
      214 CALL                             R14 2 1
      215 SETTABLEKS                       R14 R13 K49 ["LinkText"]
      217 CALL                             R10 3 1
      218 SETTABLEKS                       R10 R9 K14 ["LinkTextFrame"]
      220 GETUPVAL                         R11 1
      221 GETTABLEKS                       R10 R11 K16 ["createElement"]
      223 GETUPVAL                         R11 6
      224 DUPTABLE                         R12 K64 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      225 GETIMPORT                        R13 K67 [Enum.AutomaticSize.Y]
      227 SETTABLEKS                       R13 R12 K61 ["AutomaticSize"]
      229 GETIMPORT                        R13 K69 [Enum.HorizontalAlignment.Left]
      231 SETTABLEKS                       R13 R12 K62 ["HorizontalAlignment"]
      233 GETIMPORT                        R13 K72 [Enum.FillDirection.Vertical]
      235 SETTABLEKS                       R13 R12 K63 ["Layout"]
      237 LOADN                            R13 2
      238 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      240 MOVE                             R13 R9
      241 CALL                             R10 3 1
      242 MOVE                             R8 R10
      243 JUMP                             ; [+113]
      244 GETUPVAL                         R10 1
      245 GETTABLEKS                       R9 R10 K16 ["createElement"]
      247 GETUPVAL                         R11 7
      248 JUMPIFNOT                        R11 ; [+2]
      249 GETUPVAL                         R10 6
      250 JUMP                             ; [+1]
      251 LOADK                            R10 K42 ["Frame"]
      252 DUPTABLE                         R11 K76 [{"Size", "BackgroundColor3", "BackgroundTransparency", "BorderSizePixel", "BorderColor3", "LayoutOrder", "Layout"}]
      253 GETIMPORT                        R12 K47 [UDim2.new]
      255 LOADN                            R13 1
      256 LOADN                            R14 0
      257 LOADN                            R15 0
      258 GETTABLEKS                       R16 R2 K77 ["PublishMessageHeight"]
      260 CALL                             R12 4 1
      261 SETTABLEKS                       R12 R11 K44 ["Size"]
      263 GETTABLEKS                       R12 R2 K78 ["MessageFrameBackground"]
      265 SETTABLEKS                       R12 R11 K73 ["BackgroundColor3"]
      267 LOADN                            R12 0
      268 SETTABLEKS                       R12 R11 K43 ["BackgroundTransparency"]
      270 LOADN                            R12 1
      271 SETTABLEKS                       R12 R11 K74 ["BorderSizePixel"]
      273 GETTABLEKS                       R12 R2 K79 ["MessageFrameBorder"]
      275 SETTABLEKS                       R12 R11 K75 ["BorderColor3"]
      277 LOADN                            R12 2
      278 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
      280 GETUPVAL                         R13 7
      281 JUMPIFNOT                        R13 ; [+3]
      282 GETIMPORT                        R12 K72 [Enum.FillDirection.Vertical]
      284 JUMP                             ; [+1]
      285 LOADNIL                          R12
      286 SETTABLEKS                       R12 R11 K63 ["Layout"]
      288 DUPTABLE                         R12 K81 [{"PublishPlaceMessage"}]
      289 GETUPVAL                         R14 1
      290 GETTABLEKS                       R13 R14 K16 ["createElement"]
      292 GETUPVAL                         R14 8
      293 DUPTABLE                         R15 K83 [{"AnchorPoint", "AutomaticSize", "Position", "Size", "Text", "TextWrapped"}]
      294 GETUPVAL                         R17 7
      295 JUMPIFNOT                        R17 ; [+2]
      296 LOADNIL                          R16
      297 JUMP                             ; [+5]
      298 GETIMPORT                        R16 K57 [Vector2.new]
      300 LOADK                            R17 K58 [0.5]
      301 LOADK                            R18 K58 [0.5]
      302 CALL                             R16 2 1
      303 SETTABLEKS                       R16 R15 K51 ["AnchorPoint"]
      305 GETUPVAL                         R17 7
      306 JUMPIFNOT                        R17 ; [+3]
      307 GETIMPORT                        R16 K67 [Enum.AutomaticSize.Y]
      309 JUMP                             ; [+2]
      310 GETIMPORT                        R16 K85 [Enum.AutomaticSize.XY]
      312 SETTABLEKS                       R16 R15 K61 ["AutomaticSize"]
      314 GETUPVAL                         R17 7
      315 JUMPIFNOT                        R17 ; [+2]
      316 LOADNIL                          R16
      317 JUMP                             ; [+7]
      318 GETIMPORT                        R16 K47 [UDim2.new]
      320 LOADK                            R17 K58 [0.5]
      321 LOADN                            R18 0
      322 LOADK                            R19 K58 [0.5]
      323 LOADN                            R20 0
      324 CALL                             R16 4 1
      325 SETTABLEKS                       R16 R15 K52 ["Position"]
      327 GETUPVAL                         R17 7
      328 JUMPIFNOT                        R17 ; [+6]
      329 GETIMPORT                        R16 K87 [UDim2.fromScale]
      331 LOADN                            R17 1
      332 LOADN                            R18 0
      333 CALL                             R16 2 1
      334 JUMP                             ; [+1]
      335 LOADNIL                          R16
      336 SETTABLEKS                       R16 R15 K44 ["Size"]
      338 LOADK                            R18 K31 ["CloudTableSection"]
      339 LOADK                            R19 K80 ["PublishPlaceMessage"]
      340 NAMECALL                         R16 R3 K33 ["getText"]
      342 CALL                             R16 3 1
      343 SETTABLEKS                       R16 R15 K54 ["Text"]
      345 GETUPVAL                         R17 7
      346 JUMPIFNOT                        R17 ; [+2]
      347 LOADB                            R16 1
      348 JUMP                             ; [+1]
      349 LOADNIL                          R16
      350 SETTABLEKS                       R16 R15 K82 ["TextWrapped"]
      352 CALL                             R13 2 1
      353 SETTABLEKS                       R13 R12 K80 ["PublishPlaceMessage"]
      355 CALL                             R9 3 1
      356 MOVE                             R8 R9
      357 DUPTABLE                         R9 K90 [{"Padding", "SectionLabel", "Content"}]
      358 GETUPVAL                         R11 1
      359 GETTABLEKS                       R10 R11 K16 ["createElement"]
      361 LOADK                            R11 K17 ["UIPadding"]
      362 DUPTABLE                         R12 K91 [{"PaddingTop"}]
      363 GETIMPORT                        R13 K23 [UDim.new]
      365 LOADN                            R14 0
      366 GETTABLEKS                       R15 R2 K18 ["PaddingTop"]
      368 CALL                             R13 2 1
      369 SETTABLEKS                       R13 R12 K18 ["PaddingTop"]
      371 CALL                             R10 2 1
      372 SETTABLEKS                       R10 R9 K10 ["Padding"]
      374 GETUPVAL                         R11 1
      375 GETTABLEKS                       R10 R11 K16 ["createElement"]
      377 GETUPVAL                         R11 8
      378 DUPTABLE                         R12 K93 [{"AutomaticSize", "LayoutOrder", "Style", "Text"}]
      379 GETIMPORT                        R13 K85 [Enum.AutomaticSize.XY]
      381 SETTABLEKS                       R13 R12 K61 ["AutomaticSize"]
      383 LOADN                            R13 1
      384 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      386 LOADK                            R13 K94 ["Subtitle"]
      387 SETTABLEKS                       R13 R12 K92 ["Style"]
      389 LOADK                            R15 K31 ["CloudTableSection"]
      390 LOADK                            R16 K88 ["SectionLabel"]
      391 NAMECALL                         R13 R3 K33 ["getText"]
      393 CALL                             R13 3 1
      394 SETTABLEKS                       R13 R12 K54 ["Text"]
      396 CALL                             R10 2 1
      397 SETTABLEKS                       R10 R9 K88 ["SectionLabel"]
      399 SETTABLEKS                       R8 R9 K89 ["Content"]
      401 GETUPVAL                         R11 1
      402 GETTABLEKS                       R10 R11 K16 ["createElement"]
      404 GETUPVAL                         R11 6
      405 DUPTABLE                         R12 K64 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      406 GETIMPORT                        R13 K67 [Enum.AutomaticSize.Y]
      408 SETTABLEKS                       R13 R12 K61 ["AutomaticSize"]
      410 GETIMPORT                        R13 K69 [Enum.HorizontalAlignment.Left]
      412 SETTABLEKS                       R13 R12 K62 ["HorizontalAlignment"]
      414 GETIMPORT                        R13 K72 [Enum.FillDirection.Vertical]
      416 SETTABLEKS                       R13 R12 K63 ["Layout"]
      418 SETTABLEKS                       R4 R12 K3 ["LayoutOrder"]
      420 MOVE                             R13 R9
      421 CALL                             R10 3 -1
      422 RETURN                           R10 -1

PROTO_8:
        0 DUPTABLE                         R2 K5 [{"AllLanguages", "LocalesToLanguages", "CanManageTranslation", "CloudTableId", "IsBusy"}]
        1 GETTABLEKS                       R4 R0 K6 ["PluginMetadata"]
        3 GETTABLEKS                       R3 R4 K0 ["AllLanguages"]
        5 SETTABLEKS                       R3 R2 K0 ["AllLanguages"]
        7 GETTABLEKS                       R4 R0 K6 ["PluginMetadata"]
        9 GETTABLEKS                       R3 R4 K1 ["LocalesToLanguages"]
       11 SETTABLEKS                       R3 R2 K1 ["LocalesToLanguages"]
       13 GETTABLEKS                       R4 R0 K6 ["PluginMetadata"]
       15 GETTABLEKS                       R3 R4 K2 ["CanManageTranslation"]
       17 SETTABLEKS                       R3 R2 K2 ["CanManageTranslation"]
       19 GETTABLEKS                       R4 R0 K6 ["PluginMetadata"]
       21 GETTABLEKS                       R3 R4 K3 ["CloudTableId"]
       23 SETTABLEKS                       R3 R2 K3 ["CloudTableId"]
       25 GETTABLEKS                       R4 R0 K7 ["CloudTable"]
       27 GETTABLEKS                       R3 R4 K4 ["IsBusy"]
       29 SETTABLEKS                       R3 R2 K4 ["IsBusy"]
       31 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["DownloadAndSave"]
        4 MOVE                             R6 R0
        5 MOVE                             R7 R1
        6 MOVE                             R8 R2
        7 MOVE                             R9 R3
        8 CALL                             R5 4 -1
        9 CALL                             R4 -1 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETUPVAL                         R6 1
        2 MOVE                             R7 R0
        3 MOVE                             R8 R1
        4 MOVE                             R9 R2
        5 MOVE                             R10 R3
        6 MOVE                             R11 R4
        7 CALL                             R6 5 -1
        8 CALL                             R5 -1 0
        9 RETURN                           R0 0

PROTO_11:
        0 DUPTABLE                         R1 K2 [{"DownloadAndSaveCloudTable", "UpdateCloudTable"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["DownloadAndSaveCloudTable"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["UpdateCloudTable"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationToolsFixCloudLabel"]
        4 LOADB                            R3 0
        5 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        7 CALL                             R0 3 1
        8 GETIMPORT                        R1 K1 [game]
       10 LOADK                            R3 K4 ["LocalizationToolsUpdateTextScraperUI"]
       11 NAMECALL                         R1 R1 K5 ["GetFastFlag"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K1 [game]
       16 LOADK                            R4 K6 ["GuiService"]
       17 NAMECALL                         R2 R2 K7 ["GetService"]
       19 CALL                             R2 2 1
       20 GETIMPORT                        R6 K9 [script]
       22 GETTABLEKS                       R5 R6 K10 ["Parent"]
       24 GETTABLEKS                       R4 R5 K10 ["Parent"]
       26 GETTABLEKS                       R3 R4 K10 ["Parent"]
       28 GETIMPORT                        R4 K12 [require]
       30 GETTABLEKS                       R6 R3 K13 ["Packages"]
       32 GETTABLEKS                       R5 R6 K14 ["Roact"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K12 [require]
       37 GETTABLEKS                       R7 R3 K13 ["Packages"]
       39 GETTABLEKS                       R6 R7 K15 ["RoactRodux"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K12 [require]
       44 GETTABLEKS                       R8 R3 K13 ["Packages"]
       46 GETTABLEKS                       R7 R8 K16 ["Framework"]
       48 CALL                             R6 1 1
       49 GETTABLEKS                       R7 R6 K17 ["ContextServices"]
       51 GETTABLEKS                       R8 R7 K18 ["withContext"]
       53 GETTABLEKS                       R9 R6 K19 ["UI"]
       55 GETTABLEKS                       R10 R9 K20 ["LinkText"]
       57 GETTABLEKS                       R11 R9 K21 ["Pane"]
       59 GETTABLEKS                       R12 R9 K22 ["TextLabel"]
       61 GETIMPORT                        R13 K12 [require]
       63 GETTABLEKS                       R16 R3 K23 ["Src"]
       65 GETTABLEKS                       R15 R16 K17 ["ContextServices"]
       67 GETTABLEKS                       R14 R15 K24 ["AnalyticsContext"]
       69 CALL                             R13 1 1
       70 GETIMPORT                        R14 K12 [require]
       72 GETTABLEKS                       R17 R3 K23 ["Src"]
       74 GETTABLEKS                       R16 R17 K25 ["Components"]
       76 GETTABLEKS                       R15 R16 K26 ["LabeledTextButton"]
       78 CALL                             R14 1 1
       79 GETIMPORT                        R15 K12 [require]
       81 GETTABLEKS                       R18 R3 K23 ["Src"]
       83 GETTABLEKS                       R17 R18 K25 ["Components"]
       85 GETTABLEKS                       R16 R17 K27 ["Collapsible"]
       87 CALL                             R15 1 1
       88 GETIMPORT                        R16 K12 [require]
       90 GETTABLEKS                       R19 R3 K23 ["Src"]
       92 GETTABLEKS                       R18 R19 K28 ["Util"]
       94 GETTABLEKS                       R17 R18 K29 ["isEmpty"]
       96 CALL                             R16 1 1
       97 GETIMPORT                        R17 K12 [require]
       99 GETTABLEKS                       R20 R3 K23 ["Src"]
      101 GETTABLEKS                       R19 R20 K28 ["Util"]
      103 GETTABLEKS                       R18 R19 K30 ["ShowDialog"]
      105 CALL                             R17 1 1
      106 GETIMPORT                        R18 K12 [require]
      108 GETTABLEKS                       R21 R3 K23 ["Src"]
      110 GETTABLEKS                       R20 R21 K31 ["Thunks"]
      112 GETTABLEKS                       R19 R20 K32 ["DownloadCloudTable"]
      114 CALL                             R18 1 1
      115 GETIMPORT                        R19 K12 [require]
      117 GETTABLEKS                       R22 R3 K23 ["Src"]
      119 GETTABLEKS                       R21 R22 K31 ["Thunks"]
      121 GETTABLEKS                       R20 R21 K33 ["UploadCloudTable"]
      123 CALL                             R19 1 1
      124 GETTABLEKS                       R20 R4 K34 ["PureComponent"]
      126 LOADK                            R22 K35 ["CloudTableSection"]
      127 NAMECALL                         R20 R20 K36 ["extend"]
      129 CALL                             R20 2 1
      130 DUPCLOSURE                       R21 K37 [PROTO_3]
      131 CAPTURE                          VAL R17
      132 CAPTURE                          VAL R2
      133 SETTABLEKS                       R21 R20 K38 ["init"]
      135 DUPCLOSURE                       R21 K39 [PROTO_7]
      136 CAPTURE                          VAL R16
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R1
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R15
      141 CAPTURE                          VAL R10
      142 CAPTURE                          VAL R11
      143 CAPTURE                          VAL R0
      144 CAPTURE                          VAL R12
      145 SETTABLEKS                       R21 R20 K40 ["render"]
      147 MOVE                             R21 R8
      148 DUPTABLE                         R22 K47 [{"Plugin", "Stylizer", "Localization", "API", "Mouse", "Analytics"}]
      149 GETTABLEKS                       R23 R7 K41 ["Plugin"]
      151 SETTABLEKS                       R23 R22 K41 ["Plugin"]
      153 GETTABLEKS                       R23 R7 K42 ["Stylizer"]
      155 SETTABLEKS                       R23 R22 K42 ["Stylizer"]
      157 GETTABLEKS                       R23 R7 K43 ["Localization"]
      159 SETTABLEKS                       R23 R22 K43 ["Localization"]
      161 GETTABLEKS                       R23 R7 K44 ["API"]
      163 SETTABLEKS                       R23 R22 K44 ["API"]
      165 GETTABLEKS                       R23 R7 K45 ["Mouse"]
      167 SETTABLEKS                       R23 R22 K45 ["Mouse"]
      169 SETTABLEKS                       R13 R22 K46 ["Analytics"]
      171 CALL                             R21 1 1
      172 MOVE                             R22 R20
      173 CALL                             R21 1 1
      174 MOVE                             R20 R21
      175 DUPCLOSURE                       R21 K48 [PROTO_8]
      176 DUPCLOSURE                       R22 K49 [PROTO_11]
      177 CAPTURE                          VAL R18
      178 CAPTURE                          VAL R19
      179 GETTABLEKS                       R23 R5 K50 ["connect"]
      181 MOVE                             R24 R21
      182 MOVE                             R25 R22
      183 CALL                             R23 2 1
      184 MOVE                             R24 R20
      185 CALL                             R23 1 -1
      186 RETURN                           R23 -1
