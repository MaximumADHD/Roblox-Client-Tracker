PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["provide"]
        5 GETTABLEKS                       R3 R1 K2 ["ContextItems"]
        7 GETTABLEKS                       R4 R1 K3 ["Payload"]
        9 CALL                             R2 2 -1
       10 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssetImporter"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["RoactCompat"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["ContextServices"]
       23 GETTABLEKS                       R4 R1 K10 ["PureComponent"]
       25 LOADK                            R6 K11 ["TestElement"]
       26 NAMECALL                         R4 R4 K12 ["extend"]
       28 CALL                             R4 2 1
       29 DUPCLOSURE                       R5 K13 [PROTO_0]
       30 CAPTURE                          VAL R3
       31 SETTABLEKS                       R5 R4 K14 ["render"]
       33 RETURN                           R4 1
