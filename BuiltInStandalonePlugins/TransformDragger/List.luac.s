PROTO_0:
        0 LOADN                            R4 1
        1 LENGTH                           R2 R1
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 GETTABLE                         R5 R1 R4
        5 JUMPIFNOTEQ                      R5 R0 ; [+3]
        7 LOADB                            R5 1
        8 RETURN                           R5 1
        9 FORNLOOP                         R2
       10 LOADB                            R2 0
       11 RETURN                           R2 1

PROTO_1:
        0 JUMPIF                           R0 ; [+1]
        1 RETURN                           R1 1
        2 NEWTABLE                         R2 0 0
        4 LOADN                            R5 1
        5 LENGTH                           R3 R1
        6 LOADN                            R4 1
        7 FORNPREP                         R3
        8 GETTABLE                         R7 R1 R5
        9 LOADN                            R10 1
       10 LENGTH                           R8 R0
       11 LOADN                            R9 1
       12 FORNPREP                         R8
       13 GETTABLE                         R11 R0 R10
       14 JUMPIFNOTEQ                      R11 R7 ; [+3]
       16 LOADB                            R6 1
       17 JUMP                             ; [+2]
       18 FORNLOOP                         R8
       19 LOADB                            R6 0
       20 JUMPIF                           R6 ; [+7]
       21 GETTABLE                         R8 R1 R5
       22 FASTCALL2                        TABLE_INSERT R2 R8 ; [+4]
       24 MOVE                             R7 R2
       25 GETIMPORT                        R6 K2 [table.insert]
       27 CALL                             R6 2 0
       28 FORNLOOP                         R3
       29 RETURN                           R2 1

PROTO_2:
        0 NEWTABLE                         R2 0 0
        2 LOADN                            R5 1
        3 LENGTH                           R3 R1
        4 LOADN                            R4 1
        5 FORNPREP                         R3
        6 GETTABLE                         R6 R1 R5
        7 LOADB                            R7 1
        8 SETTABLE                         R7 R2 R6
        9 FORNLOOP                         R3
       10 LOADN                            R5 1
       11 LENGTH                           R3 R0
       12 LOADN                            R4 1
       13 FORNPREP                         R3
       14 GETTABLE                         R7 R0 R5
       15 GETTABLE                         R6 R2 R7
       16 JUMPIFNOT                        R6 ; [+2]
       17 LOADB                            R6 1
       18 RETURN                           R6 1
       19 FORNLOOP                         R3
       20 LOADB                            R3 0
       21 RETURN                           R3 1

PROTO_3:
        0 JUMPIF                           R1 ; [+3]
        1 JUMPIFNOT                        R0 ; [+2]
        2 LOADB                            R2 1
        3 RETURN                           R2 1
        4 JUMPIF                           R1 ; [+3]
        5 JUMPIF                           R0 ; [+2]
        6 LOADB                            R2 0
        7 RETURN                           R2 1
        8 NEWTABLE                         R2 0 0
       10 LOADN                            R5 1
       11 LENGTH                           R3 R1
       12 LOADN                            R4 1
       13 FORNPREP                         R3
       14 GETTABLE                         R6 R1 R5
       15 LOADB                            R7 1
       16 SETTABLE                         R7 R2 R6
       17 FORNLOOP                         R3
       18 LOADN                            R5 1
       19 LENGTH                           R3 R0
       20 LOADN                            R4 1
       21 FORNPREP                         R3
       22 GETTABLE                         R7 R0 R5
       23 GETTABLE                         R6 R2 R7
       24 JUMPIF                           R6 ; [+2]
       25 LOADB                            R6 1
       26 RETURN                           R6 1
       27 FORNLOOP                         R3
       28 LOADB                            R3 0
       29 RETURN                           R3 1

PROTO_4:
        0 GETIMPORT                        R2 K1 [ipairs]
        2 MOVE                             R3 R1
        3 CALL                             R2 1 3
        4 FORGPREP_INEXT                   R2
        5 FASTCALL2                        TABLE_INSERT R0 R6 ; [+5]
        7 MOVE                             R8 R0
        8 MOVE                             R9 R6
        9 GETIMPORT                        R7 K4 [table.insert]
       11 CALL                             R7 2 0
       12 FORGLOOP                         R2 2 [inext] ; [-8]
       14 RETURN                           R0 1

PROTO_5:
        0 NAMECALL                         R2 R0 K0 ["GetChildren"]
        2 CALL                             R2 1 1
        3 NEWTABLE                         R3 0 0
        5 GETIMPORT                        R4 K2 [ipairs]
        7 MOVE                             R5 R2
        8 CALL                             R4 1 3
        9 FORGPREP_INEXT                   R4
       10 LOADK                            R11 K3 ["PartInstance"]
       11 NAMECALL                         R9 R8 K4 ["IsA"]
       13 CALL                             R9 2 1
       14 JUMPIFNOT                        R9 ; [+19]
       15 LOADN                            R12 1
       16 LENGTH                           R10 R1
       17 LOADN                            R11 1
       18 FORNPREP                         R10
       19 GETTABLE                         R13 R1 R12
       20 JUMPIFNOTEQ                      R13 R8 ; [+3]
       22 LOADB                            R9 1
       23 JUMP                             ; [+2]
       24 FORNLOOP                         R10
       25 LOADB                            R9 0
       26 JUMPIF                           R9 ; [+7]
       27 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       29 MOVE                             R10 R3
       30 MOVE                             R11 R8
       31 GETIMPORT                        R9 K7 [table.insert]
       33 CALL                             R9 2 0
       34 LOADK                            R11 K8 ["PVInstance"]
       35 NAMECALL                         R9 R8 K4 ["IsA"]
       37 CALL                             R9 2 1
       38 JUMPIFNOT                        R9 ; [+25]
       39 LOADK                            R11 K9 ["Workspace"]
       40 NAMECALL                         R9 R8 K4 ["IsA"]
       42 CALL                             R9 2 1
       43 JUMPIF                           R9 ; [+20]
       44 MOVE                             R9 R3
       45 GETUPVAL                         R10 0
       46 MOVE                             R11 R8
       47 MOVE                             R12 R1
       48 CALL                             R10 2 1
       49 GETIMPORT                        R11 K2 [ipairs]
       51 MOVE                             R12 R10
       52 CALL                             R11 1 3
       53 FORGPREP_INEXT                   R11
       54 FASTCALL2                        TABLE_INSERT R9 R15 ; [+5]
       56 MOVE                             R17 R9
       57 MOVE                             R18 R15
       58 GETIMPORT                        R16 K7 [table.insert]
       60 CALL                             R16 2 0
       61 FORGLOOP                         R11 2 [inext] ; [-8]
       63 MOVE                             R3 R9
       64 FORGLOOP                         R4 2 [inext] ; [-55]
       66 RETURN                           R3 1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 NEWTABLE                         R2 0 0
        4 LOADN                            R5 1
        5 LENGTH                           R3 R0
        6 LOADN                            R4 1
        7 FORNPREP                         R3
        8 GETTABLE                         R7 R0 R5
        9 GETTABLE                         R6 R2 R7
       10 JUMPIF                           R6 ; [+10]
       11 GETTABLE                         R6 R0 R5
       12 LOADB                            R7 1
       13 SETTABLE                         R7 R2 R6
       14 GETTABLE                         R8 R0 R5
       15 FASTCALL2                        TABLE_INSERT R1 R8 ; [+4]
       17 MOVE                             R7 R1
       18 GETIMPORT                        R6 K2 [table.insert]
       20 CALL                             R6 2 0
       21 FORNLOOP                         R3
       22 RETURN                           R1 1

PROTO_7:
        0 LOADN                            R4 1
        1 LENGTH                           R2 R0
        2 LOADN                            R3 1
        3 FORNPREP                         R2
        4 GETTABLE                         R5 R0 R4
        5 MOVE                             R7 R1
        6 NAMECALL                         R5 R5 K0 ["IsA"]
        8 CALL                             R5 2 1
        9 JUMPIFNOT                        R5 ; [+2]
       10 LOADB                            R5 0
       11 RETURN                           R5 1
       12 FORNLOOP                         R2
       13 LOADB                            R2 1
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPCLOSURE                       R1 K1 [PROTO_1]
        3 DUPCLOSURE                       R2 K2 [PROTO_2]
        4 DUPCLOSURE                       R3 K3 [PROTO_3]
        5 DUPCLOSURE                       R4 K4 [PROTO_4]
        6 DUPCLOSURE                       R5 K5 [PROTO_5]
        7 CAPTURE                          VAL R5
        8 DUPCLOSURE                       R6 K6 [PROTO_6]
        9 DUPCLOSURE                       R7 K7 [PROTO_7]
       10 NEWTABLE                         R8 8 0
       12 SETTABLEKS                       R0 R8 K8 ["itemExistsInList"]
       14 SETTABLEKS                       R1 R8 K9 ["filterOutItems"]
       16 SETTABLEKS                       R4 R8 K10 ["combineLists"]
       18 SETTABLEKS                       R5 R8 K11 ["createIgnoreListGivenWhiteList"]
       20 SETTABLEKS                       R6 R8 K12 ["removeDuplicates"]
       22 SETTABLEKS                       R7 R8 K13 ["listDoesNotContainType"]
       24 SETTABLEKS                       R2 R8 K14 ["listContainsAnyItems"]
       26 SETTABLEKS                       R3 R8 K15 ["itemsHasItemNotInList"]
       28 RETURN                           R8 1
