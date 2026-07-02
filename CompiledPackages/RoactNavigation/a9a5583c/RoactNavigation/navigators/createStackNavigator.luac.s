PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETUPVAL                         R3 2
        5 MOVE                             R4 R1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R5 R5 K0 ["Dictionary"]
        9 GETTABLEKS                       R5 R5 K1 ["join"]
       11 MOVE                             R6 R0
       12 DUPTABLE                         R7 K3 [{"routes"}]
       13 GETUPVAL                         R8 3
       14 GETTABLEKS                       R8 R8 K4 ["None"]
       16 SETTABLEKS                       R8 R7 K2 ["routes"]
       18 CALL                             R5 2 -1
       19 CALL                             R2 -1 -1
       20 RETURN                           R2 -1

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
       20 GETTABLEKS                       R2 R2 K6 ["createNavigator"]
       22 CALL                             R1 1 1
       23 GETIMPORT                        R2 K1 [require]
       25 GETIMPORT                        R3 K3 [script]
       27 GETTABLEKS                       R3 R3 K4 ["Parent"]
       29 GETTABLEKS                       R3 R3 K4 ["Parent"]
       31 GETTABLEKS                       R3 R3 K7 ["routers"]
       33 GETTABLEKS                       R3 R3 K8 ["StackRouter"]
       35 CALL                             R2 1 1
       36 GETIMPORT                        R3 K1 [require]
       38 GETIMPORT                        R4 K3 [script]
       40 GETTABLEKS                       R4 R4 K4 ["Parent"]
       42 GETTABLEKS                       R4 R4 K4 ["Parent"]
       44 GETTABLEKS                       R4 R4 K9 ["views"]
       46 GETTABLEKS                       R4 R4 K10 ["StackView"]
       48 GETTABLEKS                       R4 R4 K10 ["StackView"]
       50 CALL                             R3 1 1
       51 DUPCLOSURE                       R4 K11 [PROTO_0]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R0
       56 RETURN                           R4 1
