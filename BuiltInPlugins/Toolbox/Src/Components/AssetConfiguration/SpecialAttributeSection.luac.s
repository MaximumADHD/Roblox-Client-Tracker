PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 CALL                             R2 0 -1
        3 NAMECALL                         R0 R0 K0 ["OpenBrowserWindow"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Stylizer"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Localization"]
        9 NAMECALL                         R2 R2 K1 ["use"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K3 ["new"]
       15 CALL                             R3 0 1
       16 DUPTABLE                         R4 K10 [{["Font"], ["Style"] = "Body", ["TextSize"] = 16, ["TextXAlignment"]}]
       17 GETTABLEKS                       R5 R1 K4 ["Font"]
       19 SETTABLEKS                       R5 R4 K4 ["Font"]
       21 GETIMPORT                        R5 K13 [Enum.TextXAlignment.Left]
       23 SETTABLEKS                       R5 R4 K9 ["TextXAlignment"]
       25 NEWTABLE                         R5 0 0
       27 GETTABLEKS                       R6 R0 K14 ["specialAttributes"]
       29 LOADNIL                          R7
       30 LOADNIL                          R8
       31 FORGPREP                         R6
       32 MOVE                             R12 R5
       33 LOADK                            R15 K15 ["AssetConfig"]
       34 MOVE                             R16 R10
       35 NAMECALL                         R13 R2 K16 ["getText"]
       37 CALL                             R13 3 -1
       38 FASTCALL                         TABLE_INSERT ; [+2]
       39 GETIMPORT                        R11 K19 [table.insert]
       41 CALL                             R11 -1 0
       42 FORGLOOP                         R6 2 ; [-11]
       44 GETIMPORT                        R6 K21 [table.concat]
       46 MOVE                             R7 R5
       47 LOADK                            R8 K22 [", "]
       48 CALL                             R6 2 1
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R7 R7 K23 ["createElement"]
       52 GETUPVAL                         R8 3
       53 DUPTABLE                         R9 K27 [{"AutomaticSize", "LayoutOrder", "Title"}]
       54 GETIMPORT                        R10 K29 [Enum.AutomaticSize.XY]
       56 SETTABLEKS                       R10 R9 K24 ["AutomaticSize"]
       58 GETTABLEKS                       R10 R0 K25 ["LayoutOrder"]
       60 SETTABLEKS                       R10 R9 K25 ["LayoutOrder"]
       62 LOADK                            R12 K15 ["AssetConfig"]
       63 LOADK                            R13 K30 ["SpecialAttributeHeader"]
       64 NAMECALL                         R10 R2 K16 ["getText"]
       66 CALL                             R10 3 1
       67 SETTABLEKS                       R10 R9 K26 ["Title"]
       69 DUPTABLE                         R10 K32 [{"DescriptionPane"}]
       70 GETUPVAL                         R11 2
       71 GETTABLEKS                       R11 R11 K23 ["createElement"]
       73 GETUPVAL                         R12 4
       74 DUPTABLE                         R13 K36 [{"AutomaticSize", "Layout", "HorizontalAlignment", "LayoutOrder", "Spacing"}]
       75 GETIMPORT                        R14 K38 [Enum.AutomaticSize.Y]
       77 SETTABLEKS                       R14 R13 K24 ["AutomaticSize"]
       79 GETIMPORT                        R14 K41 [Enum.FillDirection.Vertical]
       81 SETTABLEKS                       R14 R13 K33 ["Layout"]
       83 GETIMPORT                        R14 K42 [Enum.HorizontalAlignment.Left]
       85 SETTABLEKS                       R14 R13 K34 ["HorizontalAlignment"]
       87 NAMECALL                         R14 R3 K43 ["getNextOrder"]
       89 CALL                             R14 1 1
       90 SETTABLEKS                       R14 R13 K25 ["LayoutOrder"]
       92 GETTABLEKS                       R14 R1 K44 ["toggle"]
       94 GETTABLEKS                       R14 R14 K45 ["verticalTextSpacing"]
       96 SETTABLEKS                       R14 R13 K35 ["Spacing"]
       98 DUPTABLE                         R14 K48 [{"DescriptionText", "LearnMoreLink"}]
       99 GETUPVAL                         R15 2
      100 GETTABLEKS                       R15 R15 K23 ["createElement"]
      102 GETUPVAL                         R16 5
      103 DUPTABLE                         R17 K53 [{["Text"], ["AutomaticSize"], ["LayoutOrder"], ["MaxWidth"], ["TextWrapped"] = True, ["Font"], ["Style"], ["TextSize"], ["TextXAlignment"]}]
      104 LOADK                            R20 K15 ["AssetConfig"]
      105 LOADK                            R21 K54 ["SpecialAttributeDescription"]
      106 DUPTABLE                         R22 K56 [{"attributesList"}]
      107 SETTABLEKS                       R6 R22 K55 ["attributesList"]
      109 NAMECALL                         R18 R2 K16 ["getText"]
      111 CALL                             R18 4 1
      112 SETTABLEKS                       R18 R17 K49 ["Text"]
      114 GETIMPORT                        R18 K29 [Enum.AutomaticSize.XY]
      116 SETTABLEKS                       R18 R17 K24 ["AutomaticSize"]
      118 NAMECALL                         R18 R3 K43 ["getNextOrder"]
      120 CALL                             R18 1 1
      121 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      123 GETTABLEKS                       R18 R1 K50 ["MaxWidth"]
      125 SETTABLEKS                       R18 R17 K50 ["MaxWidth"]
      127 GETTABLEKS                       R18 R4 K4 ["Font"]
      129 SETTABLEKS                       R18 R17 K4 ["Font"]
      131 GETTABLEKS                       R18 R4 K5 ["Style"]
      133 SETTABLEKS                       R18 R17 K5 ["Style"]
      135 GETTABLEKS                       R18 R4 K7 ["TextSize"]
      137 SETTABLEKS                       R18 R17 K7 ["TextSize"]
      139 GETTABLEKS                       R18 R4 K9 ["TextXAlignment"]
      141 SETTABLEKS                       R18 R17 K9 ["TextXAlignment"]
      143 CALL                             R15 2 1
      144 SETTABLEKS                       R15 R14 K46 ["DescriptionText"]
      146 GETUPVAL                         R15 2
      147 GETTABLEKS                       R15 R15 K23 ["createElement"]
      149 GETUPVAL                         R16 6
      150 DUPTABLE                         R17 K58 [{"Text", "LayoutOrder", "TextSize", "OnClick"}]
      151 LOADK                            R20 K15 ["AssetConfig"]
      152 LOADK                            R21 K59 ["ShareDataDescriptionLinkLearnMore"]
      153 NAMECALL                         R18 R2 K16 ["getText"]
      155 CALL                             R18 3 1
      156 SETTABLEKS                       R18 R17 K49 ["Text"]
      158 NAMECALL                         R18 R3 K43 ["getNextOrder"]
      160 CALL                             R18 1 1
      161 SETTABLEKS                       R18 R17 K25 ["LayoutOrder"]
      163 GETTABLEKS                       R18 R4 K7 ["TextSize"]
      165 SETTABLEKS                       R18 R17 K7 ["TextSize"]
      167 DUPCLOSURE                       R18 K60 [PROTO_0]
      168 CAPTURE                          UPVAL U7
      169 CAPTURE                          UPVAL U8
      170 SETTABLEKS                       R18 R17 K57 ["OnClick"]
      172 CALL                             R15 2 1
      173 SETTABLEKS                       R15 R14 K47 ["LearnMoreLink"]
      175 CALL                             R11 3 1
      176 SETTABLEKS                       R11 R10 K31 ["DescriptionPane"]
      178 CALL                             R7 3 -1
      179 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["Framework"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["UI"]
       21 GETTABLEKS                       R5 R4 K10 ["Pane"]
       23 GETTABLEKS                       R6 R4 K11 ["TextLabel"]
       25 GETTABLEKS                       R7 R4 K12 ["LinkText"]
       27 GETTABLEKS                       R8 R3 K13 ["ContextServices"]
       29 GETTABLEKS                       R9 R3 K14 ["Util"]
       31 GETTABLEKS                       R9 R9 K15 ["LayoutOrderIterator"]
       33 GETTABLEKS                       R10 R0 K16 ["Src"]
       35 GETTABLEKS                       R10 R10 K17 ["Components"]
       37 GETTABLEKS                       R10 R10 K18 ["AssetConfiguration"]
       39 GETIMPORT                        R11 K6 [require]
       41 GETTABLEKS                       R12 R10 K19 ["ConfigSectionWrapper"]
       43 CALL                             R11 1 1
       44 GETIMPORT                        R12 K21 [game]
       46 LOADK                            R14 K22 ["BrowserService"]
       47 NAMECALL                         R12 R12 K23 ["GetService"]
       49 CALL                             R12 2 1
       50 GETIMPORT                        R13 K6 [require]
       52 GETTABLEKS                       R14 R0 K16 ["Src"]
       54 GETTABLEKS                       R14 R14 K24 ["Flags"]
       56 GETTABLEKS                       R14 R14 K25 ["getFStringSpecialAttributeLearnMoreUrl"]
       58 CALL                             R13 1 1
       59 DUPCLOSURE                       R14 K26 [PROTO_1]
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R9
       62 CAPTURE                          VAL R2
       63 CAPTURE                          VAL R11
       64 CAPTURE                          VAL R5
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R12
       68 CAPTURE                          VAL R13
       69 RETURN                           R14 1
