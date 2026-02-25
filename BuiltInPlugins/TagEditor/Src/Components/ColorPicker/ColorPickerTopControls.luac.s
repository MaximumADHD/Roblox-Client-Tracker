PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R3 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R3 K2 ["ColorPickerTopControls"]
        6 GETTABLEKS                       R3 R1 K3 ["Localization"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R4 R5 K4 ["new"]
       11 CALL                             R4 0 1
       12 GETUPVAL                         R6 1
       13 GETTABLEKS                       R5 R6 K5 ["createElement"]
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
       34 GETUPVAL                         R10 1
       35 GETTABLEKS                       R9 R10 K5 ["createElement"]
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
       63 GETUPVAL                         R10 1
       64 GETTABLEKS                       R9 R10 K5 ["createElement"]
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
       94 GETUPVAL                         R14 1
       95 GETTABLEKS                       R13 R14 K5 ["createElement"]
       97 GETUPVAL                         R14 4
       98 DUPTABLE                         R15 K43 [{"Size", "Text", "OnClick", "LayoutOrder", "Style"}]
       99 GETTABLEKS                       R16 R2 K44 ["CancelButtonSize"]
      101 SETTABLEKS                       R16 R15 K8 ["Size"]
      103 LOADK                            R18 K45 ["General"]
      104 LOADK                            R19 K38 ["Cancel"]
      105 NAMECALL                         R16 R3 K23 ["getText"]
      107 CALL                             R16 3 1
      108 SETTABLEKS                       R16 R15 K19 ["Text"]
      110 GETTABLEKS                       R16 R1 K46 ["Close"]
      112 SETTABLEKS                       R16 R15 K41 ["OnClick"]
      114 LOADN                            R16 1
      115 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      117 LOADK                            R16 K47 ["Round"]
      118 SETTABLEKS                       R16 R15 K42 ["Style"]
      120 CALL                             R13 2 1
      121 SETTABLEKS                       R13 R12 K38 ["Cancel"]
      123 GETUPVAL                         R14 1
      124 GETTABLEKS                       R13 R14 K5 ["createElement"]
      126 GETUPVAL                         R14 4
      127 DUPTABLE                         R15 K48 [{"Size", "LayoutOrder", "Text", "Style", "OnClick"}]
      128 GETTABLEKS                       R16 R2 K49 ["SubmitButtonSize"]
      130 SETTABLEKS                       R16 R15 K8 ["Size"]
      132 LOADN                            R16 2
      133 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      135 LOADK                            R18 K45 ["General"]
      136 LOADK                            R19 K50 ["Apply"]
      137 NAMECALL                         R16 R3 K23 ["getText"]
      139 CALL                             R16 3 1
      140 SETTABLEKS                       R16 R15 K19 ["Text"]
      142 LOADK                            R16 K51 ["RoundPrimary"]
      143 SETTABLEKS                       R16 R15 K42 ["Style"]
      145 GETTABLEKS                       R16 R1 K52 ["Save"]
      147 SETTABLEKS                       R16 R15 K41 ["OnClick"]
      149 CALL                             R13 2 1
      150 SETTABLEKS                       R13 R12 K39 ["Submit"]
      152 CALL                             R9 3 1
      153 SETTABLEKS                       R9 R8 K16 ["Buttons"]
      155 GETUPVAL                         R10 1
      156 GETTABLEKS                       R9 R10 K5 ["createElement"]
      158 GETUPVAL                         R10 2
      159 DUPTABLE                         R11 K53 [{"LayoutOrder", "Size", "Layout", "Spacing", "Padding"}]
      160 NAMECALL                         R12 R4 K27 ["getNextOrder"]
      162 CALL                             R12 1 1
      163 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      165 GETTABLEKS                       R12 R2 K54 ["ColorPaneSize"]
      167 SETTABLEKS                       R12 R11 K8 ["Size"]
      169 GETIMPORT                        R12 K33 [Enum.FillDirection.Horizontal]
      171 SETTABLEKS                       R12 R11 K7 ["Layout"]
      173 GETTABLEKS                       R12 R2 K55 ["ColorPaneSpacing"]
      175 SETTABLEKS                       R12 R11 K9 ["Spacing"]
      177 GETTABLEKS                       R12 R2 K56 ["ColorPanePadding"]
      179 SETTABLEKS                       R12 R11 K29 ["Padding"]
      181 DUPTABLE                         R12 K58 [{"TitleText", "Preview"}]
      182 GETUPVAL                         R14 1
      183 GETTABLEKS                       R13 R14 K5 ["createElement"]
      185 GETUPVAL                         R14 3
      186 DUPTABLE                         R15 K60 [{"TextXAlignment", "Text", "Size", "LayoutOrder"}]
      187 GETIMPORT                        R16 K62 [Enum.TextXAlignment.Right]
      189 SETTABLEKS                       R16 R15 K59 ["TextXAlignment"]
      191 LOADK                            R18 K21 ["Info"]
      192 LOADK                            R19 K63 ["SelectedColor"]
      193 NAMECALL                         R16 R3 K23 ["getText"]
      195 CALL                             R16 3 1
      196 SETTABLEKS                       R16 R15 K19 ["Text"]
      198 GETTABLEKS                       R16 R2 K64 ["PreviewTitleSize"]
      200 SETTABLEKS                       R16 R15 K8 ["Size"]
      202 LOADN                            R16 1
      203 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      205 CALL                             R13 2 1
      206 SETTABLEKS                       R13 R12 K15 ["TitleText"]
      208 GETUPVAL                         R14 1
      209 GETTABLEKS                       R13 R14 K5 ["createElement"]
      211 GETUPVAL                         R14 2
      212 DUPTABLE                         R15 K66 [{"LayoutOrder", "Size", "BackgroundColor"}]
      213 LOADN                            R16 2
      214 SETTABLEKS                       R16 R15 K6 ["LayoutOrder"]
      216 GETTABLEKS                       R16 R2 K67 ["ColorPreviewSize"]
      218 SETTABLEKS                       R16 R15 K8 ["Size"]
      220 GETTABLEKS                       R16 R1 K68 ["Color"]
      222 SETTABLEKS                       R16 R15 K65 ["BackgroundColor"]
      224 CALL                             R13 2 1
      225 SETTABLEKS                       R13 R12 K57 ["Preview"]
      227 CALL                             R9 3 1
      228 SETTABLEKS                       R9 R8 K17 ["ColorPane"]
      230 CALL                             R5 3 -1
      231 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R3 K10 ["Analytics"]
       31 GETTABLEKS                       R6 R3 K11 ["Localization"]
       33 GETTABLEKS                       R8 R2 K12 ["Style"]
       35 GETTABLEKS                       R7 R8 K13 ["Stylizer"]
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
