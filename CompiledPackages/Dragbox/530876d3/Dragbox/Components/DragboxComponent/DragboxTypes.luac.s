MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Dragbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 NEWTABLE                         R3 8 0
       16 DUPTABLE                         R4 K9 [{["Standard"] = "Standard"}]
       17 SETTABLEKS                       R4 R3 K10 ["VariantEnum"]
       19 DUPTABLE                         R4 K14 [{["None"] = "None", ["Auto"] = "Auto", ["Always"] = "Always"}]
       20 SETTABLEKS                       R4 R3 K15 ["VisibilityEnum"]
       22 DUPTABLE                         R4 K20 [{["XSmall"] = "XSmall", ["Small"] = "Small", ["Medium"] = "Medium", ["Large"] = "Large"}]
       23 SETTABLEKS                       R4 R3 K21 ["InputSizeEnum"]
       25 DUPTABLE                         R4 K24 [{["None"] = "None", ["Background"] = "Background", ["Border"] = "Border"}]
       26 SETTABLEKS                       R4 R3 K25 ["StateLayerAffordanceEnum"]
       28 DUPTABLE                         R4 K33 [{["Initialize"] = "Initialize", ["Default"] = "Default", ["Pressed"] = "Pressed", ["Hover"] = "Hover", ["Selected"] = "Selected", ["SelectedPressed"] = "SelectedPressed", ["Disabled"] = "Disabled"}]
       29 SETTABLEKS                       R4 R3 K34 ["ControlStateEnum"]
       31 DUPTABLE                         R4 K33 [{["Initialize"] = "Initialize", ["Default"] = "Default", ["Pressed"] = "Pressed", ["Hover"] = "Hover", ["Selected"] = "Selected", ["SelectedPressed"] = "SelectedPressed", ["Disabled"] = "Disabled"}]
       32 SETTABLEKS                       R4 R3 K34 ["ControlStateEnum"]
       34 RETURN                           R3 1
