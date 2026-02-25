PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R4 R1 K1 ["fixScrollViewTags"]
        7 SETTABLEKS                       R4 R3 K2 ["FoundationFixScrollViewTags"]
        9 GETUPVAL                         R4 2
       10 GETTABLEKS                       R3 R4 K3 ["createElement"]
       12 GETUPVAL                         R4 3
       13 DUPTABLE                         R5 K5 [{"tag"}]
       14 LOADK                            R6 K6 ["row gap-large auto-xy"]
       15 SETTABLEKS                       R6 R5 K4 ["tag"]
       17 DUPTABLE                         R6 K9 [{"Vertical", "Horizontal"}]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K3 ["createElement"]
       21 GETUPVAL                         R8 4
       22 DUPTABLE                         R9 K14 [{"Size", "layout", "selection", "scroll"}]
       23 GETIMPORT                        R10 K17 [UDim2.new]
       25 LOADN                            R11 0
       26 LOADN                            R12 120
       27 LOADN                            R13 0
       28 LOADN                            R14 120
       29 CALL                             R10 4 1
       30 SETTABLEKS                       R10 R9 K10 ["Size"]
       32 DUPTABLE                         R10 K19 [{"FillDirection"}]
       33 GETIMPORT                        R11 K21 [Enum.FillDirection.Vertical]
       35 SETTABLEKS                       R11 R10 K18 ["FillDirection"]
       37 SETTABLEKS                       R10 R9 K11 ["layout"]
       39 DUPTABLE                         R10 K23 [{"Selectable"}]
       40 GETTABLEKS                       R11 R1 K24 ["selectable"]
       42 SETTABLEKS                       R11 R10 K22 ["Selectable"]
       44 SETTABLEKS                       R10 R9 K12 ["selection"]
       46 DUPTABLE                         R10 K29 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
       47 GETIMPORT                        R11 K32 [Enum.AutomaticSize.Y]
       49 SETTABLEKS                       R11 R10 K25 ["AutomaticCanvasSize"]
       51 GETIMPORT                        R11 K34 [UDim2.fromOffset]
       53 LOADN                            R12 0
       54 LOADN                            R13 0
       55 CALL                             R11 2 1
       56 SETTABLEKS                       R11 R10 K26 ["CanvasSize"]
       58 GETIMPORT                        R11 K35 [Enum.ScrollingDirection.Y]
       60 SETTABLEKS                       R11 R10 K27 ["ScrollingDirection"]
       62 GETTABLEKS                       R11 R1 K28 ["scrollBarVisibility"]
       64 SETTABLEKS                       R11 R10 K28 ["scrollBarVisibility"]
       66 SETTABLEKS                       R10 R9 K13 ["scroll"]
       68 NEWTABLE                         R10 0 2
       70 GETUPVAL                         R12 2
       71 GETTABLEKS                       R11 R12 K3 ["createElement"]
       73 GETUPVAL                         R12 3
       74 DUPTABLE                         R13 K37 [{"Size", "backgroundStyle"}]
       75 GETIMPORT                        R14 K34 [UDim2.fromOffset]
       77 LOADN                            R15 120
       78 LOADN                            R16 75
       79 CALL                             R14 2 1
       80 SETTABLEKS                       R14 R13 K10 ["Size"]
       82 GETTABLEKS                       R17 R2 K38 ["Color"]
       84 GETTABLEKS                       R16 R17 K39 ["Extended"]
       86 GETTABLEKS                       R15 R16 K40 ["Turquoise"]
       88 GETTABLEKS                       R14 R15 K41 ["Turquoise_500"]
       90 SETTABLEKS                       R14 R13 K36 ["backgroundStyle"]
       92 CALL                             R11 2 1
       93 GETUPVAL                         R13 2
       94 GETTABLEKS                       R12 R13 K3 ["createElement"]
       96 GETUPVAL                         R13 3
       97 DUPTABLE                         R14 K37 [{"Size", "backgroundStyle"}]
       98 GETIMPORT                        R15 K34 [UDim2.fromOffset]
      100 LOADN                            R16 120
      101 LOADN                            R17 75
      102 CALL                             R15 2 1
      103 SETTABLEKS                       R15 R14 K10 ["Size"]
      105 GETTABLEKS                       R18 R2 K38 ["Color"]
      107 GETTABLEKS                       R17 R18 K39 ["Extended"]
      109 GETTABLEKS                       R16 R17 K42 ["Magenta"]
      111 GETTABLEKS                       R15 R16 K43 ["Magenta_500"]
      113 SETTABLEKS                       R15 R14 K36 ["backgroundStyle"]
      115 CALL                             R12 2 -1
      116 SETLIST                          R10 R11 -1 [1]
      118 CALL                             R7 3 1
      119 SETTABLEKS                       R7 R6 K7 ["Vertical"]
      121 GETUPVAL                         R8 2
      122 GETTABLEKS                       R7 R8 K3 ["createElement"]
      124 GETUPVAL                         R8 4
      125 DUPTABLE                         R9 K14 [{"Size", "layout", "selection", "scroll"}]
      126 GETIMPORT                        R10 K17 [UDim2.new]
      128 LOADN                            R11 0
      129 LOADN                            R12 120
      130 LOADN                            R13 0
      131 LOADN                            R14 120
      132 CALL                             R10 4 1
      133 SETTABLEKS                       R10 R9 K10 ["Size"]
      135 DUPTABLE                         R10 K19 [{"FillDirection"}]
      136 GETIMPORT                        R11 K44 [Enum.FillDirection.Horizontal]
      138 SETTABLEKS                       R11 R10 K18 ["FillDirection"]
      140 SETTABLEKS                       R10 R9 K11 ["layout"]
      142 DUPTABLE                         R10 K23 [{"Selectable"}]
      143 GETTABLEKS                       R11 R1 K24 ["selectable"]
      145 SETTABLEKS                       R11 R10 K22 ["Selectable"]
      147 SETTABLEKS                       R10 R9 K12 ["selection"]
      149 DUPTABLE                         R10 K29 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
      150 GETIMPORT                        R11 K46 [Enum.AutomaticSize.X]
      152 SETTABLEKS                       R11 R10 K25 ["AutomaticCanvasSize"]
      154 GETIMPORT                        R11 K34 [UDim2.fromOffset]
      156 LOADN                            R12 0
      157 LOADN                            R13 0
      158 CALL                             R11 2 1
      159 SETTABLEKS                       R11 R10 K26 ["CanvasSize"]
      161 GETIMPORT                        R11 K47 [Enum.ScrollingDirection.X]
      163 SETTABLEKS                       R11 R10 K27 ["ScrollingDirection"]
      165 GETTABLEKS                       R11 R1 K28 ["scrollBarVisibility"]
      167 SETTABLEKS                       R11 R10 K28 ["scrollBarVisibility"]
      169 SETTABLEKS                       R10 R9 K13 ["scroll"]
      171 NEWTABLE                         R10 0 2
      173 GETUPVAL                         R12 2
      174 GETTABLEKS                       R11 R12 K3 ["createElement"]
      176 GETUPVAL                         R12 3
      177 DUPTABLE                         R13 K37 [{"Size", "backgroundStyle"}]
      178 GETIMPORT                        R14 K34 [UDim2.fromOffset]
      180 LOADN                            R15 120
      181 LOADN                            R16 75
      182 CALL                             R14 2 1
      183 SETTABLEKS                       R14 R13 K10 ["Size"]
      185 GETTABLEKS                       R17 R2 K38 ["Color"]
      187 GETTABLEKS                       R16 R17 K39 ["Extended"]
      189 GETTABLEKS                       R15 R16 K40 ["Turquoise"]
      191 GETTABLEKS                       R14 R15 K41 ["Turquoise_500"]
      193 SETTABLEKS                       R14 R13 K36 ["backgroundStyle"]
      195 CALL                             R11 2 1
      196 GETUPVAL                         R13 2
      197 GETTABLEKS                       R12 R13 K3 ["createElement"]
      199 GETUPVAL                         R13 3
      200 DUPTABLE                         R14 K37 [{"Size", "backgroundStyle"}]
      201 GETIMPORT                        R15 K34 [UDim2.fromOffset]
      203 LOADN                            R16 120
      204 LOADN                            R17 75
      205 CALL                             R15 2 1
      206 SETTABLEKS                       R15 R14 K10 ["Size"]
      208 GETTABLEKS                       R18 R2 K38 ["Color"]
      210 GETTABLEKS                       R17 R18 K39 ["Extended"]
      212 GETTABLEKS                       R16 R17 K42 ["Magenta"]
      214 GETTABLEKS                       R15 R16 K43 ["Magenta_500"]
      216 SETTABLEKS                       R15 R14 K36 ["backgroundStyle"]
      218 CALL                             R12 2 -1
      219 SETLIST                          R10 R11 -1 [1]
      221 CALL                             R7 3 1
      222 SETTABLEKS                       R7 R6 K8 ["Horizontal"]
      224 CALL                             R3 3 -1
      225 RETURN                           R3 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["controls"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R3 R1 K1 ["fixScrollViewTags"]
        5 SETTABLEKS                       R3 R2 K2 ["FoundationFixScrollViewTags"]
        7 NEWTABLE                         R2 0 0
        9 LOADN                            R5 1
       10 LOADN                            R3 10
       11 LOADN                            R4 1
       12 FORNPREP                         R3
       13 LOADK                            R7 K3 ["Item%*"]
       14 MOVE                             R9 R5
       15 NAMECALL                         R7 R7 K4 ["format"]
       17 CALL                             R7 2 1
       18 MOVE                             R6 R7
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R7 R8 K5 ["createElement"]
       22 GETUPVAL                         R8 2
       23 DUPTABLE                         R9 K9 [{"tag", "Text", "LayoutOrder"}]
       24 LOADK                            R10 K10 ["bg-shift-100 radius-medium size-3000-2000 content-muted"]
       25 SETTABLEKS                       R10 R9 K6 ["tag"]
       27 LOADK                            R11 K11 ["Item %*"]
       28 MOVE                             R13 R5
       29 NAMECALL                         R11 R11 K4 ["format"]
       31 CALL                             R11 2 1
       32 MOVE                             R10 R11
       33 SETTABLEKS                       R10 R9 K7 ["Text"]
       35 SETTABLEKS                       R5 R9 K8 ["LayoutOrder"]
       37 CALL                             R7 2 1
       38 SETTABLE                         R7 R2 R6
       39 FORNLOOP                         R3
       40 GETUPVAL                         R4 1
       41 GETTABLEKS                       R3 R4 K5 ["createElement"]
       43 GETUPVAL                         R4 3
       44 DUPTABLE                         R5 K12 [{"tag"}]
       45 LOADK                            R6 K13 ["col gap-large auto-y size-full-0"]
       46 SETTABLEKS                       R6 R5 K6 ["tag"]
       48 DUPTABLE                         R6 K16 [{"ScrollView", "TagInfo"}]
       49 GETUPVAL                         R8 1
       50 GETTABLEKS                       R7 R8 K5 ["createElement"]
       52 GETUPVAL                         R8 4
       53 DUPTABLE                         R9 K19 [{"tag", "selection", "scroll", "LayoutOrder"}]
       54 LOADK                            R10 K20 ["row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000"]
       55 SETTABLEKS                       R10 R9 K6 ["tag"]
       57 DUPTABLE                         R10 K22 [{"Selectable"}]
       58 GETTABLEKS                       R11 R1 K23 ["selectable"]
       60 SETTABLEKS                       R11 R10 K21 ["Selectable"]
       62 SETTABLEKS                       R10 R9 K17 ["selection"]
       64 DUPTABLE                         R10 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       65 GETIMPORT                        R11 K31 [Enum.AutomaticSize.X]
       67 SETTABLEKS                       R11 R10 K24 ["AutomaticCanvasSize"]
       69 GETIMPORT                        R11 K34 [UDim2.fromScale]
       71 LOADN                            R12 0
       72 LOADN                            R13 1
       73 CALL                             R11 2 1
       74 SETTABLEKS                       R11 R10 K25 ["CanvasSize"]
       76 GETIMPORT                        R11 K35 [Enum.ScrollingDirection.X]
       78 SETTABLEKS                       R11 R10 K26 ["ScrollingDirection"]
       80 SETTABLEKS                       R10 R9 K18 ["scroll"]
       82 LOADN                            R10 1
       83 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
       85 MOVE                             R10 R2
       86 CALL                             R7 3 1
       87 SETTABLEKS                       R7 R6 K14 ["ScrollView"]
       89 GETUPVAL                         R8 1
       90 GETTABLEKS                       R7 R8 K5 ["createElement"]
       92 GETUPVAL                         R8 2
       93 DUPTABLE                         R9 K9 [{"tag", "Text", "LayoutOrder"}]
       94 LOADK                            R10 K36 ["text-label-small content-default size-full-200"]
       95 SETTABLEKS                       R10 R9 K6 ["tag"]
       97 LOADK                            R10 K37 ["tag = row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000"]
       98 SETTABLEKS                       R10 R9 K7 ["Text"]
      100 LOADN                            R10 2
      101 SETTABLEKS                       R10 R9 K8 ["LayoutOrder"]
      103 CALL                             R7 2 1
      104 SETTABLEKS                       R7 R6 K15 ["TagInfo"]
      106 CALL                             R3 3 -1
      107 RETURN                           R3 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Text"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["ScrollView"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R9 R0 K12 ["Providers"]
       39 GETTABLEKS                       R8 R9 K13 ["Style"]
       41 GETTABLEKS                       R7 R8 K14 ["useTokens"]
       43 CALL                             R6 1 1
       44 GETIMPORT                        R7 K6 [require]
       46 GETTABLEKS                       R9 R0 K15 ["Enums"]
       48 GETTABLEKS                       R8 R9 K16 ["ControlState"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K17 ["Utility"]
       55 GETTABLEKS                       R9 R10 K18 ["Flags"]
       57 CALL                             R8 1 1
       58 DUPCLOSURE                       R9 K19 [PROTO_0]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R8
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R4
       63 CAPTURE                          VAL R5
       64 DUPCLOSURE                       R10 K20 [PROTO_1]
       65 CAPTURE                          VAL R8
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 DUPTABLE                         R11 K24 [{"summary", "stories", "controls"}]
       71 LOADK                            R12 K11 ["ScrollView"]
       72 SETTABLEKS                       R12 R11 K21 ["summary"]
       74 DUPTABLE                         R12 K27 [{"Scrolling", "Tags"}]
       75 DUPTABLE                         R13 K30 [{"name", "story"}]
       76 LOADK                            R14 K31 ["Horizontal and Vertical scrolling"]
       77 SETTABLEKS                       R14 R13 K28 ["name"]
       79 SETTABLEKS                       R9 R13 K29 ["story"]
       81 SETTABLEKS                       R13 R12 K25 ["Scrolling"]
       83 DUPTABLE                         R13 K30 [{"name", "story"}]
       84 LOADK                            R14 K32 ["ScrollView with tags"]
       85 SETTABLEKS                       R14 R13 K28 ["name"]
       87 SETTABLEKS                       R10 R13 K29 ["story"]
       89 SETTABLEKS                       R13 R12 K26 ["Tags"]
       91 SETTABLEKS                       R12 R11 K22 ["stories"]
       93 DUPTABLE                         R12 K36 [{"scrollBarVisibility", "selectable", "fixScrollViewTags"}]
       94 NEWTABLE                         R13 0 3
       96 LOADK                            R14 K37 ["Auto"]
       97 LOADK                            R15 K38 ["Always"]
       98 LOADK                            R16 K39 ["None"]
       99 SETLIST                          R13 R14 3 [1]
      101 SETTABLEKS                       R13 R12 K33 ["scrollBarVisibility"]
      103 LOADB                            R13 1
      104 SETTABLEKS                       R13 R12 K34 ["selectable"]
      106 GETTABLEKS                       R13 R8 K40 ["FoundationFixScrollViewTags"]
      108 SETTABLEKS                       R13 R12 K35 ["fixScrollViewTags"]
      110 SETTABLEKS                       R12 R11 K23 ["controls"]
      112 RETURN                           R11 1
