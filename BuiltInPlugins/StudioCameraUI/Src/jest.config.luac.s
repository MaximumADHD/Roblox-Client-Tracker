MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"displayName", "testMatch"}]
        2 LOADK                            R1 K3 ["StudioCameraUI"]
        3 SETTABLEKS                       R1 R0 K0 ["displayName"]
        5 NEWTABLE                         R1 0 2
        7 LOADK                            R2 K4 ["**/*.test"]
        8 LOADK                            R3 K5 ["**/*.spec"]
        9 SETLIST                          R1 R2 2 [1]
       11 SETTABLEKS                       R1 R0 K1 ["testMatch"]
       13 RETURN                           R0 1
