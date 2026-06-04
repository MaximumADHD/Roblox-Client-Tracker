PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["editableMesh"]
        4 NAMECALL                         R0 R0 K1 ["GetEditableMeshVerts"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R2 R1 K0 ["isServer"]
        2 GETUPVAL                         R3 0
        3 NEWCLOSURE                       R4 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 MOVE                             R5 R1
        7 CALL                             R3 2 2
        8 JUMPIF                           R3 ; [+16]
        9 LOADK                            R6 K1 ["Failed to read mesh: "]
       10 GETTABLEKS                       R7 R0 K2 ["fullName"]
       12 CONCAT                           R5 R6 R7
       13 JUMPIFNOT                        R2 ; [+4]
       14 GETIMPORT                        R6 K4 [error]
       16 MOVE                             R7 R5
       17 CALL                             R6 1 0
       18 LOADB                            R6 0
       19 NEWTABLE                         R7 0 1
       21 MOVE                             R8 R5
       22 SETLIST                          R7 R8 1 [1]
       24 RETURN                           R6 2
       25 LOADB                            R5 1
       26 LOADNIL                          R6
       27 MOVE                             R7 R4
       28 RETURN                           R5 3

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
       15 GETTABLEKS                       R3 R1 K9 ["util"]
       17 GETTABLEKS                       R3 R3 K10 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R4 R1 K9 ["util"]
       24 GETTABLEKS                       R4 R4 K11 ["pcallDeferred"]
       26 CALL                             R3 1 1
       27 DUPCLOSURE                       R4 K12 [PROTO_1]
       28 CAPTURE                          VAL R3
       29 CAPTURE                          VAL R0
       30 RETURN                           R4 1
