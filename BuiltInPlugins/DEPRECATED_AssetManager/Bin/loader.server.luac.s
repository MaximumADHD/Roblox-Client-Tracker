PROTO_0:
        0 LOADK                            R0 K0 ["assetManagerToolbar"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["assetManagerToolButton"]
        1 RETURN                           R0 1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Main"]
        4 LOADK                            R7 K1 ["Tooltip"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Main"]
        4 LOADK                            R7 K1 ["ToolbarButton"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Main"]
        4 LOADK                            R7 K1 ["Title"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Meta"]
        4 LOADK                            R7 K1 ["PluginName"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BulkImportStarted"]
        3 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["BulkImportFinished"]
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetImported"]
        3 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["GameNameUpdated"]
        3 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["AssetImportedSignal"]
        3 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ImportSessionStarted"]
        3 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ImportSessionFinished"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["EnableAssetManager"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIFNOT                        R0 ; [+8]
        8 GETIMPORT                        R0 K1 [game]
       10 LOADK                            R2 K4 ["AssetManagerRibbonBar"]
       11 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       13 CALL                             R0 2 1
       14 JUMPIFNOT                        R0 ; [+1]
       15 RETURN                           R0 0
       16 GETIMPORT                        R0 K6 [require]
       18 GETIMPORT                        R1 K8 [script]
       20 GETTABLEKS                       R1 R1 K9 ["Parent"]
       22 GETTABLEKS                       R1 R1 K10 ["defineLuaFlags"]
       24 CALL                             R0 1 0
       25 GETIMPORT                        R0 K1 [game]
       27 LOADK                            R2 K11 ["EnableAssetManagerSortButton"]
       28 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       30 CALL                             R0 2 1
       31 GETIMPORT                        R1 K8 [script]
       33 GETTABLEKS                       R1 R1 K9 ["Parent"]
       35 GETTABLEKS                       R1 R1 K9 ["Parent"]
       37 GETIMPORT                        R2 K6 [require]
       39 GETTABLEKS                       R3 R1 K12 ["Packages"]
       41 GETTABLEKS                       R3 R3 K13 ["PluginLoader"]
       43 CALL                             R2 1 1
       44 GETTABLEKS                       R3 R2 K14 ["PluginLoaderBuilder"]
       46 GETIMPORT                        R4 K1 [game]
       48 LOADK                            R6 K15 ["AssetManagerService"]
       49 NAMECALL                         R4 R4 K16 ["GetService"]
       51 CALL                             R4 2 1
       52 GETIMPORT                        R5 K1 [game]
       54 LOADK                            R7 K17 ["BulkImportService"]
       55 NAMECALL                         R5 R5 K16 ["GetService"]
       57 CALL                             R5 2 1
       58 GETIMPORT                        R6 K1 [game]
       60 LOADK                            R8 K18 ["StudioPublishService"]
       61 NAMECALL                         R6 R6 K16 ["GetService"]
       63 CALL                             R6 2 1
       64 GETTABLEKS                       R7 R1 K19 ["Src"]
       66 GETTABLEKS                       R7 R7 K20 ["Resources"]
       68 GETTABLEKS                       R7 R7 K21 ["SourceStrings"]
       70 GETTABLEKS                       R8 R1 K19 ["Src"]
       72 GETTABLEKS                       R8 R8 K20 ["Resources"]
       74 GETTABLEKS                       R8 R8 K22 ["LocalizedStrings"]
       76 DUPTABLE                         R9 K35 [{["plugin"], ["pluginName"] = "AssetManager", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"], ["extraTriggers"]}]
       77 GETIMPORT                        R10 K36 [plugin]
       79 SETTABLEKS                       R10 R9 K23 ["plugin"]
       81 SETTABLEKS                       R8 R9 K26 ["translationResourceTable"]
       83 SETTABLEKS                       R7 R9 K27 ["fallbackResourceTable"]
       85 DUPCLOSURE                       R10 K37 [PROTO_0]
       86 SETTABLEKS                       R10 R9 K31 ["getToolbarName"]
       88 DUPTABLE                         R10 K45 [{["getName"], ["getDescription"], ["icon"] = "rbxlocaltheme://AssetManager", ["text"], ["clickableWhenViewportHidden"] = True}]
       89 DUPCLOSURE                       R11 K46 [PROTO_1]
       90 SETTABLEKS                       R11 R10 K38 ["getName"]
       92 DUPCLOSURE                       R11 K47 [PROTO_2]
       93 SETTABLEKS                       R11 R10 K39 ["getDescription"]
       95 DUPCLOSURE                       R11 K48 [PROTO_3]
       96 SETTABLEKS                       R11 R10 K42 ["text"]
       98 SETTABLEKS                       R10 R9 K32 ["buttonInfo"]
      100 DUPTABLE                         R10 K55 [{["id"] = "AssetManager_PluginGui", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["name"], ["zIndexBehavior"]}]
      101 GETIMPORT                        R11 K58 [DockWidgetPluginGuiInfo.new]
      103 GETIMPORT                        R12 K62 [Enum.InitialDockState.Left]
      105 LOADB                            R13 0
      106 LOADB                            R14 0
      107 JUMPIFNOT                        R0 ; [+2]
      108 LOADN                            R15 350
      109 JUMP                             ; [+1]
      110 LOADN                            R15 300
      111 LOADN                            R16 600
      112 JUMPIFNOT                        R0 ; [+2]
      113 LOADN                            R17 350
      114 JUMP                             ; [+1]
      115 LOADN                            R17 270
      116 LOADN                            R18 256
      117 CALL                             R11 7 1
      118 SETTABLEKS                       R11 R10 K51 ["dockWidgetPluginGuiInfo"]
      120 DUPCLOSURE                       R11 K63 [PROTO_4]
      121 SETTABLEKS                       R11 R10 K52 ["getDockTitle"]
      123 DUPCLOSURE                       R11 K64 [PROTO_5]
      124 SETTABLEKS                       R11 R10 K53 ["name"]
      126 GETIMPORT                        R11 K67 [Enum.ZIndexBehavior.Sibling]
      128 SETTABLEKS                       R11 R10 K54 ["zIndexBehavior"]
      130 SETTABLEKS                       R10 R9 K33 ["dockWidgetInfo"]
      132 NEWTABLE                         R10 8 0
      134 DUPCLOSURE                       R11 K68 [PROTO_6]
      135 CAPTURE                          VAL R5
      136 SETTABLEKS                       R11 R10 K69 ["BulkImportService.BulkImportStarted"]
      138 DUPCLOSURE                       R11 K70 [PROTO_7]
      139 CAPTURE                          VAL R5
      140 SETTABLEKS                       R11 R10 K71 ["BulkImportService.BulkImportFinished"]
      142 DUPCLOSURE                       R11 K72 [PROTO_8]
      143 CAPTURE                          VAL R5
      144 SETTABLEKS                       R11 R10 K73 ["BulkImportService.AssetImported"]
      146 DUPCLOSURE                       R11 K74 [PROTO_9]
      147 CAPTURE                          VAL R6
      148 SETTABLEKS                       R11 R10 K75 ["StudioPublishService.GameNameUpdated"]
      150 DUPCLOSURE                       R11 K76 [PROTO_10]
      151 CAPTURE                          VAL R4
      152 SETTABLEKS                       R11 R10 K77 ["AssetManagerService.AssetImportedSignal"]
      154 DUPCLOSURE                       R11 K78 [PROTO_11]
      155 CAPTURE                          VAL R4
      156 SETTABLEKS                       R11 R10 K79 ["AssetManagerService.ImportSessionStarted"]
      158 DUPCLOSURE                       R11 K80 [PROTO_12]
      159 CAPTURE                          VAL R4
      160 SETTABLEKS                       R11 R10 K81 ["AssetManagerService.ImportSessionFinished"]
      162 SETTABLEKS                       R10 R9 K34 ["extraTriggers"]
      164 GETTABLEKS                       R10 R3 K82 ["build"]
      166 MOVE                             R11 R9
      167 CALL                             R10 1 1
      168 GETTABLEKS                       R11 R10 K83 ["pluginLoader"]
      170 NAMECALL                         R11 R11 K84 ["waitForUserInteraction"]
      172 CALL                             R11 1 1
      173 JUMPIF                           R11 ; [+1]
      174 RETURN                           R0 0
      175 GETIMPORT                        R12 K6 [require]
      177 GETIMPORT                        R13 K8 [script]
      179 GETTABLEKS                       R13 R13 K9 ["Parent"]
      181 GETTABLEKS                       R13 R13 K85 ["main"]
      183 CALL                             R12 1 1
      184 MOVE                             R13 R12
      185 GETIMPORT                        R14 K36 [plugin]
      187 MOVE                             R15 R10
      188 CALL                             R13 2 0
      189 RETURN                           R0 0
