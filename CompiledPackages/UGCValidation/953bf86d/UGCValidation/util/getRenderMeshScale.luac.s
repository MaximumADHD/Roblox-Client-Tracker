PROTO_0:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 GETUPVAL                         R5 0
        4 CALL                             R5 0 1
        5 JUMPIFNOT                        R5 ; [+13]
        6 GETUPVAL                         R5 1
        7 MOVE                             R6 R0
        8 GETUPVAL                         R9 2
        9 GETTABLEKS                       R8 R9 K0 ["MESH_CONTENT_TYPE"]
       11 GETTABLEKS                       R7 R8 K1 ["RENDER_MESH"]
       13 MOVE                             R8 R1
       14 CALL                             R5 3 3
       15 MOVE                             R2 R5
       16 MOVE                             R3 R6
       17 MOVE                             R4 R7
       18 JUMP                             ; [+7]
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R0
       21 MOVE                             R7 R1
       22 CALL                             R5 2 3
       23 MOVE                             R2 R5
       24 MOVE                             R3 R6
       25 MOVE                             R4 R7
       26 JUMPIF                           R2 ; [+1]
       27 RETURN                           R2 2
       28 MOVE                             R5 R4
       29 LOADNIL                          R6
       30 LOADNIL                          R7
       31 GETUPVAL                         R8 3
       32 MOVE                             R9 R5
       33 MOVE                             R10 R1
       34 CALL                             R8 2 4
       35 MOVE                             R2 R8
       36 MOVE                             R3 R9
       37 MOVE                             R6 R10
       38 MOVE                             R7 R11
       39 JUMPIF                           R2 ; [+1]
       40 RETURN                           R2 2
       41 SUB                              R8 R7 R6
       42 GETUPVAL                         R9 4
       43 MOVE                             R10 R0
       44 MOVE                             R11 R1
       45 CALL                             R9 2 1
       46 DIV                              R10 R9 R8
       47 LOADB                            R11 1
       48 LOADNIL                          R12
       49 MOVE                             R13 R10
       50 RETURN                           R11 3

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R4 R0 K6 ["util"]
       16 GETTABLEKS                       R3 R4 K7 ["Types"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K6 ["util"]
       23 GETTABLEKS                       R4 R5 K8 ["getMeshInfo"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K6 ["util"]
       30 GETTABLEKS                       R5 R6 K9 ["getMeshMinMax"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K6 ["util"]
       37 GETTABLEKS                       R6 R7 K10 ["getExpectedPartSize"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K4 [require]
       42 GETTABLEKS                       R8 R0 K11 ["flags"]
       44 GETTABLEKS                       R7 R8 K12 ["getFFlagUGCValidationConsolidateGetMeshInfos"]
       46 CALL                             R6 1 1
       47 DUPCLOSURE                       R7 K13 [PROTO_0]
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R3
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 RETURN                           R7 1
