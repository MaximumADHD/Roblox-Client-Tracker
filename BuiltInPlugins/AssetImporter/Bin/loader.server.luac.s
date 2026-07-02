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
      117 DUPTABLE                         R11 K42 [{["plugin"], ["pluginName"] = "AssetImporter", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"] = , ["shouldImmediatelyOpen"], ["actionInfos"]}]
      118 GETIMPORT                        R12 K4 [plugin]
      120 SETTABLEKS                       R12 R11 K3 ["plugin"]
      122 SETTABLEKS                       R9 R11 K32 ["translationResourceTable"]
      124 SETTABLEKS                       R8 R11 K33 ["fallbackResourceTable"]
      126 DUPCLOSURE                       R12 K43 [PROTO_0]
      127 SETTABLEKS                       R12 R11 K37 ["getToolbarName"]
      129 DUPTABLE                         R12 K51 [{["getName"], ["getDescription"], ["icon"] = "", ["text"], ["clickableWhenViewportHidden"] = True}]
      130 DUPCLOSURE                       R13 K52 [PROTO_1]
      131 SETTABLEKS                       R13 R12 K44 ["getName"]
      133 DUPCLOSURE                       R13 K53 [PROTO_2]
      134 SETTABLEKS                       R13 R12 K45 ["getDescription"]
      136 DUPCLOSURE                       R13 K54 [PROTO_3]
      137 SETTABLEKS                       R13 R12 K48 ["text"]
      139 SETTABLEKS                       R12 R11 K38 ["buttonInfo"]
      141 MOVE                             R13 R10
      142 CALL                             R13 0 1
      143 JUMPIFNOT                        R13 ; [+2]
      144 DUPCLOSURE                       R12 K55 [PROTO_4]
      145 JUMP                             ; [+1]
      146 LOADNIL                          R12
      147 SETTABLEKS                       R12 R11 K40 ["shouldImmediatelyOpen"]
      149 NEWTABLE                         R12 0 1
      151 DUPTABLE                         R13 K58 [{["uri"], ["isPreexistingAction"] = True}]
      152 DUPTABLE                         R14 K67 [{["DataModel"] = "Standalone", ["PluginId"] = "MeshImporter", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      153 SETTABLEKS                       R14 R13 K56 ["uri"]
      155 SETLIST                          R12 R13 1 [1]
      157 SETTABLEKS                       R12 R11 K41 ["actionInfos"]
      159 GETTABLEKS                       R12 R7 K68 ["build"]
      161 MOVE                             R13 R11
      162 CALL                             R12 1 1
      163 GETIMPORT                        R13 K6 [require]
      165 GETTABLEKS                       R14 R0 K69 ["Bin"]
      167 GETTABLEKS                       R14 R14 K70 ["Debug"]
      169 CALL                             R13 1 1
      170 GETTABLEKS                       R14 R13 K71 ["enabled"]
      172 JUMPIF                           R14 ; [+5]
      173 GETTABLEKS                       R14 R12 K72 ["pluginLoader"]
      175 NAMECALL                         R14 R14 K73 ["waitForUserInteraction"]
      177 CALL                             R14 1 1
      178 JUMPIF                           R14 ; [+2]
      179 CLOSEUPVALS                      R5
      180 RETURN                           R0 0
      181 GETIMPORT                        R15 K1 [script]
      183 GETTABLEKS                       R15 R15 K2 ["Parent"]
      185 GETTABLEKS                       R15 R15 K2 ["Parent"]
      187 LOADNIL                          R16
      188 NEWCLOSURE                       R17 P5
      189 CAPTURE                          VAL R15
      190 CAPTURE                          REF R16
      191 CAPTURE                          VAL R12
      192 CAPTURE                          VAL R13
      193 SETGLOBAL                        R17 K74 ["init"]
      195 GETIMPORT                        R17 K4 [plugin]
      197 GETTABLEKS                       R17 R17 K75 ["Unloading"]
      199 NEWCLOSURE                       R19 P6
      200 CAPTURE                          VAL R3
      201 CAPTURE                          REF R5
      202 CAPTURE                          REF R16
      203 NAMECALL                         R17 R17 K76 ["Connect"]
      205 CALL                             R17 2 0
      206 GETGLOBAL                        R17 K74 ["init"]
      208 CALL                             R17 0 0
      209 CLOSEUPVALS                      R5
      210 RETURN                           R0 0
