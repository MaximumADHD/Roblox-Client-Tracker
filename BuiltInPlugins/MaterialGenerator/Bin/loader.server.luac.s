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
       55 GETTABLEKS                       R5 R0 K10 ["Packages"]
       57 GETTABLEKS                       R5 R5 K19 ["PluginLoader"]
       59 CALL                             R4 1 1
       60 GETTABLEKS                       R5 R4 K20 ["PluginLoaderBuilder"]
       62 GETTABLEKS                       R6 R0 K15 ["Src"]
       64 GETTABLEKS                       R6 R6 K21 ["Resources"]
       66 GETTABLEKS                       R6 R6 K22 ["Localization"]
       68 GETTABLEKS                       R6 R6 K23 ["SourceStrings"]
       70 GETTABLEKS                       R7 R0 K15 ["Src"]
       72 GETTABLEKS                       R7 R7 K21 ["Resources"]
       74 GETTABLEKS                       R7 R7 K22 ["Localization"]
       76 GETTABLEKS                       R7 R7 K24 ["LocalizedStrings"]
       78 NEWTABLE                         R8 1 0
       80 LOADK                            R10 K25 ["MemStorageService."]
       81 GETTABLEKS                       R11 R3 K26 ["LOAD_MATERIAL_GENERATOR"]
       83 CONCAT                           R9 R10 R11
       84 DUPCLOSURE                       R10 K27 [PROTO_1]
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R3
       87 SETTABLE                         R10 R8 R9
       88 DUPTABLE                         R9 K39 [{["plugin"], ["pluginName"] = "MaterialGenerator", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["extraTriggers"], ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       89 GETIMPORT                        R10 K40 [plugin]
       91 SETTABLEKS                       R10 R9 K28 ["plugin"]
       93 SETTABLEKS                       R7 R9 K30 ["translationResourceTable"]
       95 SETTABLEKS                       R6 R9 K31 ["fallbackResourceTable"]
       97 SETTABLEKS                       R8 R9 K35 ["extraTriggers"]
       99 DUPCLOSURE                       R10 K41 [PROTO_2]
      100 SETTABLEKS                       R10 R9 K36 ["getToolbarName"]
      102 DUPTABLE                         R10 K47 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = }]
      103 DUPCLOSURE                       R11 K48 [PROTO_3]
      104 SETTABLEKS                       R11 R10 K42 ["getName"]
      106 DUPCLOSURE                       R11 K49 [PROTO_4]
      107 SETTABLEKS                       R11 R10 K43 ["getDescription"]
      109 SETTABLEKS                       R10 R9 K37 ["buttonInfo"]
      111 DUPTABLE                         R10 K54 [{["id"] = "MaterialGenerator", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      112 GETIMPORT                        R11 K57 [DockWidgetPluginGuiInfo.new]
      114 GETIMPORT                        R12 K61 [Enum.InitialDockState.Left]
      116 LOADB                            R13 0
      117 LOADB                            R14 0
      118 LOADN                            R15 640
      119 LOADN                            R16 480
      120 LOADN                            R17 250
      121 LOADN                            R18 200
      122 CALL                             R11 7 1
      123 SETTABLEKS                       R11 R10 K51 ["dockWidgetPluginGuiInfo"]
      125 DUPCLOSURE                       R11 K62 [PROTO_5]
      126 SETTABLEKS                       R11 R10 K52 ["getDockTitle"]
      128 GETIMPORT                        R11 K65 [Enum.ZIndexBehavior.Sibling]
      130 SETTABLEKS                       R11 R10 K53 ["zIndexBehavior"]
      132 SETTABLEKS                       R10 R9 K38 ["dockWidgetInfo"]
      134 GETTABLEKS                       R10 R5 K66 ["build"]
      136 MOVE                             R11 R9
      137 CALL                             R10 1 1
      138 GETTABLEKS                       R11 R10 K67 ["pluginLoader"]
      140 NAMECALL                         R11 R11 K68 ["waitForUserInteraction"]
      142 CALL                             R11 1 1
      143 JUMPIF                           R11 ; [+1]
      144 RETURN                           R0 0
      145 GETIMPORT                        R12 K4 [require]
      147 GETIMPORT                        R13 K1 [script]
      149 GETTABLEKS                       R13 R13 K2 ["Parent"]
      151 GETTABLEKS                       R13 R13 K69 ["main"]
      153 CALL                             R12 1 1
      154 MOVE                             R13 R12
      155 GETIMPORT                        R14 K40 [plugin]
      157 MOVE                             R15 R10
      158 CALL                             R13 2 0
      159 RETURN                           R0 0
