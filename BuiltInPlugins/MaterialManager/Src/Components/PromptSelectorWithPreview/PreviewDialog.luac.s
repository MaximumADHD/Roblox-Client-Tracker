PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R2 R2 K2 ["PromptSelectorWithPreview"]
        6 GETTABLEKS                       R4 R1 K4 ["PreviewTitle"]
        8 ORK                              R3 R4 K3 [""]
        9 GETTABLEKS                       R4 R1 K5 ["Metadata"]
       11 JUMPIF                           R4 ; [+2]
       12 NEWTABLE                         R4 0 0
       14 LENGTH                           R6 R4
       15 LOADN                            R7 0
       16 JUMPIFNOTLT                      R7 R6 ; [+5]
       18 GETTABLEKS                       R6 R2 K7 ["TextHeight"]
       20 ADDK                             R5 R6 K6 [8]
       21 JUMPIF                           R5 ; [+1]
       22 LOADN                            R5 0
       23 GETUPVAL                         R6 0
       24 GETTABLEKS                       R6 R6 K8 ["new"]
       26 CALL                             R6 0 1
       27 DUPTABLE                         R7 K12 [{"UIListLayout", "PreviewContentContainer", "EmptyRow"}]
       28 GETUPVAL                         R8 1
       29 GETTABLEKS                       R8 R8 K13 ["createElement"]
       31 LOADK                            R9 K9 ["UIListLayout"]
       32 DUPTABLE                         R10 K16 [{"SortOrder", "Padding"}]
       33 GETIMPORT                        R11 K19 [Enum.SortOrder.LayoutOrder]
       35 SETTABLEKS                       R11 R10 K14 ["SortOrder"]
       37 GETIMPORT                        R11 K21 [UDim.new]
       39 LOADN                            R12 0
       40 LOADN                            R13 4
       41 CALL                             R11 2 1
       42 SETTABLEKS                       R11 R10 K15 ["Padding"]
       44 CALL                             R8 2 1
       45 SETTABLEKS                       R8 R7 K9 ["UIListLayout"]
       47 GETUPVAL                         R8 1
       48 GETTABLEKS                       R8 R8 K13 ["createElement"]
       50 LOADK                            R9 K22 ["Frame"]
       51 DUPTABLE                         R10 K26 [{"LayoutOrder", "Size", "BackgroundColor3", "BorderColor3"}]
       52 NAMECALL                         R11 R6 K27 ["getNextOrder"]
       54 CALL                             R11 1 1
       55 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
       57 GETIMPORT                        R11 K29 [UDim2.new]
       59 LOADN                            R12 1
       60 LOADN                            R13 0
       61 LOADN                            R14 1
       62 MINUS                            R15 R5
       63 CALL                             R11 4 1
       64 SETTABLEKS                       R11 R10 K23 ["Size"]
       66 GETTABLEKS                       R11 R2 K30 ["PreviewBackgroundColor"]
       68 SETTABLEKS                       R11 R10 K24 ["BackgroundColor3"]
       70 GETTABLEKS                       R11 R2 K31 ["PreviewBorderColor"]
       72 SETTABLEKS                       R11 R10 K25 ["BorderColor3"]
       74 DUPTABLE                         R11 K33 [{"PreviewContent"}]
       75 GETTABLEKS                       R13 R1 K34 ["IsTempId"]
       77 JUMPIFNOTEQKB                    R13 TRUE ; [+25]
       79 GETUPVAL                         R12 1
       80 GETTABLEKS                       R12 R12 K13 ["createElement"]
       82 GETUPVAL                         R13 2
       83 DUPTABLE                         R14 K39 [{["BackgroundTransparency"] = 1, ["Size"], ["Image"], ["ScaleType"]}]
       84 GETIMPORT                        R15 K29 [UDim2.new]
       86 LOADN                            R16 1
       87 LOADN                            R17 0
       88 LOADN                            R18 1
       89 LOADN                            R19 0
       90 CALL                             R15 4 1
       91 SETTABLEKS                       R15 R14 K23 ["Size"]
       93 GETTABLEKS                       R15 R1 K40 ["ImageId"]
       95 SETTABLEKS                       R15 R14 K37 ["Image"]
       97 GETIMPORT                        R15 K42 [Enum.ScaleType.Fit]
       99 SETTABLEKS                       R15 R14 K38 ["ScaleType"]
      101 CALL                             R12 2 1
      102 JUMP                             ; [+19]
      103 GETUPVAL                         R12 1
      104 GETTABLEKS                       R12 R12 K13 ["createElement"]
      106 GETUPVAL                         R13 3
      107 DUPTABLE                         R14 K43 [{"Size", "Image"}]
      108 GETIMPORT                        R15 K29 [UDim2.new]
      110 LOADN                            R16 1
      111 LOADN                            R17 0
      112 LOADN                            R18 1
      113 LOADN                            R19 0
      114 CALL                             R15 4 1
      115 SETTABLEKS                       R15 R14 K23 ["Size"]
      117 GETTABLEKS                       R15 R1 K40 ["ImageId"]
      119 SETTABLEKS                       R15 R14 K37 ["Image"]
      121 CALL                             R12 2 1
      122 SETTABLEKS                       R12 R11 K32 ["PreviewContent"]
      124 CALL                             R8 3 1
      125 SETTABLEKS                       R8 R7 K10 ["PreviewContentContainer"]
      127 GETUPVAL                         R8 1
      128 GETTABLEKS                       R8 R8 K13 ["createElement"]
      130 GETUPVAL                         R9 4
      131 DUPTABLE                         R10 K44 [{"LayoutOrder", "Size"}]
      132 NAMECALL                         R11 R6 K27 ["getNextOrder"]
      134 CALL                             R11 1 1
      135 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
      137 GETIMPORT                        R11 K29 [UDim2.new]
      139 LOADN                            R12 1
      140 LOADN                            R13 0
      141 LOADN                            R14 0
      142 LOADN                            R15 0
      143 CALL                             R11 4 1
      144 SETTABLEKS                       R11 R10 K23 ["Size"]
      146 CALL                             R8 2 1
      147 SETTABLEKS                       R8 R7 K11 ["EmptyRow"]
      149 GETIMPORT                        R8 K46 [ipairs]
      151 MOVE                             R9 R4
      152 CALL                             R8 1 3
      153 FORGPREP_INEXT                   R8
      154 LOADK                            R14 K47 ["Metadata_"]
      155 FASTCALL1                        TOSTRING R11 ; [+3]
      156 MOVE                             R16 R11
      157 GETIMPORT                        R15 K49 [tostring]
      159 CALL                             R15 1 1
      160 CONCAT                           R13 R14 R15
      161 GETUPVAL                         R14 1
      162 GETTABLEKS                       R14 R14 K13 ["createElement"]
      164 GETUPVAL                         R15 5
      165 DUPTABLE                         R16 K55 [{["LayoutOrder"], ["Size"], ["Text"], ["TextSelectable"] = True, ["TextSize"], ["TextXAlignment"]}]
      166 NAMECALL                         R17 R6 K27 ["getNextOrder"]
      168 CALL                             R17 1 1
      169 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      171 GETIMPORT                        R17 K29 [UDim2.new]
      173 LOADN                            R18 1
      174 LOADN                            R19 0
      175 LOADN                            R20 0
      176 GETTABLEKS                       R21 R2 K7 ["TextHeight"]
      178 CALL                             R17 4 1
      179 SETTABLEKS                       R17 R16 K23 ["Size"]
      181 SETTABLEKS                       R12 R16 K50 ["Text"]
      183 GETTABLEKS                       R17 R2 K7 ["TextHeight"]
      185 SETTABLEKS                       R17 R16 K53 ["TextSize"]
      187 GETIMPORT                        R17 K57 [Enum.TextXAlignment.Left]
      189 SETTABLEKS                       R17 R16 K54 ["TextXAlignment"]
      191 CALL                             R14 2 1
      192 SETTABLE                         R14 R7 R13
      193 FORGLOOP                         R8 2 [inext] ; [-40]
      195 GETUPVAL                         R8 1
      196 GETTABLEKS                       R8 R8 K13 ["createElement"]
      198 GETUPVAL                         R9 6
      199 DUPTABLE                         R10 K64 [{["Title"], ["Size"], ["MinSize"], ["Resizable"] = True, ["Enabled"] = True, ["Modal"] = True, ["OnClose"]}]
      200 SETTABLEKS                       R3 R10 K58 ["Title"]
      202 GETTABLEKS                       R11 R2 K65 ["ExpandedPreviewDefaultSize"]
      204 SETTABLEKS                       R11 R10 K23 ["Size"]
      206 GETTABLEKS                       R11 R2 K66 ["ExpandedPreviewMinSize"]
      208 SETTABLEKS                       R11 R10 K59 ["MinSize"]
      210 GETTABLEKS                       R11 R1 K63 ["OnClose"]
      212 SETTABLEKS                       R11 R10 K63 ["OnClose"]
      214 DUPTABLE                         R11 K68 [{"Background"}]
      215 GETUPVAL                         R12 1
      216 GETTABLEKS                       R12 R12 K13 ["createElement"]
      218 LOADK                            R13 K22 ["Frame"]
      219 DUPTABLE                         R14 K69 [{"Size", "BackgroundColor3"}]
      220 GETIMPORT                        R15 K29 [UDim2.new]
      222 LOADN                            R16 1
      223 LOADN                            R17 0
      224 LOADN                            R18 1
      225 LOADN                            R19 0
      226 CALL                             R15 4 1
      227 SETTABLEKS                       R15 R14 K23 ["Size"]
      229 GETTABLEKS                       R15 R2 K30 ["PreviewBackgroundColor"]
      231 SETTABLEKS                       R15 R14 K24 ["BackgroundColor3"]
      233 DUPTABLE                         R15 K72 [{"UIPadding", "Container"}]
      234 GETUPVAL                         R16 1
      235 GETTABLEKS                       R16 R16 K13 ["createElement"]
      237 LOADK                            R17 K70 ["UIPadding"]
      238 DUPTABLE                         R18 K77 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      239 GETTABLEKS                       R19 R2 K78 ["ExpandedPreviewPadding"]
      241 SETTABLEKS                       R19 R18 K73 ["PaddingTop"]
      243 GETTABLEKS                       R19 R2 K78 ["ExpandedPreviewPadding"]
      245 SETTABLEKS                       R19 R18 K74 ["PaddingBottom"]
      247 GETTABLEKS                       R19 R2 K78 ["ExpandedPreviewPadding"]
      249 SETTABLEKS                       R19 R18 K75 ["PaddingLeft"]
      251 GETTABLEKS                       R19 R2 K78 ["ExpandedPreviewPadding"]
      253 SETTABLEKS                       R19 R18 K76 ["PaddingRight"]
      255 CALL                             R16 2 1
      256 SETTABLEKS                       R16 R15 K70 ["UIPadding"]
      258 GETUPVAL                         R16 1
      259 GETTABLEKS                       R16 R16 K13 ["createElement"]
      261 GETUPVAL                         R17 4
      262 NEWTABLE                         R18 0 0
      264 MOVE                             R19 R7
      265 CALL                             R16 3 1
      266 SETTABLEKS                       R16 R15 K71 ["Container"]
      268 CALL                             R12 3 1
      269 SETTABLEKS                       R12 R11 K67 ["Background"]
      271 CALL                             R8 3 -1
      272 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Roact"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R3 K7 ["Framework"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       27 GETTABLEKS                       R4 R3 K9 ["withContext"]
       29 GETTABLEKS                       R5 R2 K10 ["Style"]
       31 GETTABLEKS                       R5 R5 K11 ["Stylizer"]
       33 GETTABLEKS                       R6 R2 K12 ["UI"]
       35 GETTABLEKS                       R7 R6 K13 ["Container"]
       37 GETTABLEKS                       R8 R2 K14 ["Util"]
       39 GETTABLEKS                       R8 R8 K15 ["LayoutOrderIterator"]
       41 GETTABLEKS                       R9 R6 K16 ["Dialog"]
       43 GETTABLEKS                       R10 R6 K17 ["Image"]
       45 GETTABLEKS                       R11 R6 K18 ["TextLabel"]
       47 GETIMPORT                        R12 K4 [require]
       49 GETTABLEKS                       R13 R0 K19 ["Src"]
       51 GETTABLEKS                       R13 R13 K20 ["Components"]
       53 GETTABLEKS                       R13 R13 K21 ["LoadingImage"]
       55 CALL                             R12 1 1
       56 GETTABLEKS                       R13 R1 K22 ["PureComponent"]
       58 LOADK                            R15 K23 ["PreviewDialog"]
       59 NAMECALL                         R13 R13 K24 ["extend"]
       61 CALL                             R13 2 1
       62 DUPCLOSURE                       R14 K25 [PROTO_0]
       63 CAPTURE                          VAL R8
       64 CAPTURE                          VAL R1
       65 CAPTURE                          VAL R12
       66 CAPTURE                          VAL R10
       67 CAPTURE                          VAL R7
       68 CAPTURE                          VAL R11
       69 CAPTURE                          VAL R9
       70 SETTABLEKS                       R14 R13 K26 ["render"]
       72 MOVE                             R14 R4
       73 DUPTABLE                         R15 K27 [{"Stylizer"}]
       74 SETTABLEKS                       R5 R15 K11 ["Stylizer"]
       76 CALL                             R14 1 1
       77 MOVE                             R15 R13
       78 CALL                             R14 1 1
       79 MOVE                             R13 R14
       80 RETURN                           R13 1
