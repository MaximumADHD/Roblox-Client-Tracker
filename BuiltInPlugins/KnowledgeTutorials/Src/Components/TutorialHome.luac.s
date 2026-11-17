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
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K4 ["createElement"]
       20 GETUPVAL                         R4 2
       21 DUPTABLE                         R5 K7 [{["tag"] = "col align-x-right gap-medium size-full bg-surface-100"}]
       22 DUPTABLE                         R6 K10 [{"ScrollView", "StartButton"}]
       23 GETUPVAL                         R7 1
       24 GETTABLEKS                       R7 R7 K4 ["createElement"]
       26 GETUPVAL                         R8 3
       27 DUPTABLE                         R9 K15 [{["scroll"], ["Size"], ["LayoutOrder"] = 0}]
       28 DUPTABLE                         R10 K19 [{"AutomaticCanvasSize", "ScrollingDirection", "CanvasSize"}]
       29 GETIMPORT                        R11 K23 [Enum.AutomaticSize.Y]
       31 SETTABLEKS                       R11 R10 K16 ["AutomaticCanvasSize"]
       33 GETIMPORT                        R11 K24 [Enum.ScrollingDirection.Y]
       35 SETTABLEKS                       R11 R10 K17 ["ScrollingDirection"]
       37 GETIMPORT                        R11 K27 [UDim2.new]
       39 CALL                             R11 0 1
       40 SETTABLEKS                       R11 R10 K18 ["CanvasSize"]
       42 SETTABLEKS                       R10 R9 K11 ["scroll"]
       44 GETIMPORT                        R10 K27 [UDim2.new]
       46 LOADN                            R11 1
       47 LOADN                            R12 0
       48 LOADN                            R13 1
       49 LOADN                            R14 -52
       50 CALL                             R10 4 1
       51 SETTABLEKS                       R10 R9 K12 ["Size"]
       53 DUPTABLE                         R10 K29 [{"OffsetWrapper"}]
       54 GETUPVAL                         R11 1
       55 GETTABLEKS                       R11 R11 K4 ["createElement"]
       57 LOADK                            R12 K30 ["Frame"]
       58 DUPTABLE                         R13 K33 [{["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1}]
       59 GETIMPORT                        R14 K35 [UDim2.fromScale]
       61 LOADN                            R15 1
       62 LOADN                            R16 0
       63 CALL                             R14 2 1
       64 SETTABLEKS                       R14 R13 K12 ["Size"]
       66 GETIMPORT                        R14 K23 [Enum.AutomaticSize.Y]
       68 SETTABLEKS                       R14 R13 K21 ["AutomaticSize"]
       70 DUPTABLE                         R14 K38 [{"ScrollBarOffset", "Markdown"}]
       71 GETUPVAL                         R15 1
       72 GETTABLEKS                       R15 R15 K4 ["createElement"]
       74 LOADK                            R16 K39 ["UIPadding"]
       75 DUPTABLE                         R17 K41 [{"PaddingRight"}]
       76 GETIMPORT                        R18 K43 [UDim.new]
       78 LOADN                            R19 0
       79 LOADN                            R20 12
       80 CALL                             R18 2 1
       81 SETTABLEKS                       R18 R17 K40 ["PaddingRight"]
       83 CALL                             R15 2 1
       84 SETTABLEKS                       R15 R14 K36 ["ScrollBarOffset"]
       86 GETUPVAL                         R15 1
       87 GETTABLEKS                       R15 R15 K4 ["createElement"]
       89 GETUPVAL                         R16 4
       90 DUPTABLE                         R17 K44 [{"ast"}]
       91 GETTABLEKS                       R18 R1 K2 ["ast"]
       93 SETTABLEKS                       R18 R17 K2 ["ast"]
       95 CALL                             R15 2 1
       96 SETTABLEKS                       R15 R14 K37 ["Markdown"]
       98 CALL                             R11 3 1
       99 SETTABLEKS                       R11 R10 K28 ["OffsetWrapper"]
      101 CALL                             R7 3 1
      102 SETTABLEKS                       R7 R6 K8 ["ScrollView"]
      104 GETUPVAL                         R7 1
      105 GETTABLEKS                       R7 R7 K4 ["createElement"]
      107 GETUPVAL                         R8 5
      108 DUPTABLE                         R9 K52 [{["LayoutOrder"] = 2, ["tag"] = "position-bottom-right anchor-bottom-right", ["testId"] = "--knowledge-tutorials-NextButton", ["text"], ["variant"], ["onActivated"]}]
      109 LOADK                            R12 K53 ["Plugin"]
      110 LOADK                            R13 K54 ["Start"]
      111 NAMECALL                         R10 R2 K55 ["getText"]
      113 CALL                             R10 3 1
      114 SETTABLEKS                       R10 R9 K49 ["text"]
      116 GETUPVAL                         R10 6
      117 GETTABLEKS                       R10 R10 K56 ["Enums"]
      119 GETTABLEKS                       R10 R10 K57 ["ButtonVariant"]
      121 GETTABLEKS                       R10 R10 K58 ["Emphasis"]
      123 SETTABLEKS                       R10 R9 K50 ["variant"]
      125 GETTABLEKS                       R10 R0 K59 ["onStartTutorial"]
      127 SETTABLEKS                       R10 R9 K51 ["onActivated"]
      129 CALL                             R7 2 1
      130 SETTABLEKS                       R7 R6 K9 ["StartButton"]
      132 CALL                             R3 3 -1
      133 RETURN                           R3 -1

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
       54 DUPCLOSURE                       R11 K19 [PROTO_0]
       55 CAPTURE                          VAL R6
       56 CAPTURE                          VAL R2
       57 CAPTURE                          VAL R7
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R10
       60 CAPTURE                          VAL R9
       61 CAPTURE                          VAL R3
       62 RETURN                           R11 1
