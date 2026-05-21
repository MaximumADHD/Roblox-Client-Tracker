PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 NAMECALL                         R1 R1 K0 ["_takeProfilingSnapshotRecursive"]
        5 CALL                             R1 3 -1
        6 RETURN                           R1 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["_store"]
        2 MOVE                             R5 R1
        3 NAMECALL                         R3 R3 K1 ["getElementByID"]
        5 CALL                             R3 2 1
        6 JUMPIFEQKNIL                     R3 ; [+43]
        8 DUPTABLE                         R4 K8 [{"id", "children", "displayName", "hocDisplayNames", "key", "type"}]
        9 SETTABLEKS                       R1 R4 K2 ["id"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R5 R5 K9 ["slice"]
       14 GETTABLEKS                       R6 R3 K3 ["children"]
       16 LOADN                            R7 0
       17 CALL                             R5 2 1
       18 SETTABLEKS                       R5 R4 K3 ["children"]
       20 GETTABLEKS                       R5 R3 K4 ["displayName"]
       22 SETTABLEKS                       R5 R4 K4 ["displayName"]
       24 GETTABLEKS                       R5 R3 K5 ["hocDisplayNames"]
       26 SETTABLEKS                       R5 R4 K5 ["hocDisplayNames"]
       28 GETTABLEKS                       R5 R3 K6 ["key"]
       30 SETTABLEKS                       R5 R4 K6 ["key"]
       32 GETTABLEKS                       R5 R3 K7 ["type"]
       34 SETTABLEKS                       R5 R4 K7 ["type"]
       36 MOVE                             R7 R1
       37 MOVE                             R8 R4
       38 NAMECALL                         R5 R2 K10 ["set"]
       40 CALL                             R5 3 0
       41 GETUPVAL                         R5 0
       42 GETTABLEKS                       R5 R5 K11 ["forEach"]
       44 GETTABLEKS                       R6 R3 K3 ["children"]
       46 NEWCLOSURE                       R7 P0
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R2
       49 CALL                             R5 2 0
       50 RETURN                           R0 0

PROTO_2:
        0 GETTABLEN                        R2 R1 1
        1 GETTABLEN                        R3 R1 2
        2 GETTABLEKS                       R4 R0 K0 ["_isProfiling"]
        4 JUMPIFNOT                        R4 ; [+65]
        5 GETTABLEKS                       R4 R0 K1 ["_inProgressOperationsByRootID"]
        7 MOVE                             R6 R3
        8 NAMECALL                         R4 R4 K2 ["get"]
       10 CALL                             R4 2 1
       11 JUMPIFNOTEQKNIL                  R4 ; [+15]
       13 NEWTABLE                         R5 0 1
       15 MOVE                             R6 R1
       16 SETLIST                          R5 R6 1 [1]
       18 MOVE                             R4 R5
       19 GETTABLEKS                       R5 R0 K1 ["_inProgressOperationsByRootID"]
       21 MOVE                             R7 R3
       22 MOVE                             R8 R4
       23 NAMECALL                         R5 R5 K3 ["set"]
       25 CALL                             R5 3 0
       26 JUMP                             ; [+7]
       27 FASTCALL2                        TABLE_INSERT R4 R1 ; [+5]
       29 MOVE                             R6 R4
       30 MOVE                             R7 R1
       31 GETIMPORT                        R5 K6 [table.insert]
       33 CALL                             R5 2 0
       34 GETTABLEKS                       R5 R0 K7 ["_initialRendererIDs"]
       36 MOVE                             R7 R2
       37 NAMECALL                         R5 R5 K8 ["has"]
       39 CALL                             R5 2 1
       40 JUMPIF                           R5 ; [+6]
       41 GETTABLEKS                       R5 R0 K7 ["_initialRendererIDs"]
       43 MOVE                             R7 R2
       44 NAMECALL                         R5 R5 K9 ["add"]
       46 CALL                             R5 2 0
       47 GETTABLEKS                       R5 R0 K10 ["_initialSnapshotsByRootID"]
       49 MOVE                             R7 R3
       50 NAMECALL                         R5 R5 K8 ["has"]
       52 CALL                             R5 2 1
       53 JUMPIF                           R5 ; [+10]
       54 GETTABLEKS                       R5 R0 K10 ["_initialSnapshotsByRootID"]
       56 MOVE                             R7 R3
       57 GETUPVAL                         R8 0
       58 GETTABLEKS                       R8 R8 K11 ["new"]
       60 CALL                             R8 0 -1
       61 NAMECALL                         R5 R5 K3 ["set"]
       63 CALL                             R5 -1 0
       64 GETTABLEKS                       R5 R0 K12 ["_rendererIDsThatReportedProfilingData"]
       66 MOVE                             R7 R2
       67 NAMECALL                         R5 R5 K9 ["add"]
       69 CALL                             R5 2 0
       70 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_isProfiling"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETTABLEKS                       R2 R1 K1 ["rendererID"]
        6 GETTABLEKS                       R3 R0 K2 ["_rendererQueue"]
        8 MOVE                             R5 R2
        9 NAMECALL                         R3 R3 K3 ["has"]
       11 CALL                             R3 2 1
       12 JUMPIF                           R3 ; [+12]
       13 GETIMPORT                        R3 K5 [error]
       15 GETIMPORT                        R4 K8 [string.format]
       17 LOADK                            R5 K9 ["Unexpected profiling data update from renderer \"%s\""]
       18 FASTCALL1                        TOSTRING R2 ; [+3]
       19 MOVE                             R7 R2
       20 GETIMPORT                        R6 K11 [tostring]
       22 CALL                             R6 1 1
       23 CALL                             R4 2 -1
       24 CALL                             R3 -1 0
       25 GETTABLEKS                       R4 R0 K12 ["_dataBackends"]
       27 FASTCALL2                        TABLE_INSERT R4 R1 ; [+4]
       29 MOVE                             R5 R1
       30 GETIMPORT                        R3 K15 [table.insert]
       32 CALL                             R3 2 0
       33 GETTABLEKS                       R3 R0 K2 ["_rendererQueue"]
       35 MOVE                             R5 R2
       36 NAMECALL                         R3 R3 K16 ["delete"]
       38 CALL                             R3 2 0
       39 GETTABLEKS                       R3 R0 K2 ["_rendererQueue"]
       41 GETTABLEKS                       R3 R3 K17 ["size"]
       43 JUMPIFNOTEQKN                    R3 K18 [0] ; [+22]
       45 GETUPVAL                         R3 0
       46 GETTABLEKS                       R4 R0 K12 ["_dataBackends"]
       48 GETTABLEKS                       R5 R0 K19 ["_inProgressOperationsByRootID"]
       50 GETTABLEKS                       R6 R0 K20 ["_initialSnapshotsByRootID"]
       52 CALL                             R3 3 1
       53 SETTABLEKS                       R3 R0 K21 ["_dataFrontend"]
       55 GETUPVAL                         R3 1
       56 GETTABLEKS                       R3 R3 K22 ["splice"]
       58 GETTABLEKS                       R4 R0 K12 ["_dataBackends"]
       60 LOADN                            R5 0
       61 CALL                             R3 2 0
       62 LOADK                            R5 K23 ["isProcessingData"]
       63 NAMECALL                         R3 R0 K24 ["emit"]
       65 CALL                             R3 2 0
       66 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_bridge"]
        2 LOADK                            R3 K1 ["operations"]
        3 GETTABLEKS                       R4 R0 K2 ["onBridgeOperations"]
        5 NAMECALL                         R1 R1 K3 ["removeListener"]
        7 CALL                             R1 3 0
        8 GETTABLEKS                       R1 R0 K0 ["_bridge"]
       10 LOADK                            R3 K4 ["profilingData"]
       11 GETTABLEKS                       R4 R0 K5 ["onBridgeProfilingData"]
       13 NAMECALL                         R1 R1 K3 ["removeListener"]
       15 CALL                             R1 3 0
       16 GETTABLEKS                       R1 R0 K0 ["_bridge"]
       18 LOADK                            R3 K6 ["profilingStatus"]
       19 GETTABLEKS                       R4 R0 K7 ["onProfilingStatus"]
       21 NAMECALL                         R1 R1 K3 ["removeListener"]
       23 CALL                             R1 3 0
       24 GETTABLEKS                       R1 R0 K0 ["_bridge"]
       26 LOADK                            R3 K8 ["shutdown"]
       27 GETTABLEKS                       R4 R0 K9 ["onBridgeShutdown"]
       29 NAMECALL                         R1 R1 K3 ["removeListener"]
       31 CALL                             R1 3 0
       32 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R1 ; [+80]
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["splice"]
        4 GETTABLEKS                       R3 R0 K1 ["_dataBackends"]
        6 LOADN                            R4 0
        7 CALL                             R2 2 0
        8 LOADNIL                          R2
        9 SETTABLEKS                       R2 R0 K2 ["_dataFrontend"]
       11 GETTABLEKS                       R2 R0 K3 ["_initialRendererIDs"]
       13 NAMECALL                         R2 R2 K4 ["clear"]
       15 CALL                             R2 1 0
       16 GETTABLEKS                       R2 R0 K5 ["_initialSnapshotsByRootID"]
       18 NAMECALL                         R2 R2 K4 ["clear"]
       20 CALL                             R2 1 0
       21 GETTABLEKS                       R2 R0 K6 ["_inProgressOperationsByRootID"]
       23 NAMECALL                         R2 R2 K4 ["clear"]
       25 CALL                             R2 1 0
       26 GETTABLEKS                       R2 R0 K7 ["_rendererIDsThatReportedProfilingData"]
       28 NAMECALL                         R2 R2 K4 ["clear"]
       30 CALL                             R2 1 0
       31 GETTABLEKS                       R2 R0 K8 ["_rendererQueue"]
       33 NAMECALL                         R2 R2 K4 ["clear"]
       35 CALL                             R2 1 0
       36 GETTABLEKS                       R2 R0 K9 ["_store"]
       38 NAMECALL                         R2 R2 K10 ["getRootIDToRendererID"]
       40 CALL                             R2 1 3
       41 FORGPREP                         R2
       42 GETTABLEKS                       R7 R0 K3 ["_initialRendererIDs"]
       44 MOVE                             R9 R6
       45 NAMECALL                         R7 R7 K11 ["has"]
       47 CALL                             R7 2 1
       48 JUMPIF                           R7 ; [+6]
       49 GETTABLEKS                       R7 R0 K3 ["_initialRendererIDs"]
       51 MOVE                             R9 R6
       52 NAMECALL                         R7 R7 K12 ["add"]
       54 CALL                             R7 2 0
       55 FORGLOOP                         R2 2 ; [-14]
       57 GETTABLEKS                       R2 R0 K9 ["_store"]
       59 NAMECALL                         R2 R2 K13 ["getRoots"]
       61 CALL                             R2 1 3
       62 FORGPREP                         R2
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R7 R7 K14 ["new"]
       66 CALL                             R7 0 1
       67 GETTABLEKS                       R8 R0 K5 ["_initialSnapshotsByRootID"]
       69 MOVE                             R10 R6
       70 MOVE                             R11 R7
       71 NAMECALL                         R8 R8 K15 ["set"]
       73 CALL                             R8 3 0
       74 MOVE                             R10 R6
       75 MOVE                             R11 R7
       76 NAMECALL                         R8 R0 K16 ["_takeProfilingSnapshotRecursive"]
       78 CALL                             R8 3 0
       79 FORGLOOP                         R2 2 ; [-17]
       81 GETTABLEKS                       R2 R0 K17 ["_isProfiling"]
       83 JUMPIFEQ                         R2 R1 ; [+58]
       85 SETTABLEKS                       R1 R0 K17 ["_isProfiling"]
       87 GETTABLEKS                       R2 R0 K18 ["_cache"]
       89 NAMECALL                         R2 R2 K19 ["invalidate"]
       91 CALL                             R2 1 0
       92 LOADK                            R4 K20 ["isProfiling"]
       93 NAMECALL                         R2 R0 K21 ["emit"]
       95 CALL                             R2 2 0
       96 JUMPIF                           R1 ; [+45]
       97 GETUPVAL                         R2 0
       98 GETTABLEKS                       R2 R2 K0 ["splice"]
      100 GETTABLEKS                       R3 R0 K1 ["_dataBackends"]
      102 LOADN                            R4 0
      103 CALL                             R2 2 0
      104 GETTABLEKS                       R2 R0 K8 ["_rendererQueue"]
      106 NAMECALL                         R2 R2 K4 ["clear"]
      108 CALL                             R2 1 0
      109 GETTABLEKS                       R2 R0 K7 ["_rendererIDsThatReportedProfilingData"]
      111 LOADNIL                          R3
      112 LOADNIL                          R4
      113 FORGPREP                         R2
      114 GETTABLEKS                       R7 R0 K8 ["_rendererQueue"]
      116 MOVE                             R9 R6
      117 NAMECALL                         R7 R7 K11 ["has"]
      119 CALL                             R7 2 1
      120 JUMPIF                           R7 ; [+15]
      121 GETTABLEKS                       R7 R0 K8 ["_rendererQueue"]
      123 MOVE                             R9 R6
      124 NAMECALL                         R7 R7 K12 ["add"]
      126 CALL                             R7 2 0
      127 GETTABLEKS                       R7 R0 K22 ["_bridge"]
      129 LOADK                            R9 K23 ["getProfilingData"]
      130 DUPTABLE                         R10 K25 [{"rendererID"}]
      131 SETTABLEKS                       R6 R10 K24 ["rendererID"]
      133 NAMECALL                         R7 R7 K26 ["send"]
      135 CALL                             R7 3 0
      136 FORGLOOP                         R2 2 ; [-23]
      138 LOADK                            R4 K27 ["isProcessingData"]
      139 NAMECALL                         R2 R0 K21 ["emit"]
      141 CALL                             R2 2 0
      142 RETURN                           R0 0

PROTO_6:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["onBridgeOperations"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_7:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["onBridgeProfilingData"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_8:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["onProfilingStatus"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_9:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["onBridgeShutdown"]
        5 CALL                             R0 -1 -1
        6 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R4 R4 K0 ["new"]
        3 CALL                             R4 0 1
        4 GETUPVAL                         R5 1
        5 FASTCALL2                        SETMETATABLE R4 R5 ; [+3]
        7 GETIMPORT                        R3 K2 [setmetatable]
        9 CALL                             R3 2 1
       10 NEWTABLE                         R4 0 0
       12 SETTABLEKS                       R4 R3 K3 ["_dataBackends"]
       14 LOADNIL                          R4
       15 SETTABLEKS                       R4 R3 K4 ["_dataFrontend"]
       17 GETUPVAL                         R4 2
       18 GETTABLEKS                       R4 R4 K0 ["new"]
       20 CALL                             R4 0 1
       21 SETTABLEKS                       R4 R3 K5 ["_initialRendererIDs"]
       23 GETUPVAL                         R4 3
       24 GETTABLEKS                       R4 R4 K0 ["new"]
       26 CALL                             R4 0 1
       27 SETTABLEKS                       R4 R3 K6 ["_initialSnapshotsByRootID"]
       29 GETUPVAL                         R4 3
       30 GETTABLEKS                       R4 R4 K0 ["new"]
       32 CALL                             R4 0 1
       33 SETTABLEKS                       R4 R3 K7 ["_inProgressOperationsByRootID"]
       35 SETTABLEKS                       R2 R3 K8 ["_isProfiling"]
       37 GETUPVAL                         R4 2
       38 GETTABLEKS                       R4 R4 K0 ["new"]
       40 CALL                             R4 0 1
       41 SETTABLEKS                       R4 R3 K9 ["_rendererIDsThatReportedProfilingData"]
       43 GETUPVAL                         R4 2
       44 GETTABLEKS                       R4 R4 K0 ["new"]
       46 CALL                             R4 0 1
       47 SETTABLEKS                       R4 R3 K10 ["_rendererQueue"]
       49 SETTABLEKS                       R0 R3 K11 ["_bridge"]
       51 SETTABLEKS                       R1 R3 K12 ["_store"]
       53 DUPCLOSURE                       R4 K13 [PROTO_1]
       54 CAPTURE                          UPVAL U4
       55 SETTABLEKS                       R4 R3 K14 ["_takeProfilingSnapshotRecursive"]
       57 DUPCLOSURE                       R4 K15 [PROTO_2]
       58 CAPTURE                          UPVAL U3
       59 SETTABLEKS                       R4 R3 K16 ["onBridgeOperations"]
       61 DUPCLOSURE                       R4 K17 [PROTO_3]
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          UPVAL U4
       64 SETTABLEKS                       R4 R3 K18 ["onBridgeProfilingData"]
       66 DUPCLOSURE                       R4 K19 [PROTO_4]
       67 SETTABLEKS                       R4 R3 K20 ["onBridgeShutdown"]
       69 DUPCLOSURE                       R4 K21 [PROTO_5]
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          UPVAL U3
       72 SETTABLEKS                       R4 R3 K22 ["onProfilingStatus"]
       74 LOADK                            R6 K23 ["operations"]
       75 NEWCLOSURE                       R7 P5
       76 CAPTURE                          VAL R3
       77 NAMECALL                         R4 R0 K24 ["addListener"]
       79 CALL                             R4 3 0
       80 LOADK                            R6 K25 ["profilingData"]
       81 NEWCLOSURE                       R7 P6
       82 CAPTURE                          VAL R3
       83 NAMECALL                         R4 R0 K24 ["addListener"]
       85 CALL                             R4 3 0
       86 LOADK                            R6 K26 ["profilingStatus"]
       87 NEWCLOSURE                       R7 P7
       88 CAPTURE                          VAL R3
       89 NAMECALL                         R4 R0 K24 ["addListener"]
       91 CALL                             R4 3 0
       92 LOADK                            R6 K27 ["shutdown"]
       93 NEWCLOSURE                       R7 P8
       94 CAPTURE                          VAL R3
       95 NAMECALL                         R4 R0 K24 ["addListener"]
       97 CALL                             R4 3 0
       98 LOADK                            R6 K28 ["getProfilingStatus"]
       99 NAMECALL                         R4 R0 K29 ["send"]
      101 CALL                             R4 2 0
      102 GETUPVAL                         R4 6
      103 GETTABLEKS                       R4 R4 K0 ["new"]
      105 MOVE                             R5 R3
      106 CALL                             R4 1 1
      107 SETTABLEKS                       R4 R3 K30 ["_cache"]
      109 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_dataFrontend"]
        2 JUMPIFEQKNIL                     R3 ; [+17]
        4 GETTABLEKS                       R3 R0 K0 ["_dataFrontend"]
        6 GETTABLEKS                       R3 R3 K1 ["dataForRoots"]
        8 MOVE                             R5 R1
        9 NAMECALL                         R3 R3 K2 ["get"]
       11 CALL                             R3 2 1
       12 JUMPIFEQKNIL                     R3 ; [+7]
       14 GETTABLEKS                       R5 R3 K3 ["commitData"]
       16 GETTABLE                         R4 R5 R2
       17 JUMPIFEQKNIL                     R4 ; [+2]
       19 RETURN                           R4 1
       20 GETIMPORT                        R3 K5 [error]
       22 GETIMPORT                        R4 K8 [string.format]
       24 LOADK                            R5 K9 ["Could not find commit data for root \"%s\" and commit %s"]
       25 FASTCALL1                        TOSTRING R1 ; [+3]
       26 MOVE                             R7 R1
       27 GETIMPORT                        R6 K11 [tostring]
       29 CALL                             R6 1 1
       30 FASTCALL1                        TOSTRING R2 ; [+3]
       31 MOVE                             R8 R2
       32 GETIMPORT                        R7 K11 [tostring]
       34 CALL                             R7 1 1
       35 CALL                             R4 3 -1
       36 CALL                             R3 -1 0
       37 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_dataFrontend"]
        2 JUMPIFEQKNIL                     R2 ; [+12]
        4 GETTABLEKS                       R2 R0 K0 ["_dataFrontend"]
        6 GETTABLEKS                       R2 R2 K1 ["dataForRoots"]
        8 MOVE                             R4 R1
        9 NAMECALL                         R2 R2 K2 ["get"]
       11 CALL                             R2 2 1
       12 JUMPIFEQKNIL                     R2 ; [+2]
       14 RETURN                           R2 1
       15 GETIMPORT                        R2 K4 [error]
       17 GETIMPORT                        R3 K7 [string.format]
       19 LOADK                            R4 K8 ["Could not find commit data for root \"%s\""]
       20 FASTCALL1                        TOSTRING R1 ; [+3]
       21 MOVE                             R6 R1
       22 GETIMPORT                        R5 K10 [tostring]
       24 CALL                             R5 1 1
       25 CALL                             R3 2 -1
       26 CALL                             R2 -1 0
       27 RETURN                           R0 0

PROTO_13:
        0 LOADB                            R1 0
        1 GETTABLEKS                       R2 R0 K0 ["_dataFrontend"]
        3 JUMPIFEQKNIL                     R2 ; [+12]
        5 GETTABLEKS                       R2 R0 K0 ["_dataFrontend"]
        7 GETTABLEKS                       R2 R2 K1 ["dataForRoots"]
        9 GETTABLEKS                       R2 R2 K2 ["size"]
       11 LOADN                            R3 0
       12 JUMPIFLT                         R3 R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_14:
        0 LOADB                            R1 1
        1 GETTABLEKS                       R2 R0 K0 ["_rendererQueue"]
        3 GETTABLEKS                       R2 R2 K1 ["size"]
        5 LOADN                            R3 0
        6 JUMPIFLT                         R3 R2 ; [+9]
        8 GETTABLEKS                       R3 R0 K2 ["_dataBackends"]
       10 LENGTH                           R2 R3
       11 LOADN                            R3 0
       12 JUMPIFLT                         R3 R2 ; [+2]
       14 LOADB                            R1 0 +1
       15 LOADB                            R1 1
       16 RETURN                           R1 1

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["_isProfiling"]
        2 RETURN                           R1 1

PROTO_16:
        0 GETTABLEKS                       R1 R0 K0 ["_cache"]
        2 RETURN                           R1 1

PROTO_17:
        0 JUMPIFNOTEQKNIL                  R1 ; [+4]
        2 GETTABLEKS                       R2 R0 K0 ["_dataFrontend"]
        4 RETURN                           R2 1
        5 GETTABLEKS                       R2 R0 K1 ["_isProfiling"]
        7 JUMPIFNOT                        R2 ; [+6]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["warn"]
       11 LOADK                            R3 K3 ["Profiling data cannot be updated while profiling is in progress."]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 GETUPVAL                         R2 1
       15 GETTABLEKS                       R2 R2 K4 ["splice"]
       17 GETTABLEKS                       R3 R0 K5 ["_dataBackends"]
       19 LOADN                            R4 0
       20 CALL                             R2 2 0
       21 SETTABLEKS                       R1 R0 K0 ["_dataFrontend"]
       23 GETTABLEKS                       R2 R0 K6 ["_initialRendererIDs"]
       25 NAMECALL                         R2 R2 K7 ["clear"]
       27 CALL                             R2 1 0
       28 GETTABLEKS                       R2 R0 K8 ["_initialSnapshotsByRootID"]
       30 NAMECALL                         R2 R2 K7 ["clear"]
       32 CALL                             R2 1 0
       33 GETTABLEKS                       R2 R0 K9 ["_inProgressOperationsByRootID"]
       35 NAMECALL                         R2 R2 K7 ["clear"]
       37 CALL                             R2 1 0
       38 GETTABLEKS                       R2 R0 K10 ["_cache"]
       40 NAMECALL                         R2 R2 K11 ["invalidate"]
       42 CALL                             R2 1 0
       43 LOADK                            R4 K12 ["profilingData"]
       44 NAMECALL                         R2 R0 K13 ["emit"]
       46 CALL                             R2 2 0
       47 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["splice"]
        3 GETTABLEKS                       R2 R0 K1 ["_dataBackends"]
        5 LOADN                            R3 0
        6 CALL                             R1 2 0
        7 LOADNIL                          R1
        8 SETTABLEKS                       R1 R0 K2 ["_dataFrontend"]
       10 GETTABLEKS                       R1 R0 K3 ["_initialRendererIDs"]
       12 NAMECALL                         R1 R1 K4 ["clear"]
       14 CALL                             R1 1 0
       15 GETTABLEKS                       R1 R0 K5 ["_initialSnapshotsByRootID"]
       17 NAMECALL                         R1 R1 K4 ["clear"]
       19 CALL                             R1 1 0
       20 GETTABLEKS                       R1 R0 K6 ["_inProgressOperationsByRootID"]
       22 NAMECALL                         R1 R1 K4 ["clear"]
       24 CALL                             R1 1 0
       25 GETTABLEKS                       R1 R0 K7 ["_rendererQueue"]
       27 NAMECALL                         R1 R1 K4 ["clear"]
       29 CALL                             R1 1 0
       30 GETTABLEKS                       R1 R0 K8 ["_cache"]
       32 NAMECALL                         R1 R1 K9 ["invalidate"]
       34 CALL                             R1 1 0
       35 LOADK                            R3 K10 ["profilingData"]
       36 NAMECALL                         R1 R0 K11 ["emit"]
       38 CALL                             R1 2 0
       39 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_bridge"]
        2 LOADK                            R3 K1 ["startProfiling"]
        3 GETTABLEKS                       R4 R0 K2 ["_store"]
        5 NAMECALL                         R4 R4 K3 ["getRecordChangeDescriptions"]
        7 CALL                             R4 1 -1
        8 NAMECALL                         R1 R1 K4 ["send"]
       10 CALL                             R1 -1 0
       11 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["_bridge"]
        2 LOADK                            R3 K1 ["stopProfiling"]
        3 NAMECALL                         R1 R1 K2 ["send"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETIMPORT                        R1 K4 [require]
       11 GETTABLEKS                       R2 R0 K5 ["LuauPolyfill"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K6 ["Array"]
       16 GETTABLEKS                       R3 R1 K7 ["Map"]
       18 GETTABLEKS                       R4 R1 K8 ["Set"]
       20 GETTABLEKS                       R5 R1 K9 ["console"]
       22 GETIMPORT                        R6 K4 [require]
       24 GETIMPORT                        R7 K1 [script]
       26 GETTABLEKS                       R7 R7 K2 ["Parent"]
       28 GETTABLEKS                       R7 R7 K2 ["Parent"]
       30 GETTABLEKS                       R7 R7 K10 ["events"]
       32 CALL                             R6 1 1
       33 GETIMPORT                        R7 K4 [require]
       35 GETIMPORT                        R8 K1 [script]
       37 GETTABLEKS                       R8 R8 K2 ["Parent"]
       39 GETTABLEKS                       R8 R8 K11 ["views"]
       41 GETTABLEKS                       R8 R8 K12 ["Profiler"]
       43 GETTABLEKS                       R8 R8 K13 ["utils"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R7 R7 K14 ["prepareProfilingDataFrontendFromBackendAndStore"]
       48 GETIMPORT                        R8 K4 [require]
       50 GETIMPORT                        R9 K1 [script]
       52 GETTABLEKS                       R9 R9 K2 ["Parent"]
       54 GETTABLEKS                       R9 R9 K15 ["types"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K4 [require]
       59 GETIMPORT                        R10 K1 [script]
       61 GETTABLEKS                       R10 R10 K2 ["Parent"]
       63 GETTABLEKS                       R10 R10 K2 ["Parent"]
       65 GETTABLEKS                       R10 R10 K16 ["bridge"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K4 [require]
       70 GETIMPORT                        R11 K1 [script]
       72 GETTABLEKS                       R11 R11 K2 ["Parent"]
       74 GETTABLEKS                       R11 R11 K2 ["Parent"]
       76 GETTABLEKS                       R11 R11 K17 ["backend"]
       78 GETTABLEKS                       R11 R11 K15 ["types"]
       80 CALL                             R10 1 1
       81 GETIMPORT                        R11 K4 [require]
       83 GETIMPORT                        R12 K1 [script]
       85 GETTABLEKS                       R12 R12 K2 ["Parent"]
       87 GETTABLEKS                       R12 R12 K11 ["views"]
       89 GETTABLEKS                       R12 R12 K12 ["Profiler"]
       91 GETTABLEKS                       R12 R12 K15 ["types"]
       93 CALL                             R11 1 1
       94 GETIMPORT                        R12 K4 [require]
       96 GETIMPORT                        R13 K1 [script]
       98 GETTABLEKS                       R13 R13 K2 ["Parent"]
      100 GETTABLEKS                       R13 R13 K18 ["ProfilingCache"]
      102 CALL                             R12 1 1
      103 NEWTABLE                         R14 0 0
      105 DUPTABLE                         R15 K20 [{"__index"}]
      106 SETTABLEKS                       R6 R15 K19 ["__index"]
      108 FASTCALL2                        SETMETATABLE R14 R15 ; [+3]
      110 GETIMPORT                        R13 K22 [setmetatable]
      112 CALL                             R13 2 1
      113 SETTABLEKS                       R13 R13 K19 ["__index"]
      115 DUPCLOSURE                       R14 K23 [PROTO_10]
      116 CAPTURE                          VAL R6
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R4
      119 CAPTURE                          VAL R3
      120 CAPTURE                          VAL R2
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R12
      123 SETTABLEKS                       R14 R13 K24 ["new"]
      125 DUPCLOSURE                       R14 K25 [PROTO_11]
      126 SETTABLEKS                       R14 R13 K26 ["getCommitData"]
      128 DUPCLOSURE                       R14 K27 [PROTO_12]
      129 SETTABLEKS                       R14 R13 K28 ["getDataForRoot"]
      131 DUPCLOSURE                       R14 K29 [PROTO_13]
      132 SETTABLEKS                       R14 R13 K30 ["didRecordCommits"]
      134 DUPCLOSURE                       R14 K31 [PROTO_14]
      135 SETTABLEKS                       R14 R13 K32 ["isProcessingData"]
      137 DUPCLOSURE                       R14 K33 [PROTO_15]
      138 SETTABLEKS                       R14 R13 K34 ["isProfiling"]
      140 DUPCLOSURE                       R14 K35 [PROTO_16]
      141 SETTABLEKS                       R14 R13 K36 ["profilingCache"]
      143 DUPCLOSURE                       R14 K37 [PROTO_17]
      144 CAPTURE                          VAL R5
      145 CAPTURE                          VAL R2
      146 SETTABLEKS                       R14 R13 K38 ["profilingData"]
      148 DUPCLOSURE                       R14 K39 [PROTO_18]
      149 CAPTURE                          VAL R2
      150 SETTABLEKS                       R14 R13 K40 ["clear"]
      152 DUPCLOSURE                       R14 K41 [PROTO_19]
      153 SETTABLEKS                       R14 R13 K42 ["startProfiling"]
      155 DUPCLOSURE                       R14 K43 [PROTO_20]
      156 SETTABLEKS                       R14 R13 K44 ["stopProfiling"]
      158 RETURN                           R13 1
