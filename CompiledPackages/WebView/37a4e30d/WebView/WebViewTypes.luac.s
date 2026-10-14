MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K6 [{[1] = "fire", ["Request"] = "request", ["Response"] = "response"}]
        2 DUPTABLE                         R1 K13 [{["TIMED_OUT"] = "TIMED_OUT", ["WEBVIEW_NOT_INITIALIZED"] = "WEBVIEW_NOT_INITIALIZED", ["WEBVIEW_NOT_FOUND"] = "WEBVIEW_NOT_FOUND", ["INVALID_PARAMS"] = "INVALID_PARAMS", ["DIALOG_MANAGER_NOT_FOUND"] = "DIALOG_MANAGER_NOT_FOUND", ["SNACKBAR_FAILED"] = "SNACKBAR_FAILED"}]
        3 DUPTABLE                         R2 K17 [{["WAITING"] = "WAITING", ["FAILED"] = "FAILED", ["PASSED"] = "PASSED"}]
        4 DUPTABLE                         R3 K22 [{["LOAD_TIMEOUT"] = "LUA_LOAD_TIMEOUT", ["MAX_MANUAL_RETRIES"] = "LUA_MAX_MANUAL_RETRIES"}]
        5 DUPTABLE                         R4 K26 [{["Loading"] = "Loading", ["Error"] = "Error", ["Info"] = "Info"}]
        6 DUPTABLE                         R5 K28 [{["Success"] = "Success", ["Error"] = "Error"}]
        7 DUPTABLE                         R6 K35 [{"MessageBusEventType", "MessageBusErrorCode", "WebViewLoadingStatus", "WebViewErrors", "SnackbarType", "SnackbarResult"}]
        8 SETTABLEKS                       R0 R6 K29 ["MessageBusEventType"]
       10 SETTABLEKS                       R1 R6 K30 ["MessageBusErrorCode"]
       12 SETTABLEKS                       R2 R6 K31 ["WebViewLoadingStatus"]
       14 SETTABLEKS                       R3 R6 K32 ["WebViewErrors"]
       16 SETTABLEKS                       R4 R6 K33 ["SnackbarType"]
       18 SETTABLEKS                       R5 R6 K34 ["SnackbarResult"]
       20 RETURN                           R6 1
