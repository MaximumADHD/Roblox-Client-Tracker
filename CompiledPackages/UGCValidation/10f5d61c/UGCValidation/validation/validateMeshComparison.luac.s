PROTO_0:
        0 GETTABLEKS                       R2 R0 K0 ["fullName"]
        2 LOADK                            R3 K1 ["."]
        3 GETTABLEKS                       R4 R0 K2 ["fieldName"]
        5 CONCAT                           R1 R2 R4
        6 RETURN                           R1 1

PROTO_1:
        0 DUPCLOSURE                       R3 K0 [PROTO_0]
        1 GETTABLEKS                       R5 R0 K1 ["fullName"]
        3 LOADK                            R6 K2 ["."]
        4 GETTABLEKS                       R7 R0 K3 ["fieldName"]
        6 CONCAT                           R4 R5 R7
        7 GETTABLEKS                       R6 R1 K1 ["fullName"]
        9 LOADK                            R7 K2 ["."]
       10 GETTABLEKS                       R8 R1 K3 ["fieldName"]
       12 CONCAT                           R5 R6 R8
       13 GETIMPORT                        R6 K6 [string.format]
       15 LOADK                            R7 K7 ["%s is more than max difference %.2f in size compared to the other mesh %s. You need to edit the model to adjust its size"]
       16 MOVE                             R8 R4
       17 MOVE                             R9 R2
       18 MOVE                             R10 R5
       19 CALL                             R6 4 -1
       20 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 MOVE                             R5 R0
        2 MOVE                             R6 R3
        3 CALL                             R4 2 4
        4 JUMPIF                           R4 ; [+1]
        5 RETURN                           R4 2
        6 GETUPVAL                         R8 0
        7 MOVE                             R9 R1
        8 MOVE                             R10 R3
        9 CALL                             R8 2 4
       10 JUMPIF                           R8 ; [+1]
       11 RETURN                           R8 2
       12 SUB                              R13 R6 R10
       13 GETTABLEKS                       R12 R13 K0 ["Magnitude"]
       15 JUMPIFLT                         R2 R12 ; [+6]
       17 SUB                              R13 R7 R11
       18 GETTABLEKS                       R12 R13 K0 ["Magnitude"]
       20 JUMPIFNOTLT                      R2 R12 ; [+23]
       22 GETUPVAL                         R13 1
       23 GETTABLEKS                       R12 R13 K1 ["reportFailure"]
       25 GETUPVAL                         R15 1
       26 GETTABLEKS                       R14 R15 K2 ["ErrorType"]
       28 GETTABLEKS                       R13 R14 K3 ["validateMeshComparison"]
       30 LOADNIL                          R14
       31 MOVE                             R15 R3
       32 CALL                             R12 3 0
       33 LOADB                            R12 0
       34 NEWTABLE                         R13 0 1
       36 GETUPVAL                         R14 2
       37 MOVE                             R15 R0
       38 MOVE                             R16 R1
       39 MOVE                             R17 R2
       40 CALL                             R14 3 -1
       41 SETLIST                          R13 R14 -1 [1]
       43 RETURN                           R12 2
       44 LOADB                            R12 1
       45 RETURN                           R12 1

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
       16 GETTABLEKS                       R3 R0 K7 ["Analytics"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R5 R0 K5 ["util"]
       23 GETTABLEKS                       R4 R5 K8 ["getMeshMinMax"]
       25 CALL                             R3 1 1
       26 DUPCLOSURE                       R4 K9 [PROTO_1]
       27 DUPCLOSURE                       R5 K10 [PROTO_2]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R2
       30 CAPTURE                          VAL R4
       31 RETURN                           R5 1
