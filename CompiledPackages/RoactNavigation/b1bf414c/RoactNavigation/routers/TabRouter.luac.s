PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Dictionary"]
        3 GETTABLEKS                       R1 R1 K1 ["join"]
        5 DUPTABLE                         R2 K4 [{"resetOnBlur", "backBehavior"}]
        6 LOADB                            R3 0
        7 SETTABLEKS                       R3 R2 K2 ["resetOnBlur"]
        9 GETUPVAL                         R3 1
       10 GETTABLEKS                       R3 R3 K5 ["InitialRoute"]
       12 SETTABLEKS                       R3 R2 K3 ["backBehavior"]
       14 MOVE                             R3 R0
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 2
       17 MOVE                             R3 R1
       18 CALL                             R2 1 -1
       19 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K4 ["Parent"]
       11 GETTABLEKS                       R1 R1 K5 ["Cryo"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K1 [require]
       16 GETIMPORT                        R2 K3 [script]
       18 GETTABLEKS                       R2 R2 K4 ["Parent"]
       20 GETTABLEKS                       R2 R2 K6 ["SwitchRouter"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K4 ["Parent"]
       31 GETTABLEKS                       R3 R3 K7 ["BackBehavior"]
       33 CALL                             R2 1 1
       34 DUPCLOSURE                       R3 K8 [PROTO_0]
       35 CAPTURE                          VAL R0
       36 CAPTURE                          VAL R2
       37 CAPTURE                          VAL R1
       38 RETURN                           R3 1
