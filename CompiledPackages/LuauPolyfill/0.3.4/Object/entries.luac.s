PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+2]
        2 LOADB                            R2 0 +1
        3 LOADB                            R2 1
        4 FASTCALL2K                       ASSERT R2 K0 ; [+4]
        6 LOADK                            R3 K0 ["cannot get entries from a nil value"]
        7 GETIMPORT                        R1 K2 [assert]
        9 CALL                             R1 2 0
       10 FASTCALL1                        TYPEOF R0 ; [+3]
       11 MOVE                             R2 R0
       12 GETIMPORT                        R1 K4 [typeof]
       14 CALL                             R1 1 1
       15 NEWTABLE                         R2 0 0
       17 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+21]
       19 GETIMPORT                        R3 K7 [pairs]
       21 MOVE                             R4 R0
       22 CALL                             R3 1 3
       23 FORGPREP_NEXT                    R3
       24 NEWTABLE                         R10 0 2
       26 MOVE                             R11 R6
       27 MOVE                             R12 R7
       28 SETLIST                          R10 R11 2 [1]
       30 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       32 MOVE                             R9 R2
       33 GETIMPORT                        R8 K9 [table.insert]
       35 CALL                             R8 2 0
       36 FORGLOOP                         R3 2 ; [-13]
       38 RETURN                           R2 1
       39 JUMPIFNOTEQKS                    R1 K10 ["string"] ; [+29]
       41 LOADN                            R5 1
       42 FASTCALL1                        STRING_LEN R0 ; [+3]
       43 MOVE                             R7 R0
       44 GETIMPORT                        R6 K12 [string.len]
       46 CALL                             R6 1 1
       47 MOVE                             R3 R6
       48 LOADN                            R4 1
       49 FORNPREP                         R3
       50 NEWTABLE                         R6 0 2
       52 FASTCALL1                        TOSTRING R5 ; [+3]
       53 MOVE                             R8 R5
       54 GETIMPORT                        R7 K14 [tostring]
       56 CALL                             R7 1 1
       57 FASTCALL3                        STRING_SUB R0 R5 R5
       59 MOVE                             R9 R0
       60 MOVE                             R10 R5
       61 MOVE                             R11 R5
       62 GETIMPORT                        R8 K16 [string.sub]
       64 CALL                             R8 3 1
       65 SETLIST                          R6 R7 2 [1]
       67 SETTABLE                         R6 R2 R5
       68 FORNLOOP                         R3
       69 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R4 K3 [script]
        5 GETTABLEKS                       R3 R4 K4 ["Parent"]
        7 GETTABLEKS                       R2 R3 K4 ["Parent"]
        9 GETTABLEKS                       R1 R2 K5 ["Array"]
       11 CALL                             R0 1 1
       12 DUPCLOSURE                       R1 K6 [PROTO_0]
       13 RETURN                           R1 1
