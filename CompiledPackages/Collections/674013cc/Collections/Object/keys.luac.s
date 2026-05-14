PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["cannot extract keys from a nil value"]
        5 CALL                             R1 1 0
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K4 [typeof]
       10 CALL                             R1 1 1
       11 LOADNIL                          R2
       12 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+24]
       14 NEWTABLE                         R2 0 0
       16 GETUPVAL                         R3 0
       17 MOVE                             R4 R0
       18 GETUPVAL                         R5 1
       19 CALL                             R3 2 1
       20 JUMPIFNOT                        R3 ; [+1]
       21 RETURN                           R2 1
       22 GETIMPORT                        R3 K7 [pairs]
       24 MOVE                             R4 R0
       25 CALL                             R3 1 3
       26 FORGPREP_NEXT                    R3
       27 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       29 MOVE                             R9 R2
       30 MOVE                             R10 R6
       31 GETIMPORT                        R8 K9 [table.insert]
       33 CALL                             R8 2 0
       34 FORGLOOP                         R3 1 ; [-8]
       36 RETURN                           R2 1
       37 JUMPIFNOTEQKS                    R1 K10 ["string"] ; [+20]
       39 NAMECALL                         R3 R0 K11 ["len"]
       41 CALL                             R3 1 1
       42 GETIMPORT                        R4 K13 [table.create]
       44 MOVE                             R5 R3
       45 CALL                             R4 1 1
       46 MOVE                             R2 R4
       47 LOADN                            R6 1
       48 MOVE                             R4 R3
       49 LOADN                            R5 1
       50 FORNPREP                         R4
       51 FASTCALL1                        TOSTRING R6 ; [+3]
       52 MOVE                             R8 R6
       53 GETIMPORT                        R7 K15 [tostring]
       55 CALL                             R7 1 1
       56 SETTABLE                         R7 R2 R6
       57 FORNLOOP                         R4
       58 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R1 R0 K2 ["Parent"]
        7 GETTABLEKS                       R2 R0 K2 ["Parent"]
        9 GETTABLEKS                       R2 R2 K2 ["Parent"]
       11 GETIMPORT                        R3 K4 [require]
       13 GETTABLEKS                       R4 R1 K5 ["Set"]
       15 CALL                             R3 1 1
       16 GETIMPORT                        R4 K4 [require]
       18 GETTABLEKS                       R5 R2 K6 ["ES7Types"]
       20 CALL                             R4 1 1
       21 GETIMPORT                        R5 K4 [require]
       23 GETTABLEKS                       R6 R2 K7 ["InstanceOf"]
       25 CALL                             R5 1 1
       26 DUPCLOSURE                       R6 K8 [PROTO_0]
       27 CAPTURE                          VAL R5
       28 CAPTURE                          VAL R3
       29 RETURN                           R6 1
