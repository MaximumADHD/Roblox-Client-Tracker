PROTO_0:
        0 DUPTABLE                         R1 K10 [{"nameColumn", "pathColumn", "idColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
        1 GETTABLEKS                       R2 R0 K11 ["name"]
        3 SETTABLEKS                       R2 R1 K0 ["nameColumn"]
        5 GETTABLEKS                       R2 R0 K12 ["path"]
        7 SETTABLEKS                       R2 R1 K1 ["pathColumn"]
        9 GETTABLEKS                       R2 R0 K13 ["id"]
       11 SETTABLEKS                       R2 R1 K2 ["idColumn"]
       13 GETTABLEKS                       R2 R0 K14 ["scope"]
       15 SETTABLEKS                       R2 R1 K3 ["scopeColumn"]
       17 GETTABLEKS                       R2 R0 K15 ["value"]
       19 SETTABLEKS                       R2 R1 K4 ["valueColumn"]
       21 GETTABLEKS                       R2 R0 K16 ["dataType"]
       23 SETTABLEKS                       R2 R1 K5 ["dataTypeColumn"]
       25 GETTABLEKS                       R2 R0 K6 ["childPaths"]
       27 JUMPIF                           R2 ; [+2]
       28 NEWTABLE                         R2 0 0
       30 SETTABLEKS                       R2 R1 K6 ["childPaths"]
       32 LOADB                            R2 0
       33 SETTABLEKS                       R2 R1 K7 ["expanded"]
       35 LOADB                            R2 0
       36 SETTABLEKS                       R2 R1 K8 ["textFilteredOut"]
       38 LOADB                            R2 0
       39 SETTABLEKS                       R2 R1 K9 ["scopeFilteredOut"]
       41 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+7]
        1 GETTABLEKS                       R6 R1 K0 ["pathColumn"]
        3 GETUPVAL                         R8 0
        4 GETTABLEKS                       R7 R8 K1 ["SeparationToken"]
        6 CONCAT                           R5 R6 R7
        7 JUMP                             ; [+1]
        8 LOADK                            R5 K2 [""]
        9 DUPTABLE                         R6 K12 [{"nameColumn", "pathColumn", "idColumn", "scopeColumn", "valueColumn", "dataTypeColumn", "childPaths", "expanded", "textFilteredOut", "scopeFilteredOut"}]
       10 GETTABLEKS                       R7 R0 K13 ["Name"]
       12 SETTABLEKS                       R7 R6 K3 ["nameColumn"]
       14 MOVE                             R8 R5
       15 GETTABLEKS                       R9 R0 K13 ["Name"]
       17 CONCAT                           R7 R8 R9
       18 SETTABLEKS                       R7 R6 K0 ["pathColumn"]
       20 GETTABLEKS                       R7 R0 K14 ["VariableId"]
       22 SETTABLEKS                       R7 R6 K4 ["idColumn"]
       24 JUMPIFNOT                        R1 ; [+3]
       25 GETTABLEKS                       R7 R1 K5 ["scopeColumn"]
       27 JUMPIF                           R7 ; [+1]
       28 MOVE                             R7 R2
       29 SETTABLEKS                       R7 R6 K5 ["scopeColumn"]
       31 GETTABLEKS                       R7 R0 K15 ["Value"]
       33 SETTABLEKS                       R7 R6 K6 ["valueColumn"]
       35 GETTABLEKS                       R7 R0 K16 ["Type"]
       37 SETTABLEKS                       R7 R6 K7 ["dataTypeColumn"]
       39 NEWTABLE                         R7 0 0
       41 SETTABLEKS                       R7 R6 K8 ["childPaths"]
       43 LOADB                            R7 0
       44 SETTABLEKS                       R7 R6 K9 ["expanded"]
       46 LOADB                            R7 0
       47 SETTABLEKS                       R7 R6 K10 ["textFilteredOut"]
       49 LOADB                            R7 0
       50 SETTABLEKS                       R7 R6 K11 ["scopeFilteredOut"]
       52 GETUPVAL                         R9 1
       53 GETTABLEKS                       R8 R9 K17 ["textMatchRow"]
       55 MOVE                             R9 R3
       56 MOVE                             R10 R6
       57 CALL                             R8 2 1
       58 NOT                              R7 R8
       59 SETTABLEKS                       R7 R6 K10 ["textFilteredOut"]
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R7 R8 K18 ["isScopeFiltered"]
       64 MOVE                             R8 R4
       65 MOVE                             R9 R6
       66 CALL                             R7 2 1
       67 SETTABLEKS                       R7 R6 K11 ["scopeFilteredOut"]
       69 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 GETTABLEKS                       R4 R5 K0 ["newDummyRow"]
        4 CALL                             R4 0 1
        5 MOVE                             R5 R0
        6 LOADK                            R6 K1 [""]
        7 MOVE                             R7 R1
        8 MOVE                             R8 R2
        9 CALL                             R3 5 1
       10 RETURN                           R3 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R3 K3 [script]
        5 GETTABLEKS                       R2 R3 K4 ["Parent"]
        7 GETTABLEKS                       R1 R2 K5 ["WatchWindowTableRow"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R4 K3 [script]
       12 GETTABLEKS                       R3 R4 K4 ["Parent"]
       14 GETTABLEKS                       R2 R3 K4 ["Parent"]
       16 GETTABLEKS                       R1 R2 K4 ["Parent"]
       18 GETIMPORT                        R2 K1 [require]
       20 GETTABLEKS                       R4 R1 K6 ["Mocks"]
       22 GETTABLEKS                       R3 R4 K7 ["DebuggerVariable"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K1 [require]
       27 GETTABLEKS                       R5 R1 K8 ["Util"]
       29 GETTABLEKS                       R4 R5 K9 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K1 [require]
       34 GETTABLEKS                       R6 R1 K8 ["Util"]
       36 GETTABLEKS                       R5 R6 K10 ["WatchHelperFunctions"]
       38 CALL                             R4 1 1
       39 DUPCLOSURE                       R5 K11 [PROTO_0]
       40 DUPCLOSURE                       R6 K12 [PROTO_1]
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R4
       43 DUPCLOSURE                       R7 K13 [PROTO_2]
       44 CAPTURE                          VAL R6
       45 CAPTURE                          VAL R2
       46 DUPTABLE                         R8 K17 [{"fromData", "fromInstance", "dummyRow"}]
       47 SETTABLEKS                       R5 R8 K14 ["fromData"]
       49 SETTABLEKS                       R6 R8 K15 ["fromInstance"]
       51 SETTABLEKS                       R7 R8 K16 ["dummyRow"]
       53 RETURN                           R8 1
