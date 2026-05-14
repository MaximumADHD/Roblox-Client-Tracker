PROTO_0:
        0 MOVE                             R2 R0
        1 JUMPIF                           R2 ; [+5]
        2 DUPTABLE                         R2 K1 [{"StateMorpher"}]
        3 NEWTABLE                         R3 0 0
        5 SETTABLEKS                       R3 R2 K0 ["StateMorpher"]
        7 MOVE                             R0 R2
        8 DUPTABLE                         R2 K1 [{"StateMorpher"}]
        9 DUPTABLE                         R3 K4 [{"StateTemplates", "StateSettings"}]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R5 R0 K0 ["StateMorpher"]
       13 GETTABLEKS                       R5 R5 K2 ["StateTemplates"]
       15 MOVE                             R6 R1
       16 CALL                             R4 2 1
       17 SETTABLEKS                       R4 R3 K2 ["StateTemplates"]
       19 GETUPVAL                         R4 1
       20 GETTABLEKS                       R5 R0 K0 ["StateMorpher"]
       22 GETTABLEKS                       R5 R5 K3 ["StateSettings"]
       24 MOVE                             R6 R1
       25 CALL                             R4 2 1
       26 SETTABLEKS                       R4 R3 K3 ["StateSettings"]
       28 SETTABLEKS                       R3 R2 K0 ["StateMorpher"]
       30 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Reducers"]
       11 GETTABLEKS                       R2 R2 K6 ["MorpherEditorSettings"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K5 ["Reducers"]
       18 GETTABLEKS                       R3 R3 K7 ["MorpherEditorTemplates"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K8 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
