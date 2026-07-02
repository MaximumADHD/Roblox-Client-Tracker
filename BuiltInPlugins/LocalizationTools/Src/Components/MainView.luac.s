PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["new"]
        7 CALL                             R3 0 1
        8 DUPTABLE                         R4 K9 [{"Padding", "TextScraperSection", "CloudTableSection", "EmbeddedTableSection", "ImageLocalizationSection", "ExtendedBackground"}]
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K10 ["createElement"]
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
       49 GETUPVAL                         R5 1
       50 GETTABLEKS                       R5 R5 K10 ["createElement"]
       52 GETUPVAL                         R6 2
       53 DUPTABLE                         R7 K20 [{"LayoutOrder"}]
       54 NAMECALL                         R8 R3 K21 ["getNextOrder"]
       56 CALL                             R8 1 1
       57 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       59 CALL                             R5 2 1
       60 SETTABLEKS                       R5 R4 K4 ["TextScraperSection"]
       62 GETUPVAL                         R5 1
       63 GETTABLEKS                       R5 R5 K10 ["createElement"]
       65 GETUPVAL                         R6 3
       66 DUPTABLE                         R7 K20 [{"LayoutOrder"}]
       67 NAMECALL                         R8 R3 K21 ["getNextOrder"]
       69 CALL                             R8 1 1
       70 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       72 CALL                             R5 2 1
       73 SETTABLEKS                       R5 R4 K5 ["CloudTableSection"]
       75 GETUPVAL                         R5 1
       76 GETTABLEKS                       R5 R5 K10 ["createElement"]
       78 GETUPVAL                         R6 4
       79 DUPTABLE                         R7 K20 [{"LayoutOrder"}]
       80 NAMECALL                         R8 R3 K21 ["getNextOrder"]
       82 CALL                             R8 1 1
       83 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       85 CALL                             R5 2 1
       86 SETTABLEKS                       R5 R4 K6 ["EmbeddedTableSection"]
       88 GETUPVAL                         R5 1
       89 GETTABLEKS                       R5 R5 K10 ["createElement"]
       91 GETUPVAL                         R6 5
       92 DUPTABLE                         R7 K20 [{"LayoutOrder"}]
       93 NAMECALL                         R8 R3 K21 ["getNextOrder"]
       95 CALL                             R8 1 1
       96 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       98 CALL                             R5 2 1
       99 SETTABLEKS                       R5 R4 K7 ["ImageLocalizationSection"]
      101 GETUPVAL                         R5 1
      102 GETTABLEKS                       R5 R5 K10 ["createElement"]
      104 LOADK                            R6 K22 ["Frame"]
      105 DUPTABLE                         R7 K27 [{["BackgroundColor3"], ["BorderSizePixel"] = 0, ["LayoutOrder"], ["Size"]}]
      106 GETTABLEKS                       R8 R2 K28 ["MainBackground"]
      108 SETTABLEKS                       R8 R7 K23 ["BackgroundColor3"]
      110 NAMECALL                         R8 R3 K21 ["getNextOrder"]
      112 CALL                             R8 1 1
      113 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
      115 GETIMPORT                        R8 K30 [UDim2.new]
      117 LOADN                            R9 1
      118 LOADN                            R10 0
      119 LOADN                            R11 0
      120 GETTABLEKS                       R12 R2 K31 ["EmptyFrameHeight"]
      122 CALL                             R8 4 1
      123 SETTABLEKS                       R8 R7 K26 ["Size"]
      125 CALL                             R5 2 1
      126 SETTABLEKS                       R5 R4 K8 ["ExtendedBackground"]
      128 GETUPVAL                         R5 1
      129 GETTABLEKS                       R5 R5 K10 ["createElement"]
      131 LOADK                            R6 K22 ["Frame"]
      132 DUPTABLE                         R7 K35 [{["Size"], ["BackgroundTransparency"] = 1, ["Position"]}]
      133 GETIMPORT                        R8 K30 [UDim2.new]
      135 LOADN                            R9 1
      136 LOADN                            R10 0
      137 LOADN                            R11 1
      138 LOADN                            R12 0
      139 CALL                             R8 4 1
      140 SETTABLEKS                       R8 R7 K26 ["Size"]
      142 GETIMPORT                        R8 K30 [UDim2.new]
      144 LOADN                            R9 0
      145 LOADN                            R10 0
      146 LOADN                            R11 0
      147 LOADN                            R12 0
      148 CALL                             R8 4 1
      149 SETTABLEKS                       R8 R7 K34 ["Position"]
      151 DUPTABLE                         R8 K39 [{"MessageFrame", "ScrollingFrame", "ProgressSpinner"}]
      152 GETUPVAL                         R9 1
      153 GETTABLEKS                       R9 R9 K10 ["createElement"]
      155 GETUPVAL                         R10 6
      156 CALL                             R9 1 1
      157 SETTABLEKS                       R9 R8 K36 ["MessageFrame"]
      159 GETUPVAL                         R9 1
      160 GETTABLEKS                       R9 R9 K10 ["createElement"]
      162 LOADK                            R10 K37 ["ScrollingFrame"]
      163 DUPTABLE                         R11 K47 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["BorderColor3"], ["BorderSizePixel"] = 1, ["CanvasSize"], ["ClipsDescendants"] = True, ["ScrollBarImageTransparency"] = 0, ["ScrollBarImageColor3"], ["ScrollingDirection"], ["Size"]}]
      164 GETTABLEKS                       R12 R2 K48 ["ScrollingFrameackground"]
      166 SETTABLEKS                       R12 R11 K23 ["BackgroundColor3"]
      168 GETTABLEKS                       R12 R2 K49 ["ScrollBarBorderColor"]
      170 SETTABLEKS                       R12 R11 K40 ["BorderColor3"]
      172 GETIMPORT                        R12 K30 [UDim2.new]
      174 LOADN                            R13 1
      175 LOADN                            R14 0
      176 LOADN                            R15 0
      177 GETTABLEKS                       R16 R2 K50 ["ScrollingFrameCanvasHeight"]
      179 CALL                             R12 4 1
      180 SETTABLEKS                       R12 R11 K41 ["CanvasSize"]
      182 GETTABLEKS                       R12 R2 K51 ["ScrollBarColor"]
      184 SETTABLEKS                       R12 R11 K45 ["ScrollBarImageColor3"]
      186 GETIMPORT                        R12 K54 [Enum.ScrollingDirection.XY]
      188 SETTABLEKS                       R12 R11 K46 ["ScrollingDirection"]
      190 GETIMPORT                        R12 K30 [UDim2.new]
      192 LOADN                            R13 1
      193 LOADN                            R14 0
      194 LOADN                            R15 1
      195 GETTABLEKS                       R17 R2 K55 ["ScrollingFrameHeight"]
      197 SUBK                             R16 R17 K33 [1]
      198 CALL                             R12 4 1
      199 SETTABLEKS                       R12 R11 K26 ["Size"]
      201 DUPTABLE                         R12 K57 [{"Container"}]
      202 GETUPVAL                         R13 1
      203 GETTABLEKS                       R13 R13 K10 ["createElement"]
      205 GETUPVAL                         R14 7
      206 DUPTABLE                         R15 K63 [{["Style"] = "Box", ["AutomaticSize"], ["HorizontalAlignment"], ["Layout"]}]
      207 GETIMPORT                        R16 K65 [Enum.AutomaticSize.Y]
      209 SETTABLEKS                       R16 R15 K60 ["AutomaticSize"]
      211 GETIMPORT                        R16 K67 [Enum.HorizontalAlignment.Left]
      213 SETTABLEKS                       R16 R15 K61 ["HorizontalAlignment"]
      215 GETIMPORT                        R16 K70 [Enum.FillDirection.Vertical]
      217 SETTABLEKS                       R16 R15 K62 ["Layout"]
      219 MOVE                             R16 R4
      220 CALL                             R13 3 1
      221 SETTABLEKS                       R13 R12 K56 ["Container"]
      223 CALL                             R9 3 1
      224 SETTABLEKS                       R9 R8 K37 ["ScrollingFrame"]
      226 GETUPVAL                         R9 1
      227 GETTABLEKS                       R9 R9 K10 ["createElement"]
      229 GETUPVAL                         R10 8
      230 CALL                             R9 1 1
      231 SETTABLEKS                       R9 R8 K38 ["ProgressSpinner"]
      233 CALL                             R5 3 -1
      234 RETURN                           R5 -1

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
       25 GETTABLEKS                       R4 R2 K9 ["Util"]
       27 GETTABLEKS                       R4 R4 K10 ["LayoutOrderIterator"]
       29 GETTABLEKS                       R5 R3 K11 ["withContext"]
       31 GETTABLEKS                       R6 R2 K12 ["UI"]
       33 GETTABLEKS                       R7 R6 K13 ["Pane"]
       35 GETIMPORT                        R8 K4 [require]
       37 GETTABLEKS                       R9 R0 K14 ["Src"]
       39 GETTABLEKS                       R9 R9 K15 ["Components"]
       41 GETTABLEKS                       R9 R9 K16 ["ProgressSpinner"]
       43 CALL                             R8 1 1
       44 GETIMPORT                        R9 K4 [require]
       46 GETTABLEKS                       R10 R0 K14 ["Src"]
       48 GETTABLEKS                       R10 R10 K15 ["Components"]
       50 GETTABLEKS                       R10 R10 K17 ["MessageFrame"]
       52 CALL                             R9 1 1
       53 GETIMPORT                        R10 K4 [require]
       55 GETTABLEKS                       R11 R0 K14 ["Src"]
       57 GETTABLEKS                       R11 R11 K15 ["Components"]
       59 GETTABLEKS                       R11 R11 K18 ["CloudTableSection"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K4 [require]
       64 GETTABLEKS                       R12 R0 K14 ["Src"]
       66 GETTABLEKS                       R12 R12 K15 ["Components"]
       68 GETTABLEKS                       R12 R12 K19 ["EmbeddedTableSection"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K4 [require]
       73 GETTABLEKS                       R13 R0 K14 ["Src"]
       75 GETTABLEKS                       R13 R13 K15 ["Components"]
       77 GETTABLEKS                       R13 R13 K20 ["ImageLocalizationSection"]
       79 CALL                             R12 1 1
       80 GETIMPORT                        R13 K4 [require]
       82 GETTABLEKS                       R14 R0 K14 ["Src"]
       84 GETTABLEKS                       R14 R14 K15 ["Components"]
       86 GETTABLEKS                       R14 R14 K21 ["TextScraperSection"]
       88 CALL                             R13 1 1
       89 GETTABLEKS                       R14 R1 K22 ["PureComponent"]
       91 LOADK                            R16 K23 ["MainView"]
       92 NAMECALL                         R14 R14 K24 ["extend"]
       94 CALL                             R14 2 1
       95 DUPCLOSURE                       R15 K25 [PROTO_0]
       96 CAPTURE                          VAL R4
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R13
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R12
      102 CAPTURE                          VAL R9
      103 CAPTURE                          VAL R7
      104 CAPTURE                          VAL R8
      105 SETTABLEKS                       R15 R14 K26 ["render"]
      107 MOVE                             R15 R5
      108 DUPTABLE                         R16 K28 [{"Stylizer"}]
      109 GETTABLEKS                       R17 R3 K27 ["Stylizer"]
      111 SETTABLEKS                       R17 R16 K27 ["Stylizer"]
      113 CALL                             R15 1 1
      114 MOVE                             R16 R14
      115 CALL                             R15 1 1
      116 MOVE                             R14 R15
      117 RETURN                           R14 1
