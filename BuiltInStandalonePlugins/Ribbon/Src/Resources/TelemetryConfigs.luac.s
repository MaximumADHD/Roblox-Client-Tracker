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
       17 LOADN                            R5 16
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
       39 DUPTABLE                         R5 K26 [{"eventName", "backends", "throttlingPercentage", "lastUpdated", "description"}]
       40 LOADK                            R6 K27 ["RibbonDefinition"]
       41 SETTABLEKS                       R6 R5 K21 ["eventName"]
       43 NEWTABLE                         R6 0 1
       45 LOADK                            R7 K28 ["EventIngest"]
       46 SETLIST                          R6 R7 1 [1]
       48 SETTABLEKS                       R6 R5 K22 ["backends"]
       50 SETTABLEKS                       R2 R5 K23 ["throttlingPercentage"]
       52 NEWTABLE                         R6 0 3
       54 LOADN                            R7 233
       55 LOADN                            R8 10
       56 LOADN                            R9 16
       57 SETLIST                          R6 R7 3 [1]
       59 SETTABLEKS                       R6 R5 K24 ["lastUpdated"]
       61 LOADK                            R6 K29 ["Event for full ribbon definitions, reported on plugin unload"]
       62 SETTABLEKS                       R6 R5 K25 ["description"]
       64 CALL                             R4 1 1
       65 SETTABLEKS                       R4 R3 K30 ["RIBBON_DEFINITION"]
       67 GETIMPORT                        R4 K14 [table.freeze]
       69 DUPTABLE                         R5 K31 [{"eventName", "backends", "lastUpdated", "description"}]
       70 LOADK                            R6 K32 ["UseControlsTimeToFetchMs"]
       71 SETTABLEKS                       R6 R5 K21 ["eventName"]
       73 NEWTABLE                         R6 0 1
       75 LOADK                            R7 K33 ["RobloxTelemetryStat"]
       76 SETLIST                          R6 R7 1 [1]
       78 SETTABLEKS                       R6 R5 K22 ["backends"]
       80 NEWTABLE                         R6 0 3
       82 LOADN                            R7 233
       83 LOADN                            R8 10
       84 LOADN                            R9 15
       85 SETLIST                          R6 R7 3 [1]
       87 SETTABLEKS                       R6 R5 K24 ["lastUpdated"]
       89 LOADK                            R6 K34 ["Stat for time taken to fetch all items in useControls, in milliseconds"]
       90 SETTABLEKS                       R6 R5 K25 ["description"]
       92 CALL                             R4 1 1
       93 SETTABLEKS                       R4 R3 K35 ["USE_CONTROLS_TIME_TO_FETCH_MS"]
       95 GETIMPORT                        R4 K14 [table.freeze]
       97 DUPTABLE                         R5 K31 [{"eventName", "backends", "lastUpdated", "description"}]
       98 LOADK                            R6 K36 ["UseControlsNumItems"]
       99 SETTABLEKS                       R6 R5 K21 ["eventName"]
      101 NEWTABLE                         R6 0 1
      103 LOADK                            R7 K33 ["RobloxTelemetryStat"]
      104 SETLIST                          R6 R7 1 [1]
      106 SETTABLEKS                       R6 R5 K22 ["backends"]
      108 NEWTABLE                         R6 0 3
      110 LOADN                            R7 233
      111 LOADN                            R8 10
      112 LOADN                            R9 15
      113 SETLIST                          R6 R7 3 [1]
      115 SETTABLEKS                       R6 R5 K24 ["lastUpdated"]
      117 LOADK                            R6 K37 ["Stat for number of items fetched in useControls"]
      118 SETTABLEKS                       R6 R5 K25 ["description"]
      120 CALL                             R4 1 1
      121 SETTABLEKS                       R4 R3 K38 ["USE_CONTROLS_NUM_ITEMS"]
      123 GETIMPORT                        R4 K14 [table.freeze]
      125 DUPTABLE                         R5 K31 [{"eventName", "backends", "lastUpdated", "description"}]
      126 LOADK                            R6 K39 ["UseControlsTimePerItemFetchedMs"]
      127 SETTABLEKS                       R6 R5 K21 ["eventName"]
      129 NEWTABLE                         R6 0 1
      131 LOADK                            R7 K33 ["RobloxTelemetryStat"]
      132 SETLIST                          R6 R7 1 [1]
      134 SETTABLEKS                       R6 R5 K22 ["backends"]
      136 NEWTABLE                         R6 0 3
      138 LOADN                            R7 233
      139 LOADN                            R8 10
      140 LOADN                            R9 15
      141 SETLIST                          R6 R7 3 [1]
      143 SETTABLEKS                       R6 R5 K24 ["lastUpdated"]
      145 LOADK                            R6 K40 ["Stat for time taken to fetch each item in useControls, in milliseconds"]
      146 SETTABLEKS                       R6 R5 K25 ["description"]
      148 CALL                             R4 1 1
      149 SETTABLEKS                       R4 R3 K41 ["USE_CONTROLS_TIME_PER_ITEM_FETCHED_MS"]
      151 GETIMPORT                        R4 K14 [table.freeze]
      153 MOVE                             R5 R3
      154 CALL                             R4 1 -1
      155 RETURN                           R4 -1
