MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"ANNOTATIONS_ACTION_URI", "ADD_ANNOTATION_ACTION_URI"}]
        2 DUPTABLE                         R1 K13 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["Category"] = "Actions", ["PluginId"] = "PlaceAnnotations", ["ItemId"] = "Toggle"}]
        3 SETTABLEKS                       R1 R0 K0 ["ANNOTATIONS_ACTION_URI"]
        5 DUPTABLE                         R1 K15 [{["DataModel"] = "Standalone", ["PluginType"] = "Unknown", ["Category"] = "Actions", ["PluginId"] = "PlaceAnnotations", ["ItemId"] = "AddAnnotation"}]
        6 SETTABLEKS                       R1 R0 K1 ["ADD_ANNOTATION_ACTION_URI"]
        8 RETURN                           R0 1
