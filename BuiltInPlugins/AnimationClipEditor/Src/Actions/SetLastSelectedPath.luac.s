PROTO_0:
        0 DUPTABLE                         R1 K1 [{"lastSelectedPath"}]
        1 SETTABLEKS                       R0 R1 K0 ["lastSelectedPath"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K6 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Action"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Util"]
       22 GETTABLEKS                       R3 R3 K10 ["PathUtils"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R1
       26 GETIMPORT                        R4 K1 [script]
       28 GETTABLEKS                       R4 R4 K11 ["Name"]
       30 DUPCLOSURE                       R5 K12 [PROTO_0]
       31 CALL                             R3 2 -1
       32 RETURN                           R3 -1
