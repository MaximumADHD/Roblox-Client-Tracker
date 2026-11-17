MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["TestLoader"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K9 [game]
       16 LOADK                            R4 K10 ["RibbonDefinitionEventThrottleHundredthsPercent"]
       17 LOADN                            R5 10000
       18 NAMECALL                         R2 R2 K11 ["DefineFastInt"]
       20 CALL                             R2 3 1
       21 NEWTABLE                         R3 8 0
       23 GETIMPORT                        R4 K14 [table.freeze]
       25 DUPTABLE                         R5 K16 [{"customFields"}]
       26 DUPTABLE                         R6 K18 [{"isFtf"}]
       27 GETTABLEKS                       R7 R1 K19 ["isFTF"]
       29 CALL                             R7 0 1
       30 SETTABLEKS                       R7 R6 K17 ["isFtf"]
       32 SETTABLEKS                       R6 R5 K15 ["customFields"]
       34 CALL                             R4 1 1
       35 SETTABLEKS                       R4 R3 K20 ["DEFAULT_METADATA"]
       37 GETIMPORT                        R4 K14 [table.freeze]
       39 DUPTABLE                         R5 K28 [{["eventName"] = "RibbonDefinition", ["backends"], ["throttlingPercentage"], ["lastUpdated"], ["description"] = "Event for full ribbon definitions, reported on plugin unload"}]
       40 NEWTABLE                         R6 0 1
       42 LOADK                            R7 K29 ["EventIngest"]
       43 SETLIST                          R6 R7 1 [1]
       45 SETTABLEKS                       R6 R5 K23 ["backends"]
       47 SETTABLEKS                       R2 R5 K24 ["throttlingPercentage"]
       49 NEWTABLE                         R6 0 3
       51 LOADN                            R7 2025
       52 LOADN                            R8 10
       53 LOADN                            R9 16
       54 SETLIST                          R6 R7 3 [1]
       56 SETTABLEKS                       R6 R5 K25 ["lastUpdated"]
       58 CALL                             R4 1 1
       59 SETTABLEKS                       R4 R3 K30 ["RIBBON_DEFINITION"]
       61 GETIMPORT                        R4 K14 [table.freeze]
       63 DUPTABLE                         R5 K33 [{["eventName"] = "UseControlsTimeToFetchMs", ["backends"], ["lastUpdated"], ["description"] = "Stat for time taken to fetch all items in useControls, in milliseconds"}]
       64 NEWTABLE                         R6 0 1
       66 LOADK                            R7 K34 ["RobloxTelemetryStat"]
       67 SETLIST                          R6 R7 1 [1]
       69 SETTABLEKS                       R6 R5 K23 ["backends"]
       71 NEWTABLE                         R6 0 3
       73 LOADN                            R7 2025
       74 LOADN                            R8 10
       75 LOADN                            R9 15
       76 SETLIST                          R6 R7 3 [1]
       78 SETTABLEKS                       R6 R5 K25 ["lastUpdated"]
       80 CALL                             R4 1 1
       81 SETTABLEKS                       R4 R3 K35 ["USE_CONTROLS_TIME_TO_FETCH_MS"]
       83 GETIMPORT                        R4 K14 [table.freeze]
       85 DUPTABLE                         R5 K38 [{["eventName"] = "UseControlsNumItems", ["backends"], ["lastUpdated"], ["description"] = "Stat for number of items fetched in useControls"}]
       86 NEWTABLE                         R6 0 1
       88 LOADK                            R7 K34 ["RobloxTelemetryStat"]
       89 SETLIST                          R6 R7 1 [1]
       91 SETTABLEKS                       R6 R5 K23 ["backends"]
       93 NEWTABLE                         R6 0 3
       95 LOADN                            R7 2025
       96 LOADN                            R8 10
       97 LOADN                            R9 15
       98 SETLIST                          R6 R7 3 [1]
      100 SETTABLEKS                       R6 R5 K25 ["lastUpdated"]
      102 CALL                             R4 1 1
      103 SETTABLEKS                       R4 R3 K39 ["USE_CONTROLS_NUM_ITEMS"]
      105 GETIMPORT                        R4 K14 [table.freeze]
      107 DUPTABLE                         R5 K42 [{["eventName"] = "UseControlsTimePerItemFetchedMs", ["backends"], ["lastUpdated"], ["description"] = "Stat for time taken to fetch each item in useControls, in milliseconds"}]
      108 NEWTABLE                         R6 0 1
      110 LOADK                            R7 K34 ["RobloxTelemetryStat"]
      111 SETLIST                          R6 R7 1 [1]
      113 SETTABLEKS                       R6 R5 K23 ["backends"]
      115 NEWTABLE                         R6 0 3
      117 LOADN                            R7 2025
      118 LOADN                            R8 10
      119 LOADN                            R9 15
      120 SETLIST                          R6 R7 3 [1]
      122 SETTABLEKS                       R6 R5 K25 ["lastUpdated"]
      124 CALL                             R4 1 1
      125 SETTABLEKS                       R4 R3 K43 ["USE_CONTROLS_TIME_PER_ITEM_FETCHED_MS"]
      127 GETIMPORT                        R4 K14 [table.freeze]
      129 MOVE                             R5 R3
      130 CALL                             R4 1 -1
      131 RETURN                           R4 -1
