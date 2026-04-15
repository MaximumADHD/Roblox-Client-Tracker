MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R3 K8 ["StyleModifier"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K9 ["Style"]
       20 GETTABLEKS                       R3 R4 K10 ["StyleKey"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 16 0
       25 LOADN                            R4 1
       26 SETTABLEKS                       R4 R3 K11 ["BorderSize"]
       28 LOADN                            R4 5
       29 SETTABLEKS                       R4 R3 K12 ["Spacing"]
       31 DUPTABLE                         R4 K17 [{"Left", "Top", "Bottom", "Right"}]
       32 LOADN                            R5 20
       33 SETTABLEKS                       R5 R4 K13 ["Left"]
       35 LOADN                            R5 4
       36 SETTABLEKS                       R5 R4 K14 ["Top"]
       38 LOADN                            R5 0
       39 SETTABLEKS                       R5 R4 K15 ["Bottom"]
       41 LOADN                            R5 20
       42 SETTABLEKS                       R5 R4 K16 ["Right"]
       44 SETTABLEKS                       R4 R3 K18 ["Padding"]
       46 LOADN                            R4 3
       47 SETTABLEKS                       R4 R3 K19 ["TopLineHeight"]
       49 GETTABLEKS                       R4 R2 K20 ["ButtonText"]
       51 SETTABLEKS                       R4 R3 K21 ["Color"]
       53 GETTABLEKS                       R4 R2 K22 ["SubBackground"]
       55 SETTABLEKS                       R4 R3 K23 ["BackgroundColor"]
       57 GETTABLEKS                       R4 R2 K22 ["SubBackground"]
       59 SETTABLEKS                       R4 R3 K24 ["BorderColor"]
       61 GETTABLEKS                       R4 R2 K25 ["DialogMainButton"]
       63 SETTABLEKS                       R4 R3 K26 ["TopLineColor"]
       65 GETTABLEKS                       R4 R2 K27 ["Border"]
       67 SETTABLEKS                       R4 R3 K28 ["BottomLineColor"]
       69 GETTABLEKS                       R4 R1 K29 ["Hover"]
       71 DUPTABLE                         R5 K30 [{"Color"}]
       72 GETTABLEKS                       R6 R2 K25 ["DialogMainButton"]
       74 SETTABLEKS                       R6 R5 K21 ["Color"]
       76 SETTABLE                         R5 R3 R4
       77 GETTABLEKS                       R4 R1 K31 ["Selected"]
       79 DUPTABLE                         R5 K32 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
       80 GETTABLEKS                       R6 R2 K22 ["SubBackground"]
       82 SETTABLEKS                       R6 R5 K28 ["BottomLineColor"]
       84 GETTABLEKS                       R6 R2 K33 ["MainBackground"]
       86 SETTABLEKS                       R6 R5 K23 ["BackgroundColor"]
       88 GETTABLEKS                       R6 R2 K27 ["Border"]
       90 SETTABLEKS                       R6 R5 K24 ["BorderColor"]
       92 SETTABLE                         R5 R3 R4
       93 GETTABLEKS                       R4 R1 K34 ["Disabled"]
       95 DUPTABLE                         R5 K30 [{"Color"}]
       96 GETTABLEKS                       R6 R2 K35 ["ButtonTextDisabled"]
       98 SETTABLEKS                       R6 R5 K21 ["Color"]
      100 SETTABLE                         R5 R3 R4
      101 RETURN                           R3 1
