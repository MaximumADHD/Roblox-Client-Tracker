MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K3 [{"TARGET_TYPE_ASSET", "TARGET_TYPE_BUNDLE", "TARGET_TYPE_IEC_TOKEN"}]
        2 LOADN                            R1 0
        3 SETTABLEKS                       R1 R0 K0 ["TARGET_TYPE_ASSET"]
        5 LOADN                            R1 1
        6 SETTABLEKS                       R1 R0 K1 ["TARGET_TYPE_BUNDLE"]
        8 LOADN                            R1 2
        9 SETTABLEKS                       R1 R0 K2 ["TARGET_TYPE_IEC_TOKEN"]
       11 RETURN                           R0 1
