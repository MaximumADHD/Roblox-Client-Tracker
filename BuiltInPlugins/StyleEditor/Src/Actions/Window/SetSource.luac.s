PROTO_0:
        0 DUPTABLE                         R1 K1 [{"source"}]
        1 SETTABLEKS                       R0 R1 K0 ["source"]
        3 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K7 ["Src"]
       22 GETTABLEKS                       R3 R3 K8 ["Types"]
       24 CALL                             R2 1 1
       25 GETTABLEKS                       R3 R1 K9 ["Util"]
       27 GETTABLEKS                       R3 R3 K10 ["Action"]
       29 MOVE                             R4 R3
       30 GETIMPORT                        R5 K1 [script]
       32 GETTABLEKS                       R5 R5 K11 ["Name"]
       34 DUPCLOSURE                       R6 K12 [PROTO_0]
       35 CALL                             R4 2 -1
       36 RETURN                           R4 -1
