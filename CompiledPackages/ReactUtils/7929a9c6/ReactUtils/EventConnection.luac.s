PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["event"]
        3 GETTABLEKS                       R3 R0 K1 ["callback"]
        5 NEWTABLE                         R4 0 2
        7 GETTABLEKS                       R5 R0 K0 ["event"]
        9 GETTABLEKS                       R6 R0 K1 ["callback"]
       11 SETLIST                          R4 R5 2 [1]
       13 CALL                             R1 3 0
       14 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ReactUtils"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["GoodSignal"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETIMPORT                        R4 K1 [script]
       18 GETTABLEKS                       R4 R4 K4 ["Parent"]
       20 GETTABLEKS                       R4 R4 K8 ["useEventConnection"]
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K9 [PROTO_0]
       24 CAPTURE                          VAL R3
       25 RETURN                           R4 1
