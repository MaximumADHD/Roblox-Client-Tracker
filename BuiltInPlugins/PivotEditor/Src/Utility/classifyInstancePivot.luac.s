PROTO_0:
        0 LOADK                            R3 K0 ["BasePart"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K2 ["CFrame"]
        8 GETTABLEKS                       R4 R0 K3 ["PivotOffset"]
       10 GETTABLEKS                       R3 R4 K4 ["Position"]
       12 GETTABLEKS                       R4 R0 K5 ["Size"]
       14 CALL                             R1 3 -1
       15 RETURN                           R1 -1
       16 LOADK                            R3 K6 ["Model"]
       17 NAMECALL                         R1 R0 K1 ["IsA"]
       19 CALL                             R1 2 1
       20 JUMPIFNOT                        R1 ; [+18]
       21 NAMECALL                         R1 R0 K7 ["GetBoundingBox"]
       23 CALL                             R1 1 2
       24 NAMECALL                         R3 R0 K8 ["GetPivot"]
       26 CALL                             R3 1 1
       27 MOVE                             R7 R1
       28 NAMECALL                         R5 R3 K9 ["ToObjectSpace"]
       30 CALL                             R5 2 1
       31 GETTABLEKS                       R4 R5 K4 ["Position"]
       33 GETUPVAL                         R5 0
       34 MOVE                             R6 R3
       35 MOVE                             R7 R4
       36 MOVE                             R8 R2
       37 CALL                             R5 3 -1
       38 RETURN                           R5 -1
       39 LOADK                            R1 K10 ["None"]
       40 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETTABLEKS                       R2 R0 K3 ["Packages"]
       11 GETTABLEKS                       R1 R2 K4 ["DraggerFramework"]
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R4 R1 K7 ["Utility"]
       17 GETTABLEKS                       R3 R4 K8 ["classifyPivot"]
       19 CALL                             R2 1 1
       20 DUPCLOSURE                       R3 K9 [PROTO_0]
       21 CAPTURE                          VAL R2
       22 RETURN                           R3 1
