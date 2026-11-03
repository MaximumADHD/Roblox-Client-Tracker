MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Style"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleKey"]
       15 CALL                             R1 1 1
       16 NEWTABLE                         R2 8 0
       18 GETIMPORT                        R3 K12 [Enum.Font.SourceSans]
       20 SETTABLEKS                       R3 R2 K10 ["Font"]
       22 LOADN                            R3 18
       23 SETTABLEKS                       R3 R2 K13 ["TextSize"]
       25 GETTABLEKS                       R3 R1 K14 ["LinkText"]
       27 SETTABLEKS                       R3 R2 K15 ["TextColor"]
       29 GETTABLEKS                       R3 R1 K16 ["LinkTextHover"]
       31 SETTABLEKS                       R3 R2 K17 ["TextColorHovered"]
       33 DUPTABLE                         R3 K19 [{["TextSize"] = 14}]
       34 SETTABLEKS                       R3 R2 K20 ["&Body"]
       36 DUPTABLE                         R3 K24 [{["ForceUnderline"] = True, ["ShowUnderline"] = True}]
       37 SETTABLEKS                       R3 R2 K25 ["&Underlined"]
       39 DUPTABLE                         R3 K27 [{["ShowUnderline"] = False, ["TextColor"], ["TextColorHovered"], ["TextSize"] = 14}]
       40 GETTABLEKS                       R4 R1 K28 ["MainText"]
       42 SETTABLEKS                       R4 R3 K15 ["TextColor"]
       44 GETTABLEKS                       R4 R1 K16 ["LinkTextHover"]
       46 SETTABLEKS                       R4 R3 K17 ["TextColorHovered"]
       48 SETTABLEKS                       R3 R2 K29 ["&Unobtrusive"]
       50 RETURN                           R2 1
