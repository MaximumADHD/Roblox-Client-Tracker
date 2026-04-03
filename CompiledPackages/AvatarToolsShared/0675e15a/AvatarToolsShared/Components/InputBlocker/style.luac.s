MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"TextSize", "BackgroundColor", "BackgroundTransparency"}]
        2 LOADN                            R1 25
        3 SETTABLEKS                       R1 R0 K0 ["TextSize"]
        5 GETIMPORT                        R1 K6 [Color3.fromRGB]
        7 LOADN                            R2 0
        8 LOADN                            R3 0
        9 LOADN                            R4 0
       10 CALL                             R1 3 1
       11 SETTABLEKS                       R1 R0 K1 ["BackgroundColor"]
       13 LOADK                            R1 K7 [0.2]
       14 SETTABLEKS                       R1 R0 K2 ["BackgroundTransparency"]
       16 RETURN                           R0 1
