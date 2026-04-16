PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 MOVE                             R4 R0
        3 LOADNIL                          R5
        4 LOADNIL                          R6
        5 FORGPREP                         R4
        6 FASTCALL1                        TOSTRING R7 ; [+3]
        7 MOVE                             R12 R7
        8 GETIMPORT                        R11 K1 [tostring]
       10 CALL                             R11 1 1
       11 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       13 MOVE                             R10 R3
       14 GETIMPORT                        R9 K4 [table.insert]
       16 CALL                             R9 2 0
       17 FORGLOOP                         R4 1 ; [-12]
       19 JUMPIFNOT                        R2 ; [+4]
       20 GETIMPORT                        R4 K6 [table.sort]
       22 MOVE                             R5 R3
       23 CALL                             R4 1 0
       24 GETIMPORT                        R4 K8 [table.concat]
       26 MOVE                             R5 R3
       27 MOVE                             R6 R1
       28 CALL                             R4 2 -1
       29 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["keysToString"]
        6 RETURN                           R0 1
