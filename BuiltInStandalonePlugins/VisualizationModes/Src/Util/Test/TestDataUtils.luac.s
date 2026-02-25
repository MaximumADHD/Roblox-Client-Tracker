PROTO_0:
        0 DUPTABLE                         R0 K4 [{"title", "name", "toolTip", "enabled"}]
        1 LOADK                            R1 K5 ["Device Emulation"]
        2 SETTABLEKS                       R1 R0 K0 ["title"]
        4 LOADK                            R1 K6 ["DeviceEmulation"]
        5 SETTABLEKS                       R1 R0 K1 ["name"]
        7 LOADK                            R1 K7 ["Device Emulation ToolTip"]
        8 SETTABLEKS                       R1 R0 K2 ["toolTip"]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K3 ["enabled"]
       13 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K4 [{"title", "name", "toolTip", "enabled"}]
        1 LOADK                            R1 K5 ["Light Guides"]
        2 SETTABLEKS                       R1 R0 K0 ["title"]
        4 LOADK                            R1 K6 ["LightGuides"]
        5 SETTABLEKS                       R1 R0 K1 ["name"]
        7 LOADK                            R1 K7 ["Light Guides ToolTip"]
        8 SETTABLEKS                       R1 R0 K2 ["toolTip"]
       10 LOADB                            R1 0
       11 SETTABLEKS                       R1 R0 K3 ["enabled"]
       13 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K4 [{"title", "name", "toolTip", "enabled"}]
        1 LOADK                            R1 K5 ["No Tool Tip Mode"]
        2 SETTABLEKS                       R1 R0 K0 ["title"]
        4 LOADK                            R1 K6 ["NoToolTip"]
        5 SETTABLEKS                       R1 R0 K1 ["name"]
        7 LOADK                            R1 K7 [""]
        8 SETTABLEKS                       R1 R0 K2 ["toolTip"]
       10 LOADB                            R1 1
       11 SETTABLEKS                       R1 R0 K3 ["enabled"]
       13 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K5 [{"title", "name", "enabled", "lastUpdateTimeUnixTimeStamp", "visualizationModeList"}]
        1 LOADK                            R1 K6 ["GUI"]
        2 SETTABLEKS                       R1 R0 K0 ["title"]
        4 LOADK                            R1 K6 ["GUI"]
        5 SETTABLEKS                       R1 R0 K1 ["name"]
        7 LOADB                            R1 1
        8 SETTABLEKS                       R1 R0 K2 ["enabled"]
       10 LOADN                            R1 0
       11 SETTABLEKS                       R1 R0 K3 ["lastUpdateTimeUnixTimeStamp"]
       13 NEWTABLE                         R1 0 3
       15 GETUPVAL                         R3 0
       16 GETTABLEKS                       R2 R3 K7 ["visualizationMode"]
       18 CALL                             R2 0 1
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K8 ["disabledVisualizationMode"]
       22 CALL                             R3 0 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R4 R5 K9 ["noToolTipVisualizationMode"]
       26 CALL                             R4 0 -1
       27 SETLIST                          R1 R2 -1 [1]
       29 SETTABLEKS                       R1 R0 K4 ["visualizationModeList"]
       31 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K0 ["visualizationModeCategory"]
        5 CALL                             R1 0 -1
        6 SETLIST                          R0 R1 -1 [1]
        8 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"visualizationModeServiceState", "hostDataModelType"}]
        1 NEWTABLE                         R3 0 1
        3 DUPTABLE                         R4 K8 [{"name", "enabled", "title", "visualizationModeList", "lastUpdateTimeUnixTimeStamp"}]
        4 LOADK                            R5 K9 ["TestCategory"]
        5 SETTABLEKS                       R5 R4 K3 ["name"]
        7 LOADB                            R5 1
        8 SETTABLEKS                       R5 R4 K4 ["enabled"]
       10 LOADK                            R5 K10 ["Test Category"]
       11 SETTABLEKS                       R5 R4 K5 ["title"]
       13 NEWTABLE                         R5 0 2
       15 DUPTABLE                         R6 K12 [{"name", "title", "enabled", "toolTip"}]
       16 LOADK                            R7 K13 ["TestMode1"]
       17 SETTABLEKS                       R7 R6 K3 ["name"]
       19 LOADK                            R7 K13 ["TestMode1"]
       20 SETTABLEKS                       R7 R6 K5 ["title"]
       22 SETTABLEKS                       R1 R6 K4 ["enabled"]
       24 LOADK                            R7 K13 ["TestMode1"]
       25 SETTABLEKS                       R7 R6 K11 ["toolTip"]
       27 DUPTABLE                         R7 K12 [{"name", "title", "enabled", "toolTip"}]
       28 LOADK                            R8 K14 ["TestMode2"]
       29 SETTABLEKS                       R8 R7 K3 ["name"]
       31 LOADK                            R8 K14 ["TestMode2"]
       32 SETTABLEKS                       R8 R7 K5 ["title"]
       34 LOADB                            R8 0
       35 SETTABLEKS                       R8 R7 K4 ["enabled"]
       37 LOADK                            R8 K14 ["TestMode2"]
       38 SETTABLEKS                       R8 R7 K11 ["toolTip"]
       40 SETLIST                          R5 R6 2 [1]
       42 SETTABLEKS                       R5 R4 K6 ["visualizationModeList"]
       44 LOADN                            R5 0
       45 SETTABLEKS                       R5 R4 K7 ["lastUpdateTimeUnixTimeStamp"]
       47 SETLIST                          R3 R4 1 [1]
       49 SETTABLEKS                       R3 R2 K0 ["visualizationModeServiceState"]
       51 SETTABLEKS                       R0 R2 K1 ["hostDataModelType"]
       53 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 8 0
       16 DUPCLOSURE                       R3 K8 [PROTO_0]
       17 SETTABLEKS                       R3 R2 K9 ["visualizationMode"]
       19 DUPCLOSURE                       R3 K10 [PROTO_1]
       20 SETTABLEKS                       R3 R2 K11 ["disabledVisualizationMode"]
       22 DUPCLOSURE                       R3 K12 [PROTO_2]
       23 SETTABLEKS                       R3 R2 K13 ["noToolTipVisualizationMode"]
       25 DUPCLOSURE                       R3 K14 [PROTO_3]
       26 CAPTURE                          VAL R2
       27 SETTABLEKS                       R3 R2 K15 ["visualizationModeCategory"]
       29 DUPCLOSURE                       R3 K16 [PROTO_4]
       30 CAPTURE                          VAL R2
       31 SETTABLEKS                       R3 R2 K17 ["visualizationModeCategories"]
       33 DUPCLOSURE                       R3 K18 [PROTO_5]
       34 SETTABLEKS                       R3 R2 K19 ["clientCombinerState"]
       36 RETURN                           R2 1
