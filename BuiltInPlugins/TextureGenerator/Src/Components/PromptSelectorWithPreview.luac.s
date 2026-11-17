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
       17 DUPTABLE                         R7 K9 [{["BackgroundTransparency"] = 1, ["Size"]}]
       18 GETIMPORT                        R8 K12 [UDim2.new]
       20 LOADN                            R9 1
       21 LOADN                            R10 0
       22 LOADN                            R11 0
       23 GETTABLEKS                       R13 R2 K13 ["PaddingVertical"]
       25 ADD                              R12 R3 R13
       26 CALL                             R8 4 1
       27 SETTABLEKS                       R8 R7 K8 ["Size"]
       29 DUPTABLE                         R8 K16 [{"UIListLayout", "TwoColumn"}]
       30 GETUPVAL                         R9 2
       31 GETTABLEKS                       R9 R9 K4 ["createElement"]
       33 LOADK                            R10 K14 ["UIListLayout"]
       34 DUPTABLE                         R11 K19 [{"SortOrder", "Padding"}]
       35 GETIMPORT                        R12 K22 [Enum.SortOrder.LayoutOrder]
       37 SETTABLEKS                       R12 R11 K17 ["SortOrder"]
       39 GETIMPORT                        R12 K24 [UDim.new]
       41 LOADN                            R13 0
       42 GETTABLEKS                       R14 R2 K13 ["PaddingVertical"]
       44 CALL                             R12 2 1
       45 SETTABLEKS                       R12 R11 K18 ["Padding"]
       47 CALL                             R9 2 1
       48 SETTABLEKS                       R9 R8 K14 ["UIListLayout"]
       50 GETUPVAL                         R9 2
       51 GETTABLEKS                       R9 R9 K4 ["createElement"]
       53 GETUPVAL                         R10 3
       54 DUPTABLE                         R11 K28 [{"HorizontalAlignment", "Layout", "Size", "Spacing"}]
       55 GETIMPORT                        R12 K30 [Enum.HorizontalAlignment.Center]
       57 SETTABLEKS                       R12 R11 K25 ["HorizontalAlignment"]
       59 GETIMPORT                        R12 K33 [Enum.FillDirection.Horizontal]
       61 SETTABLEKS                       R12 R11 K26 ["Layout"]
       63 GETIMPORT                        R12 K12 [UDim2.new]
       65 LOADN                            R13 1
       66 LOADN                            R14 0
       67 LOADN                            R15 0
       68 MOVE                             R16 R3
       69 CALL                             R12 4 1
       70 SETTABLEKS                       R12 R11 K8 ["Size"]
       72 GETTABLEKS                       R12 R2 K34 ["PaddingHorizontal"]
       74 SETTABLEKS                       R12 R11 K27 ["Spacing"]
       76 DUPTABLE                         R12 K37 [{"PreviewColumn", "ImportColumn"}]
       77 GETUPVAL                         R13 2
       78 GETTABLEKS                       R13 R13 K4 ["createElement"]
       80 GETUPVAL                         R14 3
       81 DUPTABLE                         R15 K38 [{["LayoutOrder"] = 1, ["Size"]}]
       82 GETIMPORT                        R16 K12 [UDim2.new]
       84 LOADN                            R17 0
       85 MOVE                             R18 R3
       86 LOADN                            R19 1
       87 LOADN                            R20 0
       88 CALL                             R16 4 1
       89 SETTABLEKS                       R16 R15 K8 ["Size"]
       91 DUPTABLE                         R16 K40 [{"PreviewImage"}]
       92 GETUPVAL                         R17 2
       93 GETTABLEKS                       R17 R17 K4 ["createElement"]
       95 GETUPVAL                         R18 4
       96 DUPTABLE                         R19 K43 [{"ImageId", "ClearSelection"}]
       97 GETTABLEKS                       R20 R0 K41 ["ImageId"]
       99 SETTABLEKS                       R20 R19 K41 ["ImageId"]
      101 GETTABLEKS                       R20 R0 K42 ["ClearSelection"]
      103 SETTABLEKS                       R20 R19 K42 ["ClearSelection"]
      105 CALL                             R17 2 1
      106 SETTABLEKS                       R17 R16 K39 ["PreviewImage"]
      108 CALL                             R13 3 1
      109 SETTABLEKS                       R13 R12 K35 ["PreviewColumn"]
      111 GETUPVAL                         R13 2
      112 GETTABLEKS                       R13 R13 K4 ["createElement"]
      114 GETUPVAL                         R14 3
      115 DUPTABLE                         R15 K49 [{["Size"], ["Style"] = "RoundBox", ["Spacing"] = 10, ["VerticalAlignment"], ["Layout"], ["LayoutOrder"] = 2}]
      116 GETIMPORT                        R16 K12 [UDim2.new]
      118 LOADN                            R17 1
      119 MINUS                            R19 R3
      120 GETTABLEKS                       R20 R2 K34 ["PaddingHorizontal"]
      122 SUB                              R18 R19 R20
      123 LOADN                            R19 1
      124 LOADN                            R20 0
      125 CALL                             R16 4 1
      126 SETTABLEKS                       R16 R15 K8 ["Size"]
      128 GETIMPORT                        R16 K51 [Enum.VerticalAlignment.Top]
      130 SETTABLEKS                       R16 R15 K47 ["VerticalAlignment"]
      132 GETIMPORT                        R16 K53 [Enum.FillDirection.Vertical]
      134 SETTABLEKS                       R16 R15 K26 ["Layout"]
      136 DUPTABLE                         R16 K56 [{"UrlImport", "IconImport"}]
      137 GETUPVAL                         R17 2
      138 GETTABLEKS                       R17 R17 K4 ["createElement"]
      140 GETUPVAL                         R18 5
      141 DUPTABLE                         R19 K62 [{["PlaceholderText"], ["Text"], ["Size"], ["OnFocusLost"], ["OnTextChanged"], ["Style"] = "FilledRoundedBorder"}]
      142 LOADK                            R22 K63 ["ImportImage"]
      143 LOADK                            R23 K64 ["InsertAssetURL"]
      144 NAMECALL                         R20 R1 K65 ["getText"]
      146 CALL                             R20 3 1
      147 SETTABLEKS                       R20 R19 K57 ["PlaceholderText"]
      149 GETTABLEKS                       R20 R0 K41 ["ImageId"]
      151 SETTABLEKS                       R20 R19 K58 ["Text"]
      153 GETIMPORT                        R20 K12 [UDim2.new]
      155 LOADN                            R21 1
      156 LOADN                            R22 0
      157 LOADN                            R23 0
      158 MOVE                             R24 R4
      159 CALL                             R20 4 1
      160 SETTABLEKS                       R20 R19 K8 ["Size"]
      162 GETTABLEKS                       R20 R0 K59 ["OnFocusLost"]
      164 SETTABLEKS                       R20 R19 K59 ["OnFocusLost"]
      166 GETTABLEKS                       R20 R0 K66 ["OnUrlChanged"]
      168 SETTABLEKS                       R20 R19 K60 ["OnTextChanged"]
      170 CALL                             R17 2 1
      171 SETTABLEKS                       R17 R16 K54 ["UrlImport"]
      173 GETUPVAL                         R17 2
      174 GETTABLEKS                       R17 R17 K4 ["createElement"]
      176 GETUPVAL                         R18 6
      177 DUPTABLE                         R19 K74 [{"ForwardRef", "AnchorPoint", "Size", "Text", "TextXAlignment", "LeftIcon", "IconColor", "BackgroundColor", "OnClick"}]
      178 GETTABLEKS                       R20 R0 K75 ["ButtonRef"]
      180 SETTABLEKS                       R20 R19 K67 ["ForwardRef"]
      182 GETIMPORT                        R20 K77 [Vector2.new]
      184 LOADN                            R21 1
      185 LOADN                            R22 1
      186 CALL                             R20 2 1
      187 SETTABLEKS                       R20 R19 K68 ["AnchorPoint"]
      189 GETIMPORT                        R20 K12 [UDim2.new]
      191 LOADN                            R21 1
      192 LOADN                            R22 0
      193 LOADN                            R23 0
      194 MOVE                             R24 R4
      195 CALL                             R20 4 1
      196 SETTABLEKS                       R20 R19 K8 ["Size"]
      198 LOADK                            R22 K63 ["ImportImage"]
      199 LOADK                            R23 K78 ["Import"]
      200 NAMECALL                         R20 R1 K65 ["getText"]
      202 CALL                             R20 3 1
      203 SETTABLEKS                       R20 R19 K58 ["Text"]
      205 GETIMPORT                        R20 K79 [Enum.TextXAlignment.Center]
      207 SETTABLEKS                       R20 R19 K69 ["TextXAlignment"]
      209 GETTABLEKS                       R20 R2 K80 ["ImportIcon"]
      211 SETTABLEKS                       R20 R19 K70 ["LeftIcon"]
      213 GETTABLEKS                       R20 R2 K81 ["ImportIconColor"]
      215 SETTABLEKS                       R20 R19 K71 ["IconColor"]
      217 GETTABLEKS                       R20 R2 K82 ["ButtonColor"]
      219 SETTABLEKS                       R20 R19 K72 ["BackgroundColor"]
      221 GETTABLEKS                       R20 R0 K83 ["PromptSelection"]
      223 SETTABLEKS                       R20 R19 K73 ["OnClick"]
      225 CALL                             R17 2 1
      226 SETTABLEKS                       R17 R16 K55 ["IconImport"]
      228 CALL                             R13 3 1
      229 SETTABLEKS                       R13 R12 K36 ["ImportColumn"]
      231 CALL                             R9 3 1
      232 SETTABLEKS                       R9 R8 K15 ["TwoColumn"]
      234 CALL                             R5 3 -1
      235 RETURN                           R5 -1

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
