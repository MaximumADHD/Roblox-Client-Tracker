PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["URL"]
        4 NAMECALL                         R0 R0 K1 ["OpenBrowserWindow"]
        6 CALL                             R0 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["UpgradeRenderer"]
        2 NAMECALL                         R1 R1 K1 ["use"]
        4 CALL                             R1 2 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["new"]
        8 CALL                             R2 0 1
        9 GETUPVAL                         R3 2
       10 NAMECALL                         R3 R3 K1 ["use"]
       12 CALL                             R3 1 1
       13 GETTABLEKS                       R4 R0 K3 ["Schema"]
       15 GETTABLEKS                       R7 R4 K4 ["Id"]
       17 LOADK                            R8 K5 ["Description"]
       18 NAMECALL                         R5 R3 K6 ["getText"]
       20 CALL                             R5 3 1
       21 GETTABLEKS                       R8 R4 K4 ["Id"]
       23 LOADK                            R9 K7 ["Explanation"]
       24 NAMECALL                         R6 R3 K6 ["getText"]
       26 CALL                             R6 3 1
       27 GETTABLEKS                       R9 R4 K4 ["Id"]
       29 LOADK                            R10 K8 ["Title"]
       30 NAMECALL                         R7 R3 K6 ["getText"]
       32 CALL                             R7 3 1
       33 LOADK                            R10 K9 ["UpgradeSettings"]
       34 LOADK                            R11 K10 ["ActionButton"]
       35 NAMECALL                         R8 R3 K6 ["getText"]
       37 CALL                             R8 3 1
       38 LOADK                            R11 K9 ["UpgradeSettings"]
       39 LOADK                            R12 K11 ["LearnMore"]
       40 NAMECALL                         R9 R3 K6 ["getText"]
       42 CALL                             R9 3 1
       43 LOADK                            R12 K9 ["UpgradeSettings"]
       44 LOADK                            R13 K12 ["LearnMoreLink"]
       45 NAMECALL                         R10 R3 K6 ["getText"]
       47 CALL                             R10 3 1
       48 GETUPVAL                         R11 3
       49 LOADB                            R12 1
       50 CALL                             R11 1 2
       51 GETUPVAL                         R13 4
       52 GETTABLEKS                       R13 R13 K13 ["createElement"]
       54 GETUPVAL                         R14 5
       55 DUPTABLE                         R15 K17 [{"Expanded", "OnExpandedChanged", "Text"}]
       56 SETTABLEKS                       R11 R15 K14 ["Expanded"]
       58 SETTABLEKS                       R12 R15 K15 ["OnExpandedChanged"]
       60 SETTABLEKS                       R7 R15 K16 ["Text"]
       62 DUPTABLE                         R16 K20 [{"Blurb", "Upgrade"}]
       63 GETUPVAL                         R17 4
       64 GETTABLEKS                       R17 R17 K13 ["createElement"]
       66 GETUPVAL                         R18 6
       67 DUPTABLE                         R19 K26 [{"AutomaticSize", "Layout", "LayoutOrder", "Size", "Spacing"}]
       68 GETIMPORT                        R20 K29 [Enum.AutomaticSize.Y]
       70 SETTABLEKS                       R20 R19 K21 ["AutomaticSize"]
       72 GETIMPORT                        R20 K32 [Enum.FillDirection.Vertical]
       74 SETTABLEKS                       R20 R19 K22 ["Layout"]
       76 NAMECALL                         R20 R2 K33 ["getNextOrder"]
       78 CALL                             R20 1 1
       79 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
       81 GETIMPORT                        R20 K36 [UDim2.fromScale]
       83 LOADN                            R21 1
       84 LOADN                            R22 0
       85 CALL                             R20 2 1
       86 SETTABLEKS                       R20 R19 K24 ["Size"]
       88 GETTABLEKS                       R20 R1 K25 ["Spacing"]
       90 SETTABLEKS                       R20 R19 K25 ["Spacing"]
       92 DUPTABLE                         R20 K37 [{"Explanation", "LearnMoreLink"}]
       93 GETUPVAL                         R21 4
       94 GETTABLEKS                       R21 R21 K13 ["createElement"]
       96 GETUPVAL                         R22 7
       97 DUPTABLE                         R23 K41 [{["AutomaticSize"], ["LayoutOrder"], ["Size"], ["Text"], ["TextXAlignment"], ["TextWrapped"] = True}]
       98 GETIMPORT                        R24 K29 [Enum.AutomaticSize.Y]
      100 SETTABLEKS                       R24 R23 K21 ["AutomaticSize"]
      102 NAMECALL                         R24 R2 K33 ["getNextOrder"]
      104 CALL                             R24 1 1
      105 SETTABLEKS                       R24 R23 K23 ["LayoutOrder"]
      107 GETIMPORT                        R24 K36 [UDim2.fromScale]
      109 LOADN                            R25 1
      110 LOADN                            R26 0
      111 CALL                             R24 2 1
      112 SETTABLEKS                       R24 R23 K24 ["Size"]
      114 LOADK                            R24 K42 ["%*\n\n%*"]
      115 MOVE                             R26 R5
      116 MOVE                             R27 R6
      117 NAMECALL                         R24 R24 K43 ["format"]
      119 CALL                             R24 3 1
      120 SETTABLEKS                       R24 R23 K16 ["Text"]
      122 GETIMPORT                        R24 K45 [Enum.TextXAlignment.Left]
      124 SETTABLEKS                       R24 R23 K38 ["TextXAlignment"]
      126 CALL                             R21 2 1
      127 SETTABLEKS                       R21 R20 K7 ["Explanation"]
      129 GETUPVAL                         R21 4
      130 GETTABLEKS                       R21 R21 K13 ["createElement"]
      132 GETUPVAL                         R22 8
      133 DUPTABLE                         R23 K50 [{"AutomaticSize", "HorizontalAlignment", "LayoutOrder", "LinkMap", "MaxWidth", "Size", "Text", "TextXAlignment", "TextProps"}]
      134 GETIMPORT                        R24 K29 [Enum.AutomaticSize.Y]
      136 SETTABLEKS                       R24 R23 K21 ["AutomaticSize"]
      138 GETIMPORT                        R24 K51 [Enum.HorizontalAlignment.Left]
      140 SETTABLEKS                       R24 R23 K46 ["HorizontalAlignment"]
      142 NAMECALL                         R24 R2 K33 ["getNextOrder"]
      144 CALL                             R24 1 1
      145 SETTABLEKS                       R24 R23 K23 ["LayoutOrder"]
      147 NEWTABLE                         R24 1 0
      149 DUPTABLE                         R25 K54 [{"LinkText", "LinkCallback"}]
      150 SETTABLEKS                       R10 R25 K52 ["LinkText"]
      152 NEWCLOSURE                       R26 P0
      153 CAPTURE                          UPVAL U9
      154 CAPTURE                          VAL R4
      155 SETTABLEKS                       R26 R25 K53 ["LinkCallback"]
      157 SETTABLEKS                       R25 R24 K55 ["[link]"]
      159 SETTABLEKS                       R24 R23 K47 ["LinkMap"]
      161 GETTABLEKS                       R24 R1 K48 ["MaxWidth"]
      163 SETTABLEKS                       R24 R23 K48 ["MaxWidth"]
      165 GETIMPORT                        R24 K36 [UDim2.fromScale]
      167 LOADN                            R25 1
      168 LOADN                            R26 0
      169 CALL                             R24 2 1
      170 SETTABLEKS                       R24 R23 K24 ["Size"]
      172 SETTABLEKS                       R9 R23 K16 ["Text"]
      174 GETIMPORT                        R24 K45 [Enum.TextXAlignment.Left]
      176 SETTABLEKS                       R24 R23 K38 ["TextXAlignment"]
      178 DUPTABLE                         R24 K58 [{"Font", "TextSize"}]
      179 GETTABLEKS                       R25 R1 K56 ["Font"]
      181 SETTABLEKS                       R25 R24 K56 ["Font"]
      183 GETTABLEKS                       R25 R1 K57 ["TextSize"]
      185 SETTABLEKS                       R25 R24 K57 ["TextSize"]
      187 SETTABLEKS                       R24 R23 K49 ["TextProps"]
      189 CALL                             R21 2 1
      190 SETTABLEKS                       R21 R20 K12 ["LearnMoreLink"]
      192 CALL                             R17 3 1
      193 SETTABLEKS                       R17 R16 K18 ["Blurb"]
      195 GETUPVAL                         R17 4
      196 GETTABLEKS                       R17 R17 K13 ["createElement"]
      198 GETUPVAL                         R18 10
      199 DUPTABLE                         R19 K60 [{"LayoutOrder", "OnClick", "Size", "Text"}]
      200 NAMECALL                         R20 R2 K33 ["getNextOrder"]
      202 CALL                             R20 1 1
      203 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      205 GETTABLEKS                       R20 R4 K59 ["OnClick"]
      207 SETTABLEKS                       R20 R19 K59 ["OnClick"]
      209 GETIMPORT                        R20 K61 [UDim2.new]
      211 LOADN                            R21 1
      212 LOADN                            R22 0
      213 LOADN                            R23 0
      214 LOADN                            R24 32
      215 CALL                             R20 4 1
      216 SETTABLEKS                       R20 R19 K24 ["Size"]
      218 SETTABLEKS                       R8 R19 K16 ["Text"]
      220 CALL                             R17 2 1
      221 SETTABLEKS                       R17 R16 K19 ["Upgrade"]
      223 CALL                             R13 3 -1
      224 RETURN                           R13 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["useState"]
       23 GETTABLEKS                       R4 R1 K10 ["UI"]
       25 GETTABLEKS                       R5 R4 K11 ["Button"]
       27 GETTABLEKS                       R6 R4 K12 ["ExpandablePane"]
       29 GETTABLEKS                       R7 R4 K13 ["Pane"]
       31 GETTABLEKS                       R8 R4 K14 ["TextLabel"]
       33 GETTABLEKS                       R9 R4 K15 ["TextWithLinks"]
       35 GETTABLEKS                       R10 R1 K16 ["Util"]
       37 GETTABLEKS                       R10 R10 K17 ["LayoutOrderIterator"]
       39 GETTABLEKS                       R11 R1 K18 ["ContextServices"]
       41 GETTABLEKS                       R11 R11 K19 ["Localization"]
       43 GETTABLEKS                       R12 R1 K18 ["ContextServices"]
       45 GETTABLEKS                       R12 R12 K20 ["Stylizer"]
       47 GETIMPORT                        R13 K5 [require]
       49 GETTABLEKS                       R14 R0 K21 ["Src"]
       51 GETTABLEKS                       R14 R14 K22 ["Resources"]
       53 GETTABLEKS                       R14 R14 K23 ["Theme"]
       55 CALL                             R13 1 1
       56 GETIMPORT                        R14 K25 [game]
       58 LOADK                            R16 K26 ["BrowserService"]
       59 NAMECALL                         R14 R14 K27 ["GetService"]
       61 CALL                             R14 2 1
       62 DUPCLOSURE                       R15 K28 [PROTO_1]
       63 CAPTURE                          VAL R12
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R7
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R9
       72 CAPTURE                          VAL R14
       73 CAPTURE                          VAL R5
       74 RETURN                           R15 1
