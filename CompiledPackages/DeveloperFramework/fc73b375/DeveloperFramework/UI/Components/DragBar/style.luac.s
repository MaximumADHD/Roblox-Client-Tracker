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
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["StyleModifier"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 4 0
       25 LOADN                            R4 5
       26 SETTABLEKS                       R4 R3 K11 ["Weight"]
       28 GETTABLEKS                       R4 R1 K12 ["MainBackground"]
       30 SETTABLEKS                       R4 R3 K13 ["Background"]
       32 GETTABLEKS                       R4 R2 K14 ["Hover"]
       34 DUPTABLE                         R5 K15 [{"Background"}]
       35 GETTABLEKS                       R6 R1 K16 ["ButtonHover"]
       37 SETTABLEKS                       R6 R5 K13 ["Background"]
       39 SETTABLE                         R5 R3 R4
       40 GETTABLEKS                       R4 R2 K17 ["Pressed"]
       42 DUPTABLE                         R5 K15 [{"Background"}]
       43 GETTABLEKS                       R6 R1 K18 ["ButtonPressed"]
       45 SETTABLEKS                       R6 R5 K13 ["Background"]
       47 SETTABLE                         R5 R3 R4
       48 RETURN                           R3 1
