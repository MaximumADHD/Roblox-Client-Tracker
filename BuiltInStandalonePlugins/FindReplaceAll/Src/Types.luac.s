MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"Enums"}]
        2 DUPTABLE                         R1 K3 [{"ScriptType"}]
        3 DUPTABLE                         R2 K7 [{"Script", "LocalScript", "ModuleScript"}]
        4 LOADN                            R3 0
        5 SETTABLEKS                       R3 R2 K4 ["Script"]
        7 LOADN                            R3 1
        8 SETTABLEKS                       R3 R2 K5 ["LocalScript"]
       10 LOADN                            R3 2
       11 SETTABLEKS                       R3 R2 K6 ["ModuleScript"]
       13 SETTABLEKS                       R2 R1 K2 ["ScriptType"]
       15 SETTABLEKS                       R1 R0 K0 ["Enums"]
       17 RETURN                           R0 1
