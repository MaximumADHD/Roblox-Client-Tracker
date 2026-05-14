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
       31 DUPTABLE                         R11 K16 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Spacing"}]
       32 GETIMPORT                        R12 K19 [Enum.AutomaticSize.XY]
       34 SETTABLEKS                       R12 R11 K11 ["AutomaticSize"]
       36 GETIMPORT                        R12 K21 [Enum.HorizontalAlignment.Left]
       38 SETTABLEKS                       R12 R11 K12 ["HorizontalAlignment"]
       40 GETIMPORT                        R12 K24 [Enum.FillDirection.Vertical]
       42 SETTABLEKS                       R12 R11 K13 ["Layout"]
       44 GETTABLEKS                       R12 R1 K14 ["LayoutOrder"]
       46 SETTABLEKS                       R12 R11 K14 ["LayoutOrder"]
       48 LOADN                            R12 3
       49 SETTABLEKS                       R12 R11 K15 ["Spacing"]
       51 DUPTABLE                         R12 K27 [{"IncludeUnverifiedToggle", "VerifiedDescriptionContainer"}]
       52 GETUPVAL                         R13 1
       53 GETTABLEKS                       R13 R13 K10 ["createElement"]
       55 GETUPVAL                         R14 3
       56 DUPTABLE                         R15 K32 [{"Checked", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
       57 GETTABLEKS                       R16 R1 K33 ["IsChecked"]
       59 SETTABLEKS                       R16 R15 K28 ["Checked"]
       61 NAMECALL                         R16 R8 K34 ["getNextOrder"]
       63 CALL                             R16 1 1
       64 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
       66 GETTABLEKS                       R16 R1 K29 ["OnClick"]
       68 SETTABLEKS                       R16 R15 K29 ["OnClick"]
       70 SETTABLEKS                       R6 R15 K30 ["Text"]
       72 LOADB                            R16 1
       73 SETTABLEKS                       R16 R15 K31 ["TextWrapped"]
       75 CALL                             R13 2 1
       76 SETTABLEKS                       R13 R12 K25 ["IncludeUnverifiedToggle"]
       78 GETUPVAL                         R13 1
       79 GETTABLEKS                       R13 R13 K10 ["createElement"]
       81 GETUPVAL                         R14 2
       82 DUPTABLE                         R15 K37 [{"AutomaticSize", "HorizontalAlignment", "Layout", "LayoutOrder", "Padding", "Spacing", "VerticalAlignment"}]
       83 GETIMPORT                        R16 K19 [Enum.AutomaticSize.XY]
       85 SETTABLEKS                       R16 R15 K11 ["AutomaticSize"]
       87 GETIMPORT                        R16 K21 [Enum.HorizontalAlignment.Left]
       89 SETTABLEKS                       R16 R15 K12 ["HorizontalAlignment"]
       91 GETIMPORT                        R16 K39 [Enum.FillDirection.Horizontal]
       93 SETTABLEKS                       R16 R15 K13 ["Layout"]
       95 NAMECALL                         R16 R8 K34 ["getNextOrder"]
       97 CALL                             R16 1 1
       98 SETTABLEKS                       R16 R15 K14 ["LayoutOrder"]
      100 DUPTABLE                         R16 K40 [{"Left"}]
      101 LOADN                            R17 24
      102 SETTABLEKS                       R17 R16 K20 ["Left"]
      104 SETTABLEKS                       R16 R15 K35 ["Padding"]
      106 LOADN                            R16 6
      107 SETTABLEKS                       R16 R15 K15 ["Spacing"]
      109 GETIMPORT                        R16 K42 [Enum.VerticalAlignment.Top]
      111 SETTABLEKS                       R16 R15 K36 ["VerticalAlignment"]
      113 DUPTABLE                         R16 K45 [{"Image", "VerifiedDescription"}]
      114 GETUPVAL                         R17 1
      115 GETTABLEKS                       R17 R17 K10 ["createElement"]
      117 GETUPVAL                         R18 4
      118 DUPTABLE                         R19 K49 [{"AnchorPoint", "Image", "ImageColor3", "LayoutOrder", "Size"}]
      119 GETIMPORT                        R20 K51 [Vector2.new]
      121 LOADN                            R21 0
      122 LOADK                            R22 K52 [0.5]
      123 CALL                             R20 2 1
      124 SETTABLEKS                       R20 R19 K46 ["AnchorPoint"]
      126 GETUPVAL                         R20 5
      127 GETTABLEKS                       R20 R20 K53 ["WARNING_ICON_SMALL"]
      129 SETTABLEKS                       R20 R19 K43 ["Image"]
      131 GETTABLEKS                       R20 R3 K54 ["warningIconColor"]
      133 SETTABLEKS                       R20 R19 K47 ["ImageColor3"]
      135 NAMECALL                         R20 R8 K34 ["getNextOrder"]
      137 CALL                             R20 1 1
      138 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      140 GETIMPORT                        R20 K57 [UDim2.fromOffset]
      142 LOADN                            R21 16
      143 LOADN                            R22 16
      144 CALL                             R20 2 1
      145 SETTABLEKS                       R20 R19 K48 ["Size"]
      147 DUPTABLE                         R20 K59 [{"Tooltip"}]
      148 GETUPVAL                         R21 1
      149 GETTABLEKS                       R21 R21 K10 ["createElement"]
      151 GETUPVAL                         R22 6
      152 DUPTABLE                         R23 K61 [{"Text", "Priority"}]
      153 SETTABLEKS                       R7 R23 K30 ["Text"]
      155 LOADN                            R24 11
      156 SETTABLEKS                       R24 R23 K60 ["Priority"]
      158 CALL                             R21 2 1
      159 SETTABLEKS                       R21 R20 K58 ["Tooltip"]
      161 CALL                             R17 3 1
      162 SETTABLEKS                       R17 R16 K43 ["Image"]
      164 GETUPVAL                         R17 1
      165 GETTABLEKS                       R17 R17 K10 ["createElement"]
      167 GETUPVAL                         R18 7
      168 DUPTABLE                         R19 K65 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextSize", "TextWrapped", "TextXAlignment"}]
      169 GETIMPORT                        R20 K19 [Enum.AutomaticSize.XY]
      171 SETTABLEKS                       R20 R19 K11 ["AutomaticSize"]
      173 NAMECALL                         R20 R8 K34 ["getNextOrder"]
      175 CALL                             R20 1 1
      176 SETTABLEKS                       R20 R19 K14 ["LayoutOrder"]
      178 LOADK                            R20 K66 ["SubText"]
      179 SETTABLEKS                       R20 R19 K62 ["Style"]
      181 SETTABLEKS                       R5 R19 K30 ["Text"]
      183 LOADN                            R20 14
      184 SETTABLEKS                       R20 R19 K63 ["TextSize"]
      186 LOADB                            R20 1
      187 SETTABLEKS                       R20 R19 K31 ["TextWrapped"]
      189 GETIMPORT                        R20 K67 [Enum.TextXAlignment.Left]
      191 SETTABLEKS                       R20 R19 K64 ["TextXAlignment"]
      193 CALL                             R17 2 1
      194 SETTABLEKS                       R17 R16 K44 ["VerifiedDescription"]
      196 CALL                             R13 3 1
      197 SETTABLEKS                       R13 R12 K26 ["VerifiedDescriptionContainer"]
      199 CALL                             R9 3 -1
      200 RETURN                           R9 -1

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
