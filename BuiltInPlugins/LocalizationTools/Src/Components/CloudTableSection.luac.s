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
      215 JUMP                             ; [+56]
      216 GETUPVAL                         R9 1
      217 GETTABLEKS                       R9 R9 K16 ["createElement"]
      219 GETUPVAL                         R10 5
      220 DUPTABLE                         R11 K81 [{["Size"], ["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 1, ["BorderColor3"], ["LayoutOrder"] = 2, ["Layout"]}]
      221 GETIMPORT                        R12 K51 [UDim2.new]
      223 LOADN                            R13 1
      224 LOADN                            R14 0
      225 LOADN                            R15 0
      226 GETTABLEKS                       R16 R2 K82 ["PublishMessageHeight"]
      228 CALL                             R12 4 1
      229 SETTABLEKS                       R12 R11 K48 ["Size"]
      231 GETTABLEKS                       R12 R2 K83 ["MessageFrameBackground"]
      233 SETTABLEKS                       R12 R11 K77 ["BackgroundColor3"]
      235 GETTABLEKS                       R12 R2 K84 ["MessageFrameBorder"]
      237 SETTABLEKS                       R12 R11 K80 ["BorderColor3"]
      239 GETIMPORT                        R12 K76 [Enum.FillDirection.Vertical]
      241 SETTABLEKS                       R12 R11 K67 ["Layout"]
      243 DUPTABLE                         R12 K86 [{"PublishPlaceMessage"}]
      244 GETUPVAL                         R13 1
      245 GETTABLEKS                       R13 R13 K16 ["createElement"]
      247 GETUPVAL                         R14 6
      248 DUPTABLE                         R15 K89 [{["AutomaticSize"], ["Size"], ["Text"], ["TextWrapped"] = True}]
      249 GETIMPORT                        R16 K71 [Enum.AutomaticSize.Y]
      251 SETTABLEKS                       R16 R15 K65 ["AutomaticSize"]
      253 GETIMPORT                        R16 K91 [UDim2.fromScale]
      255 LOADN                            R17 1
      256 LOADN                            R18 0
      257 CALL                             R16 2 1
      258 SETTABLEKS                       R16 R15 K48 ["Size"]
      260 LOADK                            R18 K31 ["CloudTableSection"]
      261 LOADK                            R19 K85 ["PublishPlaceMessage"]
      262 NAMECALL                         R16 R3 K33 ["getText"]
      264 CALL                             R16 3 1
      265 SETTABLEKS                       R16 R15 K58 ["Text"]
      267 CALL                             R13 2 1
      268 SETTABLEKS                       R13 R12 K85 ["PublishPlaceMessage"]
      270 CALL                             R9 3 1
      271 MOVE                             R8 R9
      272 DUPTABLE                         R9 K94 [{"Padding", "SectionLabel", "Content"}]
      273 GETUPVAL                         R10 1
      274 GETTABLEKS                       R10 R10 K16 ["createElement"]
      276 LOADK                            R11 K17 ["UIPadding"]
      277 DUPTABLE                         R12 K95 [{"PaddingTop"}]
      278 GETIMPORT                        R13 K23 [UDim.new]
      280 LOADN                            R14 0
      281 GETTABLEKS                       R15 R2 K18 ["PaddingTop"]
      283 CALL                             R13 2 1
      284 SETTABLEKS                       R13 R12 K18 ["PaddingTop"]
      286 CALL                             R10 2 1
      287 SETTABLEKS                       R10 R9 K10 ["Padding"]
      289 GETUPVAL                         R10 1
      290 GETTABLEKS                       R10 R10 K16 ["createElement"]
      292 GETUPVAL                         R11 6
      293 DUPTABLE                         R12 K98 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Style"] = "Subtitle", ["Text"]}]
      294 GETIMPORT                        R13 K100 [Enum.AutomaticSize.XY]
      296 SETTABLEKS                       R13 R12 K65 ["AutomaticSize"]
      298 LOADK                            R15 K31 ["CloudTableSection"]
      299 LOADK                            R16 K92 ["SectionLabel"]
      300 NAMECALL                         R13 R3 K33 ["getText"]
      302 CALL                             R13 3 1
      303 SETTABLEKS                       R13 R12 K58 ["Text"]
      305 CALL                             R10 2 1
      306 SETTABLEKS                       R10 R9 K92 ["SectionLabel"]
      308 SETTABLEKS                       R8 R9 K93 ["Content"]
      310 GETUPVAL                         R10 1
      311 GETTABLEKS                       R10 R10 K16 ["createElement"]
      313 GETUPVAL                         R11 5
      314 DUPTABLE                         R12 K101 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      315 GETIMPORT                        R13 K71 [Enum.AutomaticSize.Y]
      317 SETTABLEKS                       R13 R12 K65 ["AutomaticSize"]
      319 GETIMPORT                        R13 K73 [Enum.HorizontalAlignment.Left]
      321 SETTABLEKS                       R13 R12 K66 ["HorizontalAlignment"]
      323 GETIMPORT                        R13 K76 [Enum.FillDirection.Vertical]
      325 SETTABLEKS                       R13 R12 K67 ["Layout"]
      327 SETTABLEKS                       R4 R12 K3 ["LayoutOrder"]
      329 MOVE                             R13 R9
      330 CALL                             R10 3 -1
      331 RETURN                           R10 -1

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
        3 LOADK                            R2 K2 ["GuiService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETTABLEKS                       R1 R1 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R3 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R3 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R4 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R4 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R5 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R5 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       38 GETTABLEKS                       R6 R5 K14 ["withContext"]
       40 GETTABLEKS                       R7 R4 K15 ["UI"]
       42 GETTABLEKS                       R8 R7 K16 ["LinkText"]
       44 GETTABLEKS                       R9 R7 K17 ["Pane"]
       46 GETTABLEKS                       R10 R7 K18 ["TextLabel"]
       48 GETIMPORT                        R11 K8 [require]
       50 GETTABLEKS                       R12 R1 K19 ["Src"]
       52 GETTABLEKS                       R12 R12 K13 ["ContextServices"]
       54 GETTABLEKS                       R12 R12 K20 ["AnalyticsContext"]
       56 CALL                             R11 1 1
       57 GETIMPORT                        R12 K8 [require]
       59 GETTABLEKS                       R13 R1 K19 ["Src"]
       61 GETTABLEKS                       R13 R13 K21 ["Components"]
       63 GETTABLEKS                       R13 R13 K22 ["LabeledTextButton"]
       65 CALL                             R12 1 1
       66 GETIMPORT                        R13 K8 [require]
       68 GETTABLEKS                       R14 R1 K19 ["Src"]
       70 GETTABLEKS                       R14 R14 K21 ["Components"]
       72 GETTABLEKS                       R14 R14 K23 ["Collapsible"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K8 [require]
       77 GETTABLEKS                       R15 R1 K19 ["Src"]
       79 GETTABLEKS                       R15 R15 K24 ["Util"]
       81 GETTABLEKS                       R15 R15 K25 ["isEmpty"]
       83 CALL                             R14 1 1
       84 GETIMPORT                        R15 K8 [require]
       86 GETTABLEKS                       R16 R1 K19 ["Src"]
       88 GETTABLEKS                       R16 R16 K24 ["Util"]
       90 GETTABLEKS                       R16 R16 K26 ["ShowDialog"]
       92 CALL                             R15 1 1
       93 GETIMPORT                        R16 K8 [require]
       95 GETTABLEKS                       R17 R1 K19 ["Src"]
       97 GETTABLEKS                       R17 R17 K27 ["Thunks"]
       99 GETTABLEKS                       R17 R17 K28 ["DownloadCloudTable"]
      101 CALL                             R16 1 1
      102 GETIMPORT                        R17 K8 [require]
      104 GETTABLEKS                       R18 R1 K19 ["Src"]
      106 GETTABLEKS                       R18 R18 K27 ["Thunks"]
      108 GETTABLEKS                       R18 R18 K29 ["UploadCloudTable"]
      110 CALL                             R17 1 1
      111 GETTABLEKS                       R18 R2 K30 ["PureComponent"]
      113 LOADK                            R20 K31 ["CloudTableSection"]
      114 NAMECALL                         R18 R18 K32 ["extend"]
      116 CALL                             R18 2 1
      117 DUPCLOSURE                       R19 K33 [PROTO_3]
      118 CAPTURE                          VAL R15
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R19 R18 K34 ["init"]
      122 DUPCLOSURE                       R19 K35 [PROTO_7]
      123 CAPTURE                          VAL R14
      124 CAPTURE                          VAL R2
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R13
      127 CAPTURE                          VAL R8
      128 CAPTURE                          VAL R9
      129 CAPTURE                          VAL R10
      130 SETTABLEKS                       R19 R18 K36 ["render"]
      132 MOVE                             R19 R6
      133 DUPTABLE                         R20 K43 [{"Plugin", "Stylizer", "Localization", "API", "Mouse", "Analytics"}]
      134 GETTABLEKS                       R21 R5 K37 ["Plugin"]
      136 SETTABLEKS                       R21 R20 K37 ["Plugin"]
      138 GETTABLEKS                       R21 R5 K38 ["Stylizer"]
      140 SETTABLEKS                       R21 R20 K38 ["Stylizer"]
      142 GETTABLEKS                       R21 R5 K39 ["Localization"]
      144 SETTABLEKS                       R21 R20 K39 ["Localization"]
      146 GETTABLEKS                       R21 R5 K40 ["API"]
      148 SETTABLEKS                       R21 R20 K40 ["API"]
      150 GETTABLEKS                       R21 R5 K41 ["Mouse"]
      152 SETTABLEKS                       R21 R20 K41 ["Mouse"]
      154 SETTABLEKS                       R11 R20 K42 ["Analytics"]
      156 CALL                             R19 1 1
      157 MOVE                             R20 R18
      158 CALL                             R19 1 1
      159 MOVE                             R18 R19
      160 DUPCLOSURE                       R19 K44 [PROTO_8]
      161 DUPCLOSURE                       R20 K45 [PROTO_11]
      162 CAPTURE                          VAL R16
      163 CAPTURE                          VAL R17
      164 GETTABLEKS                       R21 R3 K46 ["connect"]
      166 MOVE                             R22 R19
      167 MOVE                             R23 R20
      168 CALL                             R21 2 1
      169 MOVE                             R22 R18
      170 CALL                             R21 1 -1
      171 RETURN                           R21 -1
