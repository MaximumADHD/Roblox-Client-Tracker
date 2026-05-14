PROTO_0:
        0 GETTABLEKS                       R3 R0 K0 ["original"]
        2 JUMPIFNOT                        R3 ; [+21]
        3 GETTABLEKS                       R3 R0 K0 ["original"]
        5 GETTABLEKS                       R3 R3 K1 ["Id"]
        7 JUMPIFNOT                        R3 ; [+16]
        8 GETTABLEKS                       R5 R0 K0 ["original"]
       10 GETTABLEKS                       R5 R5 K1 ["Id"]
       12 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
       14 MOVE                             R4 R1
       15 GETIMPORT                        R3 K4 [table.insert]
       17 CALL                             R3 2 0
       18 GETTABLEKS                       R3 R0 K0 ["original"]
       20 GETTABLEKS                       R3 R3 K1 ["Id"]
       22 LOADB                            R4 1
       23 SETTABLE                         R4 R2 R3
       24 GETTABLEKS                       R3 R0 K5 ["Children"]
       26 JUMPIFNOT                        R3 ; [+12]
       27 GETTABLEKS                       R3 R0 K5 ["Children"]
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 FORGPREP                         R3
       32 GETUPVAL                         R8 0
       33 MOVE                             R9 R7
       34 MOVE                             R10 R1
       35 MOVE                             R11 R2
       36 CALL                             R8 3 0
       37 FORGLOOP                         R3 2 ; [-6]
       39 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["Id"]
        2 JUMPIFNOT                        R3 ; [+12]
        3 GETTABLEKS                       R5 R0 K0 ["Id"]
        5 FASTCALL2                        TABLE_INSERT R1 R5 ; [+4]
        7 MOVE                             R4 R1
        8 GETIMPORT                        R3 K3 [table.insert]
       10 CALL                             R3 2 0
       11 GETTABLEKS                       R3 R0 K0 ["Id"]
       13 LOADB                            R4 1
       14 SETTABLE                         R4 R2 R3
       15 GETTABLEKS                       R3 R0 K4 ["Children"]
       17 JUMPIFNOT                        R3 ; [+12]
       18 GETTABLEKS                       R3 R0 K4 ["Children"]
       20 LOADNIL                          R4
       21 LOADNIL                          R5
       22 FORGPREP                         R3
       23 GETUPVAL                         R8 0
       24 MOVE                             R9 R7
       25 MOVE                             R10 R1
       26 MOVE                             R11 R2
       27 CALL                             R8 3 0
       28 FORGLOOP                         R3 2 ; [-6]
       30 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R0 K0 ["Name"]
        2 JUMPIFNOTEQ                      R2 R1 ; [+11]
        4 GETTABLEKS                       R2 R0 K1 ["Children"]
        6 JUMPIFNOT                        R2 ; [+7]
        7 GETTABLEKS                       R3 R0 K1 ["Children"]
        9 LENGTH                           R2 R3
       10 LOADN                            R3 0
       11 JUMPIFNOTLT                      R3 R2 ; [+2]
       13 RETURN                           R0 1
       14 GETTABLEKS                       R2 R0 K1 ["Children"]
       16 JUMPIFNOT                        R2 ; [+13]
       17 GETTABLEKS                       R2 R0 K1 ["Children"]
       19 LOADNIL                          R3
       20 LOADNIL                          R4
       21 FORGPREP                         R2
       22 GETUPVAL                         R7 0
       23 MOVE                             R8 R6
       24 MOVE                             R9 R1
       25 CALL                             R7 2 1
       26 JUMPIFNOT                        R7 ; [+1]
       27 RETURN                           R7 1
       28 FORGLOOP                         R2 2 ; [-7]
       30 LOADNIL                          R2
       31 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["_sessionId"]
        3 JUMPIFEQ                         R0 R2 ; [+2]
        5 RETURN                           R0 0
        6 GETUPVAL                         R2 0
        7 MOVE                             R4 R1
        8 JUMPIF                           R4 ; [+2]
        9 NEWTABLE                         R4 0 0
       11 NAMECALL                         R2 R2 K1 ["selectFromExplorer"]
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ListenForSelectionChanges"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["CallAssetPluginAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K1 [pcall]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R2 8 0
        2 GETUPVAL                         R3 0
        3 FASTCALL2                        SETMETATABLE R2 R3 ; [+3]
        5 GETIMPORT                        R1 K1 [setmetatable]
        7 CALL                             R1 2 1
        8 GETTABLEKS                       R2 R0 K2 ["treemapRef"]
       10 SETTABLEKS                       R2 R1 K3 ["_treemapRef"]
       12 GETTABLEKS                       R2 R0 K4 ["listRef"]
       14 SETTABLEKS                       R2 R1 K5 ["_listRef"]
       16 LOADNIL                          R2
       17 SETTABLEKS                       R2 R1 K6 ["_query"]
       19 LOADB                            R2 0
       20 SETTABLEKS                       R2 R1 K7 ["_deselectOnReselect"]
       22 LOADNIL                          R2
       23 SETTABLEKS                       R2 R1 K8 ["_metaBranchName"]
       25 GETUPVAL                         R2 1
       26 GETTABLEKS                       R2 R2 K9 ["create"]
       28 DUPTABLE                         R3 K13 [{"nodeIds", "idsHash", "source"}]
       29 NEWTABLE                         R4 0 0
       31 SETTABLEKS                       R4 R3 K10 ["nodeIds"]
       33 NEWTABLE                         R4 0 0
       35 SETTABLEKS                       R4 R3 K11 ["idsHash"]
       37 LOADK                            R4 K14 ["clear"]
       38 SETTABLEKS                       R4 R3 K12 ["source"]
       40 CALL                             R2 1 2
       41 SETTABLEKS                       R2 R1 K15 ["_selectionObservable"]
       43 SETTABLEKS                       R3 R1 K16 ["_setSelection"]
       45 GETIMPORT                        R9 K18 [tick]
       47 CALL                             R9 0 -1
       48 FASTCALL                         TOSTRING ; [+2]
       49 GETIMPORT                        R8 K20 [tostring]
       51 CALL                             R8 -1 1
       52 MOVE                             R5 R8
       53 LOADK                            R6 K21 ["_"]
       54 GETIMPORT                        R8 K24 [math.random]
       56 LOADK                            R9 K25 [100000]
       57 CALL                             R8 1 -1
       58 FASTCALL                         TOSTRING ; [+2]
       59 GETIMPORT                        R7 K20 [tostring]
       61 CALL                             R7 -1 1
       62 CONCAT                           R4 R5 R7
       63 SETTABLEKS                       R4 R1 K26 ["_sessionId"]
       65 GETTABLEKS                       R5 R0 K27 ["plugin"]
       67 JUMPIFNOT                        R5 ; [+14]
       68 GETTABLEKS                       R5 R0 K27 ["plugin"]
       70 LOADK                            R7 K28 ["SelectionChangedFromExplorer"]
       71 NEWCLOSURE                       R8 P0
       72 CAPTURE                          VAL R1
       73 NAMECALL                         R5 R5 K29 ["OnInvoke"]
       75 CALL                             R5 3 0
       76 GETIMPORT                        R5 K32 [task.defer]
       78 NEWCLOSURE                       R6 P1
       79 CAPTURE                          UPVAL U2
       80 CAPTURE                          VAL R4
       81 CALL                             R5 1 0
       82 RETURN                           R1 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["_selectionObservable"]
        2 RETURN                           R1 1

PROTO_8:
        0 SETTABLEKS                       R1 R0 K0 ["_query"]
        2 RETURN                           R0 0

PROTO_9:
        0 SETTABLEKS                       R1 R0 K0 ["_deselectOnReselect"]
        2 RETURN                           R0 0

PROTO_10:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["_metaBranchName"]
        3 NEWTABLE                         R3 0 0
        5 NEWTABLE                         R4 0 0
        7 LOADK                            R5 K1 ["clear"]
        8 NAMECALL                         R1 R0 K2 ["_applySelection"]
       10 CALL                             R1 4 0
       11 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R2 R1 K0 ["original"]
        2 JUMPIFNOT                        R2 ; [+4]
        3 GETTABLEKS                       R2 R1 K0 ["original"]
        5 GETTABLEKS                       R2 R2 K1 ["Id"]
        7 JUMPIF                           R2 ; [+1]
        8 RETURN                           R0 0
        9 GETTABLEKS                       R3 R0 K2 ["_selectionObservable"]
       11 GETTABLEKS                       R3 R3 K3 ["get"]
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+14]
       15 GETTABLEKS                       R4 R3 K4 ["idsHash"]
       17 JUMPIFNOT                        R4 ; [+11]
       18 GETTABLEKS                       R5 R3 K4 ["idsHash"]
       20 GETTABLE                         R4 R5 R2
       21 JUMPIFNOT                        R4 ; [+7]
       22 LOADNIL                          R4
       23 SETTABLEKS                       R4 R0 K5 ["_metaBranchName"]
       25 NAMECALL                         R4 R0 K6 ["clear"]
       27 CALL                             R4 1 0
       28 RETURN                           R0 0
       29 LOADNIL                          R4
       30 LOADNIL                          R5
       31 GETTABLEKS                       R6 R1 K7 ["Children"]
       33 JUMPIFNOT                        R6 ; [+27]
       34 GETTABLEKS                       R7 R1 K7 ["Children"]
       36 LENGTH                           R6 R7
       37 LOADN                            R7 0
       38 JUMPIFNOTLT                      R7 R6 ; [+22]
       40 NEWTABLE                         R4 0 0
       42 NEWTABLE                         R5 0 0
       44 GETUPVAL                         R6 0
       45 MOVE                             R7 R1
       46 MOVE                             R8 R4
       47 MOVE                             R9 R5
       48 CALL                             R6 3 0
       49 GETTABLEKS                       R7 R1 K0 ["original"]
       51 JUMPIFNOT                        R7 ; [+5]
       52 GETTABLEKS                       R6 R1 K0 ["original"]
       54 GETTABLEKS                       R6 R6 K8 ["Name"]
       56 JUMPIF                           R6 ; [+1]
       57 LOADNIL                          R6
       58 SETTABLEKS                       R6 R0 K5 ["_metaBranchName"]
       60 JUMP                             ; [+14]
       61 NEWTABLE                         R6 0 1
       63 MOVE                             R7 R2
       64 SETLIST                          R6 R7 1 [1]
       66 MOVE                             R4 R6
       67 NEWTABLE                         R6 1 0
       69 LOADB                            R7 1
       70 SETTABLE                         R7 R6 R2
       71 MOVE                             R5 R6
       72 LOADNIL                          R6
       73 SETTABLEKS                       R6 R0 K5 ["_metaBranchName"]
       75 MOVE                             R8 R4
       76 MOVE                             R9 R5
       77 LOADK                            R10 K9 ["treemap"]
       78 NAMECALL                         R6 R0 K10 ["_applySelection"]
       80 CALL                             R6 4 0
       81 RETURN                           R0 0

PROTO_12:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K0 ["_metaBranchName"]
        5 GETTABLEKS                       R2 R0 K1 ["_deselectOnReselect"]
        7 JUMPIFNOT                        R2 ; [+17]
        8 GETTABLEKS                       R2 R0 K2 ["_selectionObservable"]
       10 GETTABLEKS                       R2 R2 K3 ["get"]
       12 CALL                             R2 0 1
       13 JUMPIFNOT                        R2 ; [+11]
       14 GETTABLEKS                       R3 R2 K4 ["idsHash"]
       16 JUMPIFNOT                        R3 ; [+8]
       17 GETTABLEKS                       R4 R2 K4 ["idsHash"]
       19 GETTABLE                         R3 R4 R1
       20 JUMPIFNOT                        R3 ; [+4]
       21 NAMECALL                         R3 R0 K5 ["clear"]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 NEWTABLE                         R4 0 1
       27 MOVE                             R5 R1
       28 SETLIST                          R4 R5 1 [1]
       30 NEWTABLE                         R5 1 0
       32 LOADB                            R6 1
       33 SETTABLE                         R6 R5 R1
       34 LOADK                            R6 K6 ["list"]
       35 NAMECALL                         R2 R0 K7 ["_applySelection"]
       37 CALL                             R2 4 0
       38 RETURN                           R0 0

PROTO_13:
        0 JUMPIF                           R1 ; [+1]
        1 RETURN                           R0 0
        2 LOADNIL                          R2
        3 SETTABLEKS                       R2 R0 K0 ["_metaBranchName"]
        5 NEWTABLE                         R4 0 1
        7 MOVE                             R5 R1
        8 SETLIST                          R4 R5 1 [1]
       10 NEWTABLE                         R5 1 0
       12 LOADB                            R6 1
       13 SETTABLE                         R6 R5 R1
       14 LOADK                            R6 K1 ["list"]
       15 NAMECALL                         R2 R0 K2 ["_applySelection"]
       17 CALL                             R2 4 0
       18 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K0 ["_query"]
        2 JUMPIFNOT                        R2 ; [+6]
        3 GETTABLEKS                       R3 R2 K1 ["syncWithExplorer"]
        5 JUMPIFNOT                        R3 ; [+3]
        6 GETTABLEKS                       R3 R2 K2 ["getNodeIdsForInstances"]
        8 JUMPIF                           R3 ; [+1]
        9 RETURN                           R0 0
       10 GETTABLEKS                       R3 R2 K2 ["getNodeIdsForInstances"]
       12 MOVE                             R4 R1
       13 CALL                             R3 1 1
       14 GETTABLEKS                       R4 R0 K3 ["_selectionObservable"]
       16 GETTABLEKS                       R4 R4 K4 ["get"]
       18 CALL                             R4 0 1
       19 JUMPIFNOT                        R4 ; [+30]
       20 GETTABLEKS                       R5 R4 K5 ["idsHash"]
       22 JUMPIFNOT                        R5 ; [+27]
       23 LOADB                            R5 1
       24 MOVE                             R6 R3
       25 LOADNIL                          R7
       26 LOADNIL                          R8
       27 FORGPREP                         R6
       28 GETTABLEKS                       R12 R4 K5 ["idsHash"]
       30 GETTABLE                         R11 R12 R9
       31 JUMPIF                           R11 ; [+2]
       32 LOADB                            R5 0
       33 JUMP                             ; [+2]
       34 FORGLOOP                         R6 1 ; [-7]
       36 JUMPIFNOT                        R5 ; [+11]
       37 GETTABLEKS                       R6 R4 K5 ["idsHash"]
       39 LOADNIL                          R7
       40 LOADNIL                          R8
       41 FORGPREP                         R6
       42 GETTABLE                         R11 R3 R9
       43 JUMPIF                           R11 ; [+2]
       44 LOADB                            R5 0
       45 JUMP                             ; [+2]
       46 FORGLOOP                         R6 1 ; [-5]
       48 JUMPIFNOT                        R5 ; [+1]
       49 RETURN                           R0 0
       50 LOADNIL                          R5
       51 SETTABLEKS                       R5 R0 K6 ["_metaBranchName"]
       53 GETIMPORT                        R5 K8 [next]
       55 MOVE                             R6 R3
       56 CALL                             R5 1 1
       57 JUMPIF                           R5 ; [+9]
       58 NEWTABLE                         R7 0 0
       60 NEWTABLE                         R8 0 0
       62 LOADK                            R9 K9 ["explorer"]
       63 NAMECALL                         R5 R0 K10 ["_applySelection"]
       65 CALL                             R5 4 0
       66 RETURN                           R0 0
       67 NEWTABLE                         R5 0 0
       69 MOVE                             R6 R3
       70 LOADNIL                          R7
       71 LOADNIL                          R8
       72 FORGPREP                         R6
       73 FASTCALL2                        TABLE_INSERT R5 R9 ; [+5]
       75 MOVE                             R12 R5
       76 MOVE                             R13 R9
       77 GETIMPORT                        R11 K13 [table.insert]
       79 CALL                             R11 2 0
       80 FORGLOOP                         R6 1 ; [-8]
       82 MOVE                             R8 R5
       83 MOVE                             R9 R3
       84 LOADK                            R10 K9 ["explorer"]
       85 NAMECALL                         R6 R0 K10 ["_applySelection"]
       87 CALL                             R6 4 0
       88 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R2 R0 K0 ["_metaBranchName"]
        2 JUMPIFNOT                        R2 ; [+1]
        3 JUMPIF                           R1 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R2 0
        6 MOVE                             R3 R1
        7 GETTABLEKS                       R4 R0 K0 ["_metaBranchName"]
        9 CALL                             R2 2 1
       10 JUMPIF                           R2 ; [+4]
       11 LOADNIL                          R3
       12 SETTABLEKS                       R3 R0 K0 ["_metaBranchName"]
       14 RETURN                           R0 0
       15 NEWTABLE                         R3 0 0
       17 NEWTABLE                         R4 0 0
       19 GETUPVAL                         R5 1
       20 MOVE                             R6 R2
       21 MOVE                             R7 R3
       22 MOVE                             R8 R4
       23 CALL                             R5 3 0
       24 LENGTH                           R6 R3
       25 JUMPIFEQKN                       R6 K1 [0] ; [+2]
       27 LOADB                            R5 0 +1
       28 LOADB                            R5 1
       29 GETTABLEKS                       R6 R0 K2 ["_setSelection"]
       31 DUPTABLE                         R7 K6 [{"nodeIds", "idsHash", "source"}]
       32 SETTABLEKS                       R3 R7 K3 ["nodeIds"]
       34 SETTABLEKS                       R4 R7 K4 ["idsHash"]
       36 LOADK                            R8 K7 ["reapply"]
       37 SETTABLEKS                       R8 R7 K5 ["source"]
       39 CALL                             R6 1 0
       40 GETTABLEKS                       R6 R0 K8 ["_treemapRef"]
       42 JUMPIFNOT                        R6 ; [+5]
       43 GETTABLEKS                       R6 R0 K8 ["_treemapRef"]
       45 NAMECALL                         R6 R6 K9 ["getValue"]
       47 CALL                             R6 1 1
       48 JUMPIFNOT                        R6 ; [+2]
       49 SETTABLEKS                       R3 R6 K10 ["selectedNodeIds"]
       51 GETTABLEKS                       R7 R0 K11 ["_listRef"]
       53 JUMPIFNOT                        R7 ; [+5]
       54 GETTABLEKS                       R7 R0 K11 ["_listRef"]
       56 NAMECALL                         R7 R7 K9 ["getValue"]
       58 CALL                             R7 1 1
       59 JUMPIFNOT                        R7 ; [+11]
       60 GETTABLEKS                       R8 R7 K12 ["setSelectedIdsHash"]
       62 JUMPIFNOT                        R5 ; [+2]
       63 LOADNIL                          R9
       64 JUMP                             ; [+1]
       65 MOVE                             R9 R4
       66 CALL                             R8 1 0
       67 GETTABLEKS                       R8 R7 K13 ["setSelectedNodeId"]
       69 GETTABLEN                        R9 R3 1
       70 CALL                             R8 1 0
       71 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["ClearSelection"]
        2 NAMECALL                         R0 R0 K1 ["CallAssetPluginAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["SelectInstancesByPaths"]
        2 GETUPVAL                         R3 1
        3 NAMECALL                         R0 R0 K1 ["CallAssetPluginAsync"]
        5 CALL                             R0 3 0
        6 RETURN                           R0 0

PROTO_18:
        0 LENGTH                           R5 R1
        1 JUMPIFEQKN                       R5 K0 [0] ; [+2]
        3 LOADB                            R4 0 +1
        4 LOADB                            R4 1
        5 GETTABLEKS                       R5 R0 K1 ["_setSelection"]
        7 DUPTABLE                         R6 K5 [{"nodeIds", "idsHash", "source"}]
        8 SETTABLEKS                       R1 R6 K2 ["nodeIds"]
       10 SETTABLEKS                       R2 R6 K3 ["idsHash"]
       12 SETTABLEKS                       R3 R6 K4 ["source"]
       14 CALL                             R5 1 0
       15 GETTABLEKS                       R5 R0 K6 ["_treemapRef"]
       17 JUMPIFNOT                        R5 ; [+5]
       18 GETTABLEKS                       R5 R0 K6 ["_treemapRef"]
       20 NAMECALL                         R5 R5 K7 ["getValue"]
       22 CALL                             R5 1 1
       23 JUMPIFNOT                        R5 ; [+7]
       24 GETTABLEKS                       R6 R5 K8 ["setSelectedNodeIdsFromContext"]
       26 JUMPIFNOT                        R6 ; [+4]
       27 MOVE                             R8 R1
       28 NAMECALL                         R6 R5 K8 ["setSelectedNodeIdsFromContext"]
       30 CALL                             R6 2 0
       31 GETTABLEKS                       R6 R0 K9 ["_listRef"]
       33 JUMPIFNOT                        R6 ; [+5]
       34 GETTABLEKS                       R6 R0 K9 ["_listRef"]
       36 NAMECALL                         R6 R6 K7 ["getValue"]
       38 CALL                             R6 1 1
       39 JUMPIFNOT                        R6 ; [+35]
       40 GETTABLEKS                       R7 R6 K10 ["setSelectedIdsHash"]
       42 JUMPIFNOT                        R4 ; [+2]
       43 LOADNIL                          R8
       44 JUMP                             ; [+1]
       45 MOVE                             R8 R2
       46 CALL                             R7 1 0
       47 GETTABLEN                        R7 R1 1
       48 GETTABLEKS                       R8 R6 K11 ["setSelectedNodeId"]
       50 MOVE                             R9 R7
       51 CALL                             R8 1 0
       52 JUMPIFNOT                        R7 ; [+22]
       53 GETTABLEKS                       R8 R0 K12 ["_query"]
       55 JUMPIFNOT                        R8 ; [+19]
       56 GETTABLEKS                       R8 R0 K12 ["_query"]
       58 GETTABLEKS                       R8 R8 K13 ["getIndexForId"]
       60 JUMPIFNOT                        R8 ; [+14]
       61 GETTABLEKS                       R8 R0 K12 ["_query"]
       63 GETTABLEKS                       R8 R8 K13 ["getIndexForId"]
       65 MOVE                             R9 R7
       66 CALL                             R8 1 1
       67 JUMPIFNOT                        R8 ; [+7]
       68 GETTABLEKS                       R9 R6 K14 ["scrollToIndex"]
       70 JUMPIFNOT                        R9 ; [+4]
       71 GETTABLEKS                       R9 R6 K14 ["scrollToIndex"]
       73 MOVE                             R10 R8
       74 CALL                             R9 1 0
       75 GETTABLEKS                       R7 R0 K12 ["_query"]
       77 JUMPIFNOT                        R7 ; [+54]
       78 GETTABLEKS                       R8 R7 K15 ["syncWithExplorer"]
       80 JUMPIFNOT                        R8 ; [+51]
       81 JUMPIFEQKS                       R3 K16 ["explorer"] ; [+50]
       83 JUMPIFEQKS                       R3 K17 ["reapply"] ; [+48]
       85 JUMPIFNOT                        R4 ; [+6]
       86 GETIMPORT                        R8 K19 [pcall]
       88 DUPCLOSURE                       R9 K20 [PROTO_16]
       89 CAPTURE                          UPVAL U0
       90 CALL                             R8 1 0
       91 RETURN                           R0 0
       92 NEWTABLE                         R8 0 0
       94 MOVE                             R9 R1
       95 LOADNIL                          R10
       96 LOADNIL                          R11
       97 FORGPREP                         R9
       98 GETTABLEKS                       R14 R7 K21 ["getNodeById"]
      100 MOVE                             R15 R13
      101 CALL                             R14 1 1
      102 JUMPIFNOT                        R14 ; [+17]
      103 GETTABLEKS                       R15 R14 K22 ["Instances"]
      105 JUMPIFNOT                        R15 ; [+14]
      106 GETTABLEKS                       R15 R14 K22 ["Instances"]
      108 LOADNIL                          R16
      109 LOADNIL                          R17
      110 FORGPREP                         R15
      111 FASTCALL2                        TABLE_INSERT R8 R19 ; [+5]
      113 MOVE                             R21 R8
      114 MOVE                             R22 R19
      115 GETIMPORT                        R20 K25 [table.insert]
      117 CALL                             R20 2 0
      118 FORGLOOP                         R15 2 ; [-8]
      120 FORGLOOP                         R9 2 ; [-23]
      122 LENGTH                           R9 R8
      123 LOADN                            R10 0
      124 JUMPIFNOTLT                      R10 R9 ; [+7]
      126 GETIMPORT                        R9 K19 [pcall]
      128 NEWCLOSURE                       R10 P1
      129 CAPTURE                          UPVAL U0
      130 CAPTURE                          VAL R8
      131 CALL                             R9 1 0
      132 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["SceneAnalysis"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["Observable"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["AssetDMBridge"]
       24 CALL                             R2 1 1
       25 NEWTABLE                         R3 16 0
       27 SETTABLEKS                       R3 R3 K10 ["__index"]
       29 DUPCLOSURE                       R4 K11 [PROTO_0]
       30 CAPTURE                          VAL R4
       31 DUPCLOSURE                       R5 K12 [PROTO_1]
       32 CAPTURE                          VAL R5
       33 DUPCLOSURE                       R6 K13 [PROTO_2]
       34 CAPTURE                          VAL R6
       35 DUPCLOSURE                       R7 K14 [PROTO_6]
       36 CAPTURE                          VAL R3
       37 CAPTURE                          VAL R1
       38 CAPTURE                          VAL R2
       39 SETTABLEKS                       R7 R3 K15 ["new"]
       41 DUPCLOSURE                       R7 K16 [PROTO_7]
       42 SETTABLEKS                       R7 R3 K17 ["getSelectionObservable"]
       44 DUPCLOSURE                       R7 K18 [PROTO_8]
       45 SETTABLEKS                       R7 R3 K19 ["setQuery"]
       47 DUPCLOSURE                       R7 K20 [PROTO_9]
       48 SETTABLEKS                       R7 R3 K21 ["setDeselectOnReselect"]
       50 DUPCLOSURE                       R7 K22 [PROTO_10]
       51 SETTABLEKS                       R7 R3 K23 ["clear"]
       53 DUPCLOSURE                       R7 K24 [PROTO_11]
       54 CAPTURE                          VAL R4
       55 SETTABLEKS                       R7 R3 K25 ["selectFromTreemap"]
       57 DUPCLOSURE                       R7 K26 [PROTO_12]
       58 SETTABLEKS                       R7 R3 K27 ["selectFromList"]
       60 DUPCLOSURE                       R7 K28 [PROTO_13]
       61 SETTABLEKS                       R7 R3 K29 ["forceSelectFromList"]
       63 DUPCLOSURE                       R7 K30 [PROTO_14]
       64 SETTABLEKS                       R7 R3 K31 ["selectFromExplorer"]
       66 DUPCLOSURE                       R7 K32 [PROTO_15]
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R5
       69 SETTABLEKS                       R7 R3 K33 ["refreshMetaIds"]
       71 DUPCLOSURE                       R7 K34 [PROTO_18]
       72 CAPTURE                          VAL R2
       73 SETTABLEKS                       R7 R3 K35 ["_applySelection"]
       75 RETURN                           R3 1
