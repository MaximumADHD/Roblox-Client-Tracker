PROTO_0:
        0 NEWTABLE                         R1 2 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["List"]
        5 LOADK                            R3 K0 ["List"]
        6 SETTABLE                         R3 R1 R2
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["Grid"]
       10 LOADK                            R3 K1 ["Grid"]
       11 SETTABLE                         R3 R1 R2
       12 GETTABLE                         R3 R1 R0
       13 ORK                              R2 R3 K2 ["Unsupported"]
       14 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["createElement"]
        3 GETUPVAL                         R6 1
        4 NEWTABLE                         R7 1 0
        6 GETUPVAL                         R8 0
        7 GETTABLEKS                       R8 R8 K1 ["Tag"]
        9 LOADK                            R9 K2 ["X-RowM X-Fit X-Middle"]
       10 SETTABLE                         R9 R7 R8
       11 DUPTABLE                         R8 K5 [{"ViewTypeSelector", "Label"}]
       12 GETUPVAL                         R9 0
       13 GETTABLEKS                       R9 R9 K0 ["createElement"]
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
       37 GETUPVAL                         R12 0
       38 GETTABLEKS                       R12 R12 K1 ["Tag"]
       40 GETUPVAL                         R14 0
       41 GETTABLEKS                       R14 R14 K1 ["Tag"]
       43 GETTABLE                         R13 R4 R14
       44 SETTABLE                         R13 R11 R12
       45 CALL                             R9 2 1
       46 SETTABLEKS                       R9 R8 K3 ["ViewTypeSelector"]
       48 GETUPVAL                         R9 0
       49 GETTABLEKS                       R9 R9 K0 ["createElement"]
       51 GETUPVAL                         R10 3
       52 NEWTABLE                         R11 4 0
       54 NEWTABLE                         R13 2 0
       56 GETUPVAL                         R14 4
       57 GETTABLEKS                       R14 R14 K13 ["List"]
       59 LOADK                            R15 K13 ["List"]
       60 SETTABLE                         R15 R13 R14
       61 GETUPVAL                         R14 4
       62 GETTABLEKS                       R14 R14 K14 ["Grid"]
       64 LOADK                            R15 K14 ["Grid"]
       65 SETTABLE                         R15 R13 R14
       66 GETTABLE                         R14 R13 R0
       67 ORK                              R12 R14 K15 ["Unsupported"]
       68 SETTABLEKS                       R12 R11 K16 ["Text"]
       70 LOADN                            R12 2
       71 SETTABLEKS                       R12 R11 K12 ["LayoutOrder"]
       73 GETUPVAL                         R12 0
       74 GETTABLEKS                       R12 R12 K1 ["Tag"]
       76 LOADK                            R13 K17 ["X-Fit"]
       77 SETTABLE                         R13 R11 R12
       78 CALL                             R9 2 1
       79 SETTABLEKS                       R9 R8 K4 ["Label"]
       81 CALL                             R5 3 -1
       82 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADN                            R3 100
        9 CALL                             R2 1 2
       10 NEWTABLE                         R4 1 0
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K1 ["Tag"]
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
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADN                            R3 100
        9 CALL                             R2 1 2
       10 DUPTABLE                         R4 K3 [{["HideSlider"] = True}]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 MOVE                             R9 R3
       16 MOVE                             R10 R4
       17 CALL                             R5 5 -1
       18 RETURN                           R5 -1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADN                            R3 100
        9 CALL                             R2 1 2
       10 DUPTABLE                         R4 K3 [{["HideLabels"] = True}]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 MOVE                             R9 R3
       16 MOVE                             R10 R4
       17 CALL                             R5 5 -1
       18 RETURN                           R5 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["useState"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 2
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["useState"]
        8 LOADN                            R3 100
        9 CALL                             R2 1 2
       10 DUPTABLE                         R4 K4 [{["HideLabels"] = True, ["HideSlider"] = True}]
       11 GETUPVAL                         R5 2
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 MOVE                             R8 R2
       15 MOVE                             R9 R3
       16 MOVE                             R10 R4
       17 CALL                             R5 5 -1
       18 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K9 ["Components"]
       22 GETTABLEKS                       R3 R3 K10 ["Pane"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K6 [require]
       27 GETTABLEKS                       R4 R0 K2 ["UI"]
       29 GETTABLEKS                       R4 R4 K9 ["Components"]
       31 GETTABLEKS                       R4 R4 K11 ["TextLabel"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K6 [require]
       36 GETTABLEKS                       R5 R0 K2 ["UI"]
       38 GETTABLEKS                       R5 R5 K9 ["Components"]
       40 GETTABLEKS                       R5 R5 K12 ["ViewTypeSelector"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K6 [require]
       45 GETTABLEKS                       R6 R0 K2 ["UI"]
       47 GETTABLEKS                       R6 R6 K9 ["Components"]
       49 GETTABLEKS                       R6 R6 K13 ["ViewTypeButton"]
       51 GETTABLEKS                       R6 R6 K14 ["ViewType"]
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
       67 DUPTABLE                         R11 K23 [{["name"] = "Default", ["story"]}]
       68 DUPCLOSURE                       R12 K24 [PROTO_2]
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R6
       71 CAPTURE                          VAL R8
       72 SETTABLEKS                       R12 R11 K22 ["story"]
       74 DUPTABLE                         R12 K26 [{["name"] = "Icon Only", ["story"]}]
       75 DUPCLOSURE                       R13 K27 [PROTO_3]
       76 CAPTURE                          VAL R1
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R8
       79 SETTABLEKS                       R13 R12 K22 ["story"]
       81 DUPTABLE                         R13 K29 [{["name"] = "No Slider", ["story"]}]
       82 DUPCLOSURE                       R14 K30 [PROTO_4]
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R8
       86 SETTABLEKS                       R14 R13 K22 ["story"]
       88 DUPTABLE                         R14 K32 [{["name"] = "No Labels", ["story"]}]
       89 DUPCLOSURE                       R15 K33 [PROTO_5]
       90 CAPTURE                          VAL R1
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R8
       93 SETTABLEKS                       R15 R14 K22 ["story"]
       95 DUPTABLE                         R15 K35 [{["name"] = "No Labels or Slider", ["story"]}]
       96 DUPCLOSURE                       R16 K36 [PROTO_6]
       97 CAPTURE                          VAL R1
       98 CAPTURE                          VAL R6
       99 CAPTURE                          VAL R8
      100 SETTABLEKS                       R16 R15 K22 ["story"]
      102 SETLIST                          R10 R11 5 [1]
      104 SETTABLEKS                       R10 R9 K18 ["stories"]
      106 RETURN                           R9 1
