PROTO_0:
        0 DUPTABLE                         R3 K9 [{[1], ["_settingsComponent"], ["_useWarn"], ["_signals"], ["_connections"], ["_threads"], ["_visitorRetainer"], ["_destroyed"] = False}]
        1 SETTABLEKS                       R0 R3 K0 ["_actionsComponent"]
        3 SETTABLEKS                       R1 R3 K1 ["_settingsComponent"]
        5 SETTABLEKS                       R2 R3 K2 ["_useWarn"]
        7 NEWTABLE                         R4 0 0
        9 SETTABLEKS                       R4 R3 K3 ["_signals"]
       11 NEWTABLE                         R4 0 0
       13 SETTABLEKS                       R4 R3 K4 ["_connections"]
       15 NEWTABLE                         R4 0 0
       17 SETTABLEKS                       R4 R3 K5 ["_threads"]
       19 NEWTABLE                         R5 0 0
       21 DUPTABLE                         R6 K12 [{["__mode"] = "k"}]
       22 FASTCALL2                        SETMETATABLE R5 R6 ; [+3]
       24 GETIMPORT                        R4 K14 [setmetatable]
       26 CALL                             R4 2 1
       27 SETTABLEKS                       R4 R3 K6 ["_visitorRetainer"]
       29 GETUPVAL                         R6 0
       30 FASTCALL2                        SETMETATABLE R3 R6 ; [+4]
       32 MOVE                             R5 R3
       33 GETIMPORT                        R4 K14 [setmetatable]
       35 CALL                             R4 2 0
       36 RETURN                           R3 1

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
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K3 ["_threads"]
        6 LOADB                            R2 1
        7 SETTABLE                         R2 R1 R0
        8 GETUPVAL                         R1 1
        9 CALL                             R1 0 0
       10 GETUPVAL                         R1 0
       11 GETTABLEKS                       R1 R1 K3 ["_threads"]
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
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R4 R4 K1 ["toString"]
        5 GETTABLEKS                       R5 R1 K2 ["Uri"]
        7 CALL                             R4 1 1
        8 GETTABLE                         R2 R3 R4
        9 FASTCALL2K                       ASSERT R2 K3 ; [+5]
       11 MOVE                             R4 R2
       12 LOADK                            R5 K3 ["Control item not being tracked"]
       13 GETIMPORT                        R3 K5 [assert]
       15 CALL                             R3 2 0
       16 GETTABLEKS                       R3 R1 K2 ["Uri"]
       18 GETTABLEKS                       R3 R3 K6 ["Category"]
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
       34 GETTABLEKS                       R3 R1 K2 ["Uri"]
       36 GETTABLEKS                       R3 R3 K6 ["Category"]
       38 JUMPIFNOTEQKS                    R3 K10 ["Actions"] ; [+41]
       40 GETTABLEKS                       R3 R2 K11 ["set"]
       42 GETTABLEKS                       R5 R1 K12 ["Exists"]
       44 JUMPIFNOT                        R5 ; [+18]
       45 DUPTABLE                         R4 K16 [{"state", "kind", "value"}]
       46 GETUPVAL                         R5 1
       47 GETTABLEKS                       R5 R5 K17 ["Status"]
       49 GETTABLEKS                       R5 R5 K18 ["Ready"]
       51 SETTABLEKS                       R5 R4 K13 ["state"]
       53 GETUPVAL                         R5 1
       54 GETTABLEKS                       R5 R5 K19 ["Kind"]
       56 GETTABLEKS                       R5 R5 K20 ["Action"]
       58 SETTABLEKS                       R5 R4 K14 ["kind"]
       60 SETTABLEKS                       R1 R4 K15 ["value"]
       62 JUMP                             ; [+15]
       63 DUPTABLE                         R4 K21 [{"state", "kind"}]
       64 GETUPVAL                         R5 1
       65 GETTABLEKS                       R5 R5 K17 ["Status"]
       67 GETTABLEKS                       R5 R5 K22 ["Nonexistent"]
       69 SETTABLEKS                       R5 R4 K13 ["state"]
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R5 R5 K19 ["Kind"]
       74 GETTABLEKS                       R5 R5 K20 ["Action"]
       76 SETTABLEKS                       R5 R4 K14 ["kind"]
       78 CALL                             R3 1 0
       79 RETURN                           R0 0
       80 GETTABLEKS                       R3 R2 K11 ["set"]
       82 DUPTABLE                         R4 K16 [{"state", "kind", "value"}]
       83 GETUPVAL                         R5 1
       84 GETTABLEKS                       R5 R5 K17 ["Status"]
       86 GETTABLEKS                       R5 R5 K18 ["Ready"]
       88 SETTABLEKS                       R5 R4 K13 ["state"]
       90 GETUPVAL                         R5 1
       91 GETTABLEKS                       R5 R5 K19 ["Kind"]
       93 GETTABLEKS                       R5 R5 K23 ["Setting"]
       95 SETTABLEKS                       R5 R4 K14 ["kind"]
       97 SETTABLEKS                       R1 R4 K15 ["value"]
       99 CALL                             R3 1 0
      100 RETURN                           R0 0

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
        4 GETTABLEKS                       R8 R0 K0 ["_signals"]
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K1 ["toString"]
        9 GETTABLEKS                       R10 R6 K2 ["Uri"]
       11 CALL                             R9 1 1
       12 GETTABLE                         R7 R8 R9
       13 GETTABLEKS                       R7 R7 K3 ["get"]
       15 LOADB                            R8 0
       16 CALL                             R7 1 1
       17 GETTABLEKS                       R7 R7 K4 ["state"]
       19 GETUPVAL                         R8 1
       20 GETTABLEKS                       R8 R8 K5 ["Status"]
       22 GETTABLEKS                       R8 R8 K6 ["Ready"]
       24 JUMPIFEQ                         R7 R8 ; [+5]
       26 MOVE                             R9 R6
       27 NAMECALL                         R7 R0 K7 ["_upsert"]
       29 CALL                             R7 2 0
       30 FORGLOOP                         R2 2 ; [-27]
       32 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["state"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["Status"]
        5 GETTABLEKS                       R2 R2 K2 ["Ready"]
        7 JUMPIFNOTEQ                      R1 R2 ; [+2]
        9 RETURN                           R0 1
       10 DUPTABLE                         R1 K4 [{"state", "kind"}]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R2 R2 K1 ["Status"]
       14 GETTABLEKS                       R2 R2 K5 ["Nonexistent"]
       16 SETTABLEKS                       R2 R1 K0 ["state"]
       18 GETUPVAL                         R3 1
       19 GETTABLEKS                       R3 R3 K6 ["Category"]
       21 JUMPIFNOTEQKS                    R3 K7 ["Actions"] ; [+7]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R2 R2 K8 ["Kind"]
       26 GETTABLEKS                       R2 R2 K9 ["Action"]
       28 JUMP                             ; [+5]
       29 GETUPVAL                         R2 0
       30 GETTABLEKS                       R2 R2 K8 ["Kind"]
       32 GETTABLEKS                       R2 R2 K10 ["Setting"]
       34 SETTABLEKS                       R2 R1 K3 ["kind"]
       36 RETURN                           R1 1

PROTO_9:
        0 MOVE                             R2 R1
        1 LOADNIL                          R3
        2 LOADNIL                          R4
        3 FORGPREP                         R2
        4 GETTABLEKS                       R8 R0 K0 ["_signals"]
        6 GETUPVAL                         R9 0
        7 GETTABLEKS                       R9 R9 K1 ["toString"]
        9 MOVE                             R10 R6
       10 CALL                             R9 1 1
       11 GETTABLE                         R7 R8 R9
       12 GETTABLEKS                       R7 R7 K2 ["set"]
       14 NEWCLOSURE                       R8 P0
       15 CAPTURE                          UPVAL U1
       16 CAPTURE                          VAL R6
       17 CALL                             R7 1 0
       18 FORGLOOP                         R2 2 ; [-15]
       20 RETURN                           R0 0

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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["_actionsComponent"]
        4 GETUPVAL                         R4 1
        5 LOADB                            R5 1
        6 NAMECALL                         R2 R2 K1 ["MultiBindToChangedAsync"]
        8 CALL                             R2 3 -1
        9 NAMECALL                         R0 R0 K2 ["_bindToChangedSignals"]
       11 CALL                             R0 -1 0
       12 GETUPVAL                         R0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R2 R2 K0 ["_actionsComponent"]
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
        1 GETUPVAL                         R2 0
        2 GETTABLEKS                       R2 R2 K0 ["_settingsComponent"]
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R2 R2 K1 ["MultiBindAsync"]
        7 CALL                             R2 2 -1
        8 NAMECALL                         R0 R0 K2 ["_bindToChangedSignals"]
       10 CALL                             R0 -1 0
       11 GETUPVAL                         R0 0
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["_settingsComponent"]
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
        8 GETUPVAL                         R10 0
        9 GETTABLEKS                       R10 R10 K0 ["toString"]
       11 MOVE                             R11 R9
       12 CALL                             R10 1 1
       13 GETTABLEKS                       R12 R0 K1 ["_signals"]
       15 GETTABLE                         R11 R12 R10
       16 JUMPIFNOTEQKNIL                  R11 ; [+56]
       18 GETUPVAL                         R11 1
       19 GETTABLEKS                       R11 R11 K2 ["createSignal"]
       21 DUPTABLE                         R12 K4 [{"state"}]
       22 GETUPVAL                         R13 2
       23 GETTABLEKS                       R13 R13 K5 ["Status"]
       25 GETTABLEKS                       R13 R13 K6 ["Loading"]
       27 SETTABLEKS                       R13 R12 K3 ["state"]
       29 GETUPVAL                         R13 3
       30 CALL                             R11 2 2
       31 GETTABLEKS                       R13 R0 K1 ["_signals"]
       33 DUPTABLE                         R14 K10 [{"get", "set", "watchingVisitors"}]
       34 SETTABLEKS                       R11 R14 K7 ["get"]
       36 SETTABLEKS                       R12 R14 K8 ["set"]
       38 NEWTABLE                         R16 0 0
       40 DUPTABLE                         R17 K13 [{["__mode"] = "k"}]
       41 FASTCALL2                        SETMETATABLE R16 R17 ; [+3]
       43 GETIMPORT                        R15 K15 [setmetatable]
       45 CALL                             R15 2 1
       46 SETTABLEKS                       R15 R14 K9 ["watchingVisitors"]
       48 SETTABLE                         R14 R13 R10
       49 GETTABLEKS                       R13 R9 K16 ["Category"]
       51 JUMPIFNOTEQKS                    R13 K17 ["Actions"] ; [+9]
       53 FASTCALL2                        TABLE_INSERT R3 R9 ; [+5]
       55 MOVE                             R14 R3
       56 MOVE                             R15 R9
       57 GETIMPORT                        R13 K20 [table.insert]
       59 CALL                             R13 2 0
       60 JUMP                             ; [+55]
       61 GETTABLEKS                       R13 R9 K16 ["Category"]
       63 JUMPIFNOTEQKS                    R13 K21 ["Settings"] ; [+52]
       65 FASTCALL2                        TABLE_INSERT R4 R9 ; [+5]
       67 MOVE                             R14 R4
       68 MOVE                             R15 R9
       69 GETIMPORT                        R13 K20 [table.insert]
       71 CALL                             R13 2 0
       72 JUMP                             ; [+43]
       73 GETTABLEKS                       R11 R9 K16 ["Category"]
       75 JUMPIFNOTEQKS                    R11 K21 ["Settings"] ; [+40]
       77 GETTABLEKS                       R12 R0 K1 ["_signals"]
       79 GETTABLE                         R11 R12 R10
       80 GETTABLEKS                       R11 R11 K7 ["get"]
       82 LOADB                            R12 0
       83 CALL                             R11 1 1
       84 GETTABLEKS                       R12 R11 K3 ["state"]
       86 GETUPVAL                         R13 2
       87 GETTABLEKS                       R13 R13 K5 ["Status"]
       89 GETTABLEKS                       R13 R13 K22 ["Ready"]
       91 JUMPIFNOTEQ                      R12 R13 ; [+24]
       93 GETTABLEKS                       R14 R11 K23 ["kind"]
       95 GETUPVAL                         R15 2
       96 GETTABLEKS                       R15 R15 K24 ["Kind"]
       98 GETTABLEKS                       R15 R15 K25 ["Setting"]
      100 JUMPIFEQ                         R14 R15 ; [+2]
      102 LOADB                            R13 0 +1
      103 LOADB                            R13 1
      104 FASTCALL2K                       ASSERT R13 K26 ; [+4]
      106 LOADK                            R14 K26 ["Mismatched control state kind"]
      107 GETIMPORT                        R12 K28 [assert]
      109 CALL                             R12 2 0
      110 GETTABLEKS                       R14 R11 K29 ["value"]
      112 MOVE                             R15 R2
      113 NAMECALL                         R12 R0 K30 ["_watchSettingActions"]
      115 CALL                             R12 3 0
      116 GETTABLEKS                       R12 R0 K1 ["_signals"]
      118 GETTABLE                         R11 R12 R10
      119 GETTABLEKS                       R11 R11 K9 ["watchingVisitors"]
      121 LOADB                            R12 1
      122 SETTABLE                         R12 R11 R2
      123 MOVE                             R11 R2
      124 MOVE                             R12 R9
      125 GETTABLEKS                       R14 R0 K1 ["_signals"]
      127 GETTABLE                         R13 R14 R10
      128 GETTABLEKS                       R13 R13 K7 ["get"]
      130 CALL                             R11 2 0
      131 FORGLOOP                         R5 2 ; [-124]
      133 LENGTH                           R5 R3
      134 LOADN                            R6 0
      135 JUMPIFNOTLT                      R6 R5 ; [+7]
      137 NEWCLOSURE                       R7 P0
      138 CAPTURE                          VAL R0
      139 CAPTURE                          VAL R3
      140 NAMECALL                         R5 R0 K31 ["_run"]
      142 CALL                             R5 2 0
      143 LENGTH                           R5 R4
      144 LOADN                            R6 0
      145 JUMPIFNOTLT                      R6 R5 ; [+7]
      147 NEWCLOSURE                       R7 P1
      148 CAPTURE                          VAL R0
      149 CAPTURE                          VAL R4
      150 NAMECALL                         R5 R0 K31 ["_run"]
      152 CALL                             R5 2 0
      153 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R1 R0 K0 ["Category"]
        2 JUMPIFEQKS                       R1 K1 ["Actions"] ; [+6]
        4 GETTABLEKS                       R1 R0 K0 ["Category"]
        6 JUMPIFEQKS                       R1 K2 ["Settings"] ; [+2]
        8 RETURN                           R0 0
        9 GETUPVAL                         R1 0
       10 GETUPVAL                         R2 1
       11 GETTABLEKS                       R2 R2 K3 ["toString"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["toString"]
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
       26 GETUPVAL                         R4 2
       27 GETTABLEKS                       R4 R4 K4 ["createSignal"]
       29 NEWTABLE                         R5 0 0
       31 CALL                             R4 1 2
       32 NEWCLOSURE                       R6 P1
       33 CAPTURE                          UPVAL U1
       34 CAPTURE                          VAL R5
       35 MOVE                             R9 R3
       36 MOVE                             R10 R6
       37 NAMECALL                         R7 R0 K5 ["_watchUris"]
       39 CALL                             R7 3 0
       40 GETTABLEKS                       R7 R0 K6 ["_visitorRetainer"]
       42 SETTABLE                         R6 R7 R4
       43 RETURN                           R4 1

PROTO_18:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_signals"]
        3 LOADNIL                          R2
        4 LOADNIL                          R3
        5 FORGPREP                         R1
        6 GETTABLEKS                       R6 R5 K1 ["get"]
        8 MOVE                             R7 R0
        9 CALL                             R6 1 1
       10 GETTABLEKS                       R6 R6 K2 ["state"]
       12 GETUPVAL                         R7 1
       13 GETTABLEKS                       R7 R7 K3 ["Status"]
       15 GETTABLEKS                       R7 R7 K4 ["Loading"]
       17 JUMPIFNOTEQ                      R6 R7 ; [+2]
       19 RETURN                           R0 0
       20 FORGLOOP                         R1 2 ; [-15]
       22 GETIMPORT                        R1 K7 [task.defer]
       24 GETUPVAL                         R2 2
       25 CALL                             R1 1 0
       26 RETURN                           R0 0

PROTO_19:
        0 RETURN                           R0 0

PROTO_20:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isCli"]
        3 CALL                             R2 0 1
        4 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        6 LOADK                            R3 K1 ["waitUntilFinishedLoading should only be called in tests"]
        7 GETIMPORT                        R1 K3 [assert]
        9 CALL                             R1 2 0
       10 GETIMPORT                        R1 K6 [coroutine.running]
       12 CALL                             R1 0 1
       13 GETUPVAL                         R2 1
       14 GETTABLEKS                       R2 R2 K7 ["createEffect"]
       16 NEWCLOSURE                       R3 P0
       17 CAPTURE                          VAL R0
       18 CAPTURE                          UPVAL U2
       19 CAPTURE                          VAL R1
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K9 [coroutine.yield]
       23 CALL                             R3 0 0
       24 MOVE                             R3 R2
       25 CALL                             R3 0 0
       26 GETUPVAL                         R3 3
       27 GETTABLEKS                       R3 R3 K10 ["act"]
       29 DUPCLOSURE                       R4 K11 [PROTO_19]
       30 CALL                             R3 1 0
       31 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["ReactRoblox"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Signals"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["StudioFoundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K6 ["Packages"]
       39 GETTABLEKS                       R6 R6 K11 ["TestLoader"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K12 ["Src"]
       46 GETTABLEKS                       R7 R7 K13 ["Types"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K12 ["Src"]
       53 GETTABLEKS                       R8 R8 K14 ["Util"]
       55 GETTABLEKS                       R8 R8 K15 ["ControlState"]
       57 CALL                             R7 1 1
       58 GETIMPORT                        R8 K5 [require]
       60 GETTABLEKS                       R9 R0 K12 ["Src"]
       62 GETTABLEKS                       R9 R9 K14 ["Util"]
       64 GETTABLEKS                       R9 R9 K16 ["visitControlUris"]
       66 CALL                             R8 1 1
       67 GETTABLEKS                       R9 R4 K14 ["Util"]
       69 GETTABLEKS                       R9 R9 K17 ["StudioUri"]
       71 GETTABLEKS                       R10 R1 K14 ["Util"]
       73 GETTABLEKS                       R10 R10 K18 ["deepEqual"]
       75 NEWTABLE                         R11 16 0
       77 SETTABLEKS                       R11 R11 K19 ["__index"]
       79 DUPCLOSURE                       R12 K20 [PROTO_0]
       80 CAPTURE                          VAL R11
       81 SETTABLEKS                       R12 R11 K21 ["new"]
       83 DUPCLOSURE                       R12 K22 [PROTO_1]
       84 SETTABLEKS                       R12 R11 K23 ["destroy"]
       86 DUPCLOSURE                       R12 K24 [PROTO_3]
       87 SETTABLEKS                       R12 R11 K25 ["_run"]
       89 DUPCLOSURE                       R12 K26 [PROTO_4]
       90 CAPTURE                          VAL R9
       91 CAPTURE                          VAL R7
       92 SETTABLEKS                       R12 R11 K27 ["_upsert"]
       94 DUPCLOSURE                       R12 K28 [PROTO_6]
       95 SETTABLEKS                       R12 R11 K29 ["_bindToChangedSignals"]
       97 DUPCLOSURE                       R12 K30 [PROTO_7]
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R7
      100 SETTABLEKS                       R12 R11 K31 ["_upsertInitialFetch"]
      102 DUPCLOSURE                       R12 K32 [PROTO_9]
      103 CAPTURE                          VAL R9
      104 CAPTURE                          VAL R7
      105 SETTABLEKS                       R12 R11 K33 ["_markNonexistentStates"]
      107 DUPCLOSURE                       R12 K34 [PROTO_10]
      108 SETTABLEKS                       R12 R11 K35 ["_watchSettingActions"]
      110 DUPCLOSURE                       R12 K36 [PROTO_13]
      111 CAPTURE                          VAL R9
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R7
      114 CAPTURE                          VAL R10
      115 SETTABLEKS                       R12 R11 K37 ["_watchUris"]
      117 DUPCLOSURE                       R12 K38 [PROTO_17]
      118 CAPTURE                          VAL R8
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R3
      121 SETTABLEKS                       R12 R11 K39 ["watchControls"]
      123 DUPCLOSURE                       R12 K40 [PROTO_20]
      124 CAPTURE                          VAL R5
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R7
      127 CAPTURE                          VAL R2
      128 SETTABLEKS                       R12 R11 K41 ["waitUntilFinishedLoading"]
      130 RETURN                           R11 1
