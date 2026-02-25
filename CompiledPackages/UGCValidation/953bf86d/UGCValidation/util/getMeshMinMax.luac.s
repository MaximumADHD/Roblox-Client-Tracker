PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["editableMesh"]
        4 NAMECALL                         R0 R0 K1 ["GetEditableMeshVerts"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 NEWCLOSURE                       R4 P0
        2 CAPTURE                          UPVAL U1
        3 CAPTURE                          VAL R0
        4 MOVE                             R5 R2
        5 CALL                             R3 2 2
        6 JUMPIF                           R3 ; [+16]
        7 LOADK                            R6 K0 ["Failed to read mesh: "]
        8 GETTABLEKS                       R7 R0 K1 ["fullName"]
       10 CONCAT                           R5 R6 R7
       11 JUMPIFNOT                        R1 ; [+4]
       12 GETIMPORT                        R6 K3 [error]
       14 MOVE                             R7 R5
       15 CALL                             R6 1 0
       16 LOADB                            R6 0
       17 NEWTABLE                         R7 0 1
       19 MOVE                             R8 R5
       20 SETLIST                          R7 R8 1 [1]
       22 RETURN                           R6 2
       23 LOADB                            R5 1
       24 LOADNIL                          R6
       25 MOVE                             R7 R4
       26 RETURN                           R5 3

PROTO_2:
        0 LOADNIL                          R2
        1 LOADNIL                          R3
        2 GETIMPORT                        R4 K1 [pairs]
        4 MOVE                             R5 R0
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 JUMPIFNOT                        R1 ; [+2]
        8 MUL                              R9 R8 R1
        9 JUMP                             ; [+1]
       10 MOVE                             R9 R8
       11 GETUPVAL                         R10 0
       12 MOVE                             R11 R2
       13 MOVE                             R12 R3
       14 MOVE                             R13 R9
       15 MOVE                             R14 R9
       16 CALL                             R10 4 2
       17 MOVE                             R2 R10
       18 MOVE                             R3 R11
       19 FORGLOOP                         R4 2 ; [-13]
       21 RETURN                           R2 2

PROTO_3:
        0 GETTABLEKS                       R2 R1 K0 ["isServer"]
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R0
        4 MOVE                             R5 R2
        5 MOVE                             R6 R1
        6 CALL                             R3 3 3
        7 JUMPIF                           R3 ; [+1]
        8 RETURN                           R3 2
        9 JUMPIFNOT                        R5 ; [+3]
       10 LENGTH                           R6 R5
       11 JUMPIFNOTEQKN                    R6 K1 [0] ; [+12]
       13 LOADB                            R6 0
       14 NEWTABLE                         R7 0 1
       16 LOADK                            R9 K2 ["Mesh: "]
       17 GETTABLEKS                       R10 R0 K3 ["fullName"]
       19 LOADK                            R11 K4 [" contains no verts"]
       20 CONCAT                           R8 R9 R11
       21 SETLIST                          R7 R8 1 [1]
       23 RETURN                           R6 2
       24 GETUPVAL                         R6 1
       25 MOVE                             R7 R5
       26 GETTABLEKS                       R8 R0 K5 ["scale"]
       28 CALL                             R6 2 2
       29 LOADB                            R8 1
       30 LOADNIL                          R9
       31 MOVE                             R10 R6
       32 MOVE                             R11 R7
       33 RETURN                           R8 4

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["UGCValidationService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R3 K5 [script]
        9 GETTABLEKS                       R2 R3 K6 ["Parent"]
       11 GETTABLEKS                       R1 R2 K6 ["Parent"]
       13 GETIMPORT                        R2 K8 [require]
       15 GETTABLEKS                       R4 R1 K9 ["util"]
       17 GETTABLEKS                       R3 R4 K10 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K8 [require]
       22 GETTABLEKS                       R5 R1 K9 ["util"]
       24 GETTABLEKS                       R4 R5 K11 ["pcallDeferred"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K8 [require]
       29 GETTABLEKS                       R6 R1 K9 ["util"]
       31 GETTABLEKS                       R5 R6 K12 ["calculateMinMax"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K13 [PROTO_1]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R0
       37 DUPCLOSURE                       R6 K14 [PROTO_2]
       38 CAPTURE                          VAL R4
       39 DUPCLOSURE                       R7 K15 [PROTO_3]
       40 CAPTURE                          VAL R5
       41 CAPTURE                          VAL R6
       42 RETURN                           R7 1
