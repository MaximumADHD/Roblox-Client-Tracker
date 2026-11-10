PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLE                         R0 R1 R2
        3 RETURN                           R0 1

PROTO_1:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 0 0
        3 GETVARARGS                       R1 -1
        4 SETLIST                          R0 R1 -1 [1]
        6 GETUPVAL                         R1 0
        7 SETTABLEN                        R1 R0 1
        8 GETUPVAL                         R1 1
        9 FASTCALL1                        TABLE_UNPACK R0 ; [+3]
       10 MOVE                             R3 R0
       11 GETIMPORT                        R2 K1 [unpack]
       13 CALL                             R2 1 -1
       14 CALL                             R1 -1 -1
       15 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 FASTCALL2                        RAWGET R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K1 [rawget]
        6 CALL                             R2 2 1
        7 JUMPIFNOT                        R2 ; [+1]
        8 RETURN                           R2 1
        9 GETUPVAL                         R3 1
       10 JUMPIFNOT                        R3 ; [+19]
       11 GETIMPORT                        R3 K3 [pcall]
       13 NEWCLOSURE                       R4 P0
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          VAL R1
       16 CALL                             R3 1 2
       17 JUMPIFNOT                        R3 ; [+12]
       18 FASTCALL1                        TYPE R4 ; [+3]
       19 MOVE                             R6 R4
       20 GETIMPORT                        R5 K5 [type]
       22 CALL                             R5 1 1
       23 JUMPIFNOTEQKS                    R5 K6 ["function"] ; [+5]
       25 NEWCLOSURE                       R5 P1
       26 CAPTURE                          UPVAL U1
       27 CAPTURE                          VAL R4
       28 RETURN                           R5 1
       29 RETURN                           R4 1
       30 LOADNIL                          R3
       31 RETURN                           R3 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 DUPTABLE                         R4 K1 [{"__index"}]
        3 NEWCLOSURE                       R5 P0
        4 CAPTURE                          VAL R1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R5 R4 K0 ["__index"]
        8 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       10 MOVE                             R3 R1
       11 GETIMPORT                        R2 K3 [setmetatable]
       13 CALL                             R2 2 1
       14 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_3]
        4 SETTABLEKS                       R1 R0 K1 ["new"]
        6 RETURN                           R0 1
