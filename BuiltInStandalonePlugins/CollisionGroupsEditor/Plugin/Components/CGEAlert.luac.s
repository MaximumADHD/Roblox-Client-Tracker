PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["CGEAlert"]
        8 GETTABLEKS                       R4 R1 K4 ["Title"]
       10 GETTABLEKS                       R5 R1 K5 ["Body"]
       12 LOADK                            R8 K6 ["Common"]
       13 LOADK                            R9 K7 ["LearnMore"]
       14 NAMECALL                         R6 R2 K8 ["getText"]
       16 CALL                             R6 3 1
       17 GETUPVAL                         R7 0
       18 GETTABLEKS                       R7 R7 K9 ["createElement"]
       20 GETUPVAL                         R8 1
       21 DUPTABLE                         R9 K17 [{["LayoutOrder"] = 1, ["AutomaticSize"], ["Padding"], ["BackgroundColor3"], ["Size"], ["OnClick"]}]
       22 GETIMPORT                        R10 K20 [Enum.AutomaticSize.Y]
       24 SETTABLEKS                       R10 R9 K12 ["AutomaticSize"]
       26 GETTABLEKS                       R10 R3 K13 ["Padding"]
       28 SETTABLEKS                       R10 R9 K13 ["Padding"]
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R10 R10 K21 ["darker"]
       33 GETTABLEKS                       R11 R3 K22 ["BackgroundColor"]
       35 GETTABLEKS                       R12 R3 K23 ["BackgroundColorHoverDarkerMultiplier"]
       37 CALL                             R10 2 1
       38 SETTABLEKS                       R10 R9 K14 ["BackgroundColor3"]
       40 GETIMPORT                        R10 K26 [UDim2.fromScale]
       42 LOADN                            R11 1
       43 LOADN                            R12 0
       44 CALL                             R10 2 1
       45 SETTABLEKS                       R10 R9 K15 ["Size"]
       47 GETTABLEKS                       R10 R1 K16 ["OnClick"]
       49 SETTABLEKS                       R10 R9 K16 ["OnClick"]
       51 DUPTABLE                         R10 K31 [{"UICorner", "UIStroke", "UISizeConstraint", "Inner"}]
       52 GETUPVAL                         R11 0
       53 GETTABLEKS                       R11 R11 K9 ["createElement"]
       55 LOADK                            R12 K27 ["UICorner"]
       56 DUPTABLE                         R13 K33 [{"CornerRadius"}]
       57 GETTABLEKS                       R14 R3 K32 ["CornerRadius"]
       59 SETTABLEKS                       R14 R13 K32 ["CornerRadius"]
       61 CALL                             R11 2 1
       62 SETTABLEKS                       R11 R10 K27 ["UICorner"]
       64 GETUPVAL                         R11 0
       65 GETTABLEKS                       R11 R11 K9 ["createElement"]
       67 LOADK                            R12 K28 ["UIStroke"]
       68 DUPTABLE                         R13 K36 [{"ApplyStrokeMode", "Color"}]
       69 GETIMPORT                        R14 K38 [Enum.ApplyStrokeMode.Border]
       71 SETTABLEKS                       R14 R13 K34 ["ApplyStrokeMode"]
       73 GETTABLEKS                       R14 R3 K39 ["BorderColor"]
       75 SETTABLEKS                       R14 R13 K35 ["Color"]
       77 CALL                             R11 2 1
       78 SETTABLEKS                       R11 R10 K28 ["UIStroke"]
       80 GETUPVAL                         R11 0
       81 GETTABLEKS                       R11 R11 K9 ["createElement"]
       83 LOADK                            R12 K29 ["UISizeConstraint"]
       84 DUPTABLE                         R13 K41 [{"MinSize"}]
       85 GETIMPORT                        R14 K44 [Vector2.new]
       87 LOADN                            R15 90
       88 LOADN                            R16 0
       89 CALL                             R14 2 1
       90 SETTABLEKS                       R14 R13 K40 ["MinSize"]
       92 CALL                             R11 2 1
       93 SETTABLEKS                       R11 R10 K29 ["UISizeConstraint"]
       95 GETUPVAL                         R11 0
       96 GETTABLEKS                       R11 R11 K9 ["createElement"]
       98 GETUPVAL                         R12 1
       99 DUPTABLE                         R13 K48 [{"AutomaticSize", "Padding", "Spacing", "Layout", "HorizontalAlignment", "Size"}]
      100 GETIMPORT                        R14 K20 [Enum.AutomaticSize.Y]
      102 SETTABLEKS                       R14 R13 K12 ["AutomaticSize"]
      104 GETTABLEKS                       R14 R3 K49 ["LinePadding"]
      106 SETTABLEKS                       R14 R13 K13 ["Padding"]
      108 GETTABLEKS                       R14 R3 K50 ["LineSpacing"]
      110 SETTABLEKS                       R14 R13 K45 ["Spacing"]
      112 GETIMPORT                        R14 K53 [Enum.FillDirection.Vertical]
      114 SETTABLEKS                       R14 R13 K46 ["Layout"]
      116 GETIMPORT                        R14 K55 [Enum.HorizontalAlignment.Left]
      118 SETTABLEKS                       R14 R13 K47 ["HorizontalAlignment"]
      120 GETIMPORT                        R14 K26 [UDim2.fromScale]
      122 LOADN                            R15 1
      123 LOADN                            R16 0
      124 CALL                             R14 2 1
      125 SETTABLEKS                       R14 R13 K15 ["Size"]
      127 DUPTABLE                         R14 K57 [{"TopBar", "Body"}]
      128 GETUPVAL                         R15 0
      129 GETTABLEKS                       R15 R15 K9 ["createElement"]
      131 GETUPVAL                         R16 3
      132 DUPTABLE                         R17 K63 [{["AutomaticSize"], ["LayoutOrder"] = 1, ["Size"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True, ["RichText"] = True}]
      133 GETIMPORT                        R18 K20 [Enum.AutomaticSize.Y]
      135 SETTABLEKS                       R18 R17 K12 ["AutomaticSize"]
      137 GETIMPORT                        R18 K26 [UDim2.fromScale]
      139 LOADN                            R19 1
      140 LOADN                            R20 0
      141 CALL                             R18 2 1
      142 SETTABLEKS                       R18 R17 K15 ["Size"]
      144 LOADK                            R19 K64 ["<b>%*</b>  <u>%*</u>"]
      145 MOVE                             R21 R4
      146 GETIMPORT                        R22 K67 [string.gsub]
      148 MOVE                             R23 R6
      149 LOADK                            R24 K68 [" "]
      150 LOADK                            R25 K69 [" "]
      151 CALL                             R22 3 1
      152 NAMECALL                         R19 R19 K70 ["format"]
      154 CALL                             R19 3 1
      155 MOVE                             R18 R19
      156 SETTABLEKS                       R18 R17 K58 ["Text"]
      158 GETIMPORT                        R18 K71 [Enum.TextXAlignment.Left]
      160 SETTABLEKS                       R18 R17 K59 ["TextXAlignment"]
      162 CALL                             R15 2 1
      163 SETTABLEKS                       R15 R14 K56 ["TopBar"]
      165 GETUPVAL                         R15 0
      166 GETTABLEKS                       R15 R15 K9 ["createElement"]
      168 GETUPVAL                         R16 3
      169 DUPTABLE                         R17 K73 [{["LayoutOrder"] = 2, ["AutomaticSize"], ["Text"], ["TextWrapped"] = True, ["TextXAlignment"], ["RichText"] = True}]
      170 GETIMPORT                        R18 K75 [Enum.AutomaticSize.XY]
      172 SETTABLEKS                       R18 R17 K12 ["AutomaticSize"]
      174 SETTABLEKS                       R5 R17 K58 ["Text"]
      176 GETIMPORT                        R18 K71 [Enum.TextXAlignment.Left]
      178 SETTABLEKS                       R18 R17 K59 ["TextXAlignment"]
      180 CALL                             R15 2 1
      181 SETTABLEKS                       R15 R14 K5 ["Body"]
      183 CALL                             R11 3 1
      184 SETTABLEKS                       R11 R10 K30 ["Inner"]
      186 CALL                             R7 3 -1
      187 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R2 K9 ["Style"]
       27 GETTABLEKS                       R4 R4 K10 ["Colors"]
       29 GETTABLEKS                       R5 R2 K11 ["UI"]
       31 GETTABLEKS                       R6 R5 K12 ["Pane"]
       33 GETTABLEKS                       R7 R5 K13 ["TextLabel"]
       35 GETTABLEKS                       R8 R1 K14 ["PureComponent"]
       37 LOADK                            R10 K15 ["CGEAlert"]
       38 NAMECALL                         R8 R8 K16 ["extend"]
       40 CALL                             R8 2 1
       41 DUPCLOSURE                       R9 K17 [PROTO_0]
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R6
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R7
       46 SETTABLEKS                       R9 R8 K18 ["render"]
       48 GETTABLEKS                       R9 R3 K19 ["withContext"]
       50 DUPTABLE                         R10 K22 [{"Stylizer", "Localization"}]
       51 GETTABLEKS                       R11 R3 K20 ["Stylizer"]
       53 SETTABLEKS                       R11 R10 K20 ["Stylizer"]
       55 GETTABLEKS                       R11 R3 K21 ["Localization"]
       57 SETTABLEKS                       R11 R10 K21 ["Localization"]
       59 CALL                             R9 1 1
       60 MOVE                             R10 R8
       61 CALL                             R9 1 1
       62 MOVE                             R8 R9
       63 RETURN                           R8 1
