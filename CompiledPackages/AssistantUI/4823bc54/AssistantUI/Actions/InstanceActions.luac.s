PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R2 R0
        2 JUMPIF                           R1 ; [+3]
        3 GETUPVAL                         R1 0
        4 DUPTABLE                         R2 K6 [{[1] = 0, ["nameRefs"] = 0, ["classNameRefs"] = 0, ["disconnect"] = }]
        5 SETTABLE                         R2 R1 R0
        6 GETUPVAL                         R2 0
        7 GETTABLE                         R1 R2 R0
        8 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["countRefs"]
        2 GETTABLEKS                       R4 R0 K1 ["nameRefs"]
        4 ADD                              R2 R3 R4
        5 GETTABLEKS                       R3 R0 K2 ["classNameRefs"]
        7 ADD                              R1 R2 R3
        8 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K0 ["GetTagged"]
        4 CALL                             R2 2 1
        5 GETTABLEN                        R3 R2 1
        6 NEWTABLE                         R4 4 0
        8 GETTABLEKS                       R5 R1 K1 ["countRefs"]
       10 LOADN                            R6 0
       11 JUMPIFNOTLT                      R6 R5 ; [+4]
       13 LENGTH                           R5 R2
       14 SETTABLEKS                       R5 R4 K2 ["count"]
       16 JUMPIFNOT                        R3 ; [+18]
       17 GETTABLEKS                       R5 R1 K3 ["nameRefs"]
       19 LOADN                            R6 0
       20 JUMPIFNOTLT                      R6 R5 ; [+5]
       22 GETTABLEKS                       R5 R3 K4 ["Name"]
       24 SETTABLEKS                       R5 R4 K5 ["name"]
       26 GETTABLEKS                       R5 R1 K6 ["classNameRefs"]
       28 LOADN                            R6 0
       29 JUMPIFNOTLT                      R6 R5 ; [+5]
       31 GETTABLEKS                       R5 R3 K7 ["ClassName"]
       33 SETTABLEKS                       R5 R4 K8 ["className"]
       35 RETURN                           R4 1

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
       12 CALL                             R2 2 1
       13 SETTABLEKS                       R2 R1 K3 ["info"]
       15 CALL                             R0 1 0
       16 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R2 R0 K0 ["tag"]
        2 GETTABLEKS                       R3 R0 K1 ["options"]
        4 GETUPVAL                         R6 0
        5 GETTABLE                         R5 R6 R2
        6 JUMPIF                           R5 ; [+3]
        7 GETUPVAL                         R5 0
        8 DUPTABLE                         R6 K8 [{["countRefs"] = 0, ["nameRefs"] = 0, ["classNameRefs"] = 0, ["disconnect"] = }]
        9 SETTABLE                         R6 R5 R2
       10 GETUPVAL                         R5 0
       11 GETTABLE                         R4 R5 R2
       12 GETTABLEKS                       R5 R3 K9 ["includeCount"]
       14 JUMPIFNOT                        R5 ; [+5]
       15 GETTABLEKS                       R5 R4 K2 ["countRefs"]
       17 ADDK                             R5 R5 K10 [1]
       18 SETTABLEKS                       R5 R4 K2 ["countRefs"]
       20 GETTABLEKS                       R5 R3 K11 ["includeName"]
       22 JUMPIFNOT                        R5 ; [+5]
       23 GETTABLEKS                       R5 R4 K4 ["nameRefs"]
       25 ADDK                             R5 R5 K10 [1]
       26 SETTABLEKS                       R5 R4 K4 ["nameRefs"]
       28 GETTABLEKS                       R5 R3 K12 ["includeClassName"]
       30 JUMPIFNOT                        R5 ; [+5]
       31 GETTABLEKS                       R5 R4 K5 ["classNameRefs"]
       33 ADDK                             R5 R5 K10 [1]
       34 SETTABLEKS                       R5 R4 K5 ["classNameRefs"]
       36 GETTABLEKS                       R5 R4 K6 ["disconnect"]
       38 JUMPIFNOT                        R5 ; [+15]
       39 GETTABLEKS                       R5 R1 K13 ["bridge"]
       41 GETTABLEKS                       R5 R5 K14 ["onTagChanged"]
       43 DUPTABLE                         R6 K16 [{"tag", "info"}]
       44 SETTABLEKS                       R2 R6 K0 ["tag"]
       46 GETUPVAL                         R7 1
       47 MOVE                             R8 R2
       48 MOVE                             R9 R4
       49 CALL                             R7 2 1
       50 SETTABLEKS                       R7 R6 K15 ["info"]
       52 CALL                             R5 1 0
       53 RETURN                           R0 0
       54 GETUPVAL                         R5 2
       55 GETTABLEKS                       R5 R5 K17 ["observeTagChanges"]
       57 MOVE                             R6 R2
       58 NEWCLOSURE                       R7 P0
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R2
       61 CAPTURE                          UPVAL U1
       62 CAPTURE                          VAL R4
       63 CALL                             R5 2 1
       64 SETTABLEKS                       R5 R4 K6 ["disconnect"]
       66 RETURN                           R0 0

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
       50 GETTABLEKS                       R7 R4 K4 ["countRefs"]
       52 GETTABLEKS                       R8 R4 K9 ["nameRefs"]
       54 ADD                              R6 R7 R8
       55 GETTABLEKS                       R7 R4 K11 ["classNameRefs"]
       57 ADD                              R5 R6 R7
       58 LOADN                            R6 0
       59 JUMPIFNOTLE                      R5 R6 ; [+9]
       61 GETTABLEKS                       R5 R4 K12 ["disconnect"]
       63 JUMPIFNOT                        R5 ; [+2]
       64 MOVE                             R6 R5
       65 CALL                             R6 0 0
       66 GETUPVAL                         R6 0
       67 LOADNIL                          R7
       68 SETTABLE                         R7 R6 R2
       69 RETURN                           R0 0

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
