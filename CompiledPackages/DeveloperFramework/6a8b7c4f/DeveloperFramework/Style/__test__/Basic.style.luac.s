MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"BackgroundColor3"}]
        2 GETIMPORT                        R1 K4 [Color3.fromRGB]
        4 LOADN                            R2 255
        5 LOADN                            R3 0
        6 LOADN                            R4 0
        7 CALL                             R1 3 1
        8 SETTABLEKS                       R1 R0 K0 ["BackgroundColor3"]
       10 RETURN                           R0 1
