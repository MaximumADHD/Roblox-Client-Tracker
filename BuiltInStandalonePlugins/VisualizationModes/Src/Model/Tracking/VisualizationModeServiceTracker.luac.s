PROTO_0:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 FASTCALL2                        SETMETATABLE R1 R2 ; [+3]
        5 GETIMPORT                        R0 K1 [setmetatable]
        7 CALL                             R0 2 1
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["new"]
       11 CALL                             R1 0 1
       12 SETTABLEKS                       R1 R0 K3 ["_maid"]
       14 NEWTABLE                         R1 0 0
       16 SETTABLEKS                       R1 R0 K4 ["_categoryTrackers"]
       18 LOADNIL                          R1
       19 SETTABLEKS                       R1 R0 K5 ["_state"]
       21 GETTABLEKS                       R1 R0 K3 ["_maid"]
       23 GETUPVAL                         R4 2
       24 GETTABLEKS                       R3 R4 K2 ["new"]
       26 CALL                             R3 0 -1
       27 NAMECALL                         R1 R1 K6 ["add"]
       29 CALL                             R1 -1 1
       30 SETTABLEKS                       R1 R0 K7 ["changed"]
       32 NAMECALL                         R1 R0 K8 ["_startTracking"]
       34 CALL                             R1 1 0
       35 RETURN                           R0 1

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["_maid"]
        3 LOADNIL                          R2
        4 SETTABLE                         R2 R1 R0
        5 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["_maid"]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K1 ["ChildAdded"]
        5 NEWCLOSURE                       R5 P0
        6 CAPTURE                          VAL R0
        7 NAMECALL                         R3 R3 K2 ["Connect"]
        9 CALL                             R3 2 -1
       10 NAMECALL                         R1 R1 K3 ["giveTask"]
       12 CALL                             R1 -1 0
       13 GETTABLEKS                       R1 R0 K0 ["_maid"]
       15 GETUPVAL                         R4 0
       16 GETTABLEKS                       R3 R4 K4 ["ChildRemoved"]
       18 NEWCLOSURE                       R5 P1
       19 CAPTURE                          VAL R0
       20 NAMECALL                         R3 R3 K2 ["Connect"]
       22 CALL                             R3 2 -1
       23 NAMECALL                         R1 R1 K3 ["giveTask"]
       25 CALL                             R1 -1 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R4 R0 K0 ["_categoryTrackers"]
        2 LOADNIL                          R5
        3 LOADNIL                          R6
        4 FORGPREP                         R4
        5 NAMECALL                         R9 R8 K1 ["getState"]
        7 CALL                             R9 1 1
        8 JUMPIFEQKNIL                     R9 ; [+10]
       10 GETTABLEKS                       R10 R9 K2 ["name"]
       12 JUMPIFNOTEQ                      R10 R1 ; [+6]
       14 MOVE                             R12 R2
       15 MOVE                             R13 R3
       16 NAMECALL                         R10 R8 K3 ["updateVisualizationModeIsEnabled"]
       18 CALL                             R10 3 0
       19 FORGLOOP                         R4 2 ; [-15]
       21 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R3 R0 K0 ["_categoryTrackers"]
        2 LOADNIL                          R4
        3 LOADNIL                          R5
        4 FORGPREP                         R3
        5 NAMECALL                         R8 R7 K1 ["getState"]
        7 CALL                             R8 1 1
        8 JUMPIFEQKNIL                     R8 ; [+9]
       10 GETTABLEKS                       R9 R8 K2 ["name"]
       12 JUMPIFNOTEQ                      R9 R1 ; [+5]
       14 MOVE                             R11 R2
       15 NAMECALL                         R9 R7 K3 ["setIsCategoryEnabled"]
       17 CALL                             R9 2 0
       18 FORGLOOP                         R3 2 ; [-14]
       20 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["_queueUpdateState"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R0 K2 [table.find]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K3 ["_categoryTrackers"]
        5 GETUPVAL                         R2 1
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+7]
        8 GETIMPORT                        R1 K5 [table.remove]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["_categoryTrackers"]
       13 MOVE                             R3 R0
       14 CALL                             R1 2 0
       15 GETUPVAL                         R1 0
       16 NAMECALL                         R1 R1 K6 ["_queueUpdateState"]
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_10:
        0 LOADK                            R4 K0 ["VisualizationModeCategory"]
        1 NAMECALL                         R2 R1 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIF                           R2 ; [+1]
        5 RETURN                           R0 0
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["new"]
        9 CALL                             R2 0 1
       10 GETUPVAL                         R6 1
       11 GETTABLEKS                       R5 R6 K2 ["new"]
       13 MOVE                             R6 R1
       14 CALL                             R5 1 -1
       15 NAMECALL                         R3 R2 K3 ["add"]
       17 CALL                             R3 -1 1
       18 GETTABLEKS                       R6 R3 K4 ["changed"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          VAL R0
       22 NAMECALL                         R6 R6 K5 ["Connect"]
       24 CALL                             R6 2 -1
       25 NAMECALL                         R4 R2 K6 ["giveTask"]
       27 CALL                             R4 -1 0
       28 GETTABLEKS                       R5 R0 K7 ["_categoryTrackers"]
       30 FASTCALL2                        TABLE_INSERT R5 R3 ; [+4]
       32 MOVE                             R6 R3
       33 GETIMPORT                        R4 K10 [table.insert]
       35 CALL                             R4 2 0
       36 NEWCLOSURE                       R6 P1
       37 CAPTURE                          VAL R0
       38 CAPTURE                          VAL R3
       39 NAMECALL                         R4 R2 K6 ["giveTask"]
       41 CALL                             R4 2 0
       42 GETTABLEKS                       R4 R0 K11 ["_maid"]
       44 SETTABLE                         R2 R4 R1
       45 NAMECALL                         R4 R0 K12 ["_queueUpdateState"]
       47 CALL                             R4 1 0
       48 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["_maid"]
        3 LOADNIL                          R1
        4 SETTABLEKS                       R1 R0 K1 ["_stateUpdateQueue"]
        6 GETUPVAL                         R0 0
        7 NAMECALL                         R0 R0 K2 ["_updateState"]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R2 R0 K0 ["_maid"]
        2 GETTABLEKS                       R1 R2 K1 ["_stateUpdateQueue"]
        4 JUMPIFNOT                        R1 ; [+1]
        5 RETURN                           R0 0
        6 GETTABLEKS                       R1 R0 K0 ["_maid"]
        8 GETIMPORT                        R2 K4 [task.defer]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R0
       12 CALL                             R2 1 1
       13 SETTABLEKS                       R2 R1 K1 ["_stateUpdateQueue"]
       15 RETURN                           R0 0

PROTO_13:
        0 GETTABLEKS                       R3 R0 K0 ["title"]
        2 GETTABLEKS                       R4 R1 K0 ["title"]
        4 JUMPIFLT                         R3 R4 ; [+2]
        6 LOADB                            R2 0 +1
        7 LOADB                            R2 1
        8 RETURN                           R2 1

PROTO_14:
        0 NEWTABLE                         R1 0 0
        2 GETTABLEKS                       R2 R0 K0 ["_categoryTrackers"]
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
       20 GETIMPORT                        R2 K6 [table.sort]
       22 MOVE                             R3 R1
       23 DUPCLOSURE                       R4 K7 [PROTO_13]
       24 CALL                             R2 2 0
       25 GETIMPORT                        R4 K9 [table.freeze]
       27 MOVE                             R5 R1
       28 CALL                             R4 1 -1
       29 NAMECALL                         R2 R0 K10 ["_setState"]
       31 CALL                             R2 -1 0
       32 RETURN                           R0 0

PROTO_15:
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
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["VisualizationModeService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Src"]
       17 GETTABLEKS                       R3 R4 K11 ["Types"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R0 K10 ["Src"]
       24 GETTABLEKS                       R5 R6 K12 ["Util"]
       26 GETTABLEKS                       R4 R5 K13 ["Maid"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R7 R0 K10 ["Src"]
       33 GETTABLEKS                       R6 R7 K12 ["Util"]
       35 GETTABLEKS                       R5 R6 K14 ["Signal"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K9 [require]
       40 GETIMPORT                        R8 K1 [script]
       42 GETTABLEKS                       R7 R8 K15 ["Parent"]
       44 GETTABLEKS                       R6 R7 K16 ["VisualizationModeCategoryTracker"]
       46 CALL                             R5 1 1
       47 NEWTABLE                         R6 16 0
       49 SETTABLEKS                       R6 R6 K17 ["__index"]
       51 DUPCLOSURE                       R7 K18 [PROTO_0]
       52 CAPTURE                          VAL R6
       53 CAPTURE                          VAL R3
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R7 R6 K19 ["new"]
       57 DUPCLOSURE                       R7 K20 [PROTO_1]
       58 SETTABLEKS                       R7 R6 K21 ["getState"]
       60 DUPCLOSURE                       R7 K22 [PROTO_2]
       61 SETTABLEKS                       R7 R6 K23 ["_setState"]
       63 DUPCLOSURE                       R7 K24 [PROTO_5]
       64 CAPTURE                          VAL R1
       65 SETTABLEKS                       R7 R6 K25 ["_startTracking"]
       67 DUPCLOSURE                       R7 K26 [PROTO_6]
       68 SETTABLEKS                       R7 R6 K27 ["updateVisualizationModeIsEnabled"]
       70 DUPCLOSURE                       R7 K28 [PROTO_7]
       71 SETTABLEKS                       R7 R6 K29 ["updateVisualizationModeCategoryIsEnabled"]
       73 DUPCLOSURE                       R7 K30 [PROTO_10]
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R5
       76 SETTABLEKS                       R7 R6 K31 ["_handleChildAdded"]
       78 DUPCLOSURE                       R7 K32 [PROTO_12]
       79 SETTABLEKS                       R7 R6 K33 ["_queueUpdateState"]
       81 DUPCLOSURE                       R7 K34 [PROTO_14]
       82 SETTABLEKS                       R7 R6 K35 ["_updateState"]
       84 DUPCLOSURE                       R7 K36 [PROTO_15]
       85 SETTABLEKS                       R7 R6 K37 ["destroy"]
       87 RETURN                           R6 1
