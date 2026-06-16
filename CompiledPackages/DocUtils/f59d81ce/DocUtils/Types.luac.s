MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K2 [{"Array", "Interface"}]
        2 LOADK                            R1 K0 ["Array"]
        3 SETTABLEKS                       R1 R0 K0 ["Array"]
        5 LOADK                            R1 K1 ["Interface"]
        6 SETTABLEKS                       R1 R0 K1 ["Interface"]
        8 DUPTABLE                         R1 K5 [{"T", "Luau"}]
        9 LOADK                            R2 K3 ["T"]
       10 SETTABLEKS                       R2 R1 K3 ["T"]
       12 LOADK                            R2 K4 ["Luau"]
       13 SETTABLEKS                       R2 R1 K4 ["Luau"]
       15 DUPTABLE                         R2 K8 [{"PropTypeQualifiers", "Typecheckers"}]
       16 SETTABLEKS                       R0 R2 K6 ["PropTypeQualifiers"]
       18 SETTABLEKS                       R1 R2 K7 ["Typecheckers"]
       20 RETURN                           R2 1
