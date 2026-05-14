PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Signal"]
        6 GETTABLEKS                       R2 R2 K2 ["new"]
        8 CALL                             R1 1 1
        9 GETUPVAL                         R2 2
       10 MOVE                             R3 R1
       11 CALL                             R2 1 1
       12 GETUPVAL                         R4 1
       13 GETTABLEKS                       R4 R4 K3 ["Flags"]
       15 GETTABLEKS                       R4 R4 K4 ["getFFlagExplorerStreaming"]
       17 CALL                             R4 0 1
       18 JUMPIFNOT                        R4 ; [+3]
       19 GETUPVAL                         R3 3
       20 CALL                             R3 0 1
       21 JUMP                             ; [+1]
       22 LOADNIL                          R3
       23 GETUPVAL                         R4 4
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K5 ["Components"]
       27 GETTABLEKS                       R5 R5 K6 ["Contexts"]
       29 GETTABLEKS                       R5 R5 K7 ["ContextMenuContextProvider"]
       31 DUPTABLE                         R6 K12 [{"showContextMenu", "actionTriggeredSignal", "showStreamingContextMenu", "streamingActionTriggeredSignal"}]
       32 SETTABLEKS                       R2 R6 K8 ["showContextMenu"]
       34 SETTABLEKS                       R1 R6 K9 ["actionTriggeredSignal"]
       36 MOVE                             R7 R3
       37 JUMPIFNOT                        R7 ; [+2]
       38 GETTABLEKS                       R7 R3 K10 ["showStreamingContextMenu"]
       40 SETTABLEKS                       R7 R6 K10 ["showStreamingContextMenu"]
       42 MOVE                             R7 R3
       43 JUMPIFNOT                        R7 ; [+2]
       44 GETTABLEKS                       R7 R3 K11 ["streamingActionTriggeredSignal"]
       46 SETTABLEKS                       R7 R6 K11 ["streamingActionTriggeredSignal"]
       48 GETTABLEKS                       R7 R0 K13 ["children"]
       50 CALL                             R4 3 -1
       51 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Explorer"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["SharedFeatures"]
       27 GETTABLEKS                       R4 R4 K11 ["ContextMenu"]
       29 GETTABLEKS                       R4 R4 K12 ["useShowContextMenu"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K9 ["Src"]
       36 GETTABLEKS                       R5 R5 K10 ["SharedFeatures"]
       38 GETTABLEKS                       R5 R5 K11 ["ContextMenu"]
       40 GETTABLEKS                       R5 R5 K13 ["useStreamingContextMenu"]
       42 CALL                             R4 1 1
       43 GETTABLEKS                       R5 R2 K14 ["createElement"]
       45 DUPCLOSURE                       R6 K15 [PROTO_0]
       46 CAPTURE                          VAL R2
       47 CAPTURE                          VAL R1
       48 CAPTURE                          VAL R3
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R5
       51 GETTABLEKS                       R8 R1 K16 ["Flags"]
       53 GETTABLEKS                       R8 R8 K17 ["getFFlagExplorerFixContextMenu"]
       55 CALL                             R8 0 1
       56 JUMPIFNOT                        R8 ; [+2]
       57 MOVE                             R7 R6
       58 RETURN                           R7 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETIMPORT                        R8 K1 [script]
       63 GETTABLEKS                       R8 R8 K18 ["Parent"]
       65 GETTABLEKS                       R8 R8 K19 ["DEPRECATED_StudioContextMenuContextProvider"]
       67 CALL                             R7 1 1
       68 RETURN                           R7 1
