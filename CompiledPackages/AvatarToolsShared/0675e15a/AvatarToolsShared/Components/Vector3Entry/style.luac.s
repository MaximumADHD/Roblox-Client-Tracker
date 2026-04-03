MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Framework"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R3 R1 K6 ["Style"]
       18 GETTABLEKS                       R2 R3 K7 ["StyleKey"]
       20 DUPTABLE                         R3 K12 [{"PlaceholderTextColor", "ValueTextBoxPadding", "ValueTextBoxWidth", "FramePadding"}]
       21 GETTABLEKS                       R4 R2 K13 ["DimmedText"]
       23 SETTABLEKS                       R4 R3 K8 ["PlaceholderTextColor"]
       25 LOADN                            R4 12
       26 SETTABLEKS                       R4 R3 K9 ["ValueTextBoxPadding"]
       28 LOADN                            R4 64
       29 SETTABLEKS                       R4 R3 K10 ["ValueTextBoxWidth"]
       31 LOADN                            R4 96
       32 SETTABLEKS                       R4 R3 K11 ["FramePadding"]
       34 RETURN                           R3 1
