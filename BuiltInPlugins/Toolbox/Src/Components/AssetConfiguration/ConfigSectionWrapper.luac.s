PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["publishAsset"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K3 ["new"]
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 1
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+96]
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
       42 DUPTABLE                         R11 K18 [{"tag", "Text", "TextWrapped", "LayoutOrder", "Size"}]
       43 LOADK                            R12 K19 ["text-title-small bold text-align-y-top text-align-x-left content-emphasis auto-y"]
       44 SETTABLEKS                       R12 R11 K6 ["tag"]
       46 GETTABLEKS                       R12 R1 K13 ["Title"]
       48 SETTABLEKS                       R12 R11 K16 ["Text"]
       50 GETUPVAL                         R12 4
       51 CALL                             R12 0 1
       52 SETTABLEKS                       R12 R11 K17 ["TextWrapped"]
       54 NAMECALL                         R12 R4 K20 ["getNextOrder"]
       56 CALL                             R12 1 1
       57 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       59 GETIMPORT                        R12 K22 [UDim2.new]
       61 LOADN                            R13 0
       62 GETUPVAL                         R15 5
       63 GETTABLEKS                       R14 R15 K23 ["TITLE_GUTTER_WIDTH"]
       65 LOADN                            R15 0
       66 LOADN                            R16 0
       67 CALL                             R12 4 1
       68 SETTABLEKS                       R12 R11 K8 ["Size"]
       70 CALL                             R9 2 1
       71 SETTABLEKS                       R9 R8 K13 ["Title"]
       73 GETUPVAL                         R10 2
       74 GETTABLEKS                       R9 R10 K4 ["createElement"]
       76 GETUPVAL                         R11 3
       77 GETTABLEKS                       R10 R11 K5 ["View"]
       79 DUPTABLE                         R11 K24 [{"tag", "LayoutOrder", "Size"}]
       80 LOADK                            R12 K25 ["auto-y"]
       81 SETTABLEKS                       R12 R11 K6 ["tag"]
       83 NAMECALL                         R12 R4 K20 ["getNextOrder"]
       85 CALL                             R12 1 1
       86 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
       88 GETIMPORT                        R12 K22 [UDim2.new]
       90 LOADN                            R13 1
       91 GETUPVAL                         R16 5
       92 GETTABLEKS                       R15 R16 K23 ["TITLE_GUTTER_WIDTH"]
       94 MINUS                            R14 R15
       95 LOADN                            R15 0
       96 LOADN                            R16 0
       97 CALL                             R12 4 1
       98 SETTABLEKS                       R12 R11 K8 ["Size"]
      100 GETUPVAL                         R14 6
      101 GETTABLEKS                       R13 R14 K26 ["Children"]
      103 GETTABLE                         R12 R1 R13
      104 CALL                             R9 3 1
      105 SETTABLEKS                       R9 R8 K14 ["Contents"]
      107 CALL                             R5 3 -1
      108 RETURN                           R5 -1
      109 GETUPVAL                         R6 6
      110 GETTABLEKS                       R5 R6 K4 ["createElement"]
      112 GETUPVAL                         R6 7
      113 NEWTABLE                         R7 8 0
      115 GETIMPORT                        R8 K30 [Enum.AutomaticSize.Y]
      117 SETTABLEKS                       R8 R7 K28 ["AutomaticSize"]
      119 GETIMPORT                        R8 K33 [Enum.HorizontalAlignment.Left]
      121 SETTABLEKS                       R8 R7 K31 ["HorizontalAlignment"]
      123 GETIMPORT                        R8 K36 [Enum.FillDirection.Horizontal]
      125 SETTABLEKS                       R8 R7 K37 ["Layout"]
      127 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
      129 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
      131 GETTABLEKS                       R8 R1 K8 ["Size"]
      133 SETTABLEKS                       R8 R7 K8 ["Size"]
      135 GETIMPORT                        R8 K40 [Enum.VerticalAlignment.Top]
      137 SETTABLEKS                       R8 R7 K38 ["VerticalAlignment"]
      139 GETUPVAL                         R9 6
      140 GETTABLEKS                       R8 R9 K41 ["Ref"]
      142 GETTABLEKS                       R9 R1 K12 ["ForwardRef"]
      144 SETTABLE                         R9 R7 R8
      145 DUPTABLE                         R8 K15 [{"Title", "Contents"}]
      146 GETUPVAL                         R10 6
      147 GETTABLEKS                       R9 R10 K4 ["createElement"]
      149 GETUPVAL                         R10 8
      150 DUPTABLE                         R11 K46 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
      151 GETIMPORT                        R12 K30 [Enum.AutomaticSize.Y]
      153 SETTABLEKS                       R12 R11 K28 ["AutomaticSize"]
      155 NAMECALL                         R12 R4 K20 ["getNextOrder"]
      157 CALL                             R12 1 1
      158 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      160 GETIMPORT                        R12 K22 [UDim2.new]
      162 LOADN                            R13 0
      163 GETUPVAL                         R15 5
      164 GETTABLEKS                       R14 R15 K23 ["TITLE_GUTTER_WIDTH"]
      166 LOADN                            R15 0
      167 LOADN                            R16 0
      168 CALL                             R12 4 1
      169 SETTABLEKS                       R12 R11 K8 ["Size"]
      171 GETTABLEKS                       R12 R1 K13 ["Title"]
      173 SETTABLEKS                       R12 R11 K16 ["Text"]
      175 GETTABLEKS                       R12 R3 K47 ["titleTextColor"]
      177 SETTABLEKS                       R12 R11 K42 ["TextColor"]
      179 GETUPVAL                         R13 9
      180 GETTABLEKS                       R12 R13 K48 ["FONT_SIZE_TITLE"]
      182 SETTABLEKS                       R12 R11 K43 ["TextSize"]
      184 GETIMPORT                        R12 K49 [Enum.TextXAlignment.Left]
      186 SETTABLEKS                       R12 R11 K44 ["TextXAlignment"]
      188 GETIMPORT                        R12 K50 [Enum.TextYAlignment.Top]
      190 SETTABLEKS                       R12 R11 K45 ["TextYAlignment"]
      192 CALL                             R9 2 1
      193 SETTABLEKS                       R9 R8 K13 ["Title"]
      195 GETUPVAL                         R10 6
      196 GETTABLEKS                       R9 R10 K4 ["createElement"]
      198 GETUPVAL                         R10 7
      199 DUPTABLE                         R11 K51 [{"AutomaticSize", "LayoutOrder", "Size"}]
      200 GETIMPORT                        R12 K30 [Enum.AutomaticSize.Y]
      202 SETTABLEKS                       R12 R11 K28 ["AutomaticSize"]
      204 NAMECALL                         R12 R4 K20 ["getNextOrder"]
      206 CALL                             R12 1 1
      207 SETTABLEKS                       R12 R11 K7 ["LayoutOrder"]
      209 GETIMPORT                        R12 K22 [UDim2.new]
      211 LOADN                            R13 1
      212 GETUPVAL                         R16 5
      213 GETTABLEKS                       R15 R16 K23 ["TITLE_GUTTER_WIDTH"]
      215 MINUS                            R14 R15
      216 LOADN                            R15 0
      217 GETUPVAL                         R17 9
      218 GETTABLEKS                       R16 R17 K48 ["FONT_SIZE_TITLE"]
      220 CALL                             R12 4 1
      221 SETTABLEKS                       R12 R11 K8 ["Size"]
      223 GETUPVAL                         R14 6
      224 GETTABLEKS                       R13 R14 K26 ["Children"]
      226 GETTABLE                         R12 R1 R13
      227 CALL                             R9 3 1
      228 SETTABLEKS                       R9 R8 K14 ["Contents"]
      230 CALL                             R5 3 -1
      231 RETURN                           R5 -1

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
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R12 R0 K13 ["Src"]
       54 GETTABLEKS                       R11 R12 K14 ["Flags"]
       56 GETTABLEKS                       R10 R11 K16 ["getFFlagEnableUploadingAvatarAnimations"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R11 R0 K13 ["Src"]
       61 GETTABLEKS                       R10 R11 K17 ["Util"]
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R10 K18 ["Constants"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R13 R10 K19 ["AssetConfigConstants"]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R14 R4 K17 ["Util"]
       75 GETTABLEKS                       R13 R14 K20 ["LayoutOrderIterator"]
       77 GETTABLEKS                       R14 R4 K21 ["ContextServices"]
       79 GETTABLEKS                       R15 R14 K22 ["withContext"]
       81 GETTABLEKS                       R17 R4 K23 ["Wrappers"]
       83 GETTABLEKS                       R16 R17 K24 ["withForwardRef"]
       85 GETTABLEKS                       R17 R3 K25 ["PureComponent"]
       87 LOADK                            R19 K26 ["ConfigureSectionWrapper"]
       88 NAMECALL                         R17 R17 K27 ["extend"]
       90 CALL                             R17 2 1
       91 DUPTABLE                         R18 K29 [{"Size"}]
       92 GETIMPORT                        R19 K32 [UDim2.new]
       94 LOADN                            R20 1
       95 LOADN                            R21 0
       96 LOADN                            R22 0
       97 LOADN                            R23 0
       98 CALL                             R19 4 1
       99 SETTABLEKS                       R19 R18 K28 ["Size"]
      101 SETTABLEKS                       R18 R17 K33 ["defaultProps"]
      103 DUPCLOSURE                       R18 K34 [PROTO_0]
      104 CAPTURE                          VAL R13
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R2
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R9
      109 CAPTURE                          VAL R12
      110 CAPTURE                          VAL R3
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R7
      113 CAPTURE                          VAL R11
      114 SETTABLEKS                       R18 R17 K35 ["render"]
      116 MOVE                             R18 R15
      117 DUPTABLE                         R19 K37 [{"Stylizer"}]
      118 GETTABLEKS                       R20 R14 K36 ["Stylizer"]
      120 SETTABLEKS                       R20 R19 K36 ["Stylizer"]
      122 CALL                             R18 1 1
      123 MOVE                             R19 R17
      124 CALL                             R18 1 1
      125 MOVE                             R17 R18
      126 MOVE                             R18 R16
      127 MOVE                             R19 R17
      128 CALL                             R18 1 1
      129 MOVE                             R17 R18
      130 RETURN                           R17 1
