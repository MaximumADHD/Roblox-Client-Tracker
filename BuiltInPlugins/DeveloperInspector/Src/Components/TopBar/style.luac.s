MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R2 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K7 ["Style"]
       20 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       22 DUPTABLE                         R3 K16 [{"Padding", "HeaderHeight", "ButtonSize", "IconSize", "HeaderBorderColor", "SelectedIconColor", "IconColor"}]
       23 LOADN                            R4 2
       24 SETTABLEKS                       R4 R3 K9 ["Padding"]
       26 LOADN                            R4 33
       27 SETTABLEKS                       R4 R3 K10 ["HeaderHeight"]
       29 LOADN                            R4 32
       30 SETTABLEKS                       R4 R3 K11 ["ButtonSize"]
       32 LOADN                            R4 24
       33 SETTABLEKS                       R4 R3 K12 ["IconSize"]
       35 GETTABLEKS                       R4 R2 K17 ["Border"]
       37 SETTABLEKS                       R4 R3 K13 ["HeaderBorderColor"]
       39 GETTABLEKS                       R4 R2 K18 ["DialogMainButton"]
       41 SETTABLEKS                       R4 R3 K14 ["SelectedIconColor"]
       43 GETTABLEKS                       R4 R2 K19 ["MainText"]
       45 SETTABLEKS                       R4 R3 K15 ["IconColor"]
       47 RETURN                           R3 1
