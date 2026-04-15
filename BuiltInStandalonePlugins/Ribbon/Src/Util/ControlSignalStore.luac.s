PROTO_0:
        0 DUPTABLE                         R3 K7 [{"_actionsComponent", "_settingsComponent", "_useWarn", "_signals", "_connections", "_threads", "_destroyed"}]
        1 SETTABLEKS                       R0 R3 K0 ["_actionsComponent"]
        3 SETTABLEKS                       R1 R3 K1 ["_settingsComponent"]
        5 SETTABLEKS                       R2 R3 K2 ["_useWarn"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K3 ["_signals"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K4 ["_connections"]
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R3 K5 ["_threads"]
       19 LOADB                            R4 0
       20 SETTABLEKS                       R4 R3 K6 ["_destroyed"]
       22 GETUPVAL                         R6 0
       23 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       25 MOVE                             R5 R3
       26 GETIMPORT                        R4 K9 [setmetatable]
       28 CALL                             R4 2 0
       29 RETURN                           R3 1

PROTO_1:
        0 LOADB                            R1 1
        1 SETTABLEKS                       R1 R0 K0 ["_destroyed"]
        3 GETTABLEKS                       R1 R0 K1 ["_connections"]
        5 LOADNIL                          R2
        6 LOADNIL                          R3
        7 FORGPREP                         R1
        8 NAMECALL                         R6 R5 K2 ["Disconnect"]
       10 CALL                             R6 1 0
       11 FORGLOOP                         R1 2 ; [-4]
       13 NEWTABLE                         R1 0 0
       15 SETTABLEKS                       R1 R0 K1 ["_connections"]
       17 GETTABLEKS                       R1 R0 K3 ["_threads"]
       19 LOADNIL                          R2
       20 LOADNIL                          R3
       21 FORGPREP                         R1
       22 GETIMPORT                        R6 K6 [task.cancel]
       24 MOVE                             R7 R4
       25 CALL                             R6 1 0
       26 FORGLOOP                         R1 2 ; [-5]
       28 NEWTABLE                         R1 0 0
       30 SETTABLEKS                       R1 R0 K3 ["_threads"]
       32 RETURN                           R0 0

PROTO_2:
        0 GETIMPORT                        R0 K2 [coroutine.running]
        2 CALL                             R0 0 1
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K3 ["_threads"]
        6 LOADB                            R2 1
        7 SETTABLE                         R2 R1 R0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 0
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R1 R2 K3 ["_threads"]
       13 LOADNIL                          R2
       14 SETTABLE                         R2 R1 R0
       15 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R2 R0 K0 ["_destroyed"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 RETURN                           R0 0
        4 GETIMPORT                        R2 K3 [task.spawn]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          VAL R1
        9 CALL                             R2 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R3 R0 K0 ["_signals"]
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R4 R5 K1 ["toString"]
        5 GETTABLEKS                       R5 R1 K2 ["Uri"]
        7 CALL                             R4 1 1
        8 GETTABLE                         R2 R3 R4
        9 FASTCALL2K                       ASSERT R2 K3 ; [+5]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K3 ["Control item not being tracked"]
       13 GETIMPORT                        R3 K5 [assert]
       15 CALL                             R3 2 0
       16 GETTABLEKS                       R4 R1 K2 ["Uri"]
       18 GETTABLEKS                       R3 R4 K6 ["Category"]
       20 JUMPIFNOTEQKS                    R3 K7 ["Settings"] ; [+13]
       22 GETTABLEKS                       R3 R2 K8 ["watchingVisitors"]
       24 LOADNIL                          R4
       25 LOADNIL                          R5
       26 FORGPREP                         R3
       27 MOVE                             R10 R1
       28 MOVE                             R11 R6
       29 NAMECALL                         R8 R0 K9 ["_watchSettingActions"]
       31 CALL                             R8 3 0
       32 FORGLOOP                         R3 2 ; [-6]
       34 GETTABLEKS                       R4 R1 K2 ["Uri"]
       36 GETTABLEKS                       R3 R4 K6 ["Category"]
       38 JUMPIFNOTEQKS                    R3 K10 ["Actions"] ; [+22]
       40 GETTABLEKS                       R3 R2 K11 ["set"]
       42 GETTABLEKS                       R5 R1 K12 ["Exists"]
       44 JUMPIFNOT                        R5 ; [+10]
       45 DUPTABLE                         R4 K16 [{"state", "kind", "value"}]
       46 LOADK                            R5 K17 ["ready"]
       47 SETTABLEKS                       R5 R4 K13 ["state"]
       49 LOADK                            R5 K18 ["action"]
       50 SETTABLEKS                       R5 R4 K14 ["kind"]
       52 SETTABLEKS                       R1 R4 K15 ["value"]
       54 JUMP                             ; [+4]
       55 DUPTABLE                         R4 K19 [{"state"}]
       56 LOADK                            R5 K20 ["nonexistent"]
       57 SETTABLEKS                       R5 R4 K13 ["state"]
       59 CALL                             R3 1 0
       60 RETURN                           R0 0
       61 GETTABLEKS                       R3 R2 K11 ["set"]
       63 DUPTABLE                         R4 K16 [{"state", "kind", "value"}]
       64 LOADK                            R5 K17 ["ready"]
       65 SETTABLEKS                       R5 R4 K13 ["state"]
       67 LOADK                            R5 K21 ["setting"]
       68 SETTABLEKS                       R5 R4 K14 ["kind"]
       70 SETTABLEKS                       R1 R4 K15 ["value"]
       72 CALL                             R3 1 0
       73 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_upsert"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R8 R0 K0 ["_connections"]
        6 NEWCLOSURE                       R11 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R9 R6 K1 ["Connect"]
       10 CALL                             R9 2 -1
       11 FASTCALL                         TABLE_INSERT ; [+2]
       12 GETIMPORT                        R7 K4 [table.insert]
       14 CALL                             R7 -1 0
       15 FORGLOOP                         R2 2 ; [-12]
       17 RETURN                           R0 0

PROTO_7:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R10 R0 K0 ["_signals"]
        6 GETUPVAL                         R12 0
        7 GETTABLEKS                       R11 R12 K1 ["toString"]
        9 GETTABLEKS                       R12 R6 K2 ["Uri"]
       11 CALL                             R11 1 1
       12 GETTABLE                         R9 R10 R11
       13 GETTABLEKS                       R8 R9 K3 ["get"]
       15 LOADB                            R9 0
       16 CALL                             R8 1 1
       17 GETTABLEKS                       R7 R8 K4 ["state"]
       19 JUMPIFEQKS                       R7 K5 ["ready"] ; [+5]
       21 MOVE                             R9 R6
       22 NAMECALL                         R7 R0 K6 ["_upsert"]
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 2 ; [-22]
       27 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 JUMPIFNOTEQKS                    R1 K1 ["ready"] ; [+2]
        4 RETURN                           R0 1
        5 DUPTABLE                         R1 K2 [{"state"}]
        6 LOADK                            R2 K3 ["nonexistent"]
        7 SETTABLEKS                       R2 R1 K0 ["state"]
        9 RETURN                           R1 1

PROTO_9:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R9 R0 K0 ["_signals"]
        6 GETUPVAL                         R11 0
        7 GETTABLEKS                       R10 R11 K1 ["toString"]
        9 MOVE                             R11 R6
       10 CALL                             R10 1 1
       11 GETTABLE                         R8 R9 R10
       12 GETTABLEKS                       R7 R8 K2 ["set"]
       14 DUPCLOSURE                       R8 K3 [PROTO_8]
       15 CALL                             R7 1 0
       16 FORGLOOP                         R2 2 ; [-13]
       18 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R3 R1 K0 ["Values"]
        2 JUMPIFNOT                        R3 ; [+29]
        3 NEWTABLE                         R3 0 0
        5 GETTABLEKS                       R4 R1 K0 ["Values"]
        7 LOADNIL                          R5
        8 LOADNIL                          R6
        9 FORGPREP                         R4
       10 GETTABLEKS                       R9 R8 K1 ["Action"]
       12 JUMPIFNOT                        R9 ; [+8]
       13 GETTABLEKS                       R11 R8 K1 ["Action"]
       15 FASTCALL2                        TABLE_INSERT R3 R11 ; [+4]
       17 MOVE                             R10 R3
       18 GETIMPORT                        R9 K4 [table.insert]
       20 CALL                             R9 2 0
       21 FORGLOOP                         R4 2 ; [-12]
       23 LENGTH                           R4 R3
       24 LOADN                            R5 0
       25 JUMPIFNOTLT                      R5 R4 ; [+6]
       27 MOVE                             R6 R3
       28 MOVE                             R7 R2
       29 NAMECALL                         R4 R0 K5 ["_watchUris"]
       31 CALL                             R4 3 0
       32 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["_actionsComponent"]
        4 GETUPVAL                         R4 1
        5 LOADB                            R5 1
        6 NAMECALL                         R2 R2 K1 ["MultiBindToChangedAsync"]
        8 CALL                             R2 3 -1
        9 NAMECALL                         R0 R0 K2 ["_bindToChangedSignals"]
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K0 ["_actionsComponent"]
       16 GETUPVAL                         R4 1
       17 NAMECALL                         R2 R2 K3 ["GetAsync"]
       19 CALL                             R2 2 -1
       20 NAMECALL                         R0 R0 K4 ["_upsertInitialFetch"]
       22 CALL                             R0 -1 0
       23 GETUPVAL                         R0 0
       24 GETUPVAL                         R2 1
       25 NAMECALL                         R0 R0 K5 ["_markNonexistentStates"]
       27 CALL                             R0 2 0
       28 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["_settingsComponent"]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R2 R2 K1 ["MultiBindAsync"]
        7 CALL                             R2 2 -1
        8 NAMECALL                         R0 R0 K2 ["_bindToChangedSignals"]
       10 CALL                             R0 -1 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R2 R3 K0 ["_settingsComponent"]
       15 GETUPVAL                         R4 1
       16 NAMECALL                         R2 R2 K3 ["GetAsync"]
       18 CALL                             R2 2 -1
       19 NAMECALL                         R0 R0 K4 ["_upsertInitialFetch"]
       21 CALL                             R0 -1 0
       22 GETUPVAL                         R0 0
       23 GETUPVAL                         R2 1
       24 NAMECALL                         R0 R0 K5 ["_markNonexistentStates"]
       26 CALL                             R0 2 0
       27 RETURN                           R0 0

PROTO_13:
        0 NEWTABLE                         R3 0 0
        2 NEWTABLE                         R4 0 0
        4 MOVE                             R5 R1
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 GETUPVAL                         R11 0
        9 GETTABLEKS                       R10 R11 K0 ["toString"]
       11 MOVE                             R11 R9
       12 CALL                             R10 1 1
       13 GETTABLEKS                       R12 R0 K1 ["_signals"]
       15 GETTABLE                         R11 R12 R10
       16 JUMPIFNOTEQKNIL                  R11 ; [+55]
       18 GETUPVAL                         R12 1
       19 GETTABLEKS                       R11 R12 K2 ["createSignal"]
       21 DUPTABLE                         R12 K4 [{"state"}]
       22 LOADK                            R13 K5 ["loading"]
       23 SETTABLEKS                       R13 R12 K3 ["state"]
       25 GETUPVAL                         R13 2
       26 CALL                             R11 2 2
       27 GETTABLEKS                       R13 R0 K1 ["_signals"]
       29 DUPTABLE                         R14 K9 [{"get", "set", "watchingVisitors"}]
       30 SETTABLEKS                       R11 R14 K6 ["get"]
       32 SETTABLEKS                       R12 R14 K7 ["set"]
       34 NEWTABLE                         R16 0 0
       36 DUPTABLE                         R17 K11 [{"__mode"}]
       37 LOADK                            R18 K12 ["k"]
       38 SETTABLEKS                       R18 R17 K10 ["__mode"]
       40 FASTCALL2                        SETMETATABLE R16 R17 ; [+3]
       42 GETIMPORT                        R15 K14 [setmetatable]
       44 CALL                             R15 2 1
       45 SETTABLEKS                       R15 R14 K8 ["watchingVisitors"]
       47 SETTABLE                         R14 R13 R10
       48 GETTABLEKS                       R13 R9 K15 ["Category"]
       50 JUMPIFNOTEQKS                    R13 K16 ["Actions"] ; [+9]
       52 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       54 MOVE                             R14 R3
       55 MOVE                             R15 R9
       56 GETIMPORT                        R13 K19 [table.insert]
       58 CALL                             R13 2 0
       59 JUMP                             ; [+45]
       60 GETTABLEKS                       R13 R9 K15 ["Category"]
       62 JUMPIFNOTEQKS                    R13 K20 ["Settings"] ; [+42]
       64 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       66 MOVE                             R14 R4
       67 MOVE                             R15 R9
       68 GETIMPORT                        R13 K19 [table.insert]
       70 CALL                             R13 2 0
       71 JUMP                             ; [+33]
       72 GETTABLEKS                       R11 R9 K15 ["Category"]
       74 JUMPIFNOTEQKS                    R11 K20 ["Settings"] ; [+30]
       76 GETTABLEKS                       R13 R0 K1 ["_signals"]
       78 GETTABLE                         R12 R13 R10
       79 GETTABLEKS                       R11 R12 K6 ["get"]
       81 LOADB                            R12 0
       82 CALL                             R11 1 1
       83 GETTABLEKS                       R12 R11 K3 ["state"]
       85 JUMPIFNOTEQKS                    R12 K21 ["ready"] ; [+19]
       87 GETTABLEKS                       R14 R11 K22 ["kind"]
       89 JUMPIFEQKS                       R14 K23 ["setting"] ; [+2]
       91 LOADB                            R13 0 +1
       92 LOADB                            R13 1
       93 FASTCALL2K                       ASSERT R13 K24 ; [+4]
       95 LOADK                            R14 K24 ["Mismatched control state kind"]
       96 GETIMPORT                        R12 K26 [assert]
       98 CALL                             R12 2 0
       99 GETTABLEKS                       R14 R11 K27 ["value"]
      101 MOVE                             R15 R2
      102 NAMECALL                         R12 R0 K28 ["_watchSettingActions"]
      104 CALL                             R12 3 0
      105 GETTABLEKS                       R13 R0 K1 ["_signals"]
      107 GETTABLE                         R12 R13 R10
      108 GETTABLEKS                       R11 R12 K8 ["watchingVisitors"]
      110 LOADB                            R12 1
      111 SETTABLE                         R12 R11 R2
      112 MOVE                             R11 R2
      113 MOVE                             R12 R9
      114 GETTABLEKS                       R15 R0 K1 ["_signals"]
      116 GETTABLE                         R14 R15 R10
      117 GETTABLEKS                       R13 R14 K6 ["get"]
      119 CALL                             R11 2 0
      120 FORGLOOP                         R5 2 ; [-113]
      122 LENGTH                           R5 R3
      123 LOADN                            R6 0
      124 JUMPIFNOTLT                      R6 R5 ; [+7]
      126 NEWCLOSURE                       R7 P0
      127 CAPTURE                          VAL R0
      128 CAPTURE                          VAL R3
      129 NAMECALL                         R5 R0 K29 ["_run"]
      131 CALL                             R5 2 0
      132 LENGTH                           R5 R4
      133 LOADN                            R6 0
      134 JUMPIFNOTLT                      R6 R5 ; [+7]
      136 NEWCLOSURE                       R7 P1
      137 CAPTURE                          VAL R0
      138 CAPTURE                          VAL R4
      139 NAMECALL                         R5 R0 K29 ["_run"]
      141 CALL                             R5 2 0
      142 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Category"]
        2 JUMPIFEQKS                       R1 K1 ["Actions"] ; [+6]
        4 GETTABLEKS                       R1 R0 K0 ["Category"]
        6 JUMPIFEQKS                       R1 K2 ["Settings"] ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R2 R3 K3 ["toString"]
       13 MOVE                             R3 R0
       14 CALL                             R2 1 1
       15 SETTABLE                         R0 R1 R2
       16 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R2 0
        1 GETTABLE                         R1 R0 R2
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 1
        4 GETIMPORT                        R1 K2 [table.clone]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 1
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R3 1
       10 SETTABLE                         R3 R1 R2
       11 RETURN                           R1 1

PROTO_16:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["toString"]
        3 MOVE                             R3 R0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 NEWCLOSURE                       R4 P0
        7 CAPTURE                          VAL R2
        8 CAPTURE                          VAL R1
        9 CALL                             R3 1 0
       10 RETURN                           R0 0

PROTO_17:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R3 0
        3 MOVE                             R4 R1
        4 NEWCLOSURE                       R5 P0
        5 CAPTURE                          VAL R2
        6 CAPTURE                          UPVAL U1
        7 GETTABLEKS                       R7 R0 K0 ["_useWarn"]
        9 NOT                              R6 R7
       10 CALL                             R3 3 0
       11 NEWTABLE                         R3 0 0
       13 MOVE                             R4 R2
       14 LOADNIL                          R5
       15 LOADNIL                          R6
       16 FORGPREP                         R4
       17 FASTCALL2                        TABLE_INSERT R3 R8 ; [+5]
       19 MOVE                             R10 R3
       20 MOVE                             R11 R8
       21 GETIMPORT                        R9 K3 [table.insert]
       23 CALL                             R9 2 0
       24 FORGLOOP                         R4 2 ; [-8]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R4 R5 K4 ["createSignal"]
       29 NEWTABLE                         R5 0 0
       31 CALL                             R4 1 2
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R5
       35 MOVE                             R9 R3
       36 MOVE                             R10 R6
       37 NAMECALL                         R7 R0 K5 ["_watchUris"]
       39 CALL                             R7 3 0
       40 RETURN                           R4 1

PROTO_18:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R1 R4 K0 ["_signals"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R7 R5 K1 ["get"]
        8 MOVE                             R8 R0
        9 CALL                             R7 1 1
       10 GETTABLEKS                       R6 R7 K2 ["state"]
       12 JUMPIFNOTEQKS                    R6 K3 ["loading"] ; [+2]
       14 RETURN                           R0 0
       15 FORGLOOP                         R1 2 ; [-10]
       17 GETIMPORT                        R1 K6 [task.defer]
       19 GETUPVAL                         R2 1
       20 CALL                             R1 1 0
       21 RETURN                           R0 0

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["isCli"]
        3 CALL                             R2 0 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        6 LOADK                            R3 K1 ["waitUntilFinishedLoading should only be called in tests"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETIMPORT                        R1 K6 [coroutine.running]
       12 CALL                             R1 0 1
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R2 R3 K7 ["createEffect"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          VAL R1
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [coroutine.yield]
       22 CALL                             R3 0 0
       23 MOVE                             R3 R2
       24 CALL                             R3 0 0
       25 GETUPVAL                         R4 2
       26 GETTABLEKS                       R3 R4 K10 ["act"]
       28 DUPCLOSURE                       R4 K11 [PROTO_19]
       29 CALL                             R3 1 0
       30 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R5 K9 ["Signals"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R6 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R7 K11 ["TestLoader"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K12 ["Src"]
       46 GETTABLEKS                       R7 R8 K13 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R10 R0 K12 ["Src"]
       53 GETTABLEKS                       R9 R10 K14 ["Util"]
       55 GETTABLEKS                       R8 R9 K15 ["visitControlUris"]
       57 CALL                             R7 1 1
       58 GETTABLEKS                       R9 R4 K14 ["Util"]
       60 GETTABLEKS                       R8 R9 K16 ["StudioUri"]
       62 GETTABLEKS                       R10 R1 K14 ["Util"]
       64 GETTABLEKS                       R9 R10 K17 ["deepEqual"]
       66 NEWTABLE                         R10 16 0
       68 SETTABLEKS                       R10 R10 K18 ["__index"]
       70 DUPCLOSURE                       R11 K19 [PROTO_0]
       71 CAPTURE                          VAL R10
       72 SETTABLEKS                       R11 R10 K20 ["new"]
       74 DUPCLOSURE                       R11 K21 [PROTO_1]
       75 SETTABLEKS                       R11 R10 K22 ["destroy"]
       77 DUPCLOSURE                       R11 K23 [PROTO_3]
       78 SETTABLEKS                       R11 R10 K24 ["_run"]
       80 DUPCLOSURE                       R11 K25 [PROTO_4]
       81 CAPTURE                          VAL R8
       82 SETTABLEKS                       R11 R10 K26 ["_upsert"]
       84 DUPCLOSURE                       R11 K27 [PROTO_6]
       85 SETTABLEKS                       R11 R10 K28 ["_bindToChangedSignals"]
       87 DUPCLOSURE                       R11 K29 [PROTO_7]
       88 CAPTURE                          VAL R8
       89 SETTABLEKS                       R11 R10 K30 ["_upsertInitialFetch"]
       91 DUPCLOSURE                       R11 K31 [PROTO_9]
       92 CAPTURE                          VAL R8
       93 SETTABLEKS                       R11 R10 K32 ["_markNonexistentStates"]
       95 DUPCLOSURE                       R11 K33 [PROTO_10]
       96 SETTABLEKS                       R11 R10 K34 ["_watchSettingActions"]
       98 DUPCLOSURE                       R11 K35 [PROTO_13]
       99 CAPTURE                          VAL R8
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R9
      102 SETTABLEKS                       R11 R10 K36 ["_watchUris"]
      104 DUPCLOSURE                       R11 K37 [PROTO_17]
      105 CAPTURE                          VAL R7
      106 CAPTURE                          VAL R8
      107 CAPTURE                          VAL R3
      108 SETTABLEKS                       R11 R10 K38 ["watchControls"]
      110 DUPCLOSURE                       R11 K39 [PROTO_20]
      111 CAPTURE                          VAL R5
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R2
      114 SETTABLEKS                       R11 R10 K40 ["waitUntilFinishedLoading"]
      116 RETURN                           R10 1
