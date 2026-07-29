MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{[1] = 25, ["BackgroundColor"], ["BackgroundTransparency"] = 0.2}]
        2 GETIMPORT                        R1 K8 [Color3.fromRGB]
        4 LOADN                            R2 0
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K2 ["BackgroundColor"]
       10 RETURN                           R0 1
