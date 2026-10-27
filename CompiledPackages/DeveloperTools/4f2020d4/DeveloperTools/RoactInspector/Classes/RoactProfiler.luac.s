PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
        3 GETIMPORT                        R2 K1 [unpack]
        5 CALL                             R2 1 -1
        6 NAMECALL                         R0 R0 K2 ["__resolveUpdateHidden"]
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_1:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [debug.traceback]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K5 [os.clock]
        6 CALL                             R2 0 1
        7 NEWTABLE                         R3 0 0
        9 GETVARARGS                       R4 -1
       10 SETLIST                          R3 R4 -1 [1]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R5 R4 K6 ["indent"]
       15 ADDK                             R5 R5 K7 [1]
       16 SETTABLEKS                       R5 R4 K6 ["indent"]
       18 GETTABLEKS                       R4 R0 K8 ["props"]
       20 GETTABLEKS                       R5 R0 K9 ["state"]
       22 GETIMPORT                        R6 K11 [pcall]
       24 NEWCLOSURE                       R7 P0
       25 CAPTURE                          VAL R0
       26 CAPTURE                          VAL R3
       27 CALL                             R6 1 2
       28 JUMPIFNOT                        R6 ; [+88]
       29 JUMPIFNOT                        R7 ; [+87]
       30 GETTABLEKS                       R9 R0 K12 ["shouldUpdate"]
       32 GETUPVAL                         R10 0
       33 GETTABLEKS                       R10 R10 K13 ["roact"]
       35 GETTABLEKS                       R10 R10 K14 ["PureComponent"]
       37 GETTABLEKS                       R10 R10 K12 ["shouldUpdate"]
       39 JUMPIFEQ                         R9 R10 ; [+2]
       41 LOADB                            R8 0 +1
       42 LOADB                            R8 1
       43 GETTABLEKS                       R10 R0 K9 ["state"]
       45 JUMPIFNOTEQ                      R5 R10 ; [+2]
       47 LOADB                            R9 0 +1
       48 LOADB                            R9 1
       49 GETTABLEKS                       R11 R0 K8 ["props"]
       51 JUMPIFNOTEQ                      R4 R11 ; [+2]
       53 LOADB                            R10 0 +1
       54 LOADB                            R10 1
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R13 R13 K16 ["renderTimes"]
       58 GETUPVAL                         R14 0
       59 GETTABLEKS                       R14 R14 K6 ["indent"]
       61 GETTABLE                         R12 R13 R14
       62 ORK                              R11 R12 K15 [0]
       63 GETIMPORT                        R12 K5 [os.clock]
       65 CALL                             R12 0 1
       66 GETUPVAL                         R14 0
       67 GETTABLEKS                       R14 R14 K17 ["events"]
       69 DUPTABLE                         R15 K29 [{"instance", "depth", "renderTime", "startTime", "endTime", "updateTrace", "isPure", "oldState", "newState", "oldProps", "newProps"}]
       70 SETTABLEKS                       R0 R15 K18 ["instance"]
       72 GETUPVAL                         R16 0
       73 GETTABLEKS                       R16 R16 K6 ["indent"]
       75 SETTABLEKS                       R16 R15 K19 ["depth"]
       77 SETTABLEKS                       R11 R15 K20 ["renderTime"]
       79 SETTABLEKS                       R2 R15 K21 ["startTime"]
       81 SETTABLEKS                       R12 R15 K22 ["endTime"]
       83 SETTABLEKS                       R1 R15 K23 ["updateTrace"]
       85 SETTABLEKS                       R8 R15 K24 ["isPure"]
       87 JUMPIFNOT                        R9 ; [+2]
       88 MOVE                             R16 R5
       89 JUMPIF                           R16 ; [+1]
       90 LOADNIL                          R16
       91 SETTABLEKS                       R16 R15 K25 ["oldState"]
       93 JUMPIFNOT                        R9 ; [+3]
       94 GETTABLEKS                       R16 R0 K9 ["state"]
       96 JUMPIF                           R16 ; [+1]
       97 LOADNIL                          R16
       98 SETTABLEKS                       R16 R15 K26 ["newState"]
      100 JUMPIFNOT                        R10 ; [+2]
      101 MOVE                             R16 R4
      102 JUMPIF                           R16 ; [+1]
      103 LOADNIL                          R16
      104 SETTABLEKS                       R16 R15 K27 ["oldProps"]
      106 JUMPIFNOT                        R10 ; [+3]
      107 GETTABLEKS                       R16 R0 K8 ["props"]
      109 JUMPIF                           R16 ; [+1]
      110 LOADNIL                          R16
      111 SETTABLEKS                       R16 R15 K28 ["newProps"]
      113 FASTCALL2                        TABLE_INSERT R14 R15 ; [+2]
      115 GETUPVAL                         R13 1
      116 CALL                             R13 2 0
      117 GETUPVAL                         R8 0
      118 GETTABLEKS                       R8 R8 K16 ["renderTimes"]
      120 GETUPVAL                         R9 0
      121 GETTABLEKS                       R9 R9 K6 ["indent"]
      123 LOADNIL                          R10
      124 SETTABLE                         R10 R8 R9
      125 GETUPVAL                         R8 0
      126 GETTABLEKS                       R9 R8 K6 ["indent"]
      128 SUBK                             R9 R9 K7 [1]
      129 SETTABLEKS                       R9 R8 K6 ["indent"]
      131 JUMPIF                           R6 ; [+5]
      132 GETIMPORT                        R8 K31 [warn]
      134 LOADK                            R9 K32 ["Update error during profiling"]
      135 MOVE                             R10 R7
      136 CALL                             R8 2 0
      137 RETURN                           R7 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
        3 GETIMPORT                        R2 K1 [unpack]
        5 CALL                             R2 1 -1
        6 NAMECALL                         R0 R0 K2 ["__mountHidden"]
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_3:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 GETIMPORT                        R2 K5 [debug.traceback]
        6 CALL                             R2 0 1
        7 NEWTABLE                         R3 0 0
        9 GETVARARGS                       R4 -1
       10 SETLIST                          R3 R4 -1 [1]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R5 R4 K6 ["indent"]
       15 ADDK                             R5 R5 K7 [1]
       16 SETTABLEKS                       R5 R4 K6 ["indent"]
       18 GETIMPORT                        R4 K9 [pcall]
       20 NEWCLOSURE                       R5 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R3
       23 CALL                             R4 1 2
       24 JUMPIFNOT                        R4 ; [+34]
       25 GETUPVAL                         R8 0
       26 GETTABLEKS                       R8 R8 K11 ["renderTimes"]
       28 GETUPVAL                         R9 0
       29 GETTABLEKS                       R9 R9 K6 ["indent"]
       31 GETTABLE                         R7 R8 R9
       32 ORK                              R6 R7 K10 [0]
       33 GETIMPORT                        R7 K2 [os.clock]
       35 CALL                             R7 0 1
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R9 R9 K12 ["events"]
       39 DUPTABLE                         R10 K21 [{["depth"], ["instance"], ["renderTime"], ["startTime"], ["endTime"], ["isMount"] = True, ["updateTrace"]}]
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K6 ["indent"]
       43 SETTABLEKS                       R11 R10 K13 ["depth"]
       45 SETTABLEKS                       R0 R10 K14 ["instance"]
       47 SETTABLEKS                       R6 R10 K15 ["renderTime"]
       49 SETTABLEKS                       R1 R10 K16 ["startTime"]
       51 SETTABLEKS                       R7 R10 K17 ["endTime"]
       53 SETTABLEKS                       R2 R10 K20 ["updateTrace"]
       55 FASTCALL2                        TABLE_INSERT R9 R10 ; [+2]
       57 GETUPVAL                         R8 1
       58 CALL                             R8 2 0
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K11 ["renderTimes"]
       62 GETUPVAL                         R7 0
       63 GETTABLEKS                       R7 R7 K6 ["indent"]
       65 LOADNIL                          R8
       66 SETTABLE                         R8 R6 R7
       67 GETUPVAL                         R6 0
       68 GETTABLEKS                       R7 R6 K6 ["indent"]
       70 SUBK                             R7 R7 K7 [1]
       71 SETTABLEKS                       R7 R6 K6 ["indent"]
       73 JUMPIF                           R4 ; [+7]
       74 GETIMPORT                        R6 K23 [warn]
       76 LOADK                            R7 K24 ["Mount error during profiling"]
       77 MOVE                             R8 R5
       78 CALL                             R6 2 0
       79 LOADB                            R6 0
       80 RETURN                           R6 1
       81 RETURN                           R5 1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 1
        2 FASTCALL1                        TABLE_UNPACK R3 ; [+2]
        3 GETIMPORT                        R2 K1 [unpack]
        5 CALL                             R2 1 -1
        6 NAMECALL                         R0 R0 K2 ["__renderHidden"]
        8 CALL                             R0 -1 -1
        9 RETURN                           R0 -1

PROTO_5:
        0 PREPVARARGS                      1
        1 GETIMPORT                        R1 K2 [os.clock]
        3 CALL                             R1 0 1
        4 NEWTABLE                         R2 0 0
        6 GETVARARGS                       R3 -1
        7 SETLIST                          R2 R3 -1 [1]
        9 GETIMPORT                        R3 K4 [pcall]
       11 NEWCLOSURE                       R4 P0
       12 CAPTURE                          VAL R0
       13 CAPTURE                          VAL R2
       14 CALL                             R3 1 2
       15 JUMPIFNOT                        R3 ; [+21]
       16 GETIMPORT                        R7 K2 [os.clock]
       18 CALL                             R7 0 1
       19 SUB                              R6 R7 R1
       20 MULK                             R5 R6 K5 [1000]
       21 GETUPVAL                         R8 0
       22 GETTABLEKS                       R8 R8 K7 ["renderTimes"]
       24 GETUPVAL                         R9 0
       25 GETTABLEKS                       R9 R9 K8 ["indent"]
       27 GETTABLE                         R7 R8 R9
       28 ORK                              R6 R7 K6 [0]
       29 GETUPVAL                         R7 0
       30 GETTABLEKS                       R7 R7 K7 ["renderTimes"]
       32 GETUPVAL                         R8 0
       33 GETTABLEKS                       R8 R8 K8 ["indent"]
       35 ADD                              R9 R6 R5
       36 SETTABLE                         R9 R7 R8
       37 JUMPIF                           R3 ; [+7]
       38 GETIMPORT                        R5 K10 [warn]
       40 LOADK                            R6 K11 ["Render error during profiling"]
       41 MOVE                             R7 R4
       42 CALL                             R5 2 0
       43 LOADB                            R5 0
       44 RETURN                           R5 1
       45 RETURN                           R4 1

PROTO_6:
        0 DUPTABLE                         R4 K26 [{[1] = False, ["events"], ["rows"], ["instanceEvents"], ["selectedEvents"], ["indent"] = 0, ["eventCount"] = 0, ["debugInterface"], ["registeredFnProxies"], ["registeredComponents"], ["instanceIndices"], ["nextInstanceIndex"] = 1, ["nextEventId"] = 1, ["renderTimes"], ["filter"], ["searchTerm"] = , ["roact"], ["treeWatcher"], ["tree"], ["startTime"] = 0, ["profileComponents"], ["profileEvents"]}]
        1 NEWTABLE                         R5 0 0
        3 SETTABLEKS                       R5 R4 K2 ["events"]
        5 NEWTABLE                         R5 0 0
        7 SETTABLEKS                       R5 R4 K3 ["rows"]
        9 NEWTABLE                         R5 0 0
       11 SETTABLEKS                       R5 R4 K4 ["instanceEvents"]
       13 NEWTABLE                         R5 0 0
       15 SETTABLEKS                       R5 R4 K5 ["selectedEvents"]
       17 SETTABLEKS                       R0 R4 K9 ["debugInterface"]
       19 NEWTABLE                         R5 0 0
       21 SETTABLEKS                       R5 R4 K10 ["registeredFnProxies"]
       23 NEWTABLE                         R5 0 0
       25 SETTABLEKS                       R5 R4 K11 ["registeredComponents"]
       27 NEWTABLE                         R5 0 0
       29 SETTABLEKS                       R5 R4 K12 ["instanceIndices"]
       31 NEWTABLE                         R5 0 0
       33 SETTABLEKS                       R5 R4 K16 ["renderTimes"]
       35 NEWTABLE                         R5 0 0
       37 SETTABLEKS                       R5 R4 K17 ["filter"]
       39 SETTABLEKS                       R3 R4 K20 ["roact"]
       41 SETTABLEKS                       R1 R4 K21 ["treeWatcher"]
       43 SETTABLEKS                       R2 R4 K22 ["tree"]
       45 DUPTABLE                         R5 K30 [{["sortIndex"] = , ["sortOrder"] = , ["columns"]}]
       46 NEWTABLE                         R6 0 5
       48 LOADK                            R7 K31 ["instanceName"]
       49 LOADK                            R8 K32 ["depth"]
       50 LOADK                            R9 K33 ["count"]
       51 LOADK                            R10 K34 ["renderTime"]
       52 LOADK                            R11 K35 ["time"]
       53 SETLIST                          R6 R7 5 [1]
       55 SETTABLEKS                       R6 R5 K29 ["columns"]
       57 SETTABLEKS                       R5 R4 K24 ["profileComponents"]
       59 DUPTABLE                         R5 K30 [{["sortIndex"] = , ["sortOrder"] = , ["columns"]}]
       60 NEWTABLE                         R6 0 5
       62 LOADK                            R7 K23 ["startTime"]
       63 LOADK                            R8 K34 ["renderTime"]
       64 LOADK                            R9 K35 ["time"]
       65 LOADK                            R10 K36 ["cause"]
       66 LOADK                            R11 K37 ["details"]
       67 SETLIST                          R6 R7 5 [1]
       69 SETTABLEKS                       R6 R5 K29 ["columns"]
       71 SETTABLEKS                       R5 R4 K25 ["profileEvents"]
       73 NEWCLOSURE                       R5 P0
       74 CAPTURE                          VAL R4
       75 CAPTURE                          UPVAL U0
       76 SETTABLEKS                       R5 R4 K38 ["resolveUpdateProxy"]
       78 NEWCLOSURE                       R5 P1
       79 CAPTURE                          VAL R4
       80 CAPTURE                          UPVAL U0
       81 SETTABLEKS                       R5 R4 K39 ["mountProxy"]
       83 NEWCLOSURE                       R5 P2
       84 CAPTURE                          VAL R4
       85 SETTABLEKS                       R5 R4 K40 ["renderProxy"]
       87 RETURN                           R4 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["tree"]
        3 LOADK                            R3 K1 ["InternalData"]
        4 CALL                             R1 2 1
        5 GETTABLEKS                       R1 R1 K2 ["rootNode"]
        7 RETURN                           R1 1

PROTO_8:
        0 GETTABLE                         R4 R0 R1
        1 SETTABLEKS                       R2 R4 K0 ["sortIndex"]
        3 GETTABLE                         R4 R0 R1
        4 SETTABLEKS                       R3 R4 K1 ["sortOrder"]
        6 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["log"]
        2 JUMPIF                           R1 ; [+6]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R2 R0 K1 ["updateTrace"]
        6 CALL                             R1 1 1
        7 SETTABLEKS                       R1 R0 K0 ["log"]
        9 RETURN                           R0 0

PROTO_10:
        0 NAMECALL                         R5 R0 K0 ["updateRows"]
        2 CALL                             R5 1 0
        3 NAMECALL                         R5 R0 K1 ["getComponentRows"]
        5 CALL                             R5 1 1
        6 NAMECALL                         R6 R0 K2 ["getEventRows"]
        8 CALL                             R6 1 1
        9 GETUPVAL                         R7 0
       10 MOVE                             R8 R6
       11 MOVE                             R9 R3
       12 MOVE                             R10 R4
       13 CALL                             R7 3 1
       14 GETUPVAL                         R8 1
       15 MOVE                             R9 R7
       16 DUPCLOSURE                       R10 K3 [PROTO_9]
       17 CAPTURE                          UPVAL U2
       18 CALL                             R8 2 0
       19 DUPTABLE                         R8 K9 [{"componentRows", "eventRows", "rowCount", "eventCount", "instanceEventCount"}]
       20 GETUPVAL                         R9 0
       21 MOVE                             R10 R5
       22 MOVE                             R11 R1
       23 MOVE                             R12 R2
       24 CALL                             R9 3 1
       25 SETTABLEKS                       R9 R8 K4 ["componentRows"]
       27 SETTABLEKS                       R7 R8 K5 ["eventRows"]
       29 LENGTH                           R9 R5
       30 SETTABLEKS                       R9 R8 K6 ["rowCount"]
       32 GETTABLEKS                       R9 R0 K7 ["eventCount"]
       34 SETTABLEKS                       R9 R8 K7 ["eventCount"]
       36 GETTABLEKS                       R10 R0 K10 ["selectedEvents"]
       38 LENGTH                           R9 R10
       39 SETTABLEKS                       R9 R8 K8 ["instanceEventCount"]
       41 RETURN                           R8 1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["instanceIndices"]
        3 GETTABLEKS                       R3 R0 K1 ["instance"]
        5 GETTABLE                         R1 R2 R3
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["instanceIndices"]
        9 GETTABLEKS                       R4 R0 K1 ["instance"]
       11 GETTABLE                         R2 R3 R4
       12 JUMPIF                           R2 ; [+18]
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K2 ["nextInstanceIndex"]
       16 GETUPVAL                         R2 0
       17 GETTABLEKS                       R2 R2 K0 ["instanceIndices"]
       19 GETTABLEKS                       R3 R0 K1 ["instance"]
       21 GETUPVAL                         R4 0
       22 GETTABLEKS                       R4 R4 K2 ["nextInstanceIndex"]
       24 SETTABLE                         R4 R2 R3
       25 GETUPVAL                         R2 0
       26 GETTABLEKS                       R3 R2 K2 ["nextInstanceIndex"]
       28 ADDK                             R3 R3 K3 [1]
       29 SETTABLEKS                       R3 R2 K2 ["nextInstanceIndex"]
       31 GETUPVAL                         R2 1
       32 GETTABLEKS                       R3 R0 K1 ["instance"]
       34 LOADK                            R4 K4 ["InternalData"]
       35 CALL                             R2 2 1
       36 MOVE                             R3 R2
       37 JUMPIFNOT                        R3 ; [+2]
       38 GETTABLEKS                       R3 R2 K5 ["virtualNode"]
       40 MOVE                             R4 R3
       41 JUMPIFNOT                        R4 ; [+7]
       42 GETUPVAL                         R4 0
       43 GETTABLEKS                       R4 R4 K6 ["treeWatcher"]
       45 MOVE                             R6 R3
       46 NAMECALL                         R4 R4 K7 ["getHostNode"]
       48 CALL                             R4 2 1
       49 MOVE                             R5 R4
       50 JUMPIFNOT                        R5 ; [+8]
       51 GETUPVAL                         R5 0
       52 GETTABLEKS                       R5 R5 K6 ["treeWatcher"]
       54 GETTABLEKS                       R7 R4 K8 ["hostObject"]
       56 NAMECALL                         R5 R5 K9 ["getPath"]
       58 CALL                             R5 2 1
       59 FASTCALL1                        TOSTRING R1 ; [+3]
       60 MOVE                             R7 R1
       61 GETIMPORT                        R6 K11 [tostring]
       63 CALL                             R6 1 1
       64 GETUPVAL                         R8 0
       65 GETTABLEKS                       R8 R8 K12 ["rows"]
       67 GETTABLE                         R7 R8 R6
       68 JUMPIF                           R7 ; [+25]
       69 DUPTABLE                         R7 K22 [{["instanceId"], ["count"] = 0, ["depth"], ["path"], ["pathString"], ["instanceName"], ["time"] = 0, ["renderTime"] = 0}]
       70 SETTABLEKS                       R6 R7 K13 ["instanceId"]
       72 GETTABLEKS                       R8 R0 K16 ["depth"]
       74 SETTABLEKS                       R8 R7 K16 ["depth"]
       76 SETTABLEKS                       R5 R7 K17 ["path"]
       78 MOVE                             R8 R5
       79 JUMPIFNOT                        R8 ; [+6]
       80 LOADK                            R9 K23 ["Path: "]
       81 GETUPVAL                         R10 2
       82 MOVE                             R11 R5
       83 LOADK                            R12 K24 ["."]
       84 CALL                             R10 2 1
       85 CONCAT                           R8 R9 R10
       86 SETTABLEKS                       R8 R7 K18 ["pathString"]
       88 GETTABLEKS                       R8 R0 K1 ["instance"]
       90 GETTABLEKS                       R8 R8 K25 ["__componentName"]
       92 SETTABLEKS                       R8 R7 K19 ["instanceName"]
       94 GETUPVAL                         R8 0
       95 GETTABLEKS                       R8 R8 K12 ["rows"]
       97 SETTABLE                         R7 R8 R6
       98 GETTABLEKS                       R8 R7 K14 ["count"]
      100 ADDK                             R8 R8 K3 [1]
      101 SETTABLEKS                       R8 R7 K14 ["count"]
      103 GETUPVAL                         R9 0
      104 GETTABLEKS                       R9 R9 K26 ["instanceEvents"]
      106 GETTABLE                         R8 R9 R6
      107 JUMPIF                           R8 ; [+6]
      108 GETUPVAL                         R8 0
      109 GETTABLEKS                       R8 R8 K26 ["instanceEvents"]
      111 NEWTABLE                         R9 0 0
      113 SETTABLE                         R9 R8 R6
      114 GETUPVAL                         R10 0
      115 GETTABLEKS                       R10 R10 K26 ["instanceEvents"]
      117 GETTABLE                         R9 R10 R6
      118 GETUPVAL                         R10 0
      119 MOVE                             R12 R0
      120 NAMECALL                         R10 R10 K27 ["getEventInfo"]
      122 CALL                             R10 2 -1
      123 FASTCALL                         TABLE_INSERT ; [+1]
      124 GETUPVAL                         R8 3
      125 CALL                             R8 -1 0
      126 GETTABLEKS                       R8 R7 K20 ["time"]
      128 GETTABLEKS                       R11 R0 K29 ["endTime"]
      130 GETTABLEKS                       R12 R0 K30 ["startTime"]
      132 SUB                              R10 R11 R12
      133 MULK                             R9 R10 K28 [1000]
      134 ADD                              R8 R8 R9
      135 SETTABLEKS                       R8 R7 K20 ["time"]
      137 GETTABLEKS                       R8 R7 K21 ["renderTime"]
      139 GETTABLEKS                       R9 R0 K21 ["renderTime"]
      141 ADD                              R8 R8 R9
      142 SETTABLEKS                       R8 R7 K21 ["renderTime"]
      144 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["events"]
        3 NEWCLOSURE                       R3 P0
        4 CAPTURE                          VAL R0
        5 CAPTURE                          UPVAL U1
        6 CAPTURE                          UPVAL U2
        7 CAPTURE                          UPVAL U3
        8 NEWTABLE                         R4 0 0
       10 CALL                             R1 3 0
       11 GETTABLEKS                       R1 R0 K1 ["eventCount"]
       13 GETTABLEKS                       R3 R0 K0 ["events"]
       15 LENGTH                           R2 R3
       16 ADD                              R1 R1 R2
       17 SETTABLEKS                       R1 R0 K1 ["eventCount"]
       19 NEWTABLE                         R1 0 0
       21 SETTABLEKS                       R1 R0 K0 ["events"]
       23 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["instanceEvents"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+2]
        4 NEWTABLE                         R2 0 0
        6 SETTABLEKS                       R2 R0 K1 ["selectedEvents"]
        8 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["instanceName"]
        3 MOVE                             R3 R0
        4 NAMECALL                         R1 R1 K1 ["find"]
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

PROTO_15:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["searchTerm"]
        3 JUMPIFNOT                        R1 ; [+14]
        4 GETTABLEKS                       R1 R0 K1 ["instanceName"]
        6 NAMECALL                         R1 R1 K2 ["lower"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K0 ["searchTerm"]
       12 NAMECALL                         R1 R1 K3 ["find"]
       14 CALL                             R1 2 1
       15 JUMPIF                           R1 ; [+2]
       16 LOADB                            R1 0
       17 RETURN                           R1 1
       18 GETUPVAL                         R2 1
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R3 R3 K4 ["filter"]
       22 NEWCLOSURE                       R4 P0
       23 CAPTURE                          VAL R0
       24 CALL                             R2 2 1
       25 NOT                              R1 R2
       26 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["rows"]
        3 CALL                             R1 1 1
        4 GETTABLEKS                       R2 R0 K1 ["filter"]
        6 JUMPIF                           R2 ; [+3]
        7 GETTABLEKS                       R2 R0 K2 ["searchTerm"]
        9 JUMPIFNOT                        R2 ; [+7]
       10 GETUPVAL                         R2 1
       11 MOVE                             R3 R1
       12 NEWCLOSURE                       R4 P0
       13 CAPTURE                          VAL R0
       14 CAPTURE                          UPVAL U2
       15 CALL                             R2 2 1
       16 MOVE                             R1 R2
       17 MOVE                             R4 R1
       18 GETTABLEKS                       R5 R0 K3 ["profileComponents"]
       20 NAMECALL                         R2 R0 K4 ["getSortedData"]
       22 CALL                             R2 3 -1
       23 RETURN                           R2 -1

PROTO_17:
        0 GETTABLEKS                       R3 R0 K0 ["selectedEvents"]
        2 GETTABLEKS                       R4 R0 K1 ["profileEvents"]
        4 NAMECALL                         R1 R0 K2 ["getSortedData"]
        6 CALL                             R1 3 -1
        7 RETURN                           R1 -1

PROTO_18:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["columns"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R4 R4 K1 ["sortIndex"]
        6 GETTABLE                         R2 R3 R4
        7 GETUPVAL                         R3 1
        8 GETTABLEKS                       R3 R3 K2 ["profileComponents"]
       10 GETTABLEKS                       R3 R3 K3 ["sortOrder"]
       12 GETIMPORT                        R4 K7 [Enum.SortDirection.Descending]
       14 JUMPIFNOTEQ                      R3 R4 ; [+8]
       16 GETTABLE                         R4 R0 R2
       17 GETTABLE                         R5 R1 R2
       18 JUMPIFLT                         R4 R5 ; [+2]
       20 LOADB                            R3 0 +1
       21 LOADB                            R3 1
       22 RETURN                           R3 1
       23 GETTABLE                         R4 R0 R2
       24 GETTABLE                         R5 R1 R2
       25 JUMPIFLT                         R5 R4 ; [+2]
       27 LOADB                            R3 0 +1
       28 LOADB                            R3 1
       29 RETURN                           R3 1

PROTO_19:
        0 GETTABLEKS                       R3 R2 K0 ["sortIndex"]
        2 JUMPIFNOT                        R3 ; [+6]
        3 GETUPVAL                         R3 0
        4 MOVE                             R4 R1
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R2
        7 CAPTURE                          VAL R0
        8 CALL                             R3 2 0
        9 RETURN                           R1 1

PROTO_20:
        0 LOADK                            R2 K0 [""]
        1 LOADK                            R3 K0 [""]
        2 LOADK                            R4 K0 [""]
        3 GETTABLEKS                       R5 R1 K1 ["isMount"]
        5 JUMPIFNOT                        R5 ; [+1]
        6 LOADK                            R2 K2 ["Mount"]
        7 GETTABLEKS                       R5 R1 K3 ["oldState"]
        9 JUMPIFNOT                        R5 ; [+12]
       10 MOVE                             R5 R2
       11 LOADK                            R6 K4 ["State"]
       12 CONCAT                           R2 R5 R6
       13 GETTABLEKS                       R7 R1 K3 ["oldState"]
       15 GETTABLEKS                       R8 R1 K5 ["newState"]
       17 NAMECALL                         R5 R0 K6 ["getChangedKeys"]
       19 CALL                             R5 3 2
       20 MOVE                             R3 R5
       21 MOVE                             R4 R6
       22 GETTABLEKS                       R5 R1 K7 ["oldProps"]
       24 JUMPIFNOT                        R5 ; [+12]
       25 MOVE                             R5 R2
       26 LOADK                            R6 K8 ["Props"]
       27 CONCAT                           R2 R5 R6
       28 GETTABLEKS                       R7 R1 K7 ["oldProps"]
       30 GETTABLEKS                       R8 R1 K9 ["newProps"]
       32 NAMECALL                         R5 R0 K6 ["getChangedKeys"]
       34 CALL                             R5 3 2
       35 MOVE                             R3 R5
       36 MOVE                             R4 R6
       37 DUPTABLE                         R5 K17 [{"startTime", "renderTime", "time", "cause", "updateTrace", "details", "detailsTip"}]
       38 GETTABLEKS                       R7 R1 K10 ["startTime"]
       40 GETTABLEKS                       R8 R0 K10 ["startTime"]
       42 SUB                              R6 R7 R8
       43 SETTABLEKS                       R6 R5 K10 ["startTime"]
       45 GETTABLEKS                       R6 R1 K11 ["renderTime"]
       47 SETTABLEKS                       R6 R5 K11 ["renderTime"]
       49 GETTABLEKS                       R8 R1 K19 ["endTime"]
       51 GETTABLEKS                       R9 R1 K10 ["startTime"]
       53 SUB                              R7 R8 R9
       54 MULK                             R6 R7 K18 [1000]
       55 SETTABLEKS                       R6 R5 K12 ["time"]
       57 SETTABLEKS                       R2 R5 K13 ["cause"]
       59 GETTABLEKS                       R6 R1 K14 ["updateTrace"]
       61 SETTABLEKS                       R6 R5 K14 ["updateTrace"]
       63 SETTABLEKS                       R3 R5 K15 ["details"]
       65 SETTABLEKS                       R4 R5 K16 ["detailsTip"]
       67 RETURN                           R5 1

PROTO_21:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFEQ                         R0 R2 ; [+9]
        4 GETUPVAL                         R3 1
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [tostring]
        9 CALL                             R4 1 1
       10 LOADB                            R5 1
       11 SETTABLE                         R5 R3 R4
       12 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R3 0
        1 GETTABLE                         R2 R3 R1
        2 JUMPIFEQ                         R0 R2 ; [+9]
        4 GETUPVAL                         R3 1
        5 FASTCALL1                        TOSTRING R1 ; [+3]
        6 MOVE                             R5 R1
        7 GETIMPORT                        R4 K1 [tostring]
        9 CALL                             R4 1 1
       10 LOADB                            R5 1
       11 SETTABLE                         R5 R3 R4
       12 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R2 0
        1 LOADK                            R3 K0 ["%s: %s -> %s\n"]
        2 FASTCALL1                        TOSTRING R0 ; [+3]
        3 MOVE                             R6 R0
        4 GETIMPORT                        R5 K2 [tostring]
        6 CALL                             R5 1 1
        7 GETUPVAL                         R8 1
        8 GETTABLE                         R7 R8 R0
        9 FASTCALL1                        TOSTRING R7 ; [+2]
       10 GETIMPORT                        R6 K2 [tostring]
       12 CALL                             R6 1 1
       13 GETUPVAL                         R9 2
       14 GETTABLE                         R8 R9 R0
       15 FASTCALL1                        TOSTRING R8 ; [+2]
       16 GETIMPORT                        R7 K2 [tostring]
       18 CALL                             R7 1 1
       19 NAMECALL                         R3 R3 K3 ["format"]
       21 CALL                             R3 4 1
       22 CONCAT                           R1 R2 R3
       23 SETUPVAL                         R1 0
       24 RETURN                           R0 0

PROTO_24:
        0 NEWTABLE                         R3 0 0
        2 GETUPVAL                         R4 0
        3 MOVE                             R5 R1
        4 NEWCLOSURE                       R6 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          VAL R3
        7 CALL                             R4 2 0
        8 GETUPVAL                         R4 0
        9 MOVE                             R5 R2
       10 NEWCLOSURE                       R6 P1
       11 CAPTURE                          VAL R1
       12 CAPTURE                          VAL R3
       13 CALL                             R4 2 0
       14 GETUPVAL                         R4 1
       15 MOVE                             R5 R3
       16 CALL                             R4 1 1
       17 LOADNIL                          R5
       18 LENGTH                           R6 R4
       19 JUMPIFNOTEQKN                    R6 K0 [0] ; [+3]
       21 LOADK                            R5 K1 ["No values changed"]
       22 JUMP                             ; [+8]
       23 LOADK                            R5 K2 [""]
       24 GETUPVAL                         R6 0
       25 MOVE                             R7 R4
       26 NEWCLOSURE                       R8 P2
       27 CAPTURE                          REF R5
       28 CAPTURE                          VAL R1
       29 CAPTURE                          VAL R2
       30 CALL                             R6 2 0
       31 GETUPVAL                         R6 2
       32 MOVE                             R7 R4
       33 LOADK                            R8 K3 [", "]
       34 CALL                             R6 2 1
       35 MOVE                             R7 R5
       36 CLOSEUPVALS                      R5
       37 RETURN                           R6 2

PROTO_25:
        0 NEWTABLE                         R1 0 0
        2 SETTABLEKS                       R1 R0 K0 ["events"]
        4 LOADN                            R1 0
        5 SETTABLEKS                       R1 R0 K1 ["eventCount"]
        7 LOADN                            R1 0
        8 SETTABLEKS                       R1 R0 K2 ["nextInstanceIndex"]
       10 NEWTABLE                         R1 0 0
       12 SETTABLEKS                       R1 R0 K3 ["instanceIndices"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K4 ["renderTimes"]
       18 NEWTABLE                         R1 0 0
       20 SETTABLEKS                       R1 R0 K5 ["rows"]
       22 NEWTABLE                         R1 0 0
       24 SETTABLEKS                       R1 R0 K6 ["instanceEvents"]
       26 NEWTABLE                         R1 0 0
       28 SETTABLEKS                       R1 R0 K7 ["selectedEvents"]
       30 RETURN                           R0 0

PROTO_26:
        0 GETTABLEKS                       R2 R0 K0 ["active"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["active"]
        7 NAMECALL                         R2 R0 K1 ["getRootNode"]
        9 CALL                             R2 1 1
       10 JUMPIFNOT                        R1 ; [+10]
       11 GETIMPORT                        R3 K4 [os.clock]
       13 CALL                             R3 0 1
       14 SETTABLEKS                       R3 R0 K5 ["startTime"]
       16 MOVE                             R5 R2
       17 NAMECALL                         R3 R0 K6 ["start"]
       19 CALL                             R3 2 0
       20 RETURN                           R0 0
       21 MOVE                             R5 R2
       22 NAMECALL                         R3 R0 K7 ["stop"]
       24 CALL                             R3 2 0
       25 RETURN                           R0 0

PROTO_27:
        0 PREPVARARGS                      1
        1 GETUPVAL                         R1 0
        2 MOVE                             R3 R0
        3 NAMECALL                         R1 R1 K0 ["registerComponent"]
        5 CALL                             R1 2 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K1 ["createElementHidden"]
        9 MOVE                             R3 R1
       10 GETVARARGS                       R4 -1
       11 CALL                             R2 -1 -1
       12 RETURN                           R2 -1

PROTO_28:
        0 GETTABLEKS                       R4 R0 K0 ["createElementHidden"]
        2 JUMPIFEQKNIL                     R4 ; [+2]
        4 LOADB                            R3 0 +1
        5 LOADB                            R3 1
        6 FASTCALL2K                       ASSERT R3 K1 ; [+4]
        8 LOADK                            R4 K1 ["Roact Profiler already started"]
        9 GETIMPORT                        R2 K3 [assert]
       11 CALL                             R2 2 0
       12 GETTABLEKS                       R2 R0 K4 ["roact"]
       14 GETTABLEKS                       R2 R2 K5 ["createElement"]
       16 SETTABLEKS                       R2 R0 K0 ["createElementHidden"]
       18 GETTABLEKS                       R2 R0 K4 ["roact"]
       20 NEWCLOSURE                       R3 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R3 R2 K5 ["createElement"]
       24 MOVE                             R4 R1
       25 NAMECALL                         R2 R0 K6 ["registerNode"]
       27 CALL                             R2 2 0
       28 RETURN                           R0 0

PROTO_29:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["registerNode"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_30:
        0 GETTABLEKS                       R2 R1 K0 ["currentElement"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R2 R1 K0 ["currentElement"]
        5 GETTABLEKS                       R2 R2 K1 ["component"]
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R0 K2 ["registerComponent"]
       10 CALL                             R3 2 0
       11 GETUPVAL                         R3 0
       12 GETTABLEKS                       R4 R1 K3 ["children"]
       14 NEWCLOSURE                       R5 P0
       15 CAPTURE                          VAL R0
       16 CALL                             R3 2 0
       17 RETURN                           R0 0

PROTO_31:
        0 GETTABLEKS                       R3 R0 K0 ["registeredComponents"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIF                           R2 ; [+25]
        4 FASTCALL1                        TYPEOF R1 ; [+3]
        5 MOVE                             R3 R1
        6 GETIMPORT                        R2 K2 [typeof]
        8 CALL                             R2 1 1
        9 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+6]
       11 MOVE                             R4 R1
       12 NAMECALL                         R2 R0 K4 ["registerComponentClass"]
       14 CALL                             R2 2 0
       15 JUMP                             ; [+13]
       16 FASTCALL1                        TYPEOF R1 ; [+3]
       17 MOVE                             R3 R1
       18 GETIMPORT                        R2 K2 [typeof]
       20 CALL                             R2 1 1
       21 JUMPIFNOTEQKS                    R2 K5 ["function"] ; [+6]
       23 MOVE                             R4 R1
       24 NAMECALL                         R2 R0 K6 ["registerComponentFn"]
       26 CALL                             R2 2 0
       27 JUMP                             ; [+1]
       28 RETURN                           R1 1
       29 GETTABLEKS                       R3 R0 K0 ["registeredComponents"]
       31 GETTABLE                         R2 R3 R1
       32 RETURN                           R2 1

PROTO_32:
        0 GETTABLEKS                       R2 R0 K0 ["registeredComponents"]
        2 SETTABLE                         R1 R2 R1
        3 GETTABLEKS                       R2 R1 K1 ["__resolveUpdate"]
        5 SETTABLEKS                       R2 R1 K2 ["__resolveUpdateHidden"]
        7 GETTABLEKS                       R2 R0 K3 ["resolveUpdateProxy"]
        9 SETTABLEKS                       R2 R1 K1 ["__resolveUpdate"]
       11 GETTABLEKS                       R2 R1 K4 ["__mount"]
       13 SETTABLEKS                       R2 R1 K5 ["__mountHidden"]
       15 GETTABLEKS                       R2 R0 K6 ["mountProxy"]
       17 SETTABLEKS                       R2 R1 K4 ["__mount"]
       19 GETTABLEKS                       R2 R1 K7 ["render"]
       21 SETTABLEKS                       R2 R1 K8 ["__renderHidden"]
       23 GETTABLEKS                       R2 R0 K9 ["renderProxy"]
       25 SETTABLEKS                       R2 R1 K7 ["render"]
       27 RETURN                           R0 0

PROTO_33:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 FASTCALL1                        TABLE_UNPACK R2 ; [+2]
        3 GETIMPORT                        R1 K1 [unpack]
        5 CALL                             R1 1 -1
        6 CALL                             R0 -1 -1
        7 RETURN                           R0 -1

PROTO_34:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K2 [os.clock]
        3 CALL                             R0 0 1
        4 NEWTABLE                         R1 0 0
        6 GETVARARGS                       R2 -1
        7 SETLIST                          R1 R2 -1 [1]
        9 GETIMPORT                        R2 K4 [pcall]
       11 NEWCLOSURE                       R3 P0
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R1
       14 CALL                             R2 1 2
       15 JUMPIF                           R2 ; [+7]
       16 GETIMPORT                        R4 K6 [warn]
       18 LOADK                            R5 K7 ["Render fn error during profiling"]
       19 MOVE                             R6 R3
       20 CALL                             R4 2 0
       21 LOADB                            R4 0
       22 RETURN                           R4 1
       23 GETIMPORT                        R6 K2 [os.clock]
       25 CALL                             R6 0 1
       26 SUB                              R5 R6 R0
       27 MULK                             R4 R5 K8 [1000]
       28 GETUPVAL                         R7 1
       29 GETTABLEKS                       R7 R7 K10 ["renderTimes"]
       31 GETUPVAL                         R8 1
       32 GETTABLEKS                       R8 R8 K11 ["indent"]
       34 GETTABLE                         R6 R7 R8
       35 ORK                              R5 R6 K9 [0]
       36 GETUPVAL                         R6 1
       37 GETTABLEKS                       R6 R6 K10 ["renderTimes"]
       39 GETUPVAL                         R7 1
       40 GETTABLEKS                       R7 R7 K11 ["indent"]
       42 ADD                              R8 R5 R4
       43 SETTABLE                         R8 R6 R7
       44 RETURN                           R3 1

PROTO_35:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R1
        2 CAPTURE                          VAL R0
        3 GETTABLEKS                       R3 R0 K0 ["registeredComponents"]
        5 SETTABLE                         R2 R3 R1
        6 GETTABLEKS                       R3 R0 K0 ["registeredComponents"]
        8 SETTABLE                         R2 R3 R2
        9 GETTABLEKS                       R3 R0 K1 ["registeredFnProxies"]
       11 SETTABLE                         R1 R3 R2
       12 RETURN                           R0 0

PROTO_36:
        0 SETTABLEKS                       R1 R0 K0 ["filter"]
        2 RETURN                           R0 0

PROTO_37:
        0 NAMECALL                         R2 R1 K0 ["lower"]
        2 CALL                             R2 1 1
        3 SETTABLEKS                       R2 R0 K1 ["searchTerm"]
        5 RETURN                           R0 0

PROTO_38:
        0 FASTCALL1                        TYPEOF R1 ; [+3]
        1 MOVE                             R3 R1
        2 GETIMPORT                        R2 K1 [typeof]
        4 CALL                             R2 1 1
        5 JUMPIFNOTEQKS                    R2 K2 ["table"] ; [+22]
        7 GETTABLEKS                       R2 R1 K3 ["__mountHidden"]
        9 SETTABLEKS                       R2 R1 K4 ["__mount"]
       11 LOADNIL                          R2
       12 SETTABLEKS                       R2 R1 K3 ["__mountHidden"]
       14 GETTABLEKS                       R2 R1 K5 ["__resolveUpdateHidden"]
       16 SETTABLEKS                       R2 R1 K6 ["__resolveUpdate"]
       18 LOADNIL                          R2
       19 SETTABLEKS                       R2 R1 K5 ["__resolveUpdateHidden"]
       21 GETTABLEKS                       R2 R1 K7 ["__renderHidden"]
       23 SETTABLEKS                       R2 R1 K8 ["render"]
       25 LOADNIL                          R2
       26 SETTABLEKS                       R2 R1 K7 ["__renderHidden"]
       28 RETURN                           R0 0

PROTO_39:
        0 GETTABLEKS                       R2 R0 K0 ["roact"]
        2 GETTABLEKS                       R3 R0 K1 ["createElementHidden"]
        4 SETTABLEKS                       R3 R2 K2 ["createElement"]
        6 LOADNIL                          R2
        7 SETTABLEKS                       R2 R0 K1 ["createElementHidden"]
        9 GETUPVAL                         R2 0
       10 GETTABLEKS                       R3 R0 K3 ["registeredComponents"]
       12 DUPCLOSURE                       R4 K4 [PROTO_38]
       13 CALL                             R2 2 0
       14 MOVE                             R4 R1
       15 NAMECALL                         R2 R0 K5 ["unregisterNode"]
       17 CALL                             R2 2 0
       18 NEWTABLE                         R2 0 0
       20 SETTABLEKS                       R2 R0 K3 ["registeredComponents"]
       22 NEWTABLE                         R2 0 0
       24 SETTABLEKS                       R2 R0 K6 ["registeredFnProxies"]
       26 NEWTABLE                         R2 0 0
       28 SETTABLEKS                       R2 R0 K7 ["componentIds"]
       30 RETURN                           R0 0

PROTO_40:
        0 LOADB                            R3 0
        1 NAMECALL                         R1 R0 K0 ["setActive"]
        3 CALL                             R1 2 0
        4 NAMECALL                         R1 R0 K1 ["clearData"]
        6 CALL                             R1 1 0
        7 RETURN                           R0 0

PROTO_41:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["unregisterNode"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_42:
        0 GETTABLEKS                       R2 R1 K0 ["currentElement"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R2 R1 K0 ["currentElement"]
        5 GETTABLEKS                       R2 R2 K1 ["component"]
        7 GETTABLEKS                       R4 R0 K2 ["registeredFnProxies"]
        9 GETTABLE                         R3 R4 R2
       10 JUMPIFNOT                        R3 ; [+7]
       11 GETTABLEKS                       R3 R1 K0 ["currentElement"]
       13 GETTABLEKS                       R5 R0 K2 ["registeredFnProxies"]
       15 GETTABLE                         R4 R5 R2
       16 SETTABLEKS                       R4 R3 K1 ["component"]
       18 GETUPVAL                         R3 0
       19 GETTABLEKS                       R4 R1 K3 ["children"]
       21 NEWCLOSURE                       R5 P0
       22 CAPTURE                          VAL R0
       23 CALL                             R3 2 0
       24 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R1 R0 K2 ["Parent"]
       11 GETIMPORT                        R2 K4 [require]
       13 GETTABLEKS                       R3 R1 K5 ["Dash"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K6 ["class"]
       18 GETTABLEKS                       R4 R2 K7 ["slice"]
       20 GETTABLEKS                       R5 R2 K8 ["filter"]
       22 GETTABLEKS                       R6 R2 K9 ["forEach"]
       24 GETTABLEKS                       R7 R2 K10 ["keys"]
       26 GETTABLEKS                       R8 R2 K11 ["some"]
       28 GETTABLEKS                       R9 R2 K12 ["values"]
       30 GETIMPORT                        R10 K15 [table.concat]
       32 GETIMPORT                        R11 K17 [table.insert]
       34 GETIMPORT                        R12 K19 [table.sort]
       36 GETIMPORT                        R13 K4 [require]
       38 GETTABLEKS                       R14 R0 K20 ["RoactInspector"]
       40 GETTABLEKS                       R14 R14 K21 ["Utils"]
       42 GETTABLEKS                       R14 R14 K22 ["getSymbol"]
       44 CALL                             R13 1 1
       45 GETIMPORT                        R14 K4 [require]
       47 GETTABLEKS                       R15 R0 K20 ["RoactInspector"]
       49 GETTABLEKS                       R15 R15 K21 ["Utils"]
       51 GETTABLEKS                       R15 R15 K23 ["sanitizeRoactLog"]
       53 CALL                             R14 1 1
       54 GETIMPORT                        R15 K4 [require]
       56 GETTABLEKS                       R16 R0 K24 ["Types"]
       58 CALL                             R15 1 1
       59 MOVE                             R16 R3
       60 LOADK                            R17 K25 ["RoactProfiler"]
       61 DUPCLOSURE                       R18 K26 [PROTO_6]
       62 CAPTURE                          VAL R11
       63 CALL                             R16 2 1
       64 DUPCLOSURE                       R17 K27 [PROTO_7]
       65 CAPTURE                          VAL R13
       66 SETTABLEKS                       R17 R16 K28 ["getRootNode"]
       68 DUPCLOSURE                       R17 K29 [PROTO_8]
       69 SETTABLEKS                       R17 R16 K30 ["sortData"]
       71 DUPCLOSURE                       R17 K31 [PROTO_10]
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R6
       74 CAPTURE                          VAL R14
       75 SETTABLEKS                       R17 R16 K32 ["getData"]
       77 DUPCLOSURE                       R17 K33 [PROTO_12]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R13
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R11
       82 SETTABLEKS                       R17 R16 K34 ["updateRows"]
       84 DUPCLOSURE                       R17 K35 [PROTO_13]
       85 SETTABLEKS                       R17 R16 K36 ["selectInstance"]
       87 DUPCLOSURE                       R17 K37 [PROTO_16]
       88 CAPTURE                          VAL R9
       89 CAPTURE                          VAL R5
       90 CAPTURE                          VAL R8
       91 SETTABLEKS                       R17 R16 K38 ["getComponentRows"]
       93 DUPCLOSURE                       R17 K39 [PROTO_17]
       94 SETTABLEKS                       R17 R16 K40 ["getEventRows"]
       96 DUPCLOSURE                       R17 K41 [PROTO_19]
       97 CAPTURE                          VAL R12
       98 SETTABLEKS                       R17 R16 K42 ["getSortedData"]
      100 DUPCLOSURE                       R17 K43 [PROTO_20]
      101 SETTABLEKS                       R17 R16 K44 ["getEventInfo"]
      103 DUPCLOSURE                       R17 K45 [PROTO_24]
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R10
      107 SETTABLEKS                       R17 R16 K46 ["getChangedKeys"]
      109 DUPCLOSURE                       R17 K47 [PROTO_25]
      110 SETTABLEKS                       R17 R16 K48 ["clearData"]
      112 DUPCLOSURE                       R17 K49 [PROTO_26]
      113 SETTABLEKS                       R17 R16 K50 ["setActive"]
      115 DUPCLOSURE                       R17 K51 [PROTO_28]
      116 SETTABLEKS                       R17 R16 K52 ["start"]
      118 DUPCLOSURE                       R17 K53 [PROTO_30]
      119 CAPTURE                          VAL R6
      120 SETTABLEKS                       R17 R16 K54 ["registerNode"]
      122 DUPCLOSURE                       R17 K55 [PROTO_31]
      123 SETTABLEKS                       R17 R16 K56 ["registerComponent"]
      125 DUPCLOSURE                       R17 K57 [PROTO_32]
      126 SETTABLEKS                       R17 R16 K58 ["registerComponentClass"]
      128 DUPCLOSURE                       R17 K59 [PROTO_35]
      129 SETTABLEKS                       R17 R16 K60 ["registerComponentFn"]
      131 DUPCLOSURE                       R17 K61 [PROTO_36]
      132 SETTABLEKS                       R17 R16 K62 ["setFilter"]
      134 DUPCLOSURE                       R17 K63 [PROTO_37]
      135 SETTABLEKS                       R17 R16 K64 ["setSearchTerm"]
      137 DUPCLOSURE                       R17 K65 [PROTO_39]
      138 CAPTURE                          VAL R6
      139 SETTABLEKS                       R17 R16 K66 ["stop"]
      141 DUPCLOSURE                       R17 K67 [PROTO_40]
      142 SETTABLEKS                       R17 R16 K68 ["destroy"]
      144 DUPCLOSURE                       R17 K69 [PROTO_42]
      145 CAPTURE                          VAL R6
      146 SETTABLEKS                       R17 R16 K70 ["unregisterNode"]
      148 RETURN                           R16 1
