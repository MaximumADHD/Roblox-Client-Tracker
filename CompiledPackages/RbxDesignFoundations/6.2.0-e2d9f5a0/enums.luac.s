MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{[1] = "Dark", ["Light"] = "Light"}]
        2 DUPTABLE                         R1 K21 [{["CircuitRush"] = "CircuitRush", ["Classic"] = "Classic", ["CosmicDust"] = "CosmicDust", ["Default"] = "Default", ["ElectricLime"] = "ElectricLime", ["Halloween2026"] = "Halloween2026", ["HyperPlum"] = "HyperPlum", ["InfernoBlast"] = "InfernoBlast", ["Kids"] = "Kids", ["KineticEnergy"] = "KineticEnergy", ["LavaGlow"] = "LavaGlow", ["NebulaDrift"] = "NebulaDrift", ["NitroFrost"] = "NitroFrost", ["PixelPop"] = "PixelPop", ["PolarFreeze"] = "PolarFreeze", ["QuantumPulse"] = "QuantumPulse", ["StarBurst"] = "StarBurst", ["SuperCharge"] = "SuperCharge"}]
        3 DUPTABLE                         R2 K24 [{"ColorMode", "Theme"}]
        4 SETTABLEKS                       R0 R2 K22 ["ColorMode"]
        6 SETTABLEKS                       R1 R2 K23 ["Theme"]
        8 RETURN                           R2 1
