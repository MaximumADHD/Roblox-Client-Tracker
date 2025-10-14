MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["WebBrowserContextSTM6463Enabled3"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K6 [{"displayName", "testMatch"}]
  LOADK R1 K7 ["WebView"]
  SETTABLEKS R1 R0 K4 ["displayName"]
  NEWTABLE R1 0 1
  LOADK R2 K8 ["**/*.spec.lua"]
  SETLIST R1 R2 1 [1]
  SETTABLEKS R1 R0 K5 ["testMatch"]
  RETURN R0 1
