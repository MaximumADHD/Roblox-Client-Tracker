PROTO_0:
        0 DUPTABLE                         R2 K2 [{"assetType", "configuration"}]
        1 SETTABLEKS                       R0 R2 K0 ["assetType"]
        3 SETTABLEKS                       R1 R2 K1 ["configuration"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K3 ["Packages"]
       11 GETIMPORT                        R3 K5 [require]
       13 GETTABLEKS                       R4 R1 K6 ["Framework"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R2 R3 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["Action"]
       20 GETIMPORT                        R4 K5 [require]
       22 GETTABLEKS                       R7 R0 K9 ["Src"]
       24 GETTABLEKS                       R6 R7 K10 ["Types"]
       26 GETTABLEKS                       R5 R6 K11 ["HomeTypes"]
       28 CALL                             R4 1 1
       29 MOVE                             R5 R3
       30 GETIMPORT                        R7 K1 [script]
       32 GETTABLEKS                       R6 R7 K12 ["Name"]
       34 DUPCLOSURE                       R7 K13 [PROTO_0]
       35 CALL                             R5 2 -1
       36 RETURN                           R5 -1
