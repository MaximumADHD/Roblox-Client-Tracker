PROTO_0:
        0 GETIMPORT                        R2 K2 [utf8.len]
        2 MOVE                             R3 R0
        3 CALL                             R2 1 1
        4 FASTCALL1                        STRING_LEN R0 ; [+3]
        5 MOVE                             R4 R0
        6 GETIMPORT                        R3 K4 [string.len]
        8 CALL                             R3 1 1
        9 JUMPIFNOTEQ                      R2 R3 ; [+5]
       11 MOVE                             R2 R1
       12 MOVE                             R3 R0
       13 CALL                             R2 1 -1
       14 RETURN                           R2 -1
       15 GETIMPORT                        R2 K6 [utf8.codes]
       17 MOVE                             R3 R0
       18 CALL                             R2 1 3
       19 FORGPREP                         R2
       20 GETIMPORT                        R8 K8 [utf8.char]
       22 MOVE                             R9 R6
       23 CALL                             R8 1 1
       24 FASTCALL1                        STRING_LEN R8 ; [+2]
       25 GETIMPORT                        R7 K4 [string.len]
       27 CALL                             R7 1 1
       28 JUMPIFNOTEQKN                    R7 K9 [1] ; [+8]
       30 MOVE                             R7 R1
       31 GETIMPORT                        R8 K11 [utf8.nfdnormalize]
       33 MOVE                             R9 R0
       34 CALL                             R8 1 -1
       35 CALL                             R7 -1 -1
       36 RETURN                           R7 -1
       37 FORGLOOP                         R2 2 ; [-18]
       39 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETIMPORT                        R3 K2 [string.upper]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETIMPORT                        R3 K2 [string.lower]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 DUPCLOSURE                       R2 K1 [PROTO_1]
        5 CAPTURE                          VAL R1
        6 SETTABLEKS                       R2 R0 K2 ["upper"]
        8 DUPCLOSURE                       R2 K3 [PROTO_2]
        9 CAPTURE                          VAL R1
       10 SETTABLEKS                       R2 R0 K4 ["lower"]
       12 RETURN                           R0 1
