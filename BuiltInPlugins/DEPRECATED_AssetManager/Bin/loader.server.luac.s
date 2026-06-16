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
       76 DUPTABLE                         R9 K33 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
       77 GETIMPORT                        R10 K34 [plugin]
       79 SETTABLEKS                       R10 R9 K23 ["plugin"]
       81 LOADK                            R10 K35 ["AssetManager"]
       82 SETTABLEKS                       R10 R9 K24 ["pluginName"]
       84 SETTABLEKS                       R8 R9 K25 ["translationResourceTable"]
       86 SETTABLEKS                       R7 R9 K26 ["fallbackResourceTable"]
       88 LOADNIL                          R10
       89 SETTABLEKS                       R10 R9 K27 ["overrideLocaleId"]
       91 LOADNIL                          R10
       92 SETTABLEKS                       R10 R9 K28 ["localizationNamespace"]
       94 DUPCLOSURE                       R10 K36 [PROTO_0]
       95 SETTABLEKS                       R10 R9 K29 ["getToolbarName"]
       97 DUPTABLE                         R10 K42 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
       98 DUPCLOSURE                       R11 K43 [PROTO_1]
       99 SETTABLEKS                       R11 R10 K37 ["getName"]
      101 DUPCLOSURE                       R11 K44 [PROTO_2]
      102 SETTABLEKS                       R11 R10 K38 ["getDescription"]
      104 LOADK                            R11 K45 ["rbxlocaltheme://AssetManager"]
      105 SETTABLEKS                       R11 R10 K39 ["icon"]
      107 DUPCLOSURE                       R11 K46 [PROTO_3]
      108 SETTABLEKS                       R11 R10 K40 ["text"]
      110 LOADB                            R11 1
      111 SETTABLEKS                       R11 R10 K41 ["clickableWhenViewportHidden"]
      113 SETTABLEKS                       R10 R9 K30 ["buttonInfo"]
      115 DUPTABLE                         R10 K52 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
      116 LOADK                            R11 K53 ["AssetManager_PluginGui"]
      117 SETTABLEKS                       R11 R10 K47 ["id"]
      119 GETIMPORT                        R11 K56 [DockWidgetPluginGuiInfo.new]
      121 GETIMPORT                        R12 K60 [Enum.InitialDockState.Left]
      123 LOADB                            R13 0
      124 LOADB                            R14 0
      125 JUMPIFNOT                        R0 ; [+2]
      126 LOADN                            R15 94
      127 JUMP                             ; [+1]
      128 LOADN                            R15 44
      129 LOADN                            R16 88
      130 JUMPIFNOT                        R0 ; [+2]
      131 LOADN                            R17 94
      132 JUMP                             ; [+1]
      133 LOADN                            R17 14
      134 LOADN                            R18 0
      135 CALL                             R11 7 1
      136 SETTABLEKS                       R11 R10 K48 ["dockWidgetPluginGuiInfo"]
      138 DUPCLOSURE                       R11 K61 [PROTO_4]
      139 SETTABLEKS                       R11 R10 K49 ["getDockTitle"]
      141 DUPCLOSURE                       R11 K62 [PROTO_5]
      142 SETTABLEKS                       R11 R10 K50 ["name"]
      144 GETIMPORT                        R11 K65 [Enum.ZIndexBehavior.Sibling]
      146 SETTABLEKS                       R11 R10 K51 ["zIndexBehavior"]
      148 SETTABLEKS                       R10 R9 K31 ["dockWidgetInfo"]
      150 NEWTABLE                         R10 8 0
      152 DUPCLOSURE                       R11 K66 [PROTO_6]
      153 CAPTURE                          VAL R5
      154 SETTABLEKS                       R11 R10 K67 ["BulkImportService.BulkImportStarted"]
      156 DUPCLOSURE                       R11 K68 [PROTO_7]
      157 CAPTURE                          VAL R5
      158 SETTABLEKS                       R11 R10 K69 ["BulkImportService.BulkImportFinished"]
      160 DUPCLOSURE                       R11 K70 [PROTO_8]
      161 CAPTURE                          VAL R5
      162 SETTABLEKS                       R11 R10 K71 ["BulkImportService.AssetImported"]
      164 DUPCLOSURE                       R11 K72 [PROTO_9]
      165 CAPTURE                          VAL R6
      166 SETTABLEKS                       R11 R10 K73 ["StudioPublishService.GameNameUpdated"]
      168 DUPCLOSURE                       R11 K74 [PROTO_10]
      169 CAPTURE                          VAL R4
      170 SETTABLEKS                       R11 R10 K75 ["AssetManagerService.AssetImportedSignal"]
      172 DUPCLOSURE                       R11 K76 [PROTO_11]
      173 CAPTURE                          VAL R4
      174 SETTABLEKS                       R11 R10 K77 ["AssetManagerService.ImportSessionStarted"]
      176 DUPCLOSURE                       R11 K78 [PROTO_12]
      177 CAPTURE                          VAL R4
      178 SETTABLEKS                       R11 R10 K79 ["AssetManagerService.ImportSessionFinished"]
      180 SETTABLEKS                       R10 R9 K32 ["extraTriggers"]
      182 GETTABLEKS                       R10 R3 K80 ["build"]
      184 MOVE                             R11 R9
      185 CALL                             R10 1 1
      186 GETTABLEKS                       R11 R10 K81 ["pluginLoader"]
      188 NAMECALL                         R11 R11 K82 ["waitForUserInteraction"]
      190 CALL                             R11 1 1
      191 JUMPIF                           R11 ; [+1]
      192 RETURN                           R0 0
      193 GETIMPORT                        R12 K6 [require]
      195 GETIMPORT                        R13 K8 [script]
      197 GETTABLEKS                       R13 R13 K9 ["Parent"]
      199 GETTABLEKS                       R13 R13 K83 ["main"]
      201 CALL                             R12 1 1
      202 MOVE                             R13 R12
      203 GETIMPORT                        R14 K34 [plugin]
      205 MOVE                             R15 R10
      206 CALL                             R13 2 0
      207 RETURN                           R0 0
