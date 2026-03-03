MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K15 [{"Padding", "Spacing", "ButtonSize", "IconSize", "IconColor", "InputWidth"}]
       17 LOADN                            R3 2
       18 SETTABLEKS                       R3 R2 K9 ["Padding"]
       20 LOADN                            R3 5
       21 SETTABLEKS                       R3 R2 K10 ["Spacing"]
       23 LOADN                            R3 32
       24 SETTABLEKS                       R3 R2 K11 ["ButtonSize"]
       26 LOADN                            R3 24
       27 SETTABLEKS                       R3 R2 K12 ["IconSize"]
       29 GETTABLEKS                       R3 R1 K16 ["Icon"]
       31 SETTABLEKS                       R3 R2 K13 ["IconColor"]
       33 LOADN                            R3 38
       34 SETTABLEKS                       R3 R2 K14 ["InputWidth"]
       36 RETURN                           R2 1
