PROTO_0:
        0 JUMPIFNOT                        R1 ; [+3]
        1 NEWTABLE                         R2 0 0
        3 JUMP                             ; [+1]
        4 LOADNIL                          R2
        5 JUMPIFNOT                        R2 ; [+13]
        6 MOVE                             R3 R0
        7 LOADNIL                          R4
        8 LOADNIL                          R5
        9 FORGPREP                         R3
       10 FASTCALL2                        TABLE_INSERT R2 R6 ; [+5]
       12 MOVE                             R9 R2
       13 MOVE                             R10 R6
       14 GETIMPORT                        R8 K2 [table.insert]
       16 CALL                             R8 2 0
       17 FORGLOOP                         R3 1 ; [-8]
       19 MOVE                             R3 R0
       20 MOVE                             R4 R2
       21 RETURN                           R3 2

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+3]
        3 NEWTABLE                         R3 0 0
        5 JUMP                             ; [+1]
        6 LOADNIL                          R3
        7 MOVE                             R4 R0
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 GETUPVAL                         R9 0
       12 MOVE                             R10 R8
       13 MOVE                             R11 R7
       14 CALL                             R9 2 1
       15 JUMPIFNOT                        R9 ; [+15]
       16 FASTCALL2                        TABLE_INSERT R2 R8 ; [+5]
       18 MOVE                             R10 R2
       19 MOVE                             R11 R8
       20 GETIMPORT                        R9 K2 [table.insert]
       22 CALL                             R9 2 0
       23 JUMPIFNOT                        R3 ; [+7]
       24 FASTCALL2                        TABLE_INSERT R3 R7 ; [+5]
       26 MOVE                             R10 R3
       27 MOVE                             R11 R7
       28 GETIMPORT                        R9 K2 [table.insert]
       30 CALL                             R9 2 0
       31 FORGLOOP                         R4 2 ; [-21]
       33 RETURN                           R2 2

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_3:
        0 NEWTABLE                         R1 0 0
        2 MOVE                             R2 R0
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R10 0
        7 GETTABLE                         R9 R6 R10
        8 FASTCALL2                        TABLE_INSERT R1 R9 ; [+4]
       10 MOVE                             R8 R1
       11 GETIMPORT                        R7 K2 [table.insert]
       13 CALL                             R7 2 0
       14 FORGLOOP                         R2 2 ; [-9]
       16 MOVE                             R2 R1
       17 GETUPVAL                         R3 0
       18 RETURN                           R2 2

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 RETURN                           R2 1

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R0 R3
        2 GETUPVAL                         R3 1
        3 JUMPIFEQ                         R2 R3 ; [+2]
        5 LOADB                            R1 0 +1
        6 LOADB                            R1 1
        7 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["filter"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          VAL R1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

PROTO_7:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R7 0
        5 GETTABLE                         R6 R5 R7
        6 GETUPVAL                         R7 1
        7 JUMPIFNOTEQ                      R6 R7 ; [+4]
        9 MOVE                             R6 R5
       10 MOVE                             R7 R4
       11 RETURN                           R6 2
       12 FORGLOOP                         R1 2 ; [-9]
       14 LOADNIL                          R1
       15 LOADNIL                          R2
       16 RETURN                           R1 2

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

PROTO_9:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 MOVE                             R7 R5
        6 MOVE                             R8 R4
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+3]
        9 MOVE                             R6 R5
       10 MOVE                             R7 R4
       11 RETURN                           R6 2
       12 FORGLOOP                         R1 2 ; [-9]
       14 LOADNIL                          R1
       15 LOADNIL                          R2
       16 RETURN                           R1 2

PROTO_10:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_11:
        0 MOVE                             R1 R0
        1 LOADNIL                          R2
        2 LOADNIL                          R3
        3 FORGPREP                         R1
        4 GETUPVAL                         R6 0
        5 MOVE                             R7 R5
        6 MOVE                             R8 R4
        7 CALL                             R6 2 1
        8 JUMPIFNOT                        R6 ; [+3]
        9 MOVE                             R6 R4
       10 LOADNIL                          R7
       11 RETURN                           R6 2
       12 FORGLOOP                         R1 2 ; [-9]
       14 LOADK                            R1 K0 [∞]
       15 LOADNIL                          R2
       16 RETURN                           R1 2

PROTO_12:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 RETURN                           R1 1

PROTO_13:
        0 LENGTH                           R2 R0
        1 GETTABLE                         R1 R0 R2
        2 LENGTH                           R2 R0
        3 RETURN                           R1 2

PROTO_14:
        0 LENGTH                           R1 R0
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["length"]
        4 RETURN                           R1 2

PROTO_15:
        0 NEWTABLE                         R2 0 0
        2 JUMPIFNOT                        R1 ; [+3]
        3 NEWTABLE                         R3 0 0
        5 JUMP                             ; [+1]
        6 LOADNIL                          R3
        7 GETUPVAL                         R6 0
        8 GETUPVAL                         R4 1
        9 LOADN                            R5 1
       10 FORNPREP                         R4
       11 GETTABLE                         R9 R0 R6
       12 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       14 MOVE                             R8 R2
       15 GETIMPORT                        R7 K2 [table.insert]
       17 CALL                             R7 2 0
       18 JUMPIFNOT                        R3 ; [+7]
       19 FASTCALL2                        TABLE_INSERT R3 R6 ; [+5]
       21 MOVE                             R8 R3
       22 MOVE                             R9 R6
       23 GETIMPORT                        R7 K2 [table.insert]
       25 CALL                             R7 2 0
       26 FORNLOOP                         R4
       27 RETURN                           R2 2

PROTO_16:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["util"]
       11 GETTABLEKS                       R1 R1 K6 ["pretty"]
       13 CALL                             R0 1 1
       14 NEWTABLE                         R1 16 0
       16 DUPCLOSURE                       R2 K7 [PROTO_0]
       17 SETTABLEKS                       R2 R1 K8 ["all"]
       19 DUPCLOSURE                       R2 K9 [PROTO_2]
       20 SETTABLEKS                       R2 R1 K10 ["filter"]
       22 NEWTABLE                         R3 0 0
       24 DUPTABLE                         R4 K12 [{"__index"}]
       25 DUPCLOSURE                       R5 K13 [PROTO_4]
       26 SETTABLEKS                       R5 R4 K11 ["__index"]
       28 FASTCALL2                        SETMETATABLE R3 R4 ; [+3]
       30 GETIMPORT                        R2 K15 [setmetatable]
       32 CALL                             R2 2 1
       33 SETTABLEKS                       R2 R1 K16 ["select"]
       35 DUPCLOSURE                       R2 K17 [PROTO_6]
       36 CAPTURE                          VAL R1
       37 SETTABLEKS                       R2 R1 K18 ["where"]
       39 DUPCLOSURE                       R2 K19 [PROTO_8]
       40 SETTABLEKS                       R2 R1 K20 ["first"]
       42 DUPCLOSURE                       R2 K21 [PROTO_10]
       43 SETTABLEKS                       R2 R1 K22 ["find"]
       45 DUPCLOSURE                       R2 K23 [PROTO_12]
       46 SETTABLEKS                       R2 R1 K24 ["findIndex"]
       48 DUPCLOSURE                       R2 K25 [PROTO_13]
       49 SETTABLEKS                       R2 R1 K26 ["last"]
       51 DUPCLOSURE                       R2 K27 [PROTO_14]
       52 CAPTURE                          VAL R1
       53 SETTABLEKS                       R2 R1 K28 ["length"]
       55 DUPCLOSURE                       R2 K29 [PROTO_16]
       56 SETTABLEKS                       R2 R1 K30 ["slice"]
       58 NEWTABLE                         R2 0 0
       60 SETTABLEKS                       R2 R1 K31 ["deep"]
       62 RETURN                           R1 1
