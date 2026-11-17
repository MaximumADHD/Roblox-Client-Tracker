MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K1 [{"Enums"}]
        2 DUPTABLE                         R1 K3 [{"ScriptType"}]
        3 DUPTABLE                         R2 K10 [{["Script"] = 0, ["LocalScript"] = 1, ["ModuleScript"] = 2}]
        4 SETTABLEKS                       R2 R1 K2 ["ScriptType"]
        6 SETTABLEKS                       R1 R0 K0 ["Enums"]
        8 RETURN                           R0 1
