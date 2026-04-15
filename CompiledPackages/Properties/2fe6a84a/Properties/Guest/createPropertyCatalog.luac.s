PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 NOT                              R1 R2
        2 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        4 LOADK                            R2 K0 ["catalog was already aggregating!"]
        5 GETIMPORT                        R0 K2 [assert]
        7 CALL                             R0 2 0
        8 LOADB                            R0 1
        9 SETUPVAL                         R0 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 FASTCALL2K                       ASSERT R1 K0 ; [+4]
        3 LOADK                            R2 K0 ["catalog wasn't aggregating!"]
        4 GETIMPORT                        R0 K2 [assert]
        6 CALL                             R0 2 0
        7 GETIMPORT                        R0 K5 [table.clear]
        9 GETUPVAL                         R1 1
       10 CALL                             R0 1 0
       11 GETIMPORT                        R0 K5 [table.clear]
       13 GETUPVAL                         R1 2
       14 CALL                             R0 1 0
       15 GETIMPORT                        R0 K5 [table.clear]
       17 GETUPVAL                         R1 3
       18 CALL                             R0 1 0
       19 GETIMPORT                        R0 K5 [table.clear]
       21 GETUPVAL                         R1 4
       22 CALL                             R0 1 0
       23 LOADB                            R0 0
       24 SETUPVAL                         R0 0
       25 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 MOVE                             R4 R0
        3 CALL                             R3 1 1
        4 GETTABLE                         R1 R2 R3
        5 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R3 0
        1 MOVE                             R4 R1
        2 CALL                             R3 1 1
        3 GETUPVAL                         R4 1
        4 MOVE                             R5 R1
        5 MOVE                             R6 R0
        6 GETUPVAL                         R7 2
        7 CALL                             R4 3 1
        8 GETUPVAL                         R5 3
        9 GETTABLEKS                       R6 R4 K0 ["type"]
       11 CALL                             R5 1 1
       12 GETUPVAL                         R7 4
       13 GETTABLEKS                       R6 R7 K1 ["fromInfoAndParts"]
       15 MOVE                             R7 R4
       16 GETTABLEKS                       R8 R5 K2 ["initParts"]
       18 GETUPVAL                         R9 5
       19 MOVE                             R10 R2
       20 CALL                             R8 2 -1
       21 CALL                             R6 -1 1
       22 GETUPVAL                         R8 6
       23 FASTCALL2                        TABLE_INSERT R8 R1 ; [+4]
       25 MOVE                             R9 R1
       26 GETIMPORT                        R7 K5 [table.insert]
       28 CALL                             R7 2 0
       29 GETUPVAL                         R7 7
       30 SETTABLE                         R5 R7 R3
       31 GETUPVAL                         R8 8
       32 FASTCALL2                        TABLE_INSERT R8 R6 ; [+4]
       34 MOVE                             R9 R6
       35 GETIMPORT                        R7 K5 [table.insert]
       37 CALL                             R7 2 0
       38 GETUPVAL                         R8 6
       39 LENGTH                           R7 R8
       40 GETUPVAL                         R8 9
       41 SETTABLE                         R7 R8 R3
       42 RETURN                           R7 1

PROTO_7:
        0 GETUPVAL                         R3 0
        1 FASTCALL2K                       ASSERT R3 K0 ; [+4]
        3 LOADK                            R4 K0 ["can only catalog while aggregating"]
        4 GETIMPORT                        R2 K2 [assert]
        6 CALL                             R2 2 0
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 MOVE                             R4 R1
       10 CALL                             R2 2 2
       11 JUMPIF                           R2 ; [+1]
       12 RETURN                           R0 0
       13 GETUPVAL                         R4 2
       14 MOVE                             R5 R1
       15 CALL                             R4 1 1
       16 GETUPVAL                         R6 3
       17 GETTABLE                         R5 R6 R4
       18 JUMPIFNOTEQKNIL                  R5 ; [+2]
       20 LOADB                            R6 0 +1
       21 LOADB                            R6 1
       22 JUMPIF                           R6 ; [+6]
       23 GETUPVAL                         R7 4
       24 MOVE                             R8 R0
       25 MOVE                             R9 R1
       26 MOVE                             R10 R3
       27 CALL                             R7 3 1
       28 MOVE                             R5 R7
       29 GETUPVAL                         R8 5
       30 GETTABLE                         R7 R8 R4
       31 GETTABLEKS                       R8 R7 K3 ["addToAggregation"]
       33 GETUPVAL                         R9 6
       34 GETUPVAL                         R12 7
       35 GETTABLE                         R11 R12 R5
       36 GETTABLEKS                       R10 R11 K4 ["parts"]
       38 MOVE                             R11 R3
       39 CALL                             R8 3 0
       40 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETUPVAL                         R5 1
        2 MOVE                             R6 R1
        3 CALL                             R5 1 1
        4 GETTABLE                         R3 R4 R5
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETTABLEKS                       R4 R3 K0 ["listenToParts"]
        8 JUMPIF                           R4 ; [+2]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 GETUPVAL                         R4 2
       12 MOVE                             R5 R0
       13 MOVE                             R6 R1
       14 CALL                             R4 2 2
       15 JUMPIF                           R4 ; [+2]
       16 LOADNIL                          R6
       17 RETURN                           R6 1
       18 GETTABLEKS                       R6 R3 K0 ["listenToParts"]
       20 GETUPVAL                         R7 3
       21 MOVE                             R8 R5
       22 MOVE                             R9 R2
       23 CALL                             R6 3 -1
       24 RETURN                           R6 -1

PROTO_9:
        0 DUPTABLE                         R2 K1 [{"instanceRegistry"}]
        1 SETTABLEKS                       R0 R2 K0 ["instanceRegistry"]
        3 NEWTABLE                         R3 0 0
        5 NEWTABLE                         R4 0 0
        7 NEWTABLE                         R5 0 0
        9 NEWTABLE                         R6 0 0
       11 LOADB                            R7 0
       12 NEWCLOSURE                       R8 P0
       13 CAPTURE                          REF R7
       14 NEWCLOSURE                       R9 P1
       15 CAPTURE                          REF R7
       16 NEWCLOSURE                       R10 P2
       17 CAPTURE                          REF R7
       18 CAPTURE                          VAL R3
       19 CAPTURE                          VAL R4
       20 CAPTURE                          VAL R5
       21 CAPTURE                          VAL R6
       22 NEWCLOSURE                       R11 P3
       23 CAPTURE                          VAL R4
       24 NEWCLOSURE                       R12 P4
       25 CAPTURE                          VAL R5
       26 NEWCLOSURE                       R13 P5
       27 CAPTURE                          VAL R6
       28 CAPTURE                          UPVAL U0
       29 NEWCLOSURE                       R14 P6
       30 CAPTURE                          UPVAL U0
       31 CAPTURE                          UPVAL U1
       32 CAPTURE                          VAL R1
       33 CAPTURE                          UPVAL U2
       34 CAPTURE                          UPVAL U3
       35 CAPTURE                          VAL R2
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R6
       38 CAPTURE                          VAL R5
       39 CAPTURE                          VAL R3
       40 NEWCLOSURE                       R15 P7
       41 CAPTURE                          REF R7
       42 CAPTURE                          UPVAL U4
       43 CAPTURE                          UPVAL U0
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R14
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R2
       48 CAPTURE                          VAL R5
       49 NEWCLOSURE                       R16 P8
       50 CAPTURE                          VAL R6
       51 CAPTURE                          UPVAL U0
       52 CAPTURE                          UPVAL U4
       53 CAPTURE                          VAL R2
       54 DUPTABLE                         R17 K10 [{"isAggregating", "startAggregating", "stopAggregating", "getAggregator", "listenToParts", "catalogProperty", "getCataloggedProperties", "getCataloggedInfos"}]
       55 SETTABLEKS                       R8 R17 K2 ["isAggregating"]
       57 SETTABLEKS                       R9 R17 K3 ["startAggregating"]
       59 SETTABLEKS                       R10 R17 K4 ["stopAggregating"]
       61 SETTABLEKS                       R13 R17 K5 ["getAggregator"]
       63 SETTABLEKS                       R16 R17 K6 ["listenToParts"]
       65 SETTABLEKS                       R15 R17 K7 ["catalogProperty"]
       67 SETTABLEKS                       R11 R17 K8 ["getCataloggedProperties"]
       69 SETTABLEKS                       R12 R17 K9 ["getCataloggedInfos"]
       71 CLOSEUPVALS                      R7
       72 RETURN                           R17 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["PropertyInteraction"]
       13 GETTABLEKS                       R2 R3 K8 ["AggregatePropertyInfo"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["PropertyTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R7 R0 K6 ["Util"]
       30 GETTABLEKS                       R6 R7 K7 ["PropertyInteraction"]
       32 GETTABLEKS                       R5 R6 K11 ["getPropertyInfo"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Guest"]
       39 GETTABLEKS                       R6 R7 K13 ["getValueAggregator"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Util"]
       46 GETTABLEKS                       R7 R8 K14 ["propertyIdToString"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K6 ["Util"]
       53 GETTABLEKS                       R9 R10 K7 ["PropertyInteraction"]
       55 GETTABLEKS                       R8 R9 K15 ["readProperty"]
       57 CALL                             R7 1 1
       58 DUPCLOSURE                       R8 K16 [PROTO_9]
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R7
       64 RETURN                           R8 1
