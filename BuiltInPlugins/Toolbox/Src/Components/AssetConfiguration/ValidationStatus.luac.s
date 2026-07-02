MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{[1] = "pending", ["success"] = "success", ["error"] = "error"}]
        2 SETGLOBAL                        R0 K4 ["ValidationStatus"]
        4 GETGLOBAL                        R0 K4 ["ValidationStatus"]
        6 RETURN                           R0 1
