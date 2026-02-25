MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"testMatch", "__ROACT_17_MOCK_SCHEDULER__"}]
        2 NEWTABLE                         R1 0 1
        4 LOADK                            R2 K3 ["**/*.spec"]
        5 SETLIST                          R1 R2 1 [1]
        7 SETTABLEKS                       R1 R0 K0 ["testMatch"]
        9 LOADB                            R1 1
       10 SETTABLEKS                       R1 R0 K1 ["__ROACT_17_MOCK_SCHEDULER__"]
       12 RETURN                           R0 1
