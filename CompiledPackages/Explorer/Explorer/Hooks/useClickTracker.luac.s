PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOTEQ R0 R1 [+2]
  RETURN R0 0
  GETUPVAL R1 0
  SETTABLEKS R0 R1 K0 ["current"]
  JUMPIFNOT R0 [+12]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["current"]
  JUMPIFNOTEQKNIL R1 [+8]
  GETUPVAL R1 1
  GETIMPORT R2 K3 [os.clock]
  CALL R2 0 1
  SETTABLEKS R2 R1 K0 ["current"]
  RETURN R0 0
  JUMPIF R0 [+4]
  GETUPVAL R1 1
  LOADNIL R2
  SETTABLEKS R2 R1 K0 ["current"]
  RETURN R0 0

PROTO_1:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseButton1]
  JUMPIFEQ R1 R2 [+8]
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K5 [Enum.UserInputType.MouseButton2]
  JUMPIFEQ R1 R2 [+2]
  RETURN R0 0
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K6 ["logCounter"]
  GETUPVAL R2 1
  CALL R1 1 0
  GETUPVAL R2 2
  GETTABLEKS R1 R2 K7 ["current"]
  JUMPIFNOTEQKNIL R1 [+2]
  RETURN R0 0
  GETIMPORT R3 K10 [os.clock]
  CALL R3 0 1
  SUB R2 R3 R1
  GETUPVAL R3 2
  LOADNIL R4
  SETTABLEKS R4 R3 K7 ["current"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K11 ["logStat"]
  DUPTABLE R4 K17 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
  LOADK R5 K18 ["LuaExplorerTimeToFirstClickAfterHovering"]
  SETTABLEKS R5 R4 K12 ["eventName"]
  NEWTABLE R5 0 1
  LOADK R6 K19 ["RobloxTelemetryStat"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K13 ["backends"]
  GETIMPORT R5 K21 [game]
  LOADK R7 K22 ["LuaExplorerTimeToFirstClickAfterHoveirngThrottlingHundredthsPercent"]
  LOADN R8 16
  NAMECALL R5 R5 K23 ["DefineFastInt"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K14 ["throttlingPercentage"]
  LOADK R5 K24 ["Time since hovering over the window before the user takes their first click or right-click."]
  SETTABLEKS R5 R4 K15 ["description"]
  LOADK R5 K25 ["2024-12-03"]
  SETTABLEKS R5 R4 K16 ["lastUpdated"]
  NEWTABLE R5 0 0
  MOVE R6 R2
  CALL R3 3 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["AnalyticsContext"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Context"]
  CALL R2 1 1
  DUPTABLE R3 K4 [{"current"}]
  LOADNIL R4
  SETTABLEKS R4 R3 K3 ["current"]
  DUPTABLE R4 K4 [{"current"}]
  LOADB R5 0
  SETTABLEKS R5 R4 K3 ["current"]
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["useEffect"]
  MOVE R6 R0
  NEWCLOSURE R7 P0
  CAPTURE VAL R4
  CAPTURE VAL R3
  NEWTABLE R8 0 0
  CALL R5 3 0
  GETUPVAL R5 4
  GETTABLEKS R6 R2 K6 ["inputBeganSignal"]
  NEWCLOSURE R7 P1
  CAPTURE VAL R1
  CAPTURE UPVAL U5
  CAPTURE VAL R3
  NEWTABLE R8 0 1
  GETTABLEKS R9 R1 K7 ["logCounter"]
  SETLIST R8 R9 1 [1]
  CALL R5 3 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["Analytics"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["Observable"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Parent"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["Contexts"]
  GETTABLEKS R5 R6 K13 ["WindowInputContext"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K14 ["Hooks"]
  GETTABLEKS R6 R7 K15 ["useEventConnection"]
  CALL R5 1 1
  DUPTABLE R6 K21 [{"eventName", "backends", "throttlingPercentage", "description", "lastUpdated"}]
  LOADK R7 K22 ["LuaExplorerClicked"]
  SETTABLEKS R7 R6 K16 ["eventName"]
  NEWTABLE R7 0 1
  LOADK R8 K23 ["RobloxTelemetryCounter"]
  SETLIST R7 R8 1 [1]
  SETTABLEKS R7 R6 K17 ["backends"]
  GETIMPORT R7 K25 [game]
  LOADK R9 K26 ["LuaExplorerClickedThrottlingHundredthsPercent"]
  LOADN R10 16
  NAMECALL R7 R7 K27 ["DefineFastInt"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K18 ["throttlingPercentage"]
  LOADK R7 K28 ["Fires when Explorer is clicked."]
  SETTABLEKS R7 R6 K19 ["description"]
  LOADK R7 K29 ["2024-11-22"]
  SETTABLEKS R7 R6 K20 ["lastUpdated"]
  DUPCLOSURE R7 K30 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  RETURN R7 1
