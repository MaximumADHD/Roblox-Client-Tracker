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
       16 DUPTABLE                         R3 K11 [{["Studio"] = "studio", ["WebView"] = "webview"}]
       17 SETTABLEKS                       R3 R2 K12 ["ANALYTICS_TARGET"]
       19 MOVE                             R3 R1
       20 MOVE                             R4 R2
       21 LOADK                            R5 K13 ["Constants"]
       22 CALL                             R3 2 -1
       23 RETURN                           R3 -1
