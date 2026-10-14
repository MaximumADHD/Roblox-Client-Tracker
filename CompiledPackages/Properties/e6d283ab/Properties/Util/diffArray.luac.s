PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 NEWTABLE                         R4 0 0
        6 NEWTABLE                         R5 0 0
        8 MOVE                             R6 R0
        9 LOADNIL                          R7
       10 LOADNIL                          R8
       11 FORGPREP                         R6
       12 GETTABLE                         R13 R5 R10
       13 ORK                              R12 R13 K1 [0]
       14 ADDK                             R11 R12 K0 [1]
       15 SETTABLE                         R11 R5 R10
       16 FORGLOOP                         R6 2 ; [-5]
       18 MOVE                             R6 R1
       19 LOADNIL                          R7
       20 LOADNIL                          R8
       21 FORGPREP                         R6
       22 GETTABLE                         R11 R5 R10
       23 JUMPIFEQKNIL                     R11 ; [+3]
       25 JUMPIFNOTEQKN                    R11 K1 [0] ; [+9]
       27 FASTCALL2                        TABLE_INSERT R3 R10 ; [+5]
       29 MOVE                             R13 R3
       30 MOVE                             R14 R10
       31 GETIMPORT                        R12 K4 [table.insert]
       33 CALL                             R12 2 0
       34 JUMP                             ; [+10]
       35 GETTABLE                         R12 R5 R10
       36 SUBK                             R12 R12 K0 [1]
       37 SETTABLE                         R12 R5 R10
       38 FASTCALL2                        TABLE_INSERT R4 R10 ; [+5]
       40 MOVE                             R13 R4
       41 MOVE                             R14 R10
       42 GETIMPORT                        R12 K4 [table.insert]
       44 CALL                             R12 2 0
       45 FORGLOOP                         R6 2 ; [-24]
       47 MOVE                             R6 R5
       48 LOADNIL                          R7
       49 LOADNIL                          R8
       50 FORGPREP                         R6
       51 LOADN                            R13 1
       52 MOVE                             R11 R10
       53 LOADN                            R12 1
       54 FORNPREP                         R11
       55 FASTCALL2                        TABLE_INSERT R2 R9 ; [+5]
       57 MOVE                             R15 R2
       58 MOVE                             R16 R9
       59 GETIMPORT                        R14 K4 [table.insert]
       61 CALL                             R14 2 0
       62 FORNLOOP                         R11
       63 FORGLOOP                         R6 2 ; [-13]
       65 RETURN                           R2 3

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
