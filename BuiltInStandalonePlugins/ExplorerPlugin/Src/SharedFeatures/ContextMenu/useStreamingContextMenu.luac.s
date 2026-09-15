PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K3 [{[1] = "streamIn", ["instanceId"]}]
        2 GETUPVAL                         R3 1
        3 SETTABLEKS                       R3 R2 K2 ["instanceId"]
        5 NAMECALL                         R0 R0 K4 ["Fire"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["ShowAsync"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 0
        5 NAMECALL                         R0 R0 K1 ["Destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 LOADK                            R3 K0 ["ExplorerStreaming_%*"]
        2 GETUPVAL                         R5 1
        3 NAMECALL                         R5 R5 K1 ["GenerateGUID"]
        5 CALL                             R5 1 1
        6 NAMECALL                         R3 R3 K2 ["format"]
        8 CALL                             R3 2 1
        9 NAMECALL                         R1 R1 K3 ["CreatePluginMenu"]
       11 CALL                             R1 2 1
       12 LOADK                            R4 K4 ["Stream"]
       13 GETUPVAL                         R8 2
       14 LOADK                            R10 K5 ["ContextMenu"]
       15 LOADK                            R11 K6 ["stream"]
       16 NAMECALL                         R8 R8 K7 ["getText"]
       18 CALL                             R8 3 1
       19 MOVE                             R6 R8
       20 LOADK                            R7 K8 ["     "]
       21 CONCAT                           R5 R6 R7
       22 NAMECALL                         R2 R1 K9 ["AddNewAction"]
       24 CALL                             R2 3 1
       25 GETTABLEKS                       R3 R2 K10 ["Triggered"]
       27 NEWCLOSURE                       R5 P0
       28 CAPTURE                          UPVAL U3
       29 CAPTURE                          VAL R0
       30 NAMECALL                         R3 R3 K11 ["Connect"]
       32 CALL                             R3 2 0
       33 GETIMPORT                        R3 K14 [task.spawn]
       35 NEWCLOSURE                       R4 P1
       36 CAPTURE                          VAL R1
       37 CALL                             R3 1 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ContextServices"]
        3 GETTABLEKS                       R0 R0 K1 ["Plugin"]
        5 NAMECALL                         R0 R0 K2 ["use"]
        7 CALL                             R0 1 1
        8 NAMECALL                         R0 R0 K3 ["get"]
       10 CALL                             R0 1 1
       11 GETUPVAL                         R1 0
       12 GETTABLEKS                       R1 R1 K0 ["ContextServices"]
       14 GETTABLEKS                       R1 R1 K4 ["Localization"]
       16 NAMECALL                         R1 R1 K2 ["use"]
       18 CALL                             R1 1 1
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K5 ["useState"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K6 ["Signal"]
       25 GETTABLEKS                       R3 R3 K7 ["new"]
       27 CALL                             R2 1 1
       28 GETUPVAL                         R3 1
       29 GETTABLEKS                       R3 R3 K8 ["useCallback"]
       31 NEWCLOSURE                       R4 P0
       32 CAPTURE                          VAL R0
       33 CAPTURE                          UPVAL U3
       34 CAPTURE                          VAL R1
       35 CAPTURE                          VAL R2
       36 NEWTABLE                         R5 0 2
       38 MOVE                             R6 R0
       39 MOVE                             R7 R1
       40 SETLIST                          R5 R6 2 [1]
       42 CALL                             R3 2 1
       43 DUPTABLE                         R4 K11 [{"showStreamingContextMenu", "streamingActionTriggeredSignal"}]
       44 SETTABLEKS                       R3 R4 K9 ["showStreamingContextMenu"]
       46 SETTABLEKS                       R2 R4 K10 ["streamingActionTriggeredSignal"]
       48 RETURN                           R4 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["HttpService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["ExplorerPlugin"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Packages"]
       17 GETTABLEKS                       R3 R3 K11 ["Explorer"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K9 [require]
       22 GETTABLEKS                       R4 R1 K10 ["Packages"]
       24 GETTABLEKS                       R4 R4 K12 ["Framework"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K9 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Packages"]
       31 GETTABLEKS                       R5 R5 K13 ["React"]
       33 CALL                             R4 1 1
       34 DUPCLOSURE                       R5 K14 [PROTO_3]
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R4
       37 CAPTURE                          VAL R2
       38 CAPTURE                          VAL R0
       39 RETURN                           R5 1
