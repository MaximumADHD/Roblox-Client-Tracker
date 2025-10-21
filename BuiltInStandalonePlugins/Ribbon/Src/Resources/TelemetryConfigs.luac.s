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
  NEWTABLE R2 4 0
  GETIMPORT R3 K10 [table.freeze]
  DUPTABLE R4 K12 [{"customFields"}]
  DUPTABLE R5 K14 [{"isFtf"}]
  GETTABLEKS R6 R1 K15 ["isFTF"]
  CALL R6 0 1
  SETTABLEKS R6 R5 K13 ["isFtf"]
  SETTABLEKS R5 R4 K11 ["customFields"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K16 ["DEFAULT_METADATA"]
  GETIMPORT R3 K10 [table.freeze]
  DUPTABLE R4 K21 [{"eventName", "backends", "lastUpdated", "description"}]
  LOADK R5 K22 ["UseControlsTimeToFetchMs"]
  SETTABLEKS R5 R4 K17 ["eventName"]
  NEWTABLE R5 0 1
  LOADK R6 K23 ["RobloxTelemetryStat"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K18 ["backends"]
  NEWTABLE R5 0 3
  LOADN R6 233
  LOADN R7 10
  LOADN R8 15
  SETLIST R5 R6 3 [1]
  SETTABLEKS R5 R4 K19 ["lastUpdated"]
  LOADK R5 K24 ["Stat for time taken to fetch all items in useControls, in milliseconds"]
  SETTABLEKS R5 R4 K20 ["description"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K25 ["USE_CONTROLS_TIME_TO_FETCH_MS"]
  GETIMPORT R3 K10 [table.freeze]
  DUPTABLE R4 K21 [{"eventName", "backends", "lastUpdated", "description"}]
  LOADK R5 K26 ["UseControlsNumItems"]
  SETTABLEKS R5 R4 K17 ["eventName"]
  NEWTABLE R5 0 1
  LOADK R6 K23 ["RobloxTelemetryStat"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K18 ["backends"]
  NEWTABLE R5 0 3
  LOADN R6 233
  LOADN R7 10
  LOADN R8 15
  SETLIST R5 R6 3 [1]
  SETTABLEKS R5 R4 K19 ["lastUpdated"]
  LOADK R5 K27 ["Stat for number of items fetched in useControls"]
  SETTABLEKS R5 R4 K20 ["description"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K28 ["USE_CONTROLS_NUM_ITEMS"]
  GETIMPORT R3 K10 [table.freeze]
  DUPTABLE R4 K21 [{"eventName", "backends", "lastUpdated", "description"}]
  LOADK R5 K29 ["UseControlsTimePerItemFetchedMs"]
  SETTABLEKS R5 R4 K17 ["eventName"]
  NEWTABLE R5 0 1
  LOADK R6 K23 ["RobloxTelemetryStat"]
  SETLIST R5 R6 1 [1]
  SETTABLEKS R5 R4 K18 ["backends"]
  NEWTABLE R5 0 3
  LOADN R6 233
  LOADN R7 10
  LOADN R8 15
  SETLIST R5 R6 3 [1]
  SETTABLEKS R5 R4 K19 ["lastUpdated"]
  LOADK R5 K30 ["Stat for time taken to fetch each item in useControls, in milliseconds"]
  SETTABLEKS R5 R4 K20 ["description"]
  CALL R3 1 1
  SETTABLEKS R3 R2 K31 ["USE_CONTROLS_TIME_PER_ITEM_FETCHED_MS"]
  GETIMPORT R3 K10 [table.freeze]
  MOVE R4 R2
  CALL R3 1 -1
  RETURN R3 -1
