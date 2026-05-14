PROTO_0:
        0 GETUPVAL                         R1 0
        1 NAMECALL                         R1 R1 K0 ["use"]
        3 CALL                             R1 1 1
        4 GETUPVAL                         R2 1
        5 LOADK                            R4 K1 ["PromptSelectorWithPreview"]
        6 NAMECALL                         R2 R2 K0 ["use"]
        8 CALL                             R2 2 1
        9 GETTABLEKS                       R3 R2 K2 ["PreviewSize"]
       11 GETTABLEKS                       R4 R2 K3 ["ButtonHeight"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K4 ["createElement"]
       16 LOADK                            R6 K5 ["Frame"]
       17 DUPTABLE                         R7 K8 [{"BackgroundTransparency", "Size"}]
       18 LOADN                            R8 1
       19 SETTABLEKS                       R8 R7 K6 ["BackgroundTransparency"]
       21 GETIMPORT                        R8 K11 [UDim2.new]
       23 LOADN                            R9 1
       24 LOADN                            R10 0
       25 LOADN                            R11 0
       26 GETTABLEKS                       R13 R2 K12 ["PaddingVertical"]
       28 ADD                              R12 R3 R13
       29 CALL                             R8 4 1
       30 SETTABLEKS                       R8 R7 K7 ["Size"]
       32 DUPTABLE                         R8 K15 [{"UIListLayout", "TwoColumn"}]
       33 GETUPVAL                         R9 2
       34 GETTABLEKS                       R9 R9 K4 ["createElement"]
       36 LOADK                            R10 K13 ["UIListLayout"]
       37 DUPTABLE                         R11 K18 [{"SortOrder", "Padding"}]
       38 GETIMPORT                        R12 K21 [Enum.SortOrder.LayoutOrder]
       40 SETTABLEKS                       R12 R11 K16 ["SortOrder"]
       42 GETIMPORT                        R12 K23 [UDim.new]
       44 LOADN                            R13 0
       45 GETTABLEKS                       R14 R2 K12 ["PaddingVertical"]
       47 CALL                             R12 2 1
       48 SETTABLEKS                       R12 R11 K17 ["Padding"]
       50 CALL                             R9 2 1
       51 SETTABLEKS                       R9 R8 K13 ["UIListLayout"]
       53 GETUPVAL                         R9 2
       54 GETTABLEKS                       R9 R9 K4 ["createElement"]
       56 GETUPVAL                         R10 3
       57 DUPTABLE                         R11 K27 [{"HorizontalAlignment", "Layout", "Size", "Spacing"}]
       58 GETIMPORT                        R12 K29 [Enum.HorizontalAlignment.Center]
       60 SETTABLEKS                       R12 R11 K24 ["HorizontalAlignment"]
       62 GETIMPORT                        R12 K32 [Enum.FillDirection.Horizontal]
       64 SETTABLEKS                       R12 R11 K25 ["Layout"]
       66 GETIMPORT                        R12 K11 [UDim2.new]
       68 LOADN                            R13 1
       69 LOADN                            R14 0
       70 LOADN                            R15 0
       71 MOVE                             R16 R3
       72 CALL                             R12 4 1
       73 SETTABLEKS                       R12 R11 K7 ["Size"]
       75 GETTABLEKS                       R12 R2 K33 ["PaddingHorizontal"]
       77 SETTABLEKS                       R12 R11 K26 ["Spacing"]
       79 DUPTABLE                         R12 K36 [{"PreviewColumn", "ImportColumn"}]
       80 GETUPVAL                         R13 2
       81 GETTABLEKS                       R13 R13 K4 ["createElement"]
       83 GETUPVAL                         R14 3
       84 DUPTABLE                         R15 K37 [{"LayoutOrder", "Size"}]
       85 LOADN                            R16 1
       86 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
       88 GETIMPORT                        R16 K11 [UDim2.new]
       90 LOADN                            R17 0
       91 MOVE                             R18 R3
       92 LOADN                            R19 1
       93 LOADN                            R20 0
       94 CALL                             R16 4 1
       95 SETTABLEKS                       R16 R15 K7 ["Size"]
       97 DUPTABLE                         R16 K39 [{"PreviewImage"}]
       98 GETUPVAL                         R17 2
       99 GETTABLEKS                       R17 R17 K4 ["createElement"]
      101 GETUPVAL                         R18 4
      102 DUPTABLE                         R19 K42 [{"ImageId", "ClearSelection"}]
      103 GETTABLEKS                       R20 R0 K40 ["ImageId"]
      105 SETTABLEKS                       R20 R19 K40 ["ImageId"]
      107 GETTABLEKS                       R20 R0 K41 ["ClearSelection"]
      109 SETTABLEKS                       R20 R19 K41 ["ClearSelection"]
      111 CALL                             R17 2 1
      112 SETTABLEKS                       R17 R16 K38 ["PreviewImage"]
      114 CALL                             R13 3 1
      115 SETTABLEKS                       R13 R12 K34 ["PreviewColumn"]
      117 GETUPVAL                         R13 2
      118 GETTABLEKS                       R13 R13 K4 ["createElement"]
      120 GETUPVAL                         R14 3
      121 DUPTABLE                         R15 K45 [{"Size", "Style", "Spacing", "VerticalAlignment", "Layout", "LayoutOrder"}]
      122 GETIMPORT                        R16 K11 [UDim2.new]
      124 LOADN                            R17 1
      125 MINUS                            R19 R3
      126 GETTABLEKS                       R20 R2 K33 ["PaddingHorizontal"]
      128 SUB                              R18 R19 R20
      129 LOADN                            R19 1
      130 LOADN                            R20 0
      131 CALL                             R16 4 1
      132 SETTABLEKS                       R16 R15 K7 ["Size"]
      134 LOADK                            R16 K46 ["RoundBox"]
      135 SETTABLEKS                       R16 R15 K43 ["Style"]
      137 LOADN                            R16 10
      138 SETTABLEKS                       R16 R15 K26 ["Spacing"]
      140 GETIMPORT                        R16 K48 [Enum.VerticalAlignment.Top]
      142 SETTABLEKS                       R16 R15 K44 ["VerticalAlignment"]
      144 GETIMPORT                        R16 K50 [Enum.FillDirection.Vertical]
      146 SETTABLEKS                       R16 R15 K25 ["Layout"]
      148 LOADN                            R16 2
      149 SETTABLEKS                       R16 R15 K20 ["LayoutOrder"]
      151 DUPTABLE                         R16 K53 [{"UrlImport", "IconImport"}]
      152 GETUPVAL                         R17 2
      153 GETTABLEKS                       R17 R17 K4 ["createElement"]
      155 GETUPVAL                         R18 5
      156 DUPTABLE                         R19 K58 [{"PlaceholderText", "Text", "Size", "OnFocusLost", "OnTextChanged", "Style"}]
      157 LOADK                            R22 K59 ["ImportImage"]
      158 LOADK                            R23 K60 ["InsertAssetURL"]
      159 NAMECALL                         R20 R1 K61 ["getText"]
      161 CALL                             R20 3 1
      162 SETTABLEKS                       R20 R19 K54 ["PlaceholderText"]
      164 GETTABLEKS                       R20 R0 K40 ["ImageId"]
      166 SETTABLEKS                       R20 R19 K55 ["Text"]
      168 GETIMPORT                        R20 K11 [UDim2.new]
      170 LOADN                            R21 1
      171 LOADN                            R22 0
      172 LOADN                            R23 0
      173 MOVE                             R24 R4
      174 CALL                             R20 4 1
      175 SETTABLEKS                       R20 R19 K7 ["Size"]
      177 GETTABLEKS                       R20 R0 K56 ["OnFocusLost"]
      179 SETTABLEKS                       R20 R19 K56 ["OnFocusLost"]
      181 GETTABLEKS                       R20 R0 K62 ["OnUrlChanged"]
      183 SETTABLEKS                       R20 R19 K57 ["OnTextChanged"]
      185 LOADK                            R20 K63 ["FilledRoundedBorder"]
      186 SETTABLEKS                       R20 R19 K43 ["Style"]
      188 CALL                             R17 2 1
      189 SETTABLEKS                       R17 R16 K51 ["UrlImport"]
      191 GETUPVAL                         R17 2
      192 GETTABLEKS                       R17 R17 K4 ["createElement"]
      194 GETUPVAL                         R18 6
      195 DUPTABLE                         R19 K71 [{"ForwardRef", "AnchorPoint", "Size", "Text", "TextXAlignment", "LeftIcon", "IconColor", "BackgroundColor", "OnClick"}]
      196 GETTABLEKS                       R20 R0 K72 ["ButtonRef"]
      198 SETTABLEKS                       R20 R19 K64 ["ForwardRef"]
      200 GETIMPORT                        R20 K74 [Vector2.new]
      202 LOADN                            R21 1
      203 LOADN                            R22 1
      204 CALL                             R20 2 1
      205 SETTABLEKS                       R20 R19 K65 ["AnchorPoint"]
      207 GETIMPORT                        R20 K11 [UDim2.new]
      209 LOADN                            R21 1
      210 LOADN                            R22 0
      211 LOADN                            R23 0
      212 MOVE                             R24 R4
      213 CALL                             R20 4 1
      214 SETTABLEKS                       R20 R19 K7 ["Size"]
      216 LOADK                            R22 K59 ["ImportImage"]
      217 LOADK                            R23 K75 ["Import"]
      218 NAMECALL                         R20 R1 K61 ["getText"]
      220 CALL                             R20 3 1
      221 SETTABLEKS                       R20 R19 K55 ["Text"]
      223 GETIMPORT                        R20 K76 [Enum.TextXAlignment.Center]
      225 SETTABLEKS                       R20 R19 K66 ["TextXAlignment"]
      227 GETTABLEKS                       R20 R2 K77 ["ImportIcon"]
      229 SETTABLEKS                       R20 R19 K67 ["LeftIcon"]
      231 GETTABLEKS                       R20 R2 K78 ["ImportIconColor"]
      233 SETTABLEKS                       R20 R19 K68 ["IconColor"]
      235 GETTABLEKS                       R20 R2 K79 ["ButtonColor"]
      237 SETTABLEKS                       R20 R19 K69 ["BackgroundColor"]
      239 GETTABLEKS                       R20 R0 K80 ["PromptSelection"]
      241 SETTABLEKS                       R20 R19 K70 ["OnClick"]
      243 CALL                             R17 2 1
      244 SETTABLEKS                       R17 R16 K52 ["IconImport"]
      246 CALL                             R13 3 1
      247 SETTABLEKS                       R13 R12 K35 ["ImportColumn"]
      249 CALL                             R9 3 1
      250 SETTABLEKS                       R9 R8 K14 ["TwoColumn"]
      252 CALL                             R5 3 -1
      253 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TextureGenerator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R3 K10 ["Localization"]
       25 GETTABLEKS                       R5 R2 K11 ["Style"]
       27 GETTABLEKS                       R5 R5 K12 ["Stylizer"]
       29 GETTABLEKS                       R6 R2 K13 ["UI"]
       31 GETTABLEKS                       R7 R6 K14 ["Pane"]
       33 GETTABLEKS                       R8 R6 K15 ["IconButton"]
       35 GETTABLEKS                       R9 R6 K16 ["DEPRECATED_TextInput"]
       37 GETTABLEKS                       R10 R0 K17 ["Src"]
       39 GETTABLEKS                       R10 R10 K18 ["Components"]
       41 GETIMPORT                        R11 K5 [require]
       43 GETTABLEKS                       R12 R10 K19 ["PreviewImage"]
       45 CALL                             R11 1 1
       46 DUPCLOSURE                       R12 K20 [PROTO_0]
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R7
       51 CAPTURE                          VAL R11
       52 CAPTURE                          VAL R9
       53 CAPTURE                          VAL R8
       54 RETURN                           R12 1
