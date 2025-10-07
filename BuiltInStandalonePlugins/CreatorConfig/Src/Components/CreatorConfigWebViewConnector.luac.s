PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  JUMPIF R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Plugin"]
  LOADK R3 K2 ["universeid"]
  NAMECALL R1 R1 K3 ["GetItem"]
  CALL R1 2 1
  JUMPIF R1 [+2]
  LOADNIL R2
  RETURN R2 1
  LOADK R3 K4 ["https://create.roblox.com/dashboard/creations/experiences/"]
  MOVE R4 R1
  LOADK R5 K5 ["/configs/studio"]
  CONCAT R2 R3 R5
  RETURN R2 1

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["getConfigUrl"]
  CALL R0 1 1
  JUMPIFNOT R0 [+16]
  GETUPVAL R1 0
  JUMPIFNOT R1 [+14]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["state"]
  GETTABLEKS R1 R2 K2 ["configUrl"]
  JUMPIFEQ R0 R1 [+8]
  GETUPVAL R1 0
  DUPTABLE R3 K3 [{"configUrl"}]
  SETTABLEKS R0 R3 K2 ["configUrl"]
  NAMECALL R1 R1 K4 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"configUrl"}]
  NAMECALL R2 R0 K2 ["getConfigUrl"]
  CALL R2 1 1
  SETTABLEKS R2 R1 K0 ["configUrl"]
  SETTABLEKS R1 R0 K3 ["state"]
  GETTABLEKS R2 R0 K4 ["props"]
  GETTABLEKS R1 R2 K5 ["Plugin"]
  LOADK R3 K6 ["idsupdated"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K7 ["OnInvoke"]
  CALL R1 3 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["props"]
  GETTABLEKS R0 R1 K1 ["WebViewManagerContext"]
  NAMECALL R0 R0 K2 ["showBrowser"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R3 R0 K1 ["state"]
  GETTABLEKS R2 R3 K2 ["configUrl"]
  JUMPIF R2 [+2]
  LOADNIL R2
  RETURN R2 1
  GETTABLEKS R2 R1 K3 ["Plugin"]
  LOADK R4 K4 ["CreatorConfigManager"]
  NAMECALL R2 R2 K5 ["GetPluginComponent"]
  CALL R2 2 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K6 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K17 [{"Plugin", "PluginManagerComponent", "Url", "hasValidSize", "hasWebViewEverLoaded", "webViewLoadingStatus", "webViewError", "HandlePassedInitAndLoadingCheck", "WebViewManagerContext", "analyticsContext", "offsetHeight"}]
  GETTABLEKS R6 R1 K3 ["Plugin"]
  SETTABLEKS R6 R5 K3 ["Plugin"]
  SETTABLEKS R2 R5 K7 ["PluginManagerComponent"]
  GETTABLEKS R7 R0 K1 ["state"]
  GETTABLEKS R6 R7 K2 ["configUrl"]
  SETTABLEKS R6 R5 K8 ["Url"]
  GETTABLEKS R6 R1 K9 ["hasValidSize"]
  SETTABLEKS R6 R5 K9 ["hasValidSize"]
  GETTABLEKS R6 R1 K10 ["hasWebViewEverLoaded"]
  SETTABLEKS R6 R5 K10 ["hasWebViewEverLoaded"]
  GETTABLEKS R6 R1 K11 ["webViewLoadingStatus"]
  SETTABLEKS R6 R5 K11 ["webViewLoadingStatus"]
  GETTABLEKS R6 R1 K12 ["webViewError"]
  SETTABLEKS R6 R5 K12 ["webViewError"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  SETTABLEKS R6 R5 K13 ["HandlePassedInitAndLoadingCheck"]
  GETTABLEKS R6 R1 K14 ["WebViewManagerContext"]
  SETTABLEKS R6 R5 K14 ["WebViewManagerContext"]
  LOADK R6 K18 ["creatorConfig"]
  SETTABLEKS R6 R5 K15 ["analyticsContext"]
  LOADN R6 0
  SETTABLEKS R6 R5 K16 ["offsetHeight"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CreatorConfig"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["WebView"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K9 ["WebViewConnector"]
  GETTABLEKS R5 R2 K10 ["PureComponent"]
  LOADK R7 K11 ["CreatorConfigWebViewConnector"]
  NAMECALL R5 R5 K12 ["extend"]
  CALL R5 2 1
  DUPCLOSURE R6 K13 [PROTO_0]
  SETTABLEKS R6 R5 K14 ["getConfigUrl"]
  DUPCLOSURE R6 K15 [PROTO_2]
  SETTABLEKS R6 R5 K16 ["init"]
  DUPCLOSURE R6 K17 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R4
  SETTABLEKS R6 R5 K18 ["render"]
  RETURN R5 1
