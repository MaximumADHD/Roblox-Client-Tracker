PROTO_0:
        0 PREPVARARGS                      0
        1 GETUPVAL                         R0 0
        2 GETVARARGS                       R2 -1
        3 NAMECALL                         R0 R0 K0 ["Fire"]
        5 CALL                             R0 -1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K2 [Instance.new]
        2 LOADK                            R1 K3 ["BindableEvent"]
        3 CALL                             R0 1 1
        4 GETUPVAL                         R1 0
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K4 ["LOAD_MATERIAL_GENERATOR"]
        8 NEWCLOSURE                       R4 P0
        9 CAPTURE                          VAL R0
       10 NAMECALL                         R1 R1 K5 ["Bind"]
       12 CALL                             R1 3 0
       13 GETTABLEKS                       R1 R0 K6 ["Event"]
       15 RETURN                           R1 1

PROTO_2:
        0 LOADK                            R3 K0 ["MaterialGenerator"]
        1 RETURN                           R3 1

PROTO_3:
        0 LOADK                            R3 K0 ["MaterialGenerator"]
        1 RETURN                           R3 1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETIMPORT                        R2 K1 [script]
       11 GETTABLEKS                       R2 R2 K2 ["Parent"]
       13 GETTABLEKS                       R2 R2 K5 ["defineLuaFlags"]
       15 CALL                             R1 1 0
       16 GETIMPORT                        R1 K7 [game]
       18 LOADK                            R3 K8 ["MemStorageService"]
       19 NAMECALL                         R1 R1 K9 ["GetService"]
       21 CALL                             R1 2 1
       22 GETIMPORT                        R2 K4 [require]
       24 GETTABLEKS                       R3 R0 K10 ["Packages"]
       26 GETTABLEKS                       R3 R3 K11 ["TestLoader"]
       28 CALL                             R2 1 1
       29 GETIMPORT                        R3 K4 [require]
       31 GETTABLEKS                       R4 R0 K12 ["SharedPluginConstants"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R2 K13 ["launch"]
       36 LOADK                            R5 K14 ["MaterialGenerator"]
       37 GETTABLEKS                       R6 R0 K15 ["Src"]
       39 CALL                             R4 2 0
       40 GETTABLEKS                       R4 R2 K16 ["isCli"]
       42 CALL                             R4 0 1
       43 JUMPIFNOT                        R4 ; [+1]
       44 RETURN                           R0 0
       45 GETIMPORT                        R4 K7 [game]
       47 LOADK                            R6 K17 ["EnableMaterialGenerator"]
       48 NAMECALL                         R4 R4 K18 ["GetFastFlag"]
       50 CALL                             R4 2 1
       51 JUMPIF                           R4 ; [+1]
       52 RETURN                           R0 0
       53 GETIMPORT                        R4 K4 [require]
       55 GETTABLEKS                       R5 R0 K15 ["Src"]
       57 GETTABLEKS                       R5 R5 K19 ["Flags"]
       59 GETTABLEKS                       R5 R5 K20 ["getFFlagShowMaterialGeneratorFromElsewhere"]
       61 CALL                             R4 1 1
       62 GETIMPORT                        R5 K4 [require]
       64 GETTABLEKS                       R6 R0 K10 ["Packages"]
       66 GETTABLEKS                       R6 R6 K21 ["PluginLoader"]
       68 CALL                             R5 1 1
       69 GETTABLEKS                       R6 R5 K22 ["PluginLoaderBuilder"]
       71 GETTABLEKS                       R7 R0 K15 ["Src"]
       73 GETTABLEKS                       R7 R7 K23 ["Resources"]
       75 GETTABLEKS                       R7 R7 K24 ["Localization"]
       77 GETTABLEKS                       R7 R7 K25 ["SourceStrings"]
       79 GETTABLEKS                       R8 R0 K15 ["Src"]
       81 GETTABLEKS                       R8 R8 K23 ["Resources"]
       83 GETTABLEKS                       R8 R8 K24 ["Localization"]
       85 GETTABLEKS                       R8 R8 K26 ["LocalizedStrings"]
       87 NEWTABLE                         R9 1 0
       89 LOADK                            R11 K27 ["MemStorageService."]
       90 GETTABLEKS                       R12 R3 K28 ["LOAD_MATERIAL_GENERATOR"]
       92 CONCAT                           R10 R11 R12
       93 DUPCLOSURE                       R11 K29 [PROTO_1]
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R3
       96 SETTABLE                         R11 R9 R10
       97 DUPTABLE                         R10 K41 [{["plugin"], ["pluginName"] = "MaterialGenerator", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["extraTriggers"], ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       98 GETIMPORT                        R11 K42 [plugin]
      100 SETTABLEKS                       R11 R10 K30 ["plugin"]
      102 SETTABLEKS                       R8 R10 K32 ["translationResourceTable"]
      104 SETTABLEKS                       R7 R10 K33 ["fallbackResourceTable"]
      106 MOVE                             R12 R4
      107 CALL                             R12 0 1
      108 JUMPIFNOT                        R12 ; [+2]
      109 MOVE                             R11 R9
      110 JUMP                             ; [+1]
      111 LOADNIL                          R11
      112 SETTABLEKS                       R11 R10 K37 ["extraTriggers"]
      114 DUPCLOSURE                       R11 K43 [PROTO_2]
      115 SETTABLEKS                       R11 R10 K38 ["getToolbarName"]
      117 DUPTABLE                         R11 K49 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = }]
      118 DUPCLOSURE                       R12 K50 [PROTO_3]
      119 SETTABLEKS                       R12 R11 K44 ["getName"]
      121 DUPCLOSURE                       R12 K51 [PROTO_4]
      122 SETTABLEKS                       R12 R11 K45 ["getDescription"]
      124 SETTABLEKS                       R11 R10 K39 ["buttonInfo"]
      126 DUPTABLE                         R11 K56 [{["id"] = "MaterialGenerator", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      127 GETIMPORT                        R12 K59 [DockWidgetPluginGuiInfo.new]
      129 GETIMPORT                        R13 K63 [Enum.InitialDockState.Left]
      131 LOADB                            R14 0
      132 LOADB                            R15 0
      133 LOADN                            R16 640
      134 LOADN                            R17 480
      135 LOADN                            R18 250
      136 LOADN                            R19 200
      137 CALL                             R12 7 1
      138 SETTABLEKS                       R12 R11 K53 ["dockWidgetPluginGuiInfo"]
      140 DUPCLOSURE                       R12 K64 [PROTO_5]
      141 SETTABLEKS                       R12 R11 K54 ["getDockTitle"]
      143 GETIMPORT                        R12 K67 [Enum.ZIndexBehavior.Sibling]
      145 SETTABLEKS                       R12 R11 K55 ["zIndexBehavior"]
      147 SETTABLEKS                       R11 R10 K40 ["dockWidgetInfo"]
      149 GETTABLEKS                       R11 R6 K68 ["build"]
      151 MOVE                             R12 R10
      152 CALL                             R11 1 1
      153 GETTABLEKS                       R12 R11 K69 ["pluginLoader"]
      155 NAMECALL                         R12 R12 K70 ["waitForUserInteraction"]
      157 CALL                             R12 1 1
      158 JUMPIF                           R12 ; [+1]
      159 RETURN                           R0 0
      160 GETIMPORT                        R13 K4 [require]
      162 GETIMPORT                        R14 K1 [script]
      164 GETTABLEKS                       R14 R14 K2 ["Parent"]
      166 GETTABLEKS                       R14 R14 K71 ["main"]
      168 CALL                             R13 1 1
      169 MOVE                             R14 R13
      170 GETIMPORT                        R15 K42 [plugin]
      172 MOVE                             R16 R11
      173 CALL                             R14 2 0
      174 RETURN                           R0 0
