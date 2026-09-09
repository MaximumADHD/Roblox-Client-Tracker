PROTO_0:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETTABLEKS                       R3 R2 K0 ["contextItems"]
        4 GETTABLEKS                       R3 R3 K1 ["FileController"]
        6 MOVE                             R5 R0
        7 MOVE                             R6 R1
        8 NAMECALL                         R3 R3 K2 ["startVersionedAnimationImport"]
       10 CALL                             R3 3 0
       11 RETURN                           R0 0

PROTO_1:
        0 LOADK                            R3 K0 ["Mesh Importer"]
        1 RETURN                           R3 1

PROTO_2:
        0 LOADK                            R3 K0 ["Import"]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 LOADB                            R0 1
        1 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 JUMPIF                           R0 ; [+28]
        2 GETIMPORT                        R0 K1 [plugin]
        4 GETUPVAL                         R1 1
        5 GETTABLEKS                       R1 R1 K2 ["Name"]
        7 SETTABLEKS                       R1 R0 K2 ["Name"]
        9 GETIMPORT                        R0 K4 [require]
       11 GETUPVAL                         R1 1
       12 GETTABLEKS                       R1 R1 K5 ["Src"]
       14 GETTABLEKS                       R1 R1 K6 ["Controllers"]
       16 GETTABLEKS                       R1 R1 K7 ["Initialization"]
       18 CALL                             R0 1 1
       19 GETTABLEKS                       R1 R0 K8 ["new"]
       21 GETIMPORT                        R2 K1 [plugin]
       23 GETUPVAL                         R3 2
       24 CALL                             R1 2 1
       25 SETUPVAL                         R1 0
       26 GETUPVAL                         R1 0
       27 NAMECALL                         R1 R1 K9 ["createMainPlugin"]
       29 CALL                             R1 1 0
       30 GETUPVAL                         R0 3
       31 GETTABLEKS                       R0 R0 K10 ["enabled"]
       33 JUMPIFNOT                        R0 ; [+5]
       34 GETUPVAL                         R0 3
       35 GETTABLEKS                       R0 R0 K11 ["debug"]
       37 GETUPVAL                         R1 0
       38 CALL                             R0 1 0
       39 GETUPVAL                         R0 0
       40 RETURN                           R0 1

PROTO_7:
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
       66 GETIMPORT                        R5 K6 [require]
       68 GETTABLEKS                       R6 R0 K13 ["Src"]
       70 GETTABLEKS                       R6 R6 K21 ["Flags"]
       72 GETTABLEKS                       R6 R6 K23 ["getEFImportAnimationVersions"]
       74 CALL                             R5 1 1
       75 LOADNIL                          R6
       76 LOADNIL                          R7
       77 MOVE                             R8 R4
       78 CALL                             R8 0 1
       79 JUMPIF                           R8 ; [+3]
       80 MOVE                             R8 R5
       81 CALL                             R8 0 1
       82 JUMPIFNOT                        R8 ; [+21]
       83 GETIMPORT                        R8 K6 [require]
       85 GETTABLEKS                       R9 R0 K13 ["Src"]
       87 GETTABLEKS                       R9 R9 K24 ["SingleMeshImporter"]
       89 CALL                             R8 1 1
       90 GETTABLEKS                       R9 R8 K19 ["new"]
       92 GETIMPORT                        R10 K4 [plugin]
       94 CALL                             R9 1 1
       95 MOVE                             R7 R9
       96 MOVE                             R9 R5
       97 CALL                             R9 0 1
       98 JUMPIFNOT                        R9 ; [+5]
       99 NEWCLOSURE                       R11 P0
      100 CAPTURE                          REF R6
      101 NAMECALL                         R9 R7 K25 ["setImportAnimationVersionHandler"]
      103 CALL                             R9 2 0
      104 GETIMPORT                        R8 K6 [require]
      106 GETTABLEKS                       R9 R0 K7 ["Packages"]
      108 GETTABLEKS                       R9 R9 K26 ["PluginLoader"]
      110 CALL                             R8 1 1
      111 GETTABLEKS                       R9 R8 K27 ["PluginLoaderBuilder"]
      113 GETTABLEKS                       R10 R0 K13 ["Src"]
      115 GETTABLEKS                       R10 R10 K28 ["Resources"]
      117 GETTABLEKS                       R10 R10 K29 ["Localization"]
      119 GETTABLEKS                       R10 R10 K30 ["SourceStrings"]
      121 GETTABLEKS                       R11 R0 K13 ["Src"]
      123 GETTABLEKS                       R11 R11 K28 ["Resources"]
      125 GETTABLEKS                       R11 R11 K29 ["Localization"]
      127 GETTABLEKS                       R11 R11 K31 ["LocalizedStrings"]
      129 GETIMPORT                        R12 K6 [require]
      131 GETTABLEKS                       R13 R0 K13 ["Src"]
      133 GETTABLEKS                       R13 R13 K21 ["Flags"]
      135 GETTABLEKS                       R13 R13 K32 ["getFFlagImportQueueRibbonDropdown"]
      137 CALL                             R12 1 1
      138 DUPTABLE                         R13 K44 [{["plugin"], ["pluginName"] = "AssetImporter", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"] = , ["shouldImmediatelyOpen"], ["actionInfos"]}]
      139 GETIMPORT                        R14 K4 [plugin]
      141 SETTABLEKS                       R14 R13 K3 ["plugin"]
      143 SETTABLEKS                       R11 R13 K34 ["translationResourceTable"]
      145 SETTABLEKS                       R10 R13 K35 ["fallbackResourceTable"]
      147 DUPCLOSURE                       R14 K45 [PROTO_1]
      148 SETTABLEKS                       R14 R13 K39 ["getToolbarName"]
      150 DUPTABLE                         R14 K53 [{["getName"], ["getDescription"], ["icon"] = "", ["text"], ["clickableWhenViewportHidden"] = True}]
      151 DUPCLOSURE                       R15 K54 [PROTO_2]
      152 SETTABLEKS                       R15 R14 K46 ["getName"]
      154 DUPCLOSURE                       R15 K55 [PROTO_3]
      155 SETTABLEKS                       R15 R14 K47 ["getDescription"]
      157 DUPCLOSURE                       R15 K56 [PROTO_4]
      158 SETTABLEKS                       R15 R14 K50 ["text"]
      160 SETTABLEKS                       R14 R13 K40 ["buttonInfo"]
      162 MOVE                             R15 R12
      163 CALL                             R15 0 1
      164 JUMPIFNOT                        R15 ; [+2]
      165 DUPCLOSURE                       R14 K57 [PROTO_5]
      166 JUMP                             ; [+1]
      167 LOADNIL                          R14
      168 SETTABLEKS                       R14 R13 K42 ["shouldImmediatelyOpen"]
      170 NEWTABLE                         R14 0 1
      172 DUPTABLE                         R15 K60 [{["uri"], ["isPreexistingAction"] = True}]
      173 DUPTABLE                         R16 K69 [{["DataModel"] = "Standalone", ["PluginId"] = "MeshImporter", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      174 SETTABLEKS                       R16 R15 K58 ["uri"]
      176 SETLIST                          R14 R15 1 [1]
      178 SETTABLEKS                       R14 R13 K43 ["actionInfos"]
      180 GETTABLEKS                       R14 R9 K70 ["build"]
      182 MOVE                             R15 R13
      183 CALL                             R14 1 1
      184 GETIMPORT                        R15 K6 [require]
      186 GETTABLEKS                       R16 R0 K71 ["Bin"]
      188 GETTABLEKS                       R16 R16 K72 ["Debug"]
      190 CALL                             R15 1 1
      191 GETIMPORT                        R16 K1 [script]
      193 GETTABLEKS                       R16 R16 K2 ["Parent"]
      195 GETTABLEKS                       R16 R16 K2 ["Parent"]
      197 LOADNIL                          R17
      198 NEWCLOSURE                       R6 P6
      199 CAPTURE                          REF R17
      200 CAPTURE                          VAL R16
      201 CAPTURE                          VAL R14
      202 CAPTURE                          VAL R15
      203 GETIMPORT                        R18 K4 [plugin]
      205 GETTABLEKS                       R18 R18 K73 ["Unloading"]
      207 NEWCLOSURE                       R20 P7
      208 CAPTURE                          VAL R3
      209 CAPTURE                          REF R7
      210 CAPTURE                          REF R17
      211 NAMECALL                         R18 R18 K74 ["Connect"]
      213 CALL                             R18 2 0
      214 GETTABLEKS                       R18 R15 K75 ["enabled"]
      216 JUMPIF                           R18 ; [+5]
      217 GETTABLEKS                       R18 R14 K76 ["pluginLoader"]
      219 NAMECALL                         R18 R18 K77 ["waitForUserInteraction"]
      221 CALL                             R18 1 1
      222 JUMPIF                           R18 ; [+2]
      223 CLOSEUPVALS                      R6
      224 RETURN                           R0 0
      225 MOVE                             R19 R6
      226 CALL                             R19 0 0
      227 CLOSEUPVALS                      R6
      228 RETURN                           R0 0
