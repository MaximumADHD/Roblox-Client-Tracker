PROTO_0:
        0 DUPTABLE                         R0 K4 [{"visited", "refs", "nextRef", "omit"}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["visited"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["refs"]
        9 LOADN                            R1 1
       10 SETTABLEKS                       R1 R0 K2 ["nextRef"]
       12 NEWTABLE                         R1 0 0
       14 SETTABLEKS                       R1 R0 K3 ["omit"]
       16 RETURN                           R0 1

PROTO_1:
        0 FASTCALL1                        TYPEOF R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+13]
        7 FASTCALL1                        TYPEOF R1 ; [+3]
        8 MOVE                             R3 R1
        9 GETIMPORT                        R2 K1 [typeof]
       11 CALL                             R2 1 1
       12 JUMPIFNOTEQKS                    R2 K2 ["number"] ; [+6]
       14 JUMPIFLT                         R0 R1 ; [+2]
       16 LOADB                            R2 0 +1
       17 LOADB                            R2 1
       18 RETURN                           R2 1
       19 FASTCALL1                        TOSTRING R0 ; [+3]
       20 MOVE                             R4 R0
       21 GETIMPORT                        R3 K4 [tostring]
       23 CALL                             R3 1 1
       24 FASTCALL1                        TOSTRING R1 ; [+3]
       25 MOVE                             R5 R1
       26 GETIMPORT                        R4 K4 [tostring]
       28 CALL                             R4 1 1
       29 JUMPIFLT                         R3 R4 ; [+2]
       31 LOADB                            R2 0 +1
       32 LOADB                            R2 1
       33 RETURN                           R2 1

PROTO_2:
        0 JUMPIFNOTEQKN                    R1 K0 [-1] ; [+2]
        2 RETURN                           R2 1
        3 FASTCALL1                        TYPEOF R0 ; [+3]
        4 MOVE                             R4 R0
        5 GETIMPORT                        R3 K2 [typeof]
        7 CALL                             R3 1 1
        8 JUMPIFNOTEQKS                    R3 K3 ["table"] ; [+73]
       10 MOVE                             R3 R2
       11 JUMPIF                           R3 ; [+2]
       12 GETUPVAL                         R3 0
       13 CALL                             R3 0 1
       14 GETTABLEKS                       R5 R3 K4 ["visited"]
       16 GETTABLE                         R4 R5 R0
       17 JUMPIFNOT                        R4 ; [+16]
       18 GETTABLEKS                       R5 R3 K5 ["refs"]
       20 GETTABLE                         R4 R5 R0
       21 JUMPIF                           R4 ; [+10]
       22 GETTABLEKS                       R4 R3 K5 ["refs"]
       24 GETTABLEKS                       R5 R3 K6 ["nextRef"]
       26 SETTABLE                         R5 R4 R0
       27 GETTABLEKS                       R4 R3 K6 ["nextRef"]
       29 ADDK                             R4 R4 K7 [1]
       30 SETTABLEKS                       R4 R3 K6 ["nextRef"]
       32 LOADNIL                          R4
       33 RETURN                           R4 1
       34 GETTABLEKS                       R4 R3 K4 ["visited"]
       36 LOADB                            R5 1
       37 SETTABLE                         R5 R4 R0
       38 GETUPVAL                         R4 1
       39 MOVE                             R5 R0
       40 CALL                             R4 1 1
       41 GETUPVAL                         R5 2
       42 MOVE                             R6 R4
       43 DUPCLOSURE                       R7 K8 [PROTO_1]
       44 CALL                             R5 2 0
       45 GETIMPORT                        R5 K10 [ipairs]
       47 MOVE                             R6 R4
       48 CALL                             R5 1 3
       49 FORGPREP_INEXT                   R5
       50 GETTABLE                         R10 R0 R9
       51 GETUPVAL                         R11 3
       52 GETTABLEKS                       R12 R3 K11 ["omit"]
       54 MOVE                             R13 R9
       55 CALL                             R11 2 1
       56 JUMPIF                           R11 ; [+22]
       57 JUMPIFNOT                        R1 ; [+11]
       58 GETUPVAL                         R11 4
       59 MOVE                             R12 R9
       60 SUBK                             R13 R1 K7 [1]
       61 MOVE                             R14 R3
       62 CALL                             R11 3 0
       63 GETUPVAL                         R11 4
       64 MOVE                             R12 R10
       65 SUBK                             R13 R1 K7 [1]
       66 MOVE                             R14 R3
       67 CALL                             R11 3 0
       68 JUMP                             ; [+10]
       69 GETUPVAL                         R11 4
       70 MOVE                             R12 R9
       71 LOADNIL                          R13
       72 MOVE                             R14 R3
       73 CALL                             R11 3 0
       74 GETUPVAL                         R11 4
       75 MOVE                             R12 R10
       76 LOADNIL                          R13
       77 MOVE                             R14 R3
       78 CALL                             R11 3 0
       79 FORGLOOP                         R5 2 [inext] ; [-30]
       81 RETURN                           R3 1
       82 LOADNIL                          R3
       83 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K4 [require]
        7 GETTABLEKS                       R2 R0 K5 ["Types"]
        9 CALL                             R1 1 1
       10 GETIMPORT                        R2 K4 [require]
       12 GETTABLEKS                       R3 R0 K6 ["includes"]
       14 CALL                             R2 1 1
       15 GETIMPORT                        R3 K4 [require]
       17 GETTABLEKS                       R4 R0 K7 ["join"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K4 [require]
       22 GETTABLEKS                       R5 R0 K8 ["keys"]
       24 CALL                             R4 1 1
       25 GETIMPORT                        R5 K11 [table.sort]
       27 DUPCLOSURE                       R6 K12 [PROTO_0]
       28 DUPCLOSURE                       R7 K13 [PROTO_2]
       29 CAPTURE                          VAL R6
       30 CAPTURE                          VAL R4
       31 CAPTURE                          VAL R5
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R7
       34 RETURN                           R7 1
