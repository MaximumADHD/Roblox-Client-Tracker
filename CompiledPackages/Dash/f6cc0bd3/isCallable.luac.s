PROTO_0:
        0 LOADB                            R1 1
        1 FASTCALL1                        TYPE R0 ; [+3]
        2 MOVE                             R3 R0
        3 GETIMPORT                        R2 K1 [type]
        5 CALL                             R2 1 1
        6 JUMPIFEQKS                       R2 K2 ["function"] ; [+25]
        8 FASTCALL1                        TYPE R0 ; [+3]
        9 MOVE                             R3 R0
       10 GETIMPORT                        R2 K1 [type]
       12 CALL                             R2 1 1
       13 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+17]
       15 FASTCALL1                        GETMETATABLE R0 ; [+3]
       16 MOVE                             R3 R0
       17 GETIMPORT                        R2 K5 [getmetatable]
       19 CALL                             R2 1 1
       20 JUMPIFNOT                        R2 ; [+10]
       21 LOADB                            R1 1
       22 FASTCALL1                        GETMETATABLE R0 ; [+3]
       23 MOVE                             R4 R0
       24 GETIMPORT                        R3 K5 [getmetatable]
       26 CALL                             R3 1 1
       27 GETTABLEKS                       R2 R3 K6 ["__call"]
       29 JUMPIFNOTEQKNIL                  R2 ; [+2]
       31 LOADB                            R1 0
       32 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
