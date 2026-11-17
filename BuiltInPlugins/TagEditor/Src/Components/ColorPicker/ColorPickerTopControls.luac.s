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
       39 LOADK                            R15 K21 ["Info"]
       40 LOADK                            R16 K22 ["ColorPickerTitle"]
       41 NAMECALL                         R13 R3 K23 ["getText"]
       43 CALL                             R13 3 1
       44 LOADK                            R14 K24 [" "]
       45 GETTABLEKS                       R15 R1 K25 ["TagName"]
       47 CONCAT                           R12 R13 R15
       48 SETTABLEKS                       R12 R11 K19 ["Text"]
       50 GETTABLEKS                       R12 R2 K26 ["TitleTextSize"]
       52 SETTABLEKS                       R12 R11 K8 ["Size"]
       54 NAMECALL                         R12 R4 K27 ["getNextOrder"]
       56 CALL                             R12 1 1
       57 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       59 CALL                             R9 2 1
       60 SETTABLEKS                       R9 R8 K15 ["TitleText"]
       62 GETUPVAL                         R9 1
       63 GETTABLEKS                       R9 R9 K5 ["createElement"]
       65 GETUPVAL                         R10 2
       66 DUPTABLE                         R11 K30 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "Spacing", "Padding"}]
       67 NAMECALL                         R12 R4 K27 ["getNextOrder"]
       69 CALL                             R12 1 1
       70 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
       72 GETTABLEKS                       R12 R2 K31 ["ButtonsPaneSize"]
       74 SETTABLEKS                       R12 R11 K8 ["Size"]
       76 GETIMPORT                        R12 K33 [Enum.FillDirection.Horizontal]
       78 SETTABLEKS                       R12 R11 K7 ["Layout"]
       80 GETIMPORT                        R12 K35 [Enum.HorizontalAlignment.Center]
       82 SETTABLEKS                       R12 R11 K28 ["HorizontalAlignment"]
       84 GETTABLEKS                       R12 R2 K36 ["ButtonsPaneSpacing"]
       86 SETTABLEKS                       R12 R11 K9 ["Spacing"]
       88 GETTABLEKS                       R12 R2 K37 ["ButtonsPanePadding"]
       90 SETTABLEKS                       R12 R11 K29 ["Padding"]
       92 DUPTABLE                         R12 K40 [{"Cancel", "Submit"}]
       93 GETUPVAL                         R13 1
       94 GETTABLEKS                       R13 R13 K5 ["createElement"]
       96 GETUPVAL                         R14 4
       97 DUPTABLE                         R15 K45 [{["Size"], ["Text"], ["OnClick"], ["LayoutOrder"] = 1, ["Style"] = "Round"}]
       98 GETTABLEKS                       R16 R2 K46 ["CancelButtonSize"]
      100 SETTABLEKS                       R16 R15 K8 ["Size"]
      102 LOADK                            R18 K47 ["General"]
      103 LOADK                            R19 K38 ["Cancel"]
      104 NAMECALL                         R16 R3 K23 ["getText"]
      106 CALL                             R16 3 1
      107 SETTABLEKS                       R16 R15 K19 ["Text"]
      109 GETTABLEKS                       R16 R1 K48 ["Close"]
      111 SETTABLEKS                       R16 R15 K41 ["OnClick"]
      113 CALL                             R13 2 1
      114 SETTABLEKS                       R13 R12 K38 ["Cancel"]
      116 GETUPVAL                         R13 1
      117 GETTABLEKS                       R13 R13 K5 ["createElement"]
      119 GETUPVAL                         R14 4
      120 DUPTABLE                         R15 K51 [{["Size"], ["LayoutOrder"] = 2, ["Text"], ["Style"] = "RoundPrimary", ["OnClick"]}]
      121 GETTABLEKS                       R16 R2 K52 ["SubmitButtonSize"]
      123 SETTABLEKS                       R16 R15 K8 ["Size"]
      125 LOADK                            R18 K47 ["General"]
      126 LOADK                            R19 K53 ["Apply"]
      127 NAMECALL                         R16 R3 K23 ["getText"]
      129 CALL                             R16 3 1
      130 SETTABLEKS                       R16 R15 K19 ["Text"]
      132 GETTABLEKS                       R16 R1 K54 ["Save"]
      134 SETTABLEKS                       R16 R15 K41 ["OnClick"]
      136 CALL                             R13 2 1
      137 SETTABLEKS                       R13 R12 K39 ["Submit"]
      139 CALL                             R9 3 1
      140 SETTABLEKS                       R9 R8 K16 ["Buttons"]
      142 GETUPVAL                         R9 1
      143 GETTABLEKS                       R9 R9 K5 ["createElement"]
      145 GETUPVAL                         R10 2
      146 DUPTABLE                         R11 K55 [{"LayoutOrder", "Size", "Layout", "Spacing", "Padding"}]
      147 NAMECALL                         R12 R4 K27 ["getNextOrder"]
      149 CALL                             R12 1 1
      150 SETTABLEKS                       R12 R11 K6 ["LayoutOrder"]
      152 GETTABLEKS                       R12 R2 K56 ["ColorPaneSize"]
      154 SETTABLEKS                       R12 R11 K8 ["Size"]
      156 GETIMPORT                        R12 K33 [Enum.FillDirection.Horizontal]
      158 SETTABLEKS                       R12 R11 K7 ["Layout"]
      160 GETTABLEKS                       R12 R2 K57 ["ColorPaneSpacing"]
      162 SETTABLEKS                       R12 R11 K9 ["Spacing"]
      164 GETTABLEKS                       R12 R2 K58 ["ColorPanePadding"]
      166 SETTABLEKS                       R12 R11 K29 ["Padding"]
      168 DUPTABLE                         R12 K60 [{"TitleText", "Preview"}]
      169 GETUPVAL                         R13 1
      170 GETTABLEKS                       R13 R13 K5 ["createElement"]
      172 GETUPVAL                         R14 3
      173 DUPTABLE                         R15 K62 [{["TextXAlignment"], ["Text"], ["Size"], ["LayoutOrder"] = 1}]
      174 GETIMPORT                        R16 K64 [Enum.TextXAlignment.Right]
      176 SETTABLEKS                       R16 R15 K61 ["TextXAlignment"]
      178 LOADK                            R18 K21 ["Info"]
      179 LOADK                            R19 K65 ["SelectedColor"]
      180 NAMECALL                         R16 R3 K23 ["getText"]
      182 CALL                             R16 3 1
      183 SETTABLEKS                       R16 R15 K19 ["Text"]
      185 GETTABLEKS                       R16 R2 K66 ["PreviewTitleSize"]
      187 SETTABLEKS                       R16 R15 K8 ["Size"]
      189 CALL                             R13 2 1
      190 SETTABLEKS                       R13 R12 K15 ["TitleText"]
      192 GETUPVAL                         R13 1
      193 GETTABLEKS                       R13 R13 K5 ["createElement"]
      195 GETUPVAL                         R14 2
      196 DUPTABLE                         R15 K68 [{["LayoutOrder"] = 2, ["Size"], ["BackgroundColor"]}]
      197 GETTABLEKS                       R16 R2 K69 ["ColorPreviewSize"]
      199 SETTABLEKS                       R16 R15 K8 ["Size"]
      201 GETTABLEKS                       R16 R1 K70 ["Color"]
      203 SETTABLEKS                       R16 R15 K67 ["BackgroundColor"]
      205 CALL                             R13 2 1
      206 SETTABLEKS                       R13 R12 K59 ["Preview"]
      208 CALL                             R9 3 1
      209 SETTABLEKS                       R9 R8 K17 ["ColorPane"]
      211 CALL                             R5 3 -1
      212 RETURN                           R5 -1

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
