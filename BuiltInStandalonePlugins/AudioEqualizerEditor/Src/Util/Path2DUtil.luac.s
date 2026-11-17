PROTO_0:
        0 JUMPIF                           R0 ; [+4]
        1 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
        3 CALL                             R3 0 -1
        4 RETURN                           R3 -1
        5 JUMPIFNOT                        R1 ; [+1]
        6 JUMPIF                           R2 ; [+11]
        7 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
        9 GETIMPORT                        R4 K5 [UDim2.fromOffset]
       11 GETTABLEKS                       R5 R0 K6 ["X"]
       13 GETTABLEKS                       R6 R0 K7 ["Y"]
       15 CALL                             R4 2 -1
       16 CALL                             R3 -1 -1
       17 RETURN                           R3 -1
       18 GETIMPORT                        R3 K2 [Path2DControlPoint.new]
       20 GETIMPORT                        R4 K5 [UDim2.fromOffset]
       22 GETTABLEKS                       R5 R0 K6 ["X"]
       24 GETTABLEKS                       R6 R0 K7 ["Y"]
       26 CALL                             R4 2 1
       27 GETIMPORT                        R5 K5 [UDim2.fromOffset]
       29 GETTABLEKS                       R6 R1 K6 ["X"]
       31 GETTABLEKS                       R7 R1 K7 ["Y"]
       33 CALL                             R5 2 1
       34 GETIMPORT                        R6 K5 [UDim2.fromOffset]
       36 GETTABLEKS                       R7 R2 K6 ["X"]
       38 GETTABLEKS                       R8 R2 K7 ["Y"]
       40 CALL                             R6 2 -1
       41 CALL                             R3 -1 -1
       42 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["makeControlPoint"]
        6 RETURN                           R0 1
