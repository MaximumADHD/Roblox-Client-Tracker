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
       23 MOVE                             R3 R0
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 GETUPVAL                         R8 0
       28 MOVE                             R9 R7
       29 CALL                             R8 1 1
       30 SETTABLE                         R8 R2 R6
       31 FORGLOOP                         R3 2 ; [-5]
       33 FASTCALL2                        SETMETATABLE R2 R1 ; [+5]
       35 MOVE                             R4 R2
       36 MOVE                             R5 R1
       37 GETIMPORT                        R3 K8 [setmetatable]
       39 CALL                             R3 2 0
       40 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
