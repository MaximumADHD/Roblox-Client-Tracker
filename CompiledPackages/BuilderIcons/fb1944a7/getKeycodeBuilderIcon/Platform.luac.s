MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"PS4", "PS5", "Xbox", "Default"}]
        2 LOADK                            R1 K0 ["PS4"]
        3 SETTABLEKS                       R1 R0 K0 ["PS4"]
        5 LOADK                            R1 K1 ["PS5"]
        6 SETTABLEKS                       R1 R0 K1 ["PS5"]
        8 LOADK                            R1 K2 ["Xbox"]
        9 SETTABLEKS                       R1 R0 K2 ["Xbox"]
       11 LOADK                            R1 K3 ["Default"]
       12 SETTABLEKS                       R1 R0 K3 ["Default"]
       14 RETURN                           R0 1
