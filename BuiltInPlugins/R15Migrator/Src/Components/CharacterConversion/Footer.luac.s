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
       46 DUPTABLE                         R14 K26 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BorderSizePixel", "Padding", "Size", "Spacing"}]
       47 GETIMPORT                        R15 K16 [Enum.FillDirection.Vertical]
       49 SETTABLEKS                       R15 R14 K8 ["Layout"]
       51 GETIMPORT                        R15 K18 [Enum.HorizontalAlignment.Left]
       53 SETTABLEKS                       R15 R14 K9 ["HorizontalAlignment"]
       55 GETIMPORT                        R15 K20 [Enum.VerticalAlignment.Top]
       57 SETTABLEKS                       R15 R14 K10 ["VerticalAlignment"]
       59 LOADN                            R15 0
       60 SETTABLEKS                       R15 R14 K24 ["BorderSizePixel"]
       62 GETTABLEKS                       R15 R5 K27 ["ResultContainerPadding"]
       64 SETTABLEKS                       R15 R14 K25 ["Padding"]
       66 GETTABLEKS                       R15 R5 K28 ["ResultContainerSize"]
       68 SETTABLEKS                       R15 R14 K5 ["Size"]
       70 GETTABLEKS                       R15 R5 K29 ["ResultContainerSpacing"]
       72 SETTABLEKS                       R15 R14 K11 ["Spacing"]
       74 DUPTABLE                         R15 K32 [{"Separator", "ProcessResult"}]
       75 GETUPVAL                         R16 1
       76 GETTABLEKS                       R16 R16 K7 ["createElement"]
       78 GETUPVAL                         R17 3
       79 DUPTABLE                         R18 K35 [{"DominantAxis", "LayoutOrder", "Style"}]
       80 GETIMPORT                        R19 K37 [Enum.DominantAxis.Width]
       82 SETTABLEKS                       R19 R18 K33 ["DominantAxis"]
       84 NAMECALL                         R19 R7 K38 ["getNextOrder"]
       86 CALL                             R19 1 1
       87 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
       89 GETTABLEKS                       R19 R5 K39 ["SeparatorStyle"]
       91 SETTABLEKS                       R19 R18 K34 ["Style"]
       93 CALL                             R16 2 1
       94 SETTABLEKS                       R16 R15 K30 ["Separator"]
       96 GETUPVAL                         R16 1
       97 GETTABLEKS                       R16 R16 K7 ["createElement"]
       99 GETUPVAL                         R17 4
      100 DUPTABLE                         R18 K42 [{"Size", "LayoutOrder", "Text", "TextXAlignment"}]
      101 GETTABLEKS                       R19 R5 K43 ["ResultSize"]
      103 SETTABLEKS                       R19 R18 K5 ["Size"]
      105 NAMECALL                         R19 R7 K38 ["getNextOrder"]
      107 CALL                             R19 1 1
      108 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      110 ORK                              R19 R4 K44 [""]
      111 SETTABLEKS                       R19 R18 K40 ["Text"]
      113 GETIMPORT                        R19 K45 [Enum.TextXAlignment.Left]
      115 SETTABLEKS                       R19 R18 K41 ["TextXAlignment"]
      117 CALL                             R16 2 1
      118 SETTABLEKS                       R16 R15 K31 ["ProcessResult"]
      120 CALL                             R12 3 1
      121 SETTABLEKS                       R12 R11 K21 ["ResultContainer"]
      123 GETUPVAL                         R12 1
      124 GETTABLEKS                       R12 R12 K7 ["createElement"]
      126 GETUPVAL                         R13 2
      127 DUPTABLE                         R14 K47 [{"LayoutOrder", "Size", "AutomaticSize", "Layout", "HorizontalAlignment", "VerticalAlignment", "Spacing", "Padding"}]
      128 NAMECALL                         R15 R7 K38 ["getNextOrder"]
      130 CALL                             R15 1 1
      131 SETTABLEKS                       R15 R14 K2 ["LayoutOrder"]
      133 GETIMPORT                        R15 K50 [UDim2.fromScale]
      135 LOADN                            R16 1
      136 LOADN                            R17 0
      137 CALL                             R15 2 1
      138 SETTABLEKS                       R15 R14 K5 ["Size"]
      140 GETIMPORT                        R15 K52 [Enum.AutomaticSize.Y]
      142 SETTABLEKS                       R15 R14 K46 ["AutomaticSize"]
      144 GETIMPORT                        R15 K54 [Enum.FillDirection.Horizontal]
      146 SETTABLEKS                       R15 R14 K8 ["Layout"]
      148 GETIMPORT                        R15 K56 [Enum.HorizontalAlignment.Right]
      150 SETTABLEKS                       R15 R14 K9 ["HorizontalAlignment"]
      152 GETIMPORT                        R15 K58 [Enum.VerticalAlignment.Center]
      154 SETTABLEKS                       R15 R14 K10 ["VerticalAlignment"]
      156 GETTABLEKS                       R15 R5 K59 ["ButtonSpacing"]
      158 SETTABLEKS                       R15 R14 K11 ["Spacing"]
      160 GETTABLEKS                       R15 R5 K60 ["ButtonPadding"]
      162 SETTABLEKS                       R15 R14 K25 ["Padding"]
      164 DUPTABLE                         R15 K63 [{"RevertButton", "ConvertButton"}]
      165 GETUPVAL                         R16 1
      166 GETTABLEKS                       R16 R16 K7 ["createElement"]
      168 GETUPVAL                         R17 5
      169 DUPTABLE                         R18 K65 [{"Size", "Text", "OnClick", "LayoutOrder"}]
      170 GETTABLEKS                       R19 R5 K66 ["RevertButtonSize"]
      172 SETTABLEKS                       R19 R18 K5 ["Size"]
      174 LOADK                            R21 K67 ["CharacterConversion"]
      175 LOADK                            R22 K68 ["Revert"]
      176 NAMECALL                         R19 R2 K69 ["getText"]
      178 CALL                             R19 3 1
      179 SETTABLEKS                       R19 R18 K40 ["Text"]
      181 GETTABLEKS                       R19 R0 K70 ["revertCharacters"]
      183 SETTABLEKS                       R19 R18 K64 ["OnClick"]
      185 NAMECALL                         R19 R7 K38 ["getNextOrder"]
      187 CALL                             R19 1 1
      188 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      190 CALL                             R16 2 1
      191 SETTABLEKS                       R16 R15 K61 ["RevertButton"]
      193 GETUPVAL                         R16 1
      194 GETTABLEKS                       R16 R16 K7 ["createElement"]
      196 GETUPVAL                         R17 5
      197 DUPTABLE                         R18 K71 [{"Style", "Size", "Text", "OnClick", "LayoutOrder"}]
      198 LOADK                            R19 K72 ["RoundPrimary"]
      199 SETTABLEKS                       R19 R18 K34 ["Style"]
      201 GETTABLEKS                       R19 R5 K73 ["ReplaceButtonSize"]
      203 SETTABLEKS                       R19 R18 K5 ["Size"]
      205 LOADK                            R21 K67 ["CharacterConversion"]
      206 LOADK                            R22 K74 ["Replace"]
      207 NAMECALL                         R19 R2 K69 ["getText"]
      209 CALL                             R19 3 1
      210 SETTABLEKS                       R19 R18 K40 ["Text"]
      212 GETTABLEKS                       R19 R0 K75 ["convertCharacters"]
      214 SETTABLEKS                       R19 R18 K64 ["OnClick"]
      216 NAMECALL                         R19 R7 K38 ["getNextOrder"]
      218 CALL                             R19 1 1
      219 SETTABLEKS                       R19 R18 K2 ["LayoutOrder"]
      221 CALL                             R16 2 1
      222 SETTABLEKS                       R16 R15 K62 ["ConvertButton"]
      224 CALL                             R12 3 1
      225 SETTABLEKS                       R12 R11 K22 ["FooterButtons"]
      227 CALL                             R8 3 -1
      228 RETURN                           R8 -1

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
