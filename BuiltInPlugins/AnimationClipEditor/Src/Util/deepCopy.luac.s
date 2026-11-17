PROTO_0:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R2 R0
        2 GETIMPORT                        R1 K1 [type]
        4 CALL                             R1 1 1
        5 LOADNIL                          R2
        6 JUMPIFNOTEQKS                    R1 K2 ["table"] ; [+30]
        8 NEWTABLE                         R2 0 0
       10 GETIMPORT                        R3 K4 [next]
       12 MOVE                             R4 R0
       13 LOADNIL                          R5
       14 FORGPREP                         R3
       15 GETUPVAL                         R8 0
       16 MOVE                             R9 R6
       17 CALL                             R8 1 1
       18 GETUPVAL                         R9 0
       19 MOVE                             R10 R7
       20 CALL                             R9 1 1
       21 SETTABLE                         R9 R2 R8
       22 FORGLOOP                         R3 2 ; [-8]
       24 MOVE                             R4 R2
       25 GETUPVAL                         R5 0
       26 FASTCALL1                        GETMETATABLE R0 ; [+3]
       27 MOVE                             R7 R0
       28 GETIMPORT                        R6 K6 [getmetatable]
       30 CALL                             R6 1 1
       31 CALL                             R5 1 -1
       32 FASTCALL                         SETMETATABLE ; [+2]
       33 GETIMPORT                        R3 K8 [setmetatable]
       35 CALL                             R3 -1 0
       36 RETURN                           R2 1
       37 MOVE                             R2 R0
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 CAPTURE                          VAL R0
        3 RETURN                           R0 1
