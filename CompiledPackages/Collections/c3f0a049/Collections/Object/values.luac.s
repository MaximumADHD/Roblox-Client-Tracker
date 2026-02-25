PROTO_0:
        0 JUMPIFNOTEQKNIL                  R0 ; [+5]
        2 GETIMPORT                        R1 K1 [error]
        4 LOADK                            R2 K2 ["cannot extract values from a nil value"]
        5 CALL                             R1 1 0
        6 FASTCALL1                        TYPEOF R0 ; [+3]
        7 MOVE                             R2 R0
        8 GETIMPORT                        R1 K4 [typeof]
       10 CALL                             R1 1 1
       11 LOADNIL                          R2
       12 JUMPIFNOTEQKS                    R1 K5 ["table"] ; [+18]
       14 NEWTABLE                         R2 0 0
       16 GETIMPORT                        R3 K7 [pairs]
       18 MOVE                             R4 R0
       19 CALL                             R3 1 3
       20 FORGPREP_NEXT                    R3
       21 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       23 MOVE                             R9 R2
       24 MOVE                             R10 R7
       25 GETIMPORT                        R8 K9 [table.insert]
       27 CALL                             R8 2 0
       28 FORGLOOP                         R3 2 ; [-8]
       30 RETURN                           R2 1
       31 JUMPIFNOTEQKS                    R1 K10 ["string"] ; [+20]
       33 NAMECALL                         R3 R0 K11 ["len"]
       35 CALL                             R3 1 1
       36 GETIMPORT                        R4 K13 [table.create]
       38 MOVE                             R5 R3
       39 CALL                             R4 1 1
       40 MOVE                             R2 R4
       41 LOADN                            R6 1
       42 MOVE                             R4 R3
       43 LOADN                            R5 1
       44 FORNPREP                         R4
       45 MOVE                             R9 R6
       46 MOVE                             R10 R6
       47 NAMECALL                         R7 R0 K14 ["sub"]
       49 CALL                             R7 3 1
       50 SETTABLE                         R7 R2 R6
       51 FORNLOOP                         R4
       52 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 GETTABLEKS                       R0 R1 K2 ["Parent"]
        5 GETTABLEKS                       R2 R0 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETIMPORT                        R2 K4 [require]
       11 GETTABLEKS                       R3 R1 K5 ["ES7Types"]
       13 CALL                             R2 1 1
       14 DUPCLOSURE                       R3 K6 [PROTO_0]
       15 RETURN                           R3 1
