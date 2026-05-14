PROTO_0:
        0 JUMPIFEQKS                       R0 K0 ["MarketplaceAssetImpression"] ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_1:
        0 JUMPIFNOTEQKS                    R0 K0 ["Dark"] ; [+3]
        2 LOADK                            R1 K1 ["darkFoundation"]
        3 RETURN                           R1 1
        4 LOADK                            R1 K2 ["lightFoundation"]
        5 RETURN                           R1 1

PROTO_2:
        0 LOADNIL                          R1
        1 SETTABLEKS                       R1 R0 K0 ["isMounted"]
        3 NEWTABLE                         R1 0 0
        5 SETTABLEKS                       R1 R0 K1 ["_webViewListeners"]
        7 GETTABLEKS                       R1 R0 K2 ["props"]
        9 GETTABLEKS                       R1 R1 K3 ["Plugin"]
       11 JUMPIF                           R1 ; [+7]
       12 GETTABLEKS                       R2 R0 K2 ["props"]
       14 GETTABLEKS                       R2 R2 K4 ["HandleFailedInitCheck"]
       16 LOADK                            R3 K5 ["Unable to find Plugin"]
       17 CALL                             R2 1 0
       18 RETURN                           R0 0
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K6 ["setInitTimestamp"]
       22 GETTABLEKS                       R3 R0 K2 ["props"]
       24 GETTABLEKS                       R3 R3 K7 ["analyticsContext"]
       26 CALL                             R2 1 0
       27 GETUPVAL                         R2 0
       28 GETTABLEKS                       R2 R2 K8 ["setPluginUri"]
       30 GETTABLEKS                       R3 R0 K2 ["props"]
       32 GETTABLEKS                       R3 R3 K3 ["Plugin"]
       34 NAMECALL                         R3 R3 K9 ["GetUri"]
       36 CALL                             R3 1 -1
       37 CALL                             R2 -1 0
       38 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_managerComponent"]
        3 DUPTABLE                         R2 K4 [{"Url", "OffsetHeight", "BrowserUri"}]
        4 GETUPVAL                         R3 0
        5 GETTABLEKS                       R3 R3 K5 ["_url"]
        7 SETTABLEKS                       R3 R2 K1 ["Url"]
        9 GETUPVAL                         R3 0
       10 GETTABLEKS                       R3 R3 K6 ["props"]
       12 GETTABLEKS                       R3 R3 K7 ["offsetHeight"]
       14 SETTABLEKS                       R3 R2 K2 ["OffsetHeight"]
       16 GETUPVAL                         R3 1
       17 NAMECALL                         R3 R3 K8 ["getBrowserUri"]
       19 CALL                             R3 1 1
       20 SETTABLEKS                       R3 R2 K3 ["BrowserUri"]
       22 NAMECALL                         R0 R0 K9 ["InitializeWebBrowserWidgetAsync"]
       24 CALL                             R0 2 0
       25 RETURN                           R0 0

PROTO_4:
        0 LOADN                            R0 10
        1 LOADN                            R1 0
        2 GETIMPORT                        R2 K2 [task.wait]
        4 MOVE                             R3 R0
        5 CALL                             R2 1 0
        6 LOADN                            R3 60
        7 MULK                             R4 R0 K3 [2]
        8 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       10 GETIMPORT                        R2 K6 [math.min]
       12 CALL                             R2 2 1
       13 MOVE                             R0 R2
       14 ADDK                             R1 R1 K7 [1]
       15 GETUPVAL                         R2 0
       16 GETTABLEKS                       R2 R2 K8 ["props"]
       18 GETTABLEKS                       R2 R2 K9 ["initAutoRetryMaxAttempts"]
       20 JUMPIFLT                         R2 R1 ; [+23]
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K10 ["isMounted"]
       25 JUMPIFNOT                        R2 ; [+18]
       26 GETUPVAL                         R2 0
       27 GETTABLEKS                       R2 R2 K8 ["props"]
       29 GETTABLEKS                       R2 R2 K11 ["hasWebViewEverLoaded"]
       31 JUMPIF                           R2 ; [+12]
       32 GETUPVAL                         R2 0
       33 GETTABLEKS                       R2 R2 K8 ["props"]
       35 GETTABLEKS                       R2 R2 K12 ["webViewLoadingStatus"]
       37 GETUPVAL                         R3 1
       38 GETTABLEKS                       R3 R3 K13 ["WebViewLoadingStatus"]
       40 GETTABLEKS                       R3 R3 K14 ["WAITING"]
       42 JUMPIFEQ                         R2 R3 ; [+2]
       44 RETURN                           R0 0
       45 GETUPVAL                         R2 0
       46 GETTABLEKS                       R2 R2 K8 ["props"]
       48 GETTABLEKS                       R2 R2 K15 ["webViewError"]
       50 JUMPIFEQKNIL                     R2 ; [+33]
       52 GETUPVAL                         R3 0
       53 GETTABLEKS                       R3 R3 K8 ["props"]
       55 GETTABLEKS                       R3 R3 K9 ["initAutoRetryMaxAttempts"]
       57 GETUPVAL                         R4 0
       58 GETTABLEKS                       R4 R4 K16 ["_autoRetryCount"]
       60 ADD                              R2 R3 R4
       61 GETUPVAL                         R3 2
       62 GETTABLEKS                       R3 R3 K17 ["onRetryWebViewInit"]
       64 GETUPVAL                         R4 0
       65 GETTABLEKS                       R4 R4 K8 ["props"]
       67 GETTABLEKS                       R4 R4 K18 ["analyticsContext"]
       69 GETUPVAL                         R5 0
       70 GETTABLEKS                       R5 R5 K8 ["props"]
       72 GETTABLEKS                       R5 R5 K15 ["webViewError"]
       74 GETUPVAL                         R7 0
       75 GETTABLEKS                       R7 R7 K16 ["_autoRetryCount"]
       77 ADD                              R6 R7 R1
       78 MOVE                             R7 R2
       79 CALL                             R3 4 0
       80 GETUPVAL                         R3 0
       81 GETTABLEKS                       R3 R3 K19 ["initializeWebView"]
       83 CALL                             R3 0 0
       84 JUMPBACK                         ; [-83]
       85 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["_retryInitializeWebviewCoroutine"]
        3 JUMPIFNOT                        R0 ; [+1]
        4 RETURN                           R0 0
        5 GETUPVAL                         R0 0
        6 GETIMPORT                        R1 K3 [task.spawn]
        8 NEWCLOSURE                       R2 P0
        9 CAPTURE                          UPVAL U0
       10 CAPTURE                          UPVAL U1
       11 CAPTURE                          UPVAL U2
       12 CALL                             R1 1 1
       13 SETTABLEKS                       R1 R0 K0 ["_retryInitializeWebviewCoroutine"]
       15 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["isMounted"]
        3 JUMPIFNOT                        R2 ; [+24]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K1 ["onRetryWebViewInit"]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R3 R3 K2 ["props"]
       10 GETTABLEKS                       R3 R3 K3 ["analyticsContext"]
       12 MOVE                             R4 R0
       13 MOVE                             R5 R1
       14 GETUPVAL                         R7 0
       15 GETTABLEKS                       R7 R7 K2 ["props"]
       17 GETTABLEKS                       R7 R7 K4 ["initAutoRetryMaxAttempts"]
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K5 ["_autoRetryCount"]
       22 ADD                              R6 R7 R8
       23 CALL                             R2 4 0
       24 GETUPVAL                         R2 0
       25 GETTABLEKS                       R2 R2 K6 ["initializeWebView"]
       27 CALL                             R2 0 0
       28 RETURN                           R0 0

PROTO_7:
        0 JUMPIFNOTEQKS                    R0 K0 ["beforeInteractive"] ; [+18]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K1 ["onWebViewTimingEvent"]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["props"]
        8 GETTABLEKS                       R2 R2 K3 ["analyticsContext"]
       10 GETIMPORT                        R3 K6 [DateTime.now]
       12 CALL                             R3 0 1
       13 GETTABLEKS                       R3 R3 K7 ["UnixTimestampMillis"]
       15 LOADNIL                          R4
       16 LOADNIL                          R5
       17 CALL                             R1 4 0
       18 JUMP                             ; [+18]
       19 JUMPIFNOTEQKS                    R0 K8 ["afterInteractive"] ; [+17]
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R1 R1 K1 ["onWebViewTimingEvent"]
       24 GETUPVAL                         R2 1
       25 GETTABLEKS                       R2 R2 K2 ["props"]
       27 GETTABLEKS                       R2 R2 K3 ["analyticsContext"]
       29 LOADNIL                          R3
       30 GETIMPORT                        R4 K6 [DateTime.now]
       32 CALL                             R4 0 1
       33 GETTABLEKS                       R4 R4 K7 ["UnixTimestampMillis"]
       35 LOADNIL                          R5
       36 CALL                             R1 4 0
       37 GETUPVAL                         R1 2
       38 MOVE                             R3 R0
       39 NAMECALL                         R1 R1 K9 ["find"]
       41 CALL                             R1 2 1
       42 JUMPIFNOT                        R1 ; [+6]
       43 GETUPVAL                         R1 1
       44 GETTABLEKS                       R1 R1 K2 ["props"]
       46 GETTABLEKS                       R1 R1 K10 ["HandlePassedInitAndLoadingCheck"]
       48 CALL                             R1 0 0
       49 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onWebViewTimingEvent"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["props"]
        6 GETTABLEKS                       R1 R1 K2 ["analyticsContext"]
        8 LOADNIL                          R2
        9 LOADNIL                          R3
       10 GETIMPORT                        R4 K5 [DateTime.now]
       12 CALL                             R4 0 1
       13 GETTABLEKS                       R4 R4 K6 ["UnixTimestampMillis"]
       15 CALL                             R0 4 0
       16 RETURN                           R0 0

PROTO_9:
        0 GETIMPORT                        R1 K2 [string.find]
        2 MOVE                             R2 R0
        3 LOADK                            R3 K3 ["WEBVIEW_INVALID_WIDGET"]
        4 CALL                             R1 2 1
        5 JUMPIF                           R1 ; [+12]
        6 GETIMPORT                        R1 K2 [string.find]
        8 MOVE                             R2 R0
        9 LOADK                            R3 K4 ["WEBVIEW_INVALID_PARENT"]
       10 CALL                             R1 2 1
       11 JUMPIF                           R1 ; [+6]
       12 GETIMPORT                        R1 K2 [string.find]
       14 MOVE                             R2 R0
       15 LOADK                            R3 K5 ["WEBVIEW_INVALID_CHILD"]
       16 CALL                             R1 2 1
       17 JUMPIFNOT                        R1 ; [+35]
       18 GETUPVAL                         R1 0
       19 GETTABLEKS                       R1 R1 K6 ["_autoRetryCount"]
       21 GETUPVAL                         R2 1
       22 JUMPIFNOTLT                      R1 R2 ; [+30]
       24 GETUPVAL                         R1 0
       25 GETUPVAL                         R3 0
       26 GETTABLEKS                       R3 R3 K6 ["_autoRetryCount"]
       28 ADDK                             R2 R3 K7 [1]
       29 SETTABLEKS                       R2 R1 K6 ["_autoRetryCount"]
       31 GETUPVAL                         R1 0
       32 GETTABLEKS                       R1 R1 K8 ["props"]
       34 GETTABLEKS                       R1 R1 K9 ["hasValidSize"]
       36 JUMPIFNOT                        R1 ; [+12]
       37 GETIMPORT                        R1 K12 [task.delay]
       39 GETUPVAL                         R2 2
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R3 R3 K13 ["autoRetryBeforeWebViewErrorShown"]
       43 MOVE                             R4 R0
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R5 R5 K6 ["_autoRetryCount"]
       47 CALL                             R1 4 0
       48 RETURN                           R0 0
       49 GETUPVAL                         R1 0
       50 SETTABLEKS                       R0 R1 K14 ["shouldRetryOnValidSizeErrorType"]
       52 RETURN                           R0 0
       53 GETUPVAL                         R1 0
       54 GETTABLEKS                       R1 R1 K8 ["props"]
       56 GETTABLEKS                       R1 R1 K15 ["HandleFailedInitCheck"]
       58 MOVE                             R2 R0
       59 CALL                             R1 1 0
       60 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["PluginManagerComponent"]
        4 SETTABLEKS                       R2 R0 K2 ["_managerComponent"]
        6 GETTABLEKS                       R2 R0 K2 ["_managerComponent"]
        8 JUMPIF                           R2 ; [+5]
        9 GETTABLEKS                       R2 R1 K3 ["HandleFailedInitCheck"]
       11 LOADK                            R3 K4 ["Unable to find PluginManagerComponent"]
       12 CALL                             R2 1 0
       13 RETURN                           R0 0
       14 GETTABLEKS                       R2 R1 K5 ["WebViewManagerContext"]
       16 NAMECALL                         R2 R2 K6 ["get"]
       18 CALL                             R2 1 1
       19 JUMPIF                           R2 ; [+5]
       20 GETTABLEKS                       R3 R1 K3 ["HandleFailedInitCheck"]
       22 LOADK                            R4 K7 ["Unable to find WebViewManagerContext"]
       23 CALL                             R3 1 0
       24 RETURN                           R0 0
       25 GETTABLEKS                       R3 R1 K8 ["Url"]
       27 SETTABLEKS                       R3 R0 K9 ["_url"]
       29 GETTABLEKS                       R3 R0 K9 ["_url"]
       31 JUMPIF                           R3 ; [+5]
       32 GETTABLEKS                       R3 R1 K3 ["HandleFailedInitCheck"]
       34 LOADK                            R4 K10 ["Unable to find Url"]
       35 CALL                             R3 1 0
       36 RETURN                           R0 0
       37 LOADN                            R3 0
       38 SETTABLEKS                       R3 R0 K11 ["_autoRetryCount"]
       40 NEWCLOSURE                       R3 P0
       41 CAPTURE                          VAL R0
       42 CAPTURE                          VAL R2
       43 SETTABLEKS                       R3 R0 K12 ["initializeWebView"]
       45 NEWCLOSURE                       R3 P1
       46 CAPTURE                          VAL R0
       47 CAPTURE                          UPVAL U0
       48 CAPTURE                          UPVAL U1
       49 SETTABLEKS                       R3 R0 K13 ["startRetryInitializeWebViewLoop"]
       51 NEWCLOSURE                       R3 P2
       52 CAPTURE                          VAL R0
       53 CAPTURE                          UPVAL U1
       54 SETTABLEKS                       R3 R0 K14 ["autoRetryBeforeWebViewErrorShown"]
       56 GETTABLEKS                       R3 R2 K15 ["BrowserLoadProgressEvent"]
       58 NEWCLOSURE                       R6 P3
       59 CAPTURE                          UPVAL U1
       60 CAPTURE                          VAL R0
       61 CAPTURE                          UPVAL U2
       62 NAMECALL                         R4 R3 K16 ["Connect"]
       64 CALL                             R4 2 1
       65 SETTABLEKS                       R4 R0 K17 ["_webBrowserLoadProgressConnection"]
       67 GETTABLEKS                       R4 R2 K18 ["BrowserLoadedEvent"]
       69 NEWCLOSURE                       R7 P4
       70 CAPTURE                          UPVAL U1
       71 CAPTURE                          VAL R0
       72 NAMECALL                         R5 R4 K16 ["Connect"]
       74 CALL                             R5 2 1
       75 SETTABLEKS                       R5 R0 K19 ["_webBrowserLoadedConnection"]
       77 GETTABLEKS                       R5 R2 K20 ["BrowserErrorEvent"]
       79 NEWCLOSURE                       R8 P5
       80 CAPTURE                          VAL R0
       81 CAPTURE                          UPVAL U3
       82 CAPTURE                          UPVAL U4
       83 NAMECALL                         R6 R5 K16 ["Connect"]
       85 CALL                             R6 2 1
       86 SETTABLEKS                       R6 R0 K21 ["_webBrowserErrorConnection"]
       88 GETTABLEKS                       R6 R0 K12 ["initializeWebView"]
       90 CALL                             R6 0 0
       91 RETURN                           R0 0

PROTO_11:
        0 MOVE                             R6 R2
        1 MOVE                             R7 R3
        2 NAMECALL                         R4 R1 K0 ["setListener"]
        4 CALL                             R4 3 1
        5 GETTABLEKS                       R5 R0 K1 ["_webViewListeners"]
        7 GETUPVAL                         R6 0
        8 GETTABLEKS                       R6 R6 K2 ["List"]
       10 GETTABLEKS                       R6 R6 K3 ["join"]
       12 GETTABLEKS                       R8 R0 K1 ["_webViewListeners"]
       14 GETTABLE                         R7 R8 R2
       15 JUMPIF                           R7 ; [+2]
       16 NEWTABLE                         R7 0 0
       18 NEWTABLE                         R8 0 1
       20 MOVE                             R9 R4
       21 SETLIST                          R8 R9 1 [1]
       23 CALL                             R6 2 1
       24 SETTABLE                         R6 R5 R2
       25 RETURN                           R0 0

PROTO_12:
        0 NEWTABLE                         R1 0 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["props"]
        5 GETTABLEKS                       R2 R2 K1 ["HandlePassedInitAndLoadingCheck"]
        7 CALL                             R2 0 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K0 ["props"]
       11 GETTABLEKS                       R2 R2 K2 ["onWebViewInitEvent"]
       13 JUMPIFNOT                        R2 ; [+6]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K0 ["props"]
       17 GETTABLEKS                       R2 R2 K2 ["onWebViewInitEvent"]
       19 CALL                             R2 0 0
       20 DUPTABLE                         R2 K5 [{"capabilities", "metadata"}]
       21 SETTABLEKS                       R1 R2 K3 ["capabilities"]
       23 GETUPVAL                         R4 0
       24 GETTABLEKS                       R4 R4 K0 ["props"]
       26 GETTABLEKS                       R4 R4 K6 ["getPluginMetadata"]
       28 JUMPIFNOT                        R4 ; [+7]
       29 GETUPVAL                         R3 0
       30 GETTABLEKS                       R3 R3 K0 ["props"]
       32 GETTABLEKS                       R3 R3 K6 ["getPluginMetadata"]
       34 CALL                             R3 0 1
       35 JUMP                             ; [+1]
       36 LOADNIL                          R3
       37 SETTABLEKS                       R3 R2 K4 ["metadata"]
       39 RETURN                           R2 1

PROTO_13:
        0 GETTABLEKS                       R2 R0 K1 ["analyticsEventName"]
        2 ORK                              R1 R2 K0 [""]
        3 GETTABLEKS                       R2 R0 K2 ["analyticsEventData"]
        5 JUMPIF                           R2 ; [+2]
        6 NEWTABLE                         R2 0 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["reportCounter"]
       11 MOVE                             R4 R1
       12 GETTABLEKS                       R5 R2 K4 ["amount"]
       14 CALL                             R3 2 0
       15 RETURN                           R0 0

PROTO_14:
        0 GETTABLEKS                       R2 R0 K1 ["analyticsEventName"]
        2 ORK                              R1 R2 K0 [""]
        3 GETTABLEKS                       R2 R0 K2 ["analyticsEventData"]
        5 JUMPIF                           R2 ; [+2]
        6 NEWTABLE                         R2 0 0
        8 GETUPVAL                         R3 0
        9 GETTABLEKS                       R3 R3 K3 ["getWebViewTrackingAttributes"]
       11 MOVE                             R4 R2
       12 CALL                             R3 1 1
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K4 ["props"]
       16 GETTABLEKS                       R4 R4 K5 ["analyticsContext"]
       18 JUMPIFNOTEQKS                    R4 K6 ["marketplace"] ; [+6]
       20 GETUPVAL                         R4 0
       21 GETTABLEKS                       R4 R4 K7 ["analyticsSid"]
       23 SETTABLEKS                       R4 R3 K8 ["toolboxSid"]
       25 GETGLOBAL                        R4 K9 ["shouldUseDeferredAnalytics"]
       27 MOVE                             R5 R1
       28 CALL                             R4 1 1
       29 JUMPIFNOT                        R4 ; [+17]
       30 GETUPVAL                         R4 2
       31 GETTABLEKS                       R4 R4 K10 ["sendEventDeferred"]
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K11 ["ANALYTICS_TARGET"]
       36 GETTABLEKS                       R5 R5 K12 ["WebView"]
       38 GETUPVAL                         R6 1
       39 GETTABLEKS                       R6 R6 K4 ["props"]
       41 GETTABLEKS                       R6 R6 K5 ["analyticsContext"]
       43 MOVE                             R7 R1
       44 MOVE                             R8 R3
       45 CALL                             R4 4 0
       46 RETURN                           R0 0
       47 GETUPVAL                         R4 2
       48 GETTABLEKS                       R4 R4 K13 ["sendEventImmediately"]
       50 GETUPVAL                         R5 3
       51 GETTABLEKS                       R5 R5 K11 ["ANALYTICS_TARGET"]
       53 GETTABLEKS                       R5 R5 K12 ["WebView"]
       55 GETUPVAL                         R6 1
       56 GETTABLEKS                       R6 R6 K4 ["props"]
       58 GETTABLEKS                       R6 R6 K5 ["analyticsContext"]
       60 MOVE                             R7 R1
       61 MOVE                             R8 R3
       62 CALL                             R4 4 0
       63 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["hasWebViewEverLoaded"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETGLOBAL                        R0 K2 ["getStudioThemeName"]
        9 GETUPVAL                         R1 1
       10 GETTABLEKS                       R1 R1 K2 ["getStudioThemeName"]
       12 CALL                             R1 0 -1
       13 CALL                             R0 -1 1
       14 GETUPVAL                         R1 2
       15 LOADK                            R3 K3 ["internal:changeTheme"]
       16 DUPTABLE                         R4 K5 [{"theme"}]
       17 SETTABLEKS                       R0 R4 K4 ["theme"]
       19 NAMECALL                         R1 R1 K6 ["fire"]
       21 CALL                             R1 3 0
       22 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["props"]
        3 GETTABLEKS                       R0 R0 K1 ["hasWebViewEverLoaded"]
        5 JUMPIF                           R0 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R0 1
        8 GETTABLEKS                       R0 R0 K2 ["getStudioVolumeLevel"]
       10 CALL                             R0 0 1
       11 GETUPVAL                         R1 2
       12 LOADK                            R3 K3 ["internal:changeVolume"]
       13 DUPTABLE                         R4 K5 [{"volume"}]
       14 SETTABLEKS                       R0 R4 K4 ["volume"]
       16 NAMECALL                         R1 R1 K6 ["fire"]
       18 CALL                             R1 3 0
       19 RETURN                           R0 0

PROTO_17:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 LOADB                            R2 1
        3 SETTABLEKS                       R2 R0 K1 ["isMounted"]
        5 GETTABLEKS                       R2 R1 K2 ["WebViewManagerContext"]
        7 NAMECALL                         R2 R2 K3 ["get"]
        9 CALL                             R2 1 1
       10 NAMECALL                         R3 R2 K4 ["registerWebViewBrowserContext"]
       12 CALL                             R3 1 0
       13 NAMECALL                         R3 R2 K5 ["connectListeners"]
       15 CALL                             R3 1 0
       16 GETUPVAL                         R3 0
       17 JUMPIF                           R3 ; [+7]
       18 GETTABLEKS                       R3 R0 K6 ["_managerComponent"]
       20 JUMPIFNOTEQKNIL                  R3 ; [+4]
       22 NAMECALL                         R3 R0 K7 ["setUpManagerComponent"]
       24 CALL                             R3 1 0
       25 NEWTABLE                         R3 4 0
       27 GETUPVAL                         R4 1
       28 GETTABLEKS                       R4 R4 K8 ["INTERNAL_INIT_NAME"]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          VAL R0
       32 SETTABLE                         R5 R3 R4
       33 GETUPVAL                         R4 1
       34 GETTABLEKS                       R4 R4 K9 ["SEND_ANALYTICS_COUNTER_EVENT_NAME"]
       36 DUPCLOSURE                       R5 K10 [PROTO_13]
       37 CAPTURE                          UPVAL U2
       38 SETTABLE                         R5 R3 R4
       39 GETUPVAL                         R4 1
       40 GETTABLEKS                       R4 R4 K11 ["SEND_ANALYTICS_EVENT_NAME"]
       42 NEWCLOSURE                       R5 P2
       43 CAPTURE                          UPVAL U3
       44 CAPTURE                          VAL R0
       45 CAPTURE                          UPVAL U2
       46 CAPTURE                          UPVAL U4
       47 SETTABLE                         R5 R3 R4
       48 GETIMPORT                        R4 K13 [pairs]
       50 MOVE                             R5 R3
       51 CALL                             R4 1 3
       52 FORGPREP_NEXT                    R4
       53 MOVE                             R11 R2
       54 MOVE                             R12 R7
       55 MOVE                             R13 R8
       56 NAMECALL                         R9 R0 K14 ["_setUpListener"]
       58 CALL                             R9 4 0
       59 FORGLOOP                         R4 2 ; [-7]
       61 GETTABLEKS                       R4 R0 K15 ["_themeChangedConnection"]
       63 JUMPIFNOTEQKNIL                  R4 ; [+14]
       65 GETUPVAL                         R4 5
       66 GETTABLEKS                       R4 R4 K16 ["getStudioThemeChangedSignal"]
       68 CALL                             R4 0 1
       69 NEWCLOSURE                       R6 P3
       70 CAPTURE                          VAL R0
       71 CAPTURE                          UPVAL U5
       72 CAPTURE                          VAL R2
       73 NAMECALL                         R4 R4 K17 ["Connect"]
       75 CALL                             R4 2 1
       76 SETTABLEKS                       R4 R0 K15 ["_themeChangedConnection"]
       78 GETTABLEKS                       R4 R0 K18 ["_volumeChangedConnection"]
       80 JUMPIFNOTEQKNIL                  R4 ; [+14]
       82 GETUPVAL                         R4 5
       83 GETTABLEKS                       R4 R4 K19 ["getStudioVolumeChangedSignal"]
       85 CALL                             R4 0 1
       86 NEWCLOSURE                       R6 P4
       87 CAPTURE                          VAL R0
       88 CAPTURE                          UPVAL U5
       89 CAPTURE                          VAL R2
       90 NAMECALL                         R4 R4 K17 ["Connect"]
       92 CALL                             R4 2 1
       93 SETTABLEKS                       R4 R0 K18 ["_volumeChangedConnection"]
       95 GETTABLEKS                       R4 R0 K0 ["props"]
       97 GETTABLEKS                       R4 R4 K20 ["eventHandlers"]
       99 JUMPIFNOT                        R4 ; [+16]
      100 GETIMPORT                        R4 K13 [pairs]
      102 GETTABLEKS                       R5 R0 K0 ["props"]
      104 GETTABLEKS                       R5 R5 K20 ["eventHandlers"]
      106 CALL                             R4 1 3
      107 FORGPREP_NEXT                    R4
      108 MOVE                             R11 R2
      109 MOVE                             R12 R7
      110 MOVE                             R13 R8
      111 NAMECALL                         R9 R0 K14 ["_setUpListener"]
      113 CALL                             R9 4 0
      114 FORGLOOP                         R4 2 ; [-7]
      116 GETUPVAL                         R4 0
      117 JUMPIFNOT                        R4 ; [+7]
      118 GETTABLEKS                       R4 R0 K6 ["_managerComponent"]
      120 JUMPIFNOTEQKNIL                  R4 ; [+4]
      122 NAMECALL                         R4 R0 K7 ["setUpManagerComponent"]
      124 CALL                             R4 1 0
      125 GETUPVAL                         R4 3
      126 GETTABLEKS                       R4 R4 K21 ["onWebViewMounted"]
      128 GETTABLEKS                       R5 R0 K0 ["props"]
      130 GETTABLEKS                       R5 R5 K22 ["analyticsContext"]
      132 CALL                             R4 1 0
      133 RETURN                           R0 0

PROTO_18:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R2 K1 ["manualRetryAttempt"]
        4 JUMPIFNOT                        R2 ; [+13]
        5 GETTABLEKS                       R2 R0 K0 ["props"]
        7 GETTABLEKS                       R2 R2 K1 ["manualRetryAttempt"]
        9 GETTABLEKS                       R4 R1 K1 ["manualRetryAttempt"]
       11 ORK                              R3 R4 K2 [0]
       12 JUMPIFNOTLT                      R3 R2 ; [+5]
       14 GETTABLEKS                       R2 R0 K3 ["initializeWebView"]
       16 CALL                             R2 0 0
       17 RETURN                           R0 0
       18 GETTABLEKS                       R2 R0 K4 ["shouldRetryOnValidSizeErrorType"]
       20 JUMPIFEQKNIL                     R2 ; [+20]
       22 GETTABLEKS                       R2 R0 K0 ["props"]
       24 GETTABLEKS                       R2 R2 K5 ["hasValidSize"]
       26 JUMPIFNOT                        R2 ; [+14]
       27 GETTABLEKS                       R2 R1 K5 ["hasValidSize"]
       29 JUMPIF                           R2 ; [+11]
       30 GETTABLEKS                       R2 R0 K6 ["autoRetryBeforeWebViewErrorShown"]
       32 GETTABLEKS                       R3 R0 K4 ["shouldRetryOnValidSizeErrorType"]
       34 GETTABLEKS                       R4 R0 K7 ["_autoRetryCount"]
       36 CALL                             R2 2 0
       37 LOADNIL                          R2
       38 SETTABLEKS                       R2 R0 K4 ["shouldRetryOnValidSizeErrorType"]
       40 RETURN                           R0 0
       41 GETTABLEKS                       R2 R0 K0 ["props"]
       43 GETTABLEKS                       R2 R2 K8 ["webViewError"]
       45 JUMPIFNOT                        R2 ; [+6]
       46 GETTABLEKS                       R2 R1 K8 ["webViewError"]
       48 JUMPIF                           R2 ; [+3]
       49 GETTABLEKS                       R2 R0 K9 ["startRetryInitializeWebViewLoop"]
       51 CALL                             R2 0 0
       52 RETURN                           R0 0

PROTO_19:
        0 GETTABLEKS                       R1 R0 K0 ["_webBrowserLoadProgressConnection"]
        2 JUMPIFNOT                        R1 ; [+5]
        3 GETTABLEKS                       R1 R0 K0 ["_webBrowserLoadProgressConnection"]
        5 NAMECALL                         R1 R1 K1 ["Disconnect"]
        7 CALL                             R1 1 0
        8 GETTABLEKS                       R1 R0 K2 ["_webBrowserLoadedConnection"]
       10 JUMPIFNOT                        R1 ; [+5]
       11 GETTABLEKS                       R1 R0 K2 ["_webBrowserLoadedConnection"]
       13 NAMECALL                         R1 R1 K1 ["Disconnect"]
       15 CALL                             R1 1 0
       16 GETTABLEKS                       R1 R0 K3 ["_webBrowserErrorConnection"]
       18 JUMPIFNOT                        R1 ; [+5]
       19 GETTABLEKS                       R1 R0 K3 ["_webBrowserErrorConnection"]
       21 NAMECALL                         R1 R1 K1 ["Disconnect"]
       23 CALL                             R1 1 0
       24 GETTABLEKS                       R1 R0 K4 ["_themeChangedConnection"]
       26 JUMPIFNOT                        R1 ; [+5]
       27 GETTABLEKS                       R1 R0 K4 ["_themeChangedConnection"]
       29 NAMECALL                         R1 R1 K1 ["Disconnect"]
       31 CALL                             R1 1 0
       32 GETTABLEKS                       R1 R0 K5 ["_volumeChangedConnection"]
       34 JUMPIFNOT                        R1 ; [+5]
       35 GETTABLEKS                       R1 R0 K5 ["_volumeChangedConnection"]
       37 NAMECALL                         R1 R1 K1 ["Disconnect"]
       39 CALL                             R1 1 0
       40 RETURN                           R0 0

PROTO_20:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R1 K1 ["WebViewManagerContext"]
        4 NAMECALL                         R1 R1 K2 ["get"]
        6 CALL                             R1 1 1
        7 GETIMPORT                        R2 K4 [pairs]
        9 GETTABLEKS                       R3 R0 K5 ["_webViewListeners"]
       11 CALL                             R2 1 3
       12 FORGPREP_NEXT                    R2
       13 MOVE                             R7 R6
       14 LOADNIL                          R8
       15 LOADNIL                          R9
       16 FORGPREP                         R7
       17 MOVE                             R14 R5
       18 MOVE                             R15 R11
       19 NAMECALL                         R12 R1 K6 ["removeListener"]
       21 CALL                             R12 3 0
       22 FORGLOOP                         R7 2 ; [-6]
       24 FORGLOOP                         R2 2 ; [-12]
       26 NEWTABLE                         R2 0 0
       28 SETTABLEKS                       R2 R0 K5 ["_webViewListeners"]
       30 RETURN                           R0 0

PROTO_21:
        0 GETIMPORT                        R0 K2 [task.cancel]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K3 ["_retryInitializeWebviewCoroutine"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_22:
        0 NAMECALL                         R1 R0 K0 ["disconnectAllSignals"]
        2 CALL                             R1 1 0
        3 NAMECALL                         R1 R0 K1 ["removeAllListeners"]
        5 CALL                             R1 1 0
        6 LOADNIL                          R1
        7 SETTABLEKS                       R1 R0 K2 ["_managerComponent"]
        9 LOADNIL                          R1
       10 SETTABLEKS                       R1 R0 K3 ["isMounted"]
       12 LOADNIL                          R1
       13 SETTABLEKS                       R1 R0 K4 ["shouldRetryOnValidSizeErrorType"]
       15 GETTABLEKS                       R1 R0 K5 ["_retryInitializeWebviewCoroutine"]
       17 JUMPIFNOT                        R1 ; [+5]
       18 GETIMPORT                        R1 K7 [pcall]
       20 NEWCLOSURE                       R2 P0
       21 CAPTURE                          VAL R0
       22 CALL                             R1 1 0
       23 GETTABLEKS                       R1 R0 K8 ["props"]
       25 GETTABLEKS                       R1 R1 K9 ["WebViewManagerContext"]
       27 NAMECALL                         R1 R1 K10 ["hideBrowser"]
       29 CALL                             R1 1 0
       30 GETTABLEKS                       R1 R0 K8 ["props"]
       32 GETTABLEKS                       R1 R1 K9 ["WebViewManagerContext"]
       34 NAMECALL                         R1 R1 K11 ["destroy"]
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createElement"]
        3 LOADK                            R2 K1 ["Frame"]
        4 NEWTABLE                         R3 0 0
        6 CALL                             R1 2 -1
        7 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["WebView"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["Packages"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R3 R1 K7 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K8 ["Cryo"]
       22 CALL                             R3 1 1
       23 GETTABLEKS                       R4 R0 K9 ["Util"]
       25 GETIMPORT                        R5 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Analytics"]
       29 CALL                             R5 1 1
       30 GETIMPORT                        R6 K6 [require]
       32 GETTABLEKS                       R7 R0 K11 ["AnalyticsSenders"]
       34 CALL                             R6 1 1
       35 GETIMPORT                        R7 K6 [require]
       37 GETTABLEKS                       R8 R4 K12 ["SettingUtil"]
       39 CALL                             R7 1 1
       40 GETIMPORT                        R8 K6 [require]
       42 GETIMPORT                        R9 K1 [script]
       44 GETTABLEKS                       R9 R9 K13 ["Parent"]
       46 GETTABLEKS                       R9 R9 K14 ["WebViewTypes"]
       48 CALL                             R8 1 1
       49 GETIMPORT                        R9 K16 [game]
       51 LOADK                            R11 K17 ["LoadProgressInitEvents"]
       52 LOADK                            R12 K18 ["afterInteractive"]
       53 NAMECALL                         R9 R9 K19 ["DefineFastString"]
       55 CALL                             R9 3 1
       56 GETIMPORT                        R10 K16 [game]
       58 LOADK                            R12 K20 ["WebViewInitRetryTotalCount"]
       59 LOADN                            R13 3
       60 NAMECALL                         R10 R10 K21 ["DefineFastInt"]
       62 CALL                             R10 3 1
       63 GETIMPORT                        R11 K16 [game]
       65 LOADK                            R13 K22 ["WebViewInitRetryDelaySeconds"]
       66 LOADN                            R14 1
       67 NAMECALL                         R11 R11 K21 ["DefineFastInt"]
       69 CALL                             R11 3 1
       70 GETIMPORT                        R12 K16 [game]
       72 LOADK                            R14 K23 ["FixWVConnectorInitRace"]
       73 LOADB                            R15 0
       74 NAMECALL                         R12 R12 K24 ["DefineFastFlag"]
       76 CALL                             R12 3 1
       77 GETIMPORT                        R13 K6 [require]
       79 GETIMPORT                        R14 K1 [script]
       81 GETTABLEKS                       R14 R14 K13 ["Parent"]
       83 GETTABLEKS                       R14 R14 K25 ["EventNames"]
       85 CALL                             R13 1 1
       86 GETIMPORT                        R14 K6 [require]
       88 GETIMPORT                        R15 K1 [script]
       90 GETTABLEKS                       R15 R15 K13 ["Parent"]
       92 GETTABLEKS                       R15 R15 K9 ["Util"]
       94 GETTABLEKS                       R15 R15 K26 ["Constants"]
       96 CALL                             R14 1 1
       97 GETTABLEKS                       R15 R2 K27 ["PureComponent"]
       99 LOADK                            R17 K28 ["WebViewConnector"]
      100 NAMECALL                         R15 R15 K29 ["extend"]
      102 CALL                             R15 2 1
      103 DUPCLOSURE                       R16 K30 [PROTO_0]
      104 SETGLOBAL                        R16 K31 ["shouldUseDeferredAnalytics"]
      106 DUPCLOSURE                       R16 K32 [PROTO_1]
      107 SETGLOBAL                        R16 K33 ["getStudioThemeName"]
      109 DUPCLOSURE                       R16 K34 [PROTO_2]
      110 CAPTURE                          VAL R5
      111 SETTABLEKS                       R16 R15 K35 ["init"]
      113 DUPCLOSURE                       R16 K36 [PROTO_10]
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R9
      117 CAPTURE                          VAL R10
      118 CAPTURE                          VAL R11
      119 SETTABLEKS                       R16 R15 K37 ["setUpManagerComponent"]
      121 DUPCLOSURE                       R16 K38 [PROTO_11]
      122 CAPTURE                          VAL R3
      123 SETTABLEKS                       R16 R15 K39 ["_setUpListener"]
      125 DUPCLOSURE                       R16 K40 [PROTO_17]
      126 CAPTURE                          VAL R12
      127 CAPTURE                          VAL R13
      128 CAPTURE                          VAL R6
      129 CAPTURE                          VAL R5
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R7
      132 SETTABLEKS                       R16 R15 K41 ["didMount"]
      134 DUPCLOSURE                       R16 K42 [PROTO_18]
      135 SETTABLEKS                       R16 R15 K43 ["didUpdate"]
      137 DUPCLOSURE                       R16 K44 [PROTO_19]
      138 SETTABLEKS                       R16 R15 K45 ["disconnectAllSignals"]
      140 DUPCLOSURE                       R16 K46 [PROTO_20]
      141 SETTABLEKS                       R16 R15 K47 ["removeAllListeners"]
      143 DUPCLOSURE                       R16 K48 [PROTO_22]
      144 SETTABLEKS                       R16 R15 K49 ["willUnmount"]
      146 DUPCLOSURE                       R16 K50 [PROTO_23]
      147 CAPTURE                          VAL R2
      148 SETTABLEKS                       R16 R15 K51 ["render"]
      150 RETURN                           R15 1
