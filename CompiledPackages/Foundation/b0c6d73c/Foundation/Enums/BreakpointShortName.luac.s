MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{"xs", "sm", "md", "lg", "xl", "xxl"}]
        2 LOADK                            R1 K0 ["xs"]
        3 SETTABLEKS                       R1 R0 K0 ["xs"]
        5 LOADK                            R1 K1 ["sm"]
        6 SETTABLEKS                       R1 R0 K1 ["sm"]
        8 LOADK                            R1 K2 ["md"]
        9 SETTABLEKS                       R1 R0 K2 ["md"]
       11 LOADK                            R1 K3 ["lg"]
       12 SETTABLEKS                       R1 R0 K3 ["lg"]
       14 LOADK                            R1 K4 ["xl"]
       15 SETTABLEKS                       R1 R0 K4 ["xl"]
       17 LOADK                            R1 K5 ["xxl"]
       18 SETTABLEKS                       R1 R0 K5 ["xxl"]
       20 RETURN                           R0 1
