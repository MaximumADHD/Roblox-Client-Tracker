PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 SETTABLE                         R2 R1 R0
        3 GETIMPORT                        R3 K1 [pairs]
        5 MOVE                             R4 R0
        6 CALL                             R3 1 3
        7 FORGPREP_NEXT                    R3
        8 GETUPVAL                         R8 0
        9 MOVE                             R9 R7
       10 MOVE                             R10 R1
       11 CALL                             R8 2 1
       12 SETTABLE                         R8 R2 R6
       13 FORGLOOP                         R3 2 ; [-6]
       15 RETURN                           R2 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 GETTABLE                         R2 R1 R0
        9 JUMPIFNOT                        R2 ; [+2]
       10 GETTABLE                         R2 R1 R0
       11 RETURN                           R2 1
       12 GETUPVAL                         R2 0
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 1
       16 FASTCALL1                        GETMETATABLE R0 ; [+3]
       17 MOVE                             R4 R0
       18 GETIMPORT                        R3 K4 [getmetatable]
       20 CALL                             R3 1 1
       21 JUMPIFNOT                        R3 ; [+14]
       22 FASTCALL1                        TYPEOF R3 ; [+3]
       23 MOVE                             R5 R3
       24 GETIMPORT                        R4 K1 [typeof]
       26 CALL                             R4 1 1
       27 JUMPIFNOTEQKS                    R4 K2 ["table"] ; [+8]
       29 FASTCALL2                        SETMETATABLE R2 R3 ; [+5]
       31 MOVE                             R5 R2
       32 MOVE                             R6 R3
       33 GETIMPORT                        R4 K6 [setmetatable]
       35 CALL                             R4 2 0
       36 RETURN                           R2 1

PROTO_2:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+2]
        2 NEWTABLE                         R2 0 0
        4 MOVE                             R1 R2
        5 DUPTABLE                         R4 K1 [{"_mode"}]
        6 LOADK                            R5 K2 ["kv"]
        7 SETTABLEKS                       R5 R4 K0 ["_mode"]
        9 FASTCALL2                        SETMETATABLE R1 R4 ; [+4]
       11 MOVE                             R3 R1
       12 GETIMPORT                        R2 K4 [setmetatable]
       14 CALL                             R2 2 0
       15 GETUPVAL                         R2 0
       16 MOVE                             R3 R0
       17 MOVE                             R4 R1
       18 CALL                             R2 2 -1
       19 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 LOADNIL                          R0
        2 LOADNIL                          R1
        3 NEWCLOSURE                       R0 P0
        4 CAPTURE                          REF R1
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          REF R0
        7 NEWCLOSURE                       R2 P2
        8 CAPTURE                          REF R1
        9 CLOSEUPVALS                      R0
       10 RETURN                           R2 1
