MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["wrapStrictTable"]
       13 CALL                             R1 1 1
       14 NEWTABLE                         R2 1 0
       16 DUPTABLE                         R3 K9 [{"Studio", "WebView"}]
       17 LOADK                            R4 K10 ["studio"]
       18 SETTABLEKS                       R4 R3 K8 ["Studio"]
       20 LOADK                            R4 K11 ["webview"]
       21 SETTABLEKS                       R4 R3 K2 ["WebView"]
       23 SETTABLEKS                       R3 R2 K12 ["ANALYTICS_TARGET"]
       25 MOVE                             R3 R1
       26 MOVE                             R4 R2
       27 LOADK                            R5 K13 ["Constants"]
       28 CALL                             R3 2 -1
       29 RETURN                           R3 -1
