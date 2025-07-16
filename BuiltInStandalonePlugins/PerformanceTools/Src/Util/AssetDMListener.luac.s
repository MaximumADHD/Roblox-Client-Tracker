PROTO_0:
  RETURN R0 0

PROTO_1:
  DUPTABLE R0 K2 [{"currentData", "providerFunction"}]
  DUPTABLE R1 K18 [{"maxTriangles", "maxDrawCalls", "defaultMaxTriangles", "defaultMaxDrawCalls", "maxTotalRenderMs", "maxTotalTaskMs", "defaultMaxRenderMs", "defaultMaxTaskMs", "triangleCount", "drawCallCount", "renderThreadAverageMs", "taskThreadAverageMs", "isEditDM", "microprofilerVisible", "automaticGraphicsQuality"}]
  LOADK R2 K19 [1000000]
  SETTABLEKS R2 R1 K3 ["maxTriangles"]
  LOADN R2 232
  SETTABLEKS R2 R1 K4 ["maxDrawCalls"]
  LOADK R2 K19 [1000000]
  SETTABLEKS R2 R1 K5 ["defaultMaxTriangles"]
  LOADN R2 232
  SETTABLEKS R2 R1 K6 ["defaultMaxDrawCalls"]
  LOADN R2 14
  SETTABLEKS R2 R1 K7 ["maxTotalRenderMs"]
  LOADN R2 14
  SETTABLEKS R2 R1 K8 ["maxTotalTaskMs"]
  LOADN R2 14
  SETTABLEKS R2 R1 K9 ["defaultMaxRenderMs"]
  LOADN R2 14
  SETTABLEKS R2 R1 K10 ["defaultMaxTaskMs"]
  LOADN R2 0
  SETTABLEKS R2 R1 K11 ["triangleCount"]
  LOADN R2 0
  SETTABLEKS R2 R1 K12 ["drawCallCount"]
  LOADN R2 0
  SETTABLEKS R2 R1 K13 ["renderThreadAverageMs"]
  LOADN R2 0
  SETTABLEKS R2 R1 K14 ["taskThreadAverageMs"]
  LOADB R2 1
  SETTABLEKS R2 R1 K15 ["isEditDM"]
  LOADB R2 0
  SETTABLEKS R2 R1 K16 ["microprofilerVisible"]
  LOADN R2 0
  SETTABLEKS R2 R1 K17 ["automaticGraphicsQuality"]
  SETTABLEKS R1 R0 K0 ["currentData"]
  DUPCLOSURE R1 K20 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["providerFunction"]
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K22 [setmetatable]
  CALL R1 2 0
  RETURN R0 1

PROTO_2:
  GETTABLEKS R1 R0 K0 ["currentData"]
  RETURN R1 1

PROTO_3:
  GETIMPORT R3 K1 [settings]
  CALL R3 0 1
  GETTABLEKS R2 R3 K2 ["Studio"]
  GETTABLEKS R1 R2 K3 ["Theme"]
  GETTABLEKS R0 R1 K4 ["Name"]
  RETURN R0 1

PROTO_4:
  GETIMPORT R0 K1 [pcall]
  DUPCLOSURE R1 K2 [PROTO_3]
  CALL R0 1 2
  JUMPIFNOT R0 [+2]
  JUMPIFNOT R1 [+1]
  RETURN R1 1
  LOADK R2 K3 ["Dark"]
  RETURN R2 1

PROTO_5:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["Dictionary"]
  GETTABLEKS R2 R3 K1 ["join"]
  GETTABLEKS R3 R0 K2 ["currentData"]
  MOVE R4 R1
  CALL R2 2 1
  SETTABLEKS R2 R0 K2 ["currentData"]
  GETTABLEKS R2 R0 K2 ["currentData"]
  GETGLOBAL R3 K3 ["getStudioTheme"]
  CALL R3 0 1
  JUMPIFNOTEQKS R3 K4 ["Light"] [+7]
  GETTABLEKS R4 R0 K5 ["mainButton"]
  LOADK R5 K6 ["rbxasset://studio_svg_textures/Lua/FileSync/Light/Standard/Info.png"]
  SETTABLEKS R5 R4 K7 ["Icon"]
  JUMP [+5]
  GETTABLEKS R4 R0 K5 ["mainButton"]
  LOADK R5 K8 ["rbxasset://studio_svg_textures/Lua/FileSync/Dark/Standard/Info.png"]
  SETTABLEKS R5 R4 K7 ["Icon"]
  GETTABLEKS R4 R0 K9 ["providerFunction"]
  JUMPIFNOT R4 [+4]
  GETTABLEKS R4 R0 K9 ["providerFunction"]
  MOVE R5 R2
  CALL R4 1 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["refreshState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  SETTABLEKS R2 R0 K0 ["mainButton"]
  GETTABLEKS R3 R0 K1 ["currentData"]
  GETUPVAL R10 0
  GETTABLEKS R8 R10 K3 ["SettingsPrefix"]
  LOADK R9 K4 ["maxTriangles"]
  CONCAT R7 R8 R9
  NAMECALL R5 R1 K5 ["GetSetting"]
  CALL R5 2 1
  ORK R4 R5 K2 [1000000]
  SETTABLEKS R4 R3 K4 ["maxTriangles"]
  GETTABLEKS R3 R0 K1 ["currentData"]
  GETUPVAL R10 0
  GETTABLEKS R8 R10 K3 ["SettingsPrefix"]
  LOADK R9 K7 ["maxDrawCalls"]
  CONCAT R7 R8 R9
  NAMECALL R5 R1 K5 ["GetSetting"]
  CALL R5 2 1
  ORK R4 R5 K6 [1000]
  SETTABLEKS R4 R3 K7 ["maxDrawCalls"]
  GETTABLEKS R3 R0 K1 ["currentData"]
  GETUPVAL R10 0
  GETTABLEKS R8 R10 K3 ["SettingsPrefix"]
  LOADK R9 K9 ["maxTotalRenderMs"]
  CONCAT R7 R8 R9
  NAMECALL R5 R1 K5 ["GetSetting"]
  CALL R5 2 1
  ORK R4 R5 K8 [14]
  SETTABLEKS R4 R3 K9 ["maxTotalRenderMs"]
  GETTABLEKS R3 R0 K1 ["currentData"]
  GETUPVAL R10 0
  GETTABLEKS R8 R10 K3 ["SettingsPrefix"]
  LOADK R9 K10 ["maxTotalTaskMs"]
  CONCAT R7 R8 R9
  NAMECALL R5 R1 K5 ["GetSetting"]
  CALL R5 2 1
  ORK R4 R5 K8 [14]
  SETTABLEKS R4 R3 K10 ["maxTotalTaskMs"]
  LOADK R5 K11 ["SetStateAndRefresh"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  NAMECALL R3 R1 K12 ["OnInvoke"]
  CALL R3 3 1
  SETTABLEKS R3 R0 K13 ["setStateAndRefreshConnection"]
  GETTABLEKS R3 R0 K13 ["setStateAndRefreshConnection"]
  LOADK R4 K14 ["setStateAndRefresh"]
  SETTABLEKS R4 R3 K15 ["Name"]
  RETURN R0 0

PROTO_8:
  SETTABLEKS R1 R0 K0 ["providerFunction"]
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["setStateAndRefreshConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PerformanceTools"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Src"]
  GETTABLEKS R4 R5 K9 ["Util"]
  GETTABLEKS R3 R4 K10 ["ThermometerConstants"]
  CALL R2 1 1
  NEWTABLE R3 8 0
  SETTABLEKS R3 R3 K11 ["__index"]
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R4 R3 K13 ["new"]
  DUPCLOSURE R4 K14 [PROTO_2]
  SETTABLEKS R4 R3 K15 ["getCurrentState"]
  DUPCLOSURE R4 K16 [PROTO_4]
  SETGLOBAL R4 K17 ["getStudioTheme"]
  DUPCLOSURE R4 K18 [PROTO_5]
  CAPTURE VAL R1
  SETTABLEKS R4 R3 K19 ["refreshState"]
  DUPCLOSURE R4 K20 [PROTO_7]
  CAPTURE VAL R2
  SETTABLEKS R4 R3 K21 ["connect"]
  DUPCLOSURE R4 K22 [PROTO_8]
  SETTABLEKS R4 R3 K23 ["setContextProviderFunction"]
  DUPCLOSURE R4 K24 [PROTO_9]
  SETTABLEKS R4 R3 K25 ["disconnect"]
  RETURN R3 1
