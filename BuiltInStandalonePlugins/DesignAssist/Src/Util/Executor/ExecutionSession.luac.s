PROTO_0:
        0 LOADN                            R1 0
        1 MOVE                             R2 R0
        2 LOADNIL                          R3
        3 LOADNIL                          R4
        4 FORGPREP                         R2
        5 ADDK                             R1 R1 K0 [1]
        6 FORGLOOP                         R2 1 ; [-2]
        8 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETTABLEKS                       R2 R0 K0 ["taskLibrary"]
        3 JUMPIFNOT                        R2 ; [+3]
        4 GETTABLEKS                       R1 R0 K0 ["taskLibrary"]
        6 JUMP                             ; [+2]
        7 GETIMPORT                        R1 K2 [task]
        9 JUMPIFNOT                        R0 ; [+6]
       10 GETTABLEKS                       R3 R0 K3 ["maxTasks"]
       12 JUMPIFNOT                        R3 ; [+3]
       13 GETTABLEKS                       R2 R0 K3 ["maxTasks"]
       15 JUMP                             ; [+1]
       16 LOADN                            R2 100
       17 JUMPIFNOT                        R0 ; [+6]
       18 GETTABLEKS                       R4 R0 K4 ["now"]
       20 JUMPIFNOT                        R4 ; [+3]
       21 GETTABLEKS                       R3 R0 K4 ["now"]
       23 JUMP                             ; [+2]
       24 GETIMPORT                        R3 K7 [os.clock]
       26 JUMPIFNOT                        R0 ; [+6]
       27 GETTABLEKS                       R5 R0 K8 ["evaluationDeadlineSeconds"]
       29 JUMPIFNOT                        R5 ; [+3]
       30 GETTABLEKS                       R4 R0 K8 ["evaluationDeadlineSeconds"]
       32 JUMP                             ; [+1]
       33 LOADN                            R4 5
       34 DUPTABLE                         R6 K23 [{["_taskLibrary"], ["_maxTasks"], ["_now"], ["_evaluationDeadlineAt"], ["_evaluationActive"] = True, ["_createdTaskCount"] = 0, ["_tasks"], ["_connections"], ["_roots"], ["_temporaries"], ["_cleaned"] = False}]
       35 SETTABLEKS                       R1 R6 K9 ["_taskLibrary"]
       37 SETTABLEKS                       R2 R6 K10 ["_maxTasks"]
       39 SETTABLEKS                       R3 R6 K11 ["_now"]
       41 MOVE                             R8 R3
       42 CALL                             R8 0 1
       43 ADD                              R7 R8 R4
       44 SETTABLEKS                       R7 R6 K12 ["_evaluationDeadlineAt"]
       46 NEWTABLE                         R7 0 0
       48 SETTABLEKS                       R7 R6 K17 ["_tasks"]
       50 NEWTABLE                         R7 0 0
       52 SETTABLEKS                       R7 R6 K18 ["_connections"]
       54 NEWTABLE                         R7 0 0
       56 SETTABLEKS                       R7 R6 K19 ["_roots"]
       58 NEWTABLE                         R7 0 0
       60 SETTABLEKS                       R7 R6 K20 ["_temporaries"]
       62 GETUPVAL                         R7 0
       63 FASTCALL2                        SETMETATABLE R6 R7 ; [+3]
       65 GETIMPORT                        R5 K25 [setmetatable]
       67 CALL                             R5 2 1
       68 RETURN                           R5 1

PROTO_2:
        0 LOADB                            R1 0
        1 SETTABLEKS                       R1 R0 K0 ["_evaluationActive"]
        3 RETURN                           R0 0

PROTO_3:
        0 ORK                              R2 R1 K0 [0.03]
        1 GETTABLEKS                       R3 R0 K1 ["_evaluationActive"]
        3 JUMPIF                           R3 ; [+7]
        4 GETTABLEKS                       R3 R0 K2 ["_taskLibrary"]
        6 GETTABLEKS                       R3 R3 K3 ["wait"]
        8 MOVE                             R4 R2
        9 CALL                             R3 1 -1
       10 RETURN                           R3 -1
       11 GETTABLEKS                       R3 R0 K4 ["_now"]
       13 GETTABLEKS                       R4 R0 K5 ["_evaluationDeadlineAt"]
       15 MOVE                             R6 R3
       16 CALL                             R6 0 1
       17 SUB                              R5 R4 R6
       18 LOADN                            R6 0
       19 JUMPIFNOTLE                      R5 R6 ; [+6]
       21 GETIMPORT                        R6 K7 [error]
       23 LOADK                            R7 K8 ["[execution-timeout] Evaluation exceeded its cooperative five-second deadline"]
       24 LOADN                            R8 2
       25 CALL                             R6 2 0
       26 GETTABLEKS                       R6 R0 K2 ["_taskLibrary"]
       28 GETTABLEKS                       R6 R6 K3 ["wait"]
       30 FASTCALL2                        MATH_MIN R2 R5 ; [+5]
       32 MOVE                             R8 R2
       33 MOVE                             R9 R5
       34 GETIMPORT                        R7 K11 [math.min]
       36 CALL                             R7 2 1
       37 CALL                             R6 1 1
       38 MOVE                             R7 R3
       39 CALL                             R7 0 1
       40 JUMPIFNOTLE                      R4 R7 ; [+6]
       42 GETIMPORT                        R7 K7 [error]
       44 LOADK                            R8 K8 ["[execution-timeout] Evaluation exceeded its cooperative five-second deadline"]
       45 LOADN                            R9 2
       46 CALL                             R7 2 0
       47 RETURN                           R6 1

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["_cleaned"]
        2 RETURN                           R1 1

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_cleaned"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETIMPORT                        R1 K2 [error]
        5 LOADK                            R2 K3 ["[execution-session-cleaned] Cannot create a task after execution-session cleanup"]
        6 LOADN                            R3 3
        7 CALL                             R1 2 0
        8 GETTABLEKS                       R1 R0 K4 ["_createdTaskCount"]
       10 GETTABLEKS                       R2 R0 K5 ["_maxTasks"]
       12 JUMPIFNOTLE                      R2 R1 ; [+15]
       14 GETIMPORT                        R1 K2 [error]
       16 LOADK                            R3 K6 ["[resource-limit-exceeded] Execution session exceeded the "]
       17 GETTABLEKS                       R7 R0 K5 ["_maxTasks"]
       19 FASTCALL1                        TOSTRING R7 ; [+2]
       20 GETIMPORT                        R6 K8 [tostring]
       22 CALL                             R6 1 1
       23 MOVE                             R4 R6
       24 LOADK                            R5 K9 ["-task creation cap"]
       25 CONCAT                           R2 R3 R5
       26 LOADN                            R3 3
       27 CALL                             R1 2 0
       28 GETTABLEKS                       R1 R0 K4 ["_createdTaskCount"]
       30 ADDK                             R1 R1 K10 [1]
       31 SETTABLEKS                       R1 R0 K4 ["_createdTaskCount"]
       33 RETURN                           R0 0

PROTO_6:
        0 GETIMPORT                        R0 K2 [coroutine.running]
        2 CALL                             R0 0 1
        3 GETIMPORT                        R1 K5 [table.pack]
        5 GETIMPORT                        R2 K7 [pcall]
        7 GETUPVAL                         R3 0
        8 GETUPVAL                         R5 1
        9 LOADN                            R6 1
       10 GETUPVAL                         R7 1
       11 GETTABLEKS                       R7 R7 K8 ["n"]
       13 FASTCALL                         TABLE_UNPACK ; [+2]
       14 GETIMPORT                        R4 K10 [table.unpack]
       16 CALL                             R4 3 -1
       17 CALL                             R2 -1 -1
       18 CALL                             R1 -1 1
       19 LOADB                            R2 1
       20 SETUPVAL                         R2 2
       21 GETUPVAL                         R2 3
       22 GETTABLEKS                       R2 R2 K11 ["_tasks"]
       24 LOADNIL                          R3
       25 SETTABLE                         R3 R2 R0
       26 GETTABLEN                        R2 R1 1
       27 JUMPIF                           R2 ; [+5]
       28 GETIMPORT                        R2 K13 [error]
       30 GETTABLEN                        R3 R1 2
       31 LOADN                            R4 0
       32 CALL                             R2 2 0
       33 LOADN                            R4 2
       34 GETTABLEKS                       R5 R1 K8 ["n"]
       36 FASTCALL3                        TABLE_UNPACK R1 R4 R5
       38 MOVE                             R3 R1
       39 GETIMPORT                        R2 K10 [table.unpack]
       41 CALL                             R2 3 -1
       42 RETURN                           R2 -1

PROTO_7:
        0 PREPVARARGS                      4
        1 NAMECALL                         R4 R0 K0 ["_assertCanCreateTask"]
        3 CALL                             R4 1 0
        4 GETIMPORT                        R4 K3 [table.pack]
        6 GETVARARGS                       R5 -1
        7 CALL                             R4 -1 1
        8 LOADB                            R5 0
        9 LOADNIL                          R6
       10 NEWCLOSURE                       R7 P0
       11 CAPTURE                          VAL R3
       12 CAPTURE                          VAL R4
       13 CAPTURE                          REF R5
       14 CAPTURE                          VAL R0
       15 JUMPIFNOTEQKS                    R1 K4 ["delay"] ; [+10]
       17 GETTABLEKS                       R8 R0 K5 ["_taskLibrary"]
       19 GETTABLEKS                       R8 R8 K4 ["delay"]
       21 ORK                              R9 R2 K6 [0]
       22 MOVE                             R10 R7
       23 CALL                             R8 2 1
       24 MOVE                             R6 R8
       25 JUMP                             ; [+6]
       26 GETTABLEKS                       R9 R0 K5 ["_taskLibrary"]
       28 GETTABLE                         R8 R9 R1
       29 MOVE                             R9 R7
       30 CALL                             R8 1 1
       31 MOVE                             R6 R8
       32 JUMPIF                           R5 ; [+5]
       33 JUMPIFNOT                        R6 ; [+4]
       34 GETTABLEKS                       R8 R0 K7 ["_tasks"]
       36 LOADB                            R9 1
       37 SETTABLE                         R9 R8 R6
       38 CLOSEUPVALS                      R5
       39 RETURN                           R6 1

PROTO_8:
        0 PREPVARARGS                      2
        1 LOADK                            R4 K0 ["spawn"]
        2 LOADNIL                          R5
        3 MOVE                             R6 R1
        4 GETVARARGS                       R7 -1
        5 NAMECALL                         R2 R0 K1 ["_schedule"]
        7 CALL                             R2 -1 1
        8 RETURN                           R2 1

PROTO_9:
        0 PREPVARARGS                      2
        1 LOADK                            R4 K0 ["defer"]
        2 LOADNIL                          R5
        3 MOVE                             R6 R1
        4 GETVARARGS                       R7 -1
        5 NAMECALL                         R2 R0 K1 ["_schedule"]
        7 CALL                             R2 -1 1
        8 RETURN                           R2 1

PROTO_10:
        0 PREPVARARGS                      3
        1 LOADK                            R5 K0 ["delay"]
        2 MOVE                             R6 R1
        3 MOVE                             R7 R2
        4 GETVARARGS                       R8 -1
        5 NAMECALL                         R3 R0 K1 ["_schedule"]
        7 CALL                             R3 -1 1
        8 RETURN                           R3 1

PROTO_11:
        0 GETTABLEKS                       R3 R0 K0 ["_tasks"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+12]
        4 GETTABLEKS                       R2 R0 K0 ["_tasks"]
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R2 R1
        8 GETIMPORT                        R2 K2 [pcall]
       10 GETTABLEKS                       R3 R0 K3 ["_taskLibrary"]
       12 GETTABLEKS                       R3 R3 K4 ["cancel"]
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_cleaned"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 NAMECALL                         R2 R1 K1 ["Disconnect"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K2 ["_connections"]
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R2 R1
       11 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["_connections"]
        2 GETTABLE                         R2 R3 R1
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETTABLEKS                       R2 R0 K0 ["_connections"]
        6 LOADNIL                          R3
        7 SETTABLE                         R3 R2 R1
        8 NAMECALL                         R2 R1 K1 ["Disconnect"]
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_cleaned"]
        2 JUMPIFNOT                        R2 ; [+22]
        3 FASTCALL1                        TYPE R1 ; [+3]
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K2 [type]
        7 CALL                             R2 1 1
        8 JUMPIFNOTEQKS                    R2 K3 ["table"] ; [+15]
       10 GETTABLEKS                       R3 R1 K4 ["unmount"]
       12 FASTCALL1                        TYPE R3 ; [+2]
       13 GETIMPORT                        R2 K2 [type]
       15 CALL                             R2 1 1
       16 JUMPIFNOTEQKS                    R2 K5 ["function"] ; [+7]
       18 GETIMPORT                        R2 K7 [pcall]
       20 GETTABLEKS                       R3 R1 K4 ["unmount"]
       22 MOVE                             R4 R1
       23 CALL                             R2 2 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R2 R0 K8 ["_roots"]
       27 LOADB                            R3 1
       28 SETTABLE                         R3 R2 R1
       29 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_cleaned"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 NAMECALL                         R2 R1 K1 ["Destroy"]
        5 CALL                             R2 1 0
        6 RETURN                           R0 0
        7 GETTABLEKS                       R2 R0 K2 ["_temporaries"]
        9 LOADB                            R3 1
       10 SETTABLE                         R3 R2 R1
       11 RETURN                           R0 0

PROTO_16:
        0 DUPTABLE                         R1 K6 [{"ownedTaskCount", "ownedConnectionCount", "ownedRootCount", "ownedTemporaryCount", "createdTaskCount", "cleaned"}]
        1 GETTABLEKS                       R3 R0 K7 ["_tasks"]
        3 LOADN                            R4 0
        4 MOVE                             R5 R3
        5 LOADNIL                          R6
        6 LOADNIL                          R7
        7 FORGPREP                         R5
        8 ADDK                             R4 R4 K8 [1]
        9 FORGLOOP                         R5 1 ; [-2]
       11 MOVE                             R2 R4
       12 SETTABLEKS                       R2 R1 K0 ["ownedTaskCount"]
       14 GETTABLEKS                       R3 R0 K9 ["_connections"]
       16 LOADN                            R4 0
       17 MOVE                             R5 R3
       18 LOADNIL                          R6
       19 LOADNIL                          R7
       20 FORGPREP                         R5
       21 ADDK                             R4 R4 K8 [1]
       22 FORGLOOP                         R5 1 ; [-2]
       24 MOVE                             R2 R4
       25 SETTABLEKS                       R2 R1 K1 ["ownedConnectionCount"]
       27 GETTABLEKS                       R3 R0 K10 ["_roots"]
       29 LOADN                            R4 0
       30 MOVE                             R5 R3
       31 LOADNIL                          R6
       32 LOADNIL                          R7
       33 FORGPREP                         R5
       34 ADDK                             R4 R4 K8 [1]
       35 FORGLOOP                         R5 1 ; [-2]
       37 MOVE                             R2 R4
       38 SETTABLEKS                       R2 R1 K2 ["ownedRootCount"]
       40 GETTABLEKS                       R3 R0 K11 ["_temporaries"]
       42 LOADN                            R4 0
       43 MOVE                             R5 R3
       44 LOADNIL                          R6
       45 LOADNIL                          R7
       46 FORGPREP                         R5
       47 ADDK                             R4 R4 K8 [1]
       48 FORGLOOP                         R5 1 ; [-2]
       50 MOVE                             R2 R4
       51 SETTABLEKS                       R2 R1 K3 ["ownedTemporaryCount"]
       53 GETTABLEKS                       R2 R0 K12 ["_createdTaskCount"]
       55 SETTABLEKS                       R2 R1 K4 ["createdTaskCount"]
       57 GETTABLEKS                       R2 R0 K13 ["_cleaned"]
       59 SETTABLEKS                       R2 R1 K5 ["cleaned"]
       61 RETURN                           R1 1

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_cleaned"]
        2 JUMPIFNOT                        R1 ; [+1]
        3 RETURN                           R0 0
        4 LOADB                            R1 1
        5 SETTABLEKS                       R1 R0 K0 ["_cleaned"]
        7 GETIMPORT                        R1 K3 [coroutine.running]
        9 CALL                             R1 0 1
       10 GETTABLEKS                       R2 R0 K4 ["_tasks"]
       12 LOADNIL                          R3
       13 LOADNIL                          R4
       14 FORGPREP                         R2
       15 JUMPIFEQ                         R5 R1 ; [+9]
       17 GETIMPORT                        R7 K6 [pcall]
       19 GETTABLEKS                       R8 R0 K7 ["_taskLibrary"]
       21 GETTABLEKS                       R8 R8 K8 ["cancel"]
       23 MOVE                             R9 R5
       24 CALL                             R7 2 0
       25 FORGLOOP                         R2 1 ; [-11]
       27 GETIMPORT                        R2 K11 [table.clear]
       29 GETTABLEKS                       R3 R0 K4 ["_tasks"]
       31 CALL                             R2 1 0
       32 GETTABLEKS                       R2 R0 K12 ["_connections"]
       34 LOADNIL                          R3
       35 LOADNIL                          R4
       36 FORGPREP                         R2
       37 NAMECALL                         R7 R5 K13 ["Disconnect"]
       39 CALL                             R7 1 0
       40 FORGLOOP                         R2 1 ; [-4]
       42 GETIMPORT                        R2 K11 [table.clear]
       44 GETTABLEKS                       R3 R0 K12 ["_connections"]
       46 CALL                             R2 1 0
       47 GETTABLEKS                       R2 R0 K14 ["_roots"]
       49 LOADNIL                          R3
       50 LOADNIL                          R4
       51 FORGPREP                         R2
       52 FASTCALL1                        TYPE R5 ; [+3]
       53 MOVE                             R8 R5
       54 GETIMPORT                        R7 K16 [type]
       56 CALL                             R7 1 1
       57 JUMPIFNOTEQKS                    R7 K9 ["table"] ; [+15]
       59 GETTABLEKS                       R8 R5 K17 ["unmount"]
       61 FASTCALL1                        TYPE R8 ; [+2]
       62 GETIMPORT                        R7 K16 [type]
       64 CALL                             R7 1 1
       65 JUMPIFNOTEQKS                    R7 K18 ["function"] ; [+7]
       67 GETIMPORT                        R7 K6 [pcall]
       69 GETTABLEKS                       R8 R5 K17 ["unmount"]
       71 MOVE                             R9 R5
       72 CALL                             R7 2 0
       73 FORGLOOP                         R2 1 ; [-22]
       75 GETIMPORT                        R2 K11 [table.clear]
       77 GETTABLEKS                       R3 R0 K14 ["_roots"]
       79 CALL                             R2 1 0
       80 GETTABLEKS                       R2 R0 K19 ["_temporaries"]
       82 LOADNIL                          R3
       83 LOADNIL                          R4
       84 FORGPREP                         R2
       85 GETIMPORT                        R7 K6 [pcall]
       87 GETTABLEKS                       R8 R5 K20 ["Destroy"]
       89 MOVE                             R9 R5
       90 CALL                             R7 2 0
       91 FORGLOOP                         R2 1 ; [-7]
       93 GETIMPORT                        R2 K11 [table.clear]
       95 GETTABLEKS                       R3 R0 K19 ["_temporaries"]
       97 CALL                             R2 1 0
       98 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 32 0
        3 SETTABLEKS                       R0 R0 K0 ["__index"]
        5 DUPCLOSURE                       R1 K1 [PROTO_0]
        6 DUPCLOSURE                       R2 K2 [PROTO_1]
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R2 R0 K3 ["new"]
       10 DUPCLOSURE                       R2 K4 [PROTO_2]
       11 SETTABLEKS                       R2 R0 K5 ["finishEvaluation"]
       13 DUPCLOSURE                       R2 K6 [PROTO_3]
       14 SETTABLEKS                       R2 R0 K7 ["wait"]
       16 DUPCLOSURE                       R2 K8 [PROTO_4]
       17 SETTABLEKS                       R2 R0 K9 ["isCleaned"]
       19 DUPCLOSURE                       R2 K10 [PROTO_5]
       20 SETTABLEKS                       R2 R0 K11 ["_assertCanCreateTask"]
       22 DUPCLOSURE                       R2 K12 [PROTO_7]
       23 SETTABLEKS                       R2 R0 K13 ["_schedule"]
       25 DUPCLOSURE                       R2 K14 [PROTO_8]
       26 SETTABLEKS                       R2 R0 K15 ["spawn"]
       28 DUPCLOSURE                       R2 K16 [PROTO_9]
       29 SETTABLEKS                       R2 R0 K17 ["defer"]
       31 DUPCLOSURE                       R2 K18 [PROTO_10]
       32 SETTABLEKS                       R2 R0 K19 ["delay"]
       34 DUPCLOSURE                       R2 K20 [PROTO_11]
       35 SETTABLEKS                       R2 R0 K21 ["cancel"]
       37 DUPCLOSURE                       R2 K22 [PROTO_12]
       38 SETTABLEKS                       R2 R0 K23 ["registerConnection"]
       40 DUPCLOSURE                       R2 K24 [PROTO_13]
       41 SETTABLEKS                       R2 R0 K25 ["releaseConnection"]
       43 DUPCLOSURE                       R2 K26 [PROTO_14]
       44 SETTABLEKS                       R2 R0 K27 ["registerRoot"]
       46 DUPCLOSURE                       R2 K28 [PROTO_15]
       47 SETTABLEKS                       R2 R0 K29 ["registerTemporary"]
       49 DUPCLOSURE                       R2 K30 [PROTO_16]
       50 SETTABLEKS                       R2 R0 K31 ["getMetrics"]
       52 DUPCLOSURE                       R2 K32 [PROTO_17]
       53 SETTABLEKS                       R2 R0 K33 ["cleanup"]
       55 DUPTABLE                         R2 K38 [{["new"], ["DEFAULT_MAX_TASKS"] = 100, ["DEFAULT_EVALUATION_DEADLINE_SECONDS"] = 5}]
       56 GETTABLEKS                       R3 R0 K3 ["new"]
       58 SETTABLEKS                       R3 R2 K3 ["new"]
       60 RETURN                           R2 1
