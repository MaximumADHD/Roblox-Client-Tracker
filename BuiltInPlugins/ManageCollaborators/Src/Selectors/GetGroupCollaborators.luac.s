PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["Name"]
        2 GETTABLEKS                       R4 R1 K0 ["Name"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["GroupMetadata"]
        2 GETTABLEKS                       R1 R1 K1 ["NewGroupMetadata"]
        4 JUMPIF                           R1 ; [+4]
        5 GETTABLEKS                       R1 R0 K0 ["GroupMetadata"]
        7 GETTABLEKS                       R1 R1 K2 ["CurrentGroupMetadata"]
        9 GETTABLEKS                       R2 R0 K0 ["GroupMetadata"]
       11 GETTABLEKS                       R2 R2 K2 ["CurrentGroupMetadata"]
       13 NEWTABLE                         R3 0 0
       15 GETIMPORT                        R4 K4 [pairs]
       17 MOVE                             R5 R1
       18 CALL                             R4 1 3
       19 FORGPREP_NEXT                    R4
       20 GETTABLEKS                       R9 R8 K5 ["Name"]
       22 GETUPVAL                         R10 0
       23 MOVE                             R11 R0
       24 MOVE                             R12 R7
       25 CALL                             R10 2 1
       26 JUMPIF                           R10 ; [+11]
       27 DUPTABLE                         R12 K7 [{"Name", "Id"}]
       28 SETTABLEKS                       R9 R12 K5 ["Name"]
       30 SETTABLEKS                       R7 R12 K6 ["Id"]
       32 FASTCALL2                        TABLE_INSERT R3 R12 ; [+4]
       34 MOVE                             R11 R3
       35 GETIMPORT                        R10 K10 [table.insert]
       37 CALL                             R10 2 0
       38 FORGLOOP                         R4 2 ; [-19]
       40 GETIMPORT                        R4 K12 [table.sort]
       42 MOVE                             R5 R3
       43 DUPCLOSURE                       R6 K13 [PROTO_0]
       44 CALL                             R4 2 0
       45 NEWTABLE                         R4 0 0
       47 NEWTABLE                         R5 0 0
       49 GETIMPORT                        R6 K15 [ipairs]
       51 MOVE                             R7 R3
       52 CALL                             R6 1 3
       53 FORGPREP_INEXT                   R6
       54 GETTABLEKS                       R12 R10 K6 ["Id"]
       56 GETTABLE                         R11 R2 R12
       57 JUMPIF                           R11 ; [+8]
       58 GETTABLEKS                       R13 R10 K6 ["Id"]
       60 FASTCALL2                        TABLE_INSERT R4 R13 ; [+4]
       62 MOVE                             R12 R4
       63 GETIMPORT                        R11 K10 [table.insert]
       65 CALL                             R11 2 0
       66 FORGLOOP                         R6 2 [inext] ; [-13]
       68 GETIMPORT                        R6 K15 [ipairs]
       70 MOVE                             R7 R3
       71 CALL                             R6 1 3
       72 FORGPREP_INEXT                   R6
       73 GETTABLEKS                       R12 R10 K6 ["Id"]
       75 GETTABLE                         R11 R2 R12
       76 JUMPIFNOT                        R11 ; [+8]
       77 GETTABLEKS                       R13 R10 K6 ["Id"]
       79 FASTCALL2                        TABLE_INSERT R5 R13 ; [+4]
       81 MOVE                             R12 R5
       82 GETIMPORT                        R11 K10 [table.insert]
       84 CALL                             R11 2 0
       85 FORGLOOP                         R6 2 [inext] ; [-13]
       87 RETURN                           R4 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Selectors"]
       15 GETTABLEKS                       R2 R2 K7 ["IsGroupOwner"]
       17 CALL                             R1 1 1
       18 DUPCLOSURE                       R2 K8 [PROTO_1]
       19 CAPTURE                          VAL R1
       20 RETURN                           R2 1
