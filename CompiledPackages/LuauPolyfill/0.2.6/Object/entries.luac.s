PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["cannot get entries from a nil value"]
        5 CALL                             R1 1 0
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K4 [typeof]
       10 CALL                             R1 1 1
       11 NEWTABLE                         R2 0 0
       13 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+21]
       15 GETIMPORT                        R3 K7 [pairs]
       17 MOVE                             R4 R0
       18 CALL                             R3 1 3
       19 FORGPREP_NEXT                    R3
       20 NEWTABLE                         R10 0 2
       22 MOVE                             R11 R6
       23 MOVE                             R12 R7
       24 SETLIST                          R10 R11 2 [1]
       26 FASTCALL2                        TABLE_INSERT R2 R10 ; [+4]
       28 MOVE                             R9 R2
       29 GETIMPORT                        R8 K9 [table.insert]
       31 CALL                             R8 2 0
       32 FORGLOOP                         R3 2 ; [-13]
       34 RETURN                           R2 1
       35 JUMPIFNOTEQKS                    R1 K10 ["string"] ; [+29]
       37 LOADN                            R5 1
       38 FASTCALL1                        STRING_LEN R0 ; [+3]
       39 MOVE                             R7 R0
       40 GETIMPORT                        R6 K12 [string.len]
       42 CALL                             R6 1 1
       43 MOVE                             R3 R6
       44 LOADN                            R4 1
       45 FORNPREP                         R3
       46 NEWTABLE                         R6 0 2
       48 FASTCALL1                        TOSTRING R5 ; [+3]
       49 MOVE                             R8 R5
       50 GETIMPORT                        R7 K14 [tostring]
       52 CALL                             R7 1 1
       53 FASTCALL3                        STRING_SUB R0 R5 R5
       55 MOVE                             R9 R0
       56 MOVE                             R10 R5
       57 MOVE                             R11 R5
       58 GETIMPORT                        R8 K16 [string.sub]
       60 CALL                             R8 3 1
       61 SETLIST                          R6 R7 2 [1]
       63 SETTABLE                         R6 R2 R5
       64 FORNLOOP                         R3
       65 RETURN                           R2 1

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
