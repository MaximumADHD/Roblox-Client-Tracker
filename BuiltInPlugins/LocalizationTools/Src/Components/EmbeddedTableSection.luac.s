PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Analytics"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R2 R3 K3 ["toggleTextScraperEnabled"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 NEWTABLE                         R4 0 0
       16 NAMECALL                         R2 R2 K4 ["setState"]
       18 CALL                             R2 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 SETTABLEKS                       R1 R0 K0 ["toggleTextScraperEnabled"]
        5 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["promptExportToCSVs"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["promptExportToCSVs"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["promptImportFromCSVs"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K1 ["promptImportFromCSVs_deprecated"]
       12 GETUPVAL                         R1 2
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["promptImportFromCSVs"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R0 R1 K1 ["promptImportFromCSVs_deprecated"]
       12 GETUPVAL                         R1 2
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Analytics"]
        8 NAMECALL                         R4 R4 K4 ["get"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R1 K5 ["LayoutOrder"]
       13 GETTABLEKS                       R7 R1 K6 ["IsBusy"]
       15 NOT                              R6 R7
       16 GETUPVAL                         R8 0
       17 GETTABLEKS                       R7 R8 K7 ["IsTextScraperRunning"]
       19 JUMPIFNOT                        R7 ; [+5]
       20 GETTABLEKS                       R9 R2 K8 ["TextCaptureButtonImage"]
       22 GETTABLEKS                       R8 R9 K9 ["On"]
       24 JUMPIF                           R8 ; [+4]
       25 GETTABLEKS                       R9 R2 K8 ["TextCaptureButtonImage"]
       27 GETTABLEKS                       R8 R9 K10 ["Off"]
       29 JUMPIFNOT                        R7 ; [+6]
       30 LOADK                            R11 K11 ["EmbeddedTableSection"]
       31 LOADK                            R12 K12 ["TextCaptureStopText"]
       32 NAMECALL                         R9 R3 K13 ["getText"]
       34 CALL                             R9 3 1
       35 JUMPIF                           R9 ; [+5]
       36 LOADK                            R11 K11 ["EmbeddedTableSection"]
       37 LOADK                            R12 K14 ["TextCaptureStartText"]
       38 NAMECALL                         R9 R3 K13 ["getText"]
       40 CALL                             R9 3 1
       41 DUPTABLE                         R10 K19 [{"Padding", "TextCapture", "Export", "Import"}]
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R11 R12 K20 ["createElement"]
       45 LOADK                            R12 K21 ["UIPadding"]
       46 DUPTABLE                         R13 K24 [{"PaddingTop", "PaddingLeft"}]
       47 GETIMPORT                        R14 K27 [UDim.new]
       49 LOADN                            R15 0
       50 GETTABLEKS                       R16 R2 K22 ["PaddingTop"]
       52 CALL                             R14 2 1
       53 SETTABLEKS                       R14 R13 K22 ["PaddingTop"]
       55 GETIMPORT                        R14 K27 [UDim.new]
       57 LOADN                            R15 0
       58 GETTABLEKS                       R16 R2 K28 ["LeftIndent"]
       60 CALL                             R14 2 1
       61 SETTABLEKS                       R14 R13 K23 ["PaddingLeft"]
       63 CALL                             R11 2 1
       64 SETTABLEKS                       R11 R10 K15 ["Padding"]
       66 GETUPVAL                         R12 2
       67 JUMPIFNOT                        R12 ; [+2]
       68 LOADNIL                          R11
       69 JUMP                             ; [+26]
       70 GETUPVAL                         R12 1
       71 GETTABLEKS                       R11 R12 K20 ["createElement"]
       73 GETUPVAL                         R12 3
       74 DUPTABLE                         R13 K34 [{"Active", "ButtonText", "ButtonImage", "LabelText", "LayoutOrder", "OnButtonClick"}]
       75 SETTABLEKS                       R6 R13 K29 ["Active"]
       77 LOADK                            R16 K11 ["EmbeddedTableSection"]
       78 LOADK                            R17 K35 ["TextCaptureButton"]
       79 NAMECALL                         R14 R3 K13 ["getText"]
       81 CALL                             R14 3 1
       82 SETTABLEKS                       R14 R13 K30 ["ButtonText"]
       84 SETTABLEKS                       R8 R13 K31 ["ButtonImage"]
       86 SETTABLEKS                       R9 R13 K32 ["LabelText"]
       88 LOADN                            R14 1
       89 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
       91 GETTABLEKS                       R14 R0 K36 ["toggleTextScraperEnabled"]
       93 SETTABLEKS                       R14 R13 K33 ["OnButtonClick"]
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K16 ["TextCapture"]
       98 GETUPVAL                         R12 2
       99 JUMPIFNOT                        R12 ; [+31]
      100 GETUPVAL                         R12 1
      101 GETTABLEKS                       R11 R12 K20 ["createElement"]
      103 GETUPVAL                         R12 4
      104 DUPTABLE                         R13 K37 [{"Active", "ButtonText", "LabelText", "LayoutOrder", "OnButtonClick"}]
      105 SETTABLEKS                       R6 R13 K29 ["Active"]
      107 LOADK                            R16 K11 ["EmbeddedTableSection"]
      108 LOADK                            R17 K38 ["ExportButton"]
      109 NAMECALL                         R14 R3 K13 ["getText"]
      111 CALL                             R14 3 1
      112 SETTABLEKS                       R14 R13 K30 ["ButtonText"]
      114 LOADK                            R16 K11 ["EmbeddedTableSection"]
      115 LOADK                            R17 K39 ["ExportTextLabel"]
      116 NAMECALL                         R14 R3 K13 ["getText"]
      118 CALL                             R14 3 1
      119 SETTABLEKS                       R14 R13 K32 ["LabelText"]
      121 LOADN                            R14 2
      122 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      124 NEWCLOSURE                       R14 P0
      125 CAPTURE                          UPVAL U5
      126 CAPTURE                          VAL R4
      127 SETTABLEKS                       R14 R13 K33 ["OnButtonClick"]
      129 CALL                             R11 2 1
      130 JUMP                             ; [+34]
      131 GETUPVAL                         R12 1
      132 GETTABLEKS                       R11 R12 K20 ["createElement"]
      134 GETUPVAL                         R12 3
      135 DUPTABLE                         R13 K34 [{"Active", "ButtonText", "ButtonImage", "LabelText", "LayoutOrder", "OnButtonClick"}]
      136 SETTABLEKS                       R6 R13 K29 ["Active"]
      138 LOADK                            R16 K11 ["EmbeddedTableSection"]
      139 LOADK                            R17 K38 ["ExportButton"]
      140 NAMECALL                         R14 R3 K13 ["getText"]
      142 CALL                             R14 3 1
      143 SETTABLEKS                       R14 R13 K30 ["ButtonText"]
      145 GETTABLEKS                       R14 R2 K40 ["ExportButtonImage"]
      147 SETTABLEKS                       R14 R13 K31 ["ButtonImage"]
      149 LOADK                            R16 K11 ["EmbeddedTableSection"]
      150 LOADK                            R17 K39 ["ExportTextLabel"]
      151 NAMECALL                         R14 R3 K13 ["getText"]
      153 CALL                             R14 3 1
      154 SETTABLEKS                       R14 R13 K32 ["LabelText"]
      156 LOADN                            R14 2
      157 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      159 NEWCLOSURE                       R14 P1
      160 CAPTURE                          UPVAL U5
      161 CAPTURE                          VAL R4
      162 SETTABLEKS                       R14 R13 K33 ["OnButtonClick"]
      164 CALL                             R11 2 1
      165 SETTABLEKS                       R11 R10 K17 ["Export"]
      167 GETUPVAL                         R12 2
      168 JUMPIFNOT                        R12 ; [+33]
      169 GETUPVAL                         R12 1
      170 GETTABLEKS                       R11 R12 K20 ["createElement"]
      172 GETUPVAL                         R12 4
      173 DUPTABLE                         R13 K37 [{"Active", "ButtonText", "LabelText", "LayoutOrder", "OnButtonClick"}]
      174 SETTABLEKS                       R6 R13 K29 ["Active"]
      176 LOADK                            R16 K11 ["EmbeddedTableSection"]
      177 LOADK                            R17 K41 ["ImportButton"]
      178 NAMECALL                         R14 R3 K13 ["getText"]
      180 CALL                             R14 3 1
      181 SETTABLEKS                       R14 R13 K30 ["ButtonText"]
      183 LOADK                            R16 K11 ["EmbeddedTableSection"]
      184 LOADK                            R17 K42 ["ImportTextLabel"]
      185 NAMECALL                         R14 R3 K13 ["getText"]
      187 CALL                             R14 3 1
      188 SETTABLEKS                       R14 R13 K32 ["LabelText"]
      190 LOADN                            R14 3
      191 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      193 NEWCLOSURE                       R14 P2
      194 CAPTURE                          UPVAL U6
      195 CAPTURE                          UPVAL U5
      196 CAPTURE                          VAL R4
      197 CAPTURE                          VAL R3
      198 SETTABLEKS                       R14 R13 K33 ["OnButtonClick"]
      200 CALL                             R11 2 1
      201 JUMP                             ; [+36]
      202 GETUPVAL                         R12 1
      203 GETTABLEKS                       R11 R12 K20 ["createElement"]
      205 GETUPVAL                         R12 3
      206 DUPTABLE                         R13 K34 [{"Active", "ButtonText", "ButtonImage", "LabelText", "LayoutOrder", "OnButtonClick"}]
      207 SETTABLEKS                       R6 R13 K29 ["Active"]
      209 LOADK                            R16 K11 ["EmbeddedTableSection"]
      210 LOADK                            R17 K41 ["ImportButton"]
      211 NAMECALL                         R14 R3 K13 ["getText"]
      213 CALL                             R14 3 1
      214 SETTABLEKS                       R14 R13 K30 ["ButtonText"]
      216 GETTABLEKS                       R14 R2 K43 ["ImportButtonImage"]
      218 SETTABLEKS                       R14 R13 K31 ["ButtonImage"]
      220 LOADK                            R16 K11 ["EmbeddedTableSection"]
      221 LOADK                            R17 K42 ["ImportTextLabel"]
      222 NAMECALL                         R14 R3 K13 ["getText"]
      224 CALL                             R14 3 1
      225 SETTABLEKS                       R14 R13 K32 ["LabelText"]
      227 LOADN                            R14 3
      228 SETTABLEKS                       R14 R13 K5 ["LayoutOrder"]
      230 NEWCLOSURE                       R14 P3
      231 CAPTURE                          UPVAL U6
      232 CAPTURE                          UPVAL U5
      233 CAPTURE                          VAL R4
      234 CAPTURE                          VAL R3
      235 SETTABLEKS                       R14 R13 K33 ["OnButtonClick"]
      237 CALL                             R11 2 1
      238 SETTABLEKS                       R11 R10 K18 ["Import"]
      240 DUPTABLE                         R11 K46 [{"Padding", "SectionLabel", "Container"}]
      241 GETUPVAL                         R13 1
      242 GETTABLEKS                       R12 R13 K20 ["createElement"]
      244 LOADK                            R13 K21 ["UIPadding"]
      245 DUPTABLE                         R14 K47 [{"PaddingTop"}]
      246 GETIMPORT                        R15 K27 [UDim.new]
      248 LOADN                            R16 0
      249 GETTABLEKS                       R18 R2 K22 ["PaddingTop"]
      251 MULK                             R17 R18 K48 [2]
      252 CALL                             R15 2 1
      253 SETTABLEKS                       R15 R14 K22 ["PaddingTop"]
      255 CALL                             R12 2 1
      256 SETTABLEKS                       R12 R11 K15 ["Padding"]
      258 GETUPVAL                         R13 1
      259 GETTABLEKS                       R12 R13 K20 ["createElement"]
      261 GETUPVAL                         R13 7
      262 DUPTABLE                         R14 K52 [{"AutomaticSize", "LayoutOrder", "Text", "Style"}]
      263 GETIMPORT                        R15 K55 [Enum.AutomaticSize.XY]
      265 SETTABLEKS                       R15 R14 K49 ["AutomaticSize"]
      267 LOADN                            R15 1
      268 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      270 LOADK                            R17 K11 ["EmbeddedTableSection"]
      271 LOADK                            R18 K44 ["SectionLabel"]
      272 NAMECALL                         R15 R3 K13 ["getText"]
      274 CALL                             R15 3 1
      275 SETTABLEKS                       R15 R14 K50 ["Text"]
      277 LOADK                            R15 K56 ["Subtitle"]
      278 SETTABLEKS                       R15 R14 K51 ["Style"]
      280 CALL                             R12 2 1
      281 SETTABLEKS                       R12 R11 K44 ["SectionLabel"]
      283 GETUPVAL                         R13 1
      284 GETTABLEKS                       R12 R13 K20 ["createElement"]
      286 GETUPVAL                         R13 8
      287 DUPTABLE                         R14 K59 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      288 GETIMPORT                        R15 K61 [Enum.AutomaticSize.Y]
      290 SETTABLEKS                       R15 R14 K49 ["AutomaticSize"]
      292 GETIMPORT                        R15 K63 [Enum.HorizontalAlignment.Left]
      294 SETTABLEKS                       R15 R14 K57 ["HorizontalAlignment"]
      296 GETIMPORT                        R15 K66 [Enum.FillDirection.Vertical]
      298 SETTABLEKS                       R15 R14 K58 ["Layout"]
      300 LOADN                            R15 2
      301 SETTABLEKS                       R15 R14 K5 ["LayoutOrder"]
      303 MOVE                             R15 R10
      304 CALL                             R12 3 1
      305 SETTABLEKS                       R12 R11 K45 ["Container"]
      307 GETUPVAL                         R13 1
      308 GETTABLEKS                       R12 R13 K20 ["createElement"]
      310 GETUPVAL                         R13 8
      311 DUPTABLE                         R14 K59 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      312 GETIMPORT                        R15 K61 [Enum.AutomaticSize.Y]
      314 SETTABLEKS                       R15 R14 K49 ["AutomaticSize"]
      316 GETIMPORT                        R15 K63 [Enum.HorizontalAlignment.Left]
      318 SETTABLEKS                       R15 R14 K57 ["HorizontalAlignment"]
      320 GETIMPORT                        R15 K66 [Enum.FillDirection.Vertical]
      322 SETTABLEKS                       R15 R14 K58 ["Layout"]
      324 SETTABLEKS                       R5 R14 K5 ["LayoutOrder"]
      326 MOVE                             R15 R11
      327 CALL                             R12 3 -1
      328 RETURN                           R12 -1

PROTO_7:
        0 DUPTABLE                         R2 K1 [{"IsBusy"}]
        1 GETTABLEKS                       R4 R0 K2 ["CloudTable"]
        3 GETTABLEKS                       R3 R4 K0 ["IsBusy"]
        5 SETTABLEKS                       R3 R2 K0 ["IsBusy"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETIMPORT                        R2 K8 [require]
       17 GETTABLEKS                       R4 R1 K9 ["Packages"]
       19 GETTABLEKS                       R3 R4 K10 ["Roact"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K8 [require]
       24 GETTABLEKS                       R5 R1 K9 ["Packages"]
       26 GETTABLEKS                       R4 R5 K11 ["RoactRodux"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K8 [require]
       31 GETTABLEKS                       R6 R1 K9 ["Packages"]
       33 GETTABLEKS                       R5 R6 K12 ["Framework"]
       35 CALL                             R4 1 1
       36 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       38 GETTABLEKS                       R6 R5 K14 ["withContext"]
       40 GETTABLEKS                       R7 R4 K15 ["UI"]
       42 GETTABLEKS                       R8 R7 K16 ["Pane"]
       44 GETTABLEKS                       R9 R7 K17 ["TextLabel"]
       46 GETIMPORT                        R10 K8 [require]
       48 GETTABLEKS                       R13 R1 K18 ["Src"]
       50 GETTABLEKS                       R12 R13 K13 ["ContextServices"]
       52 GETTABLEKS                       R11 R12 K19 ["AnalyticsContext"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K8 [require]
       57 GETTABLEKS                       R14 R1 K18 ["Src"]
       59 GETTABLEKS                       R13 R14 K20 ["Components"]
       61 GETTABLEKS                       R12 R13 K21 ["LabeledImageButton"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K8 [require]
       66 GETTABLEKS                       R15 R1 K18 ["Src"]
       68 GETTABLEKS                       R14 R15 K22 ["Util"]
       70 GETTABLEKS                       R13 R14 K23 ["EmbeddedTableUtil"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K8 [require]
       75 GETTABLEKS                       R16 R1 K18 ["Src"]
       77 GETTABLEKS                       R15 R16 K20 ["Components"]
       79 GETTABLEKS                       R14 R15 K24 ["LabeledTextButton"]
       81 CALL                             R13 1 1
       82 GETIMPORT                        R14 K1 [game]
       84 LOADK                            R16 K25 ["EnableLocalizedLocalizationToolsErrorsApi"]
       85 NAMECALL                         R14 R14 K26 ["GetEngineFeature"]
       87 CALL                             R14 2 1
       88 GETIMPORT                        R15 K1 [game]
       90 LOADK                            R17 K27 ["LocalizationToolsUpdateTextScraperUI"]
       91 NAMECALL                         R15 R15 K28 ["GetFastFlag"]
       93 CALL                             R15 2 1
       94 GETTABLEKS                       R16 R2 K29 ["PureComponent"]
       96 LOADK                            R18 K30 ["EmbeddedTableSection"]
       97 NAMECALL                         R16 R16 K31 ["extend"]
       99 CALL                             R16 2 1
      100 DUPCLOSURE                       R17 K32 [PROTO_1]
      101 CAPTURE                          VAL R12
      102 SETTABLEKS                       R17 R16 K33 ["init"]
      104 DUPCLOSURE                       R17 K34 [PROTO_6]
      105 CAPTURE                          VAL R0
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R15
      108 CAPTURE                          VAL R11
      109 CAPTURE                          VAL R13
      110 CAPTURE                          VAL R12
      111 CAPTURE                          VAL R14
      112 CAPTURE                          VAL R9
      113 CAPTURE                          VAL R8
      114 SETTABLEKS                       R17 R16 K35 ["render"]
      116 DUPCLOSURE                       R17 K36 [PROTO_7]
      117 MOVE                             R18 R6
      118 DUPTABLE                         R19 K41 [{"Plugin", "Stylizer", "Localization", "Analytics"}]
      119 GETTABLEKS                       R20 R5 K37 ["Plugin"]
      121 SETTABLEKS                       R20 R19 K37 ["Plugin"]
      123 GETTABLEKS                       R20 R5 K38 ["Stylizer"]
      125 SETTABLEKS                       R20 R19 K38 ["Stylizer"]
      127 GETTABLEKS                       R20 R5 K39 ["Localization"]
      129 SETTABLEKS                       R20 R19 K39 ["Localization"]
      131 SETTABLEKS                       R10 R19 K40 ["Analytics"]
      133 CALL                             R18 1 1
      134 MOVE                             R19 R16
      135 CALL                             R18 1 1
      136 MOVE                             R16 R18
      137 GETTABLEKS                       R18 R3 K42 ["connect"]
      139 MOVE                             R19 R17
      140 CALL                             R18 1 1
      141 MOVE                             R19 R16
      142 CALL                             R18 1 -1
      143 RETURN                           R18 -1
