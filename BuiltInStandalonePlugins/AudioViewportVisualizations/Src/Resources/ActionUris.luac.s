PROTO_0:
        0 DUPTABLE                         R1 K7 [{[1] = "Standalone", ["PluginId"] = "AudioViewportVisualizations", ["Category"] = "Actions", ["ItemId"]}]
        1 SETTABLEKS                       R0 R1 K6 ["ItemId"]
        3 GETIMPORT                        R2 K10 [table.freeze]
        5 MOVE                             R3 R1
        6 CALL                             R2 1 -1
        7 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 DUPCLOSURE                       R0 K0 [PROTO_0]
        2 DUPTABLE                         R1 K3 [{"TOGGLE_ACTION_URI", "SHOW_INACTIVE_ACTION_URI"}]
        3 DUPTABLE                         R3 K12 [{["DataModel"] = "Standalone", ["PluginId"] = "AudioViewportVisualizations", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
        4 GETIMPORT                        R4 K15 [table.freeze]
        6 MOVE                             R5 R3
        7 CALL                             R4 1 1
        8 MOVE                             R2 R4
        9 SETTABLEKS                       R2 R1 K1 ["TOGGLE_ACTION_URI"]
       11 DUPTABLE                         R3 K17 [{["DataModel"] = "Standalone", ["PluginId"] = "AudioViewportVisualizations", ["Category"] = "Actions", ["ItemId"] = "ToggleShowInactiveSources"}]
       12 GETIMPORT                        R4 K15 [table.freeze]
       14 MOVE                             R5 R3
       15 CALL                             R4 1 1
       16 MOVE                             R2 R4
       17 SETTABLEKS                       R2 R1 K2 ["SHOW_INACTIVE_ACTION_URI"]
       19 RETURN                           R1 1
