PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K0 ["setMap"]
        6 MOVE                             R2 R0
        7 CALL                             R1 1 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useState"]
        5 NEWTABLE                         R3 0 0
        7 CALL                             R2 1 2
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K1 ["useCallback"]
       11 NEWCLOSURE                       R5 P0
       12 CAPTURE                          VAL R3
       13 CAPTURE                          VAL R1
       14 NEWTABLE                         R6 0 2
       16 MOVE                             R7 R1
       17 GETTABLEKS                       R8 R1 K2 ["setMap"]
       19 SETLIST                          R6 R7 2 [1]
       21 CALL                             R4 2 1
       22 GETUPVAL                         R5 2
       23 GETTABLEKS                       R5 R5 K3 ["useReplicatedState"]
       25 GETUPVAL                         R6 3
       26 GETTABLEKS                       R6 R6 K4 ["RUNTIME_DEBUG_INFO"]
       28 MOVE                             R7 R2
       29 CALL                             R5 2 0
       30 GETUPVAL                         R5 2
       31 GETTABLEKS                       R5 R5 K5 ["useBoundAction"]
       33 GETUPVAL                         R6 4
       34 GETTABLEKS                       R6 R6 K6 ["SET_RUNTIME_DEBUG_INFO"]
       36 MOVE                             R7 R4
       37 CALL                             R5 2 0
       38 DUPTABLE                         R5 K9 [{"setDebugDataAsync", "observeDebugData"}]
       39 SETTABLEKS                       R4 R5 K7 ["setDebugDataAsync"]
       41 GETTABLEKS                       R6 R1 K10 ["observe"]
       43 SETTABLEKS                       R6 R5 K8 ["observeDebugData"]
       45 GETUPVAL                         R6 1
       46 GETTABLEKS                       R6 R6 K11 ["createElement"]
       48 GETUPVAL                         R7 5
       49 GETTABLEKS                       R7 R7 K12 ["Provider"]
       51 DUPTABLE                         R8 K14 [{"value"}]
       52 SETTABLEKS                       R5 R8 K13 ["value"]
       54 GETTABLEKS                       R9 R0 K15 ["children"]
       56 CALL                             R6 3 -1
       57 RETURN                           R6 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["useReplicatedStateListenerCallback"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["RUNTIME_DEBUG_INFO"]
        8 GETTABLEKS                       R4 R1 K2 ["setMap"]
       10 CALL                             R2 2 0
       11 DUPTABLE                         R2 K5 [{"setDebugDataAsync", "observeDebugData"}]
       12 GETUPVAL                         R3 1
       13 GETTABLEKS                       R3 R3 K6 ["useBoundAction"]
       15 GETUPVAL                         R4 3
       16 GETTABLEKS                       R4 R4 K7 ["SET_RUNTIME_DEBUG_INFO"]
       18 CALL                             R3 1 1
       19 SETTABLEKS                       R3 R2 K3 ["setDebugDataAsync"]
       21 GETTABLEKS                       R3 R1 K8 ["observe"]
       23 SETTABLEKS                       R3 R2 K4 ["observeDebugData"]
       25 GETUPVAL                         R3 4
       26 GETTABLEKS                       R3 R3 K9 ["createElement"]
       28 GETUPVAL                         R4 5
       29 GETTABLEKS                       R4 R4 K10 ["Provider"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Networking"]
       13 GETTABLEKS                       R2 R2 K8 ["NetworkUtils"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Parent"]
       20 GETTABLEKS                       R3 R3 K10 ["NodeGraphing"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K9 ["Parent"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Parent"]
       34 GETTABLEKS                       R5 R5 K12 ["ReactUtils"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K9 ["Parent"]
       41 GETTABLEKS                       R6 R6 K13 ["Signals"]
       43 CALL                             R5 1 1
       44 GETIMPORT                        R6 K5 [require]
       46 GETTABLEKS                       R7 R0 K14 ["Hooks"]
       48 GETTABLEKS                       R7 R7 K15 ["useSignalDispatcher"]
       50 CALL                             R6 1 1
       51 DUPTABLE                         R7 K18 [{"setDebugDataAsync", "observeDebugData"}]
       52 GETTABLEKS                       R8 R4 K19 ["createUnimplemented"]
       54 LOADK                            R9 K16 ["setDebugDataAsync"]
       55 CALL                             R8 1 1
       56 SETTABLEKS                       R8 R7 K16 ["setDebugDataAsync"]
       58 GETTABLEKS                       R8 R4 K19 ["createUnimplemented"]
       60 LOADK                            R9 K17 ["observeDebugData"]
       61 CALL                             R8 1 1
       62 SETTABLEKS                       R8 R7 K17 ["observeDebugData"]
       64 GETTABLEKS                       R8 R3 K20 ["createContext"]
       66 MOVE                             R9 R7
       67 CALL                             R8 1 1
       68 DUPTABLE                         R9 K22 [{"RUNTIME_DEBUG_INFO"}]
       69 LOADK                            R10 K23 ["GraphDebugData_DebugData"]
       70 SETTABLEKS                       R10 R9 K21 ["RUNTIME_DEBUG_INFO"]
       72 DUPTABLE                         R10 K25 [{"SET_RUNTIME_DEBUG_INFO"}]
       73 LOADK                            R11 K26 ["GraphDebugData_SetDebugData"]
       74 SETTABLEKS                       R11 R10 K24 ["SET_RUNTIME_DEBUG_INFO"]
       76 DUPCLOSURE                       R11 K27 [PROTO_1]
       77 CAPTURE                          VAL R6
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R10
       82 CAPTURE                          VAL R8
       83 DUPCLOSURE                       R12 K28 [PROTO_2]
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R10
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R8
       90 DUPTABLE                         R13 K32 [{"Context", "UIDataModelProvider", "EditableDataModelProvider"}]
       91 SETTABLEKS                       R8 R13 K29 ["Context"]
       93 SETTABLEKS                       R12 R13 K30 ["UIDataModelProvider"]
       95 SETTABLEKS                       R11 R13 K31 ["EditableDataModelProvider"]
       97 RETURN                           R13 1
