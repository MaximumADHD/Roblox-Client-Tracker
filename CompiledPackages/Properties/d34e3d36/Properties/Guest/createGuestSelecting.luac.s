PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R4 1
        4 GETTABLE                         R3 R4 R2
        5 JUMPIFNOT                        R3 ; [+2]
        6 MOVE                             R4 R3
        7 CALL                             R4 0 0
        8 GETUPVAL                         R4 1
        9 GETUPVAL                         R6 2
       10 GETTABLEKS                       R5 R6 K0 ["listenToParts"]
       12 MOVE                             R6 R0
       13 MOVE                             R7 R1
       14 NEWCLOSURE                       R8 P0
       15 CAPTURE                          UPVAL U3
       16 CAPTURE                          VAL R1
       17 CALL                             R5 3 1
       18 SETTABLE                         R5 R4 R2
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["startAggregating"]
        3 CALL                             R1 0 0
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R1 R2 K1 ["Get"]
        7 CALL                             R1 0 3
        8 FORGPREP                         R1
        9 GETUPVAL                         R6 2
       10 MOVE                             R7 R5
       11 MOVE                             R8 R0
       12 CALL                             R6 2 1
       13 JUMPIFNOT                        R6 ; [+25]
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R6 R7 K2 ["catalogProperty"]
       17 MOVE                             R7 R5
       18 MOVE                             R8 R0
       19 CALL                             R6 2 0
       20 GETUPVAL                         R6 3
       21 MOVE                             R7 R0
       22 CALL                             R6 1 1
       23 GETUPVAL                         R8 4
       24 GETTABLE                         R7 R8 R6
       25 JUMPIFNOT                        R7 ; [+2]
       26 MOVE                             R8 R7
       27 CALL                             R8 0 0
       28 GETUPVAL                         R8 4
       29 GETUPVAL                         R10 0
       30 GETTABLEKS                       R9 R10 K3 ["listenToParts"]
       32 MOVE                             R10 R5
       33 MOVE                             R11 R0
       34 NEWCLOSURE                       R12 P0
       35 CAPTURE                          UPVAL U5
       36 CAPTURE                          VAL R0
       37 CALL                             R9 3 1
       38 SETTABLE                         R9 R8 R6
       39 FORGLOOP                         R1 2 ; [-31]
       41 GETUPVAL                         R2 0
       42 GETTABLEKS                       R1 R2 K4 ["getCataloggedProperties"]
       44 CALL                             R1 0 1
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R2 R3 K5 ["getCataloggedInfos"]
       48 CALL                             R2 0 1
       49 GETUPVAL                         R4 6
       50 GETTABLEKS                       R3 R4 K6 ["showProperties"]
       52 MOVE                             R4 R1
       53 MOVE                             R5 R2
       54 CALL                             R3 2 0
       55 GETUPVAL                         R4 0
       56 GETTABLEKS                       R3 R4 K7 ["stopAggregating"]
       58 CALL                             R3 0 0
       59 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["startAggregating"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R0 R1 K1 ["Get"]
        7 CALL                             R0 0 1
        8 MOVE                             R1 R0
        9 LOADNIL                          R2
       10 LOADNIL                          R3
       11 FORGPREP                         R1
       12 GETUPVAL                         R6 2
       13 GETTABLEKS                       R7 R5 K2 ["ClassName"]
       15 GETUPVAL                         R8 3
       16 CALL                             R6 2 3
       17 FORGPREP                         R6
       18 GETUPVAL                         R12 0
       19 GETTABLEKS                       R11 R12 K3 ["catalogProperty"]
       21 MOVE                             R12 R5
       22 MOVE                             R13 R9
       23 CALL                             R11 2 0
       24 GETUPVAL                         R11 4
       25 MOVE                             R12 R9
       26 CALL                             R11 1 1
       27 GETUPVAL                         R13 5
       28 GETTABLE                         R12 R13 R11
       29 JUMPIFNOT                        R12 ; [+2]
       30 MOVE                             R13 R12
       31 CALL                             R13 0 0
       32 GETUPVAL                         R13 5
       33 GETUPVAL                         R15 0
       34 GETTABLEKS                       R14 R15 K4 ["listenToParts"]
       36 MOVE                             R15 R5
       37 MOVE                             R16 R9
       38 NEWCLOSURE                       R17 P0
       39 CAPTURE                          UPVAL U6
       40 CAPTURE                          VAL R9
       41 CALL                             R14 3 1
       42 SETTABLE                         R14 R13 R11
       43 FORGLOOP                         R6 2 ; [-26]
       45 NAMECALL                         R6 R5 K5 ["GetAttributes"]
       47 CALL                             R6 1 3
       48 FORGPREP                         R6
       49 GETUPVAL                         R12 0
       50 GETTABLEKS                       R11 R12 K3 ["catalogProperty"]
       52 MOVE                             R12 R5
       53 GETUPVAL                         R14 7
       54 GETTABLEKS                       R13 R14 K6 ["fromAttribute"]
       56 MOVE                             R14 R9
       57 CALL                             R13 1 -1
       58 CALL                             R11 -1 0
       59 FORGLOOP                         R6 2 ; [-11]
       61 NAMECALL                         R6 R5 K7 ["GetTags"]
       63 CALL                             R6 1 3
       64 FORGPREP                         R6
       65 GETUPVAL                         R12 0
       66 GETTABLEKS                       R11 R12 K3 ["catalogProperty"]
       68 MOVE                             R12 R5
       69 GETUPVAL                         R14 7
       70 GETTABLEKS                       R13 R14 K8 ["fromTag"]
       72 MOVE                             R14 R10
       73 CALL                             R13 1 -1
       74 CALL                             R11 -1 0
       75 FORGLOOP                         R6 2 ; [-11]
       77 FORGLOOP                         R1 2 ; [-66]
       79 GETUPVAL                         R2 0
       80 GETTABLEKS                       R1 R2 K9 ["getCataloggedProperties"]
       82 CALL                             R1 0 1
       83 GETUPVAL                         R3 0
       84 GETTABLEKS                       R2 R3 K10 ["getCataloggedInfos"]
       86 CALL                             R2 0 1
       87 DUPTABLE                         R3 K13 [{"processedInstances", "totalInstances"}]
       88 LENGTH                           R4 R0
       89 SETTABLEKS                       R4 R3 K11 ["processedInstances"]
       91 LENGTH                           R4 R0
       92 SETTABLEKS                       R4 R3 K12 ["totalInstances"]
       94 GETUPVAL                         R5 8
       95 GETTABLEKS                       R4 R5 K14 ["showProperties"]
       97 MOVE                             R5 R1
       98 MOVE                             R6 R2
       99 MOVE                             R7 R3
      100 CALL                             R4 3 0
      101 GETIMPORT                        R4 K17 [table.clone]
      103 MOVE                             R5 R1
      104 CALL                             R4 1 1
      105 SETUPVAL                         R4 9
      106 GETUPVAL                         R5 0
      107 GETTABLEKS                       R4 R5 K18 ["stopAggregating"]
      109 CALL                             R4 0 0
      110 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 GETUPVAL                         R0 1
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 MOVE                             R5 R4
       13 CALL                             R5 0 0
       14 FORGLOOP                         R0 2 ; [-3]
       16 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["isAggregating"]
        3 CALL                             R0 0 1
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R0 R1 K1 ["stopAggregating"]
        8 CALL                             R0 0 0
        9 GETUPVAL                         R0 1
       10 CALL                             R0 0 0
       11 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [task.defer]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETIMPORT                        R1 K2 [task.defer]
        2 GETUPVAL                         R2 0
        3 CALL                             R1 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["fromAttribute"]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 -1
        6 CALL                             R1 -1 0
        7 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 LOADK                            R3 K0 ["ValueBase"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+31]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R2 R0 K2 ["ClassName"]
        8 GETUPVAL                         R3 1
        9 CALL                             R1 2 3
       10 FORGPREP                         R1
       11 GETTABLEKS                       R6 R4 K3 ["metaType"]
       13 JUMPIFNOTEQKS                    R6 K4 ["Property"] ; [+19]
       15 GETTABLEKS                       R8 R4 K5 ["name"]
       17 NAMECALL                         R6 R0 K6 ["GetPropertyChangedSignal"]
       19 CALL                             R6 2 1
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          UPVAL U2
       22 NAMECALL                         R6 R6 K7 ["Connect"]
       24 CALL                             R6 2 1
       25 GETUPVAL                         R8 3
       26 NEWCLOSURE                       R9 P1
       27 CAPTURE                          VAL R6
       28 FASTCALL2                        TABLE_INSERT R8 R9 ; [+3]
       30 GETIMPORT                        R7 K10 [table.insert]
       32 CALL                             R7 2 0
       33 FORGLOOP                         R1 2 ; [-23]
       35 JUMP                             ; [+15]
       36 GETTABLEKS                       R1 R0 K11 ["Changed"]
       38 NEWCLOSURE                       R3 P2
       39 CAPTURE                          UPVAL U2
       40 NAMECALL                         R1 R1 K7 ["Connect"]
       42 CALL                             R1 2 1
       43 GETUPVAL                         R3 3
       44 NEWCLOSURE                       R4 P3
       45 CAPTURE                          VAL R1
       46 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       48 GETIMPORT                        R2 K10 [table.insert]
       50 CALL                             R2 2 0
       51 GETTABLEKS                       R1 R0 K12 ["AttributeChanged"]
       53 NEWCLOSURE                       R3 P4
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          UPVAL U5
       56 NAMECALL                         R1 R1 K7 ["Connect"]
       58 CALL                             R1 2 1
       59 GETUPVAL                         R3 3
       60 NEWCLOSURE                       R4 P5
       61 CAPTURE                          VAL R1
       62 FASTCALL2                        TABLE_INSERT R3 R4 ; [+3]
       64 GETIMPORT                        R2 K10 [table.insert]
       66 CALL                             R2 2 0
       67 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["Get"]
        3 CALL                             R0 0 1
        4 MOVE                             R1 R0
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 GETUPVAL                         R6 1
        9 MOVE                             R7 R5
       10 CALL                             R6 1 0
       11 FORGLOOP                         R1 2 ; [-4]
       13 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 LOADNIL                          R1
        2 LOADNIL                          R2
        3 FORGPREP                         R0
        4 MOVE                             R5 R4
        5 CALL                             R5 0 0
        6 FORGLOOP                         R0 2 ; [-3]
        8 GETUPVAL                         R0 1
        9 LOADNIL                          R1
       10 LOADNIL                          R2
       11 FORGPREP                         R0
       12 MOVE                             R5 R4
       13 CALL                             R5 0 0
       14 FORGLOOP                         R0 2 ; [-3]
       16 GETUPVAL                         R1 2
       17 GETTABLEKS                       R0 R1 K0 ["Get"]
       19 CALL                             R0 0 1
       20 MOVE                             R1 R0
       21 LOADNIL                          R2
       22 LOADNIL                          R3
       23 FORGPREP                         R1
       24 GETUPVAL                         R6 3
       25 MOVE                             R7 R5
       26 CALL                             R6 1 0
       27 FORGLOOP                         R1 2 ; [-4]
       29 GETUPVAL                         R1 4
       30 GETTABLEKS                       R0 R1 K1 ["hideProperties"]
       32 GETUPVAL                         R1 5
       33 JUMPIF                           R1 ; [+2]
       34 NEWTABLE                         R1 0 0
       36 CALL                             R0 1 0
       37 GETUPVAL                         R1 6
       38 GETTABLEKS                       R0 R1 K2 ["isAggregating"]
       40 CALL                             R0 0 1
       41 JUMPIFNOT                        R0 ; [+4]
       42 GETUPVAL                         R1 6
       43 GETTABLEKS                       R0 R1 K3 ["stopAggregating"]
       45 CALL                             R0 0 0
       46 GETUPVAL                         R0 7
       47 CALL                             R0 0 0
       48 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["hideProperties"]
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+2]
        5 NEWTABLE                         R1 0 0
        7 CALL                             R0 1 0
        8 GETUPVAL                         R1 2
        9 GETTABLEKS                       R0 R1 K1 ["isAggregating"]
       11 CALL                             R0 0 1
       12 JUMPIFNOT                        R0 ; [+4]
       13 GETUPVAL                         R1 2
       14 GETTABLEKS                       R0 R1 K2 ["stopAggregating"]
       16 CALL                             R0 0 0
       17 GETUPVAL                         R0 3
       18 NAMECALL                         R0 R0 K3 ["Disconnect"]
       20 CALL                             R0 1 0
       21 RETURN                           R0 0

PROTO_16:
        0 LOADNIL                          R4
        1 NEWTABLE                         R5 0 0
        3 NEWTABLE                         R6 0 0
        5 LOADNIL                          R7
        6 NEWCLOSURE                       R8 P0
        7 CAPTURE                          UPVAL U0
        8 CAPTURE                          VAL R6
        9 CAPTURE                          VAL R3
       10 CAPTURE                          REF R7
       11 NEWCLOSURE                       R9 P1
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 CAPTURE                          UPVAL U1
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R6
       17 CAPTURE                          REF R7
       18 CAPTURE                          VAL R0
       19 MOVE                             R7 R9
       20 NEWCLOSURE                       R10 P2
       21 CAPTURE                          VAL R3
       22 CAPTURE                          VAL R1
       23 CAPTURE                          UPVAL U2
       24 CAPTURE                          VAL R2
       25 CAPTURE                          UPVAL U0
       26 CAPTURE                          VAL R6
       27 CAPTURE                          REF R7
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R0
       30 CAPTURE                          REF R4
       31 NEWCLOSURE                       R11 P3
       32 CAPTURE                          VAL R5
       33 CAPTURE                          VAL R6
       34 NEWCLOSURE                       R12 P4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R10
       37 NEWCLOSURE                       R13 P5
       38 CAPTURE                          UPVAL U2
       39 CAPTURE                          VAL R2
       40 CAPTURE                          VAL R12
       41 CAPTURE                          VAL R5
       42 CAPTURE                          VAL R9
       43 CAPTURE                          UPVAL U3
       44 NEWCLOSURE                       R14 P6
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R13
       47 NEWCLOSURE                       R15 P7
       48 CAPTURE                          VAL R5
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R1
       51 CAPTURE                          VAL R13
       52 CAPTURE                          VAL R0
       53 CAPTURE                          REF R4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R10
       56 GETTABLEKS                       R16 R1 K0 ["SelectionChanged"]
       58 MOVE                             R18 R15
       59 NAMECALL                         R16 R16 K1 ["Connect"]
       61 CALL                             R16 2 1
       62 GETIMPORT                        R17 K4 [task.defer]
       64 MOVE                             R18 R15
       65 CALL                             R17 1 0
       66 NEWCLOSURE                       R17 P8
       67 CAPTURE                          VAL R0
       68 CAPTURE                          REF R4
       69 CAPTURE                          VAL R3
       70 CAPTURE                          VAL R16
       71 DUPTABLE                         R18 K6 [{"destroy"}]
       72 SETTABLEKS                       R17 R18 K5 ["destroy"]
       74 CLOSEUPVALS                      R4
       75 RETURN                           R18 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["PropertyInteraction"]
       13 GETTABLEKS                       R2 R3 K8 ["PropertyId"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["PropertyTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K10 ["RpcTypes"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R6 R0 K6 ["Util"]
       30 GETTABLEKS                       R5 R6 K11 ["getReadablePropertiesForClass"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R8 R0 K6 ["Util"]
       37 GETTABLEKS                       R7 R8 K7 ["PropertyInteraction"]
       39 GETTABLEKS                       R6 R7 K12 ["hasProperty"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K6 ["Util"]
       46 GETTABLEKS                       R7 R8 K13 ["propertyIdToString"]
       48 CALL                             R6 1 1
       49 DUPCLOSURE                       R7 K14 [PROTO_16]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R5
       52 CAPTURE                          VAL R4
       53 CAPTURE                          VAL R1
       54 RETURN                           R7 1
