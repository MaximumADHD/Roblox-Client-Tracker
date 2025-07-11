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
  DUPCLOSURE R0 K0 [PROTO_0]
  RETURN R0 1
