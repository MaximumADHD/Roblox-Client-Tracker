PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["ColorPickerTopControls"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R5 1
       13 GETTABLEKS                       R5 R5 K5 ["createElement"]
       15 GETUPVAL                         R6 2
       16 DUPTABLE                         R7 K10 [{"LayoutOrder", "Layout", "Size", "Spacing"}]
       17 GETTABLEKS                       R8 R1 K6 ["LayoutOrder"]
       19 SETTABLEKS                       R8 R7 K6 ["LayoutOrder"]
       21 GETIMPORT                        R8 K14 [Enum.FillDirection.Vertical]
       23 SETTABLEKS                       R8 R7 K7 ["Layout"]
       25 GETTABLEKS                       R8 R2 K8 ["Size"]
       27 SETTABLEKS                       R8 R7 K8 ["Size"]
       29 GETTABLEKS                       R8 R2 K9 ["Spacing"]
       31 SETTABLEKS                       R8 R7 K9 ["Spacing"]
       33 DUPTABLE                         R8 K18 [{"TitleText", "Buttons", "ColorPane"}]
       34 GETUPVAL                         R9 1
       35 GETTABLEKS                       R9 R9 K5 ["createElement"]
       37 GETUPVAL                         R10 3
       38 DUPTABLE                         R11 K20 [{"Text", "Size", "LayoutOrder"}]
       39 LOADK                            R18 K21 ["Info"]
       40 LOADK                            R19 K22 ["ColorPickerTitle"]
       41 NAMECALL                         R16 R3 K23 ["getText"]
       43 CALL                             R16 3 1
       44 MOVE                             R13 R16
       45 LOADK                            R14 K24 [" "]
       46 GETTABLEKS                       R15 R1 K25 ["TagName"]
       48 CONCAT                           R12 R13 R15
       49 SETTABLEKS                       R12 R11 K19 ["Text"]
       51 GETTABLEKS                       R12 R2 K26 ["TitleTextSize"]
       53 SETTABLEKS                       R12 R11 K8 ["Size"]
       55 NAMECALL                         R12 R4 K27 ["getNextOrder"]
       57 CALL                             R12 1 1
       58 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       60 CALL                             R9 2 1
       61 SETTABLEKS                       R9 R8 K15 ["TitleText"]
       63 GETUPVAL                         R9 1
       64 GETTABLEKS                       R9 R9 K5 ["createElement"]
       66 GETUPVAL                         R10 2
       67 DUPTABLE                         R11 K30 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "Spacing", "Padding"}]
       68 NAMECALL                         R12 R4 K27 ["getNextOrder"]
       70 CALL                             R12 1 1
       71 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       73 GETTABLEKS                       R12 R2 K31 ["ButtonsPaneSize"]
       75 SETTABLEKS                       R12 R11 K8 ["Size"]
       77 GETIMPORT                        R12 K33 [Enum.FillDirection.Horizontal]
       79 SETTABLEKS                       R12 R11 K7 ["Layout"]
       81 GETIMPORT                        R12 K35 [Enum.HorizontalAlignment.Center]
       83 SETTABLEKS                       R12 R11 K28 ["HorizontalAlignment"]
       85 GETTABLEKS                       R12 R2 K36 ["ButtonsPaneSpacing"]
       87 SETTABLEKS                       R12 R11 K9 ["Spacing"]
       89 GETTABLEKS                       R12 R2 K37 ["ButtonsPanePadding"]
       91 SETTABLEKS                       R12 R11 K29 ["Padding"]
       93 DUPTABLE                         R12 K40 [{"Cancel", "Submit"}]
       94 GETUPVAL                         R13 1
       95 GETTABLEKS                       R13 R13 K5 ["createElement"]
       97 GETUPVAL                         R14 4
       98 DUPTABLE                         R15 K45 [{["Size"], ["Text"], ["OnClick"], ["LayoutOrder"] = 1, ["Style"] = "Round"}]
       99 GETTABLEKS                       R16 R2 K46 ["CancelButtonSize"]
      101 SETTABLEKS                       R16 R15 K8 ["Size"]
      103 LOADK                            R18 K47 ["General"]
      104 LOADK                            R19 K38 ["Cancel"]
      105 NAMECALL                         R16 R3 K23 ["getText"]
      107 CALL                             R16 3 1
      108 SETTABLEKS                       R16 R15 K19 ["Text"]
      110 GETTABLEKS                       R16 R1 K48 ["Close"]
      112 SETTABLEKS                       R16 R15 K41 ["OnClick"]
      114 CALL                             R13 2 1
      115 SETTABLEKS                       R13 R12 K38 ["Cancel"]
      117 GETUPVAL                         R13 1
      118 GETTABLEKS                       R13 R13 K5 ["createElement"]
      120 GETUPVAL                         R14 4
      121 DUPTABLE                         R15 K51 [{["Size"], ["LayoutOrder"] = 2, ["Text"], ["Style"] = "RoundPrimary", ["OnClick"]}]
      122 GETTABLEKS                       R16 R2 K52 ["SubmitButtonSize"]
      124 SETTABLEKS                       R16 R15 K8 ["Size"]
      126 LOADK                            R18 K47 ["General"]
      127 LOADK                            R19 K53 ["Apply"]
      128 NAMECALL                         R16 R3 K23 ["getText"]
      130 CALL                             R16 3 1
      131 SETTABLEKS                       R16 R15 K19 ["Text"]
      133 GETTABLEKS                       R16 R1 K54 ["Save"]
      135 SETTABLEKS                       R16 R15 K41 ["OnClick"]
      137 CALL                             R13 2 1
      138 SETTABLEKS                       R13 R12 K39 ["Submit"]
      140 CALL                             R9 3 1
      141 SETTABLEKS                       R9 R8 K16 ["Buttons"]
      143 GETUPVAL                         R9 1
      144 GETTABLEKS                       R9 R9 K5 ["createElement"]
      146 GETUPVAL                         R10 2
      147 DUPTABLE                         R11 K55 [{"LayoutOrder", "Size", "Layout", "Spacing", "Padding"}]
      148 NAMECALL                         R12 R4 K27 ["getNextOrder"]
      150 CALL                             R12 1 1
      151 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      153 GETTABLEKS                       R12 R2 K56 ["ColorPaneSize"]
      155 SETTABLEKS                       R12 R11 K8 ["Size"]
      157 GETIMPORT                        R12 K33 [Enum.FillDirection.Horizontal]
      159 SETTABLEKS                       R12 R11 K7 ["Layout"]
      161 GETTABLEKS                       R12 R2 K57 ["ColorPaneSpacing"]
      163 SETTABLEKS                       R12 R11 K9 ["Spacing"]
      165 GETTABLEKS                       R12 R2 K58 ["ColorPanePadding"]
      167 SETTABLEKS                       R12 R11 K29 ["Padding"]
      169 DUPTABLE                         R12 K60 [{"TitleText", "Preview"}]
      170 GETUPVAL                         R13 1
      171 GETTABLEKS                       R13 R13 K5 ["createElement"]
      173 GETUPVAL                         R14 3
      174 DUPTABLE                         R15 K62 [{["TextXAlignment"], ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      175 GETIMPORT                        R16 K64 [Enum.TextXAlignment.Right]
      177 SETTABLEKS                       R16 R15 K61 ["TextXAlignment"]
      179 LOADK                            R18 K21 ["Info"]
      180 LOADK                            R19 K65 ["SelectedColor"]
      181 NAMECALL                         R16 R3 K23 ["getText"]
      183 CALL                             R16 3 1
      184 SETTABLEKS                       R16 R15 K19 ["Text"]
      186 GETTABLEKS                       R16 R2 K66 ["PreviewTitleSize"]
      188 SETTABLEKS                       R16 R15 K8 ["Size"]
      190 CALL                             R13 2 1
      191 SETTABLEKS                       R13 R12 K15 ["TitleText"]
      193 GETUPVAL                         R13 1
      194 GETTABLEKS                       R13 R13 K5 ["createElement"]
      196 GETUPVAL                         R14 2
      197 DUPTABLE                         R15 K68 [{["LayoutOrder"] = 2, ["Size"], ["BackgroundColor"]}]
      198 GETTABLEKS                       R16 R2 K69 ["ColorPreviewSize"]
      200 SETTABLEKS                       R16 R15 K8 ["Size"]
      202 GETTABLEKS                       R16 R1 K70 ["Color"]
      204 SETTABLEKS                       R16 R15 K67 ["BackgroundColor"]
      206 CALL                             R13 2 1
      207 SETTABLEKS                       R13 R12 K59 ["Preview"]
      209 CALL                             R9 3 1
      210 SETTABLEKS                       R9 R8 K17 ["ColorPane"]
      212 CALL                             R5 3 -1
      213 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R3 K10 ["Analytics"]
       31 GETTABLEKS                       R6 R3 K11 ["Localization"]
       33 GETTABLEKS                       R7 R2 K12 ["Style"]
       35 GETTABLEKS                       R7 R7 K13 ["Stylizer"]
       37 GETTABLEKS                       R8 R2 K14 ["UI"]
       39 GETTABLEKS                       R9 R8 K15 ["Button"]
       41 GETTABLEKS                       R10 R8 K16 ["Pane"]
       43 GETTABLEKS                       R11 R8 K17 ["TextLabel"]
       45 GETTABLEKS                       R12 R2 K18 ["Util"]
       47 GETTABLEKS                       R13 R12 K19 ["LayoutOrderIterator"]
       49 GETTABLEKS                       R14 R1 K20 ["PureComponent"]
       51 LOADK                            R16 K21 ["ColorPickerTopControls"]
       52 NAMECALL                         R14 R14 K22 ["extend"]
       54 CALL                             R14 2 1
       55 DUPCLOSURE                       R15 K23 [PROTO_0]
       56 CAPTURE                          VAL R13
       57 CAPTURE                          VAL R1
       58 CAPTURE                          VAL R10
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R9
       61 SETTABLEKS                       R15 R14 K24 ["render"]
       63 MOVE                             R15 R4
       64 DUPTABLE                         R16 K25 [{"Analytics", "Localization", "Stylizer"}]
       65 SETTABLEKS                       R5 R16 K10 ["Analytics"]
       67 SETTABLEKS                       R6 R16 K11 ["Localization"]
       69 SETTABLEKS                       R7 R16 K13 ["Stylizer"]
       71 CALL                             R15 1 1
       72 MOVE                             R16 R14
       73 CALL                             R15 1 1
       74 MOVE                             R14 R15
       75 RETURN                           R14 1
