PROTO_0:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["GetProductInfo"]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K3 ["assetId"]
        9 CALL                             R0 3 2
       10 JUMPIFNOT                        R0 ; [+4]
       11 GETUPVAL                         R2 2
       12 MOVE                             R3 R1
       13 CALL                             R2 1 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R2 3
       16 CALL                             R2 0 0
       17 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+5]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["Creator"]
        4 SETTABLEKS                       R2 R1 K1 ["creator"]
        6 GETUPVAL                         R1 1
        7 GETUPVAL                         R2 2
        8 GETUPVAL                         R3 0
        9 SETTABLE                         R3 R1 R2
       10 GETUPVAL                         R2 3
       11 ADDK                             R1 R2 K2 [1]
       12 SETUPVAL                         R1 3
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 SETTABLE                         R2 R0 R1
        4 GETUPVAL                         R1 3
        5 ADDK                             R0 R1 K0 [1]
        6 SETUPVAL                         R0 3
        7 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 SUBK                             R1 R2 K1 [1]
        2 MULK                             R0 R1 K0 [8]
        3 GETIMPORT                        R1 K3 [wait]
        5 MOVE                             R2 R0
        6 CALL                             R1 1 0
        7 GETUPVAL                         R1 1
        8 GETUPVAL                         R3 2
        9 GETUPVAL                         R4 3
       10 GETUPVAL                         R5 4
       11 GETUPVAL                         R6 0
       12 CALL                             R3 3 -1
       13 NAMECALL                         R1 R1 K4 ["dispatch"]
       15 CALL                             R1 -1 0
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+3]
        2 LOADN                            R1 1
        3 SETUPVAL                         R1 0
        4 JUMP                             ; [+8]
        5 GETUPVAL                         R2 0
        6 ADDK                             R1 R2 K0 [1]
        7 SETUPVAL                         R1 0
        8 GETUPVAL                         R1 0
        9 LOADN                            R2 4
       10 JUMPIFNOTLT                      R2 R1 ; [+2]
       12 RETURN                           R0 0
       13 LOADN                            R1 0
       14 LOADN                            R2 0
       15 NEWTABLE                         R3 0 0
       17 NEWTABLE                         R4 0 0
       19 NEWTABLE                         R5 0 0
       21 GETIMPORT                        R6 K2 [pairs]
       23 GETUPVAL                         R7 1
       24 CALL                             R6 1 3
       25 FORGPREP_NEXT                    R6
       26 GETUPVAL                         R12 2
       27 GETTABLEKS                       R11 R12 K3 ["new"]
       29 NEWCLOSURE                       R12 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          VAL R10
       32 CALL                             R11 1 1
       33 NEWCLOSURE                       R13 P1
       34 CAPTURE                          VAL R10
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R9
       37 CAPTURE                          REF R1
       38 NEWCLOSURE                       R14 P2
       39 CAPTURE                          VAL R4
       40 CAPTURE                          VAL R9
       41 CAPTURE                          VAL R10
       42 CAPTURE                          REF R2
       43 NAMECALL                         R11 R11 K4 ["andThen"]
       45 CALL                             R11 3 1
       46 FASTCALL2                        TABLE_INSERT R5 R11 ; [+5]
       48 MOVE                             R13 R5
       49 MOVE                             R14 R11
       50 GETIMPORT                        R12 K7 [table.insert]
       52 CALL                             R12 2 0
       53 FORGLOOP                         R6 2 ; [-28]
       55 GETUPVAL                         R7 2
       56 GETTABLEKS                       R6 R7 K8 ["all"]
       58 MOVE                             R7 R5
       59 CALL                             R6 1 1
       60 NAMECALL                         R6 R6 K9 ["await"]
       62 CALL                             R6 1 0
       63 LOADN                            R6 0
       64 JUMPIFNOTLT                      R6 R1 ; [+7]
       66 GETUPVAL                         R8 4
       67 MOVE                             R9 R3
       68 CALL                             R8 1 -1
       69 NAMECALL                         R6 R0 K10 ["dispatch"]
       71 CALL                             R6 -1 0
       72 LOADN                            R6 0
       73 JUMPIFNOTLT                      R6 R2 ; [+10]
       75 GETIMPORT                        R6 K12 [spawn]
       77 NEWCLOSURE                       R7 P3
       78 CAPTURE                          UPVAL U0
       79 CAPTURE                          VAL R0
       80 CAPTURE                          UPVAL U5
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          VAL R4
       83 CALL                             R6 1 0
       84 CLOSEUPVALS                      R1
       85 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R3 P0
        1 CAPTURE                          REF R2
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CLOSEUPVALS                      R2
        8 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R3 K6 ["Promise"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R5 R0 K7 ["Src"]
       20 GETTABLEKS                       R4 R5 K8 ["Actions"]
       22 GETTABLEKS                       R3 R4 K9 ["SetLoadedPluginData"]
       24 CALL                             R2 1 1
       25 DUPCLOSURE                       R3 K10 [PROTO_6]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R2
       28 CAPTURE                          VAL R3
       29 RETURN                           R3 1
