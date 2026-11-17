PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETUPVAL                         R1 1
        3 GETUPVAL                         R3 2
        4 NAMECALL                         R1 R1 K0 ["GetAttribute"]
        6 CALL                             R1 2 -1
        7 CALL                             R0 -1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createSignal"]
        3 MOVE                             R5 R1
        4 NAMECALL                         R3 R0 K1 ["GetAttribute"]
        6 CALL                             R3 2 -1
        7 CALL                             R2 -1 2
        8 MOVE                             R6 R1
        9 NAMECALL                         R4 R0 K2 ["GetAttributeChangedSignal"]
       11 CALL                             R4 2 1
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R3
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 NAMECALL                         R4 R4 K3 ["Connect"]
       18 CALL                             R4 2 1
       19 NEWCLOSURE                       R5 P1
       20 CAPTURE                          VAL R4
       21 MOVE                             R6 R2
       22 MOVE                             R7 R5
       23 RETURN                           R6 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["state"]
       11 GETTABLEKS                       R2 R2 K6 ["Signals"]
       13 CALL                             R1 1 1
       14 DUPCLOSURE                       R2 K7 [PROTO_2]
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1
