PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K2 ["new"]
        7 CALL                             R3 0 1
        8 DUPTABLE                         R4 K9 [{"Padding", "TextScraperSection", "CloudTableSection", "EmbeddedTableSection", "ImageLocalizationSection", "ExtendedBackground"}]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K10 ["createElement"]
       12 LOADK                            R6 K11 ["UIPadding"]
       13 DUPTABLE                         R7 K16 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       14 GETIMPORT                        R8 K18 [UDim.new]
       16 LOADN                            R9 0
       17 GETTABLEKS                       R10 R2 K12 ["PaddingTop"]
       19 CALL                             R8 2 1
       20 SETTABLEKS                       R8 R7 K12 ["PaddingTop"]
       22 GETIMPORT                        R8 K18 [UDim.new]
       24 LOADN                            R9 0
       25 GETTABLEKS                       R10 R2 K3 ["Padding"]
       27 CALL                             R8 2 1
       28 SETTABLEKS                       R8 R7 K13 ["PaddingBottom"]
       30 GETIMPORT                        R8 K18 [UDim.new]
       32 LOADN                            R9 0
       33 GETTABLEKS                       R10 R2 K3 ["Padding"]
       35 CALL                             R8 2 1
       36 SETTABLEKS                       R8 R7 K14 ["PaddingLeft"]
       38 GETIMPORT                        R8 K18 [UDim.new]
       40 LOADN                            R9 0
       41 GETTABLEKS                       R10 R2 K15 ["PaddingRight"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K15 ["PaddingRight"]
       46 CALL                             R5 2 1
       47 SETTABLEKS                       R5 R4 K3 ["Padding"]
       49 GETUPVAL                         R6 2
       50 JUMPIFNOT                        R6 ; [+12]
       51 GETUPVAL                         R6 1
       52 GETTABLEKS                       R5 R6 K10 ["createElement"]
       54 GETUPVAL                         R6 3
       55 DUPTABLE                         R7 K20 [{"LayoutOrder"}]
       56 NAMECALL                         R8 R3 K21 ["getNextOrder"]
       58 CALL                             R8 1 1
       59 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       61 CALL                             R5 2 1
       62 JUMP                             ; [+1]
       63 LOADNIL                          R5
       64 SETTABLEKS                       R5 R4 K4 ["TextScraperSection"]
       66 GETUPVAL                         R6 1
       67 GETTABLEKS                       R5 R6 K10 ["createElement"]
       69 GETUPVAL                         R6 4
       70 DUPTABLE                         R7 K20 [{"LayoutOrder"}]
       71 NAMECALL                         R8 R3 K21 ["getNextOrder"]
       73 CALL                             R8 1 1
       74 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       76 CALL                             R5 2 1
       77 SETTABLEKS                       R5 R4 K5 ["CloudTableSection"]
       79 GETUPVAL                         R6 1
       80 GETTABLEKS                       R5 R6 K10 ["createElement"]
       82 GETUPVAL                         R6 5
       83 DUPTABLE                         R7 K20 [{"LayoutOrder"}]
       84 NAMECALL                         R8 R3 K21 ["getNextOrder"]
       86 CALL                             R8 1 1
       87 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       89 CALL                             R5 2 1
       90 SETTABLEKS                       R5 R4 K6 ["EmbeddedTableSection"]
       92 GETUPVAL                         R6 1
       93 GETTABLEKS                       R5 R6 K10 ["createElement"]
       95 GETUPVAL                         R6 6
       96 DUPTABLE                         R7 K20 [{"LayoutOrder"}]
       97 NAMECALL                         R8 R3 K21 ["getNextOrder"]
       99 CALL                             R8 1 1
      100 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
      102 CALL                             R5 2 1
      103 SETTABLEKS                       R5 R4 K7 ["ImageLocalizationSection"]
      105 GETUPVAL                         R6 1
      106 GETTABLEKS                       R5 R6 K10 ["createElement"]
      108 LOADK                            R6 K22 ["Frame"]
      109 DUPTABLE                         R7 K26 [{"BackgroundColor3", "BorderSizePixel", "LayoutOrder", "Size"}]
      110 GETTABLEKS                       R8 R2 K27 ["MainBackground"]
      112 SETTABLEKS                       R8 R7 K23 ["BackgroundColor3"]
      114 LOADN                            R8 0
      115 SETTABLEKS                       R8 R7 K24 ["BorderSizePixel"]
      117 NAMECALL                         R8 R3 K21 ["getNextOrder"]
      119 CALL                             R8 1 1
      120 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
      122 GETIMPORT                        R8 K29 [UDim2.new]
      124 LOADN                            R9 1
      125 LOADN                            R10 0
      126 LOADN                            R11 0
      127 GETTABLEKS                       R12 R2 K30 ["EmptyFrameHeight"]
      129 CALL                             R8 4 1
      130 SETTABLEKS                       R8 R7 K25 ["Size"]
      132 CALL                             R5 2 1
      133 SETTABLEKS                       R5 R4 K8 ["ExtendedBackground"]
      135 GETUPVAL                         R6 1
      136 GETTABLEKS                       R5 R6 K10 ["createElement"]
      138 LOADK                            R6 K22 ["Frame"]
      139 DUPTABLE                         R7 K33 [{"Size", "BackgroundTransparency", "Position"}]
      140 GETIMPORT                        R8 K29 [UDim2.new]
      142 LOADN                            R9 1
      143 LOADN                            R10 0
      144 LOADN                            R11 1
      145 LOADN                            R12 0
      146 CALL                             R8 4 1
      147 SETTABLEKS                       R8 R7 K25 ["Size"]
      149 LOADN                            R8 1
      150 SETTABLEKS                       R8 R7 K31 ["BackgroundTransparency"]
      152 GETIMPORT                        R8 K29 [UDim2.new]
      154 LOADN                            R9 0
      155 LOADN                            R10 0
      156 LOADN                            R11 0
      157 LOADN                            R12 0
      158 CALL                             R8 4 1
      159 SETTABLEKS                       R8 R7 K32 ["Position"]
      161 DUPTABLE                         R8 K37 [{"MessageFrame", "ScrollingFrame", "ProgressSpinner"}]
      162 GETUPVAL                         R10 1
      163 GETTABLEKS                       R9 R10 K10 ["createElement"]
      165 GETUPVAL                         R10 7
      166 CALL                             R9 1 1
      167 SETTABLEKS                       R9 R8 K34 ["MessageFrame"]
      169 GETUPVAL                         R10 1
      170 GETTABLEKS                       R9 R10 K10 ["createElement"]
      172 LOADK                            R10 K35 ["ScrollingFrame"]
      173 DUPTABLE                         R11 K44 [{"BackgroundColor3", "BackgroundTransparency", "BorderColor3", "BorderSizePixel", "CanvasSize", "ClipsDescendants", "ScrollBarImageTransparency", "ScrollBarImageColor3", "ScrollingDirection", "Size"}]
      174 GETTABLEKS                       R12 R2 K45 ["ScrollingFrameackground"]
      176 SETTABLEKS                       R12 R11 K23 ["BackgroundColor3"]
      178 LOADN                            R12 0
      179 SETTABLEKS                       R12 R11 K31 ["BackgroundTransparency"]
      181 GETTABLEKS                       R12 R2 K46 ["ScrollBarBorderColor"]
      183 SETTABLEKS                       R12 R11 K38 ["BorderColor3"]
      185 LOADN                            R12 1
      186 SETTABLEKS                       R12 R11 K24 ["BorderSizePixel"]
      188 GETIMPORT                        R12 K29 [UDim2.new]
      190 LOADN                            R13 1
      191 LOADN                            R14 0
      192 LOADN                            R15 0
      193 GETTABLEKS                       R16 R2 K47 ["ScrollingFrameCanvasHeight"]
      195 CALL                             R12 4 1
      196 SETTABLEKS                       R12 R11 K39 ["CanvasSize"]
      198 LOADB                            R12 1
      199 SETTABLEKS                       R12 R11 K40 ["ClipsDescendants"]
      201 LOADN                            R12 0
      202 SETTABLEKS                       R12 R11 K41 ["ScrollBarImageTransparency"]
      204 GETTABLEKS                       R12 R2 K48 ["ScrollBarColor"]
      206 SETTABLEKS                       R12 R11 K42 ["ScrollBarImageColor3"]
      208 GETIMPORT                        R12 K51 [Enum.ScrollingDirection.XY]
      210 SETTABLEKS                       R12 R11 K43 ["ScrollingDirection"]
      212 GETIMPORT                        R12 K29 [UDim2.new]
      214 LOADN                            R13 1
      215 LOADN                            R14 0
      216 LOADN                            R15 1
      217 GETTABLEKS                       R17 R2 K53 ["ScrollingFrameHeight"]
      219 SUBK                             R16 R17 K52 [1]
      220 CALL                             R12 4 1
      221 SETTABLEKS                       R12 R11 K25 ["Size"]
      223 DUPTABLE                         R12 K55 [{"Container"}]
      224 GETUPVAL                         R14 1
      225 GETTABLEKS                       R13 R14 K10 ["createElement"]
      227 GETUPVAL                         R14 8
      228 DUPTABLE                         R15 K60 [{"Style", "AutomaticSize", "HorizontalAlignment", "Layout"}]
      229 LOADK                            R16 K61 ["Box"]
      230 SETTABLEKS                       R16 R15 K56 ["Style"]
      232 GETIMPORT                        R16 K63 [Enum.AutomaticSize.Y]
      234 SETTABLEKS                       R16 R15 K57 ["AutomaticSize"]
      236 GETIMPORT                        R16 K65 [Enum.HorizontalAlignment.Left]
      238 SETTABLEKS                       R16 R15 K58 ["HorizontalAlignment"]
      240 GETIMPORT                        R16 K68 [Enum.FillDirection.Vertical]
      242 SETTABLEKS                       R16 R15 K59 ["Layout"]
      244 MOVE                             R16 R4
      245 CALL                             R13 3 1
      246 SETTABLEKS                       R13 R12 K54 ["Container"]
      248 CALL                             R9 3 1
      249 SETTABLEKS                       R9 R8 K35 ["ScrollingFrame"]
      251 GETUPVAL                         R10 1
      252 GETTABLEKS                       R9 R10 K10 ["createElement"]
      254 GETUPVAL                         R10 9
      255 CALL                             R9 1 1
      256 SETTABLEKS                       R9 R8 K36 ["ProgressSpinner"]
      258 CALL                             R5 3 -1
      259 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R4 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       25 GETTABLEKS                       R5 R2 K9 ["Util"]
       27 GETTABLEKS                       R4 R5 K10 ["LayoutOrderIterator"]
       29 GETTABLEKS                       R5 R3 K11 ["withContext"]
       31 GETTABLEKS                       R6 R2 K12 ["UI"]
       33 GETTABLEKS                       R7 R6 K13 ["Pane"]
       35 GETIMPORT                        R8 K4 [require]
       37 GETTABLEKS                       R11 R0 K14 ["Src"]
       39 GETTABLEKS                       R10 R11 K15 ["Components"]
       41 GETTABLEKS                       R9 R10 K16 ["ProgressSpinner"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K4 [require]
       46 GETTABLEKS                       R12 R0 K14 ["Src"]
       48 GETTABLEKS                       R11 R12 K15 ["Components"]
       50 GETTABLEKS                       R10 R11 K17 ["MessageFrame"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K4 [require]
       55 GETTABLEKS                       R13 R0 K14 ["Src"]
       57 GETTABLEKS                       R12 R13 K15 ["Components"]
       59 GETTABLEKS                       R11 R12 K18 ["CloudTableSection"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K4 [require]
       64 GETTABLEKS                       R14 R0 K14 ["Src"]
       66 GETTABLEKS                       R13 R14 K15 ["Components"]
       68 GETTABLEKS                       R12 R13 K19 ["EmbeddedTableSection"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K4 [require]
       73 GETTABLEKS                       R15 R0 K14 ["Src"]
       75 GETTABLEKS                       R14 R15 K15 ["Components"]
       77 GETTABLEKS                       R13 R14 K20 ["ImageLocalizationSection"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K4 [require]
       82 GETTABLEKS                       R16 R0 K14 ["Src"]
       84 GETTABLEKS                       R15 R16 K15 ["Components"]
       86 GETTABLEKS                       R14 R15 K21 ["TextScraperSection"]
       88 CALL                             R13 1 1
       89 GETIMPORT                        R14 K23 [game]
       91 LOADK                            R16 K24 ["LocalizationToolsUpdateTextScraperUI"]
       92 NAMECALL                         R14 R14 K25 ["GetFastFlag"]
       94 CALL                             R14 2 1
       95 GETTABLEKS                       R15 R1 K26 ["PureComponent"]
       97 LOADK                            R17 K27 ["MainView"]
       98 NAMECALL                         R15 R15 K28 ["extend"]
      100 CALL                             R15 2 1
      101 DUPCLOSURE                       R16 K29 [PROTO_0]
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R14
      105 CAPTURE                          VAL R13
      106 CAPTURE                          VAL R10
      107 CAPTURE                          VAL R11
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R9
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R8
      112 SETTABLEKS                       R16 R15 K30 ["render"]
      114 MOVE                             R16 R5
      115 DUPTABLE                         R17 K32 [{"Stylizer"}]
      116 GETTABLEKS                       R18 R3 K31 ["Stylizer"]
      118 SETTABLEKS                       R18 R17 K31 ["Stylizer"]
      120 CALL                             R16 1 1
      121 MOVE                             R17 R15
      122 CALL                             R16 1 1
      123 MOVE                             R15 R16
      124 RETURN                           R15 1
