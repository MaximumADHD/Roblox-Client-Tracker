PROTO_0:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 GETUPVAL                         R5 0
        4 MOVE                             R6 R0
        5 GETUPVAL                         R7 1
        6 GETTABLEKS                       R7 R7 K0 ["MESH_CONTENT_TYPE"]
        8 GETTABLEKS                       R7 R7 K1 ["RENDER_MESH"]
       10 MOVE                             R8 R1
       11 CALL                             R5 3 3
       12 MOVE                             R2 R5
       13 MOVE                             R3 R6
       14 MOVE                             R4 R7
       15 JUMPIF                           R2 ; [+1]
       16 RETURN                           R2 2
       17 MOVE                             R5 R4
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 GETUPVAL                         R8 2
       21 MOVE                             R9 R5
       22 MOVE                             R10 R1
       23 CALL                             R8 2 4
       24 MOVE                             R2 R8
       25 MOVE                             R3 R9
       26 MOVE                             R6 R10
       27 MOVE                             R7 R11
       28 JUMPIF                           R2 ; [+1]
       29 RETURN                           R2 2
       30 SUB                              R8 R7 R6
       31 GETUPVAL                         R9 3
       32 MOVE                             R10 R0
       33 MOVE                             R11 R1
       34 CALL                             R9 2 1
       35 DIV                              R10 R9 R8
       36 LOADB                            R11 1
       37 LOADNIL                          R12
       38 MOVE                             R13 R10
       39 RETURN                           R11 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R3 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R4 K8 ["getMeshInfo"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R5 R0 K6 ["util"]
       30 GETTABLEKS                       R5 R5 K9 ["getMeshMinMax"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R6 R0 K6 ["util"]
       37 GETTABLEKS                       R6 R6 K10 ["getExpectedPartSize"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K11 [PROTO_0]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R1
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R5
       45 RETURN                           R6 1
