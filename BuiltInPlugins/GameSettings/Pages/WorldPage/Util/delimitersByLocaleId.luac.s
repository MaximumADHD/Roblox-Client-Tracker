MAIN:
        0 PREPVARARGS                      0
        1 NEWTABLE                         R0 2 0
        3 LOADK                            R1 K0 [","]
        4 SETTABLEKS                       R1 R0 K1 ["de_DE"]
        6 LOADK                            R1 K2 ["."]
        7 SETTABLEKS                       R1 R0 K3 ["en_US"]
        9 NEWTABLE                         R1 2 0
       11 LOADK                            R2 K2 ["."]
       12 SETTABLEKS                       R2 R1 K1 ["de_DE"]
       14 LOADK                            R2 K0 [","]
       15 SETTABLEKS                       R2 R1 K3 ["en_US"]
       17 DUPTABLE                         R2 K6 [{"decimalDelimiterByLocale", "groupDelimiterByLocale"}]
       18 SETTABLEKS                       R0 R2 K4 ["decimalDelimiterByLocale"]
       20 SETTABLEKS                       R1 R2 K5 ["groupDelimiterByLocale"]
       22 RETURN                           R2 1
