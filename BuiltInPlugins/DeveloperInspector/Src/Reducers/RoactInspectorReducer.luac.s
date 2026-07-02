PROTO_0:
        0 DUPTABLE                         R0 K1 [{"Children"}]
        1 DUPTABLE                         R1 K5 [{"props", "state", "_context"}]
        2 DUPTABLE                         R2 K8 [{["Name"] = "props", ["Path"], [3]}]
        3 NEWTABLE                         R3 0 1
        5 LOADK                            R4 K2 ["props"]
        6 SETLIST                          R3 R4 1 [1]
        8 SETTABLEKS                       R3 R2 K7 ["Path"]
       10 NEWTABLE                         R3 0 0
       12 SETTABLEKS                       R3 R2 K0 ["Children"]
       14 SETTABLEKS                       R2 R1 K2 ["props"]
       16 DUPTABLE                         R2 K9 [{["Name"] = "state", ["Path"], [3]}]
       17 NEWTABLE                         R3 0 1
       19 LOADK                            R4 K3 ["state"]
       20 SETLIST                          R3 R4 1 [1]
       22 SETTABLEKS                       R3 R2 K7 ["Path"]
       24 NEWTABLE                         R3 0 0
       26 SETTABLEKS                       R3 R2 K0 ["Children"]
       28 SETTABLEKS                       R2 R1 K3 ["state"]
       30 DUPTABLE                         R2 K10 [{["Name"] = "_context", ["Path"], [3]}]
       31 NEWTABLE                         R3 0 1
       33 LOADK                            R4 K4 ["_context"]
       34 SETLIST                          R3 R4 1 [1]
       36 SETTABLEKS                       R3 R2 K7 ["Path"]
       38 NEWTABLE                         R3 0 0
       40 SETTABLEKS                       R3 R2 K0 ["Children"]
       42 SETTABLEKS                       R2 R1 K4 ["_context"]
       44 SETTABLEKS                       R1 R0 K0 ["Children"]
       46 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K19 [{[1], ["flashInstances"], ["selectedInstances"], ["expandedInstances"], ["nodes"], ["selectedPath"], ["selectedNodeIndex"] = 0, ["fields"], ["selectedFields"], ["expandedFields"], ["isPicking"] = False, ["profileData"], ["profileSearchTerm"] = "", ["profileFilter"], ["profileComponents"], ["profileEvents"]}]
        1 NEWTABLE                         R1 0 0
        3 SETTABLEKS                       R1 R0 K0 ["rootInstance"]
        5 NEWTABLE                         R1 0 0
        7 SETTABLEKS                       R1 R0 K1 ["flashInstances"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["selectedInstances"]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K3 ["expandedInstances"]
       17 NEWTABLE                         R1 0 0
       19 SETTABLEKS                       R1 R0 K4 ["nodes"]
       21 NEWTABLE                         R1 0 0
       23 SETTABLEKS                       R1 R0 K5 ["selectedPath"]
       25 GETUPVAL                         R1 0
       26 CALL                             R1 0 1
       27 SETTABLEKS                       R1 R0 K8 ["fields"]
       29 NEWTABLE                         R1 0 0
       31 SETTABLEKS                       R1 R0 K9 ["selectedFields"]
       33 NEWTABLE                         R1 0 0
       35 SETTABLEKS                       R1 R0 K10 ["expandedFields"]
       37 DUPTABLE                         R1 K24 [{["eventCount"] = 0, ["instanceEventCount"] = 0, ["rowCount"] = 0, ["cached"] = False}]
       38 SETTABLEKS                       R1 R0 K13 ["profileData"]
       40 NEWTABLE                         R1 0 0
       42 SETTABLEKS                       R1 R0 K16 ["profileFilter"]
       44 DUPTABLE                         R1 K33 [{["pageRows"], ["sortIndex"] = , ["sortOrder"] = , ["pageSize"] = 1, ["pageIndex"] = 1, ["selectedRow"] = }]
       45 NEWTABLE                         R2 0 0
       47 SETTABLEKS                       R2 R1 K25 ["pageRows"]
       49 SETTABLEKS                       R1 R0 K17 ["profileComponents"]
       51 DUPTABLE                         R1 K34 [{["pageRows"], ["sortIndex"] = , ["sortOrder"] = , ["pageSize"] = 1, ["pageIndex"] = 1}]
       52 NEWTABLE                         R2 0 0
       54 SETTABLEKS                       R2 R1 K25 ["pageRows"]
       56 SETTABLEKS                       R1 R0 K18 ["profileEvents"]
       58 RETURN                           R0 1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 MOVE                             R4 R1
        3 DUPTABLE                         R5 K1 [{"profileData"}]
        4 GETUPVAL                         R6 0
        5 GETTABLEKS                       R7 R0 K0 ["profileData"]
        7 DUPTABLE                         R8 K4 [{["cached"] = False}]
        8 CALL                             R6 2 1
        9 SETTABLEKS                       R6 R5 K0 ["profileData"]
       11 CALL                             R2 3 -1
       12 RETURN                           R2 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 RETURN                           R2 1

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["path"]
        3 GETTABLEKS                       R4 R0 K1 ["selectedPath"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+9]
        7 GETUPVAL                         R2 1
        8 MOVE                             R3 R0
        9 DUPTABLE                         R4 K3 [{"nodes"}]
       10 GETTABLEKS                       R5 R1 K4 ["branch"]
       12 SETTABLEKS                       R5 R4 K2 ["nodes"]
       14 CALL                             R2 2 -1
       15 RETURN                           R2 -1
       16 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K4 [{"selectedNodeIndex", "fields", "selectedFields", "expandedFields"}]
        3 GETTABLEKS                       R5 R1 K5 ["nodeIndex"]
        5 SETTABLEKS                       R5 R4 K0 ["selectedNodeIndex"]
        7 GETUPVAL                         R5 1
        8 CALL                             R5 0 1
        9 SETTABLEKS                       R5 R4 K1 ["fields"]
       11 NEWTABLE                         R5 0 0
       13 SETTABLEKS                       R5 R4 K2 ["selectedFields"]
       15 NEWTABLE                         R5 0 0
       17 SETTABLEKS                       R5 R4 K3 ["expandedFields"]
       19 CALL                             R2 2 -1
       20 RETURN                           R2 -1

PROTO_6:
        0 GETTABLEKS                       R3 R0 K0 ["time"]
        2 GETIMPORT                        R5 K4 [os.clock]
        4 CALL                             R5 0 1
        5 SUBK                             R4 R5 K1 [1]
        6 JUMPIFLT                         R4 R3 ; [+2]
        8 LOADB                            R2 0 +1
        9 LOADB                            R2 1
       10 RETURN                           R2 1

PROTO_7:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R4 R4 K0 ["path"]
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_8:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R0 K0 ["flashInstances"]
        3 DUPCLOSURE                       R4 K1 [PROTO_6]
        4 CALL                             R2 2 1
        5 GETTABLEKS                       R3 R1 K2 ["updatedIndexes"]
        7 JUMPIFNOT                        R3 ; [+41]
        8 GETTABLEKS                       R4 R1 K2 ["updatedIndexes"]
       10 LENGTH                           R3 R4
       11 LOADN                            R4 0
       12 JUMPIFNOTLT                      R4 R3 ; [+36]
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R2
       16 NEWCLOSURE                       R5 P1
       17 CAPTURE                          UPVAL U2
       18 CAPTURE                          VAL R1
       19 CALL                             R3 2 1
       20 GETUPVAL                         R4 3
       21 GETTABLEKS                       R5 R1 K2 ["updatedIndexes"]
       23 CALL                             R4 1 1
       24 JUMPIFNOT                        R3 ; [+13]
       25 GETTABLEKS                       R5 R3 K3 ["heat"]
       27 ADDK                             R5 R5 K4 [1]
       28 SETTABLEKS                       R5 R3 K3 ["heat"]
       30 GETIMPORT                        R5 K7 [os.clock]
       32 CALL                             R5 0 1
       33 SETTABLEKS                       R5 R3 K8 ["time"]
       35 SETTABLEKS                       R4 R3 K9 ["indexSet"]
       37 JUMP                             ; [+11]
       38 GETTABLEKS                       R5 R1 K10 ["path"]
       40 DUPTABLE                         R6 K12 [{["time"], ["heat"] = 0, ["indexSet"]}]
       41 GETIMPORT                        R7 K7 [os.clock]
       43 CALL                             R7 0 1
       44 SETTABLEKS                       R7 R6 K8 ["time"]
       46 SETTABLEKS                       R4 R6 K9 ["indexSet"]
       48 SETTABLE                         R6 R2 R5
       49 GETUPVAL                         R3 4
       50 DUPTABLE                         R4 K17 [{"root", "selected", "expanded", "children", "path"}]
       51 GETTABLEKS                       R5 R0 K18 ["rootInstance"]
       53 SETTABLEKS                       R5 R4 K13 ["root"]
       55 GETTABLEKS                       R5 R0 K19 ["selectedInstances"]
       57 SETTABLEKS                       R5 R4 K14 ["selected"]
       59 GETTABLEKS                       R5 R0 K20 ["expandedInstances"]
       61 SETTABLEKS                       R5 R4 K15 ["expanded"]
       63 GETTABLEKS                       R5 R1 K16 ["children"]
       65 SETTABLEKS                       R5 R4 K16 ["children"]
       67 GETTABLEKS                       R5 R1 K10 ["path"]
       69 SETTABLEKS                       R5 R4 K10 ["path"]
       71 CALL                             R3 1 1
       72 GETUPVAL                         R4 5
       73 MOVE                             R5 R0
       74 DUPTABLE                         R6 K21 [{"rootInstance", "selectedInstances", "expandedInstances", "flashInstances"}]
       75 GETTABLEKS                       R7 R3 K13 ["root"]
       77 SETTABLEKS                       R7 R6 K18 ["rootInstance"]
       79 GETTABLEKS                       R7 R3 K14 ["selected"]
       81 SETTABLEKS                       R7 R6 K19 ["selectedInstances"]
       83 GETTABLEKS                       R7 R3 K15 ["expanded"]
       85 SETTABLEKS                       R7 R6 K20 ["expandedInstances"]
       87 SETTABLEKS                       R2 R6 K0 ["flashInstances"]
       89 CALL                             R4 2 -1
       90 RETURN                           R4 -1

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R4 R1 K0 ["change"]
        3 CALL                             R3 1 1
        4 GETTABLEN                        R2 R3 1
        5 GETUPVAL                         R3 1
        6 MOVE                             R4 R0
        7 DUPTABLE                         R5 K9 [{["fields"], ["expandedFields"], ["selectedFields"], ["selectedInstances"], ["selectedPath"], ["nodes"], ["selectedNodeIndex"] = 0}]
        8 GETUPVAL                         R6 2
        9 CALL                             R6 0 1
       10 SETTABLEKS                       R6 R5 K1 ["fields"]
       12 NEWTABLE                         R6 0 0
       14 SETTABLEKS                       R6 R5 K2 ["expandedFields"]
       16 NEWTABLE                         R6 0 0
       18 SETTABLEKS                       R6 R5 K3 ["selectedFields"]
       20 GETTABLEKS                       R6 R1 K0 ["change"]
       22 SETTABLEKS                       R6 R5 K4 ["selectedInstances"]
       24 MOVE                             R6 R2
       25 JUMPIFNOT                        R6 ; [+2]
       26 GETTABLEKS                       R6 R2 K10 ["Path"]
       28 SETTABLEKS                       R6 R5 K5 ["selectedPath"]
       30 NEWTABLE                         R6 0 0
       32 SETTABLEKS                       R6 R5 K6 ["nodes"]
       34 CALL                             R3 2 -1
       35 RETURN                           R3 -1

PROTO_10:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"expandedInstances"}]
        3 GETTABLEKS                       R5 R1 K2 ["change"]
        5 SETTABLEKS                       R5 R4 K0 ["expandedInstances"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+15]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["Children"]
        5 JUMPIFNOT                        R1 ; [+4]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["Children"]
        9 GETTABLE                         R1 R2 R0
       10 SETUPVAL                         R1 0
       11 GETUPVAL                         R1 0
       12 JUMPIFNOT                        R1 ; [+4]
       13 GETUPVAL                         R1 1
       14 GETUPVAL                         R2 0
       15 LOADB                            R3 1
       16 SETTABLE                         R3 R1 R2
       17 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R3 R0 K0 ["rootInstance"]
        4 GETUPVAL                         R4 0
        5 GETTABLEKS                       R5 R1 K1 ["path"]
        7 NEWCLOSURE                       R6 P0
        8 CAPTURE                          REF R3
        9 CAPTURE                          VAL R2
       10 CALL                             R4 2 0
       11 NEWTABLE                         R4 0 0
       13 JUMPIFNOT                        R3 ; [+2]
       14 LOADB                            R5 1
       15 SETTABLE                         R5 R4 R3
       16 GETUPVAL                         R5 1
       17 MOVE                             R6 R0
       18 DUPTABLE                         R7 K7 [{["selectedPath"], ["selectedInstances"], ["expandedInstances"], ["isPicking"] = False}]
       19 GETTABLEKS                       R8 R1 K1 ["path"]
       21 SETTABLEKS                       R8 R7 K2 ["selectedPath"]
       23 SETTABLEKS                       R4 R7 K3 ["selectedInstances"]
       25 GETUPVAL                         R8 1
       26 GETTABLEKS                       R9 R0 K4 ["expandedInstances"]
       28 MOVE                             R10 R2
       29 CALL                             R8 2 1
       30 SETTABLEKS                       R8 R7 K4 ["expandedInstances"]
       32 CALL                             R5 2 -1
       33 CLOSEUPVALS                      R3
       34 RETURN                           R5 -1

PROTO_13:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R3 R1 K0 ["path"]
        3 GETTABLEKS                       R4 R0 K1 ["selectedPath"]
        5 CALL                             R2 2 1
        6 JUMPIFNOT                        R2 ; [+8]
        7 GETTABLEKS                       R3 R1 K2 ["nodeIndex"]
        9 GETTABLEKS                       R4 R0 K3 ["selectedNodeIndex"]
       11 JUMPIFEQ                         R3 R4 ; [+2]
       13 LOADB                            R2 0 +1
       14 LOADB                            R2 1
       15 JUMPIF                           R2 ; [+1]
       16 RETURN                           R0 1
       17 GETUPVAL                         R3 1
       18 DUPTABLE                         R4 K8 [{"root", "selected", "expanded", "children", "path"}]
       19 GETTABLEKS                       R5 R0 K9 ["fields"]
       21 SETTABLEKS                       R5 R4 K4 ["root"]
       23 GETTABLEKS                       R5 R0 K10 ["selectedFields"]
       25 SETTABLEKS                       R5 R4 K5 ["selected"]
       27 GETTABLEKS                       R5 R0 K11 ["expandedFields"]
       29 SETTABLEKS                       R5 R4 K6 ["expanded"]
       31 GETTABLEKS                       R5 R1 K9 ["fields"]
       33 SETTABLEKS                       R5 R4 K7 ["children"]
       35 GETTABLEKS                       R5 R1 K12 ["fieldPath"]
       37 SETTABLEKS                       R5 R4 K0 ["path"]
       39 CALL                             R3 1 1
       40 GETUPVAL                         R4 2
       41 MOVE                             R5 R0
       42 DUPTABLE                         R6 K13 [{"fields", "selectedFields", "expandedFields"}]
       43 GETTABLEKS                       R7 R3 K4 ["root"]
       45 SETTABLEKS                       R7 R6 K9 ["fields"]
       47 GETTABLEKS                       R7 R3 K5 ["selected"]
       49 SETTABLEKS                       R7 R6 K10 ["selectedFields"]
       51 GETTABLEKS                       R7 R3 K6 ["expanded"]
       53 SETTABLEKS                       R7 R6 K11 ["expandedFields"]
       55 CALL                             R4 2 -1
       56 RETURN                           R4 -1

PROTO_14:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"selectedFields"}]
        3 GETTABLEKS                       R5 R1 K2 ["change"]
        5 SETTABLEKS                       R5 R4 K0 ["selectedFields"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_15:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"expandedFields"}]
        3 GETTABLEKS                       R5 R1 K2 ["change"]
        5 SETTABLEKS                       R5 R4 K0 ["expandedFields"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_16:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"isPicking"}]
        3 GETTABLEKS                       R5 R1 K0 ["isPicking"]
        5 SETTABLEKS                       R5 R4 K0 ["isPicking"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_17:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"isProfiling"}]
        3 GETTABLEKS                       R5 R1 K0 ["isProfiling"]
        5 SETTABLEKS                       R5 R4 K0 ["isProfiling"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R0
        4 DUPTABLE                         R4 K3 [{"profileData", "profileComponents", "profileEvents"}]
        5 GETTABLEKS                       R5 R1 K0 ["profileData"]
        7 SETTABLEKS                       R5 R4 K0 ["profileData"]
        9 GETTABLEKS                       R5 R1 K1 ["profileComponents"]
       11 SETTABLEKS                       R5 R4 K1 ["profileComponents"]
       13 GETTABLEKS                       R5 R1 K2 ["profileEvents"]
       15 SETTABLEKS                       R5 R4 K2 ["profileEvents"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_19:
        0 GETTABLEKS                       R2 R0 K0 ["profileData"]
        2 GETTABLEKS                       R2 R2 K1 ["cached"]
        4 JUMPIFNOT                        R2 ; [+11]
        5 GETTABLEKS                       R2 R1 K2 ["data"]
        7 GETTABLEKS                       R2 R2 K3 ["eventCount"]
        9 GETTABLEKS                       R3 R0 K0 ["profileData"]
       11 GETTABLEKS                       R3 R3 K3 ["eventCount"]
       13 JUMPIFNOTEQ                      R2 R3 ; [+2]
       15 RETURN                           R0 1
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R3 R0 K0 ["profileData"]
       19 DUPTABLE                         R4 K7 [{["eventCount"], ["rowCount"], ["instanceEventCount"], ["cached"] = True}]
       20 GETTABLEKS                       R5 R1 K2 ["data"]
       22 GETTABLEKS                       R5 R5 K3 ["eventCount"]
       24 SETTABLEKS                       R5 R4 K3 ["eventCount"]
       26 GETTABLEKS                       R5 R1 K2 ["data"]
       28 GETTABLEKS                       R5 R5 K4 ["rowCount"]
       30 SETTABLEKS                       R5 R4 K4 ["rowCount"]
       32 GETTABLEKS                       R5 R1 K2 ["data"]
       34 GETTABLEKS                       R5 R5 K5 ["instanceEventCount"]
       36 SETTABLEKS                       R5 R4 K5 ["instanceEventCount"]
       38 CALL                             R2 2 1
       39 GETUPVAL                         R3 0
       40 MOVE                             R4 R0
       41 DUPTABLE                         R5 K10 [{"profileData", "profileComponents", "profileEvents"}]
       42 SETTABLEKS                       R2 R5 K0 ["profileData"]
       44 GETUPVAL                         R6 0
       45 GETTABLEKS                       R7 R0 K8 ["profileComponents"]
       47 DUPTABLE                         R8 K12 [{"rowCount", "pageRows"}]
       48 GETTABLEKS                       R9 R1 K2 ["data"]
       50 GETTABLEKS                       R9 R9 K4 ["rowCount"]
       52 SETTABLEKS                       R9 R8 K4 ["rowCount"]
       54 GETTABLEKS                       R9 R1 K2 ["data"]
       56 GETTABLEKS                       R9 R9 K13 ["componentRows"]
       58 SETTABLEKS                       R9 R8 K11 ["pageRows"]
       60 CALL                             R6 2 1
       61 SETTABLEKS                       R6 R5 K8 ["profileComponents"]
       63 GETUPVAL                         R6 0
       64 GETTABLEKS                       R7 R0 K9 ["profileEvents"]
       66 DUPTABLE                         R8 K14 [{"pageRows"}]
       67 GETTABLEKS                       R9 R1 K2 ["data"]
       69 GETTABLEKS                       R9 R9 K15 ["eventRows"]
       71 SETTABLEKS                       R9 R8 K11 ["pageRows"]
       73 CALL                             R6 2 1
       74 SETTABLEKS                       R6 R5 K9 ["profileEvents"]
       76 CALL                             R3 2 -1
       77 RETURN                           R3 -1

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["tableName"]
        3 GETTABLE                         R3 R0 R4
        4 DUPTABLE                         R4 K3 [{"sortIndex", "sortOrder"}]
        5 GETTABLEKS                       R5 R1 K1 ["sortIndex"]
        7 SETTABLEKS                       R5 R4 K1 ["sortIndex"]
        9 GETTABLEKS                       R5 R1 K2 ["sortOrder"]
       11 SETTABLEKS                       R5 R4 K2 ["sortOrder"]
       13 CALL                             R2 2 1
       14 GETUPVAL                         R3 1
       15 MOVE                             R4 R0
       16 NEWTABLE                         R5 1 0
       18 GETTABLEKS                       R6 R1 K0 ["tableName"]
       20 SETTABLE                         R2 R5 R6
       21 CALL                             R3 2 -1
       22 RETURN                           R3 -1

PROTO_21:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["tableName"]
        3 GETTABLE                         R3 R0 R4
        4 DUPTABLE                         R4 K2 [{"pageIndex"}]
        5 GETTABLEKS                       R5 R1 K1 ["pageIndex"]
        7 SETTABLEKS                       R5 R4 K1 ["pageIndex"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R0
       12 NEWTABLE                         R5 1 0
       14 GETTABLEKS                       R6 R1 K0 ["tableName"]
       16 SETTABLE                         R2 R5 R6
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_22:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["tableName"]
        3 GETTABLE                         R3 R0 R4
        4 DUPTABLE                         R4 K2 [{"pageSize"}]
        5 GETTABLEKS                       R5 R1 K1 ["pageSize"]
        7 SETTABLEKS                       R5 R4 K1 ["pageSize"]
        9 CALL                             R2 2 1
       10 GETUPVAL                         R3 1
       11 MOVE                             R4 R0
       12 NEWTABLE                         R5 1 0
       14 GETTABLEKS                       R6 R1 K0 ["tableName"]
       16 SETTABLE                         R2 R5 R6
       17 CALL                             R3 2 -1
       18 RETURN                           R3 -1

PROTO_23:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"profileEvents", "profileComponents"}]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R6 R0 K0 ["profileEvents"]
        6 DUPTABLE                         R7 K5 [{["pageIndex"] = 1}]
        7 CALL                             R5 2 1
        8 SETTABLEKS                       R5 R4 K0 ["profileEvents"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R6 R0 K1 ["profileComponents"]
       13 DUPTABLE                         R7 K7 [{"selectedRow"}]
       14 GETTABLEKS                       R8 R1 K6 ["selectedRow"]
       16 SETTABLEKS                       R8 R7 K6 ["selectedRow"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K1 ["profileComponents"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

PROTO_24:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"profileSearchTerm"}]
        3 GETTABLEKS                       R5 R1 K2 ["searchTerm"]
        5 SETTABLEKS                       R5 R4 K0 ["profileSearchTerm"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_25:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K1 [{"profileFilter"}]
        3 GETTABLEKS                       R5 R1 K2 ["filter"]
        5 SETTABLEKS                       R5 R4 K0 ["profileFilter"]
        7 CALL                             R2 2 -1
        8 RETURN                           R2 -1

PROTO_26:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 DUPTABLE                         R4 K2 [{"profileEvents", "profileComponents"}]
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R6 R0 K0 ["profileEvents"]
        6 DUPTABLE                         R7 K5 [{["pageIndex"] = 1}]
        7 CALL                             R5 2 1
        8 SETTABLEKS                       R5 R4 K0 ["profileEvents"]
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R6 R0 K1 ["profileComponents"]
       13 DUPTABLE                         R7 K7 [{"selectedRow"}]
       14 GETTABLEKS                       R8 R1 K6 ["selectedRow"]
       16 SETTABLEKS                       R8 R7 K6 ["selectedRow"]
       18 CALL                             R5 2 1
       19 SETTABLEKS                       R5 R4 K1 ["profileComponents"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["Packages"]
       13 GETTABLEKS                       R2 R2 K6 ["Rodux"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K4 [require]
       18 GETTABLEKS                       R3 R0 K5 ["Packages"]
       20 GETTABLEKS                       R3 R3 K7 ["Dash"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K8 ["collectSet"]
       25 GETTABLEKS                       R4 R2 K9 ["forEach"]
       27 GETTABLEKS                       R5 R2 K10 ["pick"]
       29 GETTABLEKS                       R6 R2 K11 ["join"]
       31 GETTABLEKS                       R7 R2 K12 ["joinDeep"]
       33 GETTABLEKS                       R8 R2 K13 ["keys"]
       35 GETTABLEKS                       R9 R2 K14 ["find"]
       37 GETTABLEKS                       R10 R2 K15 ["shallowEqual"]
       39 GETTABLEKS                       R11 R0 K16 ["Src"]
       41 GETTABLEKS                       R11 R11 K17 ["Actions"]
       43 GETIMPORT                        R12 K4 [require]
       45 GETTABLEKS                       R13 R11 K18 ["RoactInspector"]
       47 GETTABLEKS                       R13 R13 K19 ["UpdateInstances"]
       49 CALL                             R12 1 1
       50 GETIMPORT                        R13 K4 [require]
       52 GETTABLEKS                       R14 R11 K18 ["RoactInspector"]
       54 GETTABLEKS                       R14 R14 K20 ["SelectInstance"]
       56 CALL                             R13 1 1
       57 GETIMPORT                        R14 K4 [require]
       59 GETTABLEKS                       R15 R11 K18 ["RoactInspector"]
       61 GETTABLEKS                       R15 R15 K21 ["ToggleInstance"]
       63 CALL                             R14 1 1
       64 GETIMPORT                        R15 K4 [require]
       66 GETTABLEKS                       R16 R11 K18 ["RoactInspector"]
       68 GETTABLEKS                       R16 R16 K22 ["SelectNode"]
       70 CALL                             R15 1 1
       71 GETIMPORT                        R16 K4 [require]
       73 GETTABLEKS                       R17 R11 K18 ["RoactInspector"]
       75 GETTABLEKS                       R17 R17 K23 ["PickInstance"]
       77 CALL                             R16 1 1
       78 GETIMPORT                        R17 K4 [require]
       80 GETTABLEKS                       R18 R11 K18 ["RoactInspector"]
       82 GETTABLEKS                       R18 R18 K24 ["UpdateBranch"]
       84 CALL                             R17 1 1
       85 GETIMPORT                        R18 K4 [require]
       87 GETTABLEKS                       R19 R11 K18 ["RoactInspector"]
       89 GETTABLEKS                       R19 R19 K25 ["UpdateFields"]
       91 CALL                             R18 1 1
       92 GETIMPORT                        R19 K4 [require]
       94 GETTABLEKS                       R20 R11 K18 ["RoactInspector"]
       96 GETTABLEKS                       R20 R20 K26 ["Reset"]
       98 CALL                             R19 1 1
       99 GETIMPORT                        R20 K4 [require]
      101 GETTABLEKS                       R21 R11 K18 ["RoactInspector"]
      103 GETTABLEKS                       R21 R21 K27 ["SelectField"]
      105 CALL                             R20 1 1
      106 GETIMPORT                        R21 K4 [require]
      108 GETTABLEKS                       R22 R11 K18 ["RoactInspector"]
      110 GETTABLEKS                       R22 R22 K28 ["ToggleField"]
      112 CALL                             R21 1 1
      113 GETIMPORT                        R22 K4 [require]
      115 GETTABLEKS                       R23 R11 K18 ["RoactInspector"]
      117 GETTABLEKS                       R23 R23 K29 ["SetPicking"]
      119 CALL                             R22 1 1
      120 GETIMPORT                        R23 K4 [require]
      122 GETTABLEKS                       R24 R11 K18 ["RoactInspector"]
      124 GETTABLEKS                       R24 R24 K30 ["SetProfiling"]
      126 CALL                             R23 1 1
      127 GETIMPORT                        R24 K4 [require]
      129 GETTABLEKS                       R25 R11 K18 ["RoactInspector"]
      131 GETTABLEKS                       R25 R25 K31 ["ClearProfileData"]
      133 CALL                             R24 1 1
      134 GETIMPORT                        R25 K4 [require]
      136 GETTABLEKS                       R26 R11 K18 ["RoactInspector"]
      138 GETTABLEKS                       R26 R26 K32 ["SortProfileData"]
      140 CALL                             R25 1 1
      141 GETIMPORT                        R26 K4 [require]
      143 GETTABLEKS                       R27 R11 K18 ["RoactInspector"]
      145 GETTABLEKS                       R27 R27 K33 ["UpdateProfileData"]
      147 CALL                             R26 1 1
      148 GETIMPORT                        R27 K4 [require]
      150 GETTABLEKS                       R28 R11 K18 ["RoactInspector"]
      152 GETTABLEKS                       R28 R28 K34 ["SetProfilePageIndex"]
      154 CALL                             R27 1 1
      155 GETIMPORT                        R28 K4 [require]
      157 GETTABLEKS                       R29 R11 K18 ["RoactInspector"]
      159 GETTABLEKS                       R29 R29 K35 ["SetProfileFilter"]
      161 CALL                             R28 1 1
      162 GETIMPORT                        R29 K4 [require]
      164 GETTABLEKS                       R30 R11 K18 ["RoactInspector"]
      166 GETTABLEKS                       R30 R30 K36 ["SetProfileSearchTerm"]
      168 CALL                             R29 1 1
      169 GETIMPORT                        R30 K4 [require]
      171 GETTABLEKS                       R31 R11 K18 ["RoactInspector"]
      173 GETTABLEKS                       R31 R31 K37 ["SetProfilePageSize"]
      175 CALL                             R30 1 1
      176 GETIMPORT                        R31 K4 [require]
      178 GETTABLEKS                       R32 R11 K18 ["RoactInspector"]
      180 GETTABLEKS                       R32 R32 K38 ["SelectProfileRow"]
      182 CALL                             R31 1 1
      183 GETIMPORT                        R32 K4 [require]
      185 GETTABLEKS                       R33 R0 K16 ["Src"]
      187 GETTABLEKS                       R33 R33 K39 ["Util"]
      189 GETTABLEKS                       R33 R33 K40 ["updateTree"]
      191 CALL                             R32 1 1
      192 DUPCLOSURE                       R33 K41 [PROTO_0]
      193 DUPCLOSURE                       R34 K42 [PROTO_1]
      194 CAPTURE                          VAL R33
      195 DUPCLOSURE                       R35 K43 [PROTO_2]
      196 CAPTURE                          VAL R6
      197 GETTABLEKS                       R36 R1 K44 ["createReducer"]
      199 MOVE                             R37 R34
      200 CALL                             R37 0 1
      201 NEWTABLE                         R38 32 0
      203 GETTABLEKS                       R39 R19 K45 ["name"]
      205 DUPCLOSURE                       R40 K46 [PROTO_3]
      206 CAPTURE                          VAL R34
      207 SETTABLE                         R40 R38 R39
      208 GETTABLEKS                       R39 R17 K45 ["name"]
      210 DUPCLOSURE                       R40 K47 [PROTO_4]
      211 CAPTURE                          VAL R10
      212 CAPTURE                          VAL R6
      213 SETTABLE                         R40 R38 R39
      214 GETTABLEKS                       R39 R15 K45 ["name"]
      216 DUPCLOSURE                       R40 K48 [PROTO_5]
      217 CAPTURE                          VAL R6
      218 CAPTURE                          VAL R33
      219 SETTABLE                         R40 R38 R39
      220 GETTABLEKS                       R39 R12 K45 ["name"]
      222 DUPCLOSURE                       R40 K49 [PROTO_8]
      223 CAPTURE                          VAL R5
      224 CAPTURE                          VAL R9
      225 CAPTURE                          VAL R10
      226 CAPTURE                          VAL R3
      227 CAPTURE                          VAL R32
      228 CAPTURE                          VAL R6
      229 SETTABLE                         R40 R38 R39
      230 GETTABLEKS                       R39 R13 K45 ["name"]
      232 DUPCLOSURE                       R40 K50 [PROTO_9]
      233 CAPTURE                          VAL R8
      234 CAPTURE                          VAL R6
      235 CAPTURE                          VAL R33
      236 SETTABLE                         R40 R38 R39
      237 GETTABLEKS                       R39 R14 K45 ["name"]
      239 DUPCLOSURE                       R40 K51 [PROTO_10]
      240 CAPTURE                          VAL R7
      241 SETTABLE                         R40 R38 R39
      242 GETTABLEKS                       R39 R16 K45 ["name"]
      244 DUPCLOSURE                       R40 K52 [PROTO_12]
      245 CAPTURE                          VAL R4
      246 CAPTURE                          VAL R6
      247 SETTABLE                         R40 R38 R39
      248 GETTABLEKS                       R39 R18 K45 ["name"]
      250 DUPCLOSURE                       R40 K53 [PROTO_13]
      251 CAPTURE                          VAL R10
      252 CAPTURE                          VAL R32
      253 CAPTURE                          VAL R6
      254 SETTABLE                         R40 R38 R39
      255 GETTABLEKS                       R39 R20 K45 ["name"]
      257 DUPCLOSURE                       R40 K54 [PROTO_14]
      258 CAPTURE                          VAL R6
      259 SETTABLE                         R40 R38 R39
      260 GETTABLEKS                       R39 R21 K45 ["name"]
      262 DUPCLOSURE                       R40 K55 [PROTO_15]
      263 CAPTURE                          VAL R7
      264 SETTABLE                         R40 R38 R39
      265 GETTABLEKS                       R39 R22 K45 ["name"]
      267 DUPCLOSURE                       R40 K56 [PROTO_16]
      268 CAPTURE                          VAL R7
      269 SETTABLE                         R40 R38 R39
      270 GETTABLEKS                       R39 R23 K45 ["name"]
      272 DUPCLOSURE                       R40 K57 [PROTO_17]
      273 CAPTURE                          VAL R7
      274 SETTABLE                         R40 R38 R39
      275 GETTABLEKS                       R39 R24 K45 ["name"]
      277 DUPCLOSURE                       R40 K58 [PROTO_18]
      278 CAPTURE                          VAL R34
      279 CAPTURE                          VAL R6
      280 SETTABLE                         R40 R38 R39
      281 GETTABLEKS                       R39 R26 K45 ["name"]
      283 DUPCLOSURE                       R40 K59 [PROTO_19]
      284 CAPTURE                          VAL R6
      285 SETTABLE                         R40 R38 R39
      286 GETTABLEKS                       R39 R25 K45 ["name"]
      288 DUPCLOSURE                       R40 K60 [PROTO_20]
      289 CAPTURE                          VAL R6
      290 CAPTURE                          VAL R35
      291 SETTABLE                         R40 R38 R39
      292 GETTABLEKS                       R39 R27 K45 ["name"]
      294 DUPCLOSURE                       R40 K61 [PROTO_21]
      295 CAPTURE                          VAL R6
      296 CAPTURE                          VAL R35
      297 SETTABLE                         R40 R38 R39
      298 GETTABLEKS                       R39 R30 K45 ["name"]
      300 DUPCLOSURE                       R40 K62 [PROTO_22]
      301 CAPTURE                          VAL R6
      302 CAPTURE                          VAL R35
      303 SETTABLE                         R40 R38 R39
      304 GETTABLEKS                       R39 R31 K45 ["name"]
      306 DUPCLOSURE                       R40 K63 [PROTO_23]
      307 CAPTURE                          VAL R35
      308 CAPTURE                          VAL R6
      309 SETTABLE                         R40 R38 R39
      310 GETTABLEKS                       R39 R29 K45 ["name"]
      312 DUPCLOSURE                       R40 K64 [PROTO_24]
      313 CAPTURE                          VAL R35
      314 SETTABLE                         R40 R38 R39
      315 GETTABLEKS                       R39 R28 K45 ["name"]
      317 DUPCLOSURE                       R40 K65 [PROTO_25]
      318 CAPTURE                          VAL R35
      319 SETTABLE                         R40 R38 R39
      320 GETTABLEKS                       R39 R31 K45 ["name"]
      322 DUPCLOSURE                       R40 K66 [PROTO_26]
      323 CAPTURE                          VAL R35
      324 CAPTURE                          VAL R6
      325 SETTABLE                         R40 R38 R39
      326 CALL                             R36 2 -1
      327 RETURN                           R36 -1
