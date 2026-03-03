PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R0 K1 ["state"]
        4 LOADB                            R5 1
        5 GETTABLEKS                       R6 R3 K2 ["Component"]
        7 GETTABLEKS                       R7 R1 K2 ["Component"]
        9 JUMPIFNOTEQ                      R6 R7 ; [+14]
       11 GETUPVAL                         R6 0
       12 MOVE                             R7 R4
       13 MOVE                             R8 R2
       14 CALL                             R6 2 1
       15 NOT                              R5 R6
       16 JUMPIF                           R5 ; [+7]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R7 R3 K3 ["ComponentProps"]
       20 GETTABLEKS                       R8 R1 K3 ["ComponentProps"]
       22 CALL                             R6 2 1
       23 NOT                              R5 R6
       24 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Types"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K2 ["Parent"]
       16 GETTABLEKS                       R3 R4 K6 ["Dash"]
       18 CALL                             R2 1 1
       19 GETTABLEKS                       R3 R2 K7 ["shallowEqual"]
       21 DUPCLOSURE                       R4 K8 [PROTO_0]
       22 CAPTURE                          VAL R3
       23 RETURN                           R4 1
