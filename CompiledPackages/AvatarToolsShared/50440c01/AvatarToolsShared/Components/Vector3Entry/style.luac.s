MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K6 ["Style"]
       18 GETTABLEKS                       R2 R2 K7 ["StyleKey"]
       20 DUPTABLE                         R3 K15 [{["PlaceholderTextColor"], ["ValueTextBoxPadding"] = 12, ["ValueTextBoxWidth"] = 64, ["FramePadding"] = 96}]
       21 GETTABLEKS                       R4 R2 K16 ["DimmedText"]
       23 SETTABLEKS                       R4 R3 K8 ["PlaceholderTextColor"]
       25 RETURN                           R3 1
