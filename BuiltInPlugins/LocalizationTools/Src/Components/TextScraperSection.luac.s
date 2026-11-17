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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R6 R1 K4 ["IsBusy"]
       10 NOT                              R5 R6
       11 GETTABLEKS                       R6 R0 K5 ["state"]
       13 GETTABLEKS                       R6 R6 K6 ["isTextScraperRunning"]
       15 JUMPIFNOT                        R6 ; [+5]
       16 GETTABLEKS                       R7 R2 K7 ["TextCaptureButtonImage"]
       18 GETTABLEKS                       R7 R7 K8 ["On"]
       20 JUMPIF                           R7 ; [+4]
       21 GETTABLEKS                       R7 R2 K7 ["TextCaptureButtonImage"]
       23 GETTABLEKS                       R7 R7 K9 ["Off"]
       25 DUPTABLE                         R8 K12 [{"Padding", "TextCapture"}]
       26 GETUPVAL                         R9 0
       27 GETTABLEKS                       R9 R9 K13 ["createElement"]
       29 LOADK                            R10 K14 ["UIPadding"]
       30 DUPTABLE                         R11 K17 [{"PaddingTop", "PaddingLeft"}]
       31 GETIMPORT                        R12 K20 [UDim.new]
       33 LOADN                            R13 0
       34 GETTABLEKS                       R14 R2 K15 ["PaddingTop"]
       36 CALL                             R12 2 1
       37 SETTABLEKS                       R12 R11 K15 ["PaddingTop"]
       39 GETIMPORT                        R12 K20 [UDim.new]
       41 LOADN                            R13 0
       42 GETTABLEKS                       R14 R2 K21 ["LeftIndent"]
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K16 ["PaddingLeft"]
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K10 ["Padding"]
       50 GETUPVAL                         R9 0
       51 GETTABLEKS                       R9 R9 K13 ["createElement"]
       53 GETUPVAL                         R10 1
       54 DUPTABLE                         R11 K33 [{["Active"], ["Enabled"], ["ButtonText"] = "", ["ButtonImage"], ["LabelText"], ["LinkText"], ["LayoutOrder"] = 1, ["OnButtonClick"], ["Link"] = "https://create.roblox.com/docs/production/localization/automatic-translations"}]
       55 SETTABLEKS                       R5 R11 K22 ["Active"]
       57 SETTABLEKS                       R6 R11 K23 ["Enabled"]
       59 SETTABLEKS                       R7 R11 K26 ["ButtonImage"]
       61 LOADK                            R14 K34 ["TextScraperSection"]
       62 LOADK                            R15 K35 ["SectionDescription"]
       63 NAMECALL                         R12 R3 K36 ["getText"]
       65 CALL                             R12 3 1
       66 SETTABLEKS                       R12 R11 K27 ["LabelText"]
       68 LOADK                            R14 K34 ["TextScraperSection"]
       69 LOADK                            R15 K37 ["LearnMore"]
       70 NAMECALL                         R12 R3 K36 ["getText"]
       72 CALL                             R12 3 1
       73 SETTABLEKS                       R12 R11 K28 ["LinkText"]
       75 GETTABLEKS                       R12 R0 K38 ["toggleTextScraperEnabled"]
       77 SETTABLEKS                       R12 R11 K30 ["OnButtonClick"]
       79 CALL                             R9 2 1
       80 SETTABLEKS                       R9 R8 K11 ["TextCapture"]
       82 DUPTABLE                         R9 K41 [{"Padding", "SectionLabel", "Container"}]
       83 GETUPVAL                         R10 0
       84 GETTABLEKS                       R10 R10 K13 ["createElement"]
       86 LOADK                            R11 K14 ["UIPadding"]
       87 DUPTABLE                         R12 K42 [{"PaddingTop"}]
       88 GETIMPORT                        R13 K20 [UDim.new]
       90 LOADN                            R14 0
       91 GETTABLEKS                       R16 R2 K15 ["PaddingTop"]
       93 MULK                             R15 R16 K43 [2]
       94 CALL                             R13 2 1
       95 SETTABLEKS                       R13 R12 K15 ["PaddingTop"]
       97 CALL                             R10 2 1
       98 SETTABLEKS                       R10 R9 K10 ["Padding"]
      100 GETUPVAL                         R10 0
      101 GETTABLEKS                       R10 R10 K13 ["createElement"]
      103 GETUPVAL                         R11 2
      104 DUPTABLE                         R12 K48 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Text"], ["Style"] = "Subtitle"}]
      105 GETIMPORT                        R13 K51 [Enum.AutomaticSize.XY]
      107 SETTABLEKS                       R13 R12 K44 ["AutomaticSize"]
      109 LOADK                            R15 K34 ["TextScraperSection"]
      110 LOADK                            R16 K52 ["AutomaticTextCapture"]
      111 NAMECALL                         R13 R3 K36 ["getText"]
      113 CALL                             R13 3 1
      114 SETTABLEKS                       R13 R12 K45 ["Text"]
      116 CALL                             R10 2 1
      117 SETTABLEKS                       R10 R9 K39 ["SectionLabel"]
      119 GETUPVAL                         R10 0
      120 GETTABLEKS                       R10 R10 K13 ["createElement"]
      122 GETUPVAL                         R11 3
      123 DUPTABLE                         R12 K55 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2}]
      124 GETIMPORT                        R13 K57 [Enum.AutomaticSize.Y]
      126 SETTABLEKS                       R13 R12 K44 ["AutomaticSize"]
      128 GETIMPORT                        R13 K59 [Enum.HorizontalAlignment.Left]
      130 SETTABLEKS                       R13 R12 K53 ["HorizontalAlignment"]
      132 GETIMPORT                        R13 K62 [Enum.FillDirection.Vertical]
      134 SETTABLEKS                       R13 R12 K54 ["Layout"]
      136 MOVE                             R13 R8
      137 CALL                             R10 3 1
      138 SETTABLEKS                       R10 R9 K40 ["Container"]
      140 GETUPVAL                         R10 0
      141 GETTABLEKS                       R10 R10 K13 ["createElement"]
      143 GETUPVAL                         R11 3
      144 DUPTABLE                         R12 K63 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      145 GETIMPORT                        R13 K57 [Enum.AutomaticSize.Y]
      147 SETTABLEKS                       R13 R12 K44 ["AutomaticSize"]
      149 GETIMPORT                        R13 K59 [Enum.HorizontalAlignment.Left]
      151 SETTABLEKS                       R13 R12 K53 ["HorizontalAlignment"]
      153 GETIMPORT                        R13 K62 [Enum.FillDirection.Vertical]
      155 SETTABLEKS                       R13 R12 K54 ["Layout"]
      157 SETTABLEKS                       R4 R12 K3 ["LayoutOrder"]
      159 MOVE                             R13 R9
      160 CALL                             R10 3 -1
      161 RETURN                           R10 -1

PROTO_3:
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
       59 GETTABLEKS                       R12 R12 K20 ["Components"]
       61 GETTABLEKS                       R12 R12 K21 ["TextScraperToggle"]
       63 CALL                             R11 1 1
       64 GETIMPORT                        R12 K8 [require]
       66 GETTABLEKS                       R13 R1 K18 ["Src"]
       68 GETTABLEKS                       R13 R13 K22 ["Util"]
       70 GETTABLEKS                       R13 R13 K23 ["EmbeddedTableUtil"]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R13 R2 K24 ["PureComponent"]
       75 LOADK                            R15 K25 ["TextScraperSection"]
       76 NAMECALL                         R13 R13 K26 ["extend"]
       78 CALL                             R13 2 1
       79 DUPCLOSURE                       R14 K27 [PROTO_1]
       80 CAPTURE                          VAL R0
       81 CAPTURE                          VAL R12
       82 SETTABLEKS                       R14 R13 K28 ["init"]
       84 DUPCLOSURE                       R14 K29 [PROTO_2]
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R11
       87 CAPTURE                          VAL R9
       88 CAPTURE                          VAL R8
       89 SETTABLEKS                       R14 R13 K30 ["render"]
       91 DUPCLOSURE                       R14 K31 [PROTO_3]
       92 MOVE                             R15 R6
       93 DUPTABLE                         R16 K36 [{"Plugin", "Stylizer", "Localization", "Analytics"}]
       94 GETTABLEKS                       R17 R5 K32 ["Plugin"]
       96 SETTABLEKS                       R17 R16 K32 ["Plugin"]
       98 GETTABLEKS                       R17 R5 K33 ["Stylizer"]
      100 SETTABLEKS                       R17 R16 K33 ["Stylizer"]
      102 GETTABLEKS                       R17 R5 K34 ["Localization"]
      104 SETTABLEKS                       R17 R16 K34 ["Localization"]
      106 SETTABLEKS                       R10 R16 K35 ["Analytics"]
      108 CALL                             R15 1 1
      109 MOVE                             R16 R13
      110 CALL                             R15 1 1
      111 MOVE                             R13 R15
      112 GETTABLEKS                       R15 R3 K37 ["connect"]
      114 MOVE                             R16 R14
      115 CALL                             R15 1 1
      116 MOVE                             R16 R13
      117 CALL                             R15 1 -1
      118 RETURN                           R15 -1
