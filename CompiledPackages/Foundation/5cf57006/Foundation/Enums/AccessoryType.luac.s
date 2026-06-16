MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Icon", "Media", "Avatar"}]
        2 LOADK                            R1 K0 ["Icon"]
        3 SETTABLEKS                       R1 R0 K0 ["Icon"]
        5 LOADK                            R1 K1 ["Media"]
        6 SETTABLEKS                       R1 R0 K1 ["Media"]
        8 LOADK                            R1 K2 ["Avatar"]
        9 SETTABLEKS                       R1 R0 K2 ["Avatar"]
       11 RETURN                           R0 1
