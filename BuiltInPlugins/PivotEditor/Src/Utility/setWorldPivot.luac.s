PROTO_0:
        0 LOADK                            R4 K0 ["BasePart"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+9]
        5 GETTABLEKS                       R2 R0 K2 ["CFrame"]
        7 MOVE                             R4 R1
        8 NAMECALL                         R2 R2 K3 ["ToObjectSpace"]
       10 CALL                             R2 2 1
       11 SETTABLEKS                       R2 R0 K4 ["PivotOffset"]
       13 RETURN                           R0 0
       14 LOADK                            R4 K5 ["Model"]
       15 NAMECALL                         R2 R0 K1 ["IsA"]
       17 CALL                             R2 2 1
       18 JUMPIFNOT                        R2 ; [+18]
       19 GETTABLEKS                       R2 R0 K6 ["PrimaryPart"]
       21 JUMPIFNOT                        R2 ; [+12]
       22 GETTABLEKS                       R2 R0 K6 ["PrimaryPart"]
       24 GETTABLEKS                       R3 R0 K6 ["PrimaryPart"]
       26 GETTABLEKS                       R3 R3 K2 ["CFrame"]
       28 MOVE                             R5 R1
       29 NAMECALL                         R3 R3 K3 ["ToObjectSpace"]
       31 CALL                             R3 2 1
       32 SETTABLEKS                       R3 R2 K4 ["PivotOffset"]
       34 SETTABLEKS                       R1 R0 K7 ["WorldPivot"]
       36 RETURN                           R0 0
       37 GETIMPORT                        R2 K9 [error]
       39 LOADK                            R4 K10 ["Unexpected instance type: "]
       40 GETTABLEKS                       R5 R0 K11 ["ClassName"]
       42 CONCAT                           R3 R4 R5
       43 CALL                             R2 1 0
       44 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
