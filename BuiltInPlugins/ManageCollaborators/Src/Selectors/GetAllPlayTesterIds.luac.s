PROTO_0:
        0 JUMPIFNOT                        R0 ; [+3]
        1 GETTABLEKS                       R1 R0 K0 ["PendingPlayTesters"]
        3 JUMPIF                           R1 ; [+2]
        4 NEWTABLE                         R1 0 0
        6 GETTABLEKS                       R2 R1 K1 ["CurrentPlayTesters"]
        8 JUMPIF                           R2 ; [+2]
        9 NEWTABLE                         R2 0 0
       11 GETTABLEKS                       R4 R1 K2 ["NewPlayTesters"]
       13 OR                               R3 R4 R2
       14 NEWTABLE                         R4 0 0
       16 GETIMPORT                        R5 K4 [pairs]
       18 MOVE                             R6 R3
       19 CALL                             R5 1 3
       20 FORGPREP_NEXT                    R5
       21 FASTCALL2                        TABLE_INSERT R4 R8 ; [+5]
       23 MOVE                             R11 R4
       24 MOVE                             R12 R8
       25 GETIMPORT                        R10 K7 [table.insert]
       27 CALL                             R10 2 0
       28 FORGLOOP                         R5 1 ; [-8]
       30 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 RETURN                           R0 1
