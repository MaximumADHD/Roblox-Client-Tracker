PROTO_0:
        0 DUPTABLE                         R2 K2 [{"resetOnBlur", "backBehavior"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["resetOnBlur"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R3 R4 K3 ["InitialRoute"]
        7 SETTABLEKS                       R3 R2 K1 ["backBehavior"]
        9 JUMPIFNOT                        R1 ; [+7]
       10 GETUPVAL                         R4 1
       11 GETTABLEKS                       R3 R4 K4 ["assign"]
       13 MOVE                             R4 R2
       14 MOVE                             R5 R1
       15 CALL                             R3 2 1
       16 MOVE                             R2 R3
       17 GETUPVAL                         R3 2
       18 MOVE                             R4 R0
       19 MOVE                             R5 R2
       20 CALL                             R3 2 -1
       21 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
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
