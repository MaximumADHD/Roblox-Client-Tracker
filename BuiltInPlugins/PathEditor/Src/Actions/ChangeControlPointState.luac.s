PROTO_0:
        0 DUPTABLE                         R2 K2 [{"Index", "State"}]
        1 SETTABLEKS                       R0 R2 K0 ["Index"]
        3 SETTABLEKS                       R1 R2 K1 ["State"]
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K7 ["Util"]
       18 GETTABLEKS                       R3 R2 K8 ["Action"]
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R6 R0 K9 ["Src"]
       24 GETTABLEKS                       R5 R6 K10 ["Types"]
       26 CALL                             R4 1 1
       27 MOVE                             R5 R3
       28 GETIMPORT                        R7 K1 [script]
       30 GETTABLEKS                       R6 R7 K11 ["Name"]
       32 DUPCLOSURE                       R7 K12 [PROTO_0]
       33 CALL                             R5 2 -1
       34 RETURN                           R5 -1
