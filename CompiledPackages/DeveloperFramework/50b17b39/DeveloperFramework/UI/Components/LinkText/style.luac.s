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
       16 NEWTABLE                         R2 8 0
       18 GETIMPORT                        R3 K12 [Enum.Font.SourceSans]
       20 SETTABLEKS                       R3 R2 K10 ["Font"]
       22 LOADN                            R3 18
       23 SETTABLEKS                       R3 R2 K13 ["TextSize"]
       25 GETTABLEKS                       R3 R1 K14 ["LinkText"]
       27 SETTABLEKS                       R3 R2 K15 ["TextColor"]
       29 GETTABLEKS                       R3 R1 K16 ["LinkTextHover"]
       31 SETTABLEKS                       R3 R2 K17 ["TextColorHovered"]
       33 DUPTABLE                         R3 K18 [{"TextSize"}]
       34 LOADN                            R4 14
       35 SETTABLEKS                       R4 R3 K13 ["TextSize"]
       37 SETTABLEKS                       R3 R2 K19 ["&Body"]
       39 DUPTABLE                         R3 K22 [{"ForceUnderline", "ShowUnderline"}]
       40 LOADB                            R4 1
       41 SETTABLEKS                       R4 R3 K20 ["ForceUnderline"]
       43 LOADB                            R4 1
       44 SETTABLEKS                       R4 R3 K21 ["ShowUnderline"]
       46 SETTABLEKS                       R3 R2 K23 ["&Underlined"]
       48 DUPTABLE                         R3 K24 [{"ShowUnderline", "TextColor", "TextColorHovered", "TextSize"}]
       49 LOADB                            R4 0
       50 SETTABLEKS                       R4 R3 K21 ["ShowUnderline"]
       52 GETTABLEKS                       R4 R1 K25 ["MainText"]
       54 SETTABLEKS                       R4 R3 K15 ["TextColor"]
       56 GETTABLEKS                       R4 R1 K16 ["LinkTextHover"]
       58 SETTABLEKS                       R4 R3 K17 ["TextColorHovered"]
       60 LOADN                            R4 14
       61 SETTABLEKS                       R4 R3 K13 ["TextSize"]
       63 SETTABLEKS                       R3 R2 K26 ["&Unobtrusive"]
       65 RETURN                           R2 1
