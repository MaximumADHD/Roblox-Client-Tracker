MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K9 [{[1] = "Arctic", ["Canyons"] = "Canyons", ["Dunes"] = "Dunes", ["Hills"] = "Hills", ["Lavascape"] = "Lavascape", ["Marsh"] = "Marsh", ["Mountains"] = "Mountains", ["Plains"] = "Plains", ["Water"] = "Water"}]
        2 DUPTABLE                         R1 K11 [{"Biome"}]
        3 SETTABLEKS                       R0 R1 K10 ["Biome"]
        5 RETURN                           R1 1
