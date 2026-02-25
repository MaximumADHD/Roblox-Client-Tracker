PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["assertType"]
        3 MOVE                             R2 R0
        4 LOADK                            R3 K1 ["boolean"]
        5 LOADK                            R4 K2 ["SetPlayerAcceptance"]
        6 CALL                             R1 3 0
        7 DUPTABLE                         R1 K4 [{"playerAcceptance"}]
        8 SETTABLEKS                       R0 R1 K3 ["playerAcceptance"]
       10 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R4 R0 K5 ["Src"]
       13 GETTABLEKS                       R3 R4 K6 ["Util"]
       15 GETTABLEKS                       R2 R3 K7 ["AssertType"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R5 R0 K5 ["Src"]
       22 GETTABLEKS                       R4 R5 K8 ["Actions"]
       24 GETTABLEKS                       R3 R4 K9 ["Action"]
       26 CALL                             R2 1 1
       27 MOVE                             R3 R2
       28 GETIMPORT                        R5 K1 [script]
       30 GETTABLEKS                       R4 R5 K10 ["Name"]
       32 DUPCLOSURE                       R5 K11 [PROTO_0]
       33 CAPTURE                          VAL R1
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1
