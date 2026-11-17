PROTO_0:
        0 LOADB                            R2 0
        1 FASTCALL1                        TYPEOF R0 ; [+3]
        2 MOVE                             R4 R0
        3 GETIMPORT                        R3 K1 [typeof]
        5 CALL                             R3 1 1
        6 JUMPIFNOTEQKS                    R3 K2 ["Instance"] ; [+5]
        8 LOADK                            R4 K3 ["VisualizationModeCategory"]
        9 NAMECALL                         R2 R0 K4 ["IsA"]
       11 CALL                             R2 2 1
       12 FASTCALL2K                       ASSERT R2 K5 ; [+4]
       14 LOADK                            R3 K5 ["Bad visualizationModeCategory"]
       15 GETIMPORT                        R1 K7 [assert]
       17 CALL                             R1 2 0
       18 NEWTABLE                         R2 8 0
       20 GETUPVAL                         R3 0
       21 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
       23 GETIMPORT                        R1 K9 [setmetatable]
       25 CALL                             R1 2 1
       26 GETUPVAL                         R2 1
       27 GETTABLEKS                       R2 R2 K10 ["new"]
       29 CALL                             R2 0 1
       30 SETTABLEKS                       R2 R1 K11 ["_maid"]
       32 SETTABLEKS                       R0 R1 K12 ["_visualizationModeCategory"]
       34 NEWTABLE                         R2 0 0
       36 SETTABLEKS                       R2 R1 K13 ["_visualizationModeTrackers"]
       38 LOADNIL                          R2
       39 SETTABLEKS                       R2 R1 K14 ["_state"]
       41 GETUPVAL                         R2 2
       42 GETTABLEKS                       R2 R2 K10 ["new"]
       44 CALL                             R2 0 1
       45 SETTABLEKS                       R2 R1 K15 ["changed"]
       47 NAMECALL                         R2 R1 K16 ["_startTracking"]
       49 CALL                             R2 1 0
       50 RETURN                           R1 1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["_state"]
        2 RETURN                           R1 1

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["_state"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+2]
        4 RETURN                           R0 0
        5 SETTABLEKS                       R1 R0 K0 ["_state"]
        7 GETTABLEKS                       R2 R0 K1 ["changed"]
        9 MOVE                             R4 R1
       10 NAMECALL                         R2 R2 K2 ["Fire"]
       12 CALL                             R2 2 0
       13 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["_handleChildAdded"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["_maid"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_queueUpdateState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_queueUpdateState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 GETTABLEKS                       R3 R0 K1 ["_visualizationModeCategory"]
        4 GETTABLEKS                       R3 R3 K2 ["ChildAdded"]
        6 NEWCLOSURE                       R5 P0
        7 CAPTURE                          VAL R0
        8 NAMECALL                         R3 R3 K3 ["Connect"]
       10 CALL                             R3 2 -1
       11 NAMECALL                         R1 R1 K4 ["giveTask"]
       13 CALL                             R1 -1 0
       14 GETTABLEKS                       R1 R0 K0 ["_maid"]
       16 GETTABLEKS                       R3 R0 K1 ["_visualizationModeCategory"]
       18 GETTABLEKS                       R3 R3 K5 ["ChildRemoved"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R3 R3 K3 ["Connect"]
       24 CALL                             R3 2 -1
       25 NAMECALL                         R1 R1 K4 ["giveTask"]
       27 CALL                             R1 -1 0
       28 GETTABLEKS                       R1 R0 K0 ["_maid"]
       30 GETTABLEKS                       R3 R0 K1 ["_visualizationModeCategory"]
       32 LOADK                            R5 K6 ["Title"]
       33 NAMECALL                         R3 R3 K7 ["GetPropertyChangedSignal"]
       35 CALL                             R3 2 1
       36 NEWCLOSURE                       R5 P2
       37 CAPTURE                          VAL R0
       38 NAMECALL                         R3 R3 K3 ["Connect"]
       40 CALL                             R3 2 -1
       41 NAMECALL                         R1 R1 K4 ["giveTask"]
       43 CALL                             R1 -1 0
       44 GETTABLEKS                       R1 R0 K0 ["_maid"]
       46 GETTABLEKS                       R3 R0 K1 ["_visualizationModeCategory"]
       48 LOADK                            R5 K8 ["Enabled"]
       49 NAMECALL                         R3 R3 K7 ["GetPropertyChangedSignal"]
       51 CALL                             R3 2 1
       52 NEWCLOSURE                       R5 P3
       53 CAPTURE                          VAL R0
       54 NAMECALL                         R3 R3 K3 ["Connect"]
       56 CALL                             R3 2 -1
       57 NAMECALL                         R1 R1 K4 ["giveTask"]
       59 CALL                             R1 -1 0
       60 GETTABLEKS                       R1 R0 K1 ["_visualizationModeCategory"]
       62 NAMECALL                         R1 R1 K9 ["GetChildren"]
       64 CALL                             R1 1 3
       65 FORGPREP                         R1
       66 MOVE                             R8 R5
       67 NAMECALL                         R6 R0 K10 ["_handleChildAdded"]
       69 CALL                             R6 2 0
       70 FORGLOOP                         R1 2 ; [-5]
       72 NAMECALL                         R1 R0 K11 ["_queueUpdateState"]
       74 CALL                             R1 1 0
       75 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_maid"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_stateUpdateQueue"]
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K2 ["_updateState"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 GETTABLEKS                       R1 R1 K1 ["_stateUpdateQueue"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K0 ["_maid"]
        8 GETIMPORT                        R2 K4 [task.defer]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K1 ["_stateUpdateQueue"]
       15 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["sortOrder"]
        2 GETTABLEKS                       R3 R1 K0 ["sortOrder"]
        4 JUMPIFEQ                         R2 R3 ; [+10]
        6 GETTABLEKS                       R3 R0 K0 ["sortOrder"]
        8 GETTABLEKS                       R4 R1 K0 ["sortOrder"]
       10 JUMPIFLT                         R3 R4 ; [+2]
       12 LOADB                            R2 0 +1
       13 LOADB                            R2 1
       14 RETURN                           R2 1
       15 GETUPVAL                         R4 0
       16 GETTABLE                         R3 R4 R0
       17 GETUPVAL                         R5 0
       18 GETTABLE                         R4 R5 R1
       19 JUMPIFLT                         R3 R4 ; [+2]
       21 LOADB                            R2 0 +1
       22 LOADB                            R2 1
       23 RETURN                           R2 1

PROTO_11:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_visualizationModeTrackers"]
        4 LOADNIL                          R3
        5 LOADNIL                          R4
        6 FORGPREP                         R2
        7 NAMECALL                         R7 R6 K1 ["getState"]
        9 CALL                             R7 1 1
       10 JUMPIFNOT                        R7 ; [+7]
       11 FASTCALL2                        TABLE_INSERT R1 R7 ; [+5]
       13 MOVE                             R9 R1
       14 MOVE                             R10 R7
       15 GETIMPORT                        R8 K4 [table.insert]
       17 CALL                             R8 2 0
       18 FORGLOOP                         R2 2 ; [-12]
       20 NEWTABLE                         R2 0 0
       22 MOVE                             R3 R1
       23 LOADNIL                          R4
       24 LOADNIL                          R5
       25 FORGPREP                         R3
       26 GETIMPORT                        R8 K7 [string.lower]
       28 GETTABLEKS                       R9 R7 K8 ["title"]
       30 CALL                             R8 1 1
       31 SETTABLE                         R8 R2 R7
       32 FORGLOOP                         R3 2 ; [-7]
       34 GETIMPORT                        R3 K10 [table.sort]
       36 MOVE                             R4 R1
       37 NEWCLOSURE                       R5 P0
       38 CAPTURE                          VAL R2
       39 CALL                             R3 2 0
       40 GETIMPORT                        R5 K12 [table.freeze]
       42 DUPTABLE                         R6 K17 [{"visualizationModeList", "name", "title", "enabled", "lastUpdateTimeUnixTimeStamp"}]
       43 SETTABLEKS                       R1 R6 K13 ["visualizationModeList"]
       45 GETTABLEKS                       R7 R0 K18 ["_visualizationModeCategory"]
       47 GETTABLEKS                       R7 R7 K19 ["Name"]
       49 SETTABLEKS                       R7 R6 K14 ["name"]
       51 GETTABLEKS                       R7 R0 K18 ["_visualizationModeCategory"]
       53 GETTABLEKS                       R7 R7 K20 ["Title"]
       55 SETTABLEKS                       R7 R6 K8 ["title"]
       57 GETTABLEKS                       R7 R0 K18 ["_visualizationModeCategory"]
       59 GETTABLEKS                       R7 R7 K21 ["Enabled"]
       61 SETTABLEKS                       R7 R6 K15 ["enabled"]
       63 GETIMPORT                        R7 K24 [DateTime.now]
       65 CALL                             R7 0 1
       66 GETTABLEKS                       R7 R7 K25 ["UnixTimestamp"]
       68 SETTABLEKS                       R7 R6 K16 ["lastUpdateTimeUnixTimeStamp"]
       70 CALL                             R5 1 -1
       71 NAMECALL                         R3 R0 K26 ["_setState"]
       73 CALL                             R3 -1 0
       74 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R3 R0 K0 ["_visualizationModeTrackers"]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 NAMECALL                         R8 R7 K1 ["getState"]
        7 CALL                             R8 1 1
        8 JUMPIFEQKNIL                     R8 ; [+9]
       10 GETTABLEKS                       R9 R8 K2 ["name"]
       12 JUMPIFNOTEQ                      R9 R1 ; [+5]
       14 MOVE                             R11 R2
       15 NAMECALL                         R9 R7 K3 ["updateVisualizationModeIsEnabled"]
       17 CALL                             R9 2 0
       18 FORGLOOP                         R3 2 ; [-14]
       20 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R2 R0 K0 ["_visualizationModeCategory"]
        2 SETTABLEKS                       R1 R2 K1 ["Enabled"]
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_queueUpdateState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["_visualizationModeTrackers"]
        5 GETUPVAL                         R2 1
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+11]
        8 GETIMPORT                        R1 K5 [table.remove]
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K3 ["_visualizationModeTrackers"]
       13 MOVE                             R3 R0
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 NAMECALL                         R1 R1 K6 ["_queueUpdateState"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_16:
        0 LOADK                            R4 K0 ["VisualizationMode"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["new"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R5 1
       11 GETTABLEKS                       R5 R5 K2 ["new"]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 -1
       15 NAMECALL                         R3 R2 K3 ["add"]
       17 CALL                             R3 -1 1
       18 GETTABLEKS                       R5 R0 K4 ["_visualizationModeTrackers"]
       20 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       22 MOVE                             R6 R3
       23 GETIMPORT                        R4 K7 [table.insert]
       25 CALL                             R4 2 0
       26 GETTABLEKS                       R6 R3 K8 ["changed"]
       28 NEWCLOSURE                       R8 P0
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R6 R6 K9 ["Connect"]
       32 CALL                             R6 2 -1
       33 NAMECALL                         R4 R2 K10 ["giveTask"]
       35 CALL                             R4 -1 0
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R3
       39 NAMECALL                         R4 R2 K10 ["giveTask"]
       41 CALL                             R4 2 0
       42 GETTABLEKS                       R4 R0 K11 ["_maid"]
       44 SETTABLE                         R2 R4 R1
       45 NAMECALL                         R4 R0 K12 ["_queueUpdateState"]
       47 CALL                             R4 1 0
       48 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 NAMECALL                         R1 R1 K1 ["destroy"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Maid"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["Signal"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K10 ["Types"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETIMPORT                        R5 K1 [script]
       36 GETTABLEKS                       R5 R5 K11 ["Parent"]
       38 GETTABLEKS                       R5 R5 K12 ["VisualizationModeTracker"]
       40 CALL                             R4 1 1
       41 NEWTABLE                         R5 16 0
       43 SETTABLEKS                       R5 R5 K13 ["__index"]
       45 DUPCLOSURE                       R6 K14 [PROTO_0]
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R6 R5 K15 ["new"]
       51 DUPCLOSURE                       R6 K16 [PROTO_1]
       52 SETTABLEKS                       R6 R5 K17 ["getState"]
       54 DUPCLOSURE                       R6 K18 [PROTO_2]
       55 SETTABLEKS                       R6 R5 K19 ["_setState"]
       57 DUPCLOSURE                       R6 K20 [PROTO_7]
       58 SETTABLEKS                       R6 R5 K21 ["_startTracking"]
       60 DUPCLOSURE                       R6 K22 [PROTO_9]
       61 SETTABLEKS                       R6 R5 K23 ["_queueUpdateState"]
       63 DUPCLOSURE                       R6 K24 [PROTO_11]
       64 SETTABLEKS                       R6 R5 K25 ["_updateState"]
       66 DUPCLOSURE                       R6 K26 [PROTO_12]
       67 SETTABLEKS                       R6 R5 K27 ["updateVisualizationModeIsEnabled"]
       69 DUPCLOSURE                       R6 K28 [PROTO_13]
       70 SETTABLEKS                       R6 R5 K29 ["setIsCategoryEnabled"]
       72 DUPCLOSURE                       R6 K30 [PROTO_16]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R4
       75 SETTABLEKS                       R6 R5 K31 ["_handleChildAdded"]
       77 DUPCLOSURE                       R6 K32 [PROTO_17]
       78 SETTABLEKS                       R6 R5 K33 ["destroy"]
       80 RETURN                           R5 1
