MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"Scope", "Value", "DataType"}]
        2 LOADK                            R1 K4 ["ScopeColumn"]
        3 SETTABLEKS                       R1 R0 K0 ["Scope"]
        5 LOADK                            R1 K5 ["ValueColumn"]
        6 SETTABLEKS                       R1 R0 K1 ["Value"]
        8 LOADK                            R1 K6 ["DataTypeColumn"]
        9 SETTABLEKS                       R1 R0 K2 ["DataType"]
       11 RETURN                           R0 1
