PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["searchOptions"]
        6 GETTABLEKS                       R4 R1 K3 ["Localization"]
        8 LOADK                            R7 K4 ["General"]
        9 LOADK                            R8 K5 ["SearchOptionsIncludeUnverifiedDescription"]
       10 NAMECALL                         R5 R4 K6 ["getText"]
       12 CALL                             R5 3 1
       13 LOADK                            R8 K4 ["General"]
       14 LOADK                            R9 K7 ["SearchOptionsIncludeUnverifiedHeader"]
       15 NAMECALL                         R6 R4 K6 ["getText"]
       17 CALL                             R6 3 1
       18 LOADK                            R9 K4 ["General"]
       19 LOADK                            R10 K8 ["SearchOptionsIncludeUnverifiedTooltip"]
       20 NAMECALL                         R7 R4 K6 ["getText"]
       22 CALL                             R7 3 1
       23 GETUPVAL                         R8 0
       24 GETTABLEKS                       R8 R8 K9 ["new"]
       26 CALL                             R8 0 1
       27 GETUPVAL                         R9 1
       28 GETTABLEKS                       R9 R9 K10 ["createElement"]
       30 GETUPVAL                         R10 2
       31 DUPTABLE                         R11 K17 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Spacing"] = 3}]
       32 GETIMPORT                        R12 K20 [Enum.AutomaticSize.XY]
       34 SETTABLEKS                       R12 R11 K11 ["AutomaticSize"]
       36 GETIMPORT                        R12 K22 [Enum.HorizontalAlignment.Left]
       38 SETTABLEKS                       R12 R11 K12 ["HorizontalAlignment"]
       40 GETIMPORT                        R12 K25 [Enum.FillDirection.Vertical]
       42 SETTABLEKS                       R12 R11 K13 ["Layout"]
       44 GETTABLEKS                       R12 R1 K14 ["LayoutOrder"]
       46 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       48 DUPTABLE                         R12 K28 [{"IncludeUnverifiedToggle", "VerifiedDescriptionContainer"}]
       49 GETUPVAL                         R13 1
       50 GETTABLEKS                       R13 R13 K10 ["createElement"]
       52 GETUPVAL                         R14 3
       53 DUPTABLE                         R15 K34 [{["Checked"], ["LayoutOrder"], ["OnClick"], ["Text"], ["TextWrapped"] = True}]
       54 GETTABLEKS                       R16 R1 K35 ["IsChecked"]
       56 SETTABLEKS                       R16 R15 K29 ["Checked"]
       58 NAMECALL                         R16 R8 K36 ["getNextOrder"]
       60 CALL                             R16 1 1
       61 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
       63 GETTABLEKS                       R16 R1 K30 ["OnClick"]
       65 SETTABLEKS                       R16 R15 K30 ["OnClick"]
       67 SETTABLEKS                       R6 R15 K31 ["Text"]
       69 CALL                             R13 2 1
       70 SETTABLEKS                       R13 R12 K26 ["IncludeUnverifiedToggle"]
       72 GETUPVAL                         R13 1
       73 GETTABLEKS                       R13 R13 K10 ["createElement"]
       75 GETUPVAL                         R14 2
       76 DUPTABLE                         R15 K40 [{["AutomaticSize"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"], ["Padding"], ["Spacing"] = 6, ["VerticalAlignment"]}]
       77 GETIMPORT                        R16 K20 [Enum.AutomaticSize.XY]
       79 SETTABLEKS                       R16 R15 K11 ["AutomaticSize"]
       81 GETIMPORT                        R16 K22 [Enum.HorizontalAlignment.Left]
       83 SETTABLEKS                       R16 R15 K12 ["HorizontalAlignment"]
       85 GETIMPORT                        R16 K42 [Enum.FillDirection.Horizontal]
       87 SETTABLEKS                       R16 R15 K13 ["Layout"]
       89 NAMECALL                         R16 R8 K36 ["getNextOrder"]
       91 CALL                             R16 1 1
       92 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
       94 DUPTABLE                         R16 K44 [{["Left"] = 24}]
       95 SETTABLEKS                       R16 R15 K37 ["Padding"]
       97 GETIMPORT                        R16 K46 [Enum.VerticalAlignment.Top]
       99 SETTABLEKS                       R16 R15 K39 ["VerticalAlignment"]
      101 DUPTABLE                         R16 K49 [{"Image", "VerifiedDescription"}]
      102 GETUPVAL                         R17 1
      103 GETTABLEKS                       R17 R17 K10 ["createElement"]
      105 GETUPVAL                         R18 4
      106 DUPTABLE                         R19 K53 [{"AnchorPoint", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      107 GETIMPORT                        R20 K55 [Vector2.new]
      109 LOADN                            R21 0
      110 LOADK                            R22 K56 [0.5]
      111 CALL                             R20 2 1
      112 SETTABLEKS                       R20 R19 K50 ["AnchorPoint"]
      114 GETUPVAL                         R20 5
      115 GETTABLEKS                       R20 R20 K57 ["WARNING_ICON_SMALL"]
      117 SETTABLEKS                       R20 R19 K47 ["Image"]
      119 GETTABLEKS                       R20 R3 K58 ["warningIconColor"]
      121 SETTABLEKS                       R20 R19 K51 ["ImageColor3"]
      123 NAMECALL                         R20 R8 K36 ["getNextOrder"]
      125 CALL                             R20 1 1
      126 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      128 GETIMPORT                        R20 K61 [UDim2.fromOffset]
      130 LOADN                            R21 16
      131 LOADN                            R22 16
      132 CALL                             R20 2 1
      133 SETTABLEKS                       R20 R19 K52 ["Size"]
      135 DUPTABLE                         R20 K63 [{"Tooltip"}]
      136 GETUPVAL                         R21 1
      137 GETTABLEKS                       R21 R21 K10 ["createElement"]
      139 GETUPVAL                         R22 6
      140 DUPTABLE                         R23 K66 [{["Text"], ["Priority"] = 11}]
      141 SETTABLEKS                       R7 R23 K31 ["Text"]
      143 CALL                             R21 2 1
      144 SETTABLEKS                       R21 R20 K62 ["Tooltip"]
      146 CALL                             R17 3 1
      147 SETTABLEKS                       R17 R16 K47 ["Image"]
      149 GETUPVAL                         R17 1
      150 GETTABLEKS                       R17 R17 K10 ["createElement"]
      152 GETUPVAL                         R18 7
      153 DUPTABLE                         R19 K72 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "SubText", ["Text"], ["TextSize"] = 14, ["TextWrapped"] = True, ["TextXAlignment"]}]
      154 GETIMPORT                        R20 K20 [Enum.AutomaticSize.XY]
      156 SETTABLEKS                       R20 R19 K11 ["AutomaticSize"]
      158 NAMECALL                         R20 R8 K36 ["getNextOrder"]
      160 CALL                             R20 1 1
      161 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      163 SETTABLEKS                       R5 R19 K31 ["Text"]
      165 GETIMPORT                        R20 K73 [Enum.TextXAlignment.Left]
      167 SETTABLEKS                       R20 R19 K71 ["TextXAlignment"]
      169 CALL                             R17 2 1
      170 SETTABLEKS                       R17 R16 K48 ["VerifiedDescription"]
      172 CALL                             R13 3 1
      173 SETTABLEKS                       R13 R12 K27 ["VerifiedDescriptionContainer"]
      175 CALL                             R9 3 -1
      176 RETURN                           R9 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Roact"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R0 K9 ["Src"]
       21 GETTABLEKS                       R4 R4 K10 ["Util"]
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R4 K11 ["Images"]
       27 CALL                             R5 1 1
       28 GETTABLEKS                       R6 R3 K12 ["UI"]
       30 GETTABLEKS                       R6 R6 K13 ["Checkbox"]
       32 GETTABLEKS                       R7 R3 K12 ["UI"]
       34 GETTABLEKS                       R8 R7 K14 ["Image"]
       36 GETTABLEKS                       R9 R7 K15 ["TextLabel"]
       38 GETTABLEKS                       R10 R3 K10 ["Util"]
       40 GETTABLEKS                       R10 R10 K16 ["LayoutOrderIterator"]
       42 GETTABLEKS                       R11 R7 K17 ["Pane"]
       44 GETTABLEKS                       R12 R7 K18 ["Tooltip"]
       46 GETTABLEKS                       R13 R3 K19 ["ContextServices"]
       48 GETTABLEKS                       R14 R13 K20 ["withContext"]
       50 GETTABLEKS                       R15 R2 K21 ["PureComponent"]
       52 LOADK                            R17 K22 ["VerfifiedCreatorCheckbox"]
       53 NAMECALL                         R15 R15 K23 ["extend"]
       55 CALL                             R15 2 1
       56 DUPCLOSURE                       R16 K24 [PROTO_0]
       57 CAPTURE                          VAL R10
       58 CAPTURE                          VAL R2
       59 CAPTURE                          VAL R11
       60 CAPTURE                          VAL R6
       61 CAPTURE                          VAL R8
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R9
       65 SETTABLEKS                       R16 R15 K25 ["render"]
       67 MOVE                             R16 R14
       68 DUPTABLE                         R17 K28 [{"Localization", "Stylizer"}]
       69 GETTABLEKS                       R18 R13 K26 ["Localization"]
       71 SETTABLEKS                       R18 R17 K26 ["Localization"]
       73 GETTABLEKS                       R18 R13 K27 ["Stylizer"]
       75 SETTABLEKS                       R18 R17 K27 ["Stylizer"]
       77 CALL                             R16 1 1
       78 MOVE                             R17 R15
       79 CALL                             R16 1 1
       80 MOVE                             R15 R16
       81 RETURN                           R15 1
