MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 LOADK                            R1 K0 ["LayoutGenSceneBox"]
        4 SETTABLEKS                       R1 R0 K1 ["Scope"]
        6 DUPTABLE                         R1 K14 [{["SizeX"] = "sizeX", ["SizeY"] = "sizeY", ["SizeZ"] = "sizeZ", ["PositionX"] = "positionX", ["PositionY"] = "positionY", ["PositionZ"] = "positionZ"}]
        7 SETTABLEKS                       R1 R0 K15 ["Field"]
        9 RETURN                           R0 1
