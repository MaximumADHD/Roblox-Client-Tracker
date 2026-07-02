PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 NEWTABLE                         R4 8 0
        8 GETIMPORT                        R5 K4 [Enum.AutomaticSize.XY]
       10 SETTABLEKS                       R5 R4 K2 ["AutomaticSize"]
       12 GETIMPORT                        R5 K7 [Enum.FillDirection.Horizontal]
       14 SETTABLEKS                       R5 R4 K8 ["Layout"]
       16 GETTABLEKS                       R5 R0 K9 ["LayoutOrder"]
       18 SETTABLEKS                       R5 R4 K9 ["LayoutOrder"]
       20 LOADN                            R5 20
       21 SETTABLEKS                       R5 R4 K10 ["Padding"]
       23 LOADN                            R5 10
       24 SETTABLEKS                       R5 R4 K11 ["Spacing"]
       26 GETTABLEKS                       R5 R0 K12 ["PaneRef"]
       28 SETTABLEKS                       R5 R4 K13 ["ref"]
       30 GETUPVAL                         R5 1
       31 GETTABLEKS                       R5 R5 K14 ["Change"]
       33 GETTABLEKS                       R5 R5 K15 ["AbsoluteSize"]
       35 GETUPVAL                         R7 1
       36 GETTABLEKS                       R7 R7 K14 ["Change"]
       38 GETTABLEKS                       R7 R7 K15 ["AbsoluteSize"]
       40 GETTABLE                         R6 R0 R7
       41 SETTABLE                         R6 R4 R5
       42 DUPTABLE                         R5 K18 [{"Image", "Text"}]
       43 GETUPVAL                         R6 1
       44 GETTABLEKS                       R6 R6 K0 ["createElement"]
       46 GETUPVAL                         R7 3
       47 DUPTABLE                         R8 K20 [{"LayoutOrder", "Image", "Size"}]
       48 MOVE                             R9 R1
       49 CALL                             R9 0 1
       50 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       52 GETTABLEKS                       R9 R0 K16 ["Image"]
       54 SETTABLEKS                       R9 R8 K16 ["Image"]
       56 GETTABLEKS                       R9 R0 K21 ["IconSize"]
       58 SETTABLEKS                       R9 R8 K19 ["Size"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K16 ["Image"]
       63 GETUPVAL                         R6 1
       64 GETTABLEKS                       R6 R6 K0 ["createElement"]
       66 GETUPVAL                         R7 4
       67 DUPTABLE                         R8 K24 [{["AutomaticSize"], ["LayoutOrder"], ["Style"] = "Bold", ["Text"]}]
       68 GETIMPORT                        R9 K4 [Enum.AutomaticSize.XY]
       70 SETTABLEKS                       R9 R8 K2 ["AutomaticSize"]
       72 MOVE                             R9 R1
       73 CALL                             R9 0 1
       74 SETTABLEKS                       R9 R8 K9 ["LayoutOrder"]
       76 GETTABLEKS                       R9 R0 K17 ["Text"]
       78 SETTABLEKS                       R9 R8 K17 ["Text"]
       80 CALL                             R6 2 1
       81 SETTABLEKS                       R6 R5 K17 ["Text"]
       83 CALL                             R2 3 -1
       84 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["React"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["UI"]
       25 GETTABLEKS                       R4 R3 K9 ["Image"]
       27 GETTABLEKS                       R5 R3 K10 ["Pane"]
       29 GETTABLEKS                       R6 R3 K11 ["TextLabel"]
       31 GETIMPORT                        R7 K4 [require]
       33 GETTABLEKS                       R8 R0 K12 ["Src"]
       35 GETTABLEKS                       R8 R8 K13 ["Util"]
       37 GETTABLEKS                       R8 R8 K14 ["counter"]
       39 CALL                             R7 1 1
       40 DUPCLOSURE                       R8 K15 [PROTO_0]
       41 CAPTURE                          VAL R7
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R5
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R6
       46 RETURN                           R8 1
