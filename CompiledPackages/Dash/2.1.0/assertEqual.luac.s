PROTO_0:
        0 JUMPIFEQ                         R0 R1 ; [+28]
        2 GETIMPORT                        R3 K1 [require]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Error"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R3 K3 ["new"]
       10 LOADK                            R5 K4 ["AssertError"]
       11 MOVE                             R6 R2
       12 JUMPIF                           R6 ; [+7]
       13 LOADK                            R7 K5 ["Left \"%*\" does not equal right \"%*\""]
       14 MOVE                             R9 R0
       15 MOVE                             R10 R1
       16 NAMECALL                         R7 R7 K6 ["format"]
       18 CALL                             R7 3 1
       19 MOVE                             R6 R7
       20 CALL                             R4 2 1
       21 DUPTABLE                         R7 K9 [{"left", "right"}]
       22 SETTABLEKS                       R0 R7 K7 ["left"]
       24 SETTABLEKS                       R1 R7 K8 ["right"]
       26 NAMECALL                         R5 R4 K10 ["throw"]
       28 CALL                             R5 2 0
       29 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 DUPCLOSURE                       R1 K3 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1
