PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R2 R0 K1 ["IsBusy"]
        5 NOT                              R1 R2
        6 JUMPIF                           R1 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R2 R0 K2 ["API"]
       10 NAMECALL                         R2 R2 K3 ["get"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R3 R2 K4 ["WWW"]
       15 GETTABLEKS                       R3 R3 K5 ["Localization"]
       17 GETTABLEKS                       R3 R3 K6 ["games"]
       19 GETIMPORT                        R4 K8 [game]
       21 GETTABLEKS                       R4 R4 K9 ["GameId"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateCloudTable"]
        3 LOADB                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["updateCloudTable"]
        3 LOADB                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createElement"]
        3 GETUPVAL                         R1 1
        4 DUPTABLE                         R2 K7 [{["Active"], ["ButtonText"], ["LabelText"], ["LayoutOrder"] = 2, ["OnButtonClick"]}]
        5 GETUPVAL                         R3 2
        6 SETTABLEKS                       R3 R2 K1 ["Active"]
        8 GETUPVAL                         R3 3
        9 LOADK                            R5 K8 ["CloudTableSection"]
       10 LOADK                            R6 K9 ["ReplaceButton"]
       11 NAMECALL                         R3 R3 K10 ["getText"]
       13 CALL                             R3 3 1
       14 SETTABLEKS                       R3 R2 K2 ["ButtonText"]
       16 GETUPVAL                         R3 3
       17 LOADK                            R5 K8 ["CloudTableSection"]
       18 LOADK                            R6 K11 ["ReplaceTableLabel"]
       19 NAMECALL                         R3 R3 K10 ["getText"]
       21 CALL                             R3 3 1
       22 SETTABLEKS                       R3 R2 K3 ["LabelText"]
       24 NEWCLOSURE                       R3 P0
       25 CAPTURE                          UPVAL U4
       26 SETTABLEKS                       R3 R2 K6 ["OnButtonClick"]
       28 CALL                             R0 2 -1
       29 RETURN                           R0 -1

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
       34 JUMPIFNOT                        R7 ; [+181]
       35 DUPTABLE                         R9 K15 [{"Padding", "Download", "Update", "Collapsible", "LinkTextFrame"}]
       36 GETUPVAL                         R10 1
       37 GETTABLEKS                       R10 R10 K16 ["createElement"]
       39 LOADK                            R11 K17 ["UIPadding"]
       40 DUPTABLE                         R12 K20 [{"PaddingTop", "PaddingLeft"}]
       41 GETIMPORT                        R13 K23 [UDim.new]
       43 LOADN                            R14 0
       44 GETTABLEKS                       R15 R2 K24 ["SectionPadding"]
       46 CALL                             R13 2 1
       47 SETTABLEKS                       R13 R12 K18 ["PaddingTop"]
       49 GETIMPORT                        R13 K23 [UDim.new]
       51 LOADN                            R14 0
       52 GETTABLEKS                       R15 R2 K24 ["SectionPadding"]
       54 CALL                             R13 2 1
       55 SETTABLEKS                       R13 R12 K19 ["PaddingLeft"]
       57 CALL                             R10 2 1
       58 SETTABLEKS                       R10 R9 K10 ["Padding"]
       60 GETUPVAL                         R10 1
       61 GETTABLEKS                       R10 R10 K16 ["createElement"]
       63 GETUPVAL                         R11 2
       64 DUPTABLE                         R12 K30 [{["Active"], ["ButtonText"], ["LabelText"], ["LayoutOrder"] = 1, ["OnButtonClick"]}]
       65 SETTABLEKS                       R5 R12 K25 ["Active"]
       67 LOADK                            R15 K31 ["CloudTableSection"]
       68 LOADK                            R16 K32 ["DownloadButton"]
       69 NAMECALL                         R13 R3 K33 ["getText"]
       71 CALL                             R13 3 1
       72 SETTABLEKS                       R13 R12 K26 ["ButtonText"]
       74 LOADK                            R15 K31 ["CloudTableSection"]
       75 LOADK                            R16 K34 ["DownloadTableLabel"]
       76 NAMECALL                         R13 R3 K33 ["getText"]
       78 CALL                             R13 3 1
       79 SETTABLEKS                       R13 R12 K27 ["LabelText"]
       81 GETTABLEKS                       R13 R0 K35 ["downloadCloudTable"]
       83 SETTABLEKS                       R13 R12 K29 ["OnButtonClick"]
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K11 ["Download"]
       88 GETUPVAL                         R10 1
       89 GETTABLEKS                       R10 R10 K16 ["createElement"]
       91 GETUPVAL                         R11 2
       92 DUPTABLE                         R12 K37 [{["Active"], ["ButtonText"], ["LabelText"], ["LayoutOrder"] = 2, ["OnButtonClick"]}]
       93 SETTABLEKS                       R5 R12 K25 ["Active"]
       95 LOADK                            R15 K31 ["CloudTableSection"]
       96 LOADK                            R16 K38 ["UpdateButton"]
       97 NAMECALL                         R13 R3 K33 ["getText"]
       99 CALL                             R13 3 1
      100 SETTABLEKS                       R13 R12 K26 ["ButtonText"]
      102 LOADK                            R15 K31 ["CloudTableSection"]
      103 LOADK                            R16 K39 ["UpdateTableLabel"]
      104 NAMECALL                         R13 R3 K33 ["getText"]
      106 CALL                             R13 3 1
      107 SETTABLEKS                       R13 R12 K27 ["LabelText"]
      109 NEWCLOSURE                       R13 P0
      110 CAPTURE                          VAL R0
      111 SETTABLEKS                       R13 R12 K29 ["OnButtonClick"]
      113 CALL                             R10 2 1
      114 SETTABLEKS                       R10 R9 K12 ["Update"]
      116 GETUPVAL                         R10 1
      117 GETTABLEKS                       R10 R10 K16 ["createElement"]
      119 GETUPVAL                         R11 3
      120 DUPTABLE                         R12 K43 [{["Active"], ["LayoutOrder"] = 3, ["RenderContent"], ["Title"]}]
      121 SETTABLEKS                       R5 R12 K25 ["Active"]
      123 NEWCLOSURE                       R13 P1
      124 CAPTURE                          UPVAL U1
      125 CAPTURE                          UPVAL U2
      126 CAPTURE                          VAL R5
      127 CAPTURE                          VAL R3
      128 CAPTURE                          VAL R0
      129 SETTABLEKS                       R13 R12 K41 ["RenderContent"]
      131 LOADK                            R15 K31 ["CloudTableSection"]
      132 LOADK                            R16 K44 ["AdvancedButton"]
      133 NAMECALL                         R13 R3 K33 ["getText"]
      135 CALL                             R13 3 1
      136 SETTABLEKS                       R13 R12 K42 ["Title"]
      138 CALL                             R10 2 1
      139 SETTABLEKS                       R10 R9 K13 ["Collapsible"]
      141 GETUPVAL                         R10 1
      142 GETTABLEKS                       R10 R10 K16 ["createElement"]
      144 LOADK                            R11 K45 ["Frame"]
      145 DUPTABLE                         R12 K49 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 4, ["Size"]}]
      146 GETIMPORT                        R13 K51 [UDim2.new]
      148 LOADN                            R14 1
      149 LOADN                            R15 0
      150 LOADN                            R16 0
      151 GETTABLEKS                       R17 R2 K52 ["LinkTextHeight"]
      153 CALL                             R13 4 1
      154 SETTABLEKS                       R13 R12 K48 ["Size"]
      156 DUPTABLE                         R13 K54 [{"LinkText"}]
      157 GETUPVAL                         R14 1
      158 GETTABLEKS                       R14 R14 K16 ["createElement"]
      160 GETUPVAL                         R15 4
      161 DUPTABLE                         R16 K59 [{"AnchorPoint", "Position", "OnClick", "Text"}]
      162 GETIMPORT                        R17 K61 [Vector2.new]
      164 LOADN                            R18 0
      165 LOADK                            R19 K62 [0.5]
      166 CALL                             R17 2 1
      167 SETTABLEKS                       R17 R16 K55 ["AnchorPoint"]
      169 GETIMPORT                        R17 K51 [UDim2.new]
      171 LOADN                            R18 0
      172 LOADN                            R19 0
      173 LOADK                            R20 K62 [0.5]
      174 LOADN                            R21 0
      175 CALL                             R17 4 1
      176 SETTABLEKS                       R17 R16 K56 ["Position"]
      178 GETTABLEKS                       R17 R0 K63 ["openLocalizationSettings"]
      180 SETTABLEKS                       R17 R16 K57 ["OnClick"]
      182 LOADK                            R19 K31 ["CloudTableSection"]
      183 LOADK                            R20 K64 ["CloudTablePageLinkText"]
      184 NAMECALL                         R17 R3 K33 ["getText"]
      186 CALL                             R17 3 1
      187 SETTABLEKS                       R17 R16 K58 ["Text"]
      189 CALL                             R14 2 1
      190 SETTABLEKS                       R14 R13 K53 ["LinkText"]
      192 CALL                             R10 3 1
      193 SETTABLEKS                       R10 R9 K14 ["LinkTextFrame"]
      195 GETUPVAL                         R10 1
      196 GETTABLEKS                       R10 R10 K16 ["createElement"]
      198 GETUPVAL                         R11 5
      199 DUPTABLE                         R12 K68 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2}]
      200 GETIMPORT                        R13 K71 [Enum.AutomaticSize.Y]
      202 SETTABLEKS                       R13 R12 K65 ["AutomaticSize"]
      204 GETIMPORT                        R13 K73 [Enum.HorizontalAlignment.Left]
      206 SETTABLEKS                       R13 R12 K66 ["HorizontalAlignment"]
      208 GETIMPORT                        R13 K76 [Enum.FillDirection.Vertical]
      210 SETTABLEKS                       R13 R12 K67 ["Layout"]
      212 MOVE                             R13 R9
      213 CALL                             R10 3 1
      214 MOVE                             R8 R10
      215 JUMP                             ; [+104]
      216 GETUPVAL                         R9 1
      217 GETTABLEKS                       R9 R9 K16 ["createElement"]
      219 GETUPVAL                         R11 6
      220 JUMPIFNOT                        R11 ; [+2]
      221 GETUPVAL                         R10 5
      222 JUMP                             ; [+1]
      223 LOADK                            R10 K45 ["Frame"]
      224 DUPTABLE                         R11 K81 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 1, ["BorderColor3"], ["LayoutOrder"] = 2, ["Layout"]}]
      225 GETIMPORT                        R12 K51 [UDim2.new]
      227 LOADN                            R13 1
      228 LOADN                            R14 0
      229 LOADN                            R15 0
      230 GETTABLEKS                       R16 R2 K82 ["PublishMessageHeight"]
      232 CALL                             R12 4 1
      233 SETTABLEKS                       R12 R11 K48 ["Size"]
      235 GETTABLEKS                       R12 R2 K83 ["MessageFrameBackground"]
      237 SETTABLEKS                       R12 R11 K77 ["BackgroundColor3"]
      239 GETTABLEKS                       R12 R2 K84 ["MessageFrameBorder"]
      241 SETTABLEKS                       R12 R11 K80 ["BorderColor3"]
      243 GETUPVAL                         R13 6
      244 JUMPIFNOT                        R13 ; [+3]
      245 GETIMPORT                        R12 K76 [Enum.FillDirection.Vertical]
      247 JUMP                             ; [+1]
      248 LOADNIL                          R12
      249 SETTABLEKS                       R12 R11 K67 ["Layout"]
      251 DUPTABLE                         R12 K86 [{"PublishPlaceMessage"}]
      252 GETUPVAL                         R13 1
      253 GETTABLEKS                       R13 R13 K16 ["createElement"]
      255 GETUPVAL                         R14 7
      256 DUPTABLE                         R15 K88 [{"AnchorPoint", "AutomaticSize", "Position", "Size", "Text", "TextWrapped"}]
      257 GETUPVAL                         R17 6
      258 JUMPIFNOT                        R17 ; [+2]
      259 LOADNIL                          R16
      260 JUMP                             ; [+5]
      261 GETIMPORT                        R16 K61 [Vector2.new]
      263 LOADK                            R17 K62 [0.5]
      264 LOADK                            R18 K62 [0.5]
      265 CALL                             R16 2 1
      266 SETTABLEKS                       R16 R15 K55 ["AnchorPoint"]
      268 GETUPVAL                         R17 6
      269 JUMPIFNOT                        R17 ; [+3]
      270 GETIMPORT                        R16 K71 [Enum.AutomaticSize.Y]
      272 JUMP                             ; [+2]
      273 GETIMPORT                        R16 K90 [Enum.AutomaticSize.XY]
      275 SETTABLEKS                       R16 R15 K65 ["AutomaticSize"]
      277 GETUPVAL                         R17 6
      278 JUMPIFNOT                        R17 ; [+2]
      279 LOADNIL                          R16
      280 JUMP                             ; [+7]
      281 GETIMPORT                        R16 K51 [UDim2.new]
      283 LOADK                            R17 K62 [0.5]
      284 LOADN                            R18 0
      285 LOADK                            R19 K62 [0.5]
      286 LOADN                            R20 0
      287 CALL                             R16 4 1
      288 SETTABLEKS                       R16 R15 K56 ["Position"]
      290 GETUPVAL                         R17 6
      291 JUMPIFNOT                        R17 ; [+6]
      292 GETIMPORT                        R16 K92 [UDim2.fromScale]
      294 LOADN                            R17 1
      295 LOADN                            R18 0
      296 CALL                             R16 2 1
      297 JUMP                             ; [+1]
      298 LOADNIL                          R16
      299 SETTABLEKS                       R16 R15 K48 ["Size"]
      301 LOADK                            R18 K31 ["CloudTableSection"]
      302 LOADK                            R19 K85 ["PublishPlaceMessage"]
      303 NAMECALL                         R16 R3 K33 ["getText"]
      305 CALL                             R16 3 1
      306 SETTABLEKS                       R16 R15 K58 ["Text"]
      308 GETUPVAL                         R17 6
      309 JUMPIFNOT                        R17 ; [+2]
      310 LOADB                            R16 1
      311 JUMP                             ; [+1]
      312 LOADNIL                          R16
      313 SETTABLEKS                       R16 R15 K87 ["TextWrapped"]
      315 CALL                             R13 2 1
      316 SETTABLEKS                       R13 R12 K85 ["PublishPlaceMessage"]
      318 CALL                             R9 3 1
      319 MOVE                             R8 R9
      320 DUPTABLE                         R9 K95 [{"Padding", "SectionLabel", "Content"}]
      321 GETUPVAL                         R10 1
      322 GETTABLEKS                       R10 R10 K16 ["createElement"]
      324 LOADK                            R11 K17 ["UIPadding"]
      325 DUPTABLE                         R12 K96 [{"PaddingTop"}]
      326 GETIMPORT                        R13 K23 [UDim.new]
      328 LOADN                            R14 0
      329 GETTABLEKS                       R15 R2 K18 ["PaddingTop"]
      331 CALL                             R13 2 1
      332 SETTABLEKS                       R13 R12 K18 ["PaddingTop"]
      334 CALL                             R10 2 1
      335 SETTABLEKS                       R10 R9 K10 ["Padding"]
      337 GETUPVAL                         R10 1
      338 GETTABLEKS                       R10 R10 K16 ["createElement"]
      340 GETUPVAL                         R11 7
      341 DUPTABLE                         R12 K99 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Style"] = "Subtitle", ["Text"]}]
      342 GETIMPORT                        R13 K90 [Enum.AutomaticSize.XY]
      344 SETTABLEKS                       R13 R12 K65 ["AutomaticSize"]
      346 LOADK                            R15 K31 ["CloudTableSection"]
      347 LOADK                            R16 K93 ["SectionLabel"]
      348 NAMECALL                         R13 R3 K33 ["getText"]
      350 CALL                             R13 3 1
      351 SETTABLEKS                       R13 R12 K58 ["Text"]
      353 CALL                             R10 2 1
      354 SETTABLEKS                       R10 R9 K93 ["SectionLabel"]
      356 SETTABLEKS                       R8 R9 K94 ["Content"]
      358 GETUPVAL                         R10 1
      359 GETTABLEKS                       R10 R10 K16 ["createElement"]
      361 GETUPVAL                         R11 5
      362 DUPTABLE                         R12 K100 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      363 GETIMPORT                        R13 K71 [Enum.AutomaticSize.Y]
      365 SETTABLEKS                       R13 R12 K65 ["AutomaticSize"]
      367 GETIMPORT                        R13 K73 [Enum.HorizontalAlignment.Left]
      369 SETTABLEKS                       R13 R12 K66 ["HorizontalAlignment"]
      371 GETIMPORT                        R13 K76 [Enum.FillDirection.Vertical]
      373 SETTABLEKS                       R13 R12 K67 ["Layout"]
      375 SETTABLEKS                       R4 R12 K3 ["LayoutOrder"]
      377 MOVE                             R13 R9
      378 CALL                             R10 3 -1
      379 RETURN                           R10 -1

PROTO_8:
        0 DUPTABLE                         R2 K5 [{"AllLanguages", "LocalesToLanguages", "CanManageTranslation", "CloudTableId", "IsBusy"}]
        1 GETTABLEKS                       R3 R0 K6 ["PluginMetadata"]
        3 GETTABLEKS                       R3 R3 K0 ["AllLanguages"]
        5 SETTABLEKS                       R3 R2 K0 ["AllLanguages"]
        7 GETTABLEKS                       R3 R0 K6 ["PluginMetadata"]
        9 GETTABLEKS                       R3 R3 K1 ["LocalesToLanguages"]
       11 SETTABLEKS                       R3 R2 K1 ["LocalesToLanguages"]
       13 GETTABLEKS                       R3 R0 K6 ["PluginMetadata"]
       15 GETTABLEKS                       R3 R3 K2 ["CanManageTranslation"]
       17 SETTABLEKS                       R3 R2 K2 ["CanManageTranslation"]
       19 GETTABLEKS                       R3 R0 K6 ["PluginMetadata"]
       21 GETTABLEKS                       R3 R3 K3 ["CloudTableId"]
       23 SETTABLEKS                       R3 R2 K3 ["CloudTableId"]
       25 GETTABLEKS                       R3 R0 K7 ["CloudTable"]
       27 GETTABLEKS                       R3 R3 K4 ["IsBusy"]
       29 SETTABLEKS                       R3 R2 K4 ["IsBusy"]
       31 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R5 R5 K0 ["DownloadAndSave"]
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
       10 LOADK                            R3 K4 ["GuiService"]
       11 NAMECALL                         R1 R1 K5 ["GetService"]
       13 CALL                             R1 2 1
       14 GETIMPORT                        R2 K7 [script]
       16 GETTABLEKS                       R2 R2 K8 ["Parent"]
       18 GETTABLEKS                       R2 R2 K8 ["Parent"]
       20 GETTABLEKS                       R2 R2 K8 ["Parent"]
       22 GETIMPORT                        R3 K10 [require]
       24 GETTABLEKS                       R4 R2 K11 ["Packages"]
       26 GETTABLEKS                       R4 R4 K12 ["Roact"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K10 [require]
       31 GETTABLEKS                       R5 R2 K11 ["Packages"]
       33 GETTABLEKS                       R5 R5 K13 ["RoactRodux"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K10 [require]
       38 GETTABLEKS                       R6 R2 K11 ["Packages"]
       40 GETTABLEKS                       R6 R6 K14 ["Framework"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R6 R5 K15 ["ContextServices"]
       45 GETTABLEKS                       R7 R6 K16 ["withContext"]
       47 GETTABLEKS                       R8 R5 K17 ["UI"]
       49 GETTABLEKS                       R9 R8 K18 ["LinkText"]
       51 GETTABLEKS                       R10 R8 K19 ["Pane"]
       53 GETTABLEKS                       R11 R8 K20 ["TextLabel"]
       55 GETIMPORT                        R12 K10 [require]
       57 GETTABLEKS                       R13 R2 K21 ["Src"]
       59 GETTABLEKS                       R13 R13 K15 ["ContextServices"]
       61 GETTABLEKS                       R13 R13 K22 ["AnalyticsContext"]
       63 CALL                             R12 1 1
       64 GETIMPORT                        R13 K10 [require]
       66 GETTABLEKS                       R14 R2 K21 ["Src"]
       68 GETTABLEKS                       R14 R14 K23 ["Components"]
       70 GETTABLEKS                       R14 R14 K24 ["LabeledTextButton"]
       72 CALL                             R13 1 1
       73 GETIMPORT                        R14 K10 [require]
       75 GETTABLEKS                       R15 R2 K21 ["Src"]
       77 GETTABLEKS                       R15 R15 K23 ["Components"]
       79 GETTABLEKS                       R15 R15 K25 ["Collapsible"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K10 [require]
       84 GETTABLEKS                       R16 R2 K21 ["Src"]
       86 GETTABLEKS                       R16 R16 K26 ["Util"]
       88 GETTABLEKS                       R16 R16 K27 ["isEmpty"]
       90 CALL                             R15 1 1
       91 GETIMPORT                        R16 K10 [require]
       93 GETTABLEKS                       R17 R2 K21 ["Src"]
       95 GETTABLEKS                       R17 R17 K26 ["Util"]
       97 GETTABLEKS                       R17 R17 K28 ["ShowDialog"]
       99 CALL                             R16 1 1
      100 GETIMPORT                        R17 K10 [require]
      102 GETTABLEKS                       R18 R2 K21 ["Src"]
      104 GETTABLEKS                       R18 R18 K29 ["Thunks"]
      106 GETTABLEKS                       R18 R18 K30 ["DownloadCloudTable"]
      108 CALL                             R17 1 1
      109 GETIMPORT                        R18 K10 [require]
      111 GETTABLEKS                       R19 R2 K21 ["Src"]
      113 GETTABLEKS                       R19 R19 K29 ["Thunks"]
      115 GETTABLEKS                       R19 R19 K31 ["UploadCloudTable"]
      117 CALL                             R18 1 1
      118 GETTABLEKS                       R19 R3 K32 ["PureComponent"]
      120 LOADK                            R21 K33 ["CloudTableSection"]
      121 NAMECALL                         R19 R19 K34 ["extend"]
      123 CALL                             R19 2 1
      124 DUPCLOSURE                       R20 K35 [PROTO_3]
      125 CAPTURE                          VAL R16
      126 CAPTURE                          VAL R1
      127 SETTABLEKS                       R20 R19 K36 ["init"]
      129 DUPCLOSURE                       R20 K37 [PROTO_7]
      130 CAPTURE                          VAL R15
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R13
      133 CAPTURE                          VAL R14
      134 CAPTURE                          VAL R9
      135 CAPTURE                          VAL R10
      136 CAPTURE                          VAL R0
      137 CAPTURE                          VAL R11
      138 SETTABLEKS                       R20 R19 K38 ["render"]
      140 MOVE                             R20 R7
      141 DUPTABLE                         R21 K45 [{"Plugin", "Stylizer", "Localization", "API", "Mouse", "Analytics"}]
      142 GETTABLEKS                       R22 R6 K39 ["Plugin"]
      144 SETTABLEKS                       R22 R21 K39 ["Plugin"]
      146 GETTABLEKS                       R22 R6 K40 ["Stylizer"]
      148 SETTABLEKS                       R22 R21 K40 ["Stylizer"]
      150 GETTABLEKS                       R22 R6 K41 ["Localization"]
      152 SETTABLEKS                       R22 R21 K41 ["Localization"]
      154 GETTABLEKS                       R22 R6 K42 ["API"]
      156 SETTABLEKS                       R22 R21 K42 ["API"]
      158 GETTABLEKS                       R22 R6 K43 ["Mouse"]
      160 SETTABLEKS                       R22 R21 K43 ["Mouse"]
      162 SETTABLEKS                       R12 R21 K44 ["Analytics"]
      164 CALL                             R20 1 1
      165 MOVE                             R21 R19
      166 CALL                             R20 1 1
      167 MOVE                             R19 R20
      168 DUPCLOSURE                       R20 K46 [PROTO_8]
      169 DUPCLOSURE                       R21 K47 [PROTO_11]
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R18
      172 GETTABLEKS                       R22 R4 K48 ["connect"]
      174 MOVE                             R23 R20
      175 MOVE                             R24 R21
      176 CALL                             R22 2 1
      177 MOVE                             R23 R19
      178 CALL                             R22 1 -1
      179 RETURN                           R22 -1
