MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 4 0
        3 DUPTABLE                         R1 K3 [{[1] = "Create", ["Edit"] = "Edit", ["None"] = "None"}]
        4 SETTABLEKS                       R1 R0 K4 ["Tab"]
        6 DUPTABLE                         R2 K19 [{["Clear"] = "Clear", ["Draw"] = "Draw", ["Empty"] = "Empty", ["Fill"] = "Fill", ["Flatten"] = "Flatten", ["Generate"] = "Generate", ["Import"] = "Import", ["Mock"] = "Mock", ["Paint"] = "Paint", ["SeaLevel"] = "SeaLevel", ["Select"] = "Select", ["Sculpt"] = "Sculpt", ["Smooth"] = "Smooth", ["Transform"] = "Transform"}]
        7 SETTABLEKS                       R2 R0 K20 ["Tool"]
        9 DUPTABLE                         R3 K22 [{["Mountain"] = "Mountain"}]
       10 SETTABLEKS                       R3 R0 K23 ["GenerationTool"]
       12 RETURN                           R0 1
