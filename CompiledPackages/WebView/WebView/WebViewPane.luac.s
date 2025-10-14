PROTO_0:
  GETTABLEKS R1 R0 K0 ["AbsoluteSize"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["state"]
  GETTABLEKS R2 R3 K2 ["hasValidSize"]
  JUMPIF R2 [+63]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["prevSize"]
  JUMPIFEQ R2 R1 [+59]
  GETTABLEKS R2 R1 K4 ["X"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+14]
  GETTABLEKS R2 R1 K5 ["Y"]
  LOADN R3 0
  JUMPIFNOTLT R3 R2 [+9]
  GETUPVAL R2 0
  DUPTABLE R4 K6 [{"hasValidSize"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K2 ["hasValidSize"]
  NAMECALL R2 R2 K7 ["setState"]
  CALL R2 2 0
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["prevSize"]
  JUMPIFNOT R3 [+6]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["prevSize"]
  GETTABLEKS R2 R3 K4 ["X"]
  JUMP [+1]
  LOADN R2 0
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["prevSize"]
  JUMPIFNOT R4 [+6]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["prevSize"]
  GETTABLEKS R3 R4 K5 ["Y"]
  JUMP [+1]
  LOADN R3 0
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K8 ["onWebViewInitialSizing"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K9 ["props"]
  GETTABLEKS R5 R6 K10 ["analyticsContext"]
  MOVE R6 R2
  MOVE R7 R3
  GETTABLEKS R8 R1 K4 ["X"]
  GETTABLEKS R9 R1 K5 ["Y"]
  CALL R4 5 0
  GETUPVAL R4 0
  SETTABLEKS R1 R4 K3 ["prevSize"]
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["webViewLoadingStatus"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["WebViewLoadingStatus"]
  GETTABLEKS R1 R2 K3 ["FAILED"]
  JUMPIFNOTEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K4 ["webViewReloading"]
  JUMPIFNOT R0 [+25]
  GETUPVAL R0 0
  DUPTABLE R2 K7 [{"webViewError", "webViewReloading", "webViewRetryAttempt"}]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["None"]
  SETTABLEKS R3 R2 K5 ["webViewError"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["webViewReloading"]
  LOADN R3 0
  SETTABLEKS R3 R2 K6 ["webViewRetryAttempt"]
  NAMECALL R0 R0 K9 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["props"]
  GETTABLEKS R0 R1 K11 ["WebViewManagerContext"]
  NAMECALL R0 R0 K12 ["showBrowser"]
  CALL R0 1 0
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K13 ["hasWebViewEverLoaded"]
  JUMPIF R0 [+34]
  GETUPVAL R0 0
  DUPTABLE R2 K14 [{"webViewLoadingStatus", "webViewError", "webViewRetryAttempt", "hasWebViewEverLoaded", "webViewReloading"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["WebViewLoadingStatus"]
  GETTABLEKS R3 R4 K15 ["PASSED"]
  SETTABLEKS R3 R2 K1 ["webViewLoadingStatus"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K8 ["None"]
  SETTABLEKS R3 R2 K5 ["webViewError"]
  LOADN R3 0
  SETTABLEKS R3 R2 K6 ["webViewRetryAttempt"]
  LOADB R3 1
  SETTABLEKS R3 R2 K13 ["hasWebViewEverLoaded"]
  LOADB R3 0
  SETTABLEKS R3 R2 K4 ["webViewReloading"]
  NAMECALL R0 R0 K9 ["setState"]
  CALL R0 2 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K10 ["props"]
  GETTABLEKS R0 R1 K11 ["WebViewManagerContext"]
  NAMECALL R0 R0 K12 ["showBrowser"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["WebViewManagerContext"]
  NAMECALL R1 R1 K2 ["hideBrowser"]
  CALL R1 1 0
  GETUPVAL R1 0
  DUPTABLE R3 K4 [{"webViewError"}]
  SETTABLEKS R0 R3 K3 ["webViewError"]
  NAMECALL R1 R1 K5 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  DUPTABLE R1 K6 [{"hasValidSize", "webViewError", "webViewLoadingStatus", "webViewRetryAttempt", "hasWebViewEverLoaded", "webViewReloading"}]
  LOADB R2 0
  SETTABLEKS R2 R1 K0 ["hasValidSize"]
  LOADNIL R2
  SETTABLEKS R2 R1 K1 ["webViewError"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K7 ["WebViewLoadingStatus"]
  GETTABLEKS R2 R3 K8 ["WAITING"]
  SETTABLEKS R2 R1 K2 ["webViewLoadingStatus"]
  LOADN R2 0
  SETTABLEKS R2 R1 K3 ["webViewRetryAttempt"]
  LOADB R2 0
  SETTABLEKS R2 R1 K4 ["hasWebViewEverLoaded"]
  LOADB R2 0
  SETTABLEKS R2 R1 K5 ["webViewReloading"]
  SETTABLEKS R1 R0 K9 ["state"]
  LOADNIL R1
  SETTABLEKS R1 R0 K10 ["prevSize"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K11 ["onAbsoluteSizeChange"]
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U2
  SETTABLEKS R1 R0 K12 ["handledWebViewLoaded"]
  NEWCLOSURE R1 P2
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K13 ["handledWebViewError"]
  RETURN R0 0

PROTO_4:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["state"]
  GETTABLEKS R1 R2 K2 ["webViewRetryAttempt"]
  ADDK R0 R1 K0 [1]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K3 ["onWebViewRetryClicked"]
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K4 ["analyticsContext"]
  MOVE R3 R0
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["initAutoRetryMaxAttempts"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["state"]
  GETTABLEKS R5 R6 K6 ["webViewError"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K1 ["state"]
  GETTABLEKS R6 R7 K7 ["webViewLoadingStatus"]
  CALL R1 5 0
  GETUPVAL R1 0
  DUPTABLE R3 K9 [{"webViewError", "webViewReloading", "webViewRetryAttempt"}]
  GETUPVAL R5 3
  GETTABLEKS R4 R5 K10 ["None"]
  SETTABLEKS R4 R3 K6 ["webViewError"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K1 ["state"]
  GETTABLEKS R5 R6 K7 ["webViewLoadingStatus"]
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K11 ["WebViewLoadingStatus"]
  GETTABLEKS R6 R7 K12 ["PASSED"]
  JUMPIFEQ R5 R6 [+2]
  LOADB R4 0 +1
  LOADB R4 1
  SETTABLEKS R4 R3 K8 ["webViewReloading"]
  SETTABLEKS R0 R3 K2 ["webViewRetryAttempt"]
  NAMECALL R1 R1 K13 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["props"]
  LOADNIL R2
  GETTABLEKS R4 R0 K1 ["state"]
  GETTABLEKS R3 R4 K2 ["webViewError"]
  JUMPIFNOT R3 [+34]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K9 [{"reason", "OnRetryClicked", "title", "buttonText", "analyticsContext"}]
  GETTABLEKS R7 R0 K1 ["state"]
  GETTABLEKS R6 R7 K2 ["webViewError"]
  SETTABLEKS R6 R5 K4 ["reason"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U2
  CAPTURE VAL R1
  CAPTURE UPVAL U0
  CAPTURE UPVAL U3
  SETTABLEKS R6 R5 K5 ["OnRetryClicked"]
  GETTABLEKS R6 R1 K10 ["retryTitle"]
  SETTABLEKS R6 R5 K6 ["title"]
  GETTABLEKS R6 R1 K11 ["retryButtonText"]
  SETTABLEKS R6 R5 K7 ["buttonText"]
  GETTABLEKS R6 R1 K8 ["analyticsContext"]
  SETTABLEKS R6 R5 K8 ["analyticsContext"]
  CALL R3 2 1
  MOVE R2 R3
  JUMP [+59]
  GETTABLEKS R4 R0 K1 ["state"]
  GETTABLEKS R3 R4 K12 ["webViewLoadingStatus"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K13 ["WebViewLoadingStatus"]
  GETTABLEKS R4 R5 K14 ["WAITING"]
  JUMPIFEQ R3 R4 [+17]
  GETTABLEKS R4 R0 K1 ["state"]
  GETTABLEKS R3 R4 K12 ["webViewLoadingStatus"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K13 ["WebViewLoadingStatus"]
  GETTABLEKS R4 R5 K15 ["PASSED"]
  JUMPIFNOTEQ R3 R4 [+37]
  GETTABLEKS R4 R0 K1 ["state"]
  GETTABLEKS R3 R4 K16 ["webViewReloading"]
  JUMPIFNOT R3 [+31]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 4
  DUPTABLE R5 K20 [{"Size", "AnchorPoint", "Position"}]
  GETIMPORT R6 K23 [UDim2.new]
  LOADN R7 0
  LOADN R8 100
  LOADN R9 0
  LOADN R10 100
  CALL R6 4 1
  SETTABLEKS R6 R5 K17 ["Size"]
  GETIMPORT R6 K25 [Vector2.new]
  LOADK R7 K26 [0.5]
  LOADK R8 K26 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K18 ["AnchorPoint"]
  GETIMPORT R6 K28 [UDim2.fromScale]
  LOADK R7 K26 [0.5]
  LOADK R8 K26 [0.5]
  CALL R6 2 1
  SETTABLEKS R6 R5 K19 ["Position"]
  CALL R3 2 1
  MOVE R2 R3
  JUMP [+1]
  LOADNIL R2
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 6
  NEWTABLE R5 1 0
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K29 ["Change"]
  GETTABLEKS R6 R7 K30 ["AbsoluteSize"]
  GETTABLEKS R7 R0 K31 ["onAbsoluteSizeChange"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K34 [{"WebViewConnector", "MainView"}]
  GETTABLEKS R9 R0 K1 ["state"]
  GETTABLEKS R8 R9 K35 ["hasValidSize"]
  JUMPIFNOT R8 [+77]
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 7
  DUPTABLE R9 K47 [{"Plugin", "PluginManagerComponent", "WebViewManagerContext", "Url", "analyticsContext", "offsetHeight", "eventHandlers", "initAutoRetryMaxAttempts", "hasValidSize", "hasWebViewEverLoaded", "webViewLoadingStatus", "webViewError", "manualRetryAttempt", "HandleFailedInitCheck", "HandlePassedInitAndLoadingCheck"}]
  GETTABLEKS R10 R1 K36 ["Plugin"]
  SETTABLEKS R10 R9 K36 ["Plugin"]
  GETTABLEKS R10 R1 K37 ["PluginManagerComponent"]
  SETTABLEKS R10 R9 K37 ["PluginManagerComponent"]
  GETTABLEKS R10 R1 K38 ["WebViewManagerContext"]
  SETTABLEKS R10 R9 K38 ["WebViewManagerContext"]
  GETTABLEKS R10 R1 K39 ["Url"]
  SETTABLEKS R10 R9 K39 ["Url"]
  GETTABLEKS R10 R1 K8 ["analyticsContext"]
  SETTABLEKS R10 R9 K8 ["analyticsContext"]
  GETTABLEKS R10 R1 K40 ["offsetHeight"]
  SETTABLEKS R10 R9 K40 ["offsetHeight"]
  GETTABLEKS R10 R1 K41 ["eventHandlers"]
  SETTABLEKS R10 R9 K41 ["eventHandlers"]
  GETTABLEKS R10 R1 K42 ["initAutoRetryMaxAttempts"]
  SETTABLEKS R10 R9 K42 ["initAutoRetryMaxAttempts"]
  GETTABLEKS R11 R0 K1 ["state"]
  GETTABLEKS R10 R11 K35 ["hasValidSize"]
  SETTABLEKS R10 R9 K35 ["hasValidSize"]
  GETTABLEKS R11 R0 K1 ["state"]
  GETTABLEKS R10 R11 K43 ["hasWebViewEverLoaded"]
  SETTABLEKS R10 R9 K43 ["hasWebViewEverLoaded"]
  GETTABLEKS R11 R0 K1 ["state"]
  GETTABLEKS R10 R11 K12 ["webViewLoadingStatus"]
  SETTABLEKS R10 R9 K12 ["webViewLoadingStatus"]
  GETTABLEKS R11 R0 K1 ["state"]
  GETTABLEKS R10 R11 K2 ["webViewError"]
  SETTABLEKS R10 R9 K2 ["webViewError"]
  GETTABLEKS R11 R0 K1 ["state"]
  GETTABLEKS R10 R11 K48 ["webViewRetryAttempt"]
  SETTABLEKS R10 R9 K44 ["manualRetryAttempt"]
  GETTABLEKS R10 R0 K49 ["handledWebViewError"]
  SETTABLEKS R10 R9 K45 ["HandleFailedInitCheck"]
  GETTABLEKS R10 R0 K50 ["handledWebViewLoaded"]
  SETTABLEKS R10 R9 K46 ["HandlePassedInitAndLoadingCheck"]
  CALL R7 2 1
  JUMP [+1]
  LOADNIL R7
  SETTABLEKS R7 R6 K32 ["WebViewConnector"]
  SETTABLEKS R2 R6 K33 ["MainView"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["WebView"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K1 [script]
  LOADK R3 K4 ["Packages"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K9 ["Framework"]
  CALL R4 1 1
  GETTABLEKS R6 R4 K10 ["UI"]
  GETTABLEKS R5 R6 K11 ["Pane"]
  GETTABLEKS R7 R4 K10 ["UI"]
  GETTABLEKS R6 R7 K12 ["LoadingIndicator"]
  GETIMPORT R7 K6 [require]
  GETTABLEKS R8 R0 K13 ["WebViewConnector"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R9 R0 K14 ["Analytics"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R0 K15 ["WebViewError"]
  CALL R9 1 1
  GETIMPORT R10 K6 [require]
  GETTABLEKS R11 R0 K16 ["WebViewTypes"]
  CALL R10 1 1
  GETTABLEKS R11 R2 K17 ["PureComponent"]
  LOADK R13 K18 ["WebViewPane"]
  NAMECALL R11 R11 K19 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K20 [PROTO_3]
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R2
  SETTABLEKS R12 R11 K21 ["init"]
  DUPCLOSURE R12 K22 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R7
  SETTABLEKS R12 R11 K23 ["render"]
  RETURN R11 1
