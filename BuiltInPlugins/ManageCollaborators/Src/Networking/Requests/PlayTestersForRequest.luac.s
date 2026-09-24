PROTO_0:
        0 NEWTABLE                         R2 0 0
        2 NEWTABLE                         R3 0 0
        4 GETIMPORT                        R4 K1 [pairs]
        6 MOVE                             R5 R0
        7 CALL                             R4 1 3
        8 FORGPREP_NEXT                    R4
        9 GETTABLE                         R9 R1 R7
       10 JUMPIFNOTEQKNIL                  R9 ; [+8]
       12 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       14 MOVE                             R10 R3
       15 MOVE                             R11 R7
       16 GETIMPORT                        R9 K4 [table.insert]
       18 CALL                             R9 2 0
       19 FORGLOOP                         R4 1 ; [-11]
       21 GETIMPORT                        R4 K1 [pairs]
       23 MOVE                             R5 R1
       24 CALL                             R4 1 3
       25 FORGPREP_NEXT                    R4
       26 GETTABLE                         R9 R0 R7
       27 JUMPIFNOTEQKNIL                  R9 ; [+8]
       29 FASTCALL2                        TABLE_INSERT R2 R7 ; [+5]
       31 MOVE                             R10 R2
       32 MOVE                             R11 R7
       33 GETIMPORT                        R9 K4 [table.insert]
       35 CALL                             R9 2 0
       36 FORGLOOP                         R4 1 ; [-11]
       38 GETIMPORT                        R4 K6 [table.sort]
       40 MOVE                             R5 R2
       41 CALL                             R4 1 0
       42 GETIMPORT                        R4 K6 [table.sort]
       44 MOVE                             R5 R3
       45 CALL                             R4 1 0
       46 RETURN                           R2 2

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 1 0
        3 DUPCLOSURE                       R1 K0 [PROTO_0]
        4 SETTABLEKS                       R1 R0 K1 ["diff"]
        6 RETURN                           R0 1
