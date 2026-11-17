PROTO_0:
        0 GETIMPORT                        R2 K2 [Vector2.new]
        2 GETIMPORT                        R3 K4 [game]
        4 MOVE                             R5 R0
        5 NAMECALL                         R3 R3 K5 ["GetFastInt"]
        7 CALL                             R3 2 1
        8 GETIMPORT                        R4 K4 [game]
       10 MOVE                             R6 R1
       11 NAMECALL                         R4 R4 K5 ["GetFastInt"]
       13 CALL                             R4 2 -1
       14 CALL                             R2 -1 -1
       15 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["PublishStatusDefaultContentWidth"]
        2 LOADK                            R2 K1 ["PublishStatusDefaultContentHeight"]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["PublishStatusMinContentWidth"]
        2 LOADK                            R2 K1 ["PublishStatusMinContentHeight"]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["PublishStatusDefaultContentWidth"]
        4 LOADN                            R3 640
        5 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
        7 CALL                             R0 3 0
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["PublishStatusDefaultContentHeight"]
       11 LOADN                            R3 480
       12 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       14 CALL                             R0 3 0
       15 GETIMPORT                        R0 K1 [game]
       17 LOADK                            R2 K5 ["PublishStatusMinContentWidth"]
       18 LOADN                            R3 250
       19 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       21 CALL                             R0 3 0
       22 GETIMPORT                        R0 K1 [game]
       24 LOADK                            R2 K6 ["PublishStatusMinContentHeight"]
       25 LOADN                            R3 200
       26 NAMECALL                         R0 R0 K3 ["DefineFastInt"]
       28 CALL                             R0 3 0
       29 DUPCLOSURE                       R0 K7 [PROTO_0]
       30 DUPTABLE                         R1 K17 [{["WidgetId"] = "PublishStatus", ["MessageBusNamespace"] = "publishStatus", ["LocalizationNamespace"] = "PublishStatus", ["WebEvents"], ["AllowedStudioActionUris"], ["getDefaultContentSize"], ["getMinContentSize"]}]
       31 DUPTABLE                         R2 K24 [{["ActivateAction"] = "activateAction", ["Close"] = "close", ["Resize"] = "resize"}]
       32 SETTABLEKS                       R2 R1 K13 ["WebEvents"]
       34 DUPTABLE                         R2 K26 [{"ManageCollaborators"}]
       35 DUPTABLE                         R3 K34 [{["DataModel"] = "Standalone", ["PluginId"] = "ManageCollaborators", ["Category"] = "Actions", ["ItemId"] = "Open"}]
       36 SETTABLEKS                       R3 R2 K25 ["ManageCollaborators"]
       38 SETTABLEKS                       R2 R1 K14 ["AllowedStudioActionUris"]
       40 DUPCLOSURE                       R2 K35 [PROTO_1]
       41 CAPTURE                          VAL R0
       42 SETTABLEKS                       R2 R1 K15 ["getDefaultContentSize"]
       44 DUPCLOSURE                       R2 K36 [PROTO_2]
       45 CAPTURE                          VAL R0
       46 SETTABLEKS                       R2 R1 K16 ["getMinContentSize"]
       48 RETURN                           R1 1
