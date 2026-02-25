PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["TestHelpers"]
        3 GETTABLEKS                       R2 R3 K1 ["Instances"]
        5 GETTABLEKS                       R1 R2 K2 ["MockPlugin"]
        7 GETTABLEKS                       R0 R1 K3 ["new"]
        9 LOADK                            R1 K4 ["AnimationEditorPlugin"]
       10 NEWTABLE                         R2 0 0
       12 CALL                             R0 2 1
       13 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 CAPTURE                          VAL R1
       18 SETTABLEKS                       R3 R2 K9 ["new"]
       20 RETURN                           R2 1
