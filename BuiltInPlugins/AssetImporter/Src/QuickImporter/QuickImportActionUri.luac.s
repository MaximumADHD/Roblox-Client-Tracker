MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"DataModel", "PluginId", "Category", "ItemId"}]
  LOADK R1 K5 ["Standalone"]
  SETTABLEKS R1 R0 K0 ["DataModel"]
  LOADK R1 K6 ["AssetImport"]
  SETTABLEKS R1 R0 K1 ["PluginId"]
  LOADK R1 K7 ["Actions"]
  SETTABLEKS R1 R0 K2 ["Category"]
  LOADK R1 K8 ["QuickImporter"]
  SETTABLEKS R1 R0 K3 ["ItemId"]
  RETURN R0 1
