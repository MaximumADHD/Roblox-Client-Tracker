PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Gen3dTypes"]
        3 GETTABLEKS                       R1 R1 K1 ["getUniqueTag"]
        5 LOADK                            R2 K2 ["SegmentedMesh"]
        6 MOVE                             R3 R0
        7 CALL                             R1 2 -1
        8 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["DMNetworking"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Parent"]
       18 GETTABLEKS                       R3 R3 K8 ["Gen3dCore"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Types"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K10 [PROTO_0]
       27 CAPTURE                          VAL R2
       28 DUPTABLE                         R5 K12 [{"getLinkTag"}]
       29 SETTABLEKS                       R4 R5 K11 ["getLinkTag"]
       31 RETURN                           R5 1
