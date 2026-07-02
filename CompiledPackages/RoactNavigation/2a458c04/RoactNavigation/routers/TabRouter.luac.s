PROTO_0:
        0 DUPTABLE                         R2 K3 [{[1] = False, ["backBehavior"]}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R3 R3 K4 ["InitialRoute"]
        4 SETTABLEKS                       R3 R2 K2 ["backBehavior"]
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K5 ["assign"]
       10 MOVE                             R4 R2
       11 MOVE                             R5 R1
       12 CALL                             R3 2 1
       13 MOVE                             R2 R3
       14 GETUPVAL                         R3 2
       15 MOVE                             R4 R0
       16 MOVE                             R5 R2
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R1 K2 ["Parent"]
        9 GETIMPORT                        R3 K4 [require]
       11 GETTABLEKS                       R4 R2 K5 ["LuauPolyfill"]
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R3 K6 ["Object"]
       16 GETIMPORT                        R5 K4 [require]
       18 GETTABLEKS                       R6 R0 K7 ["SwitchRouter"]
       20 CALL                             R5 1 1
       21 GETIMPORT                        R6 K4 [require]
       23 GETTABLEKS                       R7 R1 K8 ["BackBehavior"]
       25 CALL                             R6 1 1
       26 DUPCLOSURE                       R7 K9 [PROTO_0]
       27 CAPTURE                          VAL R6
       28 CAPTURE                          VAL R4
       29 CAPTURE                          VAL R5
       30 RETURN                           R7 1
