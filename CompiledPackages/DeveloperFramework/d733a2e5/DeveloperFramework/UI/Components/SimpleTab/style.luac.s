MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["StyleModifier"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Style"]
       20 GETTABLEKS                       R3 R3 K10 ["StyleKey"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 16 0
       25 LOADN                            R4 1
       26 SETTABLEKS                       R4 R3 K11 ["BorderSize"]
       28 LOADN                            R4 5
       29 SETTABLEKS                       R4 R3 K12 ["Spacing"]
       31 DUPTABLE                         R4 K20 [{["Left"] = 20, ["Top"] = 4, ["Bottom"] = 0, ["Right"] = 20}]
       32 SETTABLEKS                       R4 R3 K21 ["Padding"]
       34 LOADN                            R4 3
       35 SETTABLEKS                       R4 R3 K22 ["TopLineHeight"]
       37 GETTABLEKS                       R4 R2 K23 ["ButtonText"]
       39 SETTABLEKS                       R4 R3 K24 ["Color"]
       41 GETTABLEKS                       R4 R2 K25 ["SubBackground"]
       43 SETTABLEKS                       R4 R3 K26 ["BackgroundColor"]
       45 GETTABLEKS                       R4 R2 K25 ["SubBackground"]
       47 SETTABLEKS                       R4 R3 K27 ["BorderColor"]
       49 GETTABLEKS                       R4 R2 K28 ["DialogMainButton"]
       51 SETTABLEKS                       R4 R3 K29 ["TopLineColor"]
       53 GETTABLEKS                       R4 R2 K30 ["Border"]
       55 SETTABLEKS                       R4 R3 K31 ["BottomLineColor"]
       57 GETTABLEKS                       R4 R1 K32 ["Hover"]
       59 DUPTABLE                         R5 K33 [{"Color"}]
       60 GETTABLEKS                       R6 R2 K28 ["DialogMainButton"]
       62 SETTABLEKS                       R6 R5 K24 ["Color"]
       64 SETTABLE                         R5 R3 R4
       65 GETTABLEKS                       R4 R1 K34 ["Selected"]
       67 DUPTABLE                         R5 K35 [{"BottomLineColor", "BackgroundColor", "BorderColor"}]
       68 GETTABLEKS                       R6 R2 K25 ["SubBackground"]
       70 SETTABLEKS                       R6 R5 K31 ["BottomLineColor"]
       72 GETTABLEKS                       R6 R2 K36 ["MainBackground"]
       74 SETTABLEKS                       R6 R5 K26 ["BackgroundColor"]
       76 GETTABLEKS                       R6 R2 K30 ["Border"]
       78 SETTABLEKS                       R6 R5 K27 ["BorderColor"]
       80 SETTABLE                         R5 R3 R4
       81 GETTABLEKS                       R4 R1 K37 ["Disabled"]
       83 DUPTABLE                         R5 K33 [{"Color"}]
       84 GETTABLEKS                       R6 R2 K38 ["ButtonTextDisabled"]
       86 SETTABLEKS                       R6 R5 K24 ["Color"]
       88 SETTABLE                         R5 R3 R4
       89 RETURN                           R3 1
