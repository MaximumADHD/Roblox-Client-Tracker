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
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["Localization"]
        6 GETTABLEKS                       R4 R1 K3 ["LayoutOrder"]
        8 GETTABLEKS                       R6 R1 K4 ["IsBusy"]
       10 NOT                              R5 R6
       11 GETUPVAL                         R6 0
       12 GETTABLEKS                       R6 R6 K5 ["IsTextScraperRunning"]
       14 JUMPIFNOT                        R6 ; [+5]
       15 GETTABLEKS                       R7 R2 K6 ["TextCaptureButtonImage"]
       17 GETTABLEKS                       R7 R7 K7 ["On"]
       19 JUMPIF                           R7 ; [+4]
       20 GETTABLEKS                       R7 R2 K6 ["TextCaptureButtonImage"]
       22 GETTABLEKS                       R7 R7 K8 ["Off"]
       24 DUPTABLE                         R8 K11 [{"Padding", "TextCapture"}]
       25 GETUPVAL                         R9 1
       26 GETTABLEKS                       R9 R9 K12 ["createElement"]
       28 LOADK                            R10 K13 ["UIPadding"]
       29 DUPTABLE                         R11 K16 [{"PaddingTop", "PaddingLeft"}]
       30 GETIMPORT                        R12 K19 [UDim.new]
       32 LOADN                            R13 0
       33 GETTABLEKS                       R14 R2 K14 ["PaddingTop"]
       35 CALL                             R12 2 1
       36 SETTABLEKS                       R12 R11 K14 ["PaddingTop"]
       38 GETIMPORT                        R12 K19 [UDim.new]
       40 LOADN                            R13 0
       41 GETTABLEKS                       R14 R2 K20 ["LeftIndent"]
       43 CALL                             R12 2 1
       44 SETTABLEKS                       R12 R11 K15 ["PaddingLeft"]
       46 CALL                             R9 2 1
       47 SETTABLEKS                       R9 R8 K9 ["Padding"]
       49 GETUPVAL                         R9 1
       50 GETTABLEKS                       R9 R9 K12 ["createElement"]
       52 GETUPVAL                         R10 2
       53 DUPTABLE                         R11 K29 [{"Active", "Enabled", "ButtonText", "ButtonImage", "LabelText", "LinkText", "LayoutOrder", "OnButtonClick", "Link"}]
       54 SETTABLEKS                       R5 R11 K21 ["Active"]
       56 SETTABLEKS                       R6 R11 K22 ["Enabled"]
       58 LOADK                            R12 K30 [""]
       59 SETTABLEKS                       R12 R11 K23 ["ButtonText"]
       61 SETTABLEKS                       R7 R11 K24 ["ButtonImage"]
       63 LOADK                            R14 K31 ["TextScraperSection"]
       64 LOADK                            R15 K32 ["SectionDescription"]
       65 NAMECALL                         R12 R3 K33 ["getText"]
       67 CALL                             R12 3 1
       68 SETTABLEKS                       R12 R11 K25 ["LabelText"]
       70 LOADK                            R14 K31 ["TextScraperSection"]
       71 LOADK                            R15 K34 ["LearnMore"]
       72 NAMECALL                         R12 R3 K33 ["getText"]
       74 CALL                             R12 3 1
       75 SETTABLEKS                       R12 R11 K26 ["LinkText"]
       77 LOADN                            R12 1
       78 SETTABLEKS                       R12 R11 K3 ["LayoutOrder"]
       80 GETTABLEKS                       R12 R0 K35 ["toggleTextScraperEnabled"]
       82 SETTABLEKS                       R12 R11 K27 ["OnButtonClick"]
       84 LOADK                            R12 K36 ["https://create.roblox.com/docs/production/localization/automatic-translations"]
       85 SETTABLEKS                       R12 R11 K28 ["Link"]
       87 CALL                             R9 2 1
       88 SETTABLEKS                       R9 R8 K10 ["TextCapture"]
       90 DUPTABLE                         R9 K39 [{"Padding", "SectionLabel", "Container"}]
       91 GETUPVAL                         R10 1
       92 GETTABLEKS                       R10 R10 K12 ["createElement"]
       94 LOADK                            R11 K13 ["UIPadding"]
       95 DUPTABLE                         R12 K40 [{"PaddingTop"}]
       96 GETIMPORT                        R13 K19 [UDim.new]
       98 LOADN                            R14 0
       99 GETTABLEKS                       R16 R2 K14 ["PaddingTop"]
      101 MULK                             R15 R16 K41 [2]
      102 CALL                             R13 2 1
      103 SETTABLEKS                       R13 R12 K14 ["PaddingTop"]
      105 CALL                             R10 2 1
      106 SETTABLEKS                       R10 R9 K9 ["Padding"]
      108 GETUPVAL                         R10 1
      109 GETTABLEKS                       R10 R10 K12 ["createElement"]
      111 GETUPVAL                         R11 3
      112 DUPTABLE                         R12 K45 [{"AutomaticSize", "LayoutOrder", "Text", "Style"}]
      113 GETIMPORT                        R13 K48 [Enum.AutomaticSize.XY]
      115 SETTABLEKS                       R13 R12 K42 ["AutomaticSize"]
      117 LOADN                            R13 1
      118 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      120 LOADK                            R15 K31 ["TextScraperSection"]
      121 LOADK                            R16 K49 ["AutomaticTextCapture"]
      122 NAMECALL                         R13 R3 K33 ["getText"]
      124 CALL                             R13 3 1
      125 SETTABLEKS                       R13 R12 K43 ["Text"]
      127 LOADK                            R13 K50 ["Subtitle"]
      128 SETTABLEKS                       R13 R12 K44 ["Style"]
      130 CALL                             R10 2 1
      131 SETTABLEKS                       R10 R9 K37 ["SectionLabel"]
      133 GETUPVAL                         R10 1
      134 GETTABLEKS                       R10 R10 K12 ["createElement"]
      136 GETUPVAL                         R11 4
      137 DUPTABLE                         R12 K53 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      138 GETIMPORT                        R13 K55 [Enum.AutomaticSize.Y]
      140 SETTABLEKS                       R13 R12 K42 ["AutomaticSize"]
      142 GETIMPORT                        R13 K57 [Enum.HorizontalAlignment.Left]
      144 SETTABLEKS                       R13 R12 K51 ["HorizontalAlignment"]
      146 GETIMPORT                        R13 K60 [Enum.FillDirection.Vertical]
      148 SETTABLEKS                       R13 R12 K52 ["Layout"]
      150 LOADN                            R13 2
      151 SETTABLEKS                       R13 R12 K3 ["LayoutOrder"]
      153 MOVE                             R13 R8
      154 CALL                             R10 3 1
      155 SETTABLEKS                       R10 R9 K38 ["Container"]
      157 GETUPVAL                         R10 1
      158 GETTABLEKS                       R10 R10 K12 ["createElement"]
      160 GETUPVAL                         R11 4
      161 DUPTABLE                         R12 K53 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder"}]
      162 GETIMPORT                        R13 K55 [Enum.AutomaticSize.Y]
      164 SETTABLEKS                       R13 R12 K42 ["AutomaticSize"]
      166 GETIMPORT                        R13 K57 [Enum.HorizontalAlignment.Left]
      168 SETTABLEKS                       R13 R12 K51 ["HorizontalAlignment"]
      170 GETIMPORT                        R13 K60 [Enum.FillDirection.Vertical]
      172 SETTABLEKS                       R13 R12 K52 ["Layout"]
      174 SETTABLEKS                       R4 R12 K3 ["LayoutOrder"]
      176 MOVE                             R13 R9
      177 CALL                             R10 3 -1
      178 RETURN                           R10 -1

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
       80 CAPTURE                          VAL R12
       81 SETTABLEKS                       R14 R13 K28 ["init"]
       83 DUPCLOSURE                       R14 K29 [PROTO_2]
       84 CAPTURE                          VAL R0
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
