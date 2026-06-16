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
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R1 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["ES7Types"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K6 [PROTO_0]
       15 RETURN                           R3 1
