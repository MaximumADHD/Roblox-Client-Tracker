MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{[1] = "fire", ["Request"] = "request", ["Response"] = "response"}]
        2 DUPTABLE                         R1 K10 [{["TIMED_OUT"] = "TIMED_OUT", ["WEBVIEW_NOT_INITIALIZED"] = "WEBVIEW_NOT_INITIALIZED", ["WEBVIEW_NOT_FOUND"] = "WEBVIEW_NOT_FOUND"}]
        3 DUPTABLE                         R2 K14 [{["WAITING"] = "WAITING", ["FAILED"] = "FAILED", ["PASSED"] = "PASSED"}]
        4 DUPTABLE                         R3 K19 [{["LOAD_TIMEOUT"] = "LUA_LOAD_TIMEOUT", ["MAX_MANUAL_RETRIES"] = "LUA_MAX_MANUAL_RETRIES"}]
        5 DUPTABLE                         R4 K24 [{"MessageBusEventType", "MessageBusErrorCode", "WebViewLoadingStatus", "WebViewErrors"}]
        6 SETTABLEKS                       R0 R4 K20 ["MessageBusEventType"]
        8 SETTABLEKS                       R1 R4 K21 ["MessageBusErrorCode"]
       10 SETTABLEKS                       R2 R4 K22 ["WebViewLoadingStatus"]
       12 SETTABLEKS                       R3 R4 K23 ["WebViewErrors"]
       14 RETURN                           R4 1
