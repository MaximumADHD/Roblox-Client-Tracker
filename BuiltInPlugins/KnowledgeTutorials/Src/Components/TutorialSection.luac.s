PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R0 R1 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R1 1
        7 GETTABLEKS                       R0 R1 K0 ["current"]
        9 GETIMPORT                        R1 K3 [Vector2.zero]
       11 SETTABLEKS                       R1 R0 K4 ["CanvasPosition"]
       13 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["visible"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K1 ["tutorialSection"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K2 ["ast"]
       10 JUMPIF                           R2 ; [+2]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 0
       14 NAMECALL                         R2 R2 K3 ["use"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K4 ["useRef"]
       20 LOADNIL                          R4
       21 CALL                             R3 1 1
       22 GETUPVAL                         R5 1
       23 GETTABLEKS                       R4 R5 K5 ["useEffect"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R6 0 1
       30 MOVE                             R7 R1
       31 SETLIST                          R6 R7 1 [1]
       33 CALL                             R4 2 0
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K6 ["createElement"]
       37 GETUPVAL                         R5 2
       38 DUPTABLE                         R6 K8 [{"tag"}]
       39 LOADK                            R7 K9 ["col gap-medium size-full bg-surface-100"]
       40 SETTABLEKS                       R7 R6 K7 ["tag"]
       42 DUPTABLE                         R7 K12 [{"ScrollView", "Buttons"}]
       43 GETUPVAL                         R9 1
       44 GETTABLEKS                       R8 R9 K6 ["createElement"]
       46 GETUPVAL                         R9 3
       47 DUPTABLE                         R10 K17 [{"scroll", "scrollingFrameRef", "LayoutOrder", "Size"}]
       48 DUPTABLE                         R11 K21 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
       49 GETIMPORT                        R12 K25 [Enum.AutomaticSize.Y]
       51 SETTABLEKS                       R12 R11 K18 ["AutomaticCanvasSize"]
       53 GETIMPORT                        R12 K26 [Enum.ScrollingDirection.Y]
       55 SETTABLEKS                       R12 R11 K19 ["ScrollingDirection"]
       57 GETIMPORT                        R12 K29 [UDim2.new]
       59 CALL                             R12 0 1
       60 SETTABLEKS                       R12 R11 K20 ["CanvasSize"]
       62 SETTABLEKS                       R11 R10 K13 ["scroll"]
       64 SETTABLEKS                       R3 R10 K14 ["scrollingFrameRef"]
       66 LOADN                            R11 0
       67 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
       69 GETIMPORT                        R11 K29 [UDim2.new]
       71 LOADN                            R12 1
       72 LOADN                            R13 0
       73 LOADN                            R14 1
       74 LOADN                            R15 204
       75 CALL                             R11 4 1
       76 SETTABLEKS                       R11 R10 K16 ["Size"]
       78 DUPTABLE                         R11 K31 [{"OffsetWrapper"}]
       79 GETUPVAL                         R13 1
       80 GETTABLEKS                       R12 R13 K6 ["createElement"]
       82 LOADK                            R13 K32 ["Frame"]
       83 DUPTABLE                         R14 K34 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
       84 GETIMPORT                        R15 K36 [UDim2.fromScale]
       86 LOADN                            R16 1
       87 LOADN                            R17 0
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K16 ["Size"]
       91 GETIMPORT                        R15 K25 [Enum.AutomaticSize.Y]
       93 SETTABLEKS                       R15 R14 K23 ["AutomaticSize"]
       95 LOADN                            R15 1
       96 SETTABLEKS                       R15 R14 K33 ["BackgroundTransparency"]
       98 DUPTABLE                         R15 K39 [{"ScrollBarOffset", "Markdown"}]
       99 GETUPVAL                         R17 1
      100 GETTABLEKS                       R16 R17 K6 ["createElement"]
      102 LOADK                            R17 K40 ["UIPadding"]
      103 DUPTABLE                         R18 K42 [{"PaddingRight"}]
      104 GETIMPORT                        R19 K44 [UDim.new]
      106 LOADN                            R20 0
      107 LOADN                            R21 12
      108 CALL                             R19 2 1
      109 SETTABLEKS                       R19 R18 K41 ["PaddingRight"]
      111 CALL                             R16 2 1
      112 SETTABLEKS                       R16 R15 K37 ["ScrollBarOffset"]
      114 GETUPVAL                         R17 1
      115 GETTABLEKS                       R16 R17 K6 ["createElement"]
      117 GETUPVAL                         R17 4
      118 DUPTABLE                         R18 K45 [{"ast"}]
      119 GETTABLEKS                       R19 R1 K2 ["ast"]
      121 SETTABLEKS                       R19 R18 K2 ["ast"]
      123 CALL                             R16 2 1
      124 SETTABLEKS                       R16 R15 K38 ["Markdown"]
      126 CALL                             R12 3 1
      127 SETTABLEKS                       R12 R11 K30 ["OffsetWrapper"]
      129 CALL                             R8 3 1
      130 SETTABLEKS                       R8 R7 K10 ["ScrollView"]
      132 GETUPVAL                         R9 1
      133 GETTABLEKS                       R8 R9 K6 ["createElement"]
      135 GETUPVAL                         R9 2
      136 DUPTABLE                         R10 K46 [{"tag", "LayoutOrder"}]
      137 LOADK                            R11 K47 ["row flex-between align-x-center size-full-0 auto-y anchor-bottom-center"]
      138 SETTABLEKS                       R11 R10 K7 ["tag"]
      140 LOADN                            R11 1
      141 SETTABLEKS                       R11 R10 K15 ["LayoutOrder"]
      143 DUPTABLE                         R11 K50 [{"PreviousButton", "NextButton"}]
      144 GETUPVAL                         R13 1
      145 GETTABLEKS                       R12 R13 K6 ["createElement"]
      147 GETUPVAL                         R13 5
      148 DUPTABLE                         R14 K55 [{"text", "variant", "onActivated", "LayoutOrder", "testId"}]
      149 LOADK                            R17 K56 ["Plugin"]
      150 LOADK                            R18 K57 ["Previous"]
      151 NAMECALL                         R15 R2 K58 ["getText"]
      153 CALL                             R15 3 1
      154 SETTABLEKS                       R15 R14 K51 ["text"]
      156 GETUPVAL                         R18 6
      157 GETTABLEKS                       R17 R18 K59 ["Enums"]
      159 GETTABLEKS                       R16 R17 K60 ["ButtonVariant"]
      161 GETTABLEKS                       R15 R16 K61 ["Standard"]
      163 SETTABLEKS                       R15 R14 K52 ["variant"]
      165 GETTABLEKS                       R15 R0 K62 ["onPrevious"]
      167 SETTABLEKS                       R15 R14 K53 ["onActivated"]
      169 LOADN                            R15 0
      170 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      172 LOADK                            R15 K63 ["--knowledge-tutorials-PrevButton"]
      173 SETTABLEKS                       R15 R14 K54 ["testId"]
      175 CALL                             R12 2 1
      176 SETTABLEKS                       R12 R11 K48 ["PreviousButton"]
      178 GETUPVAL                         R13 1
      179 GETTABLEKS                       R12 R13 K6 ["createElement"]
      181 GETUPVAL                         R13 5
      182 DUPTABLE                         R14 K55 [{"text", "variant", "onActivated", "LayoutOrder", "testId"}]
      183 LOADK                            R17 K56 ["Plugin"]
      184 GETTABLEKS                       R19 R0 K64 ["showFinish"]
      186 JUMPIFNOT                        R19 ; [+2]
      187 LOADK                            R18 K65 ["Finish"]
      188 JUMP                             ; [+1]
      189 LOADK                            R18 K66 ["Next"]
      190 NAMECALL                         R15 R2 K58 ["getText"]
      192 CALL                             R15 3 1
      193 SETTABLEKS                       R15 R14 K51 ["text"]
      195 GETUPVAL                         R18 6
      196 GETTABLEKS                       R17 R18 K59 ["Enums"]
      198 GETTABLEKS                       R16 R17 K60 ["ButtonVariant"]
      200 GETTABLEKS                       R15 R16 K67 ["Emphasis"]
      202 SETTABLEKS                       R15 R14 K52 ["variant"]
      204 GETTABLEKS                       R15 R0 K68 ["onNext"]
      206 SETTABLEKS                       R15 R14 K53 ["onActivated"]
      208 LOADN                            R15 1
      209 SETTABLEKS                       R15 R14 K15 ["LayoutOrder"]
      211 LOADK                            R15 K69 ["--knowledge-tutorials-NextButton"]
      212 SETTABLEKS                       R15 R14 K54 ["testId"]
      214 CALL                             R12 2 1
      215 SETTABLEKS                       R12 R11 K49 ["NextButton"]
      217 CALL                             R8 3 1
      218 SETTABLEKS                       R8 R7 K11 ["Buttons"]
      220 CALL                             R4 3 -1
      221 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R6 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETTABLEKS                       R7 R3 K14 ["View"]
       41 GETTABLEKS                       R8 R3 K15 ["ScrollView"]
       43 GETTABLEKS                       R9 R3 K16 ["Button"]
       45 GETIMPORT                        R10 K5 [require]
       47 GETTABLEKS                       R13 R0 K6 ["Src"]
       49 GETTABLEKS                       R12 R13 K17 ["Components"]
       51 GETTABLEKS                       R11 R12 K18 ["Markdown"]
       53 CALL                             R10 1 1
       54 DUPCLOSURE                       R11 K19 [PROTO_1]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R3
       62 RETURN                           R11 1
