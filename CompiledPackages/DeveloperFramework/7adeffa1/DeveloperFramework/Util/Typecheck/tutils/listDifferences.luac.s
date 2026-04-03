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
        1 NEWTABLE                         R5 0 0
        3 LOADN                            R8 1
        4 LENGTH                           R6 R0
        5 LOADN                            R7 1
        6 FORNPREP                         R6
        7 GETTABLE                         R9 R0 R8
        8 LOADB                            R10 1
        9 SETTABLE                         R10 R5 R9
       10 FORNLOOP                         R6
       11 MOVE                             R4 R5
       12 NEWTABLE                         R6 0 0
       14 LOADN                            R9 1
       15 LENGTH                           R7 R1
       16 LOADN                            R8 1
       17 FORNPREP                         R7
       18 GETTABLE                         R10 R1 R9
       19 LOADB                            R11 1
       20 SETTABLE                         R11 R6 R10
       21 FORNLOOP                         R7
       22 MOVE                             R5 R6
       23 CALL                             R3 2 1
       24 NEWTABLE                         R4 0 0
       26 GETIMPORT                        R5 K1 [pairs]
       28 MOVE                             R6 R3
       29 CALL                             R5 1 3
       30 FORGPREP_NEXT                    R5
       31 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       33 MOVE                             R11 R4
       34 MOVE                             R12 R8
       35 GETIMPORT                        R10 K4 [table.insert]
       37 CALL                             R10 2 0
       38 FORGLOOP                         R5 2 ; [-8]
       40 MOVE                             R2 R4
       41 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["tableDifference"]
        9 CALL                             R0 1 1
       10 DUPCLOSURE                       R1 K6 [PROTO_0]
       11 DUPCLOSURE                       R2 K7 [PROTO_1]
       12 DUPCLOSURE                       R3 K8 [PROTO_2]
       13 CAPTURE                          VAL R0
       14 RETURN                           R3 1
