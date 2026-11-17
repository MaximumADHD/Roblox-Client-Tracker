PROTO_0:
        0 DIVK                             R3 R2 K0 [2]
        1 LOADN                            R6 -1
        2 LOADN                            R4 1
        3 LOADN                            R5 2
        4 FORNPREP                         R4
        5 LOADN                            R9 -1
        6 LOADN                            R7 1
        7 LOADN                            R8 2
        8 FORNPREP                         R7
        9 LOADN                            R12 -1
       10 LOADN                            R10 1
       11 LOADN                            R11 2
       12 FORNPREP                         R10
       13 MOVE                             R14 R0
       14 GETTABLEKS                       R19 R3 K1 ["X"]
       16 MUL                              R18 R19 R6
       17 GETTABLEKS                       R20 R3 K2 ["Y"]
       19 MUL                              R19 R20 R9
       20 GETTABLEKS                       R21 R3 K3 ["Z"]
       22 MUL                              R20 R21 R12
       23 FASTCALL                         VECTOR ; [+2]
       24 GETIMPORT                        R17 K6 [Vector3.new]
       26 CALL                             R17 3 1
       27 NAMECALL                         R15 R1 K7 ["PointToWorldSpace"]
       29 CALL                             R15 2 -1
       30 FASTCALL                         TABLE_INSERT ; [+2]
       31 GETIMPORT                        R13 K10 [table.insert]
       33 CALL                             R13 -1 0
       34 FORNLOOP                         R10
       35 FORNLOOP                         R7
       36 FORNLOOP                         R4
       37 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 LOADK                            R9 K0 ["Model"]
        7 NAMECALL                         R7 R6 K1 ["IsA"]
        9 CALL                             R7 2 1
       10 JUMPIFNOT                        R7 ; [+9]
       11 NAMECALL                         R7 R6 K2 ["GetBoundingBox"]
       13 CALL                             R7 1 2
       14 GETUPVAL                         R9 0
       15 MOVE                             R10 R1
       16 MOVE                             R11 R7
       17 MOVE                             R12 R8
       18 CALL                             R9 3 0
       19 JUMP                             ; [+29]
       20 LOADK                            R9 K3 ["BasePart"]
       21 NAMECALL                         R7 R6 K1 ["IsA"]
       23 CALL                             R7 2 1
       24 JUMPIFNOT                        R7 ; [+8]
       25 GETUPVAL                         R7 0
       26 MOVE                             R8 R1
       27 GETTABLEKS                       R9 R6 K4 ["CFrame"]
       29 GETTABLEKS                       R10 R6 K5 ["Size"]
       31 CALL                             R7 3 0
       32 JUMP                             ; [+16]
       33 LOADK                            R9 K6 ["PVInstance"]
       34 NAMECALL                         R7 R6 K1 ["IsA"]
       36 CALL                             R7 2 1
       37 JUMPIFNOT                        R7 ; [+11]
       38 NAMECALL                         R9 R6 K7 ["GetPivot"]
       40 CALL                             R9 1 1
       41 GETTABLEKS                       R9 R9 K8 ["Position"]
       43 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       45 MOVE                             R8 R1
       46 GETIMPORT                        R7 K11 [table.insert]
       48 CALL                             R7 2 0
       49 FORGLOOP                         R2 2 ; [-44]
       51 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 CAPTURE                          VAL R0
        4 RETURN                           R1 1
