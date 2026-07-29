PROTO_0:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["GetDebuggers"]
        3 CALL                             R0 1 3
        4 FORGPREP                         R0
        5 LOADK                            R8 K1 ["ScriptDebugger"]
        6 NAMECALL                         R6 R4 K2 ["IsA"]
        8 CALL                             R6 2 1
        9 FASTCALL2K                       ASSERT R6 K3 ; [+4]
       11 LOADK                            R7 K3 ["Not a ScriptDebugger"]
       12 GETIMPORT                        R5 K5 [assert]
       14 CALL                             R5 2 0
       15 GETTABLEKS                       R5 R4 K6 ["IsPaused"]
       17 JUMPIFNOT                        R5 ; [+2]
       18 LOADK                            R5 K7 ["paused"]
       19 RETURN                           R5 1
       20 FORGLOOP                         R0 2 ; [-16]
       22 LOADK                            R0 K8 ["unpaused"]
       23 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R2 K0 ["error: %*"]
        1 MOVE                             R4 R0
        2 NAMECALL                         R2 R2 K1 ["format"]
        4 CALL                             R2 2 1
        5 MOVE                             R1 R2
        6 RETURN                           R1 1

PROTO_2:
        0 GETIMPORT                        R0 K1 [xpcall]
        2 DUPCLOSURE                       R1 K2 [PROTO_0]
        3 CAPTURE                          UPVAL U0
        4 DUPCLOSURE                       R2 K3 [PROTO_1]
        5 CALL                             R0 2 2
        6 RETURN                           R1 1

PROTO_3:
        0 LOADB                            R0 0
        1 SETUPVAL                         R0 0
        2 RETURN                           R0 0

PROTO_4:
        0 LOADB                            R0 1
        1 GETIMPORT                        R1 K2 [Instance.new]
        3 LOADK                            R2 K3 ["BindableEvent"]
        4 CALL                             R1 1 1
        5 GETTABLEKS                       R2 R1 K4 ["Event"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          REF R0
        9 NAMECALL                         R2 R2 K5 ["Connect"]
       11 CALL                             R2 2 0
       12 NAMECALL                         R2 R1 K6 ["Fire"]
       14 CALL                             R2 1 0
       15 NAMECALL                         R2 R1 K7 ["Destroy"]
       17 CALL                             R2 1 0
       18 CLOSEUPVALS                      R0
       19 RETURN                           R0 1

PROTO_5:
        0 LOADK                            R1 K0 [""]
        1 GETTABLEKS                       R2 R0 K1 ["instanceIdsToInstance"]
        3 LOADNIL                          R3
        4 LOADNIL                          R4
        5 FORGPREP                         R2
        6 GETUPVAL                         R7 0
        7 GETTABLEKS                       R7 R7 K2 ["rootId"]
        9 JUMPIFEQ                         R5 R7 ; [+4]
       11 JUMPIFNOTLT                      R1 R5 ; [+2]
       13 MOVE                             R1 R5
       14 FORGLOOP                         R2 1 ; [-9]
       16 RETURN                           R1 1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 NEWTABLE                         R3 0 0
        4 LOADN                            R6 1
        5 MOVE                             R4 R1
        6 LOADN                            R5 1
        7 FORNPREP                         R4
        8 MOVE                             R7 R2
        9 CALL                             R7 0 1
       10 GETTABLE                         R8 R0 R7
       11 JUMPIFNOTEQKNIL                  R8 ; [+14]
       13 LOADK                            R12 K0 ["%* = NIL"]
       14 MOVE                             R14 R7
       15 NAMECALL                         R12 R12 K1 ["format"]
       17 CALL                             R12 2 1
       18 MOVE                             R11 R12
       19 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       21 MOVE                             R10 R3
       22 GETIMPORT                        R9 K4 [table.insert]
       24 CALL                             R9 2 0
       25 JUMP                             ; [+15]
       26 LOADK                            R12 K5 ["%* = %*"]
       27 MOVE                             R14 R7
       28 NAMECALL                         R15 R8 K6 ["GetFullName"]
       30 CALL                             R15 1 1
       31 NAMECALL                         R12 R12 K1 ["format"]
       33 CALL                             R12 3 1
       34 MOVE                             R11 R12
       35 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       37 MOVE                             R10 R3
       38 GETIMPORT                        R9 K4 [table.insert]
       40 CALL                             R9 2 0
       41 FORNLOOP                         R4
       42 GETIMPORT                        R4 K8 [table.concat]
       44 MOVE                             R5 R3
       45 LOADK                            R6 K9 ["   "]
       46 CALL                             R4 2 -1
       47 RETURN                           R4 -1

PROTO_7:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 ADDK                             R1 R1 K0 [1]
        6 FORGLOOP                         R2 1 ; [-2]
        8 RETURN                           R1 1

PROTO_8:
        0 GETTABLEKS                       R4 R0 K0 ["instanceIdsToInstance"]
        2 GETTABLE                         R3 R4 R1
        3 JUMPIFEQKNIL                     R3 ; [+2]
        5 RETURN                           R3 1
        6 GETTABLEKS                       R4 R0 K1 ["analytics"]
        8 GETTABLEKS                       R4 R4 K2 ["logEvent"]
       10 DUPTABLE                         R5 K11 [{["eventName"] = "LuaExplorerGetInstanceByIdFailed", ["backends"], ["throttlingPercentage"], ["description"] = "Fired when getInstanceById fails to find an instance with that instance ID.", ["lastUpdated"] = "2025-04-01"}]
       11 NEWTABLE                         R6 0 1
       13 LOADK                            R7 K12 ["Points"]
       14 SETLIST                          R6 R7 1 [1]
       16 SETTABLEKS                       R6 R5 K5 ["backends"]
       18 GETIMPORT                        R6 K14 [game]
       20 LOADK                            R8 K15 ["LuaExplorerGetInstanceByIdFailedThrottlingHundredthsPercent"]
       21 LOADN                            R9 10000
       22 NAMECALL                         R6 R6 K16 ["DefineFastInt"]
       24 CALL                             R6 3 1
       25 SETTABLEKS                       R6 R5 K6 ["throttlingPercentage"]
       27 DUPTABLE                         R6 K28 [{"context", "signalsAreDeferred", "dataModelType", "debuggerPaused", "timeElapsed", "instanceId", "largestInstanceId", "instanceIdsToInstanceCount", "instancesToInstanceIdCount", "firstIds", "otaVersion"}]
       28 SETTABLEKS                       R2 R6 K17 ["context"]
       30 GETUPVAL                         R7 0
       31 CALL                             R7 0 1
       32 SETTABLEKS                       R7 R6 K18 ["signalsAreDeferred"]
       34 GETUPVAL                         R8 1
       35 NAMECALL                         R8 R8 K29 ["IsServer"]
       37 CALL                             R8 1 1
       38 JUMPIFNOT                        R8 ; [+2]
       39 LOADK                            R7 K30 ["server"]
       40 JUMP                             ; [+8]
       41 GETUPVAL                         R8 1
       42 NAMECALL                         R8 R8 K31 ["IsClient"]
       44 CALL                             R8 1 1
       45 JUMPIFNOT                        R8 ; [+2]
       46 LOADK                            R7 K32 ["client"]
       47 JUMP                             ; [+1]
       48 LOADK                            R7 K33 ["edit"]
       49 SETTABLEKS                       R7 R6 K19 ["dataModelType"]
       51 GETIMPORT                        R8 K35 [xpcall]
       53 DUPCLOSURE                       R9 K36 [PROTO_0]
       54 CAPTURE                          UPVAL U2
       55 DUPCLOSURE                       R10 K37 [PROTO_1]
       56 CALL                             R8 2 2
       57 MOVE                             R7 R9
       58 SETTABLEKS                       R7 R6 K20 ["debuggerPaused"]
       60 GETUPVAL                         R7 3
       61 GETTABLEKS                       R7 R7 K38 ["DistributedGameTime"]
       63 SETTABLEKS                       R7 R6 K21 ["timeElapsed"]
       65 SETTABLEKS                       R1 R6 K22 ["instanceId"]
       67 LOADK                            R8 K39 [""]
       68 GETTABLEKS                       R9 R0 K0 ["instanceIdsToInstance"]
       70 LOADNIL                          R10
       71 LOADNIL                          R11
       72 FORGPREP                         R9
       73 GETUPVAL                         R14 4
       74 GETTABLEKS                       R14 R14 K40 ["rootId"]
       76 JUMPIFEQ                         R12 R14 ; [+4]
       78 JUMPIFNOTLT                      R8 R12 ; [+2]
       80 MOVE                             R8 R12
       81 FORGLOOP                         R9 1 ; [-9]
       83 MOVE                             R7 R8
       84 SETTABLEKS                       R7 R6 K23 ["largestInstanceId"]
       86 GETTABLEKS                       R8 R0 K0 ["instanceIdsToInstance"]
       88 LOADN                            R9 0
       89 MOVE                             R10 R8
       90 LOADNIL                          R11
       91 LOADNIL                          R12
       92 FORGPREP                         R10
       93 ADDK                             R9 R9 K41 [1]
       94 FORGLOOP                         R10 1 ; [-2]
       96 MOVE                             R7 R9
       97 SETTABLEKS                       R7 R6 K24 ["instanceIdsToInstanceCount"]
       99 GETTABLEKS                       R8 R0 K42 ["instancesToInstanceId"]
      101 LOADN                            R9 0
      102 MOVE                             R10 R8
      103 LOADNIL                          R11
      104 LOADNIL                          R12
      105 FORGPREP                         R10
      106 ADDK                             R9 R9 K41 [1]
      107 FORGLOOP                         R10 1 ; [-2]
      109 MOVE                             R7 R9
      110 SETTABLEKS                       R7 R6 K25 ["instancesToInstanceIdCount"]
      112 GETUPVAL                         R7 5
      113 GETTABLEKS                       R8 R0 K0 ["instanceIdsToInstance"]
      115 LOADN                            R9 10
      116 CALL                             R7 2 1
      117 SETTABLEKS                       R7 R6 K26 ["firstIds"]
      119 JUMPIFNOTEQKS                    R2 K43 ["tests ><>"] ; [+7]
      121 GETUPVAL                         R7 6
      122 LOADK                            R9 K44 ["ExplorerPlugin"]
      123 NAMECALL                         R7 R7 K45 ["GetOTAPluginVersion"]
      125 CALL                             R7 2 1
      126 JUMP                             ; [+1]
      127 LOADK                            R7 K46 ["tests"]
      128 SETTABLEKS                       R7 R6 K27 ["otaVersion"]
      130 CALL                             R4 2 0
      131 GETIMPORT                        R4 K48 [error]
      133 LOADK                            R6 K49 ["Could not find an instance by ID (%*). If you see this, please file a bug report, we are having a hard time tracking this one down! =)"]
      134 MOVE                             R8 R2
      135 NAMECALL                         R6 R6 K50 ["format"]
      137 CALL                             R6 2 1
      138 MOVE                             R5 R6
      139 CALL                             R4 1 0
      140 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["DebuggerManager"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [game]
        9 LOADK                            R3 K4 ["PluginManagementService"]
       10 NAMECALL                         R1 R1 K3 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K1 [game]
       15 LOADK                            R4 K5 ["RunService"]
       16 NAMECALL                         R2 R2 K3 ["GetService"]
       18 CALL                             R2 2 1
       19 GETIMPORT                        R3 K1 [game]
       21 LOADK                            R5 K6 ["Workspace"]
       22 NAMECALL                         R3 R3 K3 ["GetService"]
       24 CALL                             R3 2 1
       25 GETIMPORT                        R4 K8 [script]
       27 LOADK                            R6 K9 ["Explorer"]
       28 NAMECALL                         R4 R4 K10 ["FindFirstAncestor"]
       30 CALL                             R4 2 1
       31 GETIMPORT                        R5 K12 [require]
       33 GETTABLEKS                       R6 R4 K13 ["Util"]
       35 GETTABLEKS                       R6 R6 K14 ["Constants"]
       37 CALL                             R5 1 1
       38 GETIMPORT                        R6 K12 [require]
       40 GETTABLEKS                       R7 R4 K15 ["Guest"]
       42 GETTABLEKS                       R7 R7 K16 ["InstanceGuestRPCInterface"]
       44 GETTABLEKS                       R7 R7 K17 ["InstanceGuestRPCInterfaceTypes"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K12 [require]
       49 GETTABLEKS                       R8 R4 K18 ["RpcTypes"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K12 [require]
       54 GETTABLEKS                       R9 R4 K13 ["Util"]
       56 GETTABLEKS                       R9 R9 K19 ["createNextNonce"]
       58 CALL                             R8 1 1
       59 DUPCLOSURE                       R9 K20 [PROTO_2]
       60 CAPTURE                          VAL R0
       61 DUPCLOSURE                       R10 K21 [PROTO_4]
       62 DUPCLOSURE                       R11 K22 [PROTO_5]
       63 CAPTURE                          VAL R5
       64 DUPCLOSURE                       R12 K23 [PROTO_6]
       65 CAPTURE                          VAL R8
       66 DUPCLOSURE                       R13 K24 [PROTO_7]
       67 DUPCLOSURE                       R14 K25 [PROTO_8]
       68 CAPTURE                          VAL R10
       69 CAPTURE                          VAL R2
       70 CAPTURE                          VAL R0
       71 CAPTURE                          VAL R3
       72 CAPTURE                          VAL R5
       73 CAPTURE                          VAL R12
       74 CAPTURE                          VAL R1
       75 RETURN                           R14 1
