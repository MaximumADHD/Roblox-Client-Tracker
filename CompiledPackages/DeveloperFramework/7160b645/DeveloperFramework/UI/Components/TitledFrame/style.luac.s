MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 8 0
        3 LOADN                            R1 10
        4 SETTABLEKS                       R1 R0 K0 ["Spacing"]
        6 LOADN                            R1 180
        7 SETTABLEKS                       R1 R0 K1 ["TitleWidth"]
        9 NEWTABLE                         R1 0 0
       11 SETTABLEKS                       R1 R0 K2 ["&Label"]
       13 DUPTABLE                         R1 K4 [{"FillDirection"}]
       14 GETIMPORT                        R2 K7 [Enum.FillDirection.Vertical]
       16 SETTABLEKS                       R2 R1 K3 ["FillDirection"]
       18 SETTABLEKS                       R1 R0 K8 ["&Subtitle"]
       20 DUPTABLE                         R1 K4 [{"FillDirection"}]
       21 GETIMPORT                        R2 K7 [Enum.FillDirection.Vertical]
       23 SETTABLEKS                       R2 R1 K3 ["FillDirection"]
       25 SETTABLEKS                       R1 R0 K9 ["&Title"]
       27 RETURN                           R0 1
