PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["cannot extract keys from a nil value"]
        5 CALL                             R1 1 0
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K4 [typeof]
       10 CALL                             R1 1 1
       11 NEWTABLE                         R2 0 0
       13 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+22]
       15 GETUPVAL                         R3 0
       16 MOVE                             R4 R0
       17 GETUPVAL                         R5 1
       18 CALL                             R3 2 1
       19 JUMPIFNOT                        R3 ; [+1]
       20 RETURN                           R2 1
       21 GETIMPORT                        R3 K7 [pairs]
       23 MOVE                             R4 R0
       24 CALL                             R3 1 3
       25 FORGPREP_NEXT                    R3
       26 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       28 MOVE                             R9 R2
       29 MOVE                             R10 R6
       30 GETIMPORT                        R8 K9 [table.insert]
       32 CALL                             R8 2 0
       33 FORGLOOP                         R3 1 ; [-8]
       35 RETURN                           R2 1
       36 JUMPIFNOTEQKS                    R1 K10 ["string"] ; [+20]
       38 NAMECALL                         R3 R0 K11 ["len"]
       40 CALL                             R3 1 1
       41 GETIMPORT                        R4 K13 [table.create]
       43 MOVE                             R5 R3
       44 CALL                             R4 1 1
       45 MOVE                             R2 R4
       46 LOADN                            R6 1
       47 MOVE                             R4 R3
       48 LOADN                            R5 1
       49 FORNPREP                         R4
       50 FASTCALL1                        TOSTRING R6 ; [+3]
       51 MOVE                             R8 R6
       52 GETIMPORT                        R7 K15 [tostring]
       54 CALL                             R7 1 1
       55 SETTABLE                         R7 R2 R6
       56 FORNLOOP                         R4
       57 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["Set"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K4 [require]
       14 GETTABLEKS                       R3 R0 K6 ["instanceof"]
       16 CALL                             R2 1 1
       17 DUPCLOSURE                       R3 K7 [PROTO_0]
       18 CAPTURE                          VAL R2
       19 CAPTURE                          VAL R1
       20 RETURN                           R3 1
