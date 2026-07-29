PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["width"]
        2 GETTABLEKS                       R4 R1 K0 ["width"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R4 0 0
        2 MOVE                             R5 R0
        3 LOADNIL                          R6
        4 LOADNIL                          R7
        5 FORGPREP                         R5
        6 DUPTABLE                         R12 K2 [{"id", "width"}]
        7 SETTABLEKS                       R8 R12 K0 ["id"]
        9 SETTABLEKS                       R9 R12 K1 ["width"]
       11 FASTCALL2                        TABLE_INSERT R4 R12 ; [+4]
       13 MOVE                             R11 R4
       14 GETIMPORT                        R10 K5 [table.insert]
       16 CALL                             R10 2 0
       17 FORGLOOP                         R5 2 ; [-12]
       19 JUMPIFNOTEQKN                    R2 K6 [0] ; [+3]
       21 LOADNIL                          R5
       22 RETURN                           R5 1
       23 SUBK                             R8 R2 K7 [1]
       24 FASTCALL2K                       MATH_MAX R8 K6 ; [+4]
       26 LOADK                            R9 K6 [0]
       27 GETIMPORT                        R7 K10 [math.max]
       29 CALL                             R7 2 1
       30 MUL                              R6 R7 R3
       31 SUB                              R5 R1 R6
       32 LOADN                            R6 0
       33 MOVE                             R7 R4
       34 LOADNIL                          R8
       35 LOADNIL                          R9
       36 FORGPREP                         R7
       37 GETTABLEKS                       R12 R11 K1 ["width"]
       39 ADD                              R6 R6 R12
       40 FORGLOOP                         R7 2 ; [-4]
       42 JUMPIFNOTLE                      R6 R5 ; [+3]
       44 LOADNIL                          R7
       45 RETURN                           R7 1
       46 GETIMPORT                        R7 K12 [table.sort]
       48 MOVE                             R8 R4
       49 DUPCLOSURE                       R9 K13 [PROTO_0]
       50 CALL                             R7 2 0
       51 DIV                              R7 R5 R2
       52 MOVE                             R8 R5
       53 MOVE                             R9 R4
       54 LOADNIL                          R10
       55 LOADNIL                          R11
       56 FORGPREP                         R9
       57 SUB                              R16 R2 R12
       58 ADDK                             R15 R16 K7 [1]
       59 DIV                              R14 R8 R15
       60 GETTABLEKS                       R15 R13 K1 ["width"]
       62 JUMPIFNOTLE                      R14 R15 ; [+3]
       64 MOVE                             R7 R14
       65 JUMP                             ; [+5]
       66 GETTABLEKS                       R15 R13 K1 ["width"]
       68 SUB                              R8 R8 R15
       69 FORGLOOP                         R9 2 ; [-13]
       71 NEWTABLE                         R9 0 0
       73 MOVE                             R10 R4
       74 LOADNIL                          R11
       75 LOADNIL                          R12
       76 FORGPREP                         R10
       77 GETTABLEKS                       R15 R14 K0 ["id"]
       79 GETTABLEKS                       R18 R14 K1 ["width"]
       81 FASTCALL2                        MATH_MIN R18 R7 ; [+4]
       83 MOVE                             R19 R7
       84 GETIMPORT                        R17 K15 [math.min]
       86 CALL                             R17 2 1
       87 FASTCALL2K                       MATH_MAX R17 K6 ; [+4]
       89 LOADK                            R18 K6 [0]
       90 GETIMPORT                        R16 K10 [math.max]
       92 CALL                             R16 2 1
       93 SETTABLE                         R16 R9 R15
       94 FORGLOOP                         R10 2 ; [-18]
       96 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_1]
        2 RETURN                           R0 1
