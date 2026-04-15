PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K0 ["List"]
        5 LOADK                            R3 K0 ["List"]
        6 SETTABLE                         R3 R1 R2
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K1 ["Grid"]
       10 LOADK                            R3 K1 ["Grid"]
       11 SETTABLE                         R3 R1 R2
       12 GETTABLE                         R3 R1 R0
       13 ORK                              R2 R3 K2 ["Unsupported"]
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R6 0
        1 GETTABLEKS                       R5 R6 K0 ["createElement"]
        3 GETUPVAL                         R6 1
        4 NEWTABLE                         R7 1 0
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R8 R9 K1 ["Tag"]
        9 LOADK                            R9 K2 ["X-RowM X-Fit X-Middle"]
       10 SETTABLE                         R9 R7 R8
       11 DUPTABLE                         R8 K5 [{"ViewTypeSelector", "Label"}]
       12 GETUPVAL                         R10 0
       13 GETTABLEKS                       R9 R10 K0 ["createElement"]
       15 GETUPVAL                         R10 2
       16 NEWTABLE                         R11 8 0
       18 SETTABLEKS                       R3 R11 K6 ["OnGridTileSizeChanged"]
       20 SETTABLEKS                       R1 R11 K7 ["OnViewTypeSelected"]
       22 SETTABLEKS                       R0 R11 K8 ["Default"]
       24 SETTABLEKS                       R2 R11 K9 ["DefaultGridTileSize"]
       26 GETTABLEKS                       R12 R4 K10 ["HideSlider"]
       28 SETTABLEKS                       R12 R11 K10 ["HideSlider"]
       30 GETTABLEKS                       R12 R4 K11 ["HideLabels"]
       32 SETTABLEKS                       R12 R11 K11 ["HideLabels"]
       34 LOADN                            R12 1
       35 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       37 GETUPVAL                         R13 0
       38 GETTABLEKS                       R12 R13 K1 ["Tag"]
       40 GETUPVAL                         R15 0
       41 GETTABLEKS                       R14 R15 K1 ["Tag"]
       43 GETTABLE                         R13 R4 R14
       44 SETTABLE                         R13 R11 R12
       45 CALL                             R9 2 1
       46 SETTABLEKS                       R9 R8 K3 ["ViewTypeSelector"]
       48 GETUPVAL                         R10 0
       49 GETTABLEKS                       R9 R10 K0 ["createElement"]
       51 GETUPVAL                         R10 3
       52 NEWTABLE                         R11 4 0
       54 NEWTABLE                         R13 2 0
       56 GETUPVAL                         R15 4
       57 GETTABLEKS                       R14 R15 K13 ["List"]
       59 LOADK                            R15 K13 ["List"]
       60 SETTABLE                         R15 R13 R14
       61 GETUPVAL                         R15 4
       62 GETTABLEKS                       R14 R15 K14 ["Grid"]
       64 LOADK                            R15 K14 ["Grid"]
       65 SETTABLE                         R15 R13 R14
       66 GETTABLE                         R14 R13 R0
       67 ORK                              R12 R14 K15 ["Unsupported"]
       68 SETTABLEKS                       R12 R11 K16 ["Text"]
       70 LOADN                            R12 2
       71 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R12 R13 K1 ["Tag"]
       76 LOADK                            R13 K17 ["X-Fit"]
       77 SETTABLE                         R13 R11 R12
       78 CALL                             R9 2 1
       79 SETTABLEKS                       R9 R8 K4 ["Label"]
       81 CALL                             R5 3 -1
       82 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 LOADN                            R3 100
        9 CALL                             R2 1 2
       10 NEWTABLE                         R4 0 0
       12 GETUPVAL                         R5 2
       13 MOVE                             R6 R0
       14 MOVE                             R7 R1
       15 MOVE                             R8 R2
       16 MOVE                             R9 R3
       17 MOVE                             R10 R4
       18 CALL                             R5 5 -1
       19 RETURN                           R5 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 LOADN                            R3 100
        9 CALL                             R2 1 2
       10 NEWTABLE                         R4 1 0
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K1 ["Tag"]
       15 LOADK                            R6 K2 ["IconOnly"]
       16 SETTABLE                         R6 R4 R5
       17 GETUPVAL                         R5 2
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 MOVE                             R8 R2
       21 MOVE                             R9 R3
       22 MOVE                             R10 R4
       23 CALL                             R5 5 -1
       24 RETURN                           R5 -1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 LOADN                            R3 100
        9 CALL                             R2 1 2
       10 DUPTABLE                         R4 K2 [{"HideSlider"}]
       11 LOADB                            R5 1
       12 SETTABLEKS                       R5 R4 K1 ["HideSlider"]
       14 GETUPVAL                         R5 2
       15 MOVE                             R6 R0
       16 MOVE                             R7 R1
       17 MOVE                             R8 R2
       18 MOVE                             R9 R3
       19 MOVE                             R10 R4
       20 CALL                             R5 5 -1
       21 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 LOADN                            R3 100
        9 CALL                             R2 1 2
       10 DUPTABLE                         R4 K2 [{"HideLabels"}]
       11 LOADB                            R5 1
       12 SETTABLEKS                       R5 R4 K1 ["HideLabels"]
       14 GETUPVAL                         R5 2
       15 MOVE                             R6 R0
       16 MOVE                             R7 R1
       17 MOVE                             R8 R2
       18 MOVE                             R9 R3
       19 MOVE                             R10 R4
       20 CALL                             R5 5 -1
       21 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["useState"]
        8 LOADN                            R3 100
        9 CALL                             R2 1 2
       10 DUPTABLE                         R4 K3 [{"HideLabels", "HideSlider"}]
       11 LOADB                            R5 1
       12 SETTABLEKS                       R5 R4 K1 ["HideLabels"]
       14 LOADB                            R5 1
       15 SETTABLEKS                       R5 R4 K2 ["HideSlider"]
       17 GETUPVAL                         R5 2
       18 MOVE                             R6 R0
       19 MOVE                             R7 R1
       20 MOVE                             R8 R2
       21 MOVE                             R9 R3
       22 MOVE                             R10 R4
       23 CALL                             R5 5 -1
       24 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R5 R0 K2 ["UI"]
       20 GETTABLEKS                       R4 R5 K9 ["Components"]
       22 GETTABLEKS                       R3 R4 K10 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R6 R0 K2 ["UI"]
       29 GETTABLEKS                       R5 R6 K9 ["Components"]
       31 GETTABLEKS                       R4 R5 K11 ["TextLabel"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R7 R0 K2 ["UI"]
       38 GETTABLEKS                       R6 R7 K9 ["Components"]
       40 GETTABLEKS                       R5 R6 K12 ["ViewTypeSelector"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R9 R0 K2 ["UI"]
       47 GETTABLEKS                       R8 R9 K9 ["Components"]
       49 GETTABLEKS                       R7 R8 K13 ["ViewTypeButton"]
       51 GETTABLEKS                       R6 R7 K14 ["ViewType"]
       53 CALL                             R5 1 1
       54 GETTABLEKS                       R6 R5 K15 ["List"]
       56 DUPCLOSURE                       R7 K16 [PROTO_0]
       57 CAPTURE                          VAL R5
       58 DUPCLOSURE                       R8 K17 [PROTO_1]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R3
       63 CAPTURE                          VAL R5
       64 DUPTABLE                         R9 K19 [{"stories"}]
       65 NEWTABLE                         R10 0 5
       67 DUPTABLE                         R11 K22 [{"name", "story"}]
       68 LOADK                            R12 K23 ["Default"]
       69 SETTABLEKS                       R12 R11 K20 ["name"]
       71 DUPCLOSURE                       R12 K24 [PROTO_2]
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R8
       75 SETTABLEKS                       R12 R11 K21 ["story"]
       77 DUPTABLE                         R12 K22 [{"name", "story"}]
       78 LOADK                            R13 K25 ["Icon Only"]
       79 SETTABLEKS                       R13 R12 K20 ["name"]
       81 DUPCLOSURE                       R13 K26 [PROTO_3]
       82 CAPTURE                          VAL R1
       83 CAPTURE                          VAL R6
       84 CAPTURE                          VAL R8
       85 SETTABLEKS                       R13 R12 K21 ["story"]
       87 DUPTABLE                         R13 K22 [{"name", "story"}]
       88 LOADK                            R14 K27 ["No Slider"]
       89 SETTABLEKS                       R14 R13 K20 ["name"]
       91 DUPCLOSURE                       R14 K28 [PROTO_4]
       92 CAPTURE                          VAL R1
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R8
       95 SETTABLEKS                       R14 R13 K21 ["story"]
       97 DUPTABLE                         R14 K22 [{"name", "story"}]
       98 LOADK                            R15 K29 ["No Labels"]
       99 SETTABLEKS                       R15 R14 K20 ["name"]
      101 DUPCLOSURE                       R15 K30 [PROTO_5]
      102 CAPTURE                          VAL R1
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R8
      105 SETTABLEKS                       R15 R14 K21 ["story"]
      107 DUPTABLE                         R15 K22 [{"name", "story"}]
      108 LOADK                            R16 K31 ["No Labels or Slider"]
      109 SETTABLEKS                       R16 R15 K20 ["name"]
      111 DUPCLOSURE                       R16 K32 [PROTO_6]
      112 CAPTURE                          VAL R1
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R8
      115 SETTABLEKS                       R16 R15 K21 ["story"]
      117 SETLIST                          R10 R11 5 [1]
      119 SETTABLEKS                       R10 R9 K18 ["stories"]
      121 RETURN                           R9 1
