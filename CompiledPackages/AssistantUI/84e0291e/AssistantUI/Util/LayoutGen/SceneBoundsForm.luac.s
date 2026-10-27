MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{[1] = "generate_scene_bounds", ["Row"], ["ModelSegment"]}]
        2 DUPTABLE                         R1 K13 [{["Size"] = "size", ["Position"] = "position", ["UseMeshGen"] = "useMeshGen", ["Quality"] = "quality"}]
        3 SETTABLEKS                       R1 R0 K2 ["Row"]
        5 DUPTABLE                         R1 K18 [{["ProcModels"] = "procModels", ["ProcModelsAndMeshes"] = "procModelsAndMeshes"}]
        6 SETTABLEKS                       R1 R0 K3 ["ModelSegment"]
        8 RETURN                           R0 1
