PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editableMesh"]
        4 NAMECALL                         R0 R0 K1 ["GetEditableMeshTriCount"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 MOVE                             R5 R1
        5 CALL                             R3 2 2
        6 JUMPIF                           R3 ; [+31]
        7 GETIMPORT                        R5 K2 [string.format]
        9 LOADK                            R6 K3 ["Failed to load model mesh %s. Make sure the mesh exists and try again."]
       10 GETTABLEKS                       R7 R0 K4 ["fullName"]
       12 CALL                             R5 2 1
       13 GETUPVAL                         R6 2
       14 GETTABLEKS                       R6 R6 K5 ["reportFailure"]
       16 GETUPVAL                         R7 2
       17 GETTABLEKS                       R7 R7 K6 ["ErrorType"]
       19 GETTABLEKS                       R7 R7 K7 ["validateCoplanarIntersection_FailedToExecute"]
       21 LOADNIL                          R8
       22 MOVE                             R9 R1
       23 CALL                             R6 3 0
       24 JUMPIFEQKNIL                     R2 ; [+6]
       26 JUMPIFNOT                        R2 ; [+4]
       27 GETIMPORT                        R6 K9 [error]
       29 MOVE                             R7 R5
       30 CALL                             R6 1 0
       31 LOADB                            R6 0
       32 NEWTABLE                         R7 0 1
       34 MOVE                             R8 R5
       35 SETLIST                          R7 R8 1 [1]
       37 RETURN                           R6 2
       38 LOADB                            R5 1
       39 LOADNIL                          R6
       40 MOVE                             R7 R4
       41 RETURN                           R5 3

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editableMesh"]
        4 GETUPVAL                         R3 2
        5 GETUPVAL                         R4 3
        6 LOADB                            R5 1
        7 NAMECALL                         R0 R0 K1 ["IsEditableMeshNumCoplanarIntersectionsOverLimit"]
        9 CALL                             R0 5 -1
       10 RETURN                           R0 -1

PROTO_3:
        0 GETIMPORT                        R3 K1 [tick]
        2 CALL                             R3 0 1
        3 GETTABLEKS                       R4 R2 K2 ["isServer"]
        5 GETUPVAL                         R5 0
        6 MOVE                             R6 R0
        7 MOVE                             R7 R2
        8 MOVE                             R8 R4
        9 CALL                             R5 3 3
       10 JUMPIF                           R5 ; [+3]
       11 LOADB                            R8 0
       12 MOVE                             R9 R6
       13 RETURN                           R8 2
       14 GETUPVAL                         R11 1
       15 CALL                             R11 0 1
       16 DIVK                             R10 R11 K3 [100]
       17 MUL                              R9 R10 R7
       18 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       19 GETIMPORT                        R8 K6 [math.floor]
       21 CALL                             R8 1 1
       22 GETUPVAL                         R9 2
       23 NEWCLOSURE                       R10 P0
       24 CAPTURE                          UPVAL U3
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R8
       27 CAPTURE                          VAL R1
       28 MOVE                             R11 R2
       29 CALL                             R9 2 2
       30 JUMPIF                           R9 ; [+31]
       31 GETIMPORT                        R11 K9 [string.format]
       33 LOADK                            R12 K10 ["Failed to execute coplanar triangle intersection check for '%s'. Make sure mesh exists and try again."]
       34 GETTABLEKS                       R13 R0 K11 ["fullName"]
       36 CALL                             R11 2 1
       37 JUMPIFEQKNIL                     R4 ; [+6]
       39 JUMPIFNOT                        R4 ; [+4]
       40 GETIMPORT                        R12 K13 [error]
       42 MOVE                             R13 R11
       43 CALL                             R12 1 0
       44 GETUPVAL                         R12 4
       45 GETTABLEKS                       R12 R12 K14 ["reportFailure"]
       47 GETUPVAL                         R13 4
       48 GETTABLEKS                       R13 R13 K15 ["ErrorType"]
       50 GETTABLEKS                       R13 R13 K16 ["validateCoplanarIntersection_FailedToExecute"]
       52 LOADNIL                          R14
       53 MOVE                             R15 R2
       54 CALL                             R12 3 0
       55 LOADB                            R12 0
       56 NEWTABLE                         R13 0 1
       58 MOVE                             R14 R11
       59 SETLIST                          R13 R14 1 [1]
       61 RETURN                           R12 2
       62 JUMPIFNOT                        R10 ; [+25]
       63 GETUPVAL                         R11 4
       64 GETTABLEKS                       R11 R11 K14 ["reportFailure"]
       66 GETUPVAL                         R12 4
       67 GETTABLEKS                       R12 R12 K15 ["ErrorType"]
       69 GETTABLEKS                       R12 R12 K17 ["validateCoplanarIntersection_CoplanarIntersection"]
       71 LOADNIL                          R13
       72 MOVE                             R14 R2
       73 CALL                             R11 3 0
       74 LOADB                            R11 0
       75 NEWTABLE                         R12 0 1
       77 GETIMPORT                        R13 K9 [string.format]
       79 LOADK                            R14 K18 ["Detected too many coplanar triangles intersecting in model mesh '%s'. The maximum is %d intersections in a %d triangle mesh. Edit your mesh to reduce the number of coplanar triangle intersections."]
       80 GETTABLEKS                       R15 R0 K11 ["fullName"]
       82 MOVE                             R16 R8
       83 MOVE                             R17 R7
       84 CALL                             R13 4 -1
       85 SETLIST                          R12 R13 -1 [1]
       87 RETURN                           R11 2
       88 GETUPVAL                         R11 4
       89 GETTABLEKS                       R11 R11 K19 ["recordScriptTime"]
       91 GETIMPORT                        R12 K21 [script]
       93 GETTABLEKS                       R12 R12 K22 ["Name"]
       95 MOVE                             R13 R3
       96 MOVE                             R14 R2
       97 CALL                             R11 3 0
       98 LOADB                            R11 1
       99 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 GETTABLEKS                       R1 R1 K6 ["Parent"]
       11 GETTABLEKS                       R1 R1 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R3 R1 K9 ["flags"]
       17 GETTABLEKS                       R3 R3 K10 ["getFIntMaxCoplanarIntersectionsPercentage"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K11 ["util"]
       24 GETTABLEKS                       R4 R4 K12 ["Types"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R5 R1 K11 ["util"]
       31 GETTABLEKS                       R5 R5 K13 ["pcallDeferred"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K8 [require]
       36 GETTABLEKS                       R6 R1 K14 ["Analytics"]
       38 CALL                             R5 1 1
       39 DUPCLOSURE                       R6 K15 [PROTO_1]
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R5
       43 DUPCLOSURE                       R7 K16 [PROTO_3]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R5
       49 RETURN                           R7 1
