PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["InitialSizes"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["createElement"]
        9 GETUPVAL                         R4 1
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K3 ["join"]
       13 DUPTABLE                         R6 K7 [{"Sizes", "OnSizesChange", "MinSizes"}]
       14 SETTABLEKS                       R1 R6 K4 ["Sizes"]
       16 SETTABLEKS                       R2 R6 K5 ["OnSizesChange"]
       18 GETTABLEKS                       R7 R0 K6 ["MinSizes"]
       20 SETTABLEKS                       R7 R6 K6 ["MinSizes"]
       22 MOVE                             R7 R0
       23 CALL                             R5 2 -1
       24 CALL                             R3 -1 -1
       25 RETURN                           R3 -1

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
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K5 ["Packages"]
       27 GETTABLEKS                       R4 R4 K8 ["Dash"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R2 K9 ["UI"]
       32 GETTABLEKS                       R5 R4 K10 ["SplitPane"]
       34 DUPCLOSURE                       R6 K11 [PROTO_0]
       35 CAPTURE                          VAL R1
       36 CAPTURE                          VAL R5
       37 CAPTURE                          VAL R3
       38 GETTABLEKS                       R7 R1 K12 ["memo"]
       40 MOVE                             R8 R6
       41 CALL                             R7 1 -1
       42 RETURN                           R7 -1
