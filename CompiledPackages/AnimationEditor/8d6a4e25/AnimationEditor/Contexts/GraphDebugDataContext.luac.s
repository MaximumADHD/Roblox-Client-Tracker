PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K0 ["setMap"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useState"]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R2 1 2
        8 GETUPVAL                         R5 1
        9 GETTABLEKS                       R4 R5 K1 ["useCallback"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R6 0 2
       16 MOVE                             R7 R1
       17 GETTABLEKS                       R8 R1 K2 ["setMap"]
       19 SETLIST                          R6 R7 2 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K3 ["useReplicatedState"]
       25 GETUPVAL                         R7 3
       26 GETTABLEKS                       R6 R7 K4 ["RUNTIME_DEBUG_INFO"]
       28 MOVE                             R7 R2
       29 CALL                             R5 2 0
       30 GETUPVAL                         R6 2
       31 GETTABLEKS                       R5 R6 K5 ["useBoundAction"]
       33 GETUPVAL                         R7 4
       34 GETTABLEKS                       R6 R7 K6 ["SET_RUNTIME_DEBUG_INFO"]
       36 MOVE                             R7 R4
       37 CALL                             R5 2 0
       38 DUPTABLE                         R5 K9 [{"setDebugDataAsync", "observeDebugData"}]
       39 SETTABLEKS                       R4 R5 K7 ["setDebugDataAsync"]
       41 GETTABLEKS                       R6 R1 K10 ["observe"]
       43 SETTABLEKS                       R6 R5 K8 ["observeDebugData"]
       45 GETUPVAL                         R7 1
       46 GETTABLEKS                       R6 R7 K11 ["createElement"]
       48 GETUPVAL                         R8 5
       49 GETTABLEKS                       R7 R8 K12 ["Provider"]
       51 DUPTABLE                         R8 K14 [{"value"}]
       52 SETTABLEKS                       R5 R8 K13 ["value"]
       54 GETTABLEKS                       R9 R0 K15 ["children"]
       56 CALL                             R6 3 -1
       57 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["useReplicatedStateListenerCallback"]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R3 R4 K1 ["RUNTIME_DEBUG_INFO"]
        8 GETTABLEKS                       R4 R1 K2 ["setMap"]
       10 CALL                             R2 2 0
       11 DUPTABLE                         R2 K5 [{"setDebugDataAsync", "observeDebugData"}]
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R3 R4 K6 ["useBoundAction"]
       15 GETUPVAL                         R5 3
       16 GETTABLEKS                       R4 R5 K7 ["SET_RUNTIME_DEBUG_INFO"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K3 ["setDebugDataAsync"]
       21 GETTABLEKS                       R3 R1 K8 ["observe"]
       23 SETTABLEKS                       R3 R2 K4 ["observeDebugData"]
       25 GETUPVAL                         R4 4
       26 GETTABLEKS                       R3 R4 K9 ["createElement"]
       28 GETUPVAL                         R5 5
       29 GETTABLEKS                       R4 R5 K10 ["Provider"]
       31 DUPTABLE                         R5 K12 [{"value"}]
       32 SETTABLEKS                       R2 R5 K11 ["value"]
       34 GETTABLEKS                       R6 R0 K13 ["children"]
       36 CALL                             R3 3 -1
       37 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R4 R0 K6 ["Util"]
       11 GETTABLEKS                       R3 R4 K7 ["Networking"]
       13 GETTABLEKS                       R2 R3 K8 ["NetworkUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["NodeViewTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K10 ["Parent"]
       25 GETTABLEKS                       R4 R5 K11 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K10 ["Parent"]
       32 GETTABLEKS                       R5 R6 K12 ["ReactUtils"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K10 ["Parent"]
       39 GETTABLEKS                       R6 R7 K13 ["Signals"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       46 GETTABLEKS                       R7 R8 K15 ["useSignalDispatcher"]
       48 CALL                             R6 1 1
       49 DUPTABLE                         R7 K18 [{"setDebugDataAsync", "observeDebugData"}]
       50 GETTABLEKS                       R8 R4 K19 ["createUnimplemented"]
       52 LOADK                            R9 K16 ["setDebugDataAsync"]
       53 CALL                             R8 1 1
       54 SETTABLEKS                       R8 R7 K16 ["setDebugDataAsync"]
       56 GETTABLEKS                       R8 R4 K19 ["createUnimplemented"]
       58 LOADK                            R9 K17 ["observeDebugData"]
       59 CALL                             R8 1 1
       60 SETTABLEKS                       R8 R7 K17 ["observeDebugData"]
       62 GETTABLEKS                       R8 R3 K20 ["createContext"]
       64 MOVE                             R9 R7
       65 CALL                             R8 1 1
       66 DUPTABLE                         R9 K22 [{"RUNTIME_DEBUG_INFO"}]
       67 LOADK                            R10 K23 ["GraphDebugData_DebugData"]
       68 SETTABLEKS                       R10 R9 K21 ["RUNTIME_DEBUG_INFO"]
       70 DUPTABLE                         R10 K25 [{"SET_RUNTIME_DEBUG_INFO"}]
       71 LOADK                            R11 K26 ["GraphDebugData_SetDebugData"]
       72 SETTABLEKS                       R11 R10 K24 ["SET_RUNTIME_DEBUG_INFO"]
       74 DUPCLOSURE                       R11 K27 [PROTO_1]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R10
       80 CAPTURE                          VAL R8
       81 DUPCLOSURE                       R12 K28 [PROTO_2]
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R10
       86 CAPTURE                          VAL R3
       87 CAPTURE                          VAL R8
       88 DUPTABLE                         R13 K32 [{"Context", "UIDataModelProvider", "EditableDataModelProvider"}]
       89 SETTABLEKS                       R8 R13 K29 ["Context"]
       91 SETTABLEKS                       R12 R13 K30 ["UIDataModelProvider"]
       93 SETTABLEKS                       R11 R13 K31 ["EditableDataModelProvider"]
       95 RETURN                           R13 1
