PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["publishAsset"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["new"]
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 1
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+92]
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R5 R6 K4 ["createElement"]
       16 GETUPVAL                         R7 3
       17 GETTABLEKS                       R6 R7 K5 ["View"]
       19 DUPTABLE                         R7 K10 [{"tag", "LayoutOrder", "Size", "ref"}]
       20 LOADK                            R8 K11 ["row align-x-left align-y-top auto-y"]
       21 SETTABLEKS                       R8 R7 K6 ["tag"]
       23 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
       25 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       27 GETTABLEKS                       R8 R1 K8 ["Size"]
       29 SETTABLEKS                       R8 R7 K8 ["Size"]
       31 GETTABLEKS                       R8 R1 K12 ["ForwardRef"]
       33 SETTABLEKS                       R8 R7 K9 ["ref"]
       35 DUPTABLE                         R8 K15 [{"Title", "Contents"}]
       36 GETUPVAL                         R10 2
       37 GETTABLEKS                       R9 R10 K4 ["createElement"]
       39 GETUPVAL                         R11 3
       40 GETTABLEKS                       R10 R11 K16 ["Text"]
       42 DUPTABLE                         R11 K17 [{"tag", "Text", "LayoutOrder", "Size"}]
       43 LOADK                            R12 K18 ["text-title-small bold text-align-y-top text-align-x-left content-emphasis auto-y"]
       44 SETTABLEKS                       R12 R11 K6 ["tag"]
       46 GETTABLEKS                       R12 R1 K13 ["Title"]
       48 SETTABLEKS                       R12 R11 K16 ["Text"]
       50 NAMECALL                         R12 R4 K19 ["getNextOrder"]
       52 CALL                             R12 1 1
       53 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       55 GETIMPORT                        R12 K21 [UDim2.new]
       57 LOADN                            R13 0
       58 GETUPVAL                         R15 4
       59 GETTABLEKS                       R14 R15 K22 ["TITLE_GUTTER_WIDTH"]
       61 LOADN                            R15 0
       62 LOADN                            R16 0
       63 CALL                             R12 4 1
       64 SETTABLEKS                       R12 R11 K8 ["Size"]
       66 CALL                             R9 2 1
       67 SETTABLEKS                       R9 R8 K13 ["Title"]
       69 GETUPVAL                         R10 2
       70 GETTABLEKS                       R9 R10 K4 ["createElement"]
       72 GETUPVAL                         R11 3
       73 GETTABLEKS                       R10 R11 K5 ["View"]
       75 DUPTABLE                         R11 K23 [{"tag", "LayoutOrder", "Size"}]
       76 LOADK                            R12 K24 ["auto-y"]
       77 SETTABLEKS                       R12 R11 K6 ["tag"]
       79 NAMECALL                         R12 R4 K19 ["getNextOrder"]
       81 CALL                             R12 1 1
       82 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       84 GETIMPORT                        R12 K21 [UDim2.new]
       86 LOADN                            R13 1
       87 GETUPVAL                         R16 4
       88 GETTABLEKS                       R15 R16 K22 ["TITLE_GUTTER_WIDTH"]
       90 MINUS                            R14 R15
       91 LOADN                            R15 0
       92 LOADN                            R16 0
       93 CALL                             R12 4 1
       94 SETTABLEKS                       R12 R11 K8 ["Size"]
       96 GETUPVAL                         R14 5
       97 GETTABLEKS                       R13 R14 K25 ["Children"]
       99 GETTABLE                         R12 R1 R13
      100 CALL                             R9 3 1
      101 SETTABLEKS                       R9 R8 K14 ["Contents"]
      103 CALL                             R5 3 -1
      104 RETURN                           R5 -1
      105 GETUPVAL                         R6 5
      106 GETTABLEKS                       R5 R6 K4 ["createElement"]
      108 GETUPVAL                         R6 6
      109 NEWTABLE                         R7 8 0
      111 GETIMPORT                        R8 K29 [Enum.AutomaticSize.Y]
      113 SETTABLEKS                       R8 R7 K27 ["AutomaticSize"]
      115 GETIMPORT                        R8 K32 [Enum.HorizontalAlignment.Left]
      117 SETTABLEKS                       R8 R7 K30 ["HorizontalAlignment"]
      119 GETIMPORT                        R8 K35 [Enum.FillDirection.Horizontal]
      121 SETTABLEKS                       R8 R7 K36 ["Layout"]
      123 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
      125 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
      127 GETTABLEKS                       R8 R1 K8 ["Size"]
      129 SETTABLEKS                       R8 R7 K8 ["Size"]
      131 GETIMPORT                        R8 K39 [Enum.VerticalAlignment.Top]
      133 SETTABLEKS                       R8 R7 K37 ["VerticalAlignment"]
      135 GETUPVAL                         R9 5
      136 GETTABLEKS                       R8 R9 K40 ["Ref"]
      138 GETTABLEKS                       R9 R1 K12 ["ForwardRef"]
      140 SETTABLE                         R9 R7 R8
      141 DUPTABLE                         R8 K15 [{"Title", "Contents"}]
      142 GETUPVAL                         R10 5
      143 GETTABLEKS                       R9 R10 K4 ["createElement"]
      145 GETUPVAL                         R10 7
      146 DUPTABLE                         R11 K45 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
      147 GETIMPORT                        R12 K29 [Enum.AutomaticSize.Y]
      149 SETTABLEKS                       R12 R11 K27 ["AutomaticSize"]
      151 NAMECALL                         R12 R4 K19 ["getNextOrder"]
      153 CALL                             R12 1 1
      154 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      156 GETIMPORT                        R12 K21 [UDim2.new]
      158 LOADN                            R13 0
      159 GETUPVAL                         R15 4
      160 GETTABLEKS                       R14 R15 K22 ["TITLE_GUTTER_WIDTH"]
      162 LOADN                            R15 0
      163 LOADN                            R16 0
      164 CALL                             R12 4 1
      165 SETTABLEKS                       R12 R11 K8 ["Size"]
      167 GETTABLEKS                       R12 R1 K13 ["Title"]
      169 SETTABLEKS                       R12 R11 K16 ["Text"]
      171 GETTABLEKS                       R12 R3 K46 ["titleTextColor"]
      173 SETTABLEKS                       R12 R11 K41 ["TextColor"]
      175 GETUPVAL                         R13 8
      176 GETTABLEKS                       R12 R13 K47 ["FONT_SIZE_TITLE"]
      178 SETTABLEKS                       R12 R11 K42 ["TextSize"]
      180 GETIMPORT                        R12 K48 [Enum.TextXAlignment.Left]
      182 SETTABLEKS                       R12 R11 K43 ["TextXAlignment"]
      184 GETIMPORT                        R12 K49 [Enum.TextYAlignment.Top]
      186 SETTABLEKS                       R12 R11 K44 ["TextYAlignment"]
      188 CALL                             R9 2 1
      189 SETTABLEKS                       R9 R8 K13 ["Title"]
      191 GETUPVAL                         R10 5
      192 GETTABLEKS                       R9 R10 K4 ["createElement"]
      194 GETUPVAL                         R10 6
      195 DUPTABLE                         R11 K50 [{"AutomaticSize", "LayoutOrder", "Size"}]
      196 GETIMPORT                        R12 K29 [Enum.AutomaticSize.Y]
      198 SETTABLEKS                       R12 R11 K27 ["AutomaticSize"]
      200 NAMECALL                         R12 R4 K19 ["getNextOrder"]
      202 CALL                             R12 1 1
      203 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      205 GETIMPORT                        R12 K21 [UDim2.new]
      207 LOADN                            R13 1
      208 GETUPVAL                         R16 4
      209 GETTABLEKS                       R15 R16 K22 ["TITLE_GUTTER_WIDTH"]
      211 MINUS                            R14 R15
      212 LOADN                            R15 0
      213 GETUPVAL                         R17 8
      214 GETTABLEKS                       R16 R17 K47 ["FONT_SIZE_TITLE"]
      216 CALL                             R12 4 1
      217 SETTABLEKS                       R12 R11 K8 ["Size"]
      219 GETUPVAL                         R14 5
      220 GETTABLEKS                       R13 R14 K25 ["Children"]
      222 GETTABLE                         R12 R1 R13
      223 CALL                             R9 3 1
      224 SETTABLEKS                       R9 R8 K14 ["Contents"]
      226 CALL                             R5 3 -1
      227 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["React"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R1 K7 ["Roact"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K5 [require]
       25 GETTABLEKS                       R5 R1 K8 ["Framework"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R6 R1 K9 ["Foundation"]
       32 CALL                             R5 1 1
       33 GETTABLEKS                       R7 R4 K10 ["UI"]
       35 GETTABLEKS                       R6 R7 K11 ["Pane"]
       37 GETTABLEKS                       R8 R4 K10 ["UI"]
       39 GETTABLEKS                       R7 R8 K12 ["TextLabel"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R11 R0 K13 ["Src"]
       45 GETTABLEKS                       R10 R11 K14 ["Flags"]
       47 GETTABLEKS                       R9 R10 K15 ["getFFlagToolboxAssetConfigFoundationMigration"]
       49 CALL                             R8 1 1
       50 GETTABLEKS                       R10 R0 K13 ["Src"]
       52 GETTABLEKS                       R9 R10 K16 ["Util"]
       54 GETIMPORT                        R10 K5 [require]
       56 GETTABLEKS                       R11 R9 K17 ["Constants"]
       58 CALL                             R10 1 1
       59 GETIMPORT                        R11 K5 [require]
       61 GETTABLEKS                       R12 R9 K18 ["AssetConfigConstants"]
       63 CALL                             R11 1 1
       64 GETTABLEKS                       R13 R4 K16 ["Util"]
       66 GETTABLEKS                       R12 R13 K19 ["LayoutOrderIterator"]
       68 GETTABLEKS                       R13 R4 K20 ["ContextServices"]
       70 GETTABLEKS                       R14 R13 K21 ["withContext"]
       72 GETTABLEKS                       R16 R4 K22 ["Wrappers"]
       74 GETTABLEKS                       R15 R16 K23 ["withForwardRef"]
       76 GETTABLEKS                       R16 R3 K24 ["PureComponent"]
       78 LOADK                            R18 K25 ["ConfigureSectionWrapper"]
       79 NAMECALL                         R16 R16 K26 ["extend"]
       81 CALL                             R16 2 1
       82 DUPTABLE                         R17 K28 [{"Size"}]
       83 GETIMPORT                        R18 K31 [UDim2.new]
       85 LOADN                            R19 1
       86 LOADN                            R20 0
       87 LOADN                            R21 0
       88 LOADN                            R22 0
       89 CALL                             R18 4 1
       90 SETTABLEKS                       R18 R17 K27 ["Size"]
       92 SETTABLEKS                       R17 R16 K32 ["defaultProps"]
       94 DUPCLOSURE                       R17 K33 [PROTO_0]
       95 CAPTURE                          VAL R12
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R2
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R6
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R10
      104 SETTABLEKS                       R17 R16 K34 ["render"]
      106 MOVE                             R17 R14
      107 DUPTABLE                         R18 K36 [{"Stylizer"}]
      108 GETTABLEKS                       R19 R13 K35 ["Stylizer"]
      110 SETTABLEKS                       R19 R18 K35 ["Stylizer"]
      112 CALL                             R17 1 1
      113 MOVE                             R18 R16
      114 CALL                             R17 1 1
      115 MOVE                             R16 R17
      116 MOVE                             R17 R15
      117 MOVE                             R18 R16
      118 CALL                             R17 1 1
      119 MOVE                             R16 R17
      120 RETURN                           R16 1
