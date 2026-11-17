PROTO_0:
        0 JUMPIF                           R0 ; [+4]
        1 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
        3 CALL                             R3 0 -1
        4 RETURN                           R3 -1
        5 JUMPIF                           R2 ; [+5]
        6 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
        8 MOVE                             R4 R0
        9 CALL                             R3 1 -1
       10 RETURN                           R3 -1
       11 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
       13 MOVE                             R4 R0
       14 MOVE                             R5 R1
       15 MOVE                             R6 R2
       16 CALL                             R3 3 -1
       17 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
