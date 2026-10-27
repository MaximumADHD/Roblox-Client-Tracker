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
       63 GETTABLEKS                       R5 R5 K22 ["getEFImportAnimationVersions"]
       65 CALL                             R4 1 1
       66 LOADNIL                          R5
       67 GETIMPORT                        R6 K6 [require]
       69 GETTABLEKS                       R7 R0 K13 ["Src"]
       71 GETTABLEKS                       R7 R7 K23 ["SingleMeshImporter"]
       73 CALL                             R6 1 1
       74 GETTABLEKS                       R7 R6 K19 ["new"]
       76 GETIMPORT                        R8 K4 [plugin]
       78 CALL                             R7 1 1
       79 MOVE                             R8 R4
       80 CALL                             R8 0 1
       81 JUMPIFNOT                        R8 ; [+5]
       82 NEWCLOSURE                       R10 P0
       83 CAPTURE                          REF R5
       84 NAMECALL                         R8 R7 K24 ["setImportAnimationVersionHandler"]
       86 CALL                             R8 2 0
       87 GETIMPORT                        R8 K6 [require]
       89 GETTABLEKS                       R9 R0 K7 ["Packages"]
       91 GETTABLEKS                       R9 R9 K25 ["PluginLoader"]
       93 CALL                             R8 1 1
       94 GETTABLEKS                       R9 R8 K26 ["PluginLoaderBuilder"]
       96 GETTABLEKS                       R10 R0 K13 ["Src"]
       98 GETTABLEKS                       R10 R10 K27 ["Resources"]
      100 GETTABLEKS                       R10 R10 K28 ["Localization"]
      102 GETTABLEKS                       R10 R10 K29 ["SourceStrings"]
      104 GETTABLEKS                       R11 R0 K13 ["Src"]
      106 GETTABLEKS                       R11 R11 K27 ["Resources"]
      108 GETTABLEKS                       R11 R11 K28 ["Localization"]
      110 GETTABLEKS                       R11 R11 K30 ["LocalizedStrings"]
      112 GETIMPORT                        R12 K6 [require]
      114 GETTABLEKS                       R13 R0 K13 ["Src"]
      116 GETTABLEKS                       R13 R13 K21 ["Flags"]
      118 GETTABLEKS                       R13 R13 K31 ["getFFlagImportQueueRibbonDropdown"]
      120 CALL                             R12 1 1
      121 DUPTABLE                         R13 K43 [{["plugin"], ["pluginName"] = "AssetImporter", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"] = , ["shouldImmediatelyOpen"], ["actionInfos"]}]
      122 GETIMPORT                        R14 K4 [plugin]
      124 SETTABLEKS                       R14 R13 K3 ["plugin"]
      126 SETTABLEKS                       R11 R13 K33 ["translationResourceTable"]
      128 SETTABLEKS                       R10 R13 K34 ["fallbackResourceTable"]
      130 DUPCLOSURE                       R14 K44 [PROTO_1]
      131 SETTABLEKS                       R14 R13 K38 ["getToolbarName"]
      133 DUPTABLE                         R14 K52 [{["getName"], ["getDescription"], ["icon"] = "", ["text"], ["clickableWhenViewportHidden"] = True}]
      134 DUPCLOSURE                       R15 K53 [PROTO_2]
      135 SETTABLEKS                       R15 R14 K45 ["getName"]
      137 DUPCLOSURE                       R15 K54 [PROTO_3]
      138 SETTABLEKS                       R15 R14 K46 ["getDescription"]
      140 DUPCLOSURE                       R15 K55 [PROTO_4]
      141 SETTABLEKS                       R15 R14 K49 ["text"]
      143 SETTABLEKS                       R14 R13 K39 ["buttonInfo"]
      145 MOVE                             R15 R12
      146 CALL                             R15 0 1
      147 JUMPIFNOT                        R15 ; [+2]
      148 DUPCLOSURE                       R14 K56 [PROTO_5]
      149 JUMP                             ; [+1]
      150 LOADNIL                          R14
      151 SETTABLEKS                       R14 R13 K41 ["shouldImmediatelyOpen"]
      153 NEWTABLE                         R14 0 1
      155 DUPTABLE                         R15 K59 [{["uri"], ["isPreexistingAction"] = True}]
      156 DUPTABLE                         R16 K68 [{["DataModel"] = "Standalone", ["PluginId"] = "MeshImporter", ["Category"] = "Actions", ["ItemId"] = "Toggle"}]
      157 SETTABLEKS                       R16 R15 K57 ["uri"]
      159 SETLIST                          R14 R15 1 [1]
      161 SETTABLEKS                       R14 R13 K42 ["actionInfos"]
      163 GETTABLEKS                       R14 R9 K69 ["build"]
      165 MOVE                             R15 R13
      166 CALL                             R14 1 1
      167 GETIMPORT                        R15 K6 [require]
      169 GETTABLEKS                       R16 R0 K70 ["Bin"]
      171 GETTABLEKS                       R16 R16 K71 ["Debug"]
      173 CALL                             R15 1 1
      174 GETIMPORT                        R16 K1 [script]
      176 GETTABLEKS                       R16 R16 K2 ["Parent"]
      178 GETTABLEKS                       R16 R16 K2 ["Parent"]
      180 LOADNIL                          R17
      181 NEWCLOSURE                       R5 P6
      182 CAPTURE                          REF R17
      183 CAPTURE                          VAL R16
      184 CAPTURE                          VAL R14
      185 CAPTURE                          VAL R15
      186 GETIMPORT                        R18 K4 [plugin]
      188 GETTABLEKS                       R18 R18 K72 ["Unloading"]
      190 NEWCLOSURE                       R20 P7
      191 CAPTURE                          VAL R3
      192 CAPTURE                          VAL R7
      193 CAPTURE                          REF R17
      194 NAMECALL                         R18 R18 K73 ["Connect"]
      196 CALL                             R18 2 0
      197 GETTABLEKS                       R18 R15 K74 ["enabled"]
      199 JUMPIF                           R18 ; [+5]
      200 GETTABLEKS                       R18 R14 K75 ["pluginLoader"]
      202 NAMECALL                         R18 R18 K76 ["waitForUserInteraction"]
      204 CALL                             R18 1 1
      205 JUMPIF                           R18 ; [+2]
      206 CLOSEUPVALS                      R5
      207 RETURN                           R0 0
      208 MOVE                             R19 R5
      209 CALL                             R19 0 0
      210 CLOSEUPVALS                      R5
      211 RETURN                           R0 0
