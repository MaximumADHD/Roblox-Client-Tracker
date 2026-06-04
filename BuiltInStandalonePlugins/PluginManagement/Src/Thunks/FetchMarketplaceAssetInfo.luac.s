PROTO_0:
        0 LOADN                            R5 0
        1 ADDK                             R5 R5 K0 [1]
        2 GETIMPORT                        R6 K2 [pcall]
        4 MOVE                             R7 R0
        5 CALL                             R6 1 2
        6 JUMPIFNOT                        R6 ; [+2]
        7 JUMPIFNOT                        R7 ; [+1]
        8 RETURN                           R7 1
        9 JUMPIFNOTLE                      R1 R5 ; [+3]
       11 LOADNIL                          R8
       12 RETURN                           R8 1
       13 MUL                              R8 R5 R3
       14 GETIMPORT                        R12 K6 [math.random]
       16 CALL                             R12 0 1
       17 MUL                              R11 R12 R4
       18 MULK                             R10 R11 K3 [2]
       19 SUB                              R9 R10 R4
       20 ADD                              R11 R2 R8
       21 ADD                              R10 R11 R9
       22 FASTCALL2                        MATH_MAX R2 R10 ; [+5]
       24 MOVE                             R12 R2
       25 MOVE                             R13 R10
       26 GETIMPORT                        R11 K8 [math.max]
       28 CALL                             R11 2 1
       29 GETIMPORT                        R12 K11 [task.wait]
       31 MOVE                             R13 R11
       32 CALL                             R12 1 0
       33 JUMPBACK                         ; [-33]
       34 LOADNIL                          R6
       35 RETURN                           R6 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["GetProductInfoAsync"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADN                            R2 8
        3 LOADK                            R3 K0 [0.5]
        4 LOADN                            R4 2
        5 LOADN                            R5 1
        6 CALL                             R0 5 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R1 2
        9 MOVE                             R2 R0
       10 CALL                             R1 1 0
       11 RETURN                           R0 0
       12 GETUPVAL                         R1 3
       13 CALL                             R1 0 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETIMPORT                        R2 K2 [task.spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          VAL R1
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R3 R3 K0 ["new"]
        6 NEWCLOSURE                       R4 P1
        7 CAPTURE                          UPVAL U1
        8 CAPTURE                          VAL R2
        9 CALL                             R3 1 -1
       10 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 LOADB                            R3 0
        3 SETTABLE                         R3 R1 R2
        4 NEWTABLE                         R1 1 0
        6 GETUPVAL                         R2 1
        7 DUPTABLE                         R3 K1 [{"creator"}]
        8 GETTABLEKS                       R4 R0 K2 ["Creator"]
       10 SETTABLEKS                       R4 R3 K0 ["creator"]
       12 SETTABLE                         R3 R1 R2
       13 GETUPVAL                         R2 2
       14 GETUPVAL                         R4 3
       15 MOVE                             R5 R1
       16 CALL                             R4 1 -1
       17 NAMECALL                         R2 R2 K3 ["dispatch"]
       19 CALL                             R2 -1 0
       20 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 LOADB                            R2 0
        3 SETTABLE                         R2 R0 R1
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 CALL                             R3 1 -1
        3 NAMECALL                         R1 R0 K0 ["dispatch"]
        5 CALL                             R1 -1 0
        6 NAMECALL                         R1 R0 K1 ["getState"]
        8 CALL                             R1 1 1
        9 JUMPIF                           R1 ; [+2]
       10 NEWTABLE                         R1 0 0
       12 GETTABLEKS                       R1 R1 K2 ["Management"]
       14 JUMPIF                           R1 ; [+2]
       15 NEWTABLE                         R1 0 0
       17 GETTABLEKS                       R1 R1 K3 ["plugins"]
       19 JUMPIF                           R1 ; [+2]
       20 NEWTABLE                         R1 0 0
       22 GETUPVAL                         R2 1
       23 LOADNIL                          R3
       24 LOADNIL                          R4
       25 FORGPREP                         R2
       26 GETTABLE                         R7 R1 R5
       27 JUMPIFNOT                        R7 ; [+4]
       28 GETTABLE                         R7 R1 R5
       29 GETTABLEKS                       R7 R7 K4 ["creator"]
       31 JUMPIF                           R7 ; [+29]
       32 GETUPVAL                         R8 2
       33 GETTABLE                         R7 R8 R5
       34 JUMPIF                           R7 ; [+26]
       35 GETUPVAL                         R7 2
       36 LOADB                            R8 1
       37 SETTABLE                         R8 R7 R5
       38 GETUPVAL                         R8 3
       39 NEWCLOSURE                       R9 P0
       40 CAPTURE                          VAL R8
       41 CAPTURE                          VAL R5
       42 GETUPVAL                         R10 4
       43 GETTABLEKS                       R10 R10 K5 ["new"]
       45 NEWCLOSURE                       R11 P1
       46 CAPTURE                          UPVAL U5
       47 CAPTURE                          VAL R9
       48 CALL                             R10 1 1
       49 MOVE                             R7 R10
       50 NEWCLOSURE                       R9 P2
       51 CAPTURE                          UPVAL U2
       52 CAPTURE                          VAL R5
       53 CAPTURE                          VAL R0
       54 CAPTURE                          UPVAL U0
       55 NEWCLOSURE                       R10 P3
       56 CAPTURE                          UPVAL U2
       57 CAPTURE                          VAL R5
       58 NAMECALL                         R7 R7 K6 ["andThen"]
       60 CALL                             R7 3 0
       61 FORGLOOP                         R2 1 ; [-36]
       63 RETURN                           R0 0

PROTO_8:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R1
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 RETURN                           R2 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["assetId"]
        4 NAMECALL                         R0 R0 K1 ["GetProductInfoAsync"]
        6 CALL                             R0 2 -1
        7 RETURN                           R0 -1

PROTO_10:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 2
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0
       11 GETUPVAL                         R2 3
       12 CALL                             R2 0 0
       13 RETURN                           R0 0

PROTO_11:
        0 GETIMPORT                        R2 K1 [spawn]
        2 NEWCLOSURE                       R3 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          VAL R0
        6 CAPTURE                          VAL R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_12:
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

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 SETTABLE                         R2 R0 R1
        4 GETUPVAL                         R1 3
        5 ADDK                             R0 R1 K0 [1]
        6 SETUPVAL                         R0 3
        7 RETURN                           R0 0

PROTO_14:
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

PROTO_15:
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
       26 GETUPVAL                         R11 2
       27 GETTABLEKS                       R11 R11 K3 ["new"]
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
       55 GETUPVAL                         R6 2
       56 GETTABLEKS                       R6 R6 K8 ["all"]
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

PROTO_16:
        0 GETUPVAL                         R5 0
        1 CALL                             R5 0 1
        2 NOT                              R4 R5
        3 FASTCALL2K                       ASSERT R4 K0 ; [+4]
        5 LOADK                            R5 K0 ["DEPRECATED_FetchMarketplaceAssetInfo is deprecated"]
        6 GETIMPORT                        R3 K2 [assert]
        8 CALL                             R3 2 0
        9 NEWCLOSURE                       R3 P0
       10 CAPTURE                          REF R2
       11 CAPTURE                          VAL R1
       12 CAPTURE                          UPVAL U1
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 CAPTURE                          UPVAL U3
       16 CLOSEUPVALS                      R2
       17 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Src"]
       13 GETTABLEKS                       R2 R2 K6 ["Flags"]
       15 GETTABLEKS                       R2 R2 K7 ["getFFlagStudioFixPluginManagement429"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R3 R0 K8 ["Packages"]
       22 GETTABLEKS                       R3 R3 K9 ["Promise"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R4 R0 K8 ["Packages"]
       29 GETTABLEKS                       R4 R4 K10 ["Cryo"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K4 [require]
       34 GETTABLEKS                       R5 R0 K5 ["Src"]
       36 GETTABLEKS                       R5 R5 K11 ["Actions"]
       38 GETTABLEKS                       R5 R5 K12 ["SetLoadedPluginData"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 0 0
       43 DUPCLOSURE                       R6 K13 [PROTO_0]
       44 DUPCLOSURE                       R7 K14 [PROTO_4]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R6
       47 DUPCLOSURE                       R8 K15 [PROTO_8]
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R6
       52 DUPCLOSURE                       R9 K16 [PROTO_16]
       53 CAPTURE                          VAL R1
       54 CAPTURE                          VAL R2
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R9
       57 MOVE                             R10 R1
       58 CALL                             R10 0 1
       59 JUMPIFNOT                        R10 ; [+1]
       60 RETURN                           R8 1
       61 RETURN                           R9 1
