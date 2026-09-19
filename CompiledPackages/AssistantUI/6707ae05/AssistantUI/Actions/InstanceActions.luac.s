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
       16 JUMPIFNOT                        R4 ; [+35]
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
       38 JUMPIFNOTLT                      R7 R6 ; [+13]
       40 GETTABLEKS                       R6 R2 K10 ["initArgs"]
       42 GETTABLEKS                       R6 R6 K11 ["environment"]
       44 GETTABLEKS                       R6 R6 K12 ["instances"]
       46 GETTABLEKS                       R6 R6 K13 ["getUniqueId"]
       48 MOVE                             R7 R4
       49 CALL                             R6 1 1
       50 SETTABLEKS                       R6 R5 K14 ["uniqueId"]
       52 RETURN                           R5 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["bridge"]
        3 GETTABLEKS                       R0 R0 K1 ["onTagChanged"]
        5 DUPTABLE                         R1 K4 [{"tag", "info"}]
        6 GETUPVAL                         R2 1
        7 SETTABLEKS                       R2 R1 K2 ["tag"]
        9 GETUPVAL                         R2 2
       10 GETUPVAL                         R3 1
       11 GETUPVAL                         R4 3
       12 GETUPVAL                         R5 0
       13 CALL                             R2 3 1
       14 SETTABLEKS                       R2 R1 K3 ["info"]
       16 CALL                             R0 1 0
       17 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["tag"]
        2 GETTABLEKS                       R3 R0 K1 ["options"]
        4 GETUPVAL                         R6 0
        5 GETTABLE                         R5 R6 R2
        6 JUMPIF                           R5 ; [+3]
        7 GETUPVAL                         R5 0
        8 DUPTABLE                         R6 K9 [{["countRefs"] = 0, ["nameRefs"] = 0, ["classNameRefs"] = 0, ["uniqueIdRefs"] = 0, ["disconnect"] = }]
        9 SETTABLE                         R6 R5 R2
       10 GETUPVAL                         R5 0
       11 GETTABLE                         R4 R5 R2
       12 GETTABLEKS                       R5 R3 K10 ["includeCount"]
       14 JUMPIFNOT                        R5 ; [+5]
       15 GETTABLEKS                       R5 R4 K2 ["countRefs"]
       17 ADDK                             R5 R5 K11 [1]
       18 SETTABLEKS                       R5 R4 K2 ["countRefs"]
       20 GETTABLEKS                       R5 R3 K12 ["includeName"]
       22 JUMPIFNOT                        R5 ; [+5]
       23 GETTABLEKS                       R5 R4 K4 ["nameRefs"]
       25 ADDK                             R5 R5 K11 [1]
       26 SETTABLEKS                       R5 R4 K4 ["nameRefs"]
       28 GETTABLEKS                       R5 R3 K13 ["includeClassName"]
       30 JUMPIFNOT                        R5 ; [+5]
       31 GETTABLEKS                       R5 R4 K5 ["classNameRefs"]
       33 ADDK                             R5 R5 K11 [1]
       34 SETTABLEKS                       R5 R4 K5 ["classNameRefs"]
       36 GETTABLEKS                       R5 R3 K14 ["includeUniqueId"]
       38 JUMPIFNOT                        R5 ; [+5]
       39 GETTABLEKS                       R5 R4 K6 ["uniqueIdRefs"]
       41 ADDK                             R5 R5 K11 [1]
       42 SETTABLEKS                       R5 R4 K6 ["uniqueIdRefs"]
       44 GETTABLEKS                       R5 R4 K7 ["disconnect"]
       46 JUMPIFNOT                        R5 ; [+16]
       47 GETTABLEKS                       R5 R1 K15 ["bridge"]
       49 GETTABLEKS                       R5 R5 K16 ["onTagChanged"]
       51 DUPTABLE                         R6 K18 [{"tag", "info"}]
       52 SETTABLEKS                       R2 R6 K0 ["tag"]
       54 GETUPVAL                         R7 1
       55 MOVE                             R8 R2
       56 MOVE                             R9 R4
       57 MOVE                             R10 R1
       58 CALL                             R7 3 1
       59 SETTABLEKS                       R7 R6 K17 ["info"]
       61 CALL                             R5 1 0
       62 RETURN                           R0 0
       63 GETUPVAL                         R5 2
       64 GETTABLEKS                       R5 R5 K19 ["observeTagChanges"]
       66 MOVE                             R6 R2
       67 NEWCLOSURE                       R7 P0
       68 CAPTURE                          VAL R1
       69 CAPTURE                          VAL R2
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R4
       72 CALL                             R5 2 1
       73 SETTABLEKS                       R5 R4 K7 ["disconnect"]
       75 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["tag"]
        2 GETTABLEKS                       R3 R0 K1 ["options"]
        4 GETUPVAL                         R5 0
        5 GETTABLE                         R4 R5 R2
        6 JUMPIF                           R4 ; [+1]
        7 RETURN                           R0 0
        8 GETTABLEKS                       R5 R3 K2 ["includeCount"]
       10 JUMPIFNOT                        R5 ; [+11]
       11 LOADN                            R6 0
       12 GETTABLEKS                       R8 R4 K4 ["countRefs"]
       14 SUBK                             R7 R8 K3 [1]
       15 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       17 GETIMPORT                        R5 K7 [math.max]
       19 CALL                             R5 2 1
       20 SETTABLEKS                       R5 R4 K4 ["countRefs"]
       22 GETTABLEKS                       R5 R3 K8 ["includeName"]
       24 JUMPIFNOT                        R5 ; [+11]
       25 LOADN                            R6 0
       26 GETTABLEKS                       R8 R4 K9 ["nameRefs"]
       28 SUBK                             R7 R8 K3 [1]
       29 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       31 GETIMPORT                        R5 K7 [math.max]
       33 CALL                             R5 2 1
       34 SETTABLEKS                       R5 R4 K9 ["nameRefs"]
       36 GETTABLEKS                       R5 R3 K10 ["includeClassName"]
       38 JUMPIFNOT                        R5 ; [+11]
       39 LOADN                            R6 0
       40 GETTABLEKS                       R8 R4 K11 ["classNameRefs"]
       42 SUBK                             R7 R8 K3 [1]
       43 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       45 GETIMPORT                        R5 K7 [math.max]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K11 ["classNameRefs"]
       50 GETTABLEKS                       R5 R3 K12 ["includeUniqueId"]
       52 JUMPIFNOT                        R5 ; [+11]
       53 LOADN                            R6 0
       54 GETTABLEKS                       R8 R4 K13 ["uniqueIdRefs"]
       56 SUBK                             R7 R8 K3 [1]
       57 FASTCALL2                        MATH_MAX R6 R7 ; [+3]
       59 GETIMPORT                        R5 K7 [math.max]
       61 CALL                             R5 2 1
       62 SETTABLEKS                       R5 R4 K13 ["uniqueIdRefs"]
       64 GETTABLEKS                       R8 R4 K4 ["countRefs"]
       66 GETTABLEKS                       R9 R4 K9 ["nameRefs"]
       68 ADD                              R7 R8 R9
       69 GETTABLEKS                       R8 R4 K11 ["classNameRefs"]
       71 ADD                              R6 R7 R8
       72 GETTABLEKS                       R7 R4 K13 ["uniqueIdRefs"]
       74 ADD                              R5 R6 R7
       75 LOADN                            R6 0
       76 JUMPIFNOTLE                      R5 R6 ; [+9]
       78 GETTABLEKS                       R5 R4 K14 ["disconnect"]
       80 JUMPIFNOT                        R5 ; [+2]
       81 MOVE                             R6 R5
       82 CALL                             R6 0 0
       83 GETUPVAL                         R6 0
       84 LOADNIL                          R7
       85 SETTABLE                         R7 R6 R2
       86 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R0 K0 ["tag"]
        3 NAMECALL                         R2 R2 K1 ["GetTagged"]
        5 CALL                             R2 2 1
        6 GETTABLEKS                       R3 R1 K2 ["initArgs"]
        8 GETTABLEKS                       R3 R3 K3 ["environment"]
       10 GETTABLEKS                       R3 R3 K4 ["selection"]
       12 GETTABLEKS                       R3 R3 K5 ["set"]
       14 MOVE                             R4 R2
       15 CALL                             R3 1 0
       16 RETURN                           R0 0

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
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R0 K10 ["Bridges"]
       17 GETTABLEKS                       R3 R3 K11 ["createInstanceBridge"]
       19 GETTABLEKS                       R3 R3 K12 ["InstanceBridgeTypes"]
       21 CALL                             R2 1 1
       22 GETIMPORT                        R3 K9 [require]
       24 GETTABLEKS                       R4 R0 K13 ["Util"]
       26 GETTABLEKS                       R4 R4 K14 ["Tagging"]
       28 CALL                             R3 1 1
       29 NEWTABLE                         R4 0 0
       31 DUPCLOSURE                       R5 K15 [PROTO_0]
       32 CAPTURE                          VAL R4
       33 DUPCLOSURE                       R6 K16 [PROTO_1]
       34 DUPCLOSURE                       R7 K17 [PROTO_2]
       35 CAPTURE                          VAL R1
       36 DUPCLOSURE                       R8 K18 [PROTO_4]
       37 CAPTURE                          VAL R4
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R3
       40 DUPCLOSURE                       R9 K19 [PROTO_5]
       41 CAPTURE                          VAL R4
       42 DUPCLOSURE                       R10 K20 [PROTO_6]
       43 CAPTURE                          VAL R1
       44 DUPTABLE                         R11 K24 [{"observeTag", "unobserveTag", "selectTaggedInstances"}]
       45 SETTABLEKS                       R8 R11 K21 ["observeTag"]
       47 SETTABLEKS                       R9 R11 K22 ["unobserveTag"]
       49 SETTABLEKS                       R10 R11 K23 ["selectTaggedInstances"]
       51 DUPTABLE                         R12 K26 [{"bridge"}]
       52 SETTABLEKS                       R11 R12 K25 ["bridge"]
       54 RETURN                           R12 1
