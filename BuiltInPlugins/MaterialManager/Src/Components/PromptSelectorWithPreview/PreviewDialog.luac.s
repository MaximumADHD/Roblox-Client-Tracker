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
       77 JUMPIFNOTEQKB                    R13 TRUE ; [+28]
       79 GETUPVAL                         R12 1
       80 GETTABLEKS                       R12 R12 K13 ["createElement"]
       82 GETUPVAL                         R13 2
       83 DUPTABLE                         R14 K38 [{"BackgroundTransparency", "Size", "Image", "ScaleType"}]
       84 LOADN                            R15 1
       85 SETTABLEKS                       R15 R14 K35 ["BackgroundTransparency"]
       87 GETIMPORT                        R15 K29 [UDim2.new]
       89 LOADN                            R16 1
       90 LOADN                            R17 0
       91 LOADN                            R18 1
       92 LOADN                            R19 0
       93 CALL                             R15 4 1
       94 SETTABLEKS                       R15 R14 K23 ["Size"]
       96 GETTABLEKS                       R15 R1 K39 ["ImageId"]
       98 SETTABLEKS                       R15 R14 K36 ["Image"]
      100 GETIMPORT                        R15 K41 [Enum.ScaleType.Fit]
      102 SETTABLEKS                       R15 R14 K37 ["ScaleType"]
      104 CALL                             R12 2 1
      105 JUMP                             ; [+19]
      106 GETUPVAL                         R12 1
      107 GETTABLEKS                       R12 R12 K13 ["createElement"]
      109 GETUPVAL                         R13 3
      110 DUPTABLE                         R14 K42 [{"Size", "Image"}]
      111 GETIMPORT                        R15 K29 [UDim2.new]
      113 LOADN                            R16 1
      114 LOADN                            R17 0
      115 LOADN                            R18 1
      116 LOADN                            R19 0
      117 CALL                             R15 4 1
      118 SETTABLEKS                       R15 R14 K23 ["Size"]
      120 GETTABLEKS                       R15 R1 K39 ["ImageId"]
      122 SETTABLEKS                       R15 R14 K36 ["Image"]
      124 CALL                             R12 2 1
      125 SETTABLEKS                       R12 R11 K32 ["PreviewContent"]
      127 CALL                             R8 3 1
      128 SETTABLEKS                       R8 R7 K10 ["PreviewContentContainer"]
      130 GETUPVAL                         R8 1
      131 GETTABLEKS                       R8 R8 K13 ["createElement"]
      133 GETUPVAL                         R9 4
      134 DUPTABLE                         R10 K43 [{"LayoutOrder", "Size"}]
      135 NAMECALL                         R11 R6 K27 ["getNextOrder"]
      137 CALL                             R11 1 1
      138 SETTABLEKS                       R11 R10 K18 ["LayoutOrder"]
      140 GETIMPORT                        R11 K29 [UDim2.new]
      142 LOADN                            R12 1
      143 LOADN                            R13 0
      144 LOADN                            R14 0
      145 LOADN                            R15 0
      146 CALL                             R11 4 1
      147 SETTABLEKS                       R11 R10 K23 ["Size"]
      149 CALL                             R8 2 1
      150 SETTABLEKS                       R8 R7 K11 ["EmptyRow"]
      152 GETIMPORT                        R8 K45 [ipairs]
      154 MOVE                             R9 R4
      155 CALL                             R8 1 3
      156 FORGPREP_INEXT                   R8
      157 LOADK                            R14 K46 ["Metadata_"]
      158 FASTCALL1                        TOSTRING R11 ; [+3]
      159 MOVE                             R16 R11
      160 GETIMPORT                        R15 K48 [tostring]
      162 CALL                             R15 1 1
      163 CONCAT                           R13 R14 R15
      164 GETUPVAL                         R14 1
      165 GETTABLEKS                       R14 R14 K13 ["createElement"]
      167 GETUPVAL                         R15 5
      168 DUPTABLE                         R16 K53 [{"LayoutOrder", "Size", "Text", "TextSelectable", "TextSize", "TextXAlignment"}]
      169 NAMECALL                         R17 R6 K27 ["getNextOrder"]
      171 CALL                             R17 1 1
      172 SETTABLEKS                       R17 R16 K18 ["LayoutOrder"]
      174 GETIMPORT                        R17 K29 [UDim2.new]
      176 LOADN                            R18 1
      177 LOADN                            R19 0
      178 LOADN                            R20 0
      179 GETTABLEKS                       R21 R2 K7 ["TextHeight"]
      181 CALL                             R17 4 1
      182 SETTABLEKS                       R17 R16 K23 ["Size"]
      184 SETTABLEKS                       R12 R16 K49 ["Text"]
      186 LOADB                            R17 1
      187 SETTABLEKS                       R17 R16 K50 ["TextSelectable"]
      189 GETTABLEKS                       R17 R2 K7 ["TextHeight"]
      191 SETTABLEKS                       R17 R16 K51 ["TextSize"]
      193 GETIMPORT                        R17 K55 [Enum.TextXAlignment.Left]
      195 SETTABLEKS                       R17 R16 K52 ["TextXAlignment"]
      197 CALL                             R14 2 1
      198 SETTABLE                         R14 R7 R13
      199 FORGLOOP                         R8 2 [inext] ; [-43]
      201 GETUPVAL                         R8 1
      202 GETTABLEKS                       R8 R8 K13 ["createElement"]
      204 GETUPVAL                         R9 6
      205 DUPTABLE                         R10 K62 [{"Title", "Size", "MinSize", "Resizable", "Enabled", "Modal", "OnClose"}]
      206 SETTABLEKS                       R3 R10 K56 ["Title"]
      208 GETTABLEKS                       R11 R2 K63 ["ExpandedPreviewDefaultSize"]
      210 SETTABLEKS                       R11 R10 K23 ["Size"]
      212 GETTABLEKS                       R11 R2 K64 ["ExpandedPreviewMinSize"]
      214 SETTABLEKS                       R11 R10 K57 ["MinSize"]
      216 LOADB                            R11 1
      217 SETTABLEKS                       R11 R10 K58 ["Resizable"]
      219 LOADB                            R11 1
      220 SETTABLEKS                       R11 R10 K59 ["Enabled"]
      222 LOADB                            R11 1
      223 SETTABLEKS                       R11 R10 K60 ["Modal"]
      225 GETTABLEKS                       R11 R1 K61 ["OnClose"]
      227 SETTABLEKS                       R11 R10 K61 ["OnClose"]
      229 DUPTABLE                         R11 K66 [{"Background"}]
      230 GETUPVAL                         R12 1
      231 GETTABLEKS                       R12 R12 K13 ["createElement"]
      233 LOADK                            R13 K22 ["Frame"]
      234 DUPTABLE                         R14 K67 [{"Size", "BackgroundColor3"}]
      235 GETIMPORT                        R15 K29 [UDim2.new]
      237 LOADN                            R16 1
      238 LOADN                            R17 0
      239 LOADN                            R18 1
      240 LOADN                            R19 0
      241 CALL                             R15 4 1
      242 SETTABLEKS                       R15 R14 K23 ["Size"]
      244 GETTABLEKS                       R15 R2 K30 ["PreviewBackgroundColor"]
      246 SETTABLEKS                       R15 R14 K24 ["BackgroundColor3"]
      248 DUPTABLE                         R15 K70 [{"UIPadding", "Container"}]
      249 GETUPVAL                         R16 1
      250 GETTABLEKS                       R16 R16 K13 ["createElement"]
      252 LOADK                            R17 K68 ["UIPadding"]
      253 DUPTABLE                         R18 K75 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
      254 GETTABLEKS                       R19 R2 K76 ["ExpandedPreviewPadding"]
      256 SETTABLEKS                       R19 R18 K71 ["PaddingTop"]
      258 GETTABLEKS                       R19 R2 K76 ["ExpandedPreviewPadding"]
      260 SETTABLEKS                       R19 R18 K72 ["PaddingBottom"]
      262 GETTABLEKS                       R19 R2 K76 ["ExpandedPreviewPadding"]
      264 SETTABLEKS                       R19 R18 K73 ["PaddingLeft"]
      266 GETTABLEKS                       R19 R2 K76 ["ExpandedPreviewPadding"]
      268 SETTABLEKS                       R19 R18 K74 ["PaddingRight"]
      270 CALL                             R16 2 1
      271 SETTABLEKS                       R16 R15 K68 ["UIPadding"]
      273 GETUPVAL                         R16 1
      274 GETTABLEKS                       R16 R16 K13 ["createElement"]
      276 GETUPVAL                         R17 4
      277 NEWTABLE                         R18 0 0
      279 MOVE                             R19 R7
      280 CALL                             R16 3 1
      281 SETTABLEKS                       R16 R15 K69 ["Container"]
      283 CALL                             R12 3 1
      284 SETTABLEKS                       R12 R11 K65 ["Background"]
      286 CALL                             R8 3 -1
      287 RETURN                           R8 -1

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
