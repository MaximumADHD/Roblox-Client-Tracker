PROTO_0:
        0 DUPTABLE                         R1 K11 [{[1], ["pathColumn"], ["idColumn"], ["scopeColumn"], ["valueColumn"], ["dataTypeColumn"], ["childPaths"], ["expanded"] = False, ["textFilteredOut"] = False, ["scopeFilteredOut"] = False}]
        1 GETTABLEKS                       R2 R0 K12 ["name"]
        3 SETTABLEKS                       R2 R1 K0 ["nameColumn"]
        5 GETTABLEKS                       R2 R0 K13 ["path"]
        7 SETTABLEKS                       R2 R1 K1 ["pathColumn"]
        9 GETTABLEKS                       R2 R0 K14 ["id"]
       11 SETTABLEKS                       R2 R1 K2 ["idColumn"]
       13 GETTABLEKS                       R2 R0 K15 ["scope"]
       15 SETTABLEKS                       R2 R1 K3 ["scopeColumn"]
       17 GETTABLEKS                       R2 R0 K16 ["value"]
       19 SETTABLEKS                       R2 R1 K4 ["valueColumn"]
       21 GETTABLEKS                       R2 R0 K17 ["dataType"]
       23 SETTABLEKS                       R2 R1 K5 ["dataTypeColumn"]
       25 GETTABLEKS                       R2 R0 K6 ["childPaths"]
       27 JUMPIF                           R2 ; [+2]
       28 NEWTABLE                         R2 0 0
       30 SETTABLEKS                       R2 R1 K6 ["childPaths"]
       32 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R1 ; [+7]
        1 GETTABLEKS                       R6 R1 K0 ["pathColumn"]
        3 GETUPVAL                         R7 0
        4 GETTABLEKS                       R7 R7 K1 ["SeparationToken"]
        6 CONCAT                           R5 R6 R7
        7 JUMP                             ; [+1]
        8 LOADK                            R5 K2 [""]
        9 DUPTABLE                         R6 K13 [{["nameColumn"], [2], ["idColumn"], ["scopeColumn"], ["valueColumn"], ["dataTypeColumn"], ["childPaths"], ["expanded"] = False, ["textFilteredOut"] = False, ["scopeFilteredOut"] = False}]
       10 GETTABLEKS                       R7 R0 K14 ["Name"]
       12 SETTABLEKS                       R7 R6 K3 ["nameColumn"]
       14 MOVE                             R8 R5
       15 GETTABLEKS                       R9 R0 K14 ["Name"]
       17 CONCAT                           R7 R8 R9
       18 SETTABLEKS                       R7 R6 K0 ["pathColumn"]
       20 GETTABLEKS                       R7 R0 K15 ["VariableId"]
       22 SETTABLEKS                       R7 R6 K4 ["idColumn"]
       24 JUMPIFNOT                        R1 ; [+3]
       25 GETTABLEKS                       R7 R1 K5 ["scopeColumn"]
       27 JUMPIF                           R7 ; [+1]
       28 MOVE                             R7 R2
       29 SETTABLEKS                       R7 R6 K5 ["scopeColumn"]
       31 GETUPVAL                         R8 1
       32 CALL                             R8 0 1
       33 JUMPIFNOT                        R8 ; [+7]
       34 GETUPVAL                         R7 2
       35 GETTABLEKS                       R7 R7 K16 ["truncateValue"]
       37 GETTABLEKS                       R8 R0 K17 ["Value"]
       39 CALL                             R7 1 1
       40 JUMP                             ; [+2]
       41 GETTABLEKS                       R7 R0 K17 ["Value"]
       43 SETTABLEKS                       R7 R6 K6 ["valueColumn"]
       45 GETTABLEKS                       R7 R0 K18 ["Type"]
       47 SETTABLEKS                       R7 R6 K7 ["dataTypeColumn"]
       49 NEWTABLE                         R7 0 0
       51 SETTABLEKS                       R7 R6 K8 ["childPaths"]
       53 GETUPVAL                         R8 2
       54 GETTABLEKS                       R8 R8 K19 ["textMatchRow"]
       56 MOVE                             R9 R3
       57 MOVE                             R10 R6
       58 CALL                             R8 2 1
       59 NOT                              R7 R8
       60 SETTABLEKS                       R7 R6 K11 ["textFilteredOut"]
       62 GETUPVAL                         R7 2
       63 GETTABLEKS                       R7 R7 K20 ["isScopeFiltered"]
       65 MOVE                             R8 R4
       66 MOVE                             R9 R6
       67 CALL                             R7 2 1
       68 SETTABLEKS                       R7 R6 K12 ["scopeFilteredOut"]
       70 RETURN                           R6 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R4 1
        2 GETTABLEKS                       R4 R4 K0 ["newDummyRow"]
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
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["WatchWindowTableRow"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K3 [script]
       12 GETTABLEKS                       R1 R1 K4 ["Parent"]
       14 GETTABLEKS                       R1 R1 K4 ["Parent"]
       16 GETTABLEKS                       R1 R1 K4 ["Parent"]
       18 GETIMPORT                        R2 K1 [require]
       20 GETTABLEKS                       R3 R1 K6 ["Mocks"]
       22 GETTABLEKS                       R3 R3 K7 ["DebuggerVariable"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K1 [require]
       27 GETTABLEKS                       R4 R1 K8 ["Util"]
       29 GETTABLEKS                       R4 R4 K9 ["Constants"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K1 [require]
       34 GETTABLEKS                       R5 R1 K8 ["Util"]
       36 GETTABLEKS                       R5 R5 K10 ["WatchHelperFunctions"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K1 [require]
       41 GETTABLEKS                       R6 R1 K11 ["Flags"]
       43 GETTABLEKS                       R6 R6 K12 ["getFFlagDebuggerWatchValueTruncation"]
       45 CALL                             R5 1 1
       46 DUPCLOSURE                       R6 K13 [PROTO_0]
       47 DUPCLOSURE                       R7 K14 [PROTO_1]
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R5
       50 CAPTURE                          VAL R4
       51 DUPCLOSURE                       R8 K15 [PROTO_2]
       52 CAPTURE                          VAL R7
       53 CAPTURE                          VAL R2
       54 DUPTABLE                         R9 K19 [{"fromData", "fromInstance", "dummyRow"}]
       55 SETTABLEKS                       R6 R9 K16 ["fromData"]
       57 SETTABLEKS                       R7 R9 K17 ["fromInstance"]
       59 SETTABLEKS                       R8 R9 K18 ["dummyRow"]
       61 RETURN                           R9 1
