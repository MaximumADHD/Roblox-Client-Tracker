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
       44 GETTABLEKS                       R4 R0 K13 ["Src"]
       46 GETTABLEKS                       R3 R4 K18 ["QuickImporter"]
       48 CALL                             R2 1 1
       49 GETTABLEKS                       R3 R2 K19 ["new"]
       51 GETIMPORT                        R4 K4 [plugin]
       53 CALL                             R3 1 1
       54 NAMECALL                         R4 R3 K20 ["registerAction"]
       56 CALL                             R4 1 0
       57 GETIMPORT                        R4 K6 [require]
       59 GETTABLEKS                       R7 R0 K13 ["Src"]
       61 GETTABLEKS                       R6 R7 K21 ["Flags"]
       63 GETTABLEKS                       R5 R6 K22 ["getFFlagMigratePropertyImporterToLua"]
       65 CALL                             R4 1 1
       66 LOADNIL                          R5
       67 MOVE                             R6 R4
       68 CALL                             R6 0 1
       69 JUMPIFNOT                        R6 ; [+13]
       70 GETIMPORT                        R6 K6 [require]
       72 GETTABLEKS                       R8 R0 K13 ["Src"]
       74 GETTABLEKS                       R7 R8 K23 ["SingleMeshImporter"]
       76 CALL                             R6 1 1
       77 GETTABLEKS                       R7 R6 K19 ["new"]
       79 GETIMPORT                        R8 K4 [plugin]
       81 CALL                             R7 1 1
       82 MOVE                             R5 R7
       83 GETIMPORT                        R6 K6 [require]
       85 GETTABLEKS                       R8 R0 K7 ["Packages"]
       87 GETTABLEKS                       R7 R8 K24 ["PluginLoader"]
       89 CALL                             R6 1 1
       90 GETTABLEKS                       R7 R6 K25 ["PluginLoaderBuilder"]
       92 GETTABLEKS                       R11 R0 K13 ["Src"]
       94 GETTABLEKS                       R10 R11 K26 ["Resources"]
       96 GETTABLEKS                       R9 R10 K27 ["Localization"]
       98 GETTABLEKS                       R8 R9 K28 ["SourceStrings"]
      100 GETTABLEKS                       R12 R0 K13 ["Src"]
      102 GETTABLEKS                       R11 R12 K26 ["Resources"]
      104 GETTABLEKS                       R10 R11 K27 ["Localization"]
      106 GETTABLEKS                       R9 R10 K29 ["LocalizedStrings"]
      108 GETIMPORT                        R10 K6 [require]
      110 GETTABLEKS                       R13 R0 K13 ["Src"]
      112 GETTABLEKS                       R12 R13 K21 ["Flags"]
      114 GETTABLEKS                       R11 R12 K30 ["getFFlagImportQueueRibbonDropdown"]
      116 CALL                             R10 1 1
      117 GETIMPORT                        R11 K6 [require]
      119 GETTABLEKS                       R14 R0 K13 ["Src"]
      121 GETTABLEKS                       R13 R14 K21 ["Flags"]
      123 GETTABLEKS                       R12 R13 K31 ["getEFCinUnifiedImportQueue"]
      125 CALL                             R11 1 1
      126 DUPTABLE                         R12 K42 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "shouldImmediatelyOpen", "actionInfos"}]
      127 GETIMPORT                        R13 K4 [plugin]
      129 SETTABLEKS                       R13 R12 K3 ["plugin"]
      131 LOADK                            R13 K12 ["AssetImporter"]
      132 SETTABLEKS                       R13 R12 K32 ["pluginName"]
      134 SETTABLEKS                       R9 R12 K33 ["translationResourceTable"]
      136 SETTABLEKS                       R8 R12 K34 ["fallbackResourceTable"]
      138 LOADNIL                          R13
      139 SETTABLEKS                       R13 R12 K35 ["overrideLocaleId"]
      141 LOADNIL                          R13
      142 SETTABLEKS                       R13 R12 K36 ["localizationNamespace"]
      144 DUPCLOSURE                       R13 K43 [PROTO_0]
      145 SETTABLEKS                       R13 R12 K37 ["getToolbarName"]
      147 DUPTABLE                         R13 K49 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
      148 DUPCLOSURE                       R14 K50 [PROTO_1]
      149 SETTABLEKS                       R14 R13 K44 ["getName"]
      151 DUPCLOSURE                       R14 K51 [PROTO_2]
      152 SETTABLEKS                       R14 R13 K45 ["getDescription"]
      154 LOADK                            R14 K52 [""]
      155 SETTABLEKS                       R14 R13 K46 ["icon"]
      157 DUPCLOSURE                       R14 K53 [PROTO_3]
      158 SETTABLEKS                       R14 R13 K47 ["text"]
      160 LOADB                            R14 1
      161 SETTABLEKS                       R14 R13 K48 ["clickableWhenViewportHidden"]
      163 SETTABLEKS                       R13 R12 K38 ["buttonInfo"]
      165 LOADNIL                          R13
      166 SETTABLEKS                       R13 R12 K39 ["dockWidgetInfo"]
      168 MOVE                             R14 R10
      169 CALL                             R14 0 1
      170 JUMPIFNOT                        R14 ; [+2]
      171 DUPCLOSURE                       R13 K54 [PROTO_4]
      172 JUMP                             ; [+1]
      173 LOADNIL                          R13
      174 SETTABLEKS                       R13 R12 K40 ["shouldImmediatelyOpen"]
      176 MOVE                             R14 R11
      177 CALL                             R14 0 1
      178 JUMPIFNOT                        R14 ; [+24]
      179 NEWTABLE                         R13 0 1
      181 DUPTABLE                         R14 K57 [{"uri", "isPreexistingAction"}]
      182 DUPTABLE                         R15 K62 [{"DataModel", "PluginId", "Category", "ItemId"}]
      183 LOADK                            R16 K63 ["Standalone"]
      184 SETTABLEKS                       R16 R15 K58 ["DataModel"]
      186 LOADK                            R16 K64 ["MeshImporter"]
      187 SETTABLEKS                       R16 R15 K59 ["PluginId"]
      189 LOADK                            R16 K65 ["Actions"]
      190 SETTABLEKS                       R16 R15 K60 ["Category"]
      192 LOADK                            R16 K66 ["Toggle"]
      193 SETTABLEKS                       R16 R15 K61 ["ItemId"]
      195 SETTABLEKS                       R15 R14 K55 ["uri"]
      197 LOADB                            R15 1
      198 SETTABLEKS                       R15 R14 K56 ["isPreexistingAction"]
      200 SETLIST                          R13 R14 1 [1]
      202 JUMP                             ; [+1]
      203 LOADNIL                          R13
      204 SETTABLEKS                       R13 R12 K41 ["actionInfos"]
      206 GETTABLEKS                       R13 R7 K67 ["build"]
      208 MOVE                             R14 R12
      209 CALL                             R13 1 1
      210 GETIMPORT                        R14 K6 [require]
      212 GETTABLEKS                       R16 R0 K68 ["Bin"]
      214 GETTABLEKS                       R15 R16 K69 ["Debug"]
      216 CALL                             R14 1 1
      217 GETTABLEKS                       R15 R14 K70 ["enabled"]
      219 JUMPIF                           R15 ; [+5]
      220 GETTABLEKS                       R15 R13 K71 ["pluginLoader"]
      222 NAMECALL                         R15 R15 K72 ["waitForUserInteraction"]
      224 CALL                             R15 1 1
      225 JUMPIF                           R15 ; [+2]
      226 CLOSEUPVALS                      R5
      227 RETURN                           R0 0
      228 GETIMPORT                        R18 K1 [script]
      230 GETTABLEKS                       R17 R18 K2 ["Parent"]
      232 GETTABLEKS                       R16 R17 K2 ["Parent"]
      234 LOADNIL                          R17
      235 NEWCLOSURE                       R18 P5
      236 CAPTURE                          VAL R16
      237 CAPTURE                          REF R17
      238 CAPTURE                          VAL R13
      239 CAPTURE                          VAL R14
      240 SETGLOBAL                        R18 K73 ["init"]
      242 GETIMPORT                        R19 K4 [plugin]
      244 GETTABLEKS                       R18 R19 K74 ["Unloading"]
      246 NEWCLOSURE                       R20 P6
      247 CAPTURE                          VAL R3
      248 CAPTURE                          REF R5
      249 CAPTURE                          REF R17
      250 NAMECALL                         R18 R18 K75 ["Connect"]
      252 CALL                             R18 2 0
      253 GETGLOBAL                        R18 K73 ["init"]
      255 CALL                             R18 0 0
      256 CLOSEUPVALS                      R5
      257 RETURN                           R0 0
