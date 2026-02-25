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
       14 GETTABLEKS                       R4 R2 K8 ["ContextServices"]
       16 GETTABLEKS                       R3 R4 K9 ["withContext"]
       18 GETIMPORT                        R5 K6 [require]
       20 GETTABLEKS                       R6 R1 K10 ["WebView"]
       22 CALL                             R5 1 1
       23 GETTABLEKS                       R4 R5 K11 ["WebViewManagerContext"]
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R8 R0 K12 ["Src"]
       29 GETTABLEKS                       R7 R8 K13 ["Components"]
       31 GETTABLEKS                       R6 R7 K14 ["CreatorConfigWebViewConnector"]
       33 CALL                             R5 1 1
       34 MOVE                             R6 R3
       35 DUPTABLE                         R7 K15 [{"WebViewManagerContext"}]
       36 SETTABLEKS                       R4 R7 K11 ["WebViewManagerContext"]
       38 CALL                             R6 1 1
       39 MOVE                             R7 R5
       40 CALL                             R6 1 1
       41 RETURN                           R6 1
