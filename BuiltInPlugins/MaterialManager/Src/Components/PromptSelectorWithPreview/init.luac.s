PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showingExpandedPreview"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["showingExpandedPreview"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"showingExpandedPreview"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["showingExpandedPreview"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K1 [{"showingExpandedPreview"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["showingExpandedPreview"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["openExpandedPreview"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["closeExpandedPreview"]
       14 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R4 R1 K3 ["Stylizer"]
        8 GETTABLEKS                       R4 R4 K4 ["PromptSelectorWithPreview"]
       10 GETTABLEKS                       R6 R1 K6 ["SelectionName"]
       12 ORK                              R5 R6 K5 [""]
       13 GETTABLEKS                       R7 R1 K7 ["PreviewTitle"]
       15 ORK                              R6 R7 K5 [""]
       16 GETTABLEKS                       R7 R1 K8 ["ColumnWidth"]
       18 JUMPIF                           R7 ; [+2]
       19 GETTABLEKS                       R7 R4 K8 ["ColumnWidth"]
       21 SUBK                             R10 R7 K11 [60]
       22 DIVK                             R9 R10 K10 [2]
       23 SUBK                             R8 R9 K9 [5]
       24 SUBK                             R11 R7 K11 [60]
       25 DIVK                             R10 R11 K10 [2]
       26 ADDK                             R9 R10 K9 [5]
       27 GETTABLEKS                       R11 R4 K12 ["LabelColumnWidth"]
       29 GETTABLEKS                       R11 R11 K13 ["Offset"]
       31 ADD                              R10 R7 R11
       32 GETTABLEKS                       R11 R4 K14 ["PreviewSize"]
       34 GETTABLEKS                       R12 R1 K15 ["LabelWidth"]
       36 GETTABLEKS                       R13 R4 K16 ["ButtonHeight"]
       38 GETTABLEKS                       R14 R3 K17 ["showingExpandedPreview"]
       40 LOADNIL                          R15
       41 JUMPIFNOT                        R14 ; [+6]
       42 NEWTABLE                         R16 0 1
       44 MOVE                             R17 R5
       45 SETLIST                          R16 R17 1 [1]
       47 MOVE                             R15 R16
       48 GETUPVAL                         R16 0
       49 GETTABLEKS                       R16 R16 K18 ["createElement"]
       51 LOADK                            R17 K19 ["Frame"]
       52 DUPTABLE                         R18 K22 [{"BackgroundTransparency", "Size"}]
       53 LOADN                            R19 1
       54 SETTABLEKS                       R19 R18 K20 ["BackgroundTransparency"]
       56 GETIMPORT                        R19 K25 [UDim2.new]
       58 LOADN                            R20 0
       59 MOVE                             R21 R10
       60 LOADN                            R22 0
       61 GETTABLEKS                       R24 R4 K26 ["PaddingVertical"]
       63 ADD                              R23 R11 R24
       64 CALL                             R19 4 1
       65 SETTABLEKS                       R19 R18 K21 ["Size"]
       67 DUPTABLE                         R19 K29 [{"UIListLayout", "TwoColumn"}]
       68 GETUPVAL                         R20 0
       69 GETTABLEKS                       R20 R20 K18 ["createElement"]
       71 LOADK                            R21 K27 ["UIListLayout"]
       72 DUPTABLE                         R22 K32 [{"SortOrder", "Padding"}]
       73 GETIMPORT                        R23 K35 [Enum.SortOrder.LayoutOrder]
       75 SETTABLEKS                       R23 R22 K30 ["SortOrder"]
       77 GETIMPORT                        R23 K37 [UDim.new]
       79 LOADN                            R24 0
       80 GETTABLEKS                       R25 R4 K26 ["PaddingVertical"]
       82 CALL                             R23 2 1
       83 SETTABLEKS                       R23 R22 K31 ["Padding"]
       85 CALL                             R20 2 1
       86 SETTABLEKS                       R20 R19 K27 ["UIListLayout"]
       88 GETUPVAL                         R20 0
       89 GETTABLEKS                       R20 R20 K18 ["createElement"]
       91 GETUPVAL                         R21 1
       92 DUPTABLE                         R22 K41 [{"HorizontalAlignment", "Layout", "Size", "Spacing"}]
       93 GETIMPORT                        R23 K43 [Enum.HorizontalAlignment.Left]
       95 SETTABLEKS                       R23 R22 K38 ["HorizontalAlignment"]
       97 GETIMPORT                        R23 K46 [Enum.FillDirection.Horizontal]
       99 SETTABLEKS                       R23 R22 K39 ["Layout"]
      101 GETIMPORT                        R23 K25 [UDim2.new]
      103 LOADN                            R24 1
      104 LOADN                            R25 0
      105 LOADN                            R26 0
      106 MOVE                             R27 R11
      107 CALL                             R23 4 1
      108 SETTABLEKS                       R23 R22 K21 ["Size"]
      110 GETTABLEKS                       R23 R4 K47 ["PaddingHorizontal"]
      112 SETTABLEKS                       R23 R22 K40 ["Spacing"]
      114 DUPTABLE                         R23 K50 [{"PreviewColumn", "ImportColumn"}]
      115 GETUPVAL                         R24 0
      116 GETTABLEKS                       R24 R24 K18 ["createElement"]
      118 GETUPVAL                         R25 1
      119 DUPTABLE                         R26 K51 [{"LayoutOrder", "Size"}]
      120 LOADN                            R27 1
      121 SETTABLEKS                       R27 R26 K34 ["LayoutOrder"]
      123 GETIMPORT                        R27 K25 [UDim2.new]
      125 MOVE                             R28 R12
      126 GETIMPORT                        R29 K37 [UDim.new]
      128 LOADN                            R30 1
      129 LOADN                            R31 0
      130 CALL                             R29 2 -1
      131 CALL                             R27 -1 1
      132 SETTABLEKS                       R27 R26 K21 ["Size"]
      134 DUPTABLE                         R27 K54 [{"PreviewImage", "ExpandedPreview"}]
      135 GETUPVAL                         R28 0
      136 GETTABLEKS                       R28 R28 K18 ["createElement"]
      138 GETUPVAL                         R29 2
      139 DUPTABLE                         R30 K59 [{"ImageId", "IsTempId", "ClearSelection", "OpenExpandedPreview"}]
      140 GETTABLEKS                       R31 R1 K55 ["ImageId"]
      142 SETTABLEKS                       R31 R30 K55 ["ImageId"]
      144 GETTABLEKS                       R31 R1 K56 ["IsTempId"]
      146 SETTABLEKS                       R31 R30 K56 ["IsTempId"]
      148 GETTABLEKS                       R31 R1 K57 ["ClearSelection"]
      150 SETTABLEKS                       R31 R30 K57 ["ClearSelection"]
      152 GETTABLEKS                       R31 R0 K60 ["openExpandedPreview"]
      154 SETTABLEKS                       R31 R30 K58 ["OpenExpandedPreview"]
      156 CALL                             R28 2 1
      157 SETTABLEKS                       R28 R27 K52 ["PreviewImage"]
      159 MOVE                             R28 R14
      160 JUMPIFNOT                        R28 ; [+22]
      161 GETUPVAL                         R28 0
      162 GETTABLEKS                       R28 R28 K18 ["createElement"]
      164 GETUPVAL                         R29 3
      165 DUPTABLE                         R30 K63 [{"PreviewTitle", "ImageId", "IsTempId", "Metadata", "OnClose"}]
      166 SETTABLEKS                       R6 R30 K7 ["PreviewTitle"]
      168 GETTABLEKS                       R31 R1 K55 ["ImageId"]
      170 SETTABLEKS                       R31 R30 K55 ["ImageId"]
      172 GETTABLEKS                       R31 R1 K56 ["IsTempId"]
      174 SETTABLEKS                       R31 R30 K56 ["IsTempId"]
      176 SETTABLEKS                       R15 R30 K61 ["Metadata"]
      178 GETTABLEKS                       R31 R0 K64 ["closeExpandedPreview"]
      180 SETTABLEKS                       R31 R30 K62 ["OnClose"]
      182 CALL                             R28 2 1
      183 SETTABLEKS                       R28 R27 K53 ["ExpandedPreview"]
      185 CALL                             R24 3 1
      186 SETTABLEKS                       R24 R23 K48 ["PreviewColumn"]
      188 GETUPVAL                         R24 0
      189 GETTABLEKS                       R24 R24 K18 ["createElement"]
      191 GETUPVAL                         R25 1
      192 DUPTABLE                         R26 K67 [{"Size", "Style", "Spacing", "VerticalAlignment", "Layout", "LayoutOrder"}]
      193 GETIMPORT                        R27 K25 [UDim2.new]
      195 LOADN                            R28 0
      196 MOVE                             R29 R7
      197 LOADN                            R30 1
      198 LOADN                            R31 0
      199 CALL                             R27 4 1
      200 SETTABLEKS                       R27 R26 K21 ["Size"]
      202 LOADK                            R27 K68 ["RoundBox"]
      203 SETTABLEKS                       R27 R26 K65 ["Style"]
      205 LOADN                            R27 10
      206 SETTABLEKS                       R27 R26 K40 ["Spacing"]
      208 GETIMPORT                        R27 K70 [Enum.VerticalAlignment.Top]
      210 SETTABLEKS                       R27 R26 K66 ["VerticalAlignment"]
      212 GETIMPORT                        R27 K72 [Enum.FillDirection.Vertical]
      214 SETTABLEKS                       R27 R26 K39 ["Layout"]
      216 LOADN                            R27 2
      217 SETTABLEKS                       R27 R26 K34 ["LayoutOrder"]
      219 DUPTABLE                         R27 K75 [{"UrlImport", "IconImport"}]
      220 GETUPVAL                         R28 0
      221 GETTABLEKS                       R28 R28 K18 ["createElement"]
      223 GETUPVAL                         R29 4
      224 DUPTABLE                         R30 K79 [{"PlaceholderText", "Text", "Size", "OnFocusLost", "Style"}]
      225 LOADK                            R33 K80 ["CreateDialog"]
      226 LOADK                            R34 K81 ["InsertAssetURL"]
      227 NAMECALL                         R31 R2 K82 ["getText"]
      229 CALL                             R31 3 1
      230 SETTABLEKS                       R31 R30 K76 ["PlaceholderText"]
      232 GETTABLEKS                       R31 R1 K83 ["SearchUrl"]
      234 SETTABLEKS                       R31 R30 K77 ["Text"]
      236 GETIMPORT                        R31 K25 [UDim2.new]
      238 LOADN                            R32 1
      239 LOADN                            R33 0
      240 LOADN                            R34 0
      241 MOVE                             R35 R13
      242 CALL                             R31 4 1
      243 SETTABLEKS                       R31 R30 K21 ["Size"]
      245 GETTABLEKS                       R31 R1 K78 ["OnFocusLost"]
      247 SETTABLEKS                       R31 R30 K78 ["OnFocusLost"]
      249 LOADK                            R31 K84 ["FilledRoundedBorder"]
      250 SETTABLEKS                       R31 R30 K65 ["Style"]
      252 CALL                             R28 2 1
      253 SETTABLEKS                       R28 R27 K73 ["UrlImport"]
      255 GETUPVAL                         R28 0
      256 GETTABLEKS                       R28 R28 K18 ["createElement"]
      258 GETUPVAL                         R29 5
      259 DUPTABLE                         R30 K90 [{"Size", "Text", "TextXAlignment", "LeftIcon", "IconColor", "BackgroundColor", "OnClick", "Padding"}]
      260 GETIMPORT                        R31 K25 [UDim2.new]
      262 LOADN                            R32 1
      263 LOADN                            R33 0
      264 LOADN                            R34 0
      265 MOVE                             R35 R13
      266 CALL                             R31 4 1
      267 SETTABLEKS                       R31 R30 K21 ["Size"]
      269 LOADK                            R33 K80 ["CreateDialog"]
      270 LOADK                            R34 K91 ["Import"]
      271 NAMECALL                         R31 R2 K82 ["getText"]
      273 CALL                             R31 3 1
      274 SETTABLEKS                       R31 R30 K77 ["Text"]
      276 GETIMPORT                        R31 K92 [Enum.TextXAlignment.Left]
      278 SETTABLEKS                       R31 R30 K85 ["TextXAlignment"]
      280 GETTABLEKS                       R31 R4 K93 ["ImportIcon"]
      282 SETTABLEKS                       R31 R30 K86 ["LeftIcon"]
      284 GETTABLEKS                       R31 R4 K94 ["ImportIconColor"]
      286 SETTABLEKS                       R31 R30 K87 ["IconColor"]
      288 GETTABLEKS                       R31 R4 K95 ["ButtonColor"]
      290 SETTABLEKS                       R31 R30 K88 ["BackgroundColor"]
      292 GETTABLEKS                       R31 R1 K96 ["PromptSelection"]
      294 SETTABLEKS                       R31 R30 K89 ["OnClick"]
      296 DUPTABLE                         R31 K98 [{"Left", "Right"}]
      297 SETTABLEKS                       R8 R31 K42 ["Left"]
      299 SETTABLEKS                       R9 R31 K97 ["Right"]
      301 SETTABLEKS                       R31 R30 K31 ["Padding"]
      303 CALL                             R28 2 1
      304 SETTABLEKS                       R28 R27 K74 ["IconImport"]
      306 CALL                             R24 3 1
      307 SETTABLEKS                       R24 R23 K49 ["ImportColumn"]
      309 CALL                             R20 3 1
      310 SETTABLEKS                       R20 R19 K28 ["TwoColumn"]
      312 CALL                             R16 3 -1
      313 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R4 R3 K9 ["Localization"]
       27 GETTABLEKS                       R5 R3 K10 ["withContext"]
       29 GETTABLEKS                       R6 R2 K11 ["Style"]
       31 GETTABLEKS                       R6 R6 K12 ["Stylizer"]
       33 GETTABLEKS                       R7 R2 K13 ["UI"]
       35 GETTABLEKS                       R8 R7 K14 ["Pane"]
       37 GETTABLEKS                       R9 R7 K15 ["IconButton"]
       39 GETTABLEKS                       R10 R7 K16 ["DEPRECATED_TextInput"]
       41 GETTABLEKS                       R11 R0 K17 ["Src"]
       43 GETTABLEKS                       R11 R11 K18 ["Components"]
       45 GETIMPORT                        R12 K4 [require]
       47 GETTABLEKS                       R13 R11 K19 ["PromptSelectorWithPreview"]
       49 GETTABLEKS                       R13 R13 K20 ["PreviewDialog"]
       51 CALL                             R12 1 1
       52 GETIMPORT                        R13 K4 [require]
       54 GETTABLEKS                       R14 R11 K19 ["PromptSelectorWithPreview"]
       56 GETTABLEKS                       R14 R14 K21 ["PreviewImage"]
       58 CALL                             R13 1 1
       59 GETTABLEKS                       R14 R1 K22 ["PureComponent"]
       61 LOADK                            R16 K19 ["PromptSelectorWithPreview"]
       62 NAMECALL                         R14 R14 K23 ["extend"]
       64 CALL                             R14 2 1
       65 DUPCLOSURE                       R15 K24 [PROTO_2]
       66 SETTABLEKS                       R15 R14 K25 ["init"]
       68 DUPCLOSURE                       R15 K26 [PROTO_3]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R13
       72 CAPTURE                          VAL R12
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R9
       75 SETTABLEKS                       R15 R14 K27 ["render"]
       77 MOVE                             R15 R5
       78 DUPTABLE                         R16 K28 [{"Stylizer", "Localization"}]
       79 SETTABLEKS                       R6 R16 K12 ["Stylizer"]
       81 SETTABLEKS                       R4 R16 K9 ["Localization"]
       83 CALL                             R15 1 1
       84 MOVE                             R16 R14
       85 CALL                             R15 1 1
       86 MOVE                             R14 R15
       87 RETURN                           R14 1
