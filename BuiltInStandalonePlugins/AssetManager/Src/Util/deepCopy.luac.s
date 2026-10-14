PROTO_0:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 GETTABLE                         R2 R1 R0
        9 JUMPIFEQKNIL                     R2 ; [+2]
       11 RETURN                           R2 1
       12 NEWTABLE                         R3 0 0
       14 FASTCALL1                        GETMETATABLE R0 ; [+3]
       15 MOVE                             R7 R0
       16 GETIMPORT                        R6 K4 [getmetatable]
       18 CALL                             R6 1 1
       19 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       21 MOVE                             R5 R3
       22 GETIMPORT                        R4 K6 [setmetatable]
       24 CALL                             R4 2 0
       25 SETTABLE                         R3 R1 R0
       26 GETIMPORT                        R4 K8 [pairs]
       28 MOVE                             R5 R0
       29 CALL                             R4 1 3
       30 FORGPREP_NEXT                    R4
       31 GETUPVAL                         R9 0
       32 MOVE                             R10 R7
       33 MOVE                             R11 R1
       34 CALL                             R9 2 1
       35 GETUPVAL                         R10 0
       36 MOVE                             R11 R8
       37 MOVE                             R12 R1
       38 CALL                             R10 2 1
       39 SETTABLE                         R10 R3 R9
       40 FORGLOOP                         R4 2 ; [-10]
       42 RETURN                           R3 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 NEWTABLE                         R3 0 0
        4 CALL                             R1 2 1
        5 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 DUPCLOSURE                       R1 K1 [PROTO_1]
        4 CAPTURE                          VAL R0
        5 RETURN                           R1 1
