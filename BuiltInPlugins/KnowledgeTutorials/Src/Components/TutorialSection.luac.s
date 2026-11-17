PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+11]
        2 GETUPVAL                         R0 1
        3 GETTABLEKS                       R0 R0 K0 ["current"]
        5 JUMPIFNOT                        R0 ; [+7]
        6 GETUPVAL                         R0 1
        7 GETTABLEKS                       R0 R0 K0 ["current"]
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
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["useRef"]
       20 LOADNIL                          R4
       21 CALL                             R3 1 1
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K5 ["useEffect"]
       25 NEWCLOSURE                       R5 P0
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 NEWTABLE                         R6 0 1
       30 MOVE                             R7 R1
       31 SETLIST                          R6 R7 1 [1]
       33 CALL                             R4 2 0
       34 GETUPVAL                         R4 1
       35 GETTABLEKS                       R4 R4 K6 ["createElement"]
       37 GETUPVAL                         R5 2
       38 DUPTABLE                         R6 K9 [{["tag"] = "col gap-medium size-full bg-surface-100"}]
       39 DUPTABLE                         R7 K12 [{"ScrollView", "Buttons"}]
       40 GETUPVAL                         R8 1
       41 GETTABLEKS                       R8 R8 K6 ["createElement"]
       43 GETUPVAL                         R9 3
       44 DUPTABLE                         R10 K18 [{["scroll"], ["scrollingFrameRef"], ["LayoutOrder"] = 0, ["Size"]}]
       45 DUPTABLE                         R11 K22 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
       46 GETIMPORT                        R12 K26 [Enum.AutomaticSize.Y]
       48 SETTABLEKS                       R12 R11 K19 ["AutomaticCanvasSize"]
       50 GETIMPORT                        R12 K27 [Enum.ScrollingDirection.Y]
       52 SETTABLEKS                       R12 R11 K20 ["ScrollingDirection"]
       54 GETIMPORT                        R12 K30 [UDim2.new]
       56 CALL                             R12 0 1
       57 SETTABLEKS                       R12 R11 K21 ["CanvasSize"]
       59 SETTABLEKS                       R11 R10 K13 ["scroll"]
       61 SETTABLEKS                       R3 R10 K14 ["scrollingFrameRef"]
       63 GETIMPORT                        R11 K30 [UDim2.new]
       65 LOADN                            R12 1
       66 LOADN                            R13 0
       67 LOADN                            R14 1
       68 LOADN                            R15 -52
       69 CALL                             R11 4 1
       70 SETTABLEKS                       R11 R10 K17 ["Size"]
       72 DUPTABLE                         R11 K32 [{"OffsetWrapper"}]
       73 GETUPVAL                         R12 1
       74 GETTABLEKS                       R12 R12 K6 ["createElement"]
       76 LOADK                            R13 K33 ["Frame"]
       77 DUPTABLE                         R14 K36 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
       78 GETIMPORT                        R15 K38 [UDim2.fromScale]
       80 LOADN                            R16 1
       81 LOADN                            R17 0
       82 CALL                             R15 2 1
       83 SETTABLEKS                       R15 R14 K17 ["Size"]
       85 GETIMPORT                        R15 K26 [Enum.AutomaticSize.Y]
       87 SETTABLEKS                       R15 R14 K24 ["AutomaticSize"]
       89 DUPTABLE                         R15 K41 [{"ScrollBarOffset", "Markdown"}]
       90 GETUPVAL                         R16 1
       91 GETTABLEKS                       R16 R16 K6 ["createElement"]
       93 LOADK                            R17 K42 ["UIPadding"]
       94 DUPTABLE                         R18 K44 [{"PaddingRight"}]
       95 GETIMPORT                        R19 K46 [UDim.new]
       97 LOADN                            R20 0
       98 LOADN                            R21 12
       99 CALL                             R19 2 1
      100 SETTABLEKS                       R19 R18 K43 ["PaddingRight"]
      102 CALL                             R16 2 1
      103 SETTABLEKS                       R16 R15 K39 ["ScrollBarOffset"]
      105 GETUPVAL                         R16 1
      106 GETTABLEKS                       R16 R16 K6 ["createElement"]
      108 GETUPVAL                         R17 4
      109 DUPTABLE                         R18 K47 [{"ast"}]
      110 GETTABLEKS                       R19 R1 K2 ["ast"]
      112 SETTABLEKS                       R19 R18 K2 ["ast"]
      114 CALL                             R16 2 1
      115 SETTABLEKS                       R16 R15 K40 ["Markdown"]
      117 CALL                             R12 3 1
      118 SETTABLEKS                       R12 R11 K31 ["OffsetWrapper"]
      120 CALL                             R8 3 1
      121 SETTABLEKS                       R8 R7 K10 ["ScrollView"]
      123 GETUPVAL                         R8 1
      124 GETTABLEKS                       R8 R8 K6 ["createElement"]
      126 GETUPVAL                         R9 2
      127 DUPTABLE                         R10 K49 [{["tag"] = "row flex-between align-x-center anchor-bottom-center size-full-0 auto-y", ["LayoutOrder"] = 1}]
      128 DUPTABLE                         R11 K52 [{"PreviousButton", "NextButton"}]
      129 GETUPVAL                         R12 1
      130 GETTABLEKS                       R12 R12 K6 ["createElement"]
      132 GETUPVAL                         R13 5
      133 DUPTABLE                         R14 K58 [{["text"], ["variant"], ["onActivated"], ["LayoutOrder"] = 0, ["testId"] = "--knowledge-tutorials-PrevButton"}]
      134 LOADK                            R17 K59 ["Plugin"]
      135 LOADK                            R18 K60 ["Previous"]
      136 NAMECALL                         R15 R2 K61 ["getText"]
      138 CALL                             R15 3 1
      139 SETTABLEKS                       R15 R14 K53 ["text"]
      141 GETUPVAL                         R15 6
      142 GETTABLEKS                       R15 R15 K62 ["Enums"]
      144 GETTABLEKS                       R15 R15 K63 ["ButtonVariant"]
      146 GETTABLEKS                       R15 R15 K64 ["Standard"]
      148 SETTABLEKS                       R15 R14 K54 ["variant"]
      150 GETTABLEKS                       R15 R0 K65 ["onPrevious"]
      152 SETTABLEKS                       R15 R14 K55 ["onActivated"]
      154 CALL                             R12 2 1
      155 SETTABLEKS                       R12 R11 K50 ["PreviousButton"]
      157 GETUPVAL                         R12 1
      158 GETTABLEKS                       R12 R12 K6 ["createElement"]
      160 GETUPVAL                         R13 5
      161 DUPTABLE                         R14 K67 [{["text"], ["variant"], ["onActivated"], ["LayoutOrder"] = 1, ["testId"] = "--knowledge-tutorials-NextButton"}]
      162 LOADK                            R17 K59 ["Plugin"]
      163 GETTABLEKS                       R19 R0 K68 ["showFinish"]
      165 JUMPIFNOT                        R19 ; [+2]
      166 LOADK                            R18 K69 ["Finish"]
      167 JUMP                             ; [+1]
      168 LOADK                            R18 K70 ["Next"]
      169 NAMECALL                         R15 R2 K61 ["getText"]
      171 CALL                             R15 3 1
      172 SETTABLEKS                       R15 R14 K53 ["text"]
      174 GETUPVAL                         R15 6
      175 GETTABLEKS                       R15 R15 K62 ["Enums"]
      177 GETTABLEKS                       R15 R15 K63 ["ButtonVariant"]
      179 GETTABLEKS                       R15 R15 K71 ["Emphasis"]
      181 SETTABLEKS                       R15 R14 K54 ["variant"]
      183 GETTABLEKS                       R15 R0 K72 ["onNext"]
      185 SETTABLEKS                       R15 R14 K55 ["onActivated"]
      187 CALL                             R12 2 1
      188 SETTABLEKS                       R12 R11 K51 ["NextButton"]
      190 CALL                             R8 3 1
      191 SETTABLEKS                       R8 R7 K11 ["Buttons"]
      193 CALL                             R4 3 -1
      194 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Framework"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R4 K12 ["ContextServices"]
       37 GETTABLEKS                       R6 R5 K13 ["Localization"]
       39 GETTABLEKS                       R7 R3 K14 ["View"]
       41 GETTABLEKS                       R8 R3 K15 ["ScrollView"]
       43 GETTABLEKS                       R9 R3 K16 ["Button"]
       45 GETIMPORT                        R10 K5 [require]
       47 GETTABLEKS                       R11 R0 K6 ["Src"]
       49 GETTABLEKS                       R11 R11 K17 ["Components"]
       51 GETTABLEKS                       R11 R11 K18 ["Markdown"]
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
