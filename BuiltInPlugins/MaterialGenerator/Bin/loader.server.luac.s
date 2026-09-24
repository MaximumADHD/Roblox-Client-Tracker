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
       45 GETIMPORT                        R4 K4 [require]
       47 GETTABLEKS                       R5 R0 K10 ["Packages"]
       49 GETTABLEKS                       R5 R5 K17 ["PluginLoader"]
       51 CALL                             R4 1 1
       52 GETTABLEKS                       R5 R4 K18 ["PluginLoaderBuilder"]
       54 GETTABLEKS                       R6 R0 K15 ["Src"]
       56 GETTABLEKS                       R6 R6 K19 ["Resources"]
       58 GETTABLEKS                       R6 R6 K20 ["Localization"]
       60 GETTABLEKS                       R6 R6 K21 ["SourceStrings"]
       62 GETTABLEKS                       R7 R0 K15 ["Src"]
       64 GETTABLEKS                       R7 R7 K19 ["Resources"]
       66 GETTABLEKS                       R7 R7 K20 ["Localization"]
       68 GETTABLEKS                       R7 R7 K22 ["LocalizedStrings"]
       70 NEWTABLE                         R8 1 0
       72 LOADK                            R10 K23 ["MemStorageService."]
       73 GETTABLEKS                       R11 R3 K24 ["LOAD_MATERIAL_GENERATOR"]
       75 CONCAT                           R9 R10 R11
       76 DUPCLOSURE                       R10 K25 [PROTO_1]
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R3
       79 SETTABLE                         R10 R8 R9
       80 DUPTABLE                         R9 K37 [{["plugin"], ["pluginName"] = "MaterialGenerator", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["extraTriggers"], ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       81 GETIMPORT                        R10 K38 [plugin]
       83 SETTABLEKS                       R10 R9 K26 ["plugin"]
       85 SETTABLEKS                       R7 R9 K28 ["translationResourceTable"]
       87 SETTABLEKS                       R6 R9 K29 ["fallbackResourceTable"]
       89 SETTABLEKS                       R8 R9 K33 ["extraTriggers"]
       91 DUPCLOSURE                       R10 K39 [PROTO_2]
       92 SETTABLEKS                       R10 R9 K34 ["getToolbarName"]
       94 DUPTABLE                         R10 K45 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = }]
       95 DUPCLOSURE                       R11 K46 [PROTO_3]
       96 SETTABLEKS                       R11 R10 K40 ["getName"]
       98 DUPCLOSURE                       R11 K47 [PROTO_4]
       99 SETTABLEKS                       R11 R10 K41 ["getDescription"]
      101 SETTABLEKS                       R10 R9 K35 ["buttonInfo"]
      103 DUPTABLE                         R10 K52 [{["id"] = "MaterialGenerator", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      104 GETIMPORT                        R11 K55 [DockWidgetPluginGuiInfo.new]
      106 GETIMPORT                        R12 K59 [Enum.InitialDockState.Left]
      108 LOADB                            R13 0
      109 LOADB                            R14 0
      110 LOADN                            R15 640
      111 LOADN                            R16 480
      112 LOADN                            R17 250
      113 LOADN                            R18 200
      114 CALL                             R11 7 1
      115 SETTABLEKS                       R11 R10 K49 ["dockWidgetPluginGuiInfo"]
      117 DUPCLOSURE                       R11 K60 [PROTO_5]
      118 SETTABLEKS                       R11 R10 K50 ["getDockTitle"]
      120 GETIMPORT                        R11 K63 [Enum.ZIndexBehavior.Sibling]
      122 SETTABLEKS                       R11 R10 K51 ["zIndexBehavior"]
      124 SETTABLEKS                       R10 R9 K36 ["dockWidgetInfo"]
      126 GETTABLEKS                       R10 R5 K64 ["build"]
      128 MOVE                             R11 R9
      129 CALL                             R10 1 1
      130 GETTABLEKS                       R11 R10 K65 ["pluginLoader"]
      132 NAMECALL                         R11 R11 K66 ["waitForUserInteraction"]
      134 CALL                             R11 1 1
      135 JUMPIF                           R11 ; [+1]
      136 RETURN                           R0 0
      137 GETIMPORT                        R12 K4 [require]
      139 GETIMPORT                        R13 K1 [script]
      141 GETTABLEKS                       R13 R13 K2 ["Parent"]
      143 GETTABLEKS                       R13 R13 K67 ["main"]
      145 CALL                             R12 1 1
      146 MOVE                             R13 R12
      147 GETIMPORT                        R14 K38 [plugin]
      149 MOVE                             R15 R10
      150 CALL                             R13 2 0
      151 RETURN                           R0 0
