PROTO_0:
        0 GETIMPORT                        R3 K1 [ipairs]
        2 GETTABLEKS                       R4 R0 K2 ["Materials"]
        4 CALL                             R3 1 3
        5 FORGPREP_INEXT                   R3
        6 JUMPIFNOT                        R2 ; [+4]
        7 MOVE                             R10 R2
        8 MOVE                             R11 R7
        9 CALL                             R10 1 1
       10 JUMP                             ; [+1]
       11 MOVE                             R10 R7
       12 FASTCALL2                        TABLE_INSERT R1 R10 ; [+4]
       14 MOVE                             R9 R1
       15 GETIMPORT                        R8 K5 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R3 2 [inext] ; [-13]
       20 GETIMPORT                        R3 K1 [ipairs]
       22 GETTABLEKS                       R4 R0 K6 ["CategoryNames"]
       24 CALL                             R3 1 3
       25 FORGPREP_INEXT                   R3
       26 GETUPVAL                         R8 0
       27 GETTABLEKS                       R10 R0 K7 ["Categories"]
       29 GETTABLE                         R9 R10 R7
       30 MOVE                             R10 R1
       31 MOVE                             R11 R2
       32 CALL                             R8 3 0
       33 FORGLOOP                         R3 2 [inext] ; [-8]
       35 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Types"]
       15 CALL                             R1 1 1
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 CAPTURE                          VAL R2
       18 RETURN                           R2 1
