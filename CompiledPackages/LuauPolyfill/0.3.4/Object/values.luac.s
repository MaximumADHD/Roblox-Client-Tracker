PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["cannot extract values from a nil value"]
        5 CALL                             R1 1 0
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K4 [typeof]
       10 CALL                             R1 1 1
       11 NEWTABLE                         R2 0 0
       13 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+16]
       15 GETIMPORT                        R3 K7 [pairs]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 3
       19 FORGPREP_NEXT                    R3
       20 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       22 MOVE                             R9 R2
       23 MOVE                             R10 R7
       24 GETIMPORT                        R8 K9 [table.insert]
       26 CALL                             R8 2 0
       27 FORGLOOP                         R3 2 ; [-8]
       29 RETURN                           R2 1
       30 JUMPIFNOTEQKS                    R1 K10 ["string"] ; [+15]
       32 LOADN                            R5 1
       33 NAMECALL                         R6 R0 K11 ["len"]
       35 CALL                             R6 1 1
       36 MOVE                             R3 R6
       37 LOADN                            R4 1
       38 FORNPREP                         R3
       39 MOVE                             R8 R5
       40 MOVE                             R9 R5
       41 NAMECALL                         R6 R0 K12 ["sub"]
       43 CALL                             R6 3 1
       44 SETTABLE                         R6 R2 R5
       45 FORNLOOP                         R3
       46 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
