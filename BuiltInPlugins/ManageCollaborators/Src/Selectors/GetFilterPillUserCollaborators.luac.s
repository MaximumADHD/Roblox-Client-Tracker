PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 3
        3 FORGPREP                         R1
        4 GETTABLEKS                       R6 R5 K0 ["key"]
        6 JUMPIFNOTEQKS                    R6 K1 ["EarlyTesters"] ; [+3]
        8 LOADB                            R6 1
        9 RETURN                           R6 1
       10 FORGLOOP                         R1 2 ; [-7]
       12 LOADB                            R1 0
       13 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 JUMPIFNOTEQ                      R0 R2 ; [+2]
        3 LOADB                            R1 0 +1
        4 LOADB                            R1 1
        5 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 2
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R0
        5 CALL                             R4 1 3
        6 FORGPREP                         R4
        7 GETTABLEKS                       R9 R8 K0 ["key"]
        9 JUMPIFNOTEQKS                    R9 K1 ["EarlyTesters"] ; [+3]
       11 LOADB                            R3 1
       12 JUMP                             ; [+3]
       13 FORGLOOP                         R4 2 ; [-7]
       15 LOADB                            R3 0
       16 JUMPIF                           R3 ; [+1]
       17 RETURN                           R1 2
       18 GETTABLEKS                       R3 R0 K2 ["GameOwnerMetadata"]
       20 GETTABLEKS                       R3 R3 K3 ["groupOwnerId"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R3
       24 GETUPVAL                         R5 2
       25 GETTABLEKS                       R5 R5 K4 ["filter"]
       27 MOVE                             R6 R1
       28 MOVE                             R7 R4
       29 CALL                             R5 2 1
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R6 R6 K4 ["filter"]
       33 MOVE                             R7 R2
       34 MOVE                             R8 R4
       35 CALL                             R6 2 -1
       36 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Dash"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Src"]
       20 GETTABLEKS                       R3 R3 K8 ["Selectors"]
       22 GETTABLEKS                       R3 R3 K9 ["GetFilterPills"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K7 ["Src"]
       29 GETTABLEKS                       R4 R4 K8 ["Selectors"]
       31 GETTABLEKS                       R4 R4 K10 ["GetUserCollaborators"]
       33 CALL                             R3 1 1
       34 DUPCLOSURE                       R4 K11 [PROTO_0]
       35 CAPTURE                          VAL R2
       36 DUPCLOSURE                       R5 K12 [PROTO_2]
       37 CAPTURE                          VAL R3
       38 CAPTURE                          VAL R2
       39 CAPTURE                          VAL R1
       40 RETURN                           R5 1
