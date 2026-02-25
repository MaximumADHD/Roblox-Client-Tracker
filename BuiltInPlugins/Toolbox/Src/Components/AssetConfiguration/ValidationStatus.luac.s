MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"pending", "success", "error"}]
        2 LOADK                            R1 K0 ["pending"]
        3 SETTABLEKS                       R1 R0 K0 ["pending"]
        5 LOADK                            R1 K1 ["success"]
        6 SETTABLEKS                       R1 R0 K1 ["success"]
        8 LOADK                            R1 K2 ["error"]
        9 SETTABLEKS                       R1 R0 K2 ["error"]
       11 SETGLOBAL                        R0 K4 ["ValidationStatus"]
       13 GETGLOBAL                        R0 K4 ["ValidationStatus"]
       15 RETURN                           R0 1
