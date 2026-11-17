MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{[1] = "AdaptiveAnimationSupport", ["testMatch"]}]
        2 NEWTABLE                         R1 0 1
        4 LOADK                            R2 K4 ["**/*.spec.lua"]
        5 SETLIST                          R1 R2 1 [1]
        7 SETTABLEKS                       R1 R0 K2 ["testMatch"]
        9 RETURN                           R0 1
