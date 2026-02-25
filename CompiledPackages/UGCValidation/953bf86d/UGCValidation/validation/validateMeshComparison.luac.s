PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+7]
        3 GETTABLEKS                       R2 R0 K0 ["fullName"]
        5 LOADK                            R3 K1 ["."]
        6 GETTABLEKS                       R4 R0 K2 ["fieldName"]
        8 CONCAT                           R1 R2 R4
        9 RETURN                           R1 1
       10 GETTABLEKS                       R2 R0 K3 ["context"]
       12 JUMPIFNOT                        R2 ; [+5]
       13 GETTABLEKS                       R2 R0 K3 ["context"]
       15 LOADK                            R3 K4 [" mesh "]
       16 CONCAT                           R1 R2 R3
       17 JUMPIF                           R1 ; [+1]
       18 LOADK                            R1 K5 ["mesh "]
       19 MOVE                             R2 R1
       20 GETUPVAL                         R4 1
       21 GETTABLEKS                       R3 R4 K6 ["tryGetAssetIdFromContentId"]
       23 GETTABLEKS                       R4 R0 K7 ["contentId"]
       25 CALL                             R3 1 1
       26 CONCAT                           R1 R2 R3
       27 RETURN                           R1 1

PROTO_1:
        0 DUPCLOSURE                       R3 K0 [PROTO_0]
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 GETUPVAL                         R5 0
        4 CALL                             R5 0 1
        5 JUMPIFNOT                        R5 ; [+7]
        6 GETTABLEKS                       R5 R0 K1 ["fullName"]
        8 LOADK                            R6 K2 ["."]
        9 GETTABLEKS                       R7 R0 K3 ["fieldName"]
       11 CONCAT                           R4 R5 R7
       12 JUMP                             ; [+19]
       13 GETTABLEKS                       R6 R0 K4 ["context"]
       15 JUMPIFNOT                        R6 ; [+5]
       16 GETTABLEKS                       R6 R0 K4 ["context"]
       18 LOADK                            R7 K5 [" mesh "]
       19 CONCAT                           R5 R6 R7
       20 JUMPIF                           R5 ; [+1]
       21 LOADK                            R5 K6 ["mesh "]
       22 MOVE                             R6 R5
       23 GETUPVAL                         R8 1
       24 GETTABLEKS                       R7 R8 K7 ["tryGetAssetIdFromContentId"]
       26 GETTABLEKS                       R8 R0 K8 ["contentId"]
       28 CALL                             R7 1 1
       29 CONCAT                           R5 R6 R7
       30 MOVE                             R4 R5
       31 JUMP                             ; [0]
       32 GETUPVAL                         R6 0
       33 CALL                             R6 0 1
       34 JUMPIFNOT                        R6 ; [+7]
       35 GETTABLEKS                       R6 R1 K1 ["fullName"]
       37 LOADK                            R7 K2 ["."]
       38 GETTABLEKS                       R8 R1 K3 ["fieldName"]
       40 CONCAT                           R5 R6 R8
       41 JUMP                             ; [+19]
       42 GETTABLEKS                       R7 R1 K4 ["context"]
       44 JUMPIFNOT                        R7 ; [+5]
       45 GETTABLEKS                       R7 R1 K4 ["context"]
       47 LOADK                            R8 K5 [" mesh "]
       48 CONCAT                           R6 R7 R8
       49 JUMPIF                           R6 ; [+1]
       50 LOADK                            R6 K6 ["mesh "]
       51 MOVE                             R7 R6
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R8 R9 K7 ["tryGetAssetIdFromContentId"]
       55 GETTABLEKS                       R9 R1 K8 ["contentId"]
       57 CALL                             R8 1 1
       58 CONCAT                           R6 R7 R8
       59 MOVE                             R5 R6
       60 JUMP                             ; [0]
       61 GETIMPORT                        R6 K11 [string.format]
       63 LOADK                            R7 K12 ["%s is more than max difference %.2f in size compared to the other mesh %s. You need to edit the model to adjust its size"]
       64 MOVE                             R8 R4
       65 MOVE                             R9 R2
       66 MOVE                             R10 R5
       67 CALL                             R6 4 -1
       68 RETURN                           R6 -1

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
       23 GETTABLEKS                       R4 R5 K8 ["ParseContentIds"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K4 [require]
       28 GETTABLEKS                       R6 R0 K5 ["util"]
       30 GETTABLEKS                       R5 R6 K9 ["getMeshMinMax"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K4 [require]
       35 GETTABLEKS                       R7 R0 K10 ["flags"]
       37 GETTABLEKS                       R6 R7 K11 ["getFFlagFixValidateMeshComparisonErrorFormat"]
       39 CALL                             R5 1 1
       40 DUPCLOSURE                       R6 K12 [PROTO_1]
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R3
       43 DUPCLOSURE                       R7 K13 [PROTO_2]
       44 CAPTURE                          VAL R4
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R6
       47 RETURN                           R7 1
