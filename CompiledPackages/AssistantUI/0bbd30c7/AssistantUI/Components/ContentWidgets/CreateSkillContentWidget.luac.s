PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R3 R0 K0 ["AbsoluteCanvasSize"]
        3 GETTABLEKS                       R3 R3 K1 ["Y"]
        5 FASTCALL2K                       MATH_MIN R3 K2 ; [+4]
        7 LOADK                            R4 K2 [200]
        8 GETIMPORT                        R2 K5 [math.min]
       10 CALL                             R2 2 1
       11 CALL                             R1 1 0
       12 GETUPVAL                         R1 1
       13 JUMPIFNOT                        R1 ; [+21]
       14 GETIMPORT                        R1 K8 [Vector2.new]
       16 LOADN                            R2 0
       17 LOADN                            R4 0
       18 GETTABLEKS                       R6 R0 K0 ["AbsoluteCanvasSize"]
       20 GETTABLEKS                       R6 R6 K1 ["Y"]
       22 GETTABLEKS                       R7 R0 K9 ["AbsoluteSize"]
       24 GETTABLEKS                       R7 R7 K1 ["Y"]
       26 SUB                              R5 R6 R7
       27 FASTCALL2                        MATH_MAX R4 R5 ; [+3]
       29 GETIMPORT                        R3 K11 [math.max]
       31 CALL                             R3 2 1
       32 CALL                             R1 2 1
       33 SETTABLEKS                       R1 R0 K12 ["CanvasPosition"]
       35 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R1 K2 [UDim2.new]
        2 LOADN                            R2 1
        3 LOADN                            R3 0
        4 LOADN                            R4 0
        5 MOVE                             R5 R0
        6 CALL                             R1 4 -1
        7 RETURN                           R1 -1

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["inProgress"]
        2 GETUPVAL                         R2 0
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["useBinding"]
        7 LOADN                            R4 200
        8 CALL                             R3 1 2
        9 GETUPVAL                         R5 1
       10 GETTABLEKS                       R5 R5 K2 ["useCallback"]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R4
       14 CAPTURE                          VAL R1
       15 NEWTABLE                         R7 0 2
       17 MOVE                             R8 R1
       18 MOVE                             R9 R4
       19 SETLIST                          R7 R8 2 [1]
       21 CALL                             R5 2 1
       22 LOADNIL                          R6
       23 GETTABLEKS                       R8 R0 K3 ["body"]
       25 LENGTH                           R7 R8
       26 LOADN                            R8 0
       27 JUMPIFNOTLT                      R8 R7 ; [+77]
       29 JUMPIFNOT                        R1 ; [+61]
       30 GETUPVAL                         R7 2
       31 GETUPVAL                         R8 3
       32 DUPTABLE                         R9 K8 [{"Size", "layout", "scroll", "onAbsoluteCanvasSizeChanged"}]
       33 DUPCLOSURE                       R12 K9 [PROTO_1]
       34 NAMECALL                         R10 R3 K10 ["map"]
       36 CALL                             R10 2 1
       37 SETTABLEKS                       R10 R9 K4 ["Size"]
       39 DUPTABLE                         R10 K13 [{"FillDirection", "SortOrder"}]
       40 GETIMPORT                        R11 K16 [Enum.FillDirection.Vertical]
       42 SETTABLEKS                       R11 R10 K11 ["FillDirection"]
       44 GETIMPORT                        R11 K18 [Enum.SortOrder.LayoutOrder]
       46 SETTABLEKS                       R11 R10 K12 ["SortOrder"]
       48 SETTABLEKS                       R10 R9 K5 ["layout"]
       50 DUPTABLE                         R10 K22 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
       51 GETIMPORT                        R11 K25 [Enum.AutomaticSize.Y]
       53 SETTABLEKS                       R11 R10 K19 ["AutomaticCanvasSize"]
       55 GETIMPORT                        R11 K28 [UDim2.new]
       57 LOADN                            R12 0
       58 LOADN                            R13 0
       59 LOADN                            R14 0
       60 LOADN                            R15 0
       61 CALL                             R11 4 1
       62 SETTABLEKS                       R11 R10 K20 ["CanvasSize"]
       64 GETIMPORT                        R11 K29 [Enum.ScrollingDirection.Y]
       66 SETTABLEKS                       R11 R10 K21 ["ScrollingDirection"]
       68 SETTABLEKS                       R10 R9 K6 ["scroll"]
       70 SETTABLEKS                       R5 R9 K7 ["onAbsoluteCanvasSizeChanged"]
       72 DUPTABLE                         R10 K31 [{"Content"}]
       73 GETUPVAL                         R11 2
       74 GETUPVAL                         R12 4
       75 DUPTABLE                         R13 K35 [{["markdown"], ["messageId"], ["LayoutOrder"] = 1}]
       76 GETTABLEKS                       R14 R0 K3 ["body"]
       78 SETTABLEKS                       R14 R13 K32 ["markdown"]
       80 GETTABLEKS                       R15 R0 K37 ["contentId"]
       82 ORK                              R14 R15 K36 [""]
       83 SETTABLEKS                       R14 R13 K33 ["messageId"]
       85 CALL                             R11 2 1
       86 SETTABLEKS                       R11 R10 K30 ["Content"]
       88 CALL                             R7 3 1
       89 MOVE                             R6 R7
       90 JUMP                             ; [+14]
       91 GETUPVAL                         R7 2
       92 GETUPVAL                         R8 4
       93 DUPTABLE                         R9 K38 [{"markdown", "messageId"}]
       94 GETTABLEKS                       R10 R0 K3 ["body"]
       96 SETTABLEKS                       R10 R9 K32 ["markdown"]
       98 GETTABLEKS                       R11 R0 K37 ["contentId"]
      100 ORK                              R10 R11 K36 [""]
      101 SETTABLEKS                       R10 R9 K33 ["messageId"]
      103 CALL                             R7 2 1
      104 MOVE                             R6 R7
      105 GETUPVAL                         R7 2
      106 GETUPVAL                         R8 5
      107 GETTABLEKS                       R8 R8 K39 ["Root"]
      109 DUPTABLE                         R9 K42 [{"LayoutOrder", "expanded", "contentId", "editThisContent"}]
      110 GETTABLEKS                       R10 R0 K17 ["LayoutOrder"]
      112 SETTABLEKS                       R10 R9 K17 ["LayoutOrder"]
      114 GETTABLEKS                       R10 R0 K40 ["expanded"]
      116 SETTABLEKS                       R10 R9 K40 ["expanded"]
      118 GETTABLEKS                       R10 R0 K37 ["contentId"]
      120 SETTABLEKS                       R10 R9 K37 ["contentId"]
      122 GETTABLEKS                       R10 R0 K41 ["editThisContent"]
      124 SETTABLEKS                       R10 R9 K41 ["editThisContent"]
      126 DUPTABLE                         R10 K44 [{"Header", "Content"}]
      127 GETUPVAL                         R11 2
      128 GETUPVAL                         R12 5
      129 GETTABLEKS                       R12 R12 K43 ["Header"]
      131 DUPTABLE                         R13 K45 [{"LayoutOrder"}]
      132 MOVE                             R14 R2
      133 CALL                             R14 0 1
      134 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      136 DUPTABLE                         R14 K47 [{"HeaderText"}]
      137 GETUPVAL                         R15 2
      138 GETUPVAL                         R16 6
      139 DUPTABLE                         R17 K51 [{["tag"] = "size-0-full auto-x text-label-small text-truncate-end content-default", ["Text"], ["LayoutOrder"]}]
      140 GETTABLEKS                       R18 R0 K52 ["stage"]
      142 SETTABLEKS                       R18 R17 K50 ["Text"]
      144 MOVE                             R18 R2
      145 CALL                             R18 0 1
      146 SETTABLEKS                       R18 R17 K17 ["LayoutOrder"]
      148 DUPTABLE                         R18 K54 [{"Shimmer"}]
      149 JUMPIFNOT                        R1 ; [+4]
      150 GETUPVAL                         R19 2
      151 GETUPVAL                         R20 7
      152 CALL                             R19 1 1
      153 JUMP                             ; [+1]
      154 LOADNIL                          R19
      155 SETTABLEKS                       R19 R18 K53 ["Shimmer"]
      157 CALL                             R15 3 1
      158 SETTABLEKS                       R15 R14 K46 ["HeaderText"]
      160 CALL                             R11 3 1
      161 SETTABLEKS                       R11 R10 K43 ["Header"]
      163 JUMPIFNOT                        R6 ; [+14]
      164 GETUPVAL                         R11 2
      165 GETUPVAL                         R12 5
      166 GETTABLEKS                       R12 R12 K30 ["Content"]
      168 DUPTABLE                         R13 K58 [{["tag"] = "col fill size-0-0 auto-y", ["LayoutOrder"], ["UseVisible"] = True}]
      169 MOVE                             R14 R2
      170 CALL                             R14 0 1
      171 SETTABLEKS                       R14 R13 K17 ["LayoutOrder"]
      173 DUPTABLE                         R14 K60 [{"Body"}]
      174 SETTABLEKS                       R6 R14 K59 ["Body"]
      176 CALL                             R11 3 1
      177 JUMP                             ; [+1]
      178 LOADNIL                          R11
      179 SETTABLEKS                       R11 R10 K30 ["Content"]
      181 CALL                             R7 3 -1
      182 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Components"]
       11 GETTABLEKS                       R2 R2 K7 ["Accordion"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Components"]
       25 GETTABLEKS                       R4 R4 K10 ["MarkdownText"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["ReactUtils"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K6 ["Components"]
       46 GETTABLEKS                       R7 R7 K13 ["ShimmerGradient"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K14 ["Types"]
       53 CALL                             R7 1 1
       54 GETTABLEKS                       R8 R2 K15 ["ScrollView"]
       56 GETTABLEKS                       R9 R2 K16 ["Text"]
       58 GETTABLEKS                       R10 R5 K17 ["createNextOrder"]
       60 GETTABLEKS                       R11 R4 K18 ["createElement"]
       62 DUPCLOSURE                       R12 K19 [PROTO_2]
       63 CAPTURE                          VAL R10
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R11
       66 CAPTURE                          VAL R8
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R6
       71 DUPTABLE                         R13 K25 [{["Type"] = "CreateSkill", ["ContentWidget"], ["Serialization"] = }]
       72 GETTABLEKS                       R14 R4 K26 ["memo"]
       74 MOVE                             R15 R12
       75 CALL                             R14 1 1
       76 SETTABLEKS                       R14 R13 K22 ["ContentWidget"]
       78 RETURN                           R13 1
