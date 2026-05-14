PROTO_0:
        0 LOADK                            R3 K0 ["Mesh Importer"]
        1 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["Import"]
        1 RETURN                           R3 1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_5:
        0 GETIMPORT                        R0 K1 [plugin]
        2 GETUPVAL                         R1 0
        3 GETTABLEKS                       R1 R1 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETIMPORT                        R0 K4 [require]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K5 ["Src"]
       12 GETTABLEKS                       R1 R1 K6 ["Controllers"]
       14 GETTABLEKS                       R1 R1 K7 ["Initialization"]
       16 CALL                             R0 1 1
       17 GETTABLEKS                       R1 R0 K8 ["new"]
       19 GETIMPORT                        R2 K1 [plugin]
       21 GETUPVAL                         R3 2
       22 CALL                             R1 2 1
       23 SETUPVAL                         R1 1
       24 GETUPVAL                         R1 1
       25 NAMECALL                         R1 R1 K9 ["createMainPlugin"]
       27 CALL                             R1 1 0
       28 GETUPVAL                         R1 3
       29 GETTABLEKS                       R1 R1 K10 ["enabled"]
       31 JUMPIFNOT                        R1 ; [+5]
       32 GETUPVAL                         R1 3
       33 GETTABLEKS                       R1 R1 K11 ["debug"]
       35 GETUPVAL                         R2 1
       36 CALL                             R1 1 0
       37 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["destroy"]
        5 CALL                             R0 1 0
        6 GETUPVAL                         R0 1
        7 JUMPIFNOT                        R0 ; [+4]
        8 GETUPVAL                         R0 1
        9 NAMECALL                         R0 R0 K0 ["destroy"]
       11 CALL                             R0 1 0
       12 GETUPVAL                         R0 2
       13 JUMPIFNOT                        R0 ; [+4]
       14 GETUPVAL                         R0 2
       15 NAMECALL                         R0 R0 K0 ["destroy"]
       17 CALL                             R0 1 0
       18 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [plugin]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R1 K6 [require]
       13 GETTABLEKS                       R2 R0 K7 ["Packages"]
       15 GETTABLEKS                       R2 R2 K8 ["TestLoader"]
       17 CALL                             R1 1 1
       18 GETTABLEKS                       R2 R1 K9 ["isCli"]
       20 CALL                             R2 0 1
       21 JUMPIFNOT                        R2 ; [+20]
       22 GETTABLEKS                       R2 R1 K10 ["isFTF"]
       24 CALL                             R2 0 1
       25 JUMPIFNOT                        R2 ; [+7]
       26 GETTABLEKS                       R2 R1 K11 ["launch"]
       28 LOADK                            R3 K12 ["AssetImporter"]
       29 GETTABLEKS                       R4 R0 K13 ["Src"]
       31 CALL                             R2 2 0
       32 RETURN                           R0 0
       33 GETIMPORT                        R2 K15 [print]
       35 LOADK                            R3 K16 ["roblox-cli is no longer supported as a test runner for this plugin."]
       36 CALL                             R2 1 0
       37 GETIMPORT                        R2 K15 [print]
       39 LOADK                            R3 K17 ["Please use FeatureTest instead! (go/ftf)"]
       40 CALL                             R2 1 0
       41 RETURN                           R0 0
       42 GETIMPORT                        R2 K6 [require]
       44 GETTABLEKS                       R3 R0 K13 ["Src"]
       46 GETTABLEKS                       R3 R3 K18 ["QuickImporter"]
       48 CALL                             R2 1 1
       49 GETTABLEKS                       R3 R2 K19 ["new"]
       51 GETIMPORT                        R4 K4 [plugin]
       53 CALL                             R3 1 1
       54 NAMECALL                         R4 R3 K20 ["registerAction"]
       56 CALL                             R4 1 0
       57 GETIMPORT                        R4 K6 [require]
       59 GETTABLEKS                       R5 R0 K13 ["Src"]
       61 GETTABLEKS                       R5 R5 K21 ["Flags"]
       63 GETTABLEKS                       R5 R5 K22 ["getFFlagMigratePropertyImporterToLua"]
       65 CALL                             R4 1 1
       66 LOADNIL                          R5
       67 MOVE                             R6 R4
       68 CALL                             R6 0 1
       69 JUMPIFNOT                        R6 ; [+13]
       70 GETIMPORT                        R6 K6 [require]
       72 GETTABLEKS                       R7 R0 K13 ["Src"]
       74 GETTABLEKS                       R7 R7 K23 ["SingleMeshImporter"]
       76 CALL                             R6 1 1
       77 GETTABLEKS                       R7 R6 K19 ["new"]
       79 GETIMPORT                        R8 K4 [plugin]
       81 CALL                             R7 1 1
       82 MOVE                             R5 R7
       83 GETIMPORT                        R6 K6 [require]
       85 GETTABLEKS                       R7 R0 K7 ["Packages"]
       87 GETTABLEKS                       R7 R7 K24 ["PluginLoader"]
       89 CALL                             R6 1 1
       90 GETTABLEKS                       R7 R6 K25 ["PluginLoaderBuilder"]
       92 GETTABLEKS                       R8 R0 K13 ["Src"]
       94 GETTABLEKS                       R8 R8 K26 ["Resources"]
       96 GETTABLEKS                       R8 R8 K27 ["Localization"]
       98 GETTABLEKS                       R8 R8 K28 ["SourceStrings"]
      100 GETTABLEKS                       R9 R0 K13 ["Src"]
      102 GETTABLEKS                       R9 R9 K26 ["Resources"]
      104 GETTABLEKS                       R9 R9 K27 ["Localization"]
      106 GETTABLEKS                       R9 R9 K29 ["LocalizedStrings"]
      108 GETIMPORT                        R10 K6 [require]
      110 GETTABLEKS                       R11 R0 K13 ["Src"]
      112 GETTABLEKS                       R11 R11 K21 ["Flags"]
      114 GETTABLEKS                       R11 R11 K30 ["getFFlagImportQueueRibbonDropdown"]
      116 CALL                             R10 1 1
      117 DUPTABLE                         R11 K41 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen", "actionInfos"}]
      118 GETIMPORT                        R12 K4 [plugin]
      120 SETTABLEKS                       R12 R11 K3 ["plugin"]
      122 LOADK                            R12 K12 ["AssetImporter"]
      123 SETTABLEKS                       R12 R11 K31 ["pluginName"]
      125 SETTABLEKS                       R9 R11 K32 ["translationResourceTable"]
      127 SETTABLEKS                       R8 R11 K33 ["fallbackResourceTable"]
      129 LOADNIL                          R12
      130 SETTABLEKS                       R12 R11 K34 ["overrideLocaleId"]
      132 LOADNIL                          R12
      133 SETTABLEKS                       R12 R11 K35 ["localizationNamespace"]
      135 DUPCLOSURE                       R12 K42 [PROTO_0]
      136 SETTABLEKS                       R12 R11 K36 ["getToolbarName"]
      138 DUPTABLE                         R12 K48 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
      139 DUPCLOSURE                       R13 K49 [PROTO_1]
      140 SETTABLEKS                       R13 R12 K43 ["getName"]
      142 DUPCLOSURE                       R13 K50 [PROTO_2]
      143 SETTABLEKS                       R13 R12 K44 ["getDescription"]
      145 LOADK                            R13 K51 [""]
      146 SETTABLEKS                       R13 R12 K45 ["icon"]
      148 DUPCLOSURE                       R13 K52 [PROTO_3]
      149 SETTABLEKS                       R13 R12 K46 ["text"]
      151 LOADB                            R13 1
      152 SETTABLEKS                       R13 R12 K47 ["clickableWhenViewportHidden"]
      154 SETTABLEKS                       R12 R11 K37 ["buttonInfo"]
      156 LOADNIL                          R12
      157 SETTABLEKS                       R12 R11 K38 ["dockWidgetInfo"]
      159 MOVE                             R13 R10
      160 CALL                             R13 0 1
      161 JUMPIFNOT                        R13 ; [+2]
      162 DUPCLOSURE                       R12 K53 [PROTO_4]
      163 JUMP                             ; [+1]
      164 LOADNIL                          R12
      165 SETTABLEKS                       R12 R11 K39 ["shouldImmediatelyOpen"]
      167 NEWTABLE                         R12 0 1
      169 DUPTABLE                         R13 K56 [{"uri", "isPreexistingAction"}]
      170 DUPTABLE                         R14 K61 [{"DataModel", "PluginId", "Category", "ItemId"}]
      171 LOADK                            R15 K62 ["Standalone"]
      172 SETTABLEKS                       R15 R14 K57 ["DataModel"]
      174 LOADK                            R15 K63 ["MeshImporter"]
      175 SETTABLEKS                       R15 R14 K58 ["PluginId"]
      177 LOADK                            R15 K64 ["Actions"]
      178 SETTABLEKS                       R15 R14 K59 ["Category"]
      180 LOADK                            R15 K65 ["Toggle"]
      181 SETTABLEKS                       R15 R14 K60 ["ItemId"]
      183 SETTABLEKS                       R14 R13 K54 ["uri"]
      185 LOADB                            R14 1
      186 SETTABLEKS                       R14 R13 K55 ["isPreexistingAction"]
      188 SETLIST                          R12 R13 1 [1]
      190 SETTABLEKS                       R12 R11 K40 ["actionInfos"]
      192 GETTABLEKS                       R12 R7 K66 ["build"]
      194 MOVE                             R13 R11
      195 CALL                             R12 1 1
      196 GETIMPORT                        R13 K6 [require]
      198 GETTABLEKS                       R14 R0 K67 ["Bin"]
      200 GETTABLEKS                       R14 R14 K68 ["Debug"]
      202 CALL                             R13 1 1
      203 GETTABLEKS                       R14 R13 K69 ["enabled"]
      205 JUMPIF                           R14 ; [+5]
      206 GETTABLEKS                       R14 R12 K70 ["pluginLoader"]
      208 NAMECALL                         R14 R14 K71 ["waitForUserInteraction"]
      210 CALL                             R14 1 1
      211 JUMPIF                           R14 ; [+2]
      212 CLOSEUPVALS                      R5
      213 RETURN                           R0 0
      214 GETIMPORT                        R15 K1 [script]
      216 GETTABLEKS                       R15 R15 K2 ["Parent"]
      218 GETTABLEKS                       R15 R15 K2 ["Parent"]
      220 LOADNIL                          R16
      221 NEWCLOSURE                       R17 P5
      222 CAPTURE                          VAL R15
      223 CAPTURE                          REF R16
      224 CAPTURE                          VAL R12
      225 CAPTURE                          VAL R13
      226 SETGLOBAL                        R17 K72 ["init"]
      228 GETIMPORT                        R17 K4 [plugin]
      230 GETTABLEKS                       R17 R17 K73 ["Unloading"]
      232 NEWCLOSURE                       R19 P6
      233 CAPTURE                          VAL R3
      234 CAPTURE                          REF R5
      235 CAPTURE                          REF R16
      236 NAMECALL                         R17 R17 K74 ["Connect"]
      238 CALL                             R17 2 0
      239 GETGLOBAL                        R17 K72 ["init"]
      241 CALL                             R17 0 0
      242 CLOSEUPVALS                      R5
      243 RETURN                           R0 0
