PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R1 R0 K1 ["Analytics"]
        5 NAMECALL                         R1 R1 K2 ["get"]
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K3 ["toggleTextScraperEnabled"]
       11 MOVE                             R3 R1
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 0
       14 DUPTABLE                         R4 K5 [{"isTextScraperRunning"}]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K6 ["IsTextScraperRunning"]
       18 SETTABLEKS                       R5 R4 K4 ["isTextScraperRunning"]
       20 NAMECALL                         R2 R2 K7 ["setState"]
       22 CALL                             R2 2 0
       23 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"isTextScraperRunning"}]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K2 ["IsTextScraperRunning"]
        4 SETTABLEKS                       R2 R1 K0 ["isTextScraperRunning"]
        6 SETTABLEKS                       R1 R0 K3 ["state"]
        8 NEWCLOSURE                       R1 P0
        9 CAPTURE                          VAL R0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U0
       12 SETTABLEKS                       R1 R0 K4 ["toggleTextScraperEnabled"]
       14 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["promptExportToCSVs"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+7]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["promptImportFromCSVs"]
        5 GETUPVAL                         R1 2
        6 GETUPVAL                         R2 3
        7 CALL                             R0 2 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R0 1
       10 GETTABLEKS                       R0 R0 K1 ["promptImportFromCSVs_deprecated"]
       12 GETUPVAL                         R1 2
       13 CALL                             R0 1 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["Analytics"]
        8 NAMECALL                         R4 R4 K4 ["get"]
       10 CALL                             R4 1 1
       11 GETTABLEKS                       R5 R1 K5 ["LayoutOrder"]
       13 GETTABLEKS                       R7 R1 K6 ["IsBusy"]
       15 NOT                              R6 R7
       16 DUPTABLE                         R7 K10 [{"Padding", "Export", "Import"}]
       17 GETUPVAL                         R8 0
       18 GETTABLEKS                       R8 R8 K11 ["createElement"]
       20 LOADK                            R9 K12 ["UIPadding"]
       21 DUPTABLE                         R10 K15 [{"PaddingTop", "PaddingLeft"}]
       22 GETIMPORT                        R11 K18 [UDim.new]
       24 LOADN                            R12 0
       25 GETTABLEKS                       R13 R2 K13 ["PaddingTop"]
       27 CALL                             R11 2 1
       28 SETTABLEKS                       R11 R10 K13 ["PaddingTop"]
       30 GETIMPORT                        R11 K18 [UDim.new]
       32 LOADN                            R12 0
       33 GETTABLEKS                       R13 R2 K19 ["LeftIndent"]
       35 CALL                             R11 2 1
       36 SETTABLEKS                       R11 R10 K14 ["PaddingLeft"]
       38 CALL                             R8 2 1
       39 SETTABLEKS                       R8 R7 K7 ["Padding"]
       41 GETUPVAL                         R8 0
       42 GETTABLEKS                       R8 R8 K11 ["createElement"]
       44 GETUPVAL                         R9 1
       45 DUPTABLE                         R10 K25 [{["Active"], ["ButtonText"], ["LabelText"], ["LayoutOrder"] = 2, ["OnButtonClick"]}]
       46 SETTABLEKS                       R6 R10 K20 ["Active"]
       48 LOADK                            R13 K26 ["EmbeddedTableSection"]
       49 LOADK                            R14 K27 ["ExportButton"]
       50 NAMECALL                         R11 R3 K28 ["getText"]
       52 CALL                             R11 3 1
       53 SETTABLEKS                       R11 R10 K21 ["ButtonText"]
       55 LOADK                            R13 K26 ["EmbeddedTableSection"]
       56 LOADK                            R14 K29 ["ExportTextLabel"]
       57 NAMECALL                         R11 R3 K28 ["getText"]
       59 CALL                             R11 3 1
       60 SETTABLEKS                       R11 R10 K22 ["LabelText"]
       62 NEWCLOSURE                       R11 P0
       63 CAPTURE                          UPVAL U2
       64 CAPTURE                          VAL R4
       65 SETTABLEKS                       R11 R10 K24 ["OnButtonClick"]
       67 CALL                             R8 2 1
       68 SETTABLEKS                       R8 R7 K8 ["Export"]
       70 GETUPVAL                         R8 0
       71 GETTABLEKS                       R8 R8 K11 ["createElement"]
       73 GETUPVAL                         R9 1
       74 DUPTABLE                         R10 K31 [{["Active"], ["ButtonText"], ["LabelText"], ["LayoutOrder"] = 3, ["OnButtonClick"]}]
       75 SETTABLEKS                       R6 R10 K20 ["Active"]
       77 LOADK                            R13 K26 ["EmbeddedTableSection"]
       78 LOADK                            R14 K32 ["ImportButton"]
       79 NAMECALL                         R11 R3 K28 ["getText"]
       81 CALL                             R11 3 1
       82 SETTABLEKS                       R11 R10 K21 ["ButtonText"]
       84 LOADK                            R13 K26 ["EmbeddedTableSection"]
       85 LOADK                            R14 K33 ["ImportTextLabel"]
       86 NAMECALL                         R11 R3 K28 ["getText"]
       88 CALL                             R11 3 1
       89 SETTABLEKS                       R11 R10 K22 ["LabelText"]
       91 NEWCLOSURE                       R11 P1
       92 CAPTURE                          UPVAL U3
       93 CAPTURE                          UPVAL U2
       94 CAPTURE                          VAL R4
       95 CAPTURE                          VAL R3
       96 SETTABLEKS                       R11 R10 K24 ["OnButtonClick"]
       98 CALL                             R8 2 1
       99 SETTABLEKS                       R8 R7 K9 ["Import"]
      101 DUPTABLE                         R8 K36 [{"Padding", "SectionLabel", "Container"}]
      102 GETUPVAL                         R9 0
      103 GETTABLEKS                       R9 R9 K11 ["createElement"]
      105 LOADK                            R10 K12 ["UIPadding"]
      106 DUPTABLE                         R11 K37 [{"PaddingTop"}]
      107 GETIMPORT                        R12 K18 [UDim.new]
      109 LOADN                            R13 0
      110 GETTABLEKS                       R15 R2 K13 ["PaddingTop"]
      112 MULK                             R14 R15 K23 [2]
      113 CALL                             R12 2 1
      114 SETTABLEKS                       R12 R11 K13 ["PaddingTop"]
      116 CALL                             R9 2 1
      117 SETTABLEKS                       R9 R8 K7 ["Padding"]
      119 GETUPVAL                         R9 0
      120 GETTABLEKS                       R9 R9 K11 ["createElement"]
      122 GETUPVAL                         R10 4
      123 DUPTABLE                         R11 K43 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Text"], ["Style"] = "Subtitle"}]
      124 GETIMPORT                        R12 K46 [Enum.AutomaticSize.XY]
      126 SETTABLEKS                       R12 R11 K38 ["AutomaticSize"]
      128 LOADK                            R14 K26 ["EmbeddedTableSection"]
      129 LOADK                            R15 K34 ["SectionLabel"]
      130 NAMECALL                         R12 R3 K28 ["getText"]
      132 CALL                             R12 3 1
      133 SETTABLEKS                       R12 R11 K40 ["Text"]
      135 CALL                             R9 2 1
      136 SETTABLEKS                       R9 R8 K34 ["SectionLabel"]
      138 GETUPVAL                         R9 0
      139 GETTABLEKS                       R9 R9 K11 ["createElement"]
      141 GETUPVAL                         R10 5
      142 DUPTABLE                         R11 K49 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2}]
      143 GETIMPORT                        R12 K51 [Enum.AutomaticSize.Y]
      145 SETTABLEKS                       R12 R11 K38 ["AutomaticSize"]
      147 GETIMPORT                        R12 K53 [Enum.HorizontalAlignment.Left]
      149 SETTABLEKS                       R12 R11 K47 ["HorizontalAlignment"]
      151 GETIMPORT                        R12 K56 [Enum.FillDirection.Vertical]
      153 SETTABLEKS                       R12 R11 K48 ["Layout"]
      155 MOVE                             R12 R7
      156 CALL                             R9 3 1
      157 SETTABLEKS                       R9 R8 K35 ["Container"]
      159 GETUPVAL                         R9 0
      160 GETTABLEKS                       R9 R9 K11 ["createElement"]
      162 GETUPVAL                         R10 5
      163 DUPTABLE                         R11 K57 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      164 GETIMPORT                        R12 K51 [Enum.AutomaticSize.Y]
      166 SETTABLEKS                       R12 R11 K38 ["AutomaticSize"]
      168 GETIMPORT                        R12 K53 [Enum.HorizontalAlignment.Left]
      170 SETTABLEKS                       R12 R11 K47 ["HorizontalAlignment"]
      172 GETIMPORT                        R12 K56 [Enum.FillDirection.Vertical]
      174 SETTABLEKS                       R12 R11 K48 ["Layout"]
      176 SETTABLEKS                       R5 R11 K5 ["LayoutOrder"]
      178 MOVE                             R12 R8
      179 CALL                             R9 3 -1
      180 RETURN                           R9 -1

PROTO_5:
        0 DUPTABLE                         R2 K1 [{"IsBusy"}]
        1 GETTABLEKS                       R3 R0 K2 ["CloudTable"]
        3 GETTABLEKS                       R3 R3 K0 ["IsBusy"]
        5 SETTABLEKS                       R3 R2 K0 ["IsBusy"]
        7 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["LocalizationService"]
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
       42 GETTABLEKS                       R8 R7 K16 ["Pane"]
       44 GETTABLEKS                       R9 R7 K17 ["TextLabel"]
       46 GETIMPORT                        R10 K8 [require]
       48 GETTABLEKS                       R11 R1 K18 ["Src"]
       50 GETTABLEKS                       R11 R11 K13 ["ContextServices"]
       52 GETTABLEKS                       R11 R11 K19 ["AnalyticsContext"]
       54 CALL                             R10 1 1
       55 GETIMPORT                        R11 K8 [require]
       57 GETTABLEKS                       R12 R1 K18 ["Src"]
       59 GETTABLEKS                       R12 R12 K20 ["Util"]
       61 GETTABLEKS                       R12 R12 K21 ["EmbeddedTableUtil"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K8 [require]
       66 GETTABLEKS                       R13 R1 K18 ["Src"]
       68 GETTABLEKS                       R13 R13 K22 ["Components"]
       70 GETTABLEKS                       R13 R13 K23 ["LabeledTextButton"]
       72 CALL                             R12 1 1
       73 GETIMPORT                        R13 K1 [game]
       75 LOADK                            R15 K24 ["EnableLocalizedLocalizationToolsErrorsApi"]
       76 NAMECALL                         R13 R13 K25 ["GetEngineFeature"]
       78 CALL                             R13 2 1
       79 GETTABLEKS                       R14 R2 K26 ["PureComponent"]
       81 LOADK                            R16 K27 ["EmbeddedTableSection"]
       82 NAMECALL                         R14 R14 K28 ["extend"]
       84 CALL                             R14 2 1
       85 DUPCLOSURE                       R15 K29 [PROTO_1]
       86 CAPTURE                          VAL R0
       87 CAPTURE                          VAL R11
       88 SETTABLEKS                       R15 R14 K30 ["init"]
       90 DUPCLOSURE                       R15 K31 [PROTO_4]
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R12
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R13
       95 CAPTURE                          VAL R9
       96 CAPTURE                          VAL R8
       97 SETTABLEKS                       R15 R14 K32 ["render"]
       99 DUPCLOSURE                       R15 K33 [PROTO_5]
      100 MOVE                             R16 R6
      101 DUPTABLE                         R17 K38 [{"Plugin", "Stylizer", "Localization", "Analytics"}]
      102 GETTABLEKS                       R18 R5 K34 ["Plugin"]
      104 SETTABLEKS                       R18 R17 K34 ["Plugin"]
      106 GETTABLEKS                       R18 R5 K35 ["Stylizer"]
      108 SETTABLEKS                       R18 R17 K35 ["Stylizer"]
      110 GETTABLEKS                       R18 R5 K36 ["Localization"]
      112 SETTABLEKS                       R18 R17 K36 ["Localization"]
      114 SETTABLEKS                       R10 R17 K37 ["Analytics"]
      116 CALL                             R16 1 1
      117 MOVE                             R17 R14
      118 CALL                             R16 1 1
      119 MOVE                             R14 R16
      120 GETTABLEKS                       R16 R3 K39 ["connect"]
      122 MOVE                             R17 R15
      123 CALL                             R16 1 1
      124 MOVE                             R17 R14
      125 CALL                             R16 1 -1
      126 RETURN                           R16 -1
