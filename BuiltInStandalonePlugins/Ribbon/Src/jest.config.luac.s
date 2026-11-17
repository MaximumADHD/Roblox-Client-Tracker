MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"testMatch"}]
        2 NEWTABLE                         R1 0 2
        4 LOADK                            R2 K2 ["**/*.spec"]
        5 LOADK                            R3 K3 ["**/*.test"]
        6 SETLIST                          R1 R2 2 [1]
        8 SETTABLEKS                       R1 R0 K0 ["testMatch"]
       10 RETURN                           R0 1
