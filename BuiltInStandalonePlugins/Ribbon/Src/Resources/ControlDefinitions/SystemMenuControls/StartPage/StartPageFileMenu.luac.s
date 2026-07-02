MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["deepFreeze"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 NEWTABLE                         R3 0 1
       25 DUPTABLE                         R4 K13 [{["Type"] = "Column", ["Children"]}]
       26 NEWTABLE                         R5 0 14
       28 DUPTABLE                         R6 K20 [{["Id"] = "FileNew", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       29 DUPTABLE                         R7 K29 [{["PluginId"] = "PlaceManagement", ["DataModel"] = "Standalone", ["ItemId"] = "New", ["Category"] = "Actions"}]
       30 SETTABLEKS                       R7 R6 K17 ["Action"]
       32 DUPTABLE                         R7 K31 [{["Id"] = "FileOpen", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       33 DUPTABLE                         R8 K33 [{["PluginId"] = "PlaceManagement", ["DataModel"] = "Standalone", ["ItemId"] = "OpenFromFile", ["Category"] = "Actions"}]
       34 SETTABLEKS                       R8 R7 K17 ["Action"]
       36 DUPTABLE                         R8 K35 [{["Id"] = "FileOpenRecent", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       37 DUPTABLE                         R9 K37 [{["PluginId"] = "PlaceManagement", ["DataModel"] = "Standalone", ["ItemId"] = "OpenFromRoblox", ["Category"] = "Actions"}]
       38 SETTABLEKS                       R9 R8 K17 ["Action"]
       40 DUPTABLE                         R9 K39 [{["Type"] = "Separator"}]
       41 DUPTABLE                         R10 K41 [{["Id"] = "Settings", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       42 DUPTABLE                         R11 K43 [{["PluginId"] = "AppConfiguration", ["DataModel"] = "Standalone", ["ItemId"] = "Settings", ["Category"] = "Actions"}]
       43 SETTABLEKS                       R11 R10 K17 ["Action"]
       45 DUPTABLE                         R11 K45 [{["Id"] = "BetaFeatures", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       46 DUPTABLE                         R12 K46 [{["PluginId"] = "AppConfiguration", ["DataModel"] = "Standalone", ["ItemId"] = "BetaFeatures", ["Category"] = "Actions"}]
       47 SETTABLEKS                       R12 R11 K17 ["Action"]
       49 DUPTABLE                         R12 K50 [{["Id"] = "FlagEditor", ["Type"] = "Option", ["Action"], ["FastFlag"] = "DebugStudioAllowFlagEditor", ["TextOnly"] = True}]
       50 DUPTABLE                         R13 K52 [{["PluginId"] = "AppConfiguration", ["DataModel"] = "Standalone", ["ItemId"] = "INTERNAL_FlagEditor", ["Category"] = "Actions"}]
       51 SETTABLEKS                       R13 R12 K17 ["Action"]
       53 DUPTABLE                         R13 K54 [{["Id"] = "ShortcutHelp", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       54 DUPTABLE                         R14 K56 [{["PluginId"] = "AppConfiguration", ["DataModel"] = "Standalone", ["ItemId"] = "Shortcuts", ["Category"] = "Actions"}]
       55 SETTABLEKS                       R14 R13 K17 ["Action"]
       57 DUPTABLE                         R14 K39 [{["Type"] = "Separator"}]
       58 DUPTABLE                         R15 K58 [{["Id"] = "FileOpenAutoSaves", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       59 DUPTABLE                         R16 K60 [{["PluginId"] = "PlaceManagement", ["DataModel"] = "Standalone", ["ItemId"] = "OpenAutoSavesFolder", ["Category"] = "Actions"}]
       60 SETTABLEKS                       R16 R15 K17 ["Action"]
       62 DUPTABLE                         R16 K39 [{["Type"] = "Separator"}]
       63 DUPTABLE                         R17 K62 [{["Id"] = "AboutRoblox", ["Type"] = "Option", ["Action"], ["TextOnly"] = True}]
       64 DUPTABLE                         R18 K65 [{["PluginId"] = "Help", ["DataModel"] = "Standalone", ["ItemId"] = "Open/AboutStudio", ["Category"] = "Actions"}]
       65 SETTABLEKS                       R18 R17 K17 ["Action"]
       67 DUPTABLE                         R18 K39 [{["Type"] = "Separator"}]
       68 DUPTABLE                         R19 K68 [{["Id"] = "FileExit", ["Type"] = "Option", ["Action"], ["FastFlag"] = "DebugSquishMoveAppMenuEntriesMacOS", ["TextOnly"] = True}]
       69 DUPTABLE                         R20 K70 [{["PluginId"] = "Common", ["DataModel"] = "Standalone", ["ItemId"] = "FileExit", ["Category"] = "Actions"}]
       70 SETTABLEKS                       R20 R19 K17 ["Action"]
       72 SETLIST                          R5 R6 14 [1]
       74 SETTABLEKS                       R5 R4 K12 ["Children"]
       76 SETLIST                          R3 R4 1 [1]
       78 MOVE                             R4 R1
       79 MOVE                             R5 R3
       80 CALL                             R4 1 -1
       81 RETURN                           R4 -1
