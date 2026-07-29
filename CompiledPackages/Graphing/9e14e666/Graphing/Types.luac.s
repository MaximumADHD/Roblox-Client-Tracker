MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Graphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 DUPTABLE                         R3 K31 [{["SIDE_LEFT"] = "Left", ["SIDE_RIGHT"] = "Right", ["SIDE_TOP"] = "Top", ["SIDE_BOTTOM"] = "Bottom", ["AXIS_X"] = "X", ["AXIS_Y"] = "Y", ["SCALING_LINEAR"] = "Linear", ["SCALING_POWER"] = "Power", ["SCALING_LOGARITHMIC"] = "Logarithmic", ["SCALE_UNIFORM"] = "Uniform", ["SCALE_LOGARITHMIC"] = "Logarithmic", ["SCALE_VALUES"] = "Values"}]
       15 RETURN                           R3 1
