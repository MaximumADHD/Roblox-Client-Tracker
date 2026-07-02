PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["createElement"]
        7 GETUPVAL                         R4 2
        8 DUPTABLE                         R5 K4 [{["tag"] = "row gap-large auto-xy"}]
        9 DUPTABLE                         R6 K7 [{"Vertical", "Horizontal"}]
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K1 ["createElement"]
       13 GETUPVAL                         R8 3
       14 DUPTABLE                         R9 K12 [{"Size", "layout", "selection", "scroll"}]
       15 GETIMPORT                        R10 K15 [UDim2.fromOffset]
       17 LOADN                            R11 120
       18 LOADN                            R12 120
       19 CALL                             R10 2 1
       20 SETTABLEKS                       R10 R9 K8 ["Size"]
       22 DUPTABLE                         R10 K17 [{"FillDirection"}]
       23 GETIMPORT                        R11 K19 [Enum.FillDirection.Vertical]
       25 SETTABLEKS                       R11 R10 K16 ["FillDirection"]
       27 SETTABLEKS                       R10 R9 K9 ["layout"]
       29 DUPTABLE                         R10 K21 [{"Selectable"}]
       30 GETTABLEKS                       R11 R1 K22 ["selectable"]
       32 SETTABLEKS                       R11 R10 K20 ["Selectable"]
       34 SETTABLEKS                       R10 R9 K10 ["selection"]
       36 DUPTABLE                         R10 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
       37 GETIMPORT                        R11 K30 [Enum.AutomaticSize.Y]
       39 SETTABLEKS                       R11 R10 K23 ["AutomaticCanvasSize"]
       41 GETIMPORT                        R11 K15 [UDim2.fromOffset]
       43 LOADN                            R12 0
       44 LOADN                            R13 0
       45 CALL                             R11 2 1
       46 SETTABLEKS                       R11 R10 K24 ["CanvasSize"]
       48 GETIMPORT                        R11 K31 [Enum.ScrollingDirection.Y]
       50 SETTABLEKS                       R11 R10 K25 ["ScrollingDirection"]
       52 GETTABLEKS                       R11 R1 K26 ["scrollBarVisibility"]
       54 SETTABLEKS                       R11 R10 K26 ["scrollBarVisibility"]
       56 SETTABLEKS                       R10 R9 K11 ["scroll"]
       58 NEWTABLE                         R10 0 2
       60 GETUPVAL                         R11 1
       61 GETTABLEKS                       R11 R11 K1 ["createElement"]
       63 GETUPVAL                         R12 2
       64 DUPTABLE                         R13 K33 [{"Size", "backgroundStyle"}]
       65 GETIMPORT                        R14 K15 [UDim2.fromOffset]
       67 LOADN                            R15 120
       68 LOADN                            R16 75
       69 CALL                             R14 2 1
       70 SETTABLEKS                       R14 R13 K8 ["Size"]
       72 GETTABLEKS                       R14 R2 K34 ["Color"]
       74 GETTABLEKS                       R14 R14 K35 ["Extended"]
       76 GETTABLEKS                       R14 R14 K36 ["Turquoise"]
       78 GETTABLEKS                       R14 R14 K37 ["Turquoise_500"]
       80 SETTABLEKS                       R14 R13 K32 ["backgroundStyle"]
       82 CALL                             R11 2 1
       83 GETUPVAL                         R12 1
       84 GETTABLEKS                       R12 R12 K1 ["createElement"]
       86 GETUPVAL                         R13 2
       87 DUPTABLE                         R14 K33 [{"Size", "backgroundStyle"}]
       88 GETIMPORT                        R15 K15 [UDim2.fromOffset]
       90 LOADN                            R16 120
       91 LOADN                            R17 75
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K8 ["Size"]
       95 GETTABLEKS                       R15 R2 K34 ["Color"]
       97 GETTABLEKS                       R15 R15 K35 ["Extended"]
       99 GETTABLEKS                       R15 R15 K38 ["Magenta"]
      101 GETTABLEKS                       R15 R15 K39 ["Magenta_500"]
      103 SETTABLEKS                       R15 R14 K32 ["backgroundStyle"]
      105 CALL                             R12 2 -1
      106 SETLIST                          R10 R11 -1 [1]
      108 CALL                             R7 3 1
      109 SETTABLEKS                       R7 R6 K5 ["Vertical"]
      111 GETUPVAL                         R7 1
      112 GETTABLEKS                       R7 R7 K1 ["createElement"]
      114 GETUPVAL                         R8 3
      115 DUPTABLE                         R9 K12 [{"Size", "layout", "selection", "scroll"}]
      116 GETIMPORT                        R10 K15 [UDim2.fromOffset]
      118 LOADN                            R11 120
      119 LOADN                            R12 120
      120 CALL                             R10 2 1
      121 SETTABLEKS                       R10 R9 K8 ["Size"]
      123 DUPTABLE                         R10 K17 [{"FillDirection"}]
      124 GETIMPORT                        R11 K40 [Enum.FillDirection.Horizontal]
      126 SETTABLEKS                       R11 R10 K16 ["FillDirection"]
      128 SETTABLEKS                       R10 R9 K9 ["layout"]
      130 DUPTABLE                         R10 K21 [{"Selectable"}]
      131 GETTABLEKS                       R11 R1 K22 ["selectable"]
      133 SETTABLEKS                       R11 R10 K20 ["Selectable"]
      135 SETTABLEKS                       R10 R9 K10 ["selection"]
      137 DUPTABLE                         R10 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      138 GETIMPORT                        R11 K42 [Enum.AutomaticSize.X]
      140 SETTABLEKS                       R11 R10 K23 ["AutomaticCanvasSize"]
      142 GETIMPORT                        R11 K15 [UDim2.fromOffset]
      144 LOADN                            R12 0
      145 LOADN                            R13 0
      146 CALL                             R11 2 1
      147 SETTABLEKS                       R11 R10 K24 ["CanvasSize"]
      149 GETIMPORT                        R11 K43 [Enum.ScrollingDirection.X]
      151 SETTABLEKS                       R11 R10 K25 ["ScrollingDirection"]
      153 GETTABLEKS                       R11 R1 K26 ["scrollBarVisibility"]
      155 SETTABLEKS                       R11 R10 K26 ["scrollBarVisibility"]
      157 SETTABLEKS                       R10 R9 K11 ["scroll"]
      159 NEWTABLE                         R10 0 2
      161 GETUPVAL                         R11 1
      162 GETTABLEKS                       R11 R11 K1 ["createElement"]
      164 GETUPVAL                         R12 2
      165 DUPTABLE                         R13 K33 [{"Size", "backgroundStyle"}]
      166 GETIMPORT                        R14 K15 [UDim2.fromOffset]
      168 LOADN                            R15 120
      169 LOADN                            R16 75
      170 CALL                             R14 2 1
      171 SETTABLEKS                       R14 R13 K8 ["Size"]
      173 GETTABLEKS                       R14 R2 K34 ["Color"]
      175 GETTABLEKS                       R14 R14 K35 ["Extended"]
      177 GETTABLEKS                       R14 R14 K36 ["Turquoise"]
      179 GETTABLEKS                       R14 R14 K37 ["Turquoise_500"]
      181 SETTABLEKS                       R14 R13 K32 ["backgroundStyle"]
      183 CALL                             R11 2 1
      184 GETUPVAL                         R12 1
      185 GETTABLEKS                       R12 R12 K1 ["createElement"]
      187 GETUPVAL                         R13 2
      188 DUPTABLE                         R14 K33 [{"Size", "backgroundStyle"}]
      189 GETIMPORT                        R15 K15 [UDim2.fromOffset]
      191 LOADN                            R16 120
      192 LOADN                            R17 75
      193 CALL                             R15 2 1
      194 SETTABLEKS                       R15 R14 K8 ["Size"]
      196 GETTABLEKS                       R15 R2 K34 ["Color"]
      198 GETTABLEKS                       R15 R15 K35 ["Extended"]
      200 GETTABLEKS                       R15 R15 K38 ["Magenta"]
      202 GETTABLEKS                       R15 R15 K39 ["Magenta_500"]
      204 SETTABLEKS                       R15 R14 K32 ["backgroundStyle"]
      206 CALL                             R12 2 -1
      207 SETLIST                          R10 R11 -1 [1]
      209 CALL                             R7 3 1
      210 SETTABLEKS                       R7 R6 K6 ["Horizontal"]
      212 CALL                             R3 3 -1
      213 RETURN                           R3 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 NEWTABLE                         R2 0 0
        4 LOADN                            R5 1
        5 LOADN                            R3 10
        6 LOADN                            R4 1
        7 FORNPREP                         R3
        8 LOADK                            R7 K1 ["Item%*"]
        9 MOVE                             R9 R5
       10 NAMECALL                         R7 R7 K2 ["format"]
       12 CALL                             R7 2 1
       13 MOVE                             R6 R7
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K3 ["createElement"]
       17 GETUPVAL                         R8 1
       18 DUPTABLE                         R9 K8 [{["tag"] = "size-3000-2000 radius-medium bg-shift-100 content-muted", ["Text"], ["LayoutOrder"]}]
       19 LOADK                            R11 K9 ["Item %*"]
       20 MOVE                             R13 R5
       21 NAMECALL                         R11 R11 K2 ["format"]
       23 CALL                             R11 2 1
       24 MOVE                             R10 R11
       25 SETTABLEKS                       R10 R9 K6 ["Text"]
       27 SETTABLEKS                       R5 R9 K7 ["LayoutOrder"]
       29 CALL                             R7 2 1
       30 SETTABLE                         R7 R2 R6
       31 FORNLOOP                         R3
       32 GETUPVAL                         R3 0
       33 GETTABLEKS                       R3 R3 K3 ["createElement"]
       35 GETUPVAL                         R4 2
       36 DUPTABLE                         R5 K11 [{["tag"] = "col gap-large size-full-0 auto-y"}]
       37 DUPTABLE                         R6 K14 [{"ScrollView", "TagInfo"}]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K3 ["createElement"]
       41 GETUPVAL                         R8 3
       42 DUPTABLE                         R9 K19 [{["tag"] = "row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000", ["selection"], ["scroll"], ["LayoutOrder"] = 1}]
       43 DUPTABLE                         R10 K21 [{"Selectable"}]
       44 GETTABLEKS                       R11 R1 K22 ["selectable"]
       46 SETTABLEKS                       R11 R10 K20 ["Selectable"]
       48 SETTABLEKS                       R10 R9 K16 ["selection"]
       50 DUPTABLE                         R10 K26 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       51 GETIMPORT                        R11 K30 [Enum.AutomaticSize.X]
       53 SETTABLEKS                       R11 R10 K23 ["AutomaticCanvasSize"]
       55 GETIMPORT                        R11 K33 [UDim2.fromScale]
       57 LOADN                            R12 0
       58 LOADN                            R13 1
       59 CALL                             R11 2 1
       60 SETTABLEKS                       R11 R10 K24 ["CanvasSize"]
       62 GETIMPORT                        R11 K34 [Enum.ScrollingDirection.X]
       64 SETTABLEKS                       R11 R10 K25 ["ScrollingDirection"]
       66 SETTABLEKS                       R10 R9 K17 ["scroll"]
       68 MOVE                             R10 R2
       69 CALL                             R7 3 1
       70 SETTABLEKS                       R7 R6 K12 ["ScrollView"]
       72 GETUPVAL                         R7 0
       73 GETTABLEKS                       R7 R7 K3 ["createElement"]
       75 GETUPVAL                         R8 1
       76 DUPTABLE                         R9 K38 [{["tag"] = "size-full-200 text-label-small content-default", ["Text"] = "tag = row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000", ["LayoutOrder"] = 2}]
       77 CALL                             R7 2 1
       78 SETTABLEKS                       R7 R6 K13 ["TagInfo"]
       80 CALL                             R3 3 -1
       81 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["ControlState"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R5 K11 ["ScrollView"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R6 K12 ["Text"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Components"]
       39 GETTABLEKS                       R7 R7 K13 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Providers"]
       46 GETTABLEKS                       R8 R8 K15 ["Style"]
       48 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K17 [PROTO_0]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R6
       55 CAPTURE                          VAL R4
       56 DUPCLOSURE                       R9 K18 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 DUPTABLE                         R10 K22 [{["summary"] = "ScrollView", ["stories"], ["controls"]}]
       62 DUPTABLE                         R11 K25 [{"Scrolling", "Tags"}]
       63 DUPTABLE                         R12 K29 [{["name"] = "Horizontal and Vertical scrolling", ["story"]}]
       64 SETTABLEKS                       R8 R12 K28 ["story"]
       66 SETTABLEKS                       R12 R11 K23 ["Scrolling"]
       68 DUPTABLE                         R12 K31 [{["name"] = "ScrollView with tags", ["story"]}]
       69 SETTABLEKS                       R9 R12 K28 ["story"]
       71 SETTABLEKS                       R12 R11 K24 ["Tags"]
       73 SETTABLEKS                       R11 R10 K20 ["stories"]
       75 DUPTABLE                         R11 K35 [{["scrollBarVisibility"], ["selectable"] = True}]
       76 NEWTABLE                         R12 0 3
       78 LOADK                            R13 K36 ["Auto"]
       79 LOADK                            R14 K37 ["Always"]
       80 LOADK                            R15 K38 ["None"]
       81 SETLIST                          R12 R13 3 [1]
       83 SETTABLEKS                       R12 R11 K32 ["scrollBarVisibility"]
       85 SETTABLEKS                       R11 R10 K21 ["controls"]
       87 RETURN                           R10 1
