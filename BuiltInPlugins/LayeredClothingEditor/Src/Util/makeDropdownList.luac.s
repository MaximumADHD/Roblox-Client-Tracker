PROTO_0:
        0 NEWTABLE                         R3 0 0
        2 GETIMPORT                        R4 K1 [pairs]
        4 MOVE                             R5 R2
        5 CALL                             R4 1 3
        6 FORGPREP_NEXT                    R4
        7 MOVE                             R10 R3
        8 MOVE                             R13 R1
        9 MOVE                             R14 R7
       10 NAMECALL                         R11 R0 K2 ["getText"]
       12 CALL                             R11 3 -1
       13 FASTCALL                         TABLE_INSERT ; [+2]
       14 GETIMPORT                        R9 K5 [table.insert]
       16 CALL                             R9 -1 0
       17 FORGLOOP                         R4 1 ; [-11]
       19 GETIMPORT                        R4 K7 [table.sort]
       21 MOVE                             R5 R3
       22 CALL                             R4 1 0
       23 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
