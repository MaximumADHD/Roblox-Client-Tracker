MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Enums"]
       11 GETTABLEKS                       R2 R3 K7 ["AlertSeverity"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Enums"]
       18 GETTABLEKS                       R3 R4 K8 ["ButtonVariant"]
       20 CALL                             R2 1 1
       21 NEWTABLE                         R3 4 0
       23 GETTABLEKS                       R4 R1 K9 ["Info"]
       25 LOADK                            R5 K10 ["circle-i"]
       26 SETTABLE                         R5 R3 R4
       27 GETTABLEKS                       R4 R1 K11 ["Warning"]
       29 LOADK                            R5 K12 ["triangle-exclamation"]
       30 SETTABLE                         R5 R3 R4
       31 GETTABLEKS                       R4 R1 K13 ["Success"]
       33 LOADK                            R5 K14 ["circle-check"]
       34 SETTABLE                         R5 R3 R4
       35 GETTABLEKS                       R4 R1 K15 ["Error"]
       37 LOADK                            R5 K16 ["circle-x"]
       38 SETTABLE                         R5 R3 R4
       39 DUPTABLE                         R4 K19 [{"MAX_ACTION_COUNT", "SEVERITY_TO_ICON"}]
       40 LOADN                            R5 3
       41 SETTABLEKS                       R5 R4 K17 ["MAX_ACTION_COUNT"]
       43 SETTABLEKS                       R3 R4 K18 ["SEVERITY_TO_ICON"]
       45 RETURN                           R4 1
