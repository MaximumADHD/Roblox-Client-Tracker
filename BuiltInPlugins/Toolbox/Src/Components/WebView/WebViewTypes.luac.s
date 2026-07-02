MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Toolbox"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Models"]
       13 GETTABLEKS                       R2 R2 K8 ["AssetInfo"]
       15 CALL                             R1 1 1
       16 DUPTABLE                         R2 K15 [{["Fire"] = "fire", ["Request"] = "request", ["Response"] = "response"}]
       17 DUPTABLE                         R3 K19 [{["TIMED_OUT"] = "TIMED_OUT", ["WEBVIEW_NOT_INITIALIZED"] = "WEBVIEW_NOT_INITIALIZED", ["WEBVIEW_NOT_FOUND"] = "WEBVIEW_NOT_FOUND"}]
       18 DUPTABLE                         R4 K23 [{["WAITING"] = "WAITING", ["FAILED"] = "FAILED", ["PASSED"] = "PASSED"}]
       19 DUPTABLE                         R5 K28 [{["LOAD_TIMEOUT"] = "LUA_LOAD_TIMEOUT", ["MAX_MANUAL_RETRIES"] = "LUA_MAX_MANUAL_RETRIES"}]
       20 DUPTABLE                         R6 K33 [{["SEARCH"] = "SearchRequested", ["NONE"] = "None"}]
       21 DUPTABLE                         R7 K39 [{"MessageBusEventType", "MessageBusErrorCode", "TutorialStep", "WebViewLoadingStatus", "WebViewErrors"}]
       22 SETTABLEKS                       R2 R7 K34 ["MessageBusEventType"]
       24 SETTABLEKS                       R3 R7 K35 ["MessageBusErrorCode"]
       26 SETTABLEKS                       R6 R7 K36 ["TutorialStep"]
       28 SETTABLEKS                       R4 R7 K37 ["WebViewLoadingStatus"]
       30 SETTABLEKS                       R5 R7 K38 ["WebViewErrors"]
       32 RETURN                           R7 1
