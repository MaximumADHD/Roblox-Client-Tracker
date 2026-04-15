PROTO_0:
        0 LOADN                            R4 1
        1 LENGTH                           R2 R0
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 GETTABLE                         R5 R0 R4
        5 MOVE                             R6 R1
        6 MOVE                             R7 R5
        7 MOVE                             R8 R4
        8 MOVE                             R9 R0
        9 CALL                             R6 3 1
       10 JUMPIFNOT                        R6 ; [+1]
       11 RETURN                           R4 1
       12 FORNLOOP                         R2
       13 LOADN                            R2 255
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["types"]
       11 CALL                             R1 1 1
       12 DUPCLOSURE                       R2 K6 [PROTO_0]
       13 RETURN                           R2 1
