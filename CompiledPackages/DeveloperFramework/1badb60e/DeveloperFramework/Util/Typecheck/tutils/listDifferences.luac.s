PROTO_0:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 1
        3 LENGTH                           R2 R0
        4 LOADN                            R3 1
        5 FORNPREP                         R2
        6 GETTABLE                         R5 R0 R4
        7 LOADB                            R6 1
        8 SETTABLE                         R6 R1 R5
        9 FORNLOOP                         R2
       10 RETURN                           R1 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 GETIMPORT                        R2 K1 [pairs]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 3
        6 FORGPREP_NEXT                    R2
        7 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
        9 MOVE                             R8 R1
       10 MOVE                             R9 R5
       11 GETIMPORT                        R7 K4 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-8]
       16 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 NEWTABLE                         R4 0 0
        3 LOADN                            R7 1
        4 LENGTH                           R5 R0
        5 LOADN                            R6 1
        6 FORNPREP                         R5
        7 GETTABLE                         R8 R0 R7
        8 LOADB                            R9 1
        9 SETTABLE                         R9 R4 R8
       10 FORNLOOP                         R5
       11 NEWTABLE                         R5 0 0
       13 LOADN                            R8 1
       14 LENGTH                           R6 R1
       15 LOADN                            R7 1
       16 FORNPREP                         R6
       17 GETTABLE                         R9 R1 R8
       18 LOADB                            R10 1
       19 SETTABLE                         R10 R5 R9
       20 FORNLOOP                         R6
       21 CALL                             R3 2 1
       22 NEWTABLE                         R2 0 0
       24 GETIMPORT                        R4 K1 [pairs]
       26 MOVE                             R5 R3
       27 CALL                             R4 1 3
       28 FORGPREP_NEXT                    R4
       29 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       31 MOVE                             R10 R2
       32 MOVE                             R11 R7
       33 GETIMPORT                        R9 K4 [table.insert]
       35 CALL                             R9 2 0
       36 FORGLOOP                         R4 2 ; [-8]
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["tableDifference"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 DUPCLOSURE                       R2 K7 [PROTO_1]
       12 DUPCLOSURE                       R3 K8 [PROTO_2]
       13 CAPTURE                          VAL R0
       14 RETURN                           R3 1
