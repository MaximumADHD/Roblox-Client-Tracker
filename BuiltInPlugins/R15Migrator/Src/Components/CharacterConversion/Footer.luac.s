PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["ConvertCharacters"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["RevertCharacters"]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K0 ["props"]
        8 GETTABLEKS                       R1 R1 K2 ["Analytics"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["convertCharacters"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["revertCharacters"]
        8 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["LayoutOrder"]
        6 GETTABLEKS                       R4 R1 K3 ["processResultMessage"]
        8 GETTABLEKS                       R5 R1 K4 ["Stylizer"]
       10 GETTABLEKS                       R6 R1 K5 ["Size"]
       12 GETUPVAL                         R7 0
       13 GETTABLEKS                       R7 R7 K6 ["new"]
       15 CALL                             R7 0 1
       16 GETUPVAL                         R8 1
       17 GETTABLEKS                       R8 R8 K7 ["createElement"]
       19 GETUPVAL                         R9 2
       20 DUPTABLE                         R10 K12 [{"LayoutOrder", "Size", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing"}]
       21 SETTABLEKS                       R3 R10 K2 ["LayoutOrder"]
       23 SETTABLEKS                       R6 R10 K5 ["Size"]
       25 GETIMPORT                        R11 K16 [Enum.FillDirection.Vertical]
       27 SETTABLEKS                       R11 R10 K8 ["Layout"]
       29 GETIMPORT                        R11 K18 [Enum.HorizontalAlignment.Left]
       31 SETTABLEKS                       R11 R10 K9 ["HorizontalAlignment"]
       33 GETIMPORT                        R11 K20 [Enum.VerticalAlignment.Top]
       35 SETTABLEKS                       R11 R10 K10 ["VerticalAlignment"]
       37 GETTABLEKS                       R11 R5 K11 ["Spacing"]
       39 SETTABLEKS                       R11 R10 K11 ["Spacing"]
       41 DUPTABLE                         R11 K23 [{"ResultContainer", "FooterButtons"}]
       42 GETUPVAL                         R12 1
       43 GETTABLEKS                       R12 R12 K7 ["createElement"]
       45 GETUPVAL                         R13 2
       46 DUPTABLE                         R14 K27 [{["Layout"], ["HorizontalAlignment"], ["VerticalAlignment"], ["BorderSizePixel"] = 0, ["Padding"], ["Size"], ["Spacing"]}]
       47 GETIMPORT                        R15 K16 [Enum.FillDirection.Vertical]
       49 SETTABLEKS                       R15 R14 K8 ["Layout"]
       51 GETIMPORT                        R15 K18 [Enum.HorizontalAlignment.Left]
       53 SETTABLEKS                       R15 R14 K9 ["HorizontalAlignment"]
       55 GETIMPORT                        R15 K20 [Enum.VerticalAlignment.Top]
       57 SETTABLEKS                       R15 R14 K10 ["VerticalAlignment"]
       59 GETTABLEKS                       R15 R5 K28 ["ResultContainerPadding"]
       61 SETTABLEKS                       R15 R14 K26 ["Padding"]
       63 GETTABLEKS                       R15 R5 K29 ["ResultContainerSize"]
       65 SETTABLEKS                       R15 R14 K5 ["Size"]
       67 GETTABLEKS                       R15 R5 K30 ["ResultContainerSpacing"]
       69 SETTABLEKS                       R15 R14 K11 ["Spacing"]
       71 DUPTABLE                         R15 K33 [{"Separator", "ProcessResult"}]
       72 GETUPVAL                         R16 1
       73 GETTABLEKS                       R16 R16 K7 ["createElement"]
       75 GETUPVAL                         R17 3
       76 DUPTABLE                         R18 K36 [{"DominantAxis", "LayoutOrder", "Style"}]
       77 GETIMPORT                        R19 K38 [Enum.DominantAxis.Width]
       79 SETTABLEKS                       R19 R18 K34 ["DominantAxis"]
       81 NAMECALL                         R19 R7 K39 ["getNextOrder"]
       83 CALL                             R19 1 1
       84 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
       86 GETTABLEKS                       R19 R5 K40 ["SeparatorStyle"]
       88 SETTABLEKS                       R19 R18 K35 ["Style"]
       90 CALL                             R16 2 1
       91 SETTABLEKS                       R16 R15 K31 ["Separator"]
       93 GETUPVAL                         R16 1
       94 GETTABLEKS                       R16 R16 K7 ["createElement"]
       96 GETUPVAL                         R17 4
       97 DUPTABLE                         R18 K43 [{"Size", "LayoutOrder", "Text", "TextXAlignment"}]
       98 GETTABLEKS                       R19 R5 K44 ["ResultSize"]
      100 SETTABLEKS                       R19 R18 K5 ["Size"]
      102 NAMECALL                         R19 R7 K39 ["getNextOrder"]
      104 CALL                             R19 1 1
      105 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      107 ORK                              R19 R4 K45 [""]
      108 SETTABLEKS                       R19 R18 K41 ["Text"]
      110 GETIMPORT                        R19 K46 [Enum.TextXAlignment.Left]
      112 SETTABLEKS                       R19 R18 K42 ["TextXAlignment"]
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K32 ["ProcessResult"]
      117 CALL                             R12 3 1
      118 SETTABLEKS                       R12 R11 K21 ["ResultContainer"]
      120 GETUPVAL                         R12 1
      121 GETTABLEKS                       R12 R12 K7 ["createElement"]
      123 GETUPVAL                         R13 2
      124 DUPTABLE                         R14 K48 [{"LayoutOrder", "Size", "AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
      125 NAMECALL                         R15 R7 K39 ["getNextOrder"]
      127 CALL                             R15 1 1
      128 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
      130 GETIMPORT                        R15 K51 [UDim2.fromScale]
      132 LOADN                            R16 1
      133 LOADN                            R17 0
      134 CALL                             R15 2 1
      135 SETTABLEKS                       R15 R14 K5 ["Size"]
      137 GETIMPORT                        R15 K53 [Enum.AutomaticSize.Y]
      139 SETTABLEKS                       R15 R14 K47 ["AutomaticSize"]
      141 GETIMPORT                        R15 K55 [Enum.FillDirection.Horizontal]
      143 SETTABLEKS                       R15 R14 K8 ["Layout"]
      145 GETIMPORT                        R15 K57 [Enum.HorizontalAlignment.Right]
      147 SETTABLEKS                       R15 R14 K9 ["HorizontalAlignment"]
      149 GETIMPORT                        R15 K59 [Enum.VerticalAlignment.Center]
      151 SETTABLEKS                       R15 R14 K10 ["VerticalAlignment"]
      153 GETTABLEKS                       R15 R5 K60 ["ButtonSpacing"]
      155 SETTABLEKS                       R15 R14 K11 ["Spacing"]
      157 GETTABLEKS                       R15 R5 K61 ["ButtonPadding"]
      159 SETTABLEKS                       R15 R14 K26 ["Padding"]
      161 DUPTABLE                         R15 K64 [{"RevertButton", "ConvertButton"}]
      162 GETUPVAL                         R16 1
      163 GETTABLEKS                       R16 R16 K7 ["createElement"]
      165 GETUPVAL                         R17 5
      166 DUPTABLE                         R18 K66 [{"Size", "Text", "OnClick", "LayoutOrder"}]
      167 GETTABLEKS                       R19 R5 K67 ["RevertButtonSize"]
      169 SETTABLEKS                       R19 R18 K5 ["Size"]
      171 LOADK                            R21 K68 ["CharacterConversion"]
      172 LOADK                            R22 K69 ["Revert"]
      173 NAMECALL                         R19 R2 K70 ["getText"]
      175 CALL                             R19 3 1
      176 SETTABLEKS                       R19 R18 K41 ["Text"]
      178 GETTABLEKS                       R19 R0 K71 ["revertCharacters"]
      180 SETTABLEKS                       R19 R18 K65 ["OnClick"]
      182 NAMECALL                         R19 R7 K39 ["getNextOrder"]
      184 CALL                             R19 1 1
      185 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      187 CALL                             R16 2 1
      188 SETTABLEKS                       R16 R15 K62 ["RevertButton"]
      190 GETUPVAL                         R16 1
      191 GETTABLEKS                       R16 R16 K7 ["createElement"]
      193 GETUPVAL                         R17 5
      194 DUPTABLE                         R18 K73 [{["Style"] = "RoundPrimary", ["Size"], ["Text"], ["OnClick"], ["LayoutOrder"]}]
      195 GETTABLEKS                       R19 R5 K74 ["ReplaceButtonSize"]
      197 SETTABLEKS                       R19 R18 K5 ["Size"]
      199 LOADK                            R21 K68 ["CharacterConversion"]
      200 LOADK                            R22 K75 ["Replace"]
      201 NAMECALL                         R19 R2 K70 ["getText"]
      203 CALL                             R19 3 1
      204 SETTABLEKS                       R19 R18 K41 ["Text"]
      206 GETTABLEKS                       R19 R0 K76 ["convertCharacters"]
      208 SETTABLEKS                       R19 R18 K65 ["OnClick"]
      210 NAMECALL                         R19 R7 K39 ["getNextOrder"]
      212 CALL                             R19 1 1
      213 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      215 CALL                             R16 2 1
      216 SETTABLEKS                       R16 R15 K63 ["ConvertButton"]
      218 CALL                             R12 3 1
      219 SETTABLEKS                       R12 R11 K22 ["FooterButtons"]
      221 CALL                             R8 3 -1
      222 RETURN                           R8 -1

PROTO_4:
        0 DUPTABLE                         R2 K1 [{"selection"}]
        1 GETTABLEKS                       R3 R0 K2 ["CharacterConversion"]
        3 GETTABLEKS                       R3 R3 K0 ["selection"]
        5 SETTABLEKS                       R3 R2 K0 ["selection"]
        7 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 MOVE                             R3 R0
        3 CALL                             R2 1 -1
        4 CALL                             R1 -1 0
        5 RETURN                           R0 0

PROTO_7:
        0 DUPTABLE                         R1 K2 [{"ConvertCharacters", "RevertCharacters"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["ConvertCharacters"]
        6 NEWCLOSURE                       R2 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U1
        9 SETTABLEKS                       R2 R1 K1 ["RevertCharacters"]
       11 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Roact"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["RoactRodux"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Thunks"]
       34 GETTABLEKS                       R5 R5 K12 ["ConvertCharacters"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Thunks"]
       43 GETTABLEKS                       R6 R6 K13 ["RevertCharacters"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R1 K14 ["ContextServices"]
       48 GETTABLEKS                       R7 R1 K15 ["UI"]
       50 GETTABLEKS                       R8 R7 K16 ["Pane"]
       52 GETTABLEKS                       R9 R7 K17 ["Button"]
       54 GETTABLEKS                       R10 R7 K18 ["Separator"]
       56 GETTABLEKS                       R11 R7 K19 ["TextLabel"]
       58 GETTABLEKS                       R12 R1 K20 ["Util"]
       60 GETTABLEKS                       R13 R12 K21 ["LayoutOrderIterator"]
       62 GETTABLEKS                       R14 R2 K22 ["PureComponent"]
       64 LOADK                            R16 K23 ["CharacterConversionPaneFooter"]
       65 NAMECALL                         R14 R14 K24 ["extend"]
       67 CALL                             R14 2 1
       68 DUPCLOSURE                       R15 K25 [PROTO_2]
       69 SETTABLEKS                       R15 R14 K26 ["init"]
       71 DUPCLOSURE                       R15 K27 [PROTO_3]
       72 CAPTURE                          VAL R13
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R8
       75 CAPTURE                          VAL R10
       76 CAPTURE                          VAL R11
       77 CAPTURE                          VAL R9
       78 SETTABLEKS                       R15 R14 K28 ["render"]
       80 GETTABLEKS                       R15 R6 K29 ["withContext"]
       82 DUPTABLE                         R16 K34 [{"Analytics", "Plugin", "Localization", "Stylizer"}]
       83 GETTABLEKS                       R17 R6 K30 ["Analytics"]
       85 SETTABLEKS                       R17 R16 K30 ["Analytics"]
       87 GETTABLEKS                       R17 R6 K31 ["Plugin"]
       89 SETTABLEKS                       R17 R16 K31 ["Plugin"]
       91 GETTABLEKS                       R17 R6 K32 ["Localization"]
       93 SETTABLEKS                       R17 R16 K32 ["Localization"]
       95 GETTABLEKS                       R17 R6 K33 ["Stylizer"]
       97 SETTABLEKS                       R17 R16 K33 ["Stylizer"]
       99 CALL                             R15 1 1
      100 MOVE                             R16 R14
      101 CALL                             R15 1 1
      102 MOVE                             R14 R15
      103 DUPCLOSURE                       R15 K35 [PROTO_4]
      104 DUPCLOSURE                       R16 K36 [PROTO_7]
      105 CAPTURE                          VAL R4
      106 CAPTURE                          VAL R5
      107 GETTABLEKS                       R17 R3 K37 ["connect"]
      109 MOVE                             R18 R15
      110 MOVE                             R19 R16
      111 CALL                             R17 2 1
      112 MOVE                             R18 R14
      113 CALL                             R17 1 -1
      114 RETURN                           R17 -1
