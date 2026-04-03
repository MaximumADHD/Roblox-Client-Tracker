PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["table"] ; [+2]
        7 RETURN                           R0 1
        8 JUMPIFNOT                        R1 ; [+4]
        9 GETTABLE                         R2 R1 R0
       10 JUMPIFNOT                        R2 ; [+2]
       11 GETTABLE                         R2 R1 R0
       12 RETURN                           R2 1
       13 MOVE                             R2 R1
       14 JUMPIF                           R2 ; [+2]
       15 NEWTABLE                         R2 0 0
       17 NEWTABLE                         R4 0 0
       19 FASTCALL1                        GETMETATABLE R0 ; [+3]
       20 MOVE                             R6 R0
       21 GETIMPORT                        R5 K4 [getmetatable]
       23 CALL                             R5 1 1
       24 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
       26 GETIMPORT                        R3 K6 [setmetatable]
       28 CALL                             R3 2 1
       29 SETTABLE                         R3 R2 R0
       30 GETIMPORT                        R4 K8 [pairs]
       32 MOVE                             R5 R0
       33 CALL                             R4 1 3
       34 FORGPREP_NEXT                    R4
       35 GETUPVAL                         R9 0
       36 MOVE                             R10 R7
       37 MOVE                             R11 R2
       38 CALL                             R9 2 1
       39 GETUPVAL                         R10 0
       40 MOVE                             R11 R8
       41 MOVE                             R12 R2
       42 CALL                             R10 2 1
       43 SETTABLE                         R10 R3 R9
       44 FORGLOOP                         R4 2 ; [-10]
       46 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
