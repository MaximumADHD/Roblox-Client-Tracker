PROTO_0:
        0 JUMPIFEQ                         R0 R1 ; [+20]
        2 GETIMPORT                        R3 K1 [require]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R4 R4 K2 ["Error"]
        7 CALL                             R3 1 1
        8 GETTABLEKS                       R4 R3 K3 ["new"]
       10 LOADK                            R5 K4 ["AssertError"]
       11 ORK                              R6 R2 K5 ["Left {left:?} does not equal right {right:?}"]
       12 CALL                             R4 2 1
       13 DUPTABLE                         R7 K8 [{"left", "right"}]
       14 SETTABLEKS                       R0 R7 K6 ["left"]
       16 SETTABLEKS                       R1 R7 K7 ["right"]
       18 NAMECALL                         R5 R4 K9 ["throw"]
       20 CALL                             R5 2 0
       21 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 DUPCLOSURE                       R1 K3 [PROTO_0]
        6 CAPTURE                          VAL R0
        7 RETURN                           R1 1
