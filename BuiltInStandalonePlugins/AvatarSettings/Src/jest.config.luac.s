MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"testMatch"}]
        2 NEWTABLE                         R1 0 1
        4 LOADK                            R2 K2 ["**/showBounds.spec"]
        5 SETLIST                          R1 R2 1 [1]
        7 SETTABLEKS                       R1 R0 K0 ["testMatch"]
        9 RETURN                           R0 1
