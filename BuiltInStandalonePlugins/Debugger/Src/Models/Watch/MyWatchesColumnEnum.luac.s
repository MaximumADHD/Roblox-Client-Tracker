MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Value", "DataType"}]
        2 LOADK                            R1 K3 ["ValueColumn"]
        3 SETTABLEKS                       R1 R0 K0 ["Value"]
        5 LOADK                            R1 K4 ["DataTypeColumn"]
        6 SETTABLEKS                       R1 R0 K1 ["DataType"]
        8 RETURN                           R0 1
