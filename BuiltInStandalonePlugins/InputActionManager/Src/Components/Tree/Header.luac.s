PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["createNextOrder"]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 4
        6 LOADK                            R2 K1 ["MouseKeyboard"]
        7 LOADK                            R3 K2 ["Touch"]
        8 LOADK                            R4 K3 ["Gamepad"]
        9 LOADK                            R5 K4 ["VR"]
       10 SETLIST                          R1 R2 4 [1]
       12 NEWTABLE                         R2 0 0
       14 MOVE                             R3 R1
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 FORGPREP                         R3
       18 GETUPVAL                         R9 1
       19 GETTABLEKS                       R8 R9 K5 ["createElement"]
       21 GETUPVAL                         R9 2
       22 DUPTABLE                         R10 K9 [{"LayoutOrder", "tag", "Text"}]
       23 MOVE                             R11 R0
       24 CALL                             R11 0 1
       25 SETTABLEKS                       R11 R10 K6 ["LayoutOrder"]
       27 LOADK                            R11 K10 ["columns-input text-align-x-left text-body-medium padding-small"]
       28 SETTABLEKS                       R11 R10 K7 ["tag"]
       30 SETTABLEKS                       R7 R10 K8 ["Text"]
       32 CALL                             R8 2 1
       33 SETTABLE                         R8 R2 R7
       34 FORGLOOP                         R3 2 ; [-17]
       36 GETUPVAL                         R4 1
       37 GETTABLEKS                       R3 R4 K5 ["createElement"]
       39 GETUPVAL                         R4 3
       40 DUPTABLE                         R5 K11 [{"tag"}]
       41 LOADK                            R6 K12 ["tree-row row align-y-center"]
       42 SETTABLEKS                       R6 R5 K7 ["tag"]
       44 DUPTABLE                         R6 K16 [{"TreeHeader", "Divider", "ColumnHeaders"}]
       45 GETUPVAL                         R8 1
       46 GETTABLEKS                       R7 R8 K5 ["createElement"]
       48 GETUPVAL                         R8 2
       49 DUPTABLE                         R9 K9 [{"LayoutOrder", "tag", "Text"}]
       50 MOVE                             R10 R0
       51 CALL                             R10 0 1
       52 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       54 LOADK                            R10 K17 ["columns-tree text-align-x-left text-body-medium padding-small"]
       55 SETTABLEKS                       R10 R9 K7 ["tag"]
       57 LOADK                            R10 K18 ["Context"]
       58 SETTABLEKS                       R10 R9 K8 ["Text"]
       60 CALL                             R7 2 1
       61 SETTABLEKS                       R7 R6 K13 ["TreeHeader"]
       63 GETUPVAL                         R8 1
       64 GETTABLEKS                       R7 R8 K5 ["createElement"]
       66 GETUPVAL                         R8 4
       67 DUPTABLE                         R9 K20 [{"LayoutOrder", "orientation", "tag"}]
       68 MOVE                             R10 R0
       69 CALL                             R10 0 1
       70 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       72 GETUPVAL                         R11 5
       73 GETTABLEKS                       R10 R11 K21 ["Vertical"]
       75 SETTABLEKS                       R10 R9 K19 ["orientation"]
       77 LOADK                            R10 K22 ["auto-y"]
       78 SETTABLEKS                       R10 R9 K7 ["tag"]
       80 CALL                             R7 2 1
       81 SETTABLEKS                       R7 R6 K14 ["Divider"]
       83 GETUPVAL                         R8 1
       84 GETTABLEKS                       R7 R8 K5 ["createElement"]
       86 GETUPVAL                         R8 3
       87 DUPTABLE                         R9 K23 [{"LayoutOrder", "tag"}]
       88 MOVE                             R10 R0
       89 CALL                             R10 0 1
       90 SETTABLEKS                       R10 R9 K6 ["LayoutOrder"]
       92 LOADK                            R10 K24 ["columns-fill columns-flex align-y-center"]
       93 SETTABLEKS                       R10 R9 K7 ["tag"]
       95 MOVE                             R10 R2
       96 CALL                             R7 3 1
       97 SETTABLEKS                       R7 R6 K15 ["ColumnHeaders"]
       99 CALL                             R3 3 -1
      100 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactUtils"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Foundation"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R3 K10 ["Divider"]
       30 GETTABLEKS                       R5 R3 K11 ["Text"]
       32 GETTABLEKS                       R6 R3 K12 ["View"]
       34 GETTABLEKS                       R8 R3 K13 ["Enums"]
       36 GETTABLEKS                       R7 R8 K14 ["Orientation"]
       38 GETIMPORT                        R8 K5 [require]
       40 GETTABLEKS                       R10 R0 K15 ["Src"]
       42 GETTABLEKS                       R9 R10 K16 ["Types"]
       44 CALL                             R8 1 1
       45 DUPCLOSURE                       R9 K17 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R4
       51 CAPTURE                          VAL R7
       52 RETURN                           R9 1
