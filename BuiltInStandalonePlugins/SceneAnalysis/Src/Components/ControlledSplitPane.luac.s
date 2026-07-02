PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R3 K1 [{"sizes"}]
        2 SETTABLEKS                       R0 R3 K0 ["sizes"]
        4 NAMECALL                         R1 R1 K2 ["setState"]
        6 CALL                             R1 2 0
        7 RETURN                           R0 0

PROTO_1:
        0 DUPTABLE                         R1 K1 [{"sizes"}]
        1 GETTABLEKS                       R2 R0 K2 ["props"]
        3 GETTABLEKS                       R2 R2 K3 ["InitialSizes"]
        5 SETTABLEKS                       R2 R1 K0 ["sizes"]
        7 SETTABLEKS                       R1 R0 K4 ["state"]
        9 NEWCLOSURE                       R1 P0
       10 CAPTURE                          VAL R0
       11 SETTABLEKS                       R1 R0 K5 ["onSizesChange"]
       13 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K2 ["createElement"]
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R5 2
        9 DUPTABLE                         R6 K9 [{["Sizes"], ["OnSizesChange"], ["MinSizes"], ["PaneStyle"] = "BorderBox", ["BarStyle"] = "BorderBox"}]
       10 GETTABLEKS                       R7 R2 K10 ["sizes"]
       12 SETTABLEKS                       R7 R6 K3 ["Sizes"]
       14 GETTABLEKS                       R7 R0 K11 ["onSizesChange"]
       16 SETTABLEKS                       R7 R6 K4 ["OnSizesChange"]
       18 GETTABLEKS                       R7 R1 K5 ["MinSizes"]
       20 SETTABLEKS                       R7 R6 K5 ["MinSizes"]
       22 MOVE                             R7 R1
       23 CALL                             R5 2 -1
       24 CALL                             R3 -1 -1
       25 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["SplitPane"]
       25 GETIMPORT                        R4 K5 [require]
       27 GETTABLEKS                       R5 R0 K6 ["Packages"]
       29 GETTABLEKS                       R5 R5 K11 ["Dash"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R4 K12 ["join"]
       34 GETTABLEKS                       R6 R1 K13 ["PureComponent"]
       36 LOADK                            R8 K14 ["ControlledSplitPane"]
       37 NAMECALL                         R6 R6 K15 ["extend"]
       39 CALL                             R6 2 1
       40 DUPCLOSURE                       R7 K16 [PROTO_1]
       41 SETTABLEKS                       R7 R6 K17 ["init"]
       43 DUPCLOSURE                       R7 K18 [PROTO_2]
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R3
       46 CAPTURE                          VAL R5
       47 SETTABLEKS                       R7 R6 K19 ["render"]
       49 RETURN                           R6 1
