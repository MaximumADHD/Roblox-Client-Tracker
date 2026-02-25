PROTO_0:
        0 DUPTABLE                         R1 K9 [{"expressionColumn", "pathColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
        1 SETTABLEKS                       R0 R1 K0 ["expressionColumn"]
        3 SETTABLEKS                       R0 R1 K1 ["pathColumn"]
        5 LOADK                            R2 K10 [""]
        6 SETTABLEKS                       R2 R1 K2 ["scopeColumn"]
        8 LOADK                            R2 K10 [""]
        9 SETTABLEKS                       R2 R1 K3 ["valueColumn"]
       11 LOADK                            R2 K10 [""]
       12 SETTABLEKS                       R2 R1 K4 ["dataTypeColumn"]
       14 NEWTABLE                         R2 0 0
       16 SETTABLEKS                       R2 R1 K5 ["childPaths"]
       18 LOADB                            R2 0
       19 SETTABLEKS                       R2 R1 K6 ["expanded"]
       21 LOADB                            R2 0
       22 SETTABLEKS                       R2 R1 K7 ["textFilteredOut"]
       24 LOADB                            R2 0
       25 SETTABLEKS                       R2 R1 K8 ["scopeFilteredOut"]
       27 RETURN                           R1 1

PROTO_1:
        0 DUPTABLE                         R1 K9 [{"expressionColumn", "pathColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
        1 GETTABLEKS                       R2 R0 K10 ["expression"]
        3 SETTABLEKS                       R2 R1 K0 ["expressionColumn"]
        5 GETTABLEKS                       R2 R0 K11 ["path"]
        7 SETTABLEKS                       R2 R1 K1 ["pathColumn"]
        9 GETTABLEKS                       R2 R0 K12 ["scope"]
       11 SETTABLEKS                       R2 R1 K2 ["scopeColumn"]
       13 GETTABLEKS                       R2 R0 K13 ["value"]
       15 SETTABLEKS                       R2 R1 K3 ["valueColumn"]
       17 GETTABLEKS                       R2 R0 K14 ["dataType"]
       19 SETTABLEKS                       R2 R1 K4 ["dataTypeColumn"]
       21 GETTABLEKS                       R2 R0 K5 ["childPaths"]
       23 JUMPIF                           R2 ; [+2]
       24 NEWTABLE                         R2 0 0
       26 SETTABLEKS                       R2 R1 K5 ["childPaths"]
       28 LOADB                            R2 0
       29 SETTABLEKS                       R2 R1 K6 ["expanded"]
       31 LOADB                            R2 0
       32 SETTABLEKS                       R2 R1 K7 ["textFilteredOut"]
       34 LOADB                            R2 0
       35 SETTABLEKS                       R2 R1 K8 ["scopeFilteredOut"]
       37 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R2 K10 [{"expressionColumn", "pathColumn", "idColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
        1 SETTABLEKS                       R1 R2 K0 ["expressionColumn"]
        3 SETTABLEKS                       R1 R2 K1 ["pathColumn"]
        5 GETTABLEKS                       R3 R0 K11 ["VariableId"]
        7 SETTABLEKS                       R3 R2 K2 ["idColumn"]
        9 LOADK                            R3 K12 [""]
       10 SETTABLEKS                       R3 R2 K3 ["scopeColumn"]
       12 GETTABLEKS                       R3 R0 K13 ["Value"]
       14 SETTABLEKS                       R3 R2 K4 ["valueColumn"]
       16 GETTABLEKS                       R3 R0 K14 ["Type"]
       18 SETTABLEKS                       R3 R2 K5 ["dataTypeColumn"]
       20 NEWTABLE                         R3 0 0
       22 SETTABLEKS                       R3 R2 K6 ["childPaths"]
       24 LOADB                            R3 0
       25 SETTABLEKS                       R3 R2 K7 ["expanded"]
       27 LOADB                            R3 0
       28 SETTABLEKS                       R3 R2 K8 ["textFilteredOut"]
       30 LOADB                            R3 0
       31 SETTABLEKS                       R3 R2 K9 ["scopeFilteredOut"]
       33 RETURN                           R2 1

PROTO_3:
        0 MOVE                             R3 R1
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["SeparationToken"]
        4 CONCAT                           R2 R3 R4
        5 DUPTABLE                         R3 K11 [{"expressionColumn", "pathColumn", "idColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
        6 GETTABLEKS                       R4 R0 K12 ["Name"]
        8 SETTABLEKS                       R4 R3 K1 ["expressionColumn"]
       10 MOVE                             R5 R2
       11 GETTABLEKS                       R6 R0 K12 ["Name"]
       13 CONCAT                           R4 R5 R6
       14 SETTABLEKS                       R4 R3 K2 ["pathColumn"]
       16 GETTABLEKS                       R4 R0 K13 ["VariableId"]
       18 SETTABLEKS                       R4 R3 K3 ["idColumn"]
       20 LOADK                            R4 K14 [""]
       21 SETTABLEKS                       R4 R3 K4 ["scopeColumn"]
       23 GETTABLEKS                       R4 R0 K15 ["Value"]
       25 SETTABLEKS                       R4 R3 K5 ["valueColumn"]
       27 GETTABLEKS                       R4 R0 K16 ["Type"]
       29 SETTABLEKS                       R4 R3 K6 ["dataTypeColumn"]
       31 NEWTABLE                         R4 0 0
       33 SETTABLEKS                       R4 R3 K7 ["childPaths"]
       35 LOADB                            R4 0
       36 SETTABLEKS                       R4 R3 K8 ["expanded"]
       38 LOADB                            R4 0
       39 SETTABLEKS                       R4 R3 K9 ["textFilteredOut"]
       41 LOADB                            R4 0
       42 SETTABLEKS                       R4 R3 K10 ["scopeFilteredOut"]
       44 RETURN                           R3 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R2 R3 K0 ["newDummyRow"]
        4 CALL                             R2 0 1
        5 GETTABLEKS                       R3 R0 K1 ["pathColumn"]
        7 CALL                             R1 2 1
        8 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R3 K1 [script]
        3 GETTABLEKS                       R2 R3 K2 ["Parent"]
        5 GETTABLEKS                       R1 R2 K2 ["Parent"]
        7 GETTABLEKS                       R0 R1 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R3 R0 K5 ["Mocks"]
       13 GETTABLEKS                       R2 R3 K6 ["DebuggerVariable"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R4 R0 K7 ["Util"]
       20 GETTABLEKS                       R3 R4 K8 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K4 [require]
       25 GETIMPORT                        R6 K1 [script]
       27 GETTABLEKS                       R5 R6 K2 ["Parent"]
       29 GETTABLEKS                       R4 R5 K9 ["WatchWindowTableRow"]
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
