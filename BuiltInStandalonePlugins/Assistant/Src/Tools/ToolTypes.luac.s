MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Assistant"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AssistantUI"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["DMNetworking"]
  CALL R2 1 1
  NEWTABLE R3 1 0
  DUPTABLE R4 K19 [{"ExecuteLuau", "FileSearch", "GrepSearch", "Grep", "InsertFromMarketplace", "MaterialGen", "MeshGen", "MultiEdit", "ReadFile", "ScreenCapture"}]
  LOADK R5 K20 ["execute_luau"]
  SETTABLEKS R5 R4 K9 ["ExecuteLuau"]
  LOADK R5 K21 ["file_search"]
  SETTABLEKS R5 R4 K10 ["FileSearch"]
  LOADK R5 K22 ["grep_search"]
  SETTABLEKS R5 R4 K11 ["GrepSearch"]
  LOADK R5 K23 ["grep"]
  SETTABLEKS R5 R4 K12 ["Grep"]
  LOADK R5 K24 ["insert_from_marketplace"]
  SETTABLEKS R5 R4 K13 ["InsertFromMarketplace"]
  LOADK R5 K25 ["generate_material"]
  SETTABLEKS R5 R4 K14 ["MaterialGen"]
  LOADK R5 K26 ["generate_mesh"]
  SETTABLEKS R5 R4 K15 ["MeshGen"]
  LOADK R5 K27 ["multi_edit"]
  SETTABLEKS R5 R4 K16 ["MultiEdit"]
  LOADK R5 K28 ["read_file"]
  SETTABLEKS R5 R4 K17 ["ReadFile"]
  LOADK R5 K29 ["screen_capture"]
  SETTABLEKS R5 R4 K18 ["ScreenCapture"]
  SETTABLEKS R4 R3 K30 ["ToolNames"]
  GETTABLEKS R4 R3 K30 ["ToolNames"]
  RETURN R3 1
