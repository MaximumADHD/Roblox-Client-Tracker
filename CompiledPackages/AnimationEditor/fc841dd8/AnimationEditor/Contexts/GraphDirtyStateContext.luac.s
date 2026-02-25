PROTO_0:
        0 LOADK                            R4 K0 ["AnimationGraphDefinition"]
        1 NAMECALL                         R2 R0 K1 ["IsA"]
        3 CALL                             R2 2 1
        4 JUMPIFNOT                        R2 ; [+5]
        5 LOADK                            R4 K2 ["RBX_GraphDirty"]
        6 MOVE                             R5 R1
        7 NAMECALL                         R2 R0 K3 ["SetAttribute"]
        9 CALL                             R2 3 0
       10 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["AnimationGraphDefinition"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIFNOT                        R1 ; [+9]
        5 LOADK                            R3 K2 ["RBX_GraphDirty"]
        6 NAMECALL                         R1 R0 K3 ["GetAttribute"]
        8 CALL                             R1 2 1
        9 JUMPIFEQKB                       R1 TRUE ; [+2]
       11 LOADB                            R2 0 +1
       12 LOADB                            R2 1
       13 RETURN                           R2 1
       14 LOADB                            R1 0
       15 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        7 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        8 NAMECALL                         R1 R0 K2 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+5]
       12 LOADK                            R3 K3 ["RBX_GraphDirty"]
       13 LOADB                            R4 0
       14 NAMECALL                         R1 R0 K4 ["SetAttribute"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOTEQKNIL                  R0 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R1 1
        7 LOADK                            R3 K1 ["Plugin"]
        8 NAMECALL                         R1 R1 K2 ["FindFirstAncestorWhichIsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+27]
       12 GETIMPORT                        R2 K4 [game]
       14 LOADK                            R4 K5 ["Selection"]
       15 NAMECALL                         R2 R2 K6 ["GetService"]
       17 CALL                             R2 2 1
       18 NEWTABLE                         R4 0 1
       20 MOVE                             R5 R0
       21 SETLIST                          R4 R5 1 [1]
       23 NAMECALL                         R2 R2 K7 ["Set"]
       25 CALL                             R2 2 0
       26 NAMECALL                         R2 R1 K8 ["SaveSelectedToRoblox"]
       28 CALL                             R2 1 0
       29 LOADK                            R4 K9 ["AnimationGraphDefinition"]
       30 NAMECALL                         R2 R0 K10 ["IsA"]
       32 CALL                             R2 2 1
       33 JUMPIFNOT                        R2 ; [+5]
       34 LOADK                            R4 K11 ["RBX_GraphDirty"]
       35 LOADB                            R5 0
       36 NAMECALL                         R2 R0 K12 ["SetAttribute"]
       38 CALL                             R2 3 0
       39 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        7 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        8 NAMECALL                         R1 R0 K2 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+5]
       12 LOADK                            R3 K3 ["RBX_GraphDirty"]
       13 LOADB                            R4 1
       14 NAMECALL                         R1 R0 K4 ["SetAttribute"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOT                        R0 ; [+13]
        4 GETUPVAL                         R1 0
        5 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        7 LOADK                            R3 K1 ["AnimationGraphDefinition"]
        8 NAMECALL                         R1 R0 K2 ["IsA"]
       10 CALL                             R1 2 1
       11 JUMPIFNOT                        R1 ; [+5]
       12 LOADK                            R3 K3 ["RBX_GraphDirty"]
       13 LOADB                            R4 1
       14 NAMECALL                         R1 R0 K4 ["SetAttribute"]
       16 CALL                             R1 3 0
       17 RETURN                           R0 0

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+17]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K0 ["selectedGraphInstance"]
        4 JUMPIFNOT                        R2 ; [+13]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["selectedGraphInstance"]
        8 LOADK                            R5 K1 ["AnimationGraphDefinition"]
        9 NAMECALL                         R3 R2 K2 ["IsA"]
       11 CALL                             R3 2 1
       12 JUMPIFNOT                        R3 ; [+5]
       13 LOADK                            R5 K3 ["RBX_GraphDirty"]
       14 LOADB                            R6 1
       15 NAMECALL                         R3 R2 K4 ["SetAttribute"]
       17 CALL                             R3 3 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 GETUPVAL                         R0 2
        9 NAMECALL                         R0 R0 K0 ["Disconnect"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["selectedGraphInstance"]
        3 JUMPIFNOT                        R0 ; [+32]
        4 GETUPVAL                         R2 0
        5 GETTABLEKS                       R1 R2 K0 ["selectedGraphInstance"]
        7 LOADK                            R4 K1 ["AnimationGraphDefinition"]
        8 NAMECALL                         R2 R1 K2 ["IsA"]
       10 CALL                             R2 2 1
       11 JUMPIFNOT                        R2 ; [+9]
       12 LOADK                            R4 K3 ["RBX_GraphDirty"]
       13 NAMECALL                         R2 R1 K4 ["GetAttribute"]
       15 CALL                             R2 2 1
       16 JUMPIFEQKB                       R2 TRUE ; [+2]
       18 LOADB                            R0 0 +1
       19 LOADB                            R0 1
       20 JUMP                             ; [+1]
       21 LOADB                            R0 0
       22 JUMPIF                           R0 ; [+13]
       23 GETUPVAL                         R2 0
       24 GETTABLEKS                       R1 R2 K0 ["selectedGraphInstance"]
       26 LOADK                            R4 K1 ["AnimationGraphDefinition"]
       27 NAMECALL                         R2 R1 K2 ["IsA"]
       29 CALL                             R2 2 1
       30 JUMPIFNOT                        R2 ; [+5]
       31 LOADK                            R4 K3 ["RBX_GraphDirty"]
       32 LOADB                            R5 0
       33 NAMECALL                         R2 R1 K5 ["SetAttribute"]
       35 CALL                             R2 3 0
       36 GETUPVAL                         R1 1
       37 GETTABLEKS                       R0 R1 K6 ["OnUndo"]
       39 NEWCLOSURE                       R2 P0
       40 CAPTURE                          UPVAL U0
       41 NAMECALL                         R0 R0 K7 ["Connect"]
       43 CALL                             R0 2 1
       44 GETUPVAL                         R2 1
       45 GETTABLEKS                       R1 R2 K8 ["OnRedo"]
       47 NEWCLOSURE                       R3 P1
       48 CAPTURE                          UPVAL U0
       49 NAMECALL                         R1 R1 K7 ["Connect"]
       51 CALL                             R1 2 1
       52 GETUPVAL                         R3 1
       53 GETTABLEKS                       R2 R3 K9 ["OnRecordingFinished"]
       55 NEWCLOSURE                       R4 P2
       56 CAPTURE                          UPVAL U0
       57 NAMECALL                         R2 R2 K7 ["Connect"]
       59 CALL                             R2 2 1
       60 NEWCLOSURE                       R3 P3
       61 CAPTURE                          VAL R0
       62 CAPTURE                          VAL R1
       63 CAPTURE                          VAL R2
       64 RETURN                           R3 1

PROTO_9:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["useCallback"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 1
       14 GETTABLEKS                       R5 R1 K3 ["selectedGraphInstance"]
       16 SETLIST                          R4 R5 1 [1]
       18 CALL                             R2 2 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K2 ["useCallback"]
       22 NEWCLOSURE                       R4 P1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          UPVAL U2
       25 NEWTABLE                         R5 0 1
       27 GETTABLEKS                       R6 R1 K3 ["selectedGraphInstance"]
       29 SETLIST                          R5 R6 1 [1]
       31 CALL                             R3 2 1
       32 GETUPVAL                         R5 0
       33 GETTABLEKS                       R4 R5 K4 ["useEffect"]
       35 NEWCLOSURE                       R5 P2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U3
       38 NEWTABLE                         R6 0 1
       40 GETTABLEKS                       R7 R1 K3 ["selectedGraphInstance"]
       42 SETLIST                          R6 R7 1 [1]
       44 CALL                             R4 2 0
       45 GETUPVAL                         R5 4
       46 GETTABLEKS                       R4 R5 K5 ["useBoundAction"]
       48 GETUPVAL                         R6 5
       49 GETTABLEKS                       R5 R6 K6 ["MARK_SELECTED_GRAPH_CLEAN_ASYNC"]
       51 MOVE                             R6 R2
       52 CALL                             R4 2 0
       53 GETUPVAL                         R5 4
       54 GETTABLEKS                       R4 R5 K5 ["useBoundAction"]
       56 GETUPVAL                         R6 5
       57 GETTABLEKS                       R5 R6 K7 ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"]
       59 MOVE                             R6 R3
       60 CALL                             R4 2 0
       61 DUPTABLE                         R4 K10 [{"saveSelectedGraphToRobloxAsync", "markSelectedGraphCleanAsync"}]
       62 SETTABLEKS                       R3 R4 K8 ["saveSelectedGraphToRobloxAsync"]
       64 SETTABLEKS                       R2 R4 K9 ["markSelectedGraphCleanAsync"]
       66 GETUPVAL                         R6 0
       67 GETTABLEKS                       R5 R6 K11 ["createElement"]
       69 GETUPVAL                         R7 6
       70 GETTABLEKS                       R6 R7 K12 ["Provider"]
       72 DUPTABLE                         R7 K14 [{"value"}]
       73 SETTABLEKS                       R4 R7 K13 ["value"]
       75 GETTABLEKS                       R8 R0 K15 ["children"]
       77 CALL                             R5 3 -1
       78 RETURN                           R5 -1

PROTO_10:
        0 DUPTABLE                         R1 K2 [{"saveSelectedGraphToRobloxAsync", "markSelectedGraphCleanAsync"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K3 ["useBoundAction"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K4 ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K0 ["saveSelectedGraphToRobloxAsync"]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R2 R3 K3 ["useBoundAction"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R3 R4 K5 ["MARK_SELECTED_GRAPH_CLEAN_ASYNC"]
       16 CALL                             R2 1 1
       17 SETTABLEKS                       R2 R1 K1 ["markSelectedGraphCleanAsync"]
       19 GETUPVAL                         R3 2
       20 GETTABLEKS                       R2 R3 K6 ["createElement"]
       22 GETUPVAL                         R4 3
       23 GETTABLEKS                       R3 R4 K7 ["Provider"]
       25 DUPTABLE                         R4 K9 [{"value"}]
       26 SETTABLEKS                       R1 R4 K8 ["value"]
       28 GETTABLEKS                       R5 R0 K10 ["children"]
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [game]
        9 LOADK                            R3 K6 ["ChangeHistoryService"]
       10 NAMECALL                         R1 R1 K7 ["GetService"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R4 R0 K10 ["Contexts"]
       17 GETTABLEKS                       R3 R4 K11 ["NativeGraphContext"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R6 R0 K12 ["Util"]
       24 GETTABLEKS                       R5 R6 K13 ["Networking"]
       26 GETTABLEKS                       R4 R5 K14 ["NetworkUtils"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K9 [require]
       31 GETTABLEKS                       R6 R0 K15 ["Parent"]
       33 GETTABLEKS                       R5 R6 K16 ["React"]
       35 CALL                             R4 1 1
       36 GETIMPORT                        R5 K9 [require]
       38 GETTABLEKS                       R7 R0 K15 ["Parent"]
       40 GETTABLEKS                       R6 R7 K17 ["ReactUtils"]
       42 CALL                             R5 1 1
       43 DUPTABLE                         R6 K20 [{"saveSelectedGraphToRobloxAsync", "markSelectedGraphCleanAsync"}]
       44 GETTABLEKS                       R7 R5 K21 ["createUnimplemented"]
       46 LOADK                            R8 K18 ["saveSelectedGraphToRobloxAsync"]
       47 CALL                             R7 1 1
       48 SETTABLEKS                       R7 R6 K18 ["saveSelectedGraphToRobloxAsync"]
       50 GETTABLEKS                       R7 R5 K21 ["createUnimplemented"]
       52 LOADK                            R8 K19 ["markSelectedGraphCleanAsync"]
       53 CALL                             R7 1 1
       54 SETTABLEKS                       R7 R6 K19 ["markSelectedGraphCleanAsync"]
       56 GETTABLEKS                       R7 R4 K22 ["createContext"]
       58 MOVE                             R8 R6
       59 CALL                             R7 1 1
       60 DUPTABLE                         R8 K25 [{"MARK_SELECTED_GRAPH_CLEAN_ASYNC", "SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"}]
       61 LOADK                            R9 K26 ["GraphDirtyStateContext_MarkSelectedGraphCleanAsync"]
       62 SETTABLEKS                       R9 R8 K23 ["MARK_SELECTED_GRAPH_CLEAN_ASYNC"]
       64 LOADK                            R9 K27 ["GraphDirtyStateContext_SaveSelectedGraphToRobloxAsync"]
       65 SETTABLEKS                       R9 R8 K24 ["SAVE_SELECTED_GRAPH_TO_ROBLOX_ASYNC"]
       67 DUPCLOSURE                       R9 K28 [PROTO_0]
       68 DUPCLOSURE                       R10 K29 [PROTO_1]
       69 DUPCLOSURE                       R11 K30 [PROTO_9]
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R2
       72 CAPTURE                          VAL R0
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R7
       77 DUPCLOSURE                       R12 K31 [PROTO_10]
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R4
       81 CAPTURE                          VAL R7
       82 DUPTABLE                         R13 K36 [{"Context", "EditableDataModelProvider", "UIDataModelProvider", "DIRTY_ATTRIBUTE_NAME"}]
       83 SETTABLEKS                       R7 R13 K32 ["Context"]
       85 SETTABLEKS                       R11 R13 K33 ["EditableDataModelProvider"]
       87 SETTABLEKS                       R12 R13 K34 ["UIDataModelProvider"]
       89 LOADK                            R14 K37 ["RBX_GraphDirty"]
       90 SETTABLEKS                       R14 R13 K35 ["DIRTY_ATTRIBUTE_NAME"]
       92 RETURN                           R13 1
