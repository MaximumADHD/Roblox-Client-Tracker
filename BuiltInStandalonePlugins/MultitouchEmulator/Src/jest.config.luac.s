MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"displayName", "testMatch", "passWithNoTests"}]
        2 LOADK                            R1 K4 ["MultitouchEmulator"]
        3 SETTABLEKS                       R1 R0 K0 ["displayName"]
        5 NEWTABLE                         R1 0 1
        7 LOADK                            R2 K5 ["**/*.test"]
        8 SETLIST                          R1 R2 1 [1]
       10 SETTABLEKS                       R1 R0 K1 ["testMatch"]
       12 LOADB                            R1 1
       13 SETTABLEKS                       R1 R0 K2 ["passWithNoTests"]
       15 RETURN                           R0 1
