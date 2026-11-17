PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["createElement"]
        5 GETUPVAL                         R3 1
        6 NEWTABLE                         R4 1 0
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K2 ["Tag"]
       11 LOADK                            R6 K3 ["X-ColumnS X-FitY X-Right"]
       12 SETTABLE                         R6 R4 R5
       13 DUPTABLE                         R5 K5 [{"ScrollingView"}]
       14 GETUPVAL                         R6 0
       15 GETTABLEKS                       R6 R6 K1 ["createElement"]
       17 GETUPVAL                         R7 1
       18 NEWTABLE                         R8 1 0
       20 GETUPVAL                         R9 0
       21 GETTABLEKS                       R9 R9 K2 ["Tag"]
       23 LOADK                            R10 K6 ["FlexFill"]
       24 SETTABLE                         R10 R8 R9
       25 DUPTABLE                         R9 K8 [{"StyleRule"}]
       26 GETUPVAL                         R10 0
       27 GETTABLEKS                       R10 R10 K1 ["createElement"]
       29 GETUPVAL                         R11 2
       30 DUPTABLE                         R12 K10 [{"RootInstance"}]
       31 GETTABLEKS                       R13 R1 K11 ["Folder"]
       33 SETTABLEKS                       R13 R12 K9 ["RootInstance"]
       35 CALL                             R10 2 1
       36 SETTABLEKS                       R10 R9 K7 ["StyleRule"]
       38 CALL                             R6 3 1
       39 SETTABLEKS                       R6 R5 K4 ["ScrollingView"]
       41 CALL                             R2 3 -1
       42 RETURN                           R2 -1

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
       25 GETTABLEKS                       R4 R3 K9 ["Pane"]
       27 GETIMPORT                        R5 K4 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Src"]
       31 GETTABLEKS                       R6 R6 K11 ["Components"]
       33 GETTABLEKS                       R6 R6 K12 ["SelectorPropertyTable"]
       35 CALL                             R5 1 1
       36 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       38 LOADK                            R8 K14 ["FolderView"]
       39 NAMECALL                         R6 R6 K15 ["extend"]
       41 CALL                             R6 2 1
       42 DUPCLOSURE                       R7 K16 [PROTO_0]
       43 CAPTURE                          VAL R1
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R5
       46 SETTABLEKS                       R7 R6 K17 ["render"]
       48 RETURN                           R6 1
