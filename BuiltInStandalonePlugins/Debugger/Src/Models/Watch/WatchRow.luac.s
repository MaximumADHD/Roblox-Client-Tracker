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
        9 GETTABLEKS                       R3 R0 K14 ["Value"]
       11 SETTABLEKS                       R3 R2 K5 ["valueColumn"]
       13 GETTABLEKS                       R3 R0 K15 ["Type"]
       15 SETTABLEKS                       R3 R2 K6 ["dataTypeColumn"]
       17 NEWTABLE                         R3 0 0
       19 SETTABLEKS                       R3 R2 K7 ["childPaths"]
       21 RETURN                           R2 1

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
       20 GETTABLEKS                       R4 R0 K16 ["Value"]
       22 SETTABLEKS                       R4 R3 K6 ["valueColumn"]
       24 GETTABLEKS                       R4 R0 K17 ["Type"]
       26 SETTABLEKS                       R4 R3 K7 ["dataTypeColumn"]
       28 NEWTABLE                         R4 0 0
       30 SETTABLEKS                       R4 R3 K8 ["childPaths"]
       32 RETURN                           R3 1

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
       25 GETIMPORT                        R4 K1 [script]
       27 GETTABLEKS                       R4 R4 K2 ["Parent"]
       29 GETTABLEKS                       R4 R4 K9 ["WatchWindowTableRow"]
       31 CALL                             R3 1 1
       32 DUPCLOSURE                       R4 K10 [PROTO_0]
       33 DUPCLOSURE                       R5 K11 [PROTO_1]
       34 DUPCLOSURE                       R6 K12 [PROTO_2]
       35 DUPCLOSURE                       R7 K13 [PROTO_3]
       36 CAPTURE                          VAL R2
       37 DUPCLOSURE                       R8 K14 [PROTO_4]
       38 CAPTURE                          VAL R7
       39 CAPTURE                          VAL R1
       40 DUPTABLE                         R9 K20 [{"fromData", "fromExpression", "fromInstance", "fromChildInstance", "dummyRow"}]
       41 SETTABLEKS                       R5 R9 K15 ["fromData"]
       43 SETTABLEKS                       R4 R9 K16 ["fromExpression"]
       45 SETTABLEKS                       R6 R9 K17 ["fromInstance"]
       47 SETTABLEKS                       R7 R9 K18 ["fromChildInstance"]
       49 SETTABLEKS                       R8 R9 K19 ["dummyRow"]
       51 RETURN                           R9 1
