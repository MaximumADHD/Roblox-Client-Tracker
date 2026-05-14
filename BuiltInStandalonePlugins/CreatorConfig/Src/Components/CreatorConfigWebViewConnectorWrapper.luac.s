MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["CreatorConfig"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Packages"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Framework"]
       13 CALL                             R2 1 1
       14 GETTABLEKS                       R3 R2 K8 ["ContextServices"]
       16 GETTABLEKS                       R4 R3 K9 ["withContext"]
       18 GETIMPORT                        R5 K6 [require]
       20 GETTABLEKS                       R6 R1 K10 ["WebView"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R5 R5 K11 ["WebViewManagerContext"]
       25 GETIMPORT                        R6 K6 [require]
       27 GETTABLEKS                       R7 R0 K12 ["Src"]
       29 GETTABLEKS                       R7 R7 K13 ["Components"]
       31 GETTABLEKS                       R7 R7 K14 ["CreatorConfigWebViewConnector"]
       33 CALL                             R6 1 1
       34 MOVE                             R7 R4
       35 DUPTABLE                         R8 K16 [{"WebViewManagerContext", "Localization"}]
       36 SETTABLEKS                       R5 R8 K11 ["WebViewManagerContext"]
       38 GETTABLEKS                       R9 R3 K15 ["Localization"]
       40 SETTABLEKS                       R9 R8 K15 ["Localization"]
       42 CALL                             R7 1 1
       43 MOVE                             R8 R6
       44 CALL                             R7 1 1
       45 RETURN                           R7 1
