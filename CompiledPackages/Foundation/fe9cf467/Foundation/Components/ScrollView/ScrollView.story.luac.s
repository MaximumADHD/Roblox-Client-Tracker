PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K1 ["createElement"]
        7 GETUPVAL                         R4 2
        8 DUPTABLE                         R5 K3 [{"tag"}]
        9 LOADK                            R6 K4 ["row gap-large auto-xy"]
       10 SETTABLEKS                       R6 R5 K2 ["tag"]
       12 DUPTABLE                         R6 K7 [{"Vertical", "Horizontal"}]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R7 R8 K1 ["createElement"]
       16 GETUPVAL                         R8 3
       17 DUPTABLE                         R9 K12 [{"Size", "layout", "selection", "scroll"}]
       18 GETIMPORT                        R10 K15 [UDim2.fromOffset]
       20 LOADN                            R11 120
       21 LOADN                            R12 120
       22 CALL                             R10 2 1
       23 SETTABLEKS                       R10 R9 K8 ["Size"]
       25 DUPTABLE                         R10 K17 [{"FillDirection"}]
       26 GETIMPORT                        R11 K19 [Enum.FillDirection.Vertical]
       28 SETTABLEKS                       R11 R10 K16 ["FillDirection"]
       30 SETTABLEKS                       R10 R9 K9 ["layout"]
       32 DUPTABLE                         R10 K21 [{"Selectable"}]
       33 GETTABLEKS                       R11 R1 K22 ["selectable"]
       35 SETTABLEKS                       R11 R10 K20 ["Selectable"]
       37 SETTABLEKS                       R10 R9 K10 ["selection"]
       39 DUPTABLE                         R10 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
       40 GETIMPORT                        R11 K30 [Enum.AutomaticSize.Y]
       42 SETTABLEKS                       R11 R10 K23 ["AutomaticCanvasSize"]
       44 GETIMPORT                        R11 K15 [UDim2.fromOffset]
       46 LOADN                            R12 0
       47 LOADN                            R13 0
       48 CALL                             R11 2 1
       49 SETTABLEKS                       R11 R10 K24 ["CanvasSize"]
       51 GETIMPORT                        R11 K31 [Enum.ScrollingDirection.Y]
       53 SETTABLEKS                       R11 R10 K25 ["ScrollingDirection"]
       55 GETTABLEKS                       R11 R1 K26 ["scrollBarVisibility"]
       57 SETTABLEKS                       R11 R10 K26 ["scrollBarVisibility"]
       59 SETTABLEKS                       R10 R9 K11 ["scroll"]
       61 NEWTABLE                         R10 0 2
       63 GETUPVAL                         R12 1
       64 GETTABLEKS                       R11 R12 K1 ["createElement"]
       66 GETUPVAL                         R12 2
       67 DUPTABLE                         R13 K33 [{"Size", "backgroundStyle"}]
       68 GETIMPORT                        R14 K15 [UDim2.fromOffset]
       70 LOADN                            R15 120
       71 LOADN                            R16 75
       72 CALL                             R14 2 1
       73 SETTABLEKS                       R14 R13 K8 ["Size"]
       75 GETTABLEKS                       R17 R2 K34 ["Color"]
       77 GETTABLEKS                       R16 R17 K35 ["Extended"]
       79 GETTABLEKS                       R15 R16 K36 ["Turquoise"]
       81 GETTABLEKS                       R14 R15 K37 ["Turquoise_500"]
       83 SETTABLEKS                       R14 R13 K32 ["backgroundStyle"]
       85 CALL                             R11 2 1
       86 GETUPVAL                         R13 1
       87 GETTABLEKS                       R12 R13 K1 ["createElement"]
       89 GETUPVAL                         R13 2
       90 DUPTABLE                         R14 K33 [{"Size", "backgroundStyle"}]
       91 GETIMPORT                        R15 K15 [UDim2.fromOffset]
       93 LOADN                            R16 120
       94 LOADN                            R17 75
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K8 ["Size"]
       98 GETTABLEKS                       R18 R2 K34 ["Color"]
      100 GETTABLEKS                       R17 R18 K35 ["Extended"]
      102 GETTABLEKS                       R16 R17 K38 ["Magenta"]
      104 GETTABLEKS                       R15 R16 K39 ["Magenta_500"]
      106 SETTABLEKS                       R15 R14 K32 ["backgroundStyle"]
      108 CALL                             R12 2 -1
      109 SETLIST                          R10 R11 -1 [1]
      111 CALL                             R7 3 1
      112 SETTABLEKS                       R7 R6 K5 ["Vertical"]
      114 GETUPVAL                         R8 1
      115 GETTABLEKS                       R7 R8 K1 ["createElement"]
      117 GETUPVAL                         R8 3
      118 DUPTABLE                         R9 K12 [{"Size", "layout", "selection", "scroll"}]
      119 GETIMPORT                        R10 K15 [UDim2.fromOffset]
      121 LOADN                            R11 120
      122 LOADN                            R12 120
      123 CALL                             R10 2 1
      124 SETTABLEKS                       R10 R9 K8 ["Size"]
      126 DUPTABLE                         R10 K17 [{"FillDirection"}]
      127 GETIMPORT                        R11 K40 [Enum.FillDirection.Horizontal]
      129 SETTABLEKS                       R11 R10 K16 ["FillDirection"]
      131 SETTABLEKS                       R10 R9 K9 ["layout"]
      133 DUPTABLE                         R10 K21 [{"Selectable"}]
      134 GETTABLEKS                       R11 R1 K22 ["selectable"]
      136 SETTABLEKS                       R11 R10 K20 ["Selectable"]
      138 SETTABLEKS                       R10 R9 K10 ["selection"]
      140 DUPTABLE                         R10 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      141 GETIMPORT                        R11 K42 [Enum.AutomaticSize.X]
      143 SETTABLEKS                       R11 R10 K23 ["AutomaticCanvasSize"]
      145 GETIMPORT                        R11 K15 [UDim2.fromOffset]
      147 LOADN                            R12 0
      148 LOADN                            R13 0
      149 CALL                             R11 2 1
      150 SETTABLEKS                       R11 R10 K24 ["CanvasSize"]
      152 GETIMPORT                        R11 K43 [Enum.ScrollingDirection.X]
      154 SETTABLEKS                       R11 R10 K25 ["ScrollingDirection"]
      156 GETTABLEKS                       R11 R1 K26 ["scrollBarVisibility"]
      158 SETTABLEKS                       R11 R10 K26 ["scrollBarVisibility"]
      160 SETTABLEKS                       R10 R9 K11 ["scroll"]
      162 NEWTABLE                         R10 0 2
      164 GETUPVAL                         R12 1
      165 GETTABLEKS                       R11 R12 K1 ["createElement"]
      167 GETUPVAL                         R12 2
      168 DUPTABLE                         R13 K33 [{"Size", "backgroundStyle"}]
      169 GETIMPORT                        R14 K15 [UDim2.fromOffset]
      171 LOADN                            R15 120
      172 LOADN                            R16 75
      173 CALL                             R14 2 1
      174 SETTABLEKS                       R14 R13 K8 ["Size"]
      176 GETTABLEKS                       R17 R2 K34 ["Color"]
      178 GETTABLEKS                       R16 R17 K35 ["Extended"]
      180 GETTABLEKS                       R15 R16 K36 ["Turquoise"]
      182 GETTABLEKS                       R14 R15 K37 ["Turquoise_500"]
      184 SETTABLEKS                       R14 R13 K32 ["backgroundStyle"]
      186 CALL                             R11 2 1
      187 GETUPVAL                         R13 1
      188 GETTABLEKS                       R12 R13 K1 ["createElement"]
      190 GETUPVAL                         R13 2
      191 DUPTABLE                         R14 K33 [{"Size", "backgroundStyle"}]
      192 GETIMPORT                        R15 K15 [UDim2.fromOffset]
      194 LOADN                            R16 120
      195 LOADN                            R17 75
      196 CALL                             R15 2 1
      197 SETTABLEKS                       R15 R14 K8 ["Size"]
      199 GETTABLEKS                       R18 R2 K34 ["Color"]
      201 GETTABLEKS                       R17 R18 K35 ["Extended"]
      203 GETTABLEKS                       R16 R17 K38 ["Magenta"]
      205 GETTABLEKS                       R15 R16 K39 ["Magenta_500"]
      207 SETTABLEKS                       R15 R14 K32 ["backgroundStyle"]
      209 CALL                             R12 2 -1
      210 SETLIST                          R10 R11 -1 [1]
      212 CALL                             R7 3 1
      213 SETTABLEKS                       R7 R6 K6 ["Horizontal"]
      215 CALL                             R3 3 -1
      216 RETURN                           R3 -1

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
       14 GETUPVAL                         R8 0
       15 GETTABLEKS                       R7 R8 K3 ["createElement"]
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
       35 GETUPVAL                         R4 0
       36 GETTABLEKS                       R3 R4 K3 ["createElement"]
       38 GETUPVAL                         R4 2
       39 DUPTABLE                         R5 K10 [{"tag"}]
       40 LOADK                            R6 K11 ["col gap-large auto-y size-full-0"]
       41 SETTABLEKS                       R6 R5 K4 ["tag"]
       43 DUPTABLE                         R6 K14 [{"ScrollView", "TagInfo"}]
       44 GETUPVAL                         R8 0
       45 GETTABLEKS                       R7 R8 K3 ["createElement"]
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
       84 GETUPVAL                         R8 0
       85 GETTABLEKS                       R7 R8 K3 ["createElement"]
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
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["ControlState"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["ScrollView"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R7 K12 ["Text"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K10 ["Components"]
       39 GETTABLEKS                       R7 R8 K13 ["View"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R10 R0 K14 ["Providers"]
       46 GETTABLEKS                       R9 R10 K15 ["Style"]
       48 GETTABLEKS                       R8 R9 K16 ["useTokens"]
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
