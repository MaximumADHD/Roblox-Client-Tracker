PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["createElement"]
        7 GETUPVAL                         R4 2
        8 DUPTABLE                         R5 K3 [{"tag"}]
        9 LOADK                            R6 K4 ["row gap-large auto-xy"]
       10 SETTABLEKS                       R6 R5 K2 ["tag"]
       12 DUPTABLE                         R6 K7 [{"Vertical", "Horizontal"}]
       13 GETUPVAL                         R7 1
       14 GETTABLEKS                       R7 R7 K1 ["createElement"]
       16 GETUPVAL                         R8 3
       17 DUPTABLE                         R9 K12 [{"Size", "layout", "selection", "scroll"}]
       18 GETIMPORT                        R10 K15 [UDim2.new]
       20 LOADN                            R11 0
       21 LOADN                            R12 120
       22 LOADN                            R13 0
       23 LOADN                            R14 120
       24 CALL                             R10 4 1
       25 SETTABLEKS                       R10 R9 K8 ["Size"]
       27 DUPTABLE                         R10 K17 [{"FillDirection"}]
       28 GETIMPORT                        R11 K19 [Enum.FillDirection.Vertical]
       30 SETTABLEKS                       R11 R10 K16 ["FillDirection"]
       32 SETTABLEKS                       R10 R9 K9 ["layout"]
       34 DUPTABLE                         R10 K21 [{"Selectable"}]
       35 GETTABLEKS                       R11 R1 K22 ["selectable"]
       37 SETTABLEKS                       R11 R10 K20 ["Selectable"]
       39 SETTABLEKS                       R10 R9 K10 ["selection"]
       41 DUPTABLE                         R10 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
       42 GETIMPORT                        R11 K30 [Enum.AutomaticSize.Y]
       44 SETTABLEKS                       R11 R10 K23 ["AutomaticCanvasSize"]
       46 GETIMPORT                        R11 K32 [UDim2.fromOffset]
       48 LOADN                            R12 0
       49 LOADN                            R13 0
       50 CALL                             R11 2 1
       51 SETTABLEKS                       R11 R10 K24 ["CanvasSize"]
       53 GETIMPORT                        R11 K33 [Enum.ScrollingDirection.Y]
       55 SETTABLEKS                       R11 R10 K25 ["ScrollingDirection"]
       57 GETTABLEKS                       R11 R1 K26 ["scrollBarVisibility"]
       59 SETTABLEKS                       R11 R10 K26 ["scrollBarVisibility"]
       61 SETTABLEKS                       R10 R9 K11 ["scroll"]
       63 NEWTABLE                         R10 0 2
       65 GETUPVAL                         R11 1
       66 GETTABLEKS                       R11 R11 K1 ["createElement"]
       68 GETUPVAL                         R12 2
       69 DUPTABLE                         R13 K35 [{"Size", "backgroundStyle"}]
       70 GETIMPORT                        R14 K32 [UDim2.fromOffset]
       72 LOADN                            R15 120
       73 LOADN                            R16 75
       74 CALL                             R14 2 1
       75 SETTABLEKS                       R14 R13 K8 ["Size"]
       77 GETTABLEKS                       R14 R2 K36 ["Color"]
       79 GETTABLEKS                       R14 R14 K37 ["Extended"]
       81 GETTABLEKS                       R14 R14 K38 ["Turquoise"]
       83 GETTABLEKS                       R14 R14 K39 ["Turquoise_500"]
       85 SETTABLEKS                       R14 R13 K34 ["backgroundStyle"]
       87 CALL                             R11 2 1
       88 GETUPVAL                         R12 1
       89 GETTABLEKS                       R12 R12 K1 ["createElement"]
       91 GETUPVAL                         R13 2
       92 DUPTABLE                         R14 K35 [{"Size", "backgroundStyle"}]
       93 GETIMPORT                        R15 K32 [UDim2.fromOffset]
       95 LOADN                            R16 120
       96 LOADN                            R17 75
       97 CALL                             R15 2 1
       98 SETTABLEKS                       R15 R14 K8 ["Size"]
      100 GETTABLEKS                       R15 R2 K36 ["Color"]
      102 GETTABLEKS                       R15 R15 K37 ["Extended"]
      104 GETTABLEKS                       R15 R15 K40 ["Magenta"]
      106 GETTABLEKS                       R15 R15 K41 ["Magenta_500"]
      108 SETTABLEKS                       R15 R14 K34 ["backgroundStyle"]
      110 CALL                             R12 2 -1
      111 SETLIST                          R10 R11 -1 [1]
      113 CALL                             R7 3 1
      114 SETTABLEKS                       R7 R6 K5 ["Vertical"]
      116 GETUPVAL                         R7 1
      117 GETTABLEKS                       R7 R7 K1 ["createElement"]
      119 GETUPVAL                         R8 3
      120 DUPTABLE                         R9 K12 [{"Size", "layout", "selection", "scroll"}]
      121 GETIMPORT                        R10 K15 [UDim2.new]
      123 LOADN                            R11 0
      124 LOADN                            R12 120
      125 LOADN                            R13 0
      126 LOADN                            R14 120
      127 CALL                             R10 4 1
      128 SETTABLEKS                       R10 R9 K8 ["Size"]
      130 DUPTABLE                         R10 K17 [{"FillDirection"}]
      131 GETIMPORT                        R11 K42 [Enum.FillDirection.Horizontal]
      133 SETTABLEKS                       R11 R10 K16 ["FillDirection"]
      135 SETTABLEKS                       R10 R9 K9 ["layout"]
      137 DUPTABLE                         R10 K21 [{"Selectable"}]
      138 GETTABLEKS                       R11 R1 K22 ["selectable"]
      140 SETTABLEKS                       R11 R10 K20 ["Selectable"]
      142 SETTABLEKS                       R10 R9 K10 ["selection"]
      144 DUPTABLE                         R10 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      145 GETIMPORT                        R11 K44 [Enum.AutomaticSize.X]
      147 SETTABLEKS                       R11 R10 K23 ["AutomaticCanvasSize"]
      149 GETIMPORT                        R11 K32 [UDim2.fromOffset]
      151 LOADN                            R12 0
      152 LOADN                            R13 0
      153 CALL                             R11 2 1
      154 SETTABLEKS                       R11 R10 K24 ["CanvasSize"]
      156 GETIMPORT                        R11 K45 [Enum.ScrollingDirection.X]
      158 SETTABLEKS                       R11 R10 K25 ["ScrollingDirection"]
      160 GETTABLEKS                       R11 R1 K26 ["scrollBarVisibility"]
      162 SETTABLEKS                       R11 R10 K26 ["scrollBarVisibility"]
      164 SETTABLEKS                       R10 R9 K11 ["scroll"]
      166 NEWTABLE                         R10 0 2
      168 GETUPVAL                         R11 1
      169 GETTABLEKS                       R11 R11 K1 ["createElement"]
      171 GETUPVAL                         R12 2
      172 DUPTABLE                         R13 K35 [{"Size", "backgroundStyle"}]
      173 GETIMPORT                        R14 K32 [UDim2.fromOffset]
      175 LOADN                            R15 120
      176 LOADN                            R16 75
      177 CALL                             R14 2 1
      178 SETTABLEKS                       R14 R13 K8 ["Size"]
      180 GETTABLEKS                       R14 R2 K36 ["Color"]
      182 GETTABLEKS                       R14 R14 K37 ["Extended"]
      184 GETTABLEKS                       R14 R14 K38 ["Turquoise"]
      186 GETTABLEKS                       R14 R14 K39 ["Turquoise_500"]
      188 SETTABLEKS                       R14 R13 K34 ["backgroundStyle"]
      190 CALL                             R11 2 1
      191 GETUPVAL                         R12 1
      192 GETTABLEKS                       R12 R12 K1 ["createElement"]
      194 GETUPVAL                         R13 2
      195 DUPTABLE                         R14 K35 [{"Size", "backgroundStyle"}]
      196 GETIMPORT                        R15 K32 [UDim2.fromOffset]
      198 LOADN                            R16 120
      199 LOADN                            R17 75
      200 CALL                             R15 2 1
      201 SETTABLEKS                       R15 R14 K8 ["Size"]
      203 GETTABLEKS                       R15 R2 K36 ["Color"]
      205 GETTABLEKS                       R15 R15 K37 ["Extended"]
      207 GETTABLEKS                       R15 R15 K40 ["Magenta"]
      209 GETTABLEKS                       R15 R15 K41 ["Magenta_500"]
      211 SETTABLEKS                       R15 R14 K34 ["backgroundStyle"]
      213 CALL                             R12 2 -1
      214 SETLIST                          R10 R11 -1 [1]
      216 CALL                             R7 3 1
      217 SETTABLEKS                       R7 R6 K6 ["Horizontal"]
      219 CALL                             R3 3 -1
      220 RETURN                           R3 -1

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
       18 DUPTABLE                         R9 K7 [{"tag", "Text", "LayoutOrder"}]
       19 LOADK                            R10 K8 ["bg-shift-100 radius-medium size-3000-2000 content-muted"]
       20 SETTABLEKS                       R10 R9 K4 ["tag"]
       22 LOADK                            R11 K9 ["Item %*"]
       23 MOVE                             R13 R5
       24 NAMECALL                         R11 R11 K2 ["format"]
       26 CALL                             R11 2 1
       27 MOVE                             R10 R11
       28 SETTABLEKS                       R10 R9 K5 ["Text"]
       30 SETTABLEKS                       R5 R9 K6 ["LayoutOrder"]
       32 CALL                             R7 2 1
       33 SETTABLE                         R7 R2 R6
       34 FORNLOOP                         R3
       35 GETUPVAL                         R3 0
       36 GETTABLEKS                       R3 R3 K3 ["createElement"]
       38 GETUPVAL                         R4 2
       39 DUPTABLE                         R5 K10 [{"tag"}]
       40 LOADK                            R6 K11 ["col gap-large auto-y size-full-0"]
       41 SETTABLEKS                       R6 R5 K4 ["tag"]
       43 DUPTABLE                         R6 K14 [{"ScrollView", "TagInfo"}]
       44 GETUPVAL                         R7 0
       45 GETTABLEKS                       R7 R7 K3 ["createElement"]
       47 GETUPVAL                         R8 3
       48 DUPTABLE                         R9 K17 [{"tag", "selection", "scroll", "LayoutOrder"}]
       49 LOADK                            R10 K18 ["row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000"]
       50 SETTABLEKS                       R10 R9 K4 ["tag"]
       52 DUPTABLE                         R10 K20 [{"Selectable"}]
       53 GETTABLEKS                       R11 R1 K21 ["selectable"]
       55 SETTABLEKS                       R11 R10 K19 ["Selectable"]
       57 SETTABLEKS                       R10 R9 K15 ["selection"]
       59 DUPTABLE                         R10 K25 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       60 GETIMPORT                        R11 K29 [Enum.AutomaticSize.X]
       62 SETTABLEKS                       R11 R10 K22 ["AutomaticCanvasSize"]
       64 GETIMPORT                        R11 K32 [UDim2.fromScale]
       66 LOADN                            R12 0
       67 LOADN                            R13 1
       68 CALL                             R11 2 1
       69 SETTABLEKS                       R11 R10 K23 ["CanvasSize"]
       71 GETIMPORT                        R11 K33 [Enum.ScrollingDirection.X]
       73 SETTABLEKS                       R11 R10 K24 ["ScrollingDirection"]
       75 SETTABLEKS                       R10 R9 K16 ["scroll"]
       77 LOADN                            R10 1
       78 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       80 MOVE                             R10 R2
       81 CALL                             R7 3 1
       82 SETTABLEKS                       R7 R6 K12 ["ScrollView"]
       84 GETUPVAL                         R7 0
       85 GETTABLEKS                       R7 R7 K3 ["createElement"]
       87 GETUPVAL                         R8 1
       88 DUPTABLE                         R9 K7 [{"tag", "Text", "LayoutOrder"}]
       89 LOADK                            R10 K34 ["text-label-small content-default size-full-200"]
       90 SETTABLEKS                       R10 R9 K4 ["tag"]
       92 LOADK                            R10 K35 ["tag = row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000"]
       93 SETTABLEKS                       R10 R9 K5 ["Text"]
       95 LOADN                            R10 2
       96 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       98 CALL                             R7 2 1
       99 SETTABLEKS                       R7 R6 K13 ["TagInfo"]
      101 CALL                             R3 3 -1
      102 RETURN                           R3 -1

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
       61 DUPTABLE                         R10 K22 [{"summary", "stories", "controls"}]
       62 LOADK                            R11 K11 ["ScrollView"]
       63 SETTABLEKS                       R11 R10 K19 ["summary"]
       65 DUPTABLE                         R11 K25 [{"Scrolling", "Tags"}]
       66 DUPTABLE                         R12 K28 [{"name", "story"}]
       67 LOADK                            R13 K29 ["Horizontal and Vertical scrolling"]
       68 SETTABLEKS                       R13 R12 K26 ["name"]
       70 SETTABLEKS                       R8 R12 K27 ["story"]
       72 SETTABLEKS                       R12 R11 K23 ["Scrolling"]
       74 DUPTABLE                         R12 K28 [{"name", "story"}]
       75 LOADK                            R13 K30 ["ScrollView with tags"]
       76 SETTABLEKS                       R13 R12 K26 ["name"]
       78 SETTABLEKS                       R9 R12 K27 ["story"]
       80 SETTABLEKS                       R12 R11 K24 ["Tags"]
       82 SETTABLEKS                       R11 R10 K20 ["stories"]
       84 DUPTABLE                         R11 K33 [{"scrollBarVisibility", "selectable"}]
       85 NEWTABLE                         R12 0 3
       87 LOADK                            R13 K34 ["Auto"]
       88 LOADK                            R14 K35 ["Always"]
       89 LOADK                            R15 K36 ["None"]
       90 SETLIST                          R12 R13 3 [1]
       92 SETTABLEKS                       R12 R11 K31 ["scrollBarVisibility"]
       94 LOADB                            R12 1
       95 SETTABLEKS                       R12 R11 K32 ["selectable"]
       97 SETTABLEKS                       R11 R10 K21 ["controls"]
       99 RETURN                           R10 1
