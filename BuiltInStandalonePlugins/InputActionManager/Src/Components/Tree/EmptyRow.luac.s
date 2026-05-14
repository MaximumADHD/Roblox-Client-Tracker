PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createNextOrder"]
        3 CALL                             R1 0 1
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["createElement"]
        7 GETUPVAL                         R3 2
        8 DUPTABLE                         R4 K4 [{"tag", "LayoutOrder"}]
        9 LOADK                            R5 K5 ["tree-row row align-y-center"]
       10 SETTABLEKS                       R5 R4 K2 ["tag"]
       12 GETTABLEKS                       R5 R0 K3 ["LayoutOrder"]
       14 SETTABLEKS                       R5 R4 K3 ["LayoutOrder"]
       16 DUPTABLE                         R5 K8 [{"Node", "Divider"}]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K1 ["createElement"]
       20 GETUPVAL                         R7 3
       21 DUPTABLE                         R8 K17 [{"context", "depth", "expanded", "icon", "LayoutOrder", "name", "onCreate", "onCreated", "setExpanded"}]
       22 GETTABLEKS                       R9 R0 K9 ["context"]
       24 SETTABLEKS                       R9 R8 K9 ["context"]
       26 GETTABLEKS                       R9 R0 K10 ["depth"]
       28 SETTABLEKS                       R9 R8 K10 ["depth"]
       30 GETTABLEKS                       R9 R0 K11 ["expanded"]
       32 SETTABLEKS                       R9 R8 K11 ["expanded"]
       34 GETTABLEKS                       R9 R0 K12 ["icon"]
       36 SETTABLEKS                       R9 R8 K12 ["icon"]
       38 MOVE                             R9 R1
       39 CALL                             R9 0 1
       40 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       42 GETTABLEKS                       R9 R0 K13 ["name"]
       44 SETTABLEKS                       R9 R8 K13 ["name"]
       46 GETTABLEKS                       R9 R0 K14 ["onCreate"]
       48 SETTABLEKS                       R9 R8 K14 ["onCreate"]
       50 GETTABLEKS                       R9 R0 K15 ["onCreated"]
       52 SETTABLEKS                       R9 R8 K15 ["onCreated"]
       54 GETTABLEKS                       R9 R0 K16 ["setExpanded"]
       56 SETTABLEKS                       R9 R8 K16 ["setExpanded"]
       58 CALL                             R6 2 1
       59 SETTABLEKS                       R6 R5 K6 ["Node"]
       61 GETUPVAL                         R6 1
       62 GETTABLEKS                       R6 R6 K1 ["createElement"]
       64 GETUPVAL                         R7 4
       65 DUPTABLE                         R8 K19 [{"LayoutOrder", "orientation", "tag"}]
       66 MOVE                             R9 R1
       67 CALL                             R9 0 1
       68 SETTABLEKS                       R9 R8 K3 ["LayoutOrder"]
       70 GETUPVAL                         R9 5
       71 GETTABLEKS                       R9 R9 K20 ["Vertical"]
       73 SETTABLEKS                       R9 R8 K18 ["orientation"]
       75 LOADK                            R9 K21 ["auto-y"]
       76 SETTABLEKS                       R9 R8 K2 ["tag"]
       78 CALL                             R6 2 1
       79 SETTABLEKS                       R6 R5 K7 ["Divider"]
       81 CALL                             R2 3 -1
       82 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Divider"]
       30 GETTABLEKS                       R5 R3 K11 ["Enums"]
       32 GETTABLEKS                       R5 R5 K12 ["Orientation"]
       34 GETTABLEKS                       R6 R3 K13 ["View"]
       36 GETIMPORT                        R7 K5 [require]
       38 GETTABLEKS                       R8 R0 K14 ["Src"]
       40 GETTABLEKS                       R8 R8 K15 ["Components"]
       42 GETTABLEKS                       R8 R8 K16 ["Tree"]
       44 GETTABLEKS                       R8 R8 K17 ["Node"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K5 [require]
       49 GETTABLEKS                       R9 R0 K14 ["Src"]
       51 GETTABLEKS                       R9 R9 K18 ["Types"]
       53 CALL                             R8 1 1
       54 DUPCLOSURE                       R9 K19 [PROTO_0]
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R1
       57 CAPTURE                          VAL R6
       58 CAPTURE                          VAL R7
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 RETURN                           R9 1
