PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 1
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K0 ["outputFunction"]
        6 LOADK                            R3 K1 ["Action dispatched: %s\nState changed to: %s"]
        7 GETUPVAL                         R5 2
        8 MOVE                             R6 R0
        9 CALL                             R5 1 1
       10 GETUPVAL                         R6 2
       11 GETUPVAL                         R7 3
       12 NAMECALL                         R7 R7 K2 ["getState"]
       14 CALL                             R7 1 -1
       15 CALL                             R6 -1 -1
       16 NAMECALL                         R3 R3 K3 ["format"]
       18 CALL                             R3 -1 -1
       19 CALL                             R2 -1 0
       20 RETURN                           R1 1

PROTO_1:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R1
        5 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["prettyPrint"]
        9 CALL                             R0 1 1
       10 DUPTABLE                         R1 K7 [{"outputFunction"}]
       11 GETIMPORT                        R2 K9 [print]
       13 SETTABLEKS                       R2 R1 K6 ["outputFunction"]
       15 DUPCLOSURE                       R2 K10 [PROTO_1]
       16 CAPTURE                          VAL R1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R2 R1 K11 ["middleware"]
       20 RETURN                           R1 1
