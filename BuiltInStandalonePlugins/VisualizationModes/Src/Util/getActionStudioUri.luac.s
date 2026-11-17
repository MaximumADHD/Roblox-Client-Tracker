PROTO_0:
        0 DUPTABLE                         R2 K6 [{[1] = "Standalone", ["PluginId"], ["Category"] = "Actions", ["ItemId"]}]
        1 SETTABLEKS                       R0 R2 K2 ["PluginId"]
        3 SETTABLEKS                       R1 R2 K5 ["ItemId"]
        5 RETURN                           R2 1

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
       14 DUPCLOSURE                       R2 K8 [PROTO_0]
       15 RETURN                           R2 1
