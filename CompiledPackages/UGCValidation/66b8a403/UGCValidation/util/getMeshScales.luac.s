PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 MOVE                             R9 R1
        7 MOVE                             R10 R8
        8 CALL                             R9 1 1
        9 GETUPVAL                         R11 0
       10 MOVE                             R12 R9
       11 MOVE                             R13 R2
       12 CALL                             R11 2 1
       13 GETUPVAL                         R12 0
       14 MOVE                             R13 R9
       15 MOVE                             R14 R2
       16 LOADB                            R15 1
       17 CALL                             R12 3 1
       18 DIV                              R10 R11 R12
       19 SETTABLE                         R10 R3 R8
       20 FORGLOOP                         R4 2 ; [-15]
       22 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R4 R0 K5 ["util"]
       18 GETTABLEKS                       R3 R4 K7 ["getExpectedPartSize"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K8 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 RETURN                           R3 1
