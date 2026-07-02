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
       15 GETIMPORT                        R10 K15 [UDim2.new]
       17 LOADN                            R11 0
       18 LOADN                            R12 120
       19 LOADN                            R13 0
       20 LOADN                            R14 120
       21 CALL                             R10 4 1
       22 SETTABLEKS                       R10 R9 K8 ["Size"]
       24 DUPTABLE                         R10 K17 [{"FillDirection"}]
       25 GETIMPORT                        R11 K19 [Enum.FillDirection.Vertical]
       27 SETTABLEKS                       R11 R10 K16 ["FillDirection"]
       29 SETTABLEKS                       R10 R9 K9 ["layout"]
       31 DUPTABLE                         R10 K21 [{"Selectable"}]
       32 GETTABLEKS                       R11 R1 K22 ["selectable"]
       34 SETTABLEKS                       R11 R10 K20 ["Selectable"]
       36 SETTABLEKS                       R10 R9 K10 ["selection"]
       38 DUPTABLE                         R10 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
       39 GETIMPORT                        R11 K30 [Enum.AutomaticSize.Y]
       41 SETTABLEKS                       R11 R10 K23 ["AutomaticCanvasSize"]
       43 GETIMPORT                        R11 K32 [UDim2.fromOffset]
       45 LOADN                            R12 0
       46 LOADN                            R13 0
       47 CALL                             R11 2 1
       48 SETTABLEKS                       R11 R10 K24 ["CanvasSize"]
       50 GETIMPORT                        R11 K33 [Enum.ScrollingDirection.Y]
       52 SETTABLEKS                       R11 R10 K25 ["ScrollingDirection"]
       54 GETTABLEKS                       R11 R1 K26 ["scrollBarVisibility"]
       56 SETTABLEKS                       R11 R10 K26 ["scrollBarVisibility"]
       58 SETTABLEKS                       R10 R9 K11 ["scroll"]
       60 NEWTABLE                         R10 0 2
       62 GETUPVAL                         R11 1
       63 GETTABLEKS                       R11 R11 K1 ["createElement"]
       65 GETUPVAL                         R12 2
       66 DUPTABLE                         R13 K35 [{"Size", "backgroundStyle"}]
       67 GETIMPORT                        R14 K32 [UDim2.fromOffset]
       69 LOADN                            R15 120
       70 LOADN                            R16 75
       71 CALL                             R14 2 1
       72 SETTABLEKS                       R14 R13 K8 ["Size"]
       74 GETTABLEKS                       R14 R2 K36 ["Color"]
       76 GETTABLEKS                       R14 R14 K37 ["Extended"]
       78 GETTABLEKS                       R14 R14 K38 ["Turquoise"]
       80 GETTABLEKS                       R14 R14 K39 ["Turquoise_500"]
       82 SETTABLEKS                       R14 R13 K34 ["backgroundStyle"]
       84 CALL                             R11 2 1
       85 GETUPVAL                         R12 1
       86 GETTABLEKS                       R12 R12 K1 ["createElement"]
       88 GETUPVAL                         R13 2
       89 DUPTABLE                         R14 K35 [{"Size", "backgroundStyle"}]
       90 GETIMPORT                        R15 K32 [UDim2.fromOffset]
       92 LOADN                            R16 120
       93 LOADN                            R17 75
       94 CALL                             R15 2 1
       95 SETTABLEKS                       R15 R14 K8 ["Size"]
       97 GETTABLEKS                       R15 R2 K36 ["Color"]
       99 GETTABLEKS                       R15 R15 K37 ["Extended"]
      101 GETTABLEKS                       R15 R15 K40 ["Magenta"]
      103 GETTABLEKS                       R15 R15 K41 ["Magenta_500"]
      105 SETTABLEKS                       R15 R14 K34 ["backgroundStyle"]
      107 CALL                             R12 2 -1
      108 SETLIST                          R10 R11 -1 [1]
      110 CALL                             R7 3 1
      111 SETTABLEKS                       R7 R6 K5 ["Vertical"]
      113 GETUPVAL                         R7 1
      114 GETTABLEKS                       R7 R7 K1 ["createElement"]
      116 GETUPVAL                         R8 3
      117 DUPTABLE                         R9 K12 [{"Size", "layout", "selection", "scroll"}]
      118 GETIMPORT                        R10 K15 [UDim2.new]
      120 LOADN                            R11 0
      121 LOADN                            R12 120
      122 LOADN                            R13 0
      123 LOADN                            R14 120
      124 CALL                             R10 4 1
      125 SETTABLEKS                       R10 R9 K8 ["Size"]
      127 DUPTABLE                         R10 K17 [{"FillDirection"}]
      128 GETIMPORT                        R11 K42 [Enum.FillDirection.Horizontal]
      130 SETTABLEKS                       R11 R10 K16 ["FillDirection"]
      132 SETTABLEKS                       R10 R9 K9 ["layout"]
      134 DUPTABLE                         R10 K21 [{"Selectable"}]
      135 GETTABLEKS                       R11 R1 K22 ["selectable"]
      137 SETTABLEKS                       R11 R10 K20 ["Selectable"]
      139 SETTABLEKS                       R10 R9 K10 ["selection"]
      141 DUPTABLE                         R10 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      142 GETIMPORT                        R11 K44 [Enum.AutomaticSize.X]
      144 SETTABLEKS                       R11 R10 K23 ["AutomaticCanvasSize"]
      146 GETIMPORT                        R11 K32 [UDim2.fromOffset]
      148 LOADN                            R12 0
      149 LOADN                            R13 0
      150 CALL                             R11 2 1
      151 SETTABLEKS                       R11 R10 K24 ["CanvasSize"]
      153 GETIMPORT                        R11 K45 [Enum.ScrollingDirection.X]
      155 SETTABLEKS                       R11 R10 K25 ["ScrollingDirection"]
      157 GETTABLEKS                       R11 R1 K26 ["scrollBarVisibility"]
      159 SETTABLEKS                       R11 R10 K26 ["scrollBarVisibility"]
      161 SETTABLEKS                       R10 R9 K11 ["scroll"]
      163 NEWTABLE                         R10 0 2
      165 GETUPVAL                         R11 1
      166 GETTABLEKS                       R11 R11 K1 ["createElement"]
      168 GETUPVAL                         R12 2
      169 DUPTABLE                         R13 K35 [{"Size", "backgroundStyle"}]
      170 GETIMPORT                        R14 K32 [UDim2.fromOffset]
      172 LOADN                            R15 120
      173 LOADN                            R16 75
      174 CALL                             R14 2 1
      175 SETTABLEKS                       R14 R13 K8 ["Size"]
      177 GETTABLEKS                       R14 R2 K36 ["Color"]
      179 GETTABLEKS                       R14 R14 K37 ["Extended"]
      181 GETTABLEKS                       R14 R14 K38 ["Turquoise"]
      183 GETTABLEKS                       R14 R14 K39 ["Turquoise_500"]
      185 SETTABLEKS                       R14 R13 K34 ["backgroundStyle"]
      187 CALL                             R11 2 1
      188 GETUPVAL                         R12 1
      189 GETTABLEKS                       R12 R12 K1 ["createElement"]
      191 GETUPVAL                         R13 2
      192 DUPTABLE                         R14 K35 [{"Size", "backgroundStyle"}]
      193 GETIMPORT                        R15 K32 [UDim2.fromOffset]
      195 LOADN                            R16 120
      196 LOADN                            R17 75
      197 CALL                             R15 2 1
      198 SETTABLEKS                       R15 R14 K8 ["Size"]
      200 GETTABLEKS                       R15 R2 K36 ["Color"]
      202 GETTABLEKS                       R15 R15 K37 ["Extended"]
      204 GETTABLEKS                       R15 R15 K40 ["Magenta"]
      206 GETTABLEKS                       R15 R15 K41 ["Magenta_500"]
      208 SETTABLEKS                       R15 R14 K34 ["backgroundStyle"]
      210 CALL                             R12 2 -1
      211 SETLIST                          R10 R11 -1 [1]
      213 CALL                             R7 3 1
      214 SETTABLEKS                       R7 R6 K6 ["Horizontal"]
      216 CALL                             R3 3 -1
      217 RETURN                           R3 -1

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
       18 DUPTABLE                         R9 K8 [{["tag"] = "bg-shift-100 radius-medium size-3000-2000 content-muted", ["Text"], ["LayoutOrder"]}]
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
       36 DUPTABLE                         R5 K11 [{["tag"] = "col gap-large auto-y size-full-0"}]
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
       76 DUPTABLE                         R9 K38 [{["tag"] = "text-label-small content-default size-full-200", ["Text"] = "tag = row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000", ["LayoutOrder"] = 2}]
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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["Text"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["ScrollView"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Providers"]
       39 GETTABLEKS                       R7 R7 K13 ["Style"]
       41 GETTABLEKS                       R7 R7 K14 ["useTokens"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R8 R0 K15 ["Enums"]
       48 GETTABLEKS                       R8 R8 K16 ["ControlState"]
       50 CALL                             R7 1 1
       51 DUPCLOSURE                       R8 K17 [PROTO_0]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R2
       54 CAPTURE                          VAL R4
       55 CAPTURE                          VAL R5
       56 DUPCLOSURE                       R9 K18 [PROTO_1]
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
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
