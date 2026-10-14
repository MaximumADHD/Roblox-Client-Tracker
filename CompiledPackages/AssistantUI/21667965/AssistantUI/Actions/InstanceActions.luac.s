PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 0
        4 DUPTABLE                         R2 K7 [{[1] = 0, ["nameRefs"] = 0, ["classNameRefs"] = 0, ["uniqueIdRefs"] = 0, ["disconnect"] = }]
        5 SETTABLE                         R2 R1 R0
        6 GETUPVAL                         R2 0
        7 GETTABLE                         R1 R2 R0
        8 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R4 R0 K0 ["countRefs"]
        2 GETTABLEKS                       R5 R0 K1 ["nameRefs"]
        4 ADD                              R3 R4 R5
        5 GETTABLEKS                       R4 R0 K2 ["classNameRefs"]
        7 ADD                              R2 R3 R4
        8 GETTABLEKS                       R3 R0 K3 ["uniqueIdRefs"]
       10 ADD                              R1 R2 R3
       11 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R0
        2 NAMECALL                         R3 R3 K0 ["GetTagged"]
        4 CALL                             R3 2 1
        5 GETTABLEN                        R4 R3 1
        6 NEWTABLE                         R5 4 0
        8 GETTABLEKS                       R6 R1 K1 ["countRefs"]
       10 LOADN                            R7 0
       11 JUMPIFNOTLT                      R7 R6 ; [+4]
       13 LENGTH                           R6 R3
       14 SETTABLEKS                       R6 R5 K2 ["count"]
       16 JUMPIFNOT                        R4 ; [+31]
       17 GETTABLEKS                       R6 R1 K3 ["nameRefs"]
       19 LOADN                            R7 0
       20 JUMPIFNOTLT                      R7 R6 ; [+5]
       22 GETTABLEKS                       R6 R4 K4 ["Name"]
       24 SETTABLEKS                       R6 R5 K5 ["name"]
       26 GETTABLEKS                       R6 R1 K6 ["classNameRefs"]
       28 LOADN                            R7 0
       29 JUMPIFNOTLT                      R7 R6 ; [+5]
       31 GETTABLEKS                       R6 R4 K7 ["ClassName"]
       33 SETTABLEKS                       R6 R5 K8 ["className"]
       35 GETTABLEKS                       R6 R1 K9 ["uniqueIdRefs"]
       37 LOADN                            R7 0
       38 JUMPIFNOTLT                      R7 R6 ; [+9]
       40 GETTABLEKS                       R6 R2 K10 ["instances"]
       42 GETTABLEKS                       R6 R6 K11 ["getUniqueId"]
       44 MOVE                             R7 R4
       45 CALL                             R6 1 1
       46 SETTABLEKS                       R6 R5 K12 ["uniqueId"]
       48 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R1 K2 [{"tag", "info"}]
        2 GETUPVAL                         R2 1
        3 SETTABLEKS                       R2 R1 K0 ["tag"]
        5 GETUPVAL                         R2 2
        6 GETUPVAL                         R3 1
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R5 4
        9 CALL                             R2 3 1
       10 SETTABLEKS                       R2 R1 K1 ["info"]
       12 CALL                             R0 1 0
       13 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["tag"]
        2 GETTABLEKS                       R4 R0 K1 ["options"]
        4 GETUPVAL                         R7 0
        5 GETTABLE                         R6 R7 R3
        6 JUMPIF                           R6 ; [+3]
        7 GETUPVAL                         R6 0
        8 DUPTABLE                         R7 K9 [{["countRefs"] = 0, ["nameRefs"] = 0, ["classNameRefs"] = 0, ["uniqueIdRefs"] = 0, ["disconnect"] = }]
        9 SETTABLE                         R7 R6 R3
       10 GETUPVAL                         R6 0
       11 GETTABLE                         R5 R6 R3
       12 GETTABLEKS                       R6 R4 K10 ["includeCount"]
       14 JUMPIFNOT                        R6 ; [+5]
       15 GETTABLEKS                       R6 R5 K2 ["countRefs"]
       17 ADDK                             R6 R6 K11 [1]
       18 SETTABLEKS                       R6 R5 K2 ["countRefs"]
       20 GETTABLEKS                       R6 R4 K12 ["includeName"]
       22 JUMPIFNOT                        R6 ; [+5]
       23 GETTABLEKS                       R6 R5 K4 ["nameRefs"]
       25 ADDK                             R6 R6 K11 [1]
       26 SETTABLEKS                       R6 R5 K4 ["nameRefs"]
       28 GETTABLEKS                       R6 R4 K13 ["includeClassName"]
       30 JUMPIFNOT                        R6 ; [+5]
       31 GETTABLEKS                       R6 R5 K5 ["classNameRefs"]
       33 ADDK                             R6 R6 K11 [1]
       34 SETTABLEKS                       R6 R5 K5 ["classNameRefs"]
       36 GETTABLEKS                       R6 R4 K14 ["includeUniqueId"]
       38 JUMPIFNOT                        R6 ; [+5]
       39 GETTABLEKS                       R6 R5 K6 ["uniqueIdRefs"]
       41 ADDK                             R6 R6 K11 [1]
       42 SETTABLEKS                       R6 R5 K6 ["uniqueIdRefs"]
       44 GETTABLEKS                       R6 R5 K7 ["disconnect"]
       46 JUMPIFNOT                        R6 ; [+13]
       47 MOVE                             R6 R2
       48 DUPTABLE                         R7 K16 [{"tag", "info"}]
       49 SETTABLEKS                       R3 R7 K0 ["tag"]
       51 GETUPVAL                         R8 1
       52 MOVE                             R9 R3
       53 MOVE                             R10 R5
       54 MOVE                             R11 R1
       55 CALL                             R8 3 1
       56 SETTABLEKS                       R8 R7 K15 ["info"]
       58 CALL                             R6 1 0
       59 RETURN                           R0 0
       60 GETUPVAL                         R6 2
       61 GETTABLEKS                       R6 R6 K17 ["observeTagChanges"]
       63 MOVE                             R7 R3
       64 NEWCLOSURE                       R8 P0
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R3
       67 CAPTURE                          UPVAL U1
       68 CAPTURE                          VAL R5
       69 CAPTURE                          VAL R1
       70 CALL                             R6 2 1
       71 SETTABLEKS                       R6 R5 K7 ["disconnect"]
       73 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["tag"]
        2 GETTABLEKS                       R2 R0 K1 ["options"]
        4 GETUPVAL                         R4 0
        5 GETTABLE                         R3 R4 R1
        6 JUMPIF                           R3 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R4 R2 K2 ["includeCount"]
       10 JUMPIFNOT                        R4 ; [+11]
       11 LOADN                            R5 0
       12 GETTABLEKS                       R7 R3 K4 ["countRefs"]
       14 SUBK                             R6 R7 K3 [1]
       15 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       17 GETIMPORT                        R4 K7 [math.max]
       19 CALL                             R4 2 1
       20 SETTABLEKS                       R4 R3 K4 ["countRefs"]
       22 GETTABLEKS                       R4 R2 K8 ["includeName"]
       24 JUMPIFNOT                        R4 ; [+11]
       25 LOADN                            R5 0
       26 GETTABLEKS                       R7 R3 K9 ["nameRefs"]
       28 SUBK                             R6 R7 K3 [1]
       29 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       31 GETIMPORT                        R4 K7 [math.max]
       33 CALL                             R4 2 1
       34 SETTABLEKS                       R4 R3 K9 ["nameRefs"]
       36 GETTABLEKS                       R4 R2 K10 ["includeClassName"]
       38 JUMPIFNOT                        R4 ; [+11]
       39 LOADN                            R5 0
       40 GETTABLEKS                       R7 R3 K11 ["classNameRefs"]
       42 SUBK                             R6 R7 K3 [1]
       43 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       45 GETIMPORT                        R4 K7 [math.max]
       47 CALL                             R4 2 1
       48 SETTABLEKS                       R4 R3 K11 ["classNameRefs"]
       50 GETTABLEKS                       R4 R2 K12 ["includeUniqueId"]
       52 JUMPIFNOT                        R4 ; [+11]
       53 LOADN                            R5 0
       54 GETTABLEKS                       R7 R3 K13 ["uniqueIdRefs"]
       56 SUBK                             R6 R7 K3 [1]
       57 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       59 GETIMPORT                        R4 K7 [math.max]
       61 CALL                             R4 2 1
       62 SETTABLEKS                       R4 R3 K13 ["uniqueIdRefs"]
       64 GETTABLEKS                       R7 R3 K4 ["countRefs"]
       66 GETTABLEKS                       R8 R3 K9 ["nameRefs"]
       68 ADD                              R6 R7 R8
       69 GETTABLEKS                       R7 R3 K11 ["classNameRefs"]
       71 ADD                              R5 R6 R7
       72 GETTABLEKS                       R6 R3 K13 ["uniqueIdRefs"]
       74 ADD                              R4 R5 R6
       75 LOADN                            R5 0
       76 JUMPIFNOTLE                      R4 R5 ; [+9]
       78 GETTABLEKS                       R4 R3 K14 ["disconnect"]
       80 JUMPIFNOT                        R4 ; [+2]
       81 MOVE                             R5 R4
       82 CALL                             R5 0 0
       83 GETUPVAL                         R5 0
       84 LOADNIL                          R6
       85 SETTABLE                         R6 R5 R1
       86 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["tag"]
        3 NAMECALL                         R2 R2 K1 ["GetTagged"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R1 K2 ["selection"]
        8 GETTABLEKS                       R3 R3 K3 ["set"]
       10 MOVE                             R4 R2
       11 CALL                             R3 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 GETTABLEKS                       R5 R1 K2 ["bridge"]
        8 GETTABLEKS                       R5 R5 K3 ["onTagChanged"]
       10 CALL                             R2 3 -1
       11 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 CALL                             R2 1 -1
        3 RETURN                           R2 -1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETTABLEKS                       R4 R1 K0 ["initArgs"]
        4 GETTABLEKS                       R4 R4 K1 ["environment"]
        6 CALL                             R2 2 -1
        7 RETURN                           R2 -1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["onTagChanged"]
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R0
        5 NAMECALL                         R1 R1 K1 ["Fire"]
        7 CALL                             R1 3 0
        8 RETURN                           R0 0

PROTO_11:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 GETUPVAL                         R3 1
        4 MOVE                             R4 R1
        5 GETUPVAL                         R5 2
        6 MOVE                             R6 R2
        7 CALL                             R3 3 0
        8 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 0
        3 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R5 R1 K0 ["tag"]
        4 NAMECALL                         R3 R3 K1 ["GetTagged"]
        6 CALL                             R3 2 1
        7 GETTABLEKS                       R4 R2 K2 ["selection"]
        9 GETTABLEKS                       R4 R4 K3 ["set"]
       11 MOVE                             R5 R3
       12 CALL                             R4 1 0
       13 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Destroy"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["new"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K0 ["new"]
        8 CALL                             R3 0 1
        9 GETTABLEKS                       R6 R2 K1 ["observeTag"]
       11 NEWCLOSURE                       R8 P0
       12 CAPTURE                          VAL R2
       13 CAPTURE                          UPVAL U2
       14 CAPTURE                          VAL R1
       15 NAMECALL                         R6 R6 K2 ["Connect"]
       17 CALL                             R6 2 -1
       18 NAMECALL                         R4 R3 K3 ["Add"]
       20 CALL                             R4 -1 0
       21 GETTABLEKS                       R6 R2 K4 ["unobserveTag"]
       23 DUPCLOSURE                       R8 K5 [PROTO_12]
       24 CAPTURE                          UPVAL U3
       25 NAMECALL                         R6 R6 K2 ["Connect"]
       27 CALL                             R6 2 -1
       28 NAMECALL                         R4 R3 K3 ["Add"]
       30 CALL                             R4 -1 0
       31 GETTABLEKS                       R6 R2 K6 ["selectTaggedInstances"]
       33 NEWCLOSURE                       R8 P2
       34 CAPTURE                          VAL R1
       35 CAPTURE                          UPVAL U4
       36 NAMECALL                         R6 R6 K2 ["Connect"]
       38 CALL                             R6 2 -1
       39 NAMECALL                         R4 R3 K3 ["Add"]
       41 CALL                             R4 -1 0
       42 GETTABLEKS                       R4 R1 K7 ["Destroying"]
       44 NEWCLOSURE                       R6 P3
       45 CAPTURE                          VAL R3
       46 NAMECALL                         R4 R4 K8 ["Once"]
       48 CALL                             R4 2 0
       49 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["CollectionService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETTABLEKS                       R2 R0 K8 ["Parent"]
       15 GETIMPORT                        R3 K10 [require]
       17 GETTABLEKS                       R4 R2 K11 ["DMNetworking"]
       19 CALL                             R3 1 1
       20 GETIMPORT                        R4 K10 [require]
       22 GETTABLEKS                       R5 R0 K12 ["Util"]
       24 GETTABLEKS                       R5 R5 K13 ["Bin"]
       26 CALL                             R4 1 1
       27 GETIMPORT                        R5 K10 [require]
       29 GETTABLEKS                       R6 R0 K14 ["Guest"]
       31 GETTABLEKS                       R6 R6 K15 ["Environment"]
       33 CALL                             R5 1 1
       34 GETIMPORT                        R6 K10 [require]
       36 GETTABLEKS                       R7 R0 K16 ["Bridges"]
       38 GETTABLEKS                       R7 R7 K17 ["createInstanceBridge"]
       40 GETTABLEKS                       R7 R7 K18 ["InstanceBridgeTypes"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K10 [require]
       45 GETTABLEKS                       R8 R0 K19 ["Remotes"]
       47 GETTABLEKS                       R8 R8 K20 ["InstanceRemotes"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K10 [require]
       52 GETTABLEKS                       R9 R0 K12 ["Util"]
       54 GETTABLEKS                       R9 R9 K21 ["Tagging"]
       56 CALL                             R8 1 1
       57 NEWTABLE                         R9 0 0
       59 DUPCLOSURE                       R10 K22 [PROTO_0]
       60 CAPTURE                          VAL R9
       61 DUPCLOSURE                       R11 K23 [PROTO_1]
       62 DUPCLOSURE                       R12 K24 [PROTO_2]
       63 CAPTURE                          VAL R1
       64 DUPCLOSURE                       R13 K25 [PROTO_4]
       65 CAPTURE                          VAL R9
       66 CAPTURE                          VAL R12
       67 CAPTURE                          VAL R8
       68 DUPCLOSURE                       R14 K26 [PROTO_5]
       69 CAPTURE                          VAL R9
       70 DUPCLOSURE                       R15 K27 [PROTO_6]
       71 CAPTURE                          VAL R1
       72 DUPTABLE                         R16 K31 [{"observeTag", "unobserveTag", "selectTaggedInstances"}]
       73 DUPCLOSURE                       R17 K32 [PROTO_7]
       74 CAPTURE                          VAL R13
       75 SETTABLEKS                       R17 R16 K28 ["observeTag"]
       77 DUPCLOSURE                       R17 K33 [PROTO_8]
       78 CAPTURE                          VAL R14
       79 SETTABLEKS                       R17 R16 K29 ["unobserveTag"]
       81 DUPCLOSURE                       R17 K34 [PROTO_9]
       82 CAPTURE                          VAL R15
       83 SETTABLEKS                       R17 R16 K30 ["selectTaggedInstances"]
       85 DUPCLOSURE                       R17 K35 [PROTO_15]
       86 CAPTURE                          VAL R7
       87 CAPTURE                          VAL R4
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R14
       90 CAPTURE                          VAL R1
       91 DUPTABLE                         R18 K38 [{"bridge", "connectRemotes"}]
       92 SETTABLEKS                       R16 R18 K36 ["bridge"]
       94 SETTABLEKS                       R17 R18 K37 ["connectRemotes"]
       96 RETURN                           R18 1
