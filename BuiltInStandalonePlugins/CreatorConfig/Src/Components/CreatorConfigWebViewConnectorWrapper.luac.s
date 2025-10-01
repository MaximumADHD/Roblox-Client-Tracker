MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CreatorConfig"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Packages"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["ContextServices"]
  GETTABLEKS R3 R4 K9 ["withContext"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K10 ["WebView"]
  CALL R5 1 1
  GETTABLEKS R4 R5 K11 ["WebViewManagerContext"]
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K12 ["Src"]
  GETTABLEKS R7 R8 K13 ["Components"]
  GETTABLEKS R6 R7 K14 ["CreatorConfigWebViewConnector"]
  CALL R5 1 1
  MOVE R6 R3
  DUPTABLE R7 K15 [{"WebViewManagerContext"}]
  SETTABLEKS R4 R7 K11 ["WebViewManagerContext"]
  CALL R6 1 1
  MOVE R7 R5
  CALL R6 1 1
  RETURN R6 1
