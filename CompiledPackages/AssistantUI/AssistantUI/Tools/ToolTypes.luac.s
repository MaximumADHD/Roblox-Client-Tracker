MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["DMNetworking"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Guest"]
  GETTABLEKS R3 R4 K9 ["Environment"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K10 ["Hooks"]
  GETTABLEKS R4 R5 K11 ["ExternalHooks"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Parent"]
  GETTABLEKS R5 R6 K12 ["ModelContextProtocol"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R0 K13 ["Types"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K14 ["Components"]
  GETTABLEKS R7 R8 K15 ["UIToolRegistry"]
  CALL R6 1 1
  NEWTABLE R7 1 0
  DUPTABLE R8 K29 [{"ExecuteLuau", "FileSearch", "GameTree", "GrepSearch", "Grep", "InsertFromMarketplace", "InspectInstance", "MaterialGen", "MeshGen", "MultiEdit", "ReadFile", "ScreenCapture", "UploadImage"}]
  LOADK R9 K30 ["execute_luau"]
  SETTABLEKS R9 R8 K16 ["ExecuteLuau"]
  LOADK R9 K31 ["script_search"]
  SETTABLEKS R9 R8 K17 ["FileSearch"]
  LOADK R9 K32 ["search_game_tree"]
  SETTABLEKS R9 R8 K18 ["GameTree"]
  LOADK R9 K33 ["script_grep"]
  SETTABLEKS R9 R8 K19 ["GrepSearch"]
  LOADK R9 K34 ["grep"]
  SETTABLEKS R9 R8 K20 ["Grep"]
  LOADK R9 K35 ["insert_from_marketplace"]
  SETTABLEKS R9 R8 K21 ["InsertFromMarketplace"]
  LOADK R9 K36 ["inspect_instance"]
  SETTABLEKS R9 R8 K22 ["InspectInstance"]
  LOADK R9 K37 ["generate_material"]
  SETTABLEKS R9 R8 K23 ["MaterialGen"]
  LOADK R9 K38 ["generate_mesh"]
  SETTABLEKS R9 R8 K24 ["MeshGen"]
  LOADK R9 K39 ["multi_edit"]
  SETTABLEKS R9 R8 K25 ["MultiEdit"]
  LOADK R9 K40 ["script_read"]
  SETTABLEKS R9 R8 K26 ["ReadFile"]
  LOADK R9 K41 ["screen_capture"]
  SETTABLEKS R9 R8 K27 ["ScreenCapture"]
  LOADK R9 K42 ["upload_image"]
  SETTABLEKS R9 R8 K28 ["UploadImage"]
  SETTABLEKS R8 R7 K43 ["ToolNames"]
  RETURN R7 1
