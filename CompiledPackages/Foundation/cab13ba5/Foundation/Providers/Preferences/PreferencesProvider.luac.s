PROTO_0:
        0 GETUPVAL                         R1 0
        1 DUPTABLE                         R2 K3 [{"preferredTextSize", "preferredTransparency", "reducedMotion"}]
        2 GETTABLEKS                       R3 R0 K0 ["preferredTextSize"]
        4 SETTABLEKS                       R3 R2 K0 ["preferredTextSize"]
        6 GETTABLEKS                       R3 R0 K1 ["preferredTransparency"]
        8 SETTABLEKS                       R3 R2 K1 ["preferredTransparency"]
       10 GETTABLEKS                       R3 R0 K2 ["reducedMotion"]
       12 SETTABLEKS                       R3 R2 K2 ["reducedMotion"]
       14 GETUPVAL                         R3 1
       15 CALL                             R1 2 1
       16 GETUPVAL                         R2 2
       17 GETTABLEKS                       R2 R2 K4 ["createElement"]
       19 GETUPVAL                         R3 3
       20 GETTABLEKS                       R3 R3 K5 ["Provider"]
       22 DUPTABLE                         R4 K7 [{"value"}]
       23 SETTABLEKS                       R1 R4 K6 ["value"]
       25 GETTABLEKS                       R5 R0 K8 ["children"]
       27 CALL                             R2 3 -1
       28 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["Foundation"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETTABLEKS                       R2 R1 K2 ["Parent"]
       13 GETIMPORT                        R3 K6 [require]
       15 GETTABLEKS                       R4 R2 K7 ["React"]
       17 CALL                             R3 1 1
       18 GETIMPORT                        R4 K6 [require]
       20 GETTABLEKS                       R5 R0 K8 ["PreferencesContext"]
       22 CALL                             R4 1 1
       23 GETIMPORT                        R5 K6 [require]
       25 GETTABLEKS                       R6 R1 K9 ["Utility"]
       27 GETTABLEKS                       R6 R6 K10 ["withDefaults"]
       29 CALL                             R5 1 1
       30 DUPTABLE                         R6 K15 [{"preferredTextSize", "preferredTransparency", "reducedMotion", "scale"}]
       31 GETIMPORT                        R7 K19 [Enum.PreferredTextSize.Medium]
       33 SETTABLEKS                       R7 R6 K11 ["preferredTextSize"]
       35 LOADN                            R7 1
       36 SETTABLEKS                       R7 R6 K12 ["preferredTransparency"]
       38 LOADB                            R7 0
       39 SETTABLEKS                       R7 R6 K13 ["reducedMotion"]
       41 LOADN                            R7 1
       42 SETTABLEKS                       R7 R6 K14 ["scale"]
       44 DUPCLOSURE                       R7 K20 [PROTO_0]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R3
       48 CAPTURE                          VAL R4
       49 RETURN                           R7 1
