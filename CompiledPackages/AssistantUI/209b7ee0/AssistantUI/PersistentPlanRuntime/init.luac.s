PROTO_0:
        0 LENGTH                           R1 R0
        1 JUMPIFNOTEQKN                    R1 K0 [0] ; [+3]
        3 LOADB                            R1 0
        4 RETURN                           R1 1
        5 MOVE                             R1 R0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETTABLEKS                       R6 R5 K1 ["state"]
       11 JUMPIFEQKS                       R6 K2 ["completed"] ; [+3]
       13 LOADB                            R6 0
       14 RETURN                           R6 1
       15 FORGLOOP                         R1 2 ; [-7]
       17 LOADB                            R1 1
       18 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 GETTABLEKS                       R1 R2 K1 ["plan"]
        4 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 SETTABLEKS                       R1 R2 K1 ["plan"]
        4 GETTABLEKS                       R3 R0 K0 ["_state"]
        6 GETTABLEKS                       R2 R3 K2 ["onChanged"]
        8 NAMECALL                         R2 R2 K3 ["Fire"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_3:
        0 LOADNIL                          R4
        1 NAMECALL                         R2 R0 K0 ["setPlan"]
        3 CALL                             R2 2 0
        4 JUMPIFNOT                        R1 ; [+12]
        5 GETTABLEKS                       R2 R1 K1 ["rejected"]
        7 JUMPIFNOT                        R2 ; [+9]
        8 GETTABLEKS                       R3 R1 K3 ["threadId"]
       10 ORK                              R2 R3 K2 ["__default_thread__"]
       11 GETTABLEKS                       R4 R0 K4 ["_state"]
       13 GETTABLEKS                       R3 R4 K5 ["planModeStateByThread"]
       15 LOADK                            R4 K1 ["rejected"]
       16 SETTABLE                         R4 R3 R2
       17 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R3 1
        1 JUMPIFLT                         R1 R3 ; [+4]
        3 MODK                             R3 R1 K0 [1]
        4 JUMPIFEQKN                       R3 K1 [0] ; [+3]
        6 LOADK                            R3 K2 ["index_out_of_range"]
        7 RETURN                           R3 1
        8 GETTABLEKS                       R4 R0 K3 ["_state"]
       10 GETTABLEKS                       R3 R4 K4 ["plan"]
       12 JUMPIF                           R3 ; [+2]
       13 LOADK                            R4 K5 ["no_active_plan"]
       14 RETURN                           R4 1
       15 GETTABLEKS                       R5 R3 K6 ["todo"]
       17 GETTABLE                         R4 R5 R1
       18 JUMPIF                           R4 ; [+2]
       19 LOADK                            R5 K2 ["index_out_of_range"]
       20 RETURN                           R5 1
       21 GETTABLEKS                       R5 R4 K7 ["state"]
       23 JUMPIFNOTEQ                      R5 R2 ; [+3]
       25 LOADK                            R5 K8 ["already_in_state"]
       26 RETURN                           R5 1
       27 GETIMPORT                        R5 K11 [table.clone]
       29 GETTABLEKS                       R6 R3 K6 ["todo"]
       31 CALL                             R5 1 1
       32 DUPTABLE                         R6 K13 [{"text", "state"}]
       33 GETTABLEKS                       R7 R4 K12 ["text"]
       35 SETTABLEKS                       R7 R6 K12 ["text"]
       37 SETTABLEKS                       R2 R6 K7 ["state"]
       39 SETTABLE                         R6 R5 R1
       40 JUMPIFNOTEQKS                    R2 K14 ["completed"] ; [+25]
       42 LENGTH                           R7 R5
       43 JUMPIFNOTEQKN                    R7 K1 [0] ; [+3]
       45 LOADB                            R6 0
       46 JUMP                             ; [+13]
       47 MOVE                             R7 R5
       48 LOADNIL                          R8
       49 LOADNIL                          R9
       50 FORGPREP                         R7
       51 GETTABLEKS                       R12 R11 K7 ["state"]
       53 JUMPIFEQKS                       R12 K14 ["completed"] ; [+3]
       55 LOADB                            R6 0
       56 JUMP                             ; [+3]
       57 FORGLOOP                         R7 2 ; [-7]
       59 LOADB                            R6 1
       60 JUMPIFNOT                        R6 ; [+5]
       61 LOADNIL                          R8
       62 NAMECALL                         R6 R0 K15 ["setPlan"]
       64 CALL                             R6 2 0
       65 JUMP                             ; [+18]
       66 DUPTABLE                         R8 K19 [{"title", "summary", "completeDescription", "todo"}]
       67 GETTABLEKS                       R9 R3 K16 ["title"]
       69 SETTABLEKS                       R9 R8 K16 ["title"]
       71 GETTABLEKS                       R9 R3 K17 ["summary"]
       73 SETTABLEKS                       R9 R8 K17 ["summary"]
       75 GETTABLEKS                       R9 R3 K18 ["completeDescription"]
       77 SETTABLEKS                       R9 R8 K18 ["completeDescription"]
       79 SETTABLEKS                       R5 R8 K6 ["todo"]
       81 NAMECALL                         R6 R0 K15 ["setPlan"]
       83 CALL                             R6 2 0
       84 LOADK                            R6 K20 ["updated"]
       85 RETURN                           R6 1

PROTO_5:
        0 MOVE                             R4 R1
        1 LOADK                            R5 K0 ["completed"]
        2 NAMECALL                         R2 R0 K1 ["setTodoStateByIndex"]
        4 CALL                             R2 3 -1
        5 RETURN                           R2 -1

PROTO_6:
        0 NEWTABLE                         R2 0 0
        2 GETTABLEKS                       R4 R0 K0 ["_state"]
        4 GETTABLEKS                       R3 R4 K1 ["plan"]
        6 JUMPIF                           R3 ; [+14]
        7 MOVE                             R4 R1
        8 LOADNIL                          R5
        9 LOADNIL                          R6
       10 FORGPREP                         R4
       11 FASTCALL2K                       TABLE_INSERT R2 K2 ; [+5]
       13 MOVE                             R10 R2
       14 LOADK                            R11 K2 ["no_active_plan"]
       15 GETIMPORT                        R9 K5 [table.insert]
       17 CALL                             R9 2 0
       18 FORGLOOP                         R4 1 ; [-8]
       20 RETURN                           R2 1
       21 GETIMPORT                        R4 K7 [table.clone]
       23 GETTABLEKS                       R5 R3 K8 ["todo"]
       25 CALL                             R4 1 1
       26 LOADB                            R5 0
       27 MOVE                             R6 R1
       28 LOADNIL                          R7
       29 LOADNIL                          R8
       30 FORGPREP                         R6
       31 LOADN                            R11 1
       32 JUMPIFLT                         R10 R11 ; [+6]
       34 MODK                             R11 R10 K9 [1]
       35 JUMPIFNOTEQKN                    R11 K10 [0] ; [+3]
       37 GETTABLE                         R11 R4 R10
       38 JUMPIF                           R11 ; [+8]
       39 FASTCALL2K                       TABLE_INSERT R2 K11 ; [+5]
       41 MOVE                             R12 R2
       42 LOADK                            R13 K11 ["index_out_of_range"]
       43 GETIMPORT                        R11 K5 [table.insert]
       45 CALL                             R11 2 0
       46 JUMP                             ; [+31]
       47 GETTABLE                         R12 R4 R10
       48 GETTABLEKS                       R11 R12 K12 ["state"]
       50 JUMPIFNOTEQKS                    R11 K13 ["completed"] ; [+9]
       52 FASTCALL2K                       TABLE_INSERT R2 K14 ; [+5]
       54 MOVE                             R12 R2
       55 LOADK                            R13 K14 ["already_in_state"]
       56 GETIMPORT                        R11 K5 [table.insert]
       58 CALL                             R11 2 0
       59 JUMP                             ; [+18]
       60 DUPTABLE                         R11 K16 [{"text", "state"}]
       61 GETTABLE                         R13 R4 R10
       62 GETTABLEKS                       R12 R13 K15 ["text"]
       64 SETTABLEKS                       R12 R11 K15 ["text"]
       66 LOADK                            R12 K13 ["completed"]
       67 SETTABLEKS                       R12 R11 K12 ["state"]
       69 SETTABLE                         R11 R4 R10
       70 LOADB                            R5 1
       71 FASTCALL2K                       TABLE_INSERT R2 K17 ; [+5]
       73 MOVE                             R12 R2
       74 LOADK                            R13 K17 ["updated"]
       75 GETIMPORT                        R11 K5 [table.insert]
       77 CALL                             R11 2 0
       78 FORGLOOP                         R6 2 ; [-48]
       80 JUMPIFNOT                        R5 ; [+42]
       81 LENGTH                           R7 R4
       82 JUMPIFNOTEQKN                    R7 K10 [0] ; [+3]
       84 LOADB                            R6 0
       85 JUMP                             ; [+13]
       86 MOVE                             R7 R4
       87 LOADNIL                          R8
       88 LOADNIL                          R9
       89 FORGPREP                         R7
       90 GETTABLEKS                       R12 R11 K12 ["state"]
       92 JUMPIFEQKS                       R12 K13 ["completed"] ; [+3]
       94 LOADB                            R6 0
       95 JUMP                             ; [+3]
       96 FORGLOOP                         R7 2 ; [-7]
       98 LOADB                            R6 1
       99 JUMPIFNOT                        R6 ; [+5]
      100 LOADNIL                          R8
      101 NAMECALL                         R6 R0 K18 ["setPlan"]
      103 CALL                             R6 2 0
      104 RETURN                           R2 1
      105 DUPTABLE                         R8 K22 [{"title", "summary", "completeDescription", "todo"}]
      106 GETTABLEKS                       R9 R3 K19 ["title"]
      108 SETTABLEKS                       R9 R8 K19 ["title"]
      110 GETTABLEKS                       R9 R3 K20 ["summary"]
      112 SETTABLEKS                       R9 R8 K20 ["summary"]
      114 GETTABLEKS                       R9 R3 K21 ["completeDescription"]
      116 SETTABLEKS                       R9 R8 K21 ["completeDescription"]
      118 SETTABLEKS                       R4 R8 K8 ["todo"]
      120 NAMECALL                         R6 R0 K18 ["setPlan"]
      122 CALL                             R6 2 0
      123 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 GETTABLEKS                       R1 R2 K1 ["plan"]
        4 JUMPIF                           R1 ; [+2]
        5 LOADNIL                          R2
        6 RETURN                           R2 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["formatPersistentPlanReminder"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 -1
       12 RETURN                           R2 -1

PROTO_8:
        0 ORK                              R2 R1 K0 ["__default_thread__"]
        1 GETTABLEKS                       R6 R0 K2 ["_state"]
        3 GETTABLEKS                       R5 R6 K3 ["planModeStateByThread"]
        5 GETTABLE                         R4 R5 R2
        6 ORK                              R3 R4 K1 ["inactive"]
        7 JUMPIFNOTEQKS                    R3 K4 ["active"] ; [+3]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 JUMPIFEQKS                       R3 K1 ["inactive"] ; [+3]
       13 JUMPIFNOTEQKS                    R3 K5 ["rejected"] ; [+12]
       15 GETTABLEKS                       R5 R0 K2 ["_state"]
       17 GETTABLEKS                       R4 R5 K3 ["planModeStateByThread"]
       19 LOADK                            R5 K4 ["active"]
       20 SETTABLE                         R5 R4 R2
       21 GETUPVAL                         R5 0
       22 GETTABLEKS                       R4 R5 K6 ["getEnterPlanSystemReminder"]
       24 CALL                             R4 0 -1
       25 RETURN                           R4 -1
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R4 R5 K7 ["assertNever"]
       29 MOVE                             R5 R3
       30 CALL                             R4 1 -1
       31 RETURN                           R4 -1

PROTO_9:
        0 ORK                              R2 R1 K0 ["__default_thread__"]
        1 GETTABLEKS                       R6 R0 K2 ["_state"]
        3 GETTABLEKS                       R5 R6 K3 ["planModeStateByThread"]
        5 GETTABLE                         R4 R5 R2
        6 ORK                              R3 R4 K1 ["inactive"]
        7 JUMPIFNOTEQKS                    R3 K1 ["inactive"] ; [+3]
        9 LOADNIL                          R4
       10 RETURN                           R4 1
       11 JUMPIFNOTEQKS                    R3 K4 ["rejected"] ; [+12]
       13 GETTABLEKS                       R5 R0 K2 ["_state"]
       15 GETTABLEKS                       R4 R5 K3 ["planModeStateByThread"]
       17 LOADK                            R5 K1 ["inactive"]
       18 SETTABLE                         R5 R4 R2
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K5 ["getRejectPlanSystemReminder"]
       22 CALL                             R4 0 -1
       23 RETURN                           R4 -1
       24 JUMPIFNOTEQKS                    R3 K6 ["active"] ; [+12]
       26 GETTABLEKS                       R5 R0 K2 ["_state"]
       28 GETTABLEKS                       R4 R5 K3 ["planModeStateByThread"]
       30 LOADK                            R5 K1 ["inactive"]
       31 SETTABLE                         R5 R4 R2
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K7 ["getExitPlanSystemReminder"]
       35 CALL                             R4 0 -1
       36 RETURN                           R4 -1
       37 GETUPVAL                         R5 1
       38 GETTABLEKS                       R4 R5 K8 ["assertNever"]
       40 MOVE                             R5 R3
       41 CALL                             R4 1 -1
       42 RETURN                           R4 -1

PROTO_10:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R4 R5 K0 ["AssistantMode"]
        3 GETTABLEKS                       R3 R4 K1 ["Plan"]
        5 JUMPIFNOTEQ                      R1 R3 ; [+6]
        7 MOVE                             R5 R2
        8 NAMECALL                         R3 R0 K2 ["onStartNewPlan"]
       10 CALL                             R3 2 -1
       11 RETURN                           R3 -1
       12 MOVE                             R5 R2
       13 NAMECALL                         R3 R0 K3 ["onEndPlan"]
       15 CALL                             R3 2 -1
       16 RETURN                           R3 -1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["_state"]
        2 GETTABLEKS                       R2 R3 K1 ["onChanged"]
        4 MOVE                             R4 R1
        5 NAMECALL                         R2 R2 K2 ["Connect"]
        7 CALL                             R2 2 1
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R2
       10 RETURN                           R3 1

PROTO_13:
        0 ORK                              R2 R0 K0 ["DEFAULT_SESSION_ID"]
        1 ORK                              R3 R1 K1 ["DEFAULT_THREAD_ID"]
        2 LOADK                            R5 K2 ["%*::%*"]
        3 MOVE                             R7 R2
        4 MOVE                             R8 R3
        5 NAMECALL                         R5 R5 K3 ["format"]
        7 CALL                             R5 3 1
        8 MOVE                             R4 R5
        9 RETURN                           R4 1

PROTO_14:
        0 DUPTABLE                         R0 K3 [{"plan", "planModeStateByThread", "onChanged"}]
        1 LOADNIL                          R1
        2 SETTABLEKS                       R1 R0 K0 ["plan"]
        4 NEWTABLE                         R1 0 0
        6 SETTABLEKS                       R1 R0 K1 ["planModeStateByThread"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K4 ["new"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K2 ["onChanged"]
       14 DUPTABLE                         R2 K6 [{"_state"}]
       15 SETTABLEKS                       R0 R2 K5 ["_state"]
       17 GETUPVAL                         R3 1
       18 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       20 GETIMPORT                        R1 K8 [setmetatable]
       22 CALL                             R1 2 1
       23 RETURN                           R1 1

PROTO_15:
        0 ORK                              R3 R0 K0 ["DEFAULT_SESSION_ID"]
        1 ORK                              R4 R1 K1 ["DEFAULT_THREAD_ID"]
        2 LOADK                            R5 K2 ["%*::%*"]
        3 MOVE                             R7 R3
        4 MOVE                             R8 R4
        5 NAMECALL                         R5 R5 K3 ["format"]
        7 CALL                             R5 3 1
        8 MOVE                             R2 R5
        9 GETUPVAL                         R4 0
       10 GETTABLE                         R3 R4 R2
       11 JUMPIFNOT                        R3 ; [+1]
       12 RETURN                           R3 1
       13 GETUPVAL                         R4 1
       14 CALL                             R4 0 1
       15 GETUPVAL                         R5 0
       16 SETTABLE                         R4 R5 R2
       17 RETURN                           R4 1

PROTO_16:
        0 JUMPIF                           R0 ; [+12]
        1 LOADK                            R2 K0 ["DEFAULT_SESSION_ID::DEFAULT_THREAD_ID"]
        2 GETUPVAL                         R4 0
        3 GETTABLE                         R3 R4 R2
        4 JUMPIFNOT                        R3 ; [+2]
        5 MOVE                             R1 R3
        6 RETURN                           R1 1
        7 GETUPVAL                         R4 1
        8 CALL                             R4 0 1
        9 GETUPVAL                         R5 0
       10 SETTABLE                         R4 R5 R2
       11 MOVE                             R1 R4
       12 RETURN                           R1 1
       13 GETTABLEKS                       R2 R0 K1 ["sessionId"]
       15 GETTABLEKS                       R3 R0 K2 ["threadId"]
       17 ORK                              R5 R2 K3 ["DEFAULT_SESSION_ID"]
       18 ORK                              R6 R3 K4 ["DEFAULT_THREAD_ID"]
       19 LOADK                            R7 K5 ["%*::%*"]
       20 MOVE                             R9 R5
       21 MOVE                             R10 R6
       22 NAMECALL                         R7 R7 K6 ["format"]
       24 CALL                             R7 3 1
       25 MOVE                             R4 R7
       26 GETUPVAL                         R6 0
       27 GETTABLE                         R5 R6 R4
       28 JUMPIFNOT                        R5 ; [+2]
       29 MOVE                             R1 R5
       30 RETURN                           R1 1
       31 GETUPVAL                         R6 1
       32 CALL                             R6 0 1
       33 GETUPVAL                         R7 0
       34 SETTABLE                         R6 R7 R4
       35 MOVE                             R1 R6
       36 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AssistantUI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETIMPORT                        R3 K1 [script]
       11 GETTABLEKS                       R2 R3 K6 ["SystemReminderStrings"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K7 ["Parent"]
       18 GETTABLEKS                       R3 R4 K8 ["Signal"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Types"]
       25 CALL                             R3 1 1
       26 NEWTABLE                         R4 16 0
       28 SETTABLEKS                       R4 R4 K10 ["__index"]
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 DUPCLOSURE                       R6 K12 [PROTO_1]
       32 SETTABLEKS                       R6 R4 K13 ["getPlan"]
       34 DUPCLOSURE                       R6 K14 [PROTO_2]
       35 SETTABLEKS                       R6 R4 K15 ["setPlan"]
       37 DUPCLOSURE                       R6 K16 [PROTO_3]
       38 SETTABLEKS                       R6 R4 K17 ["clearPlan"]
       40 DUPCLOSURE                       R6 K18 [PROTO_4]
       41 SETTABLEKS                       R6 R4 K19 ["setTodoStateByIndex"]
       43 DUPCLOSURE                       R6 K20 [PROTO_5]
       44 SETTABLEKS                       R6 R4 K21 ["completeTodoByIndex"]
       46 DUPCLOSURE                       R6 K22 [PROTO_6]
       47 SETTABLEKS                       R6 R4 K23 ["completeTodosByIndices"]
       49 DUPCLOSURE                       R6 K24 [PROTO_7]
       50 CAPTURE                          VAL R1
       51 SETTABLEKS                       R6 R4 K25 ["getPersistentPlanSystemReminder"]
       53 DUPCLOSURE                       R6 K26 [PROTO_8]
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R3
       56 SETTABLEKS                       R6 R4 K27 ["onStartNewPlan"]
       58 DUPCLOSURE                       R6 K28 [PROTO_9]
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R3
       61 SETTABLEKS                       R6 R4 K29 ["onEndPlan"]
       63 DUPCLOSURE                       R6 K30 [PROTO_10]
       64 CAPTURE                          VAL R3
       65 SETTABLEKS                       R6 R4 K31 ["getPlanModeSystemReminder"]
       67 DUPCLOSURE                       R6 K32 [PROTO_12]
       68 SETTABLEKS                       R6 R4 K33 ["subscribe"]
       70 NEWTABLE                         R6 0 0
       72 DUPCLOSURE                       R7 K34 [PROTO_13]
       73 DUPCLOSURE                       R8 K35 [PROTO_14]
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R4
       76 DUPCLOSURE                       R9 K36 [PROTO_15]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R8
       79 DUPCLOSURE                       R10 K37 [PROTO_16]
       80 CAPTURE                          VAL R6
       81 CAPTURE                          VAL R8
       82 DUPTABLE                         R11 K41 [{"create", "getRuntime", "getRuntimeForMeta"}]
       83 SETTABLEKS                       R8 R11 K38 ["create"]
       85 SETTABLEKS                       R9 R11 K39 ["getRuntime"]
       87 SETTABLEKS                       R10 R11 K40 ["getRuntimeForMeta"]
       89 RETURN                           R11 1
