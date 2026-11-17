PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_2:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["openExpandedPreview"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["closeExpandedPreview"]
       11 RETURN                           R0 0

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
       52 DUPTABLE                         R18 K23 [{["BackgroundTransparency"] = 1, ["Size"]}]
       53 GETIMPORT                        R19 K26 [UDim2.new]
       55 LOADN                            R20 0
       56 MOVE                             R21 R10
       57 LOADN                            R22 0
       58 GETTABLEKS                       R24 R4 K27 ["PaddingVertical"]
       60 ADD                              R23 R11 R24
       61 CALL                             R19 4 1
       62 SETTABLEKS                       R19 R18 K22 ["Size"]
       64 DUPTABLE                         R19 K30 [{"UIListLayout", "TwoColumn"}]
       65 GETUPVAL                         R20 0
       66 GETTABLEKS                       R20 R20 K18 ["createElement"]
       68 LOADK                            R21 K28 ["UIListLayout"]
       69 DUPTABLE                         R22 K33 [{"SortOrder", "Padding"}]
       70 GETIMPORT                        R23 K36 [Enum.SortOrder.LayoutOrder]
       72 SETTABLEKS                       R23 R22 K31 ["SortOrder"]
       74 GETIMPORT                        R23 K38 [UDim.new]
       76 LOADN                            R24 0
       77 GETTABLEKS                       R25 R4 K27 ["PaddingVertical"]
       79 CALL                             R23 2 1
       80 SETTABLEKS                       R23 R22 K32 ["Padding"]
       82 CALL                             R20 2 1
       83 SETTABLEKS                       R20 R19 K28 ["UIListLayout"]
       85 GETUPVAL                         R20 0
       86 GETTABLEKS                       R20 R20 K18 ["createElement"]
       88 GETUPVAL                         R21 1
       89 DUPTABLE                         R22 K42 [{"HorizontalAlignment", "Layout", "Size", "Spacing"}]
       90 GETIMPORT                        R23 K44 [Enum.HorizontalAlignment.Left]
       92 SETTABLEKS                       R23 R22 K39 ["HorizontalAlignment"]
       94 GETIMPORT                        R23 K47 [Enum.FillDirection.Horizontal]
       96 SETTABLEKS                       R23 R22 K40 ["Layout"]
       98 GETIMPORT                        R23 K26 [UDim2.new]
      100 LOADN                            R24 1
      101 LOADN                            R25 0
      102 LOADN                            R26 0
      103 MOVE                             R27 R11
      104 CALL                             R23 4 1
      105 SETTABLEKS                       R23 R22 K22 ["Size"]
      107 GETTABLEKS                       R23 R4 K48 ["PaddingHorizontal"]
      109 SETTABLEKS                       R23 R22 K41 ["Spacing"]
      111 DUPTABLE                         R23 K51 [{"PreviewColumn", "ImportColumn"}]
      112 GETUPVAL                         R24 0
      113 GETTABLEKS                       R24 R24 K18 ["createElement"]
      115 GETUPVAL                         R25 1
      116 DUPTABLE                         R26 K52 [{["LayoutOrder"] = 1, ["Size"]}]
      117 GETIMPORT                        R27 K26 [UDim2.new]
      119 MOVE                             R28 R12
      120 GETIMPORT                        R29 K38 [UDim.new]
      122 LOADN                            R30 1
      123 LOADN                            R31 0
      124 CALL                             R29 2 -1
      125 CALL                             R27 -1 1
      126 SETTABLEKS                       R27 R26 K22 ["Size"]
      128 DUPTABLE                         R27 K55 [{"PreviewImage", "ExpandedPreview"}]
      129 GETUPVAL                         R28 0
      130 GETTABLEKS                       R28 R28 K18 ["createElement"]
      132 GETUPVAL                         R29 2
      133 DUPTABLE                         R30 K60 [{"ImageId", "IsTempId", "ClearSelection", "OpenExpandedPreview"}]
      134 GETTABLEKS                       R31 R1 K56 ["ImageId"]
      136 SETTABLEKS                       R31 R30 K56 ["ImageId"]
      138 GETTABLEKS                       R31 R1 K57 ["IsTempId"]
      140 SETTABLEKS                       R31 R30 K57 ["IsTempId"]
      142 GETTABLEKS                       R31 R1 K58 ["ClearSelection"]
      144 SETTABLEKS                       R31 R30 K58 ["ClearSelection"]
      146 GETTABLEKS                       R31 R0 K61 ["openExpandedPreview"]
      148 SETTABLEKS                       R31 R30 K59 ["OpenExpandedPreview"]
      150 CALL                             R28 2 1
      151 SETTABLEKS                       R28 R27 K53 ["PreviewImage"]
      153 MOVE                             R28 R14
      154 JUMPIFNOT                        R28 ; [+22]
      155 GETUPVAL                         R28 0
      156 GETTABLEKS                       R28 R28 K18 ["createElement"]
      158 GETUPVAL                         R29 3
      159 DUPTABLE                         R30 K64 [{"PreviewTitle", "ImageId", "IsTempId", "Metadata", "OnClose"}]
      160 SETTABLEKS                       R6 R30 K7 ["PreviewTitle"]
      162 GETTABLEKS                       R31 R1 K56 ["ImageId"]
      164 SETTABLEKS                       R31 R30 K56 ["ImageId"]
      166 GETTABLEKS                       R31 R1 K57 ["IsTempId"]
      168 SETTABLEKS                       R31 R30 K57 ["IsTempId"]
      170 SETTABLEKS                       R15 R30 K62 ["Metadata"]
      172 GETTABLEKS                       R31 R0 K65 ["closeExpandedPreview"]
      174 SETTABLEKS                       R31 R30 K63 ["OnClose"]
      176 CALL                             R28 2 1
      177 SETTABLEKS                       R28 R27 K54 ["ExpandedPreview"]
      179 CALL                             R24 3 1
      180 SETTABLEKS                       R24 R23 K49 ["PreviewColumn"]
      182 GETUPVAL                         R24 0
      183 GETTABLEKS                       R24 R24 K18 ["createElement"]
      185 GETUPVAL                         R25 1
      186 DUPTABLE                         R26 K70 [{["Size"], ["Style"] = "RoundBox", ["Spacing"] = 10, ["VerticalAlignment"], ["Layout"], ["LayoutOrder"] = 2}]
      187 GETIMPORT                        R27 K26 [UDim2.new]
      189 LOADN                            R28 0
      190 MOVE                             R29 R7
      191 LOADN                            R30 1
      192 LOADN                            R31 0
      193 CALL                             R27 4 1
      194 SETTABLEKS                       R27 R26 K22 ["Size"]
      196 GETIMPORT                        R27 K72 [Enum.VerticalAlignment.Top]
      198 SETTABLEKS                       R27 R26 K69 ["VerticalAlignment"]
      200 GETIMPORT                        R27 K74 [Enum.FillDirection.Vertical]
      202 SETTABLEKS                       R27 R26 K40 ["Layout"]
      204 DUPTABLE                         R27 K77 [{"UrlImport", "IconImport"}]
      205 GETUPVAL                         R28 0
      206 GETTABLEKS                       R28 R28 K18 ["createElement"]
      208 GETUPVAL                         R29 4
      209 DUPTABLE                         R30 K82 [{["PlaceholderText"], ["Text"], ["Size"], ["OnFocusLost"], ["Style"] = "FilledRoundedBorder"}]
      210 LOADK                            R33 K83 ["CreateDialog"]
      211 LOADK                            R34 K84 ["InsertAssetURL"]
      212 NAMECALL                         R31 R2 K85 ["getText"]
      214 CALL                             R31 3 1
      215 SETTABLEKS                       R31 R30 K78 ["PlaceholderText"]
      217 GETTABLEKS                       R31 R1 K86 ["SearchUrl"]
      219 SETTABLEKS                       R31 R30 K79 ["Text"]
      221 GETIMPORT                        R31 K26 [UDim2.new]
      223 LOADN                            R32 1
      224 LOADN                            R33 0
      225 LOADN                            R34 0
      226 MOVE                             R35 R13
      227 CALL                             R31 4 1
      228 SETTABLEKS                       R31 R30 K22 ["Size"]
      230 GETTABLEKS                       R31 R1 K80 ["OnFocusLost"]
      232 SETTABLEKS                       R31 R30 K80 ["OnFocusLost"]
      234 CALL                             R28 2 1
      235 SETTABLEKS                       R28 R27 K75 ["UrlImport"]
      237 GETUPVAL                         R28 0
      238 GETTABLEKS                       R28 R28 K18 ["createElement"]
      240 GETUPVAL                         R29 5
      241 DUPTABLE                         R30 K92 [{"Size", "Text", "TextXAlignment", "LeftIcon", "IconColor", "BackgroundColor", "OnClick", "Padding"}]
      242 GETIMPORT                        R31 K26 [UDim2.new]
      244 LOADN                            R32 1
      245 LOADN                            R33 0
      246 LOADN                            R34 0
      247 MOVE                             R35 R13
      248 CALL                             R31 4 1
      249 SETTABLEKS                       R31 R30 K22 ["Size"]
      251 LOADK                            R33 K83 ["CreateDialog"]
      252 LOADK                            R34 K93 ["Import"]
      253 NAMECALL                         R31 R2 K85 ["getText"]
      255 CALL                             R31 3 1
      256 SETTABLEKS                       R31 R30 K79 ["Text"]
      258 GETIMPORT                        R31 K94 [Enum.TextXAlignment.Left]
      260 SETTABLEKS                       R31 R30 K87 ["TextXAlignment"]
      262 GETTABLEKS                       R31 R4 K95 ["ImportIcon"]
      264 SETTABLEKS                       R31 R30 K88 ["LeftIcon"]
      266 GETTABLEKS                       R31 R4 K96 ["ImportIconColor"]
      268 SETTABLEKS                       R31 R30 K89 ["IconColor"]
      270 GETTABLEKS                       R31 R4 K97 ["ButtonColor"]
      272 SETTABLEKS                       R31 R30 K90 ["BackgroundColor"]
      274 GETTABLEKS                       R31 R1 K98 ["PromptSelection"]
      276 SETTABLEKS                       R31 R30 K91 ["OnClick"]
      278 DUPTABLE                         R31 K100 [{"Left", "Right"}]
      279 SETTABLEKS                       R8 R31 K43 ["Left"]
      281 SETTABLEKS                       R9 R31 K99 ["Right"]
      283 SETTABLEKS                       R31 R30 K32 ["Padding"]
      285 CALL                             R28 2 1
      286 SETTABLEKS                       R28 R27 K76 ["IconImport"]
      288 CALL                             R24 3 1
      289 SETTABLEKS                       R24 R23 K50 ["ImportColumn"]
      291 CALL                             R20 3 1
      292 SETTABLEKS                       R20 R19 K29 ["TwoColumn"]
      294 CALL                             R16 3 -1
      295 RETURN                           R16 -1

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
