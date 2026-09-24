PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["pending"]
        3 GETTABLE                         R2 R3 R0
        4 JUMPIFNOT                        R2 ; [+8]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K0 ["pending"]
        8 LOADNIL                          R4
        9 SETTABLE                         R4 R3 R0
       10 MOVE                             R3 R2
       11 MOVE                             R4 R1
       12 CALL                             R3 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 FASTCALL1                        TYPE R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K1 [type]
        4 CALL                             R2 1 1
        5 JUMPIFEQKS                       R2 K2 ["string"] ; [+2]
        7 RETURN                           R0 0
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R4 R4 K3 ["liveDataModels"]
       11 GETTABLE                         R3 R4 R0
       12 JUMPIFNOTEQKNIL                  R3 ; [+2]
       14 LOADB                            R2 0 +1
       15 LOADB                            R2 1
       16 JUMPIFNOT                        R1 ; [+6]
       17 GETUPVAL                         R3 0
       18 GETTABLEKS                       R3 R3 K3 ["liveDataModels"]
       20 LOADB                            R4 1
       21 SETTABLE                         R4 R3 R0
       22 JUMP                             ; [+5]
       23 GETUPVAL                         R3 0
       24 GETTABLEKS                       R3 R3 K3 ["liveDataModels"]
       26 LOADNIL                          R4
       27 SETTABLE                         R4 R3 R0
       28 JUMPIFNOT                        R1 ; [+1]
       29 JUMPIFNOT                        R2 ; [+2]
       30 JUMPIF                           R1 ; [+18]
       31 JUMPIFNOT                        R2 ; [+17]
       32 GETUPVAL                         R3 0
       33 NAMECALL                         R3 R3 K4 ["getLiveDataModels"]
       35 CALL                             R3 1 1
       36 GETUPVAL                         R4 0
       37 GETTABLEKS                       R4 R4 K5 ["liveChangedCallbacks"]
       39 LOADNIL                          R5
       40 LOADNIL                          R6
       41 FORGPREP                         R4
       42 GETIMPORT                        R9 K8 [task.spawn]
       44 MOVE                             R10 R8
       45 MOVE                             R11 R3
       46 CALL                             R9 2 0
       47 FORGLOOP                         R4 2 ; [-6]
       49 RETURN                           R0 0

PROTO_2:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 SETTABLEKS                       R0 R1 K2 ["plugin"]
       10 NEWTABLE                         R2 0 0
       12 SETTABLEKS                       R2 R1 K3 ["pending"]
       14 LOADN                            R2 1
       15 SETTABLEKS                       R2 R1 K4 ["nextRequestId"]
       17 LOADK                            R4 K5 ["DeliverResponse"]
       18 NEWCLOSURE                       R5 P0
       19 CAPTURE                          VAL R1
       20 NAMECALL                         R2 R0 K6 ["OnInvoke"]
       22 CALL                             R2 3 0
       23 GETUPVAL                         R2 1
       24 GETTABLEKS                       R2 R2 K7 ["getFFlagSceneAnalysisMdiDataModelPicker"]
       26 CALL                             R2 0 1
       27 JUMPIFNOT                        R2 ; [+18]
       28 NEWTABLE                         R2 0 0
       30 SETTABLEKS                       R2 R1 K8 ["liveDataModels"]
       32 NEWTABLE                         R2 0 0
       34 SETTABLEKS                       R2 R1 K9 ["liveChangedCallbacks"]
       36 LOADK                            R4 K10 ["DataModelPresence"]
       37 NEWCLOSURE                       R5 P1
       38 CAPTURE                          VAL R1
       39 NAMECALL                         R2 R0 K6 ["OnInvoke"]
       41 CALL                             R2 3 0
       42 LOADK                            R4 K11 ["DiscoverDataModels"]
       43 NAMECALL                         R2 R0 K12 ["Invoke"]
       45 CALL                             R2 2 0
       46 RETURN                           R1 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+8]
        2 LOADB                            R1 1
        3 SETUPVAL                         R1 0
        4 SETUPVAL                         R0 1
        5 GETIMPORT                        R1 K2 [coroutine.resume]
        7 GETUPVAL                         R2 2
        8 MOVE                             R3 R0
        9 CALL                             R1 2 0
       10 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+21]
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["pending"]
        5 GETUPVAL                         R2 2
        6 GETTABLE                         R0 R1 R2
        7 JUMPIFNOT                        R0 ; [+15]
        8 GETUPVAL                         R0 1
        9 GETTABLEKS                       R0 R0 K0 ["pending"]
       11 GETUPVAL                         R1 2
       12 LOADNIL                          R2
       13 SETTABLE                         R2 R0 R1
       14 LOADB                            R0 1
       15 SETUPVAL                         R0 0
       16 LOADNIL                          R0
       17 SETUPVAL                         R0 3
       18 GETIMPORT                        R0 K3 [coroutine.resume]
       20 GETUPVAL                         R1 4
       21 LOADNIL                          R2
       22 CALL                             R0 2 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R5 R0 K0 ["nextRequestId"]
        2 GETTABLEKS                       R6 R0 K0 ["nextRequestId"]
        4 ADDK                             R6 R6 K1 [1]
        5 SETTABLEKS                       R6 R0 K0 ["nextRequestId"]
        7 GETIMPORT                        R6 K4 [coroutine.running]
        9 CALL                             R6 0 1
       10 JUMPIFNOTEQKNIL                  R6 ; [+7]
       12 GETIMPORT                        R7 K6 [warn]
       14 LOADK                            R8 K7 ["CallMethodAsync must be used inside a coroutine"]
       15 CALL                             R7 1 0
       16 LOADNIL                          R7
       17 RETURN                           R7 1
       18 LOADB                            R7 0
       19 LOADNIL                          R8
       20 GETTABLEKS                       R9 R0 K8 ["pending"]
       22 NEWCLOSURE                       R10 P0
       23 CAPTURE                          REF R7
       24 CAPTURE                          REF R8
       25 CAPTURE                          VAL R6
       26 SETTABLE                         R10 R9 R5
       27 GETTABLEKS                       R9 R0 K9 ["plugin"]
       29 LOADK                            R11 K10 ["PluginBridgeRequest"]
       30 MOVE                             R12 R5
       31 MOVE                             R13 R1
       32 MOVE                             R14 R2
       33 MOVE                             R15 R4
       34 NAMECALL                         R9 R9 K11 ["Invoke"]
       36 CALL                             R9 6 0
       37 GETUPVAL                         R10 0
       38 GETTABLEKS                       R10 R10 K12 ["getFFlagSceneAnalysisBugfixesMay2026"]
       40 CALL                             R10 0 1
       41 JUMPIFNOT                        R10 ; [+2]
       42 LOADN                            R9 2
       43 JUMP                             ; [+1]
       44 LOADN                            R9 5
       45 GETIMPORT                        R10 K15 [task.delay]
       47 OR                               R11 R3 R9
       48 NEWCLOSURE                       R12 P1
       49 CAPTURE                          REF R7
       50 CAPTURE                          VAL R0
       51 CAPTURE                          VAL R5
       52 CAPTURE                          REF R8
       53 CAPTURE                          VAL R6
       54 CALL                             R10 2 0
       55 GETIMPORT                        R10 K17 [coroutine.yield]
       57 CALL                             R10 0 -1
       58 CLOSEUPVALS                      R7
       59 RETURN                           R10 -1

PROTO_6:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["liveDataModels"]
        4 JUMPIFNOT                        R2 ; [+18]
        5 GETTABLEKS                       R2 R0 K0 ["liveDataModels"]
        7 LOADNIL                          R3
        8 LOADNIL                          R4
        9 FORGPREP                         R2
       10 FASTCALL2                        TABLE_INSERT R1 R5 ; [+5]
       12 MOVE                             R8 R1
       13 MOVE                             R9 R5
       14 GETIMPORT                        R7 K3 [table.insert]
       16 CALL                             R7 2 0
       17 FORGLOOP                         R2 1 ; [-8]
       19 GETIMPORT                        R2 K5 [table.sort]
       21 MOVE                             R3 R1
       22 CALL                             R2 1 0
       23 RETURN                           R1 1

PROTO_7:
        0 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["liveChangedCallbacks"]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 MOVE                             R1 R0
        6 LOADNIL                          R2
        7 LOADNIL                          R3
        8 FORGPREP                         R1
        9 GETUPVAL                         R6 1
       10 JUMPIFNOTEQ                      R5 R6 ; [+7]
       12 GETIMPORT                        R6 K3 [table.remove]
       14 MOVE                             R7 R0
       15 MOVE                             R8 R4
       16 CALL                             R6 2 0
       17 RETURN                           R0 0
       18 FORGLOOP                         R1 2 ; [-10]
       20 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R0 K0 ["liveChangedCallbacks"]
        2 JUMPIF                           R2 ; [+2]
        3 DUPCLOSURE                       R2 K1 [PROTO_7]
        4 RETURN                           R2 1
        5 GETTABLEKS                       R3 R0 K0 ["liveChangedCallbacks"]
        7 FASTCALL2                        TABLE_INSERT R3 R1 ; [+4]
        9 MOVE                             R4 R1
       10 GETIMPORT                        R2 K4 [table.insert]
       12 CALL                             R2 2 0
       13 NEWCLOSURE                       R2 P1
       14 CAPTURE                          VAL R0
       15 CAPTURE                          VAL R1
       16 RETURN                           R2 1

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["plugin"]
        2 LOADK                            R3 K1 ["DiscoverDataModels"]
        3 NAMECALL                         R1 R1 K2 ["Invoke"]
        5 CALL                             R1 2 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Bin"]
       11 GETTABLEKS                       R2 R2 K7 ["Common"]
       13 GETTABLEKS                       R2 R2 K8 ["defineLuaFlags"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 8 0
       18 SETTABLEKS                       R2 R2 K9 ["__index"]
       20 DUPCLOSURE                       R3 K10 [PROTO_2]
       21 CAPTURE                          VAL R2
       22 CAPTURE                          VAL R1
       23 SETTABLEKS                       R3 R2 K11 ["new"]
       25 DUPCLOSURE                       R3 K12 [PROTO_5]
       26 CAPTURE                          VAL R1
       27 SETTABLEKS                       R3 R2 K13 ["CallMethodAsync"]
       29 DUPCLOSURE                       R3 K14 [PROTO_6]
       30 SETTABLEKS                       R3 R2 K15 ["getLiveDataModels"]
       32 DUPCLOSURE                       R3 K16 [PROTO_9]
       33 SETTABLEKS                       R3 R2 K17 ["onLiveDataModelsChanged"]
       35 DUPCLOSURE                       R3 K18 [PROTO_10]
       36 SETTABLEKS                       R3 R2 K19 ["DiscoverDataModels"]
       38 RETURN                           R2 1
