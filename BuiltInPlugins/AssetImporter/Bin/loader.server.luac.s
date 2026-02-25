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
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R1 R2 K2 ["Name"]
        5 SETTABLEKS                       R1 R0 K2 ["Name"]
        7 GETIMPORT                        R0 K4 [require]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K5 ["Src"]
       12 GETTABLEKS                       R2 R3 K6 ["Controllers"]
       14 GETTABLEKS                       R1 R2 K7 ["Initialization"]
       16 CALL                             R0 1 1
       17 GETTABLEKS                       R1 R0 K8 ["new"]
       19 GETIMPORT                        R2 K1 [plugin]
       21 GETUPVAL                         R3 2
       22 CALL                             R1 2 1
       23 SETUPVAL                         R1 1
       24 GETUPVAL                         R1 1
       25 NAMECALL                         R1 R1 K9 ["createMainPlugin"]
       27 CALL                             R1 1 0
       28 GETUPVAL                         R2 3
       29 GETTABLEKS                       R1 R2 K10 ["enabled"]
       31 JUMPIFNOT                        R1 ; [+5]
       32 GETUPVAL                         R2 3
       33 GETTABLEKS                       R1 R2 K11 ["debug"]
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
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [plugin]
        9 JUMPIF                           R1 ; [+1]
       10 RETURN                           R0 0
       11 GETIMPORT                        R1 K6 [require]
       13 GETTABLEKS                       R3 R0 K7 ["Packages"]
       15 GETTABLEKS                       R2 R3 K8 ["TestLoader"]
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
       44 GETTABLEKS                       R5 R0 K13 ["Src"]
       46 GETTABLEKS                       R4 R5 K18 ["Flags"]
       48 GETTABLEKS                       R3 R4 K19 ["getFFlagEnableQuickImporter"]
       50 CALL                             R2 1 1
       51 LOADNIL                          R3
       52 MOVE                             R4 R2
       53 CALL                             R4 0 1
       54 JUMPIFNOT                        R4 ; [+16]
       55 GETIMPORT                        R4 K6 [require]
       57 GETTABLEKS                       R6 R0 K13 ["Src"]
       59 GETTABLEKS                       R5 R6 K20 ["QuickImporter"]
       61 CALL                             R4 1 1
       62 GETTABLEKS                       R5 R4 K21 ["new"]
       64 GETIMPORT                        R6 K4 [plugin]
       66 CALL                             R5 1 1
       67 MOVE                             R3 R5
       68 NAMECALL                         R5 R3 K22 ["registerAction"]
       70 CALL                             R5 1 0
       71 GETIMPORT                        R4 K6 [require]
       73 GETTABLEKS                       R7 R0 K13 ["Src"]
       75 GETTABLEKS                       R6 R7 K18 ["Flags"]
       77 GETTABLEKS                       R5 R6 K23 ["getFFlagMigratePropertyImporterToLua"]
       79 CALL                             R4 1 1
       80 LOADNIL                          R5
       81 MOVE                             R6 R4
       82 CALL                             R6 0 1
       83 JUMPIFNOT                        R6 ; [+13]
       84 GETIMPORT                        R6 K6 [require]
       86 GETTABLEKS                       R8 R0 K13 ["Src"]
       88 GETTABLEKS                       R7 R8 K24 ["SingleMeshImporter"]
       90 CALL                             R6 1 1
       91 GETTABLEKS                       R7 R6 K21 ["new"]
       93 GETIMPORT                        R8 K4 [plugin]
       95 CALL                             R7 1 1
       96 MOVE                             R5 R7
       97 GETIMPORT                        R6 K6 [require]
       99 GETTABLEKS                       R8 R0 K7 ["Packages"]
      101 GETTABLEKS                       R7 R8 K25 ["PluginLoader"]
      103 CALL                             R6 1 1
      104 GETTABLEKS                       R7 R6 K26 ["PluginLoaderBuilder"]
      106 GETTABLEKS                       R11 R0 K13 ["Src"]
      108 GETTABLEKS                       R10 R11 K27 ["Resources"]
      110 GETTABLEKS                       R9 R10 K28 ["Localization"]
      112 GETTABLEKS                       R8 R9 K29 ["SourceStrings"]
      114 GETTABLEKS                       R12 R0 K13 ["Src"]
      116 GETTABLEKS                       R11 R12 K27 ["Resources"]
      118 GETTABLEKS                       R10 R11 K28 ["Localization"]
      120 GETTABLEKS                       R9 R10 K30 ["LocalizedStrings"]
      122 GETIMPORT                        R10 K6 [require]
      124 GETTABLEKS                       R13 R0 K13 ["Src"]
      126 GETTABLEKS                       R12 R13 K18 ["Flags"]
      128 GETTABLEKS                       R11 R12 K31 ["getFFlagImportQueueRibbonDropdown"]
      130 CALL                             R10 1 1
      131 GETIMPORT                        R11 K6 [require]
      133 GETTABLEKS                       R14 R0 K13 ["Src"]
      135 GETTABLEKS                       R13 R14 K18 ["Flags"]
      137 GETTABLEKS                       R12 R13 K32 ["getEFCinUnifiedImportQueue"]
      139 CALL                             R11 1 1
      140 DUPTABLE                         R12 K43 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen", "actionInfos"}]
      141 GETIMPORT                        R13 K4 [plugin]
      143 SETTABLEKS                       R13 R12 K3 ["plugin"]
      145 LOADK                            R13 K12 ["AssetImporter"]
      146 SETTABLEKS                       R13 R12 K33 ["pluginName"]
      148 SETTABLEKS                       R9 R12 K34 ["translationResourceTable"]
      150 SETTABLEKS                       R8 R12 K35 ["fallbackResourceTable"]
      152 LOADNIL                          R13
      153 SETTABLEKS                       R13 R12 K36 ["overrideLocaleId"]
      155 LOADNIL                          R13
      156 SETTABLEKS                       R13 R12 K37 ["localizationNamespace"]
      158 DUPCLOSURE                       R13 K44 [PROTO_0]
      159 SETTABLEKS                       R13 R12 K38 ["getToolbarName"]
      161 DUPTABLE                         R13 K50 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
      162 DUPCLOSURE                       R14 K51 [PROTO_1]
      163 SETTABLEKS                       R14 R13 K45 ["getName"]
      165 DUPCLOSURE                       R14 K52 [PROTO_2]
      166 SETTABLEKS                       R14 R13 K46 ["getDescription"]
      168 LOADK                            R14 K53 [""]
      169 SETTABLEKS                       R14 R13 K47 ["icon"]
      171 DUPCLOSURE                       R14 K54 [PROTO_3]
      172 SETTABLEKS                       R14 R13 K48 ["text"]
      174 LOADB                            R14 1
      175 SETTABLEKS                       R14 R13 K49 ["clickableWhenViewportHidden"]
      177 SETTABLEKS                       R13 R12 K39 ["buttonInfo"]
      179 LOADNIL                          R13
      180 SETTABLEKS                       R13 R12 K40 ["dockWidgetInfo"]
      182 MOVE                             R14 R10
      183 CALL                             R14 0 1
      184 JUMPIFNOT                        R14 ; [+2]
      185 DUPCLOSURE                       R13 K55 [PROTO_4]
      186 JUMP                             ; [+1]
      187 LOADNIL                          R13
      188 SETTABLEKS                       R13 R12 K41 ["shouldImmediatelyOpen"]
      190 MOVE                             R14 R11
      191 CALL                             R14 0 1
      192 JUMPIFNOT                        R14 ; [+24]
      193 NEWTABLE                         R13 0 1
      195 DUPTABLE                         R14 K58 [{"uri", "isPreexistingAction"}]
      196 DUPTABLE                         R15 K63 [{"DataModel", "PluginId", "Category", "ItemId"}]
      197 LOADK                            R16 K64 ["Standalone"]
      198 SETTABLEKS                       R16 R15 K59 ["DataModel"]
      200 LOADK                            R16 K65 ["MeshImporter"]
      201 SETTABLEKS                       R16 R15 K60 ["PluginId"]
      203 LOADK                            R16 K66 ["Actions"]
      204 SETTABLEKS                       R16 R15 K61 ["Category"]
      206 LOADK                            R16 K67 ["Toggle"]
      207 SETTABLEKS                       R16 R15 K62 ["ItemId"]
      209 SETTABLEKS                       R15 R14 K56 ["uri"]
      211 LOADB                            R15 1
      212 SETTABLEKS                       R15 R14 K57 ["isPreexistingAction"]
      214 SETLIST                          R13 R14 1 [1]
      216 JUMP                             ; [+1]
      217 LOADNIL                          R13
      218 SETTABLEKS                       R13 R12 K42 ["actionInfos"]
      220 GETTABLEKS                       R13 R7 K68 ["build"]
      222 MOVE                             R14 R12
      223 CALL                             R13 1 1
      224 GETIMPORT                        R14 K6 [require]
      226 GETTABLEKS                       R16 R0 K69 ["Bin"]
      228 GETTABLEKS                       R15 R16 K70 ["Debug"]
      230 CALL                             R14 1 1
      231 GETTABLEKS                       R15 R14 K71 ["enabled"]
      233 JUMPIF                           R15 ; [+5]
      234 GETTABLEKS                       R15 R13 K72 ["pluginLoader"]
      236 NAMECALL                         R15 R15 K73 ["waitForUserInteraction"]
      238 CALL                             R15 1 1
      239 JUMPIF                           R15 ; [+2]
      240 CLOSEUPVALS                      R3
      241 RETURN                           R0 0
      242 GETIMPORT                        R18 K1 [script]
      244 GETTABLEKS                       R17 R18 K2 ["Parent"]
      246 GETTABLEKS                       R16 R17 K2 ["Parent"]
      248 LOADNIL                          R17
      249 NEWCLOSURE                       R18 P5
      250 CAPTURE                          VAL R16
      251 CAPTURE                          REF R17
      252 CAPTURE                          VAL R13
      253 CAPTURE                          VAL R14
      254 SETGLOBAL                        R18 K74 ["init"]
      256 GETIMPORT                        R19 K4 [plugin]
      258 GETTABLEKS                       R18 R19 K75 ["Unloading"]
      260 NEWCLOSURE                       R20 P6
      261 CAPTURE                          REF R3
      262 CAPTURE                          REF R5
      263 CAPTURE                          REF R17
      264 NAMECALL                         R18 R18 K76 ["Connect"]
      266 CALL                             R18 2 0
      267 GETGLOBAL                        R18 K74 ["init"]
      269 CALL                             R18 0 0
      270 CLOSEUPVALS                      R3
      271 RETURN                           R0 0
