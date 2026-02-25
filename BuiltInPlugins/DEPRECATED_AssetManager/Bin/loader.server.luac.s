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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["BulkImportStarted"]
        3 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["BulkImportFinished"]
        3 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AssetImported"]
        3 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["GameNameUpdated"]
        3 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["AssetImportedSignal"]
        3 RETURN                           R0 1

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ImportSessionStarted"]
        3 RETURN                           R0 1

PROTO_12:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["ImportSessionFinished"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ImprovePluginSpeed_AssetManager"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K1 [game]
       11 LOADK                            R2 K4 ["EnableAssetManager"]
       12 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       14 CALL                             R0 2 1
       15 JUMPIFNOT                        R0 ; [+8]
       16 GETIMPORT                        R0 K1 [game]
       18 LOADK                            R2 K5 ["AssetManagerRibbonBar"]
       19 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       21 CALL                             R0 2 1
       22 JUMPIFNOT                        R0 ; [+1]
       23 RETURN                           R0 0
       24 GETIMPORT                        R0 K7 [require]
       26 GETIMPORT                        R3 K9 [script]
       28 GETTABLEKS                       R2 R3 K10 ["Parent"]
       30 GETTABLEKS                       R1 R2 K11 ["defineLuaFlags"]
       32 CALL                             R0 1 0
       33 GETIMPORT                        R0 K1 [game]
       35 LOADK                            R2 K12 ["EnableAssetManagerSortButton"]
       36 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
       38 CALL                             R0 2 1
       39 GETIMPORT                        R3 K9 [script]
       41 GETTABLEKS                       R2 R3 K10 ["Parent"]
       43 GETTABLEKS                       R1 R2 K10 ["Parent"]
       45 GETIMPORT                        R2 K7 [require]
       47 GETTABLEKS                       R4 R1 K13 ["Packages"]
       49 GETTABLEKS                       R3 R4 K14 ["PluginLoader"]
       51 CALL                             R2 1 1
       52 GETTABLEKS                       R3 R2 K15 ["PluginLoaderBuilder"]
       54 GETIMPORT                        R4 K1 [game]
       56 LOADK                            R6 K16 ["AssetManagerService"]
       57 NAMECALL                         R4 R4 K17 ["GetService"]
       59 CALL                             R4 2 1
       60 GETIMPORT                        R5 K1 [game]
       62 LOADK                            R7 K18 ["BulkImportService"]
       63 NAMECALL                         R5 R5 K17 ["GetService"]
       65 CALL                             R5 2 1
       66 GETIMPORT                        R6 K1 [game]
       68 LOADK                            R8 K19 ["StudioPublishService"]
       69 NAMECALL                         R6 R6 K17 ["GetService"]
       71 CALL                             R6 2 1
       72 GETTABLEKS                       R9 R1 K20 ["Src"]
       74 GETTABLEKS                       R8 R9 K21 ["Resources"]
       76 GETTABLEKS                       R7 R8 K22 ["SourceStrings"]
       78 GETTABLEKS                       R10 R1 K20 ["Src"]
       80 GETTABLEKS                       R9 R10 K21 ["Resources"]
       82 GETTABLEKS                       R8 R9 K23 ["LocalizedStrings"]
       84 DUPTABLE                         R9 K34 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
       85 GETIMPORT                        R10 K35 [plugin]
       87 SETTABLEKS                       R10 R9 K24 ["plugin"]
       89 LOADK                            R10 K36 ["AssetManager"]
       90 SETTABLEKS                       R10 R9 K25 ["pluginName"]
       92 SETTABLEKS                       R8 R9 K26 ["translationResourceTable"]
       94 SETTABLEKS                       R7 R9 K27 ["fallbackResourceTable"]
       96 LOADNIL                          R10
       97 SETTABLEKS                       R10 R9 K28 ["overrideLocaleId"]
       99 LOADNIL                          R10
      100 SETTABLEKS                       R10 R9 K29 ["localizationNamespace"]
      102 DUPCLOSURE                       R10 K37 [PROTO_0]
      103 SETTABLEKS                       R10 R9 K30 ["getToolbarName"]
      105 DUPTABLE                         R10 K43 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
      106 DUPCLOSURE                       R11 K44 [PROTO_1]
      107 SETTABLEKS                       R11 R10 K38 ["getName"]
      109 DUPCLOSURE                       R11 K45 [PROTO_2]
      110 SETTABLEKS                       R11 R10 K39 ["getDescription"]
      112 LOADK                            R11 K46 ["rbxlocaltheme://AssetManager"]
      113 SETTABLEKS                       R11 R10 K40 ["icon"]
      115 DUPCLOSURE                       R11 K47 [PROTO_3]
      116 SETTABLEKS                       R11 R10 K41 ["text"]
      118 LOADB                            R11 1
      119 SETTABLEKS                       R11 R10 K42 ["clickableWhenViewportHidden"]
      121 SETTABLEKS                       R10 R9 K31 ["buttonInfo"]
      123 DUPTABLE                         R10 K53 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
      124 LOADK                            R11 K54 ["AssetManager_PluginGui"]
      125 SETTABLEKS                       R11 R10 K48 ["id"]
      127 GETIMPORT                        R11 K57 [DockWidgetPluginGuiInfo.new]
      129 GETIMPORT                        R12 K61 [Enum.InitialDockState.Left]
      131 LOADB                            R13 0
      132 LOADB                            R14 0
      133 JUMPIFNOT                        R0 ; [+2]
      134 LOADN                            R15 94
      135 JUMP                             ; [+1]
      136 LOADN                            R15 44
      137 LOADN                            R16 88
      138 JUMPIFNOT                        R0 ; [+2]
      139 LOADN                            R17 94
      140 JUMP                             ; [+1]
      141 LOADN                            R17 14
      142 LOADN                            R18 0
      143 CALL                             R11 7 1
      144 SETTABLEKS                       R11 R10 K49 ["dockWidgetPluginGuiInfo"]
      146 DUPCLOSURE                       R11 K62 [PROTO_4]
      147 SETTABLEKS                       R11 R10 K50 ["getDockTitle"]
      149 DUPCLOSURE                       R11 K63 [PROTO_5]
      150 SETTABLEKS                       R11 R10 K51 ["name"]
      152 GETIMPORT                        R11 K66 [Enum.ZIndexBehavior.Sibling]
      154 SETTABLEKS                       R11 R10 K52 ["zIndexBehavior"]
      156 SETTABLEKS                       R10 R9 K32 ["dockWidgetInfo"]
      158 NEWTABLE                         R10 8 0
      160 DUPCLOSURE                       R11 K67 [PROTO_6]
      161 CAPTURE                          VAL R5
      162 SETTABLEKS                       R11 R10 K68 ["BulkImportService.BulkImportStarted"]
      164 DUPCLOSURE                       R11 K69 [PROTO_7]
      165 CAPTURE                          VAL R5
      166 SETTABLEKS                       R11 R10 K70 ["BulkImportService.BulkImportFinished"]
      168 DUPCLOSURE                       R11 K71 [PROTO_8]
      169 CAPTURE                          VAL R5
      170 SETTABLEKS                       R11 R10 K72 ["BulkImportService.AssetImported"]
      172 DUPCLOSURE                       R11 K73 [PROTO_9]
      173 CAPTURE                          VAL R6
      174 SETTABLEKS                       R11 R10 K74 ["StudioPublishService.GameNameUpdated"]
      176 DUPCLOSURE                       R11 K75 [PROTO_10]
      177 CAPTURE                          VAL R4
      178 SETTABLEKS                       R11 R10 K76 ["AssetManagerService.AssetImportedSignal"]
      180 DUPCLOSURE                       R11 K77 [PROTO_11]
      181 CAPTURE                          VAL R4
      182 SETTABLEKS                       R11 R10 K78 ["AssetManagerService.ImportSessionStarted"]
      184 DUPCLOSURE                       R11 K79 [PROTO_12]
      185 CAPTURE                          VAL R4
      186 SETTABLEKS                       R11 R10 K80 ["AssetManagerService.ImportSessionFinished"]
      188 SETTABLEKS                       R10 R9 K33 ["extraTriggers"]
      190 GETTABLEKS                       R10 R3 K81 ["build"]
      192 MOVE                             R11 R9
      193 CALL                             R10 1 1
      194 GETTABLEKS                       R11 R10 K82 ["pluginLoader"]
      196 NAMECALL                         R11 R11 K83 ["waitForUserInteraction"]
      198 CALL                             R11 1 1
      199 JUMPIF                           R11 ; [+1]
      200 RETURN                           R0 0
      201 GETIMPORT                        R12 K7 [require]
      203 GETIMPORT                        R15 K9 [script]
      205 GETTABLEKS                       R14 R15 K10 ["Parent"]
      207 GETTABLEKS                       R13 R14 K84 ["main"]
      209 CALL                             R12 1 1
      210 MOVE                             R13 R12
      211 GETIMPORT                        R14 K35 [plugin]
      213 MOVE                             R15 R10
      214 CALL                             R13 2 0
      215 RETURN                           R0 0
