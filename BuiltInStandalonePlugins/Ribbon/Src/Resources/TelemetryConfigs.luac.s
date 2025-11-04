MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Ribbon"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["TestLoader"]
  CALL R1 1 1
  GETIMPORT R2 K9 [game]
  LOADK R4 K10 ["RibbonDefinitionEventThrottleHundredthsPercent"]
  LOADN R5 16
  NAMECALL R2 R2 K11 ["DefineFastInt"]
  CALL R2 3 1
  NEWTABLE R3 8 0
  GETIMPORT R4 K14 [table.freeze]
  DUPTABLE R5 K16 [{"customFields"}]
  DUPTABLE R6 K18 [{"isFtf"}]
  GETTABLEKS R7 R1 K19 ["isFTF"]
  CALL R7 0 1
  SETTABLEKS R7 R6 K17 ["isFtf"]
  SETTABLEKS R6 R5 K15 ["customFields"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K20 ["DEFAULT_METADATA"]
  GETIMPORT R4 K14 [table.freeze]
  DUPTABLE R5 K26 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
  LOADK R6 K27 ["RibbonDefinition"]
  SETTABLEKS R6 R5 K21 ["eventName"]
  NEWTABLE R6 0 1
  LOADK R7 K28 ["EventIngest"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K22 ["backends"]
  SETTABLEKS R2 R5 K23 ["throttlingPercentage"]
  NEWTABLE R6 0 3
  LOADN R7 233
  LOADN R8 10
  LOADN R9 16
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K24 ["lastUpdated"]
  LOADK R6 K29 ["Event for full ribbon definitions, reported on plugin unload"]
  SETTABLEKS R6 R5 K25 ["description"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K30 ["RIBBON_DEFINITION"]
  GETIMPORT R4 K14 [table.freeze]
  DUPTABLE R5 K31 [{"eventName", "backends", "lastUpdated", "description"}]
  LOADK R6 K32 ["UseControlsTimeToFetchMs"]
  SETTABLEKS R6 R5 K21 ["eventName"]
  NEWTABLE R6 0 1
  LOADK R7 K33 ["RobloxTelemetryStat"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K22 ["backends"]
  NEWTABLE R6 0 3
  LOADN R7 233
  LOADN R8 10
  LOADN R9 15
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K24 ["lastUpdated"]
  LOADK R6 K34 ["Stat for time taken to fetch all items in useControls, in milliseconds"]
  SETTABLEKS R6 R5 K25 ["description"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K35 ["USE_CONTROLS_TIME_TO_FETCH_MS"]
  GETIMPORT R4 K14 [table.freeze]
  DUPTABLE R5 K31 [{"eventName", "backends", "lastUpdated", "description"}]
  LOADK R6 K36 ["UseControlsNumItems"]
  SETTABLEKS R6 R5 K21 ["eventName"]
  NEWTABLE R6 0 1
  LOADK R7 K33 ["RobloxTelemetryStat"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K22 ["backends"]
  NEWTABLE R6 0 3
  LOADN R7 233
  LOADN R8 10
  LOADN R9 15
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K24 ["lastUpdated"]
  LOADK R6 K37 ["Stat for number of items fetched in useControls"]
  SETTABLEKS R6 R5 K25 ["description"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K38 ["USE_CONTROLS_NUM_ITEMS"]
  GETIMPORT R4 K14 [table.freeze]
  DUPTABLE R5 K31 [{"eventName", "backends", "lastUpdated", "description"}]
  LOADK R6 K39 ["UseControlsTimePerItemFetchedMs"]
  SETTABLEKS R6 R5 K21 ["eventName"]
  NEWTABLE R6 0 1
  LOADK R7 K33 ["RobloxTelemetryStat"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K22 ["backends"]
  NEWTABLE R6 0 3
  LOADN R7 233
  LOADN R8 10
  LOADN R9 15
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K24 ["lastUpdated"]
  LOADK R6 K40 ["Stat for time taken to fetch each item in useControls, in milliseconds"]
  SETTABLEKS R6 R5 K25 ["description"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K41 ["USE_CONTROLS_TIME_PER_ITEM_FETCHED_MS"]
  GETIMPORT R4 K14 [table.freeze]
  MOVE R5 R3
  CALL R4 1 -1
  RETURN R4 -1
