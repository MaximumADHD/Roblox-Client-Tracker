MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"displayName", "testMatch", "testTimeout"}]
        2 LOADK                            R1 K4 ["AssetManager/Src"]
        3 SETTABLEKS                       R1 R0 K0 ["displayName"]
        5 NEWTABLE                         R1 0 2
        7 LOADK                            R2 K5 ["**/*.spec"]
        8 LOADK                            R3 K6 ["**/*.test"]
        9 SETLIST                          R1 R2 2 [1]
       11 SETTABLEKS                       R1 R0 K1 ["testMatch"]
       13 LOADN                            R1 16
       14 SETTABLEKS                       R1 R0 K2 ["testTimeout"]
       16 RETURN                           R0 1
