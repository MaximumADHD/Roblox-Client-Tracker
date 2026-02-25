MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"MARKETPLACE_ACTION_TYPE_INVALID", "MARKETPLACE_ACTION_TYPE_UPLOAD", "MARKETPLACE_ACTION_TYPE_PUBLISH"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["MARKETPLACE_ACTION_TYPE_INVALID"]
        5 LOADN                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["MARKETPLACE_ACTION_TYPE_UPLOAD"]
        8 LOADN                            R1 2
        9 SETTABLEKS                       R1 R0 K2 ["MARKETPLACE_ACTION_TYPE_PUBLISH"]
       11 RETURN                           R0 1
