PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["publishAsset"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R4 R4 K3 ["new"]
        9 CALL                             R4 0 1
       10 GETUPVAL                         R5 1
       11 CALL                             R5 0 1
       12 JUMPIFNOT                        R5 ; [+87]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K4 ["createElement"]
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R6 R6 K5 ["View"]
       19 DUPTABLE                         R7 K11 [{["tag"] = "row align-x-left align-y-top auto-y", ["LayoutOrder"], ["Size"], ["ref"]}]
       20 GETTABLEKS                       R8 R1 K8 ["LayoutOrder"]
       22 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
       24 GETTABLEKS                       R8 R1 K9 ["Size"]
       26 SETTABLEKS                       R8 R7 K9 ["Size"]
       28 GETTABLEKS                       R8 R1 K12 ["ForwardRef"]
       30 SETTABLEKS                       R8 R7 K10 ["ref"]
       32 DUPTABLE                         R8 K15 [{"Title", "Contents"}]
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R9 R9 K4 ["createElement"]
       36 GETUPVAL                         R10 3
       37 GETTABLEKS                       R10 R10 K16 ["Text"]
       39 DUPTABLE                         R11 K19 [{["tag"] = "bold auto-y text-title-small text-align-x-left text-align-y-top content-emphasis", ["Text"], ["TextWrapped"], ["LayoutOrder"], ["Size"]}]
       40 GETTABLEKS                       R12 R1 K13 ["Title"]
       42 SETTABLEKS                       R12 R11 K16 ["Text"]
       44 GETUPVAL                         R12 4
       45 CALL                             R12 0 1
       46 SETTABLEKS                       R12 R11 K18 ["TextWrapped"]
       48 NAMECALL                         R12 R4 K20 ["getNextOrder"]
       50 CALL                             R12 1 1
       51 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       53 GETIMPORT                        R12 K22 [UDim2.new]
       55 LOADN                            R13 0
       56 GETUPVAL                         R14 5
       57 GETTABLEKS                       R14 R14 K23 ["TITLE_GUTTER_WIDTH"]
       59 LOADN                            R15 0
       60 LOADN                            R16 0
       61 CALL                             R12 4 1
       62 SETTABLEKS                       R12 R11 K9 ["Size"]
       64 CALL                             R9 2 1
       65 SETTABLEKS                       R9 R8 K13 ["Title"]
       67 GETUPVAL                         R9 2
       68 GETTABLEKS                       R9 R9 K4 ["createElement"]
       70 GETUPVAL                         R10 3
       71 GETTABLEKS                       R10 R10 K5 ["View"]
       73 DUPTABLE                         R11 K25 [{["tag"] = "auto-y", ["LayoutOrder"], ["Size"]}]
       74 NAMECALL                         R12 R4 K20 ["getNextOrder"]
       76 CALL                             R12 1 1
       77 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
       79 GETIMPORT                        R12 K22 [UDim2.new]
       81 LOADN                            R13 1
       82 GETUPVAL                         R15 5
       83 GETTABLEKS                       R15 R15 K23 ["TITLE_GUTTER_WIDTH"]
       85 MINUS                            R14 R15
       86 LOADN                            R15 0
       87 LOADN                            R16 0
       88 CALL                             R12 4 1
       89 SETTABLEKS                       R12 R11 K9 ["Size"]
       91 GETUPVAL                         R13 6
       92 GETTABLEKS                       R13 R13 K26 ["Children"]
       94 GETTABLE                         R12 R1 R13
       95 CALL                             R9 3 1
       96 SETTABLEKS                       R9 R8 K14 ["Contents"]
       98 CALL                             R5 3 -1
       99 RETURN                           R5 -1
      100 GETUPVAL                         R5 6
      101 GETTABLEKS                       R5 R5 K4 ["createElement"]
      103 GETUPVAL                         R6 7
      104 NEWTABLE                         R7 8 0
      106 GETIMPORT                        R8 K30 [Enum.AutomaticSize.Y]
      108 SETTABLEKS                       R8 R7 K28 ["AutomaticSize"]
      110 GETIMPORT                        R8 K33 [Enum.HorizontalAlignment.Left]
      112 SETTABLEKS                       R8 R7 K31 ["HorizontalAlignment"]
      114 GETIMPORT                        R8 K36 [Enum.FillDirection.Horizontal]
      116 SETTABLEKS                       R8 R7 K37 ["Layout"]
      118 GETTABLEKS                       R8 R1 K8 ["LayoutOrder"]
      120 SETTABLEKS                       R8 R7 K8 ["LayoutOrder"]
      122 GETTABLEKS                       R8 R1 K9 ["Size"]
      124 SETTABLEKS                       R8 R7 K9 ["Size"]
      126 GETIMPORT                        R8 K40 [Enum.VerticalAlignment.Top]
      128 SETTABLEKS                       R8 R7 K38 ["VerticalAlignment"]
      130 GETUPVAL                         R8 6
      131 GETTABLEKS                       R8 R8 K41 ["Ref"]
      133 GETTABLEKS                       R9 R1 K12 ["ForwardRef"]
      135 SETTABLE                         R9 R7 R8
      136 DUPTABLE                         R8 K15 [{"Title", "Contents"}]
      137 GETUPVAL                         R9 6
      138 GETTABLEKS                       R9 R9 K4 ["createElement"]
      140 GETUPVAL                         R10 8
      141 DUPTABLE                         R11 K46 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextXAlignment", "TextYAlignment"}]
      142 GETIMPORT                        R12 K30 [Enum.AutomaticSize.Y]
      144 SETTABLEKS                       R12 R11 K28 ["AutomaticSize"]
      146 NAMECALL                         R12 R4 K20 ["getNextOrder"]
      148 CALL                             R12 1 1
      149 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      151 GETIMPORT                        R12 K22 [UDim2.new]
      153 LOADN                            R13 0
      154 GETUPVAL                         R14 5
      155 GETTABLEKS                       R14 R14 K23 ["TITLE_GUTTER_WIDTH"]
      157 LOADN                            R15 0
      158 LOADN                            R16 0
      159 CALL                             R12 4 1
      160 SETTABLEKS                       R12 R11 K9 ["Size"]
      162 GETTABLEKS                       R12 R1 K13 ["Title"]
      164 SETTABLEKS                       R12 R11 K16 ["Text"]
      166 GETTABLEKS                       R12 R3 K47 ["titleTextColor"]
      168 SETTABLEKS                       R12 R11 K42 ["TextColor"]
      170 GETUPVAL                         R12 9
      171 GETTABLEKS                       R12 R12 K48 ["FONT_SIZE_TITLE"]
      173 SETTABLEKS                       R12 R11 K43 ["TextSize"]
      175 GETIMPORT                        R12 K49 [Enum.TextXAlignment.Left]
      177 SETTABLEKS                       R12 R11 K44 ["TextXAlignment"]
      179 GETIMPORT                        R12 K50 [Enum.TextYAlignment.Top]
      181 SETTABLEKS                       R12 R11 K45 ["TextYAlignment"]
      183 CALL                             R9 2 1
      184 SETTABLEKS                       R9 R8 K13 ["Title"]
      186 GETUPVAL                         R9 6
      187 GETTABLEKS                       R9 R9 K4 ["createElement"]
      189 GETUPVAL                         R10 7
      190 DUPTABLE                         R11 K51 [{"AutomaticSize", "LayoutOrder", "Size"}]
      191 GETIMPORT                        R12 K30 [Enum.AutomaticSize.Y]
      193 SETTABLEKS                       R12 R11 K28 ["AutomaticSize"]
      195 NAMECALL                         R12 R4 K20 ["getNextOrder"]
      197 CALL                             R12 1 1
      198 SETTABLEKS                       R12 R11 K8 ["LayoutOrder"]
      200 GETIMPORT                        R12 K22 [UDim2.new]
      202 LOADN                            R13 1
      203 GETUPVAL                         R15 5
      204 GETTABLEKS                       R15 R15 K23 ["TITLE_GUTTER_WIDTH"]
      206 MINUS                            R14 R15
      207 LOADN                            R15 0
      208 GETUPVAL                         R16 9
      209 GETTABLEKS                       R16 R16 K48 ["FONT_SIZE_TITLE"]
      211 CALL                             R12 4 1
      212 SETTABLEKS                       R12 R11 K9 ["Size"]
      214 GETUPVAL                         R13 6
      215 GETTABLEKS                       R13 R13 K26 ["Children"]
      217 GETTABLE                         R12 R1 R13
      218 CALL                             R9 3 1
      219 SETTABLEKS                       R9 R8 K14 ["Contents"]
      221 CALL                             R5 3 -1
      222 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
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
       33 GETTABLEKS                       R6 R4 K10 ["UI"]
       35 GETTABLEKS                       R6 R6 K11 ["Pane"]
       37 GETTABLEKS                       R7 R4 K10 ["UI"]
       39 GETTABLEKS                       R7 R7 K12 ["TextLabel"]
       41 GETIMPORT                        R8 K5 [require]
       43 GETTABLEKS                       R9 R0 K13 ["Src"]
       45 GETTABLEKS                       R9 R9 K14 ["Flags"]
       47 GETTABLEKS                       R9 R9 K15 ["getFFlagToolboxAssetConfigFoundationMigration"]
       49 CALL                             R8 1 1
       50 GETIMPORT                        R9 K5 [require]
       52 GETTABLEKS                       R10 R0 K13 ["Src"]
       54 GETTABLEKS                       R10 R10 K14 ["Flags"]
       56 GETTABLEKS                       R10 R10 K16 ["getFFlagEnableUploadingAvatarAnimations"]
       58 CALL                             R9 1 1
       59 GETTABLEKS                       R10 R0 K13 ["Src"]
       61 GETTABLEKS                       R10 R10 K17 ["Util"]
       63 GETIMPORT                        R11 K5 [require]
       65 GETTABLEKS                       R12 R10 K18 ["Constants"]
       67 CALL                             R11 1 1
       68 GETIMPORT                        R12 K5 [require]
       70 GETTABLEKS                       R13 R10 K19 ["AssetConfigConstants"]
       72 CALL                             R12 1 1
       73 GETTABLEKS                       R13 R4 K17 ["Util"]
       75 GETTABLEKS                       R13 R13 K20 ["LayoutOrderIterator"]
       77 GETTABLEKS                       R14 R4 K21 ["ContextServices"]
       79 GETTABLEKS                       R15 R14 K22 ["withContext"]
       81 GETTABLEKS                       R16 R4 K23 ["Wrappers"]
       83 GETTABLEKS                       R16 R16 K24 ["withForwardRef"]
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
