PROTO_0:
        0 DUPTABLE                         R1 K11 [{[1], ["pathColumn"], ["scopeColumn"] = "", ["valueColumn"] = "", ["dataTypeColumn"] = "", ["childPaths"], ["expanded"] = False, ["textFilteredOut"] = False, ["scopeFilteredOut"] = False}]
        1 SETTABLEKS                       R0 R1 K0 ["expressionColumn"]
        3 SETTABLEKS                       R0 R1 K1 ["pathColumn"]
        5 NEWTABLE                         R2 0 0
        7 SETTABLEKS                       R2 R1 K6 ["childPaths"]
        9 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K10 [{[1], ["pathColumn"], ["scopeColumn"], ["valueColumn"], ["dataTypeColumn"], ["childPaths"], ["expanded"] = False, ["textFilteredOut"] = False, ["scopeFilteredOut"] = False}]
        1 GETTABLEKS                       R2 R0 K11 ["expression"]
        3 SETTABLEKS                       R2 R1 K0 ["expressionColumn"]
        5 GETTABLEKS                       R2 R0 K12 ["path"]
        7 SETTABLEKS                       R2 R1 K1 ["pathColumn"]
        9 GETTABLEKS                       R2 R0 K13 ["scope"]
       11 SETTABLEKS                       R2 R1 K2 ["scopeColumn"]
       13 GETTABLEKS                       R2 R0 K14 ["value"]
       15 SETTABLEKS                       R2 R1 K3 ["valueColumn"]
       17 GETTABLEKS                       R2 R0 K15 ["dataType"]
       19 SETTABLEKS                       R2 R1 K4 ["dataTypeColumn"]
       21 GETTABLEKS                       R2 R0 K5 ["childPaths"]
       23 JUMPIF                           R2 ; [+2]
       24 NEWTABLE                         R2 0 0
       26 SETTABLEKS                       R2 R1 K5 ["childPaths"]
       28 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R2 K12 [{[1], ["pathColumn"], ["idColumn"], ["scopeColumn"] = "", ["valueColumn"], ["dataTypeColumn"], ["childPaths"], ["expanded"] = False, ["textFilteredOut"] = False, ["scopeFilteredOut"] = False}]
        1 SETTABLEKS                       R1 R2 K0 ["expressionColumn"]
        3 SETTABLEKS                       R1 R2 K1 ["pathColumn"]
        5 GETTABLEKS                       R3 R0 K13 ["VariableId"]
        7 SETTABLEKS                       R3 R2 K2 ["idColumn"]
        9 GETUPVAL                         R4 0
       10 CALL                             R4 0 1
       11 JUMPIFNOT                        R4 ; [+7]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K14 ["truncateValue"]
       15 GETTABLEKS                       R4 R0 K15 ["Value"]
       17 CALL                             R3 1 1
       18 JUMP                             ; [+2]
       19 GETTABLEKS                       R3 R0 K15 ["Value"]
       21 SETTABLEKS                       R3 R2 K5 ["valueColumn"]
       23 GETTABLEKS                       R3 R0 K16 ["Type"]
       25 SETTABLEKS                       R3 R2 K6 ["dataTypeColumn"]
       27 NEWTABLE                         R3 0 0
       29 SETTABLEKS                       R3 R2 K7 ["childPaths"]
       31 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R3 R1
        1 GETUPVAL                         R4 0
        2 GETTABLEKS                       R4 R4 K0 ["SeparationToken"]
        4 CONCAT                           R2 R3 R4
        5 DUPTABLE                         R3 K13 [{["expressionColumn"], ["pathColumn"], ["idColumn"], ["scopeColumn"] = "", ["valueColumn"], ["dataTypeColumn"], ["childPaths"], ["expanded"] = False, ["textFilteredOut"] = False, ["scopeFilteredOut"] = False}]
        6 GETTABLEKS                       R4 R0 K14 ["Name"]
        8 SETTABLEKS                       R4 R3 K1 ["expressionColumn"]
       10 MOVE                             R5 R2
       11 GETTABLEKS                       R6 R0 K14 ["Name"]
       13 CONCAT                           R4 R5 R6
       14 SETTABLEKS                       R4 R3 K2 ["pathColumn"]
       16 GETTABLEKS                       R4 R0 K15 ["VariableId"]
       18 SETTABLEKS                       R4 R3 K3 ["idColumn"]
       20 GETUPVAL                         R5 1
       21 CALL                             R5 0 1
       22 JUMPIFNOT                        R5 ; [+7]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R4 R4 K16 ["truncateValue"]
       26 GETTABLEKS                       R5 R0 K17 ["Value"]
       28 CALL                             R4 1 1
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R4 R0 K17 ["Value"]
       32 SETTABLEKS                       R4 R3 K6 ["valueColumn"]
       34 GETTABLEKS                       R4 R0 K18 ["Type"]
       36 SETTABLEKS                       R4 R3 K7 ["dataTypeColumn"]
       38 NEWTABLE                         R4 0 0
       40 SETTABLEKS                       R4 R3 K8 ["childPaths"]
       42 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R2 1
        2 GETTABLEKS                       R2 R2 K0 ["newDummyRow"]
        4 CALL                             R2 0 1
        5 GETTABLEKS                       R3 R0 K1 ["pathColumn"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Mocks"]
       13 GETTABLEKS                       R2 R2 K6 ["DebuggerVariable"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K7 ["Util"]
       20 GETTABLEKS                       R3 R3 K8 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETTABLEKS                       R4 R0 K7 ["Util"]
       27 GETTABLEKS                       R4 R4 K9 ["WatchHelperFunctions"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K4 [require]
       32 GETTABLEKS                       R5 R0 K10 ["Flags"]
       34 GETTABLEKS                       R5 R5 K11 ["getFFlagDebuggerWatchValueTruncation"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K4 [require]
       39 GETIMPORT                        R6 K1 [script]
       41 GETTABLEKS                       R6 R6 K2 ["Parent"]
       43 GETTABLEKS                       R6 R6 K12 ["WatchWindowTableRow"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K13 [PROTO_0]
       47 DUPCLOSURE                       R7 K14 [PROTO_1]
       48 DUPCLOSURE                       R8 K15 [PROTO_2]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R3
       51 DUPCLOSURE                       R9 K16 [PROTO_3]
       52 CAPTURE                          VAL R2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          VAL R3
       55 DUPCLOSURE                       R10 K17 [PROTO_4]
       56 CAPTURE                          VAL R9
       57 CAPTURE                          VAL R1
       58 DUPTABLE                         R11 K23 [{"fromData", "fromExpression", "fromInstance", "fromChildInstance", "dummyRow"}]
       59 SETTABLEKS                       R7 R11 K18 ["fromData"]
       61 SETTABLEKS                       R6 R11 K19 ["fromExpression"]
       63 SETTABLEKS                       R8 R11 K20 ["fromInstance"]
       65 SETTABLEKS                       R9 R11 K21 ["fromChildInstance"]
       67 SETTABLEKS                       R10 R11 K22 ["dummyRow"]
       69 RETURN                           R11 1
