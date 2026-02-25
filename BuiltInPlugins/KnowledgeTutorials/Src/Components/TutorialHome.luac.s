PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["visible"]
        2 JUMPIF                           R1 ; [+2]
        3 LOADNIL                          R1
        4 RETURN                           R1 1
        5 GETTABLEKS                       R1 R0 K1 ["tutorialHome"]
        7 JUMPIFNOT                        R1 ; [+3]
        8 GETTABLEKS                       R2 R1 K2 ["ast"]
       10 JUMPIF                           R2 ; [+2]
       11 LOADNIL                          R2
       12 RETURN                           R2 1
       13 GETUPVAL                         R2 0
       14 NAMECALL                         R2 R2 K3 ["use"]
       16 CALL                             R2 1 1
       17 GETUPVAL                         R4 1
       18 GETTABLEKS                       R3 R4 K4 ["createElement"]
       20 GETUPVAL                         R4 2
       21 DUPTABLE                         R5 K6 [{"tag"}]
       22 LOADK                            R6 K7 ["col align-x-right gap-medium size-full bg-surface-100"]
       23 SETTABLEKS                       R6 R5 K5 ["tag"]
       25 DUPTABLE                         R6 K10 [{"ScrollView", "StartButton"}]
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R7 R8 K4 ["createElement"]
       29 GETUPVAL                         R8 3
       30 DUPTABLE                         R9 K14 [{"scroll", "Size", "LayoutOrder"}]
       31 DUPTABLE                         R10 K18 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
       32 GETIMPORT                        R11 K22 [Enum.AutomaticSize.Y]
       34 SETTABLEKS                       R11 R10 K15 ["AutomaticCanvasSize"]
       36 GETIMPORT                        R11 K23 [Enum.ScrollingDirection.Y]
       38 SETTABLEKS                       R11 R10 K16 ["ScrollingDirection"]
       40 GETIMPORT                        R11 K26 [UDim2.new]
       42 CALL                             R11 0 1
       43 SETTABLEKS                       R11 R10 K17 ["CanvasSize"]
       45 SETTABLEKS                       R10 R9 K11 ["scroll"]
       47 GETIMPORT                        R10 K26 [UDim2.new]
       49 LOADN                            R11 1
       50 LOADN                            R12 0
       51 LOADN                            R13 1
       52 LOADN                            R14 204
       53 CALL                             R10 4 1
       54 SETTABLEKS                       R10 R9 K12 ["Size"]
       56 LOADN                            R10 0
       57 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
       59 DUPTABLE                         R10 K28 [{"OffsetWrapper"}]
       60 GETUPVAL                         R12 1
       61 GETTABLEKS                       R11 R12 K4 ["createElement"]
       63 LOADK                            R12 K29 ["Frame"]
       64 DUPTABLE                         R13 K31 [{"Size", "AutomaticSize", "BackgroundTransparency"}]
       65 GETIMPORT                        R14 K33 [UDim2.fromScale]
       67 LOADN                            R15 1
       68 LOADN                            R16 0
       69 CALL                             R14 2 1
       70 SETTABLEKS                       R14 R13 K12 ["Size"]
       72 GETIMPORT                        R14 K22 [Enum.AutomaticSize.Y]
       74 SETTABLEKS                       R14 R13 K20 ["AutomaticSize"]
       76 LOADN                            R14 1
       77 SETTABLEKS                       R14 R13 K30 ["BackgroundTransparency"]
       79 DUPTABLE                         R14 K36 [{"ScrollBarOffset", "Markdown"}]
       80 GETUPVAL                         R16 1
       81 GETTABLEKS                       R15 R16 K4 ["createElement"]
       83 LOADK                            R16 K37 ["UIPadding"]
       84 DUPTABLE                         R17 K39 [{"PaddingRight"}]
       85 GETIMPORT                        R18 K41 [UDim.new]
       87 LOADN                            R19 0
       88 LOADN                            R20 12
       89 CALL                             R18 2 1
       90 SETTABLEKS                       R18 R17 K38 ["PaddingRight"]
       92 CALL                             R15 2 1
       93 SETTABLEKS                       R15 R14 K34 ["ScrollBarOffset"]
       95 GETUPVAL                         R16 1
       96 GETTABLEKS                       R15 R16 K4 ["createElement"]
       98 GETUPVAL                         R16 4
       99 DUPTABLE                         R17 K42 [{"ast"}]
      100 GETTABLEKS                       R18 R1 K2 ["ast"]
      102 SETTABLEKS                       R18 R17 K2 ["ast"]
      104 CALL                             R15 2 1
      105 SETTABLEKS                       R15 R14 K35 ["Markdown"]
      107 CALL                             R11 3 1
      108 SETTABLEKS                       R11 R10 K27 ["OffsetWrapper"]
      110 CALL                             R7 3 1
      111 SETTABLEKS                       R7 R6 K8 ["ScrollView"]
      113 GETUPVAL                         R8 1
      114 GETTABLEKS                       R7 R8 K4 ["createElement"]
      116 GETUPVAL                         R8 5
      117 DUPTABLE                         R9 K47 [{"LayoutOrder", "tag", "testId", "text", "variant", "onActivated"}]
      118 LOADN                            R10 2
      119 SETTABLEKS                       R10 R9 K13 ["LayoutOrder"]
      121 LOADK                            R10 K48 ["anchor-bottom-right position-bottom-right"]
      122 SETTABLEKS                       R10 R9 K5 ["tag"]
      124 LOADK                            R10 K49 ["--knowledge-tutorials-NextButton"]
      125 SETTABLEKS                       R10 R9 K43 ["testId"]
      127 LOADK                            R12 K50 ["Plugin"]
      128 LOADK                            R13 K51 ["Start"]
      129 NAMECALL                         R10 R2 K52 ["getText"]
      131 CALL                             R10 3 1
      132 SETTABLEKS                       R10 R9 K44 ["text"]
      134 GETUPVAL                         R13 6
      135 GETTABLEKS                       R12 R13 K53 ["Enums"]
      137 GETTABLEKS                       R11 R12 K54 ["ButtonVariant"]
      139 GETTABLEKS                       R10 R11 K55 ["Emphasis"]
      141 SETTABLEKS                       R10 R9 K45 ["variant"]
      143 GETTABLEKS                       R10 R0 K56 ["onStartTutorial"]
      145 SETTABLEKS                       R10 R9 K46 ["onActivated"]
      147 CALL                             R7 2 1
      148 SETTABLEKS                       R7 R6 K9 ["StartButton"]
      150 CALL                             R3 3 -1
      151 RETURN                           R3 -1

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
       54 DUPCLOSURE                       R11 K19 [PROTO_0]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R3
       62 RETURN                           R11 1
