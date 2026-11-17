PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 GETIMPORT                        R3 K2 [utf8.codes]
        4 MOVE                             R4 R0
        5 CALL                             R3 1 3
        6 FORGPREP                         R3
        7 GETIMPORT                        R8 K4 [utf8.char]
        9 MOVE                             R9 R7
       10 CALL                             R8 1 1
       11 LOADN                            R12 128
       12 JUMPIFNOTLT                      R7 R12 ; [+5]
       14 MOVE                             R11 R1
       15 MOVE                             R12 R8
       16 CALL                             R11 1 1
       17 JUMP                             ; [+1]
       18 MOVE                             R11 R8
       19 FASTCALL2                        TABLE_INSERT R2 R11 ; [+4]
       21 MOVE                             R10 R2
       22 GETIMPORT                        R9 K7 [table.insert]
       24 CALL                             R9 2 0
       25 FORGLOOP                         R3 2 ; [-19]
       27 GETIMPORT                        R3 K9 [table.concat]
       29 MOVE                             R4 R2
       30 CALL                             R3 1 -1
       31 RETURN                           R3 -1

PROTO_1:
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
       28 JUMPIFNOTEQKN                    R7 K9 [1] ; [+9]
       30 GETUPVAL                         R7 0
       31 GETIMPORT                        R8 K11 [utf8.nfdnormalize]
       33 MOVE                             R9 R0
       34 CALL                             R8 1 1
       35 MOVE                             R9 R1
       36 CALL                             R7 2 -1
       37 RETURN                           R7 -1
       38 FORGLOOP                         R2 2 ; [-19]
       40 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 GETIMPORT                        R3 K2 [string.upper]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_3:
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
        6 DUPCLOSURE                       R3 K2 [PROTO_2]
        7 CAPTURE                          VAL R2
        8 SETTABLEKS                       R3 R0 K3 ["upper"]
       10 DUPCLOSURE                       R3 K4 [PROTO_3]
       11 CAPTURE                          VAL R2
       12 SETTABLEKS                       R3 R0 K5 ["lower"]
       14 RETURN                           R0 1
