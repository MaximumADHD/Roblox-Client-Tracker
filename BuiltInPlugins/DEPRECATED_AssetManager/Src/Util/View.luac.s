MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"GRID", "LIST"}]
        2 DUPTABLE                         R1 K4 [{"Key"}]
        3 LOADK                            R2 K0 ["GRID"]
        4 SETTABLEKS                       R2 R1 K3 ["Key"]
        6 SETTABLEKS                       R1 R0 K0 ["GRID"]
        8 DUPTABLE                         R1 K4 [{"Key"}]
        9 LOADK                            R2 K1 ["LIST"]
       10 SETTABLEKS                       R2 R1 K3 ["Key"]
       12 SETTABLEKS                       R1 R0 K1 ["LIST"]
       14 RETURN                           R0 1
