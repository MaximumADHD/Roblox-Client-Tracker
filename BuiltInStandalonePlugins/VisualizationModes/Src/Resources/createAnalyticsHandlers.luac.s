PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["join"]
  DUPTABLE R3 K5 [{"studioSid", "clientId", "placeId", "userId"}]
  GETUPVAL R4 1
  NAMECALL R4 R4 K6 ["GetSessionId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K1 ["studioSid"]
  GETUPVAL R4 1
  NAMECALL R4 R4 K7 ["GetClientId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K2 ["clientId"]
  GETIMPORT R5 K9 [game]
  GETTABLEKS R4 R5 K10 ["PlaceId"]
  SETTABLEKS R4 R3 K3 ["placeId"]
  GETUPVAL R4 2
  NAMECALL R4 R4 K11 ["GetUserId"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K4 ["userId"]
  MOVE R4 R1
  CALL R2 2 1
  GETUPVAL R3 1
  LOADK R5 K12 ["studio"]
  LOADK R6 K13 ["VisualizationModes"]
  MOVE R7 R0
  MOVE R8 R2
  NAMECALL R3 R3 K14 ["SendEventDeferred"]
  CALL R3 5 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADK R1 K0 ["PluginOpen"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  LOADK R3 K0 ["VisualizationModeToggled"]
  DUPTABLE R4 K5 [{"actionSource", "visualizationMode", "visualizationModeCategory", "visualizationModeEnabled"}]
  GETTABLEKS R5 R1 K1 ["actionSource"]
  SETTABLEKS R5 R4 K1 ["actionSource"]
  GETTABLEKS R5 R1 K2 ["visualizationMode"]
  SETTABLEKS R5 R4 K2 ["visualizationMode"]
  GETTABLEKS R5 R1 K3 ["visualizationModeCategory"]
  SETTABLEKS R5 R4 K3 ["visualizationModeCategory"]
  GETTABLEKS R5 R1 K6 ["isEnabled"]
  SETTABLEKS R5 R4 K4 ["visualizationModeEnabled"]
  CALL R2 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  LOADK R3 K0 ["VisualizationModeEnabledDuration"]
  DUPTABLE R4 K4 [{"visualizationMode", "visualizationModeCategory", "durationSeconds"}]
  GETTABLEKS R5 R1 K1 ["visualizationMode"]
  SETTABLEKS R5 R4 K1 ["visualizationMode"]
  GETTABLEKS R5 R1 K2 ["visualizationModeCategory"]
  SETTABLEKS R5 R4 K2 ["visualizationModeCategory"]
  GETTABLEKS R5 R1 K3 ["durationSeconds"]
  SETTABLEKS R5 R4 K3 ["durationSeconds"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  DUPTABLE R2 K3 [{"openPlugin", "visualizationModeToggled", "visualizationModeEnabledDuration"}]
  NEWCLOSURE R3 P1
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K0 ["openPlugin"]
  NEWCLOSURE R3 P2
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K1 ["visualizationModeToggled"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R1
  SETTABLEKS R3 R2 K2 ["visualizationModeEnabledDuration"]
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["VisualizationModes"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [game]
  LOADK R3 K6 ["StudioService"]
  NAMECALL R1 R1 K7 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R0 K12 ["Src"]
  GETTABLEKS R4 R5 K13 ["Types"]
  CALL R3 1 1
  DUPCLOSURE R4 K14 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R4 1
