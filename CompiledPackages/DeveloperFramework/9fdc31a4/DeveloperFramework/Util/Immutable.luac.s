PROTO_0:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 LOADN                            R3 1
        4 LOADK                            R5 K0 ["#"]
        5 FASTCALL1                        SELECT_VARARG R5 ; [+3]
        6 GETIMPORT                        R4 K2 [select]
        8 GETVARARGS                       R6 -1
        9 CALL                             R4 -1 1
       10 MOVE                             R1 R4
       11 LOADN                            R2 1
       12 FORNPREP                         R1
       13 FASTCALL1                        SELECT_VARARG R3 ; [+4]
       14 GETIMPORT                        R4 K2 [select]
       16 MOVE                             R5 R3
       17 GETVARARGS                       R6 -1
       18 CALL                             R4 -1 1
       19 GETIMPORT                        R5 K4 [pairs]
       21 MOVE                             R6 R4
       22 CALL                             R5 1 3
       23 FORGPREP_NEXT                    R5
       24 SETTABLE                         R9 R0 R8
       25 FORGLOOP                         R5 2 ; [-2]
       27 FORNLOOP                         R1
       28 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 LOADN                            R3 1
        4 LOADK                            R5 K0 ["#"]
        5 FASTCALL1                        SELECT_VARARG R5 ; [+3]
        6 GETIMPORT                        R4 K2 [select]
        8 GETVARARGS                       R6 -1
        9 CALL                             R4 -1 1
       10 MOVE                             R1 R4
       11 LOADN                            R2 1
       12 FORNPREP                         R1
       13 FASTCALL1                        SELECT_VARARG R3 ; [+4]
       14 GETIMPORT                        R4 K2 [select]
       16 MOVE                             R5 R3
       17 GETVARARGS                       R6 -1
       18 CALL                             R4 -1 1
       19 LENGTH                           R5 R0
       20 LOADN                            R8 1
       21 LENGTH                           R6 R4
       22 LOADN                            R7 1
       23 FORNPREP                         R6
       24 ADD                              R9 R5 R8
       25 GETTABLE                         R10 R4 R8
       26 SETTABLE                         R10 R0 R9
       27 FORNLOOP                         R6
       28 FORNLOOP                         R1
       29 RETURN                           R0 1

PROTO_2:
        0 GETIMPORT                        R3 K2 [table.clone]
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 SETTABLE                         R2 R3 R1
        5 RETURN                           R3 1

PROTO_3:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 LENGTH                           R2 R0
        4 LOADN                            R5 1
        5 MOVE                             R3 R2
        6 LOADN                            R4 1
        7 FORNPREP                         R3
        8 GETTABLE                         R6 R0 R5
        9 SETTABLE                         R6 R1 R5
       10 FORNLOOP                         R3
       11 LOADN                            R5 1
       12 LOADK                            R7 K0 ["#"]
       13 FASTCALL1                        SELECT_VARARG R7 ; [+3]
       14 GETIMPORT                        R6 K2 [select]
       16 GETVARARGS                       R8 -1
       17 CALL                             R6 -1 1
       18 MOVE                             R3 R6
       19 LOADN                            R4 1
       20 FORNPREP                         R3
       21 ADD                              R6 R2 R5
       22 FASTCALL1                        SELECT_VARARG R5 ; [+4]
       23 GETIMPORT                        R7 K2 [select]
       25 MOVE                             R8 R5
       26 GETVARARGS                       R9 -1
       27 CALL                             R7 -1 1
       28 SETTABLE                         R7 R1 R6
       29 FORNLOOP                         R3
       30 RETURN                           R1 1

PROTO_4:
        0 PREPVARARGS                      1
        1 NEWTABLE                         R1 0 0
        3 GETIMPORT                        R2 K1 [pairs]
        5 MOVE                             R3 R0
        6 CALL                             R2 1 3
        7 FORGPREP_NEXT                    R2
        8 LOADB                            R7 0
        9 LOADN                            R10 1
       10 LOADK                            R12 K2 ["#"]
       11 FASTCALL1                        SELECT_VARARG R12 ; [+3]
       12 GETIMPORT                        R11 K4 [select]
       14 GETVARARGS                       R13 -1
       15 CALL                             R11 -1 1
       16 MOVE                             R8 R11
       17 LOADN                            R9 1
       18 FORNPREP                         R8
       19 FASTCALL1                        SELECT_VARARG R10 ; [+4]
       20 GETIMPORT                        R11 K4 [select]
       22 MOVE                             R12 R10
       23 GETVARARGS                       R13 -1
       24 CALL                             R11 -1 1
       25 JUMPIFNOTEQ                      R5 R11 ; [+3]
       27 LOADB                            R7 1
       28 JUMP                             ; [+1]
       29 FORNLOOP                         R8
       30 JUMPIF                           R7 ; [+1]
       31 SETTABLE                         R6 R1 R5
       32 FORGLOOP                         R2 2 ; [-25]
       34 RETURN                           R1 1

PROTO_5:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 LENGTH                           R3 R0
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 JUMPIFEQ                         R5 R1 ; [+8]
        8 GETTABLE                         R8 R0 R5
        9 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       11 MOVE                             R7 R2
       12 GETIMPORT                        R6 K2 [table.insert]
       14 CALL                             R6 2 0
       15 FORNLOOP                         R3
       16 RETURN                           R2 1

PROTO_6:
        0 NEWTABLE                         R3 0 0
        2 LOADN                            R6 1
        3 LENGTH                           R4 R0
        4 LOADN                            R5 1
        5 FORNPREP                         R4
        6 JUMPIFLT                         R6 R1 ; [+4]
        8 ADD                              R7 R1 R2
        9 JUMPIFNOTLE                      R7 R6 ; [+8]
       11 GETTABLE                         R9 R0 R6
       12 FASTCALL2                        TABLE_INSERT R3 R9 ; [+4]
       14 MOVE                             R8 R3
       15 GETIMPORT                        R7 K2 [table.insert]
       17 CALL                             R7 2 0
       18 FORNLOOP                         R4
       19 RETURN                           R3 1

PROTO_7:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 LENGTH                           R3 R0
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 GETTABLE                         R6 R0 R5
        7 JUMPIFEQ                         R6 R1 ; [+8]
        9 GETTABLE                         R8 R0 R5
       10 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       12 MOVE                             R7 R2
       13 GETIMPORT                        R6 K2 [table.insert]
       15 CALL                             R6 2 0
       16 FORNLOOP                         R3
       17 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["JoinDictionaries"]
        6 DUPCLOSURE                       R1 K2 [PROTO_1]
        7 SETTABLEKS                       R1 R0 K3 ["JoinLists"]
        9 DUPCLOSURE                       R1 K4 [PROTO_2]
       10 SETTABLEKS                       R1 R0 K5 ["Set"]
       12 DUPCLOSURE                       R1 K6 [PROTO_3]
       13 SETTABLEKS                       R1 R0 K7 ["Append"]
       15 DUPCLOSURE                       R1 K8 [PROTO_4]
       16 SETTABLEKS                       R1 R0 K9 ["RemoveFromDictionary"]
       18 DUPCLOSURE                       R1 K10 [PROTO_5]
       19 SETTABLEKS                       R1 R0 K11 ["RemoveFromList"]
       21 DUPCLOSURE                       R1 K12 [PROTO_6]
       22 SETTABLEKS                       R1 R0 K13 ["RemoveRangeFromList"]
       24 DUPCLOSURE                       R1 K14 [PROTO_7]
       25 SETTABLEKS                       R1 R0 K15 ["RemoveValueFromList"]
       27 RETURN                           R0 1
