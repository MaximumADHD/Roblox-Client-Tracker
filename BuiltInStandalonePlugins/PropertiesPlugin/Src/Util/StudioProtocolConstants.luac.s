MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  DUPTABLE R1 K3 [{"connect", "disconnect", "message"}]
  LOADK R2 K4 ["PropertiesGuestConnect"]
  SETTABLEKS R2 R1 K0 ["connect"]
  LOADK R2 K5 ["PropertiesGuestDisconnect"]
  SETTABLEKS R2 R1 K1 ["disconnect"]
  LOADK R2 K6 ["PropertiesGuestMessage"]
  SETTABLEKS R2 R1 K2 ["message"]
  SETTABLEKS R1 R0 K7 ["fromGuest"]
  DUPTABLE R1 K10 [{"starting", "message", "itemStarted"}]
  LOADK R2 K11 ["PropertiesHostStarting"]
  SETTABLEKS R2 R1 K8 ["starting"]
  LOADK R2 K12 ["PropertiesHostMessage"]
  SETTABLEKS R2 R1 K2 ["message"]
  LOADK R2 K13 ["PropertiesHostStarted"]
  SETTABLEKS R2 R1 K9 ["itemStarted"]
  SETTABLEKS R1 R0 K14 ["fromHost"]
  RETURN R0 1
