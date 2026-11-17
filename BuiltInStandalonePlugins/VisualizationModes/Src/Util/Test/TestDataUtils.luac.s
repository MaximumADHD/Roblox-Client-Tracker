PROTO_0:
        0 DUPTABLE                         R0 K8 [{[1] = "Device Emulation", ["name"] = "DeviceEmulation", ["toolTip"] = "Device Emulation ToolTip", ["enabled"] = True}]
        1 RETURN                           R0 1

PROTO_1:
        0 DUPTABLE                         R0 K10 [{[1] = "Light Guides", ["name"] = "LightGuides", ["toolTip"] = "Light Guides ToolTip", ["enabled"] = False, ["sortOrder"] = 0}]
        1 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R0 K10 [{[1] = "No Tool Tip Mode", ["name"] = "NoToolTip", ["toolTip"] = "", ["enabled"] = True, ["sortOrder"] = 0}]
        1 RETURN                           R0 1

PROTO_3:
        0 DUPTABLE                         R0 K8 [{[1] = "GUI", ["name"] = "GUI", ["enabled"] = True, ["lastUpdateTimeUnixTimeStamp"] = 0, ["visualizationModeList"]}]
        1 NEWTABLE                         R1 0 3
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R2 R2 K9 ["visualizationMode"]
        6 CALL                             R2 0 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K10 ["disabledVisualizationMode"]
       10 CALL                             R3 0 1
       11 GETUPVAL                         R4 0
       12 GETTABLEKS                       R4 R4 K11 ["noToolTipVisualizationMode"]
       14 CALL                             R4 0 -1
       15 SETLIST                          R1 R2 -1 [1]
       17 SETTABLEKS                       R1 R0 K7 ["visualizationModeList"]
       19 RETURN                           R0 1

PROTO_4:
        0 NEWTABLE                         R0 0 1
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K0 ["visualizationModeCategory"]
        5 CALL                             R1 0 -1
        6 SETLIST                          R0 R1 -1 [1]
        8 RETURN                           R0 1

PROTO_5:
        0 DUPTABLE                         R2 K2 [{"visualizationModeServiceState", "hostDataModelType"}]
        1 NEWTABLE                         R3 0 1
        3 DUPTABLE                         R4 K12 [{["name"] = "TestCategory", ["enabled"] = True, ["title"] = "Test Category", ["visualizationModeList"], ["lastUpdateTimeUnixTimeStamp"] = 0}]
        4 NEWTABLE                         R5 0 2
        6 DUPTABLE                         R6 K16 [{["name"] = "TestMode1", ["title"] = "TestMode1", ["enabled"], ["toolTip"] = "TestMode1", ["sortOrder"] = 0}]
        7 SETTABLEKS                       R1 R6 K5 ["enabled"]
        9 DUPTABLE                         R7 K19 [{["name"] = "TestMode2", ["title"] = "TestMode2", ["enabled"] = False, ["toolTip"] = "TestMode2", ["sortOrder"] = 0}]
       10 SETLIST                          R5 R6 2 [1]
       12 SETTABLEKS                       R5 R4 K9 ["visualizationModeList"]
       14 SETLIST                          R3 R4 1 [1]
       16 SETTABLEKS                       R3 R2 K0 ["visualizationModeServiceState"]
       18 SETTABLEKS                       R0 R2 K1 ["hostDataModelType"]
       20 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
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
