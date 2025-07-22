PROTO_0:
  DUPTABLE R2 K4 [{"DataModel", "PluginId", "Category", "ItemId"}]
  LOADK R3 K5 ["Standalone"]
  SETTABLEKS R3 R2 K0 ["DataModel"]
  SETTABLEKS R0 R2 K1 ["PluginId"]
  LOADK R3 K6 ["Actions"]
  SETTABLEKS R3 R2 K2 ["Category"]
  SETTABLEKS R1 R2 K3 ["ItemId"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  DUPCLOSURE R2 K8 [PROTO_0]
  RETURN R2 1
