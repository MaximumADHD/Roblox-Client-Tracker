MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"testMatch", "testTimeout"}]
        2 NEWTABLE                         R1 0 1
        4 LOADK                            R2 K3 ["**/*.spec"]
        5 SETLIST                          R1 R2 1 [1]
        7 SETTABLEKS                       R1 R0 K0 ["testMatch"]
        9 LOADK                            R1 K4 [60000]
       10 SETTABLEKS                       R1 R0 K1 ["testTimeout"]
       12 RETURN                           R0 1
