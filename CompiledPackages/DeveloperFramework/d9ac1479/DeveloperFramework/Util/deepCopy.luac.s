PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+9]
        7 GETTABLEKS                       R2 R0 K3 ["render"]
        9 FASTCALL1                        TYPE R2 ; [+2]
       10 GETIMPORT                        R1 K1 [type]
       12 CALL                             R1 1 1
       13 JUMPIFNOTEQKS                    R1 K4 ["function"] ; [+2]
       15 RETURN                           R0 1
       16 FASTCALL1                        GETMETATABLE R0 ; [+3]
       17 MOVE                             R2 R0
       18 GETIMPORT                        R1 K6 [getmetatable]
       20 CALL                             R1 1 1
       21 NEWTABLE                         R2 0 0
       23 GETIMPORT                        R3 K8 [pairs]
       25 MOVE                             R4 R0
       26 CALL                             R3 1 3
       27 FORGPREP_NEXT                    R3
       28 FASTCALL1                        TYPE R7 ; [+3]
       29 MOVE                             R9 R7
       30 GETIMPORT                        R8 K1 [type]
       32 CALL                             R8 1 1
       33 JUMPIFNOTEQKS                    R8 K2 ["table"] ; [+6]
       35 GETUPVAL                         R8 0
       36 MOVE                             R9 R7
       37 CALL                             R8 1 1
       38 SETTABLE                         R8 R2 R6
       39 JUMP                             ; [+1]
       40 SETTABLE                         R7 R2 R6
       41 FORGLOOP                         R3 2 ; [-14]
       43 FASTCALL2                        SETMETATABLE R2 R1 ; [+5]
       45 MOVE                             R4 R2
       46 MOVE                             R5 R1
       47 GETIMPORT                        R3 K10 [setmetatable]
       49 CALL                             R3 2 0
       50 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
