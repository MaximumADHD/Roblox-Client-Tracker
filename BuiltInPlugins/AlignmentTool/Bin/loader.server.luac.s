PROTO_0:
        0 LOADK                            R0 K0 ["Alignment"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["AlignTool"]
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R0 K0 [""]
        1 RETURN                           R0 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["WindowTitle"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 0
       10 GETIMPORT                        R0 K3 [script]
       12 GETTABLEKS                       R0 R0 K4 ["Parent"]
       14 GETTABLEKS                       R0 R0 K4 ["Parent"]
       16 GETIMPORT                        R1 K1 [require]
       18 GETTABLEKS                       R2 R0 K6 ["Packages"]
       20 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       22 CALL                             R1 1 1
       23 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       25 GETTABLEKS                       R3 R0 K9 ["Src"]
       27 GETTABLEKS                       R3 R3 K10 ["Resources"]
       29 GETTABLEKS                       R3 R3 K11 ["Localization"]
       31 GETTABLEKS                       R3 R3 K12 ["SourceStrings"]
       33 GETTABLEKS                       R4 R0 K9 ["Src"]
       35 GETTABLEKS                       R4 R4 K10 ["Resources"]
       37 GETTABLEKS                       R4 R4 K11 ["Localization"]
       39 GETTABLEKS                       R4 R4 K13 ["LocalizedStrings"]
       41 DUPTABLE                         R5 K23 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
       42 GETIMPORT                        R6 K24 [plugin]
       44 SETTABLEKS                       R6 R5 K14 ["plugin"]
       46 LOADK                            R6 K25 ["AlignmentTool"]
       47 SETTABLEKS                       R6 R5 K15 ["pluginName"]
       49 SETTABLEKS                       R4 R5 K16 ["translationResourceTable"]
       51 SETTABLEKS                       R3 R5 K17 ["fallbackResourceTable"]
       53 LOADNIL                          R6
       54 SETTABLEKS                       R6 R5 K18 ["overrideLocaleId"]
       56 LOADNIL                          R6
       57 SETTABLEKS                       R6 R5 K19 ["localizationNamespace"]
       59 DUPCLOSURE                       R6 K26 [PROTO_0]
       60 SETTABLEKS                       R6 R5 K20 ["getToolbarName"]
       62 DUPTABLE                         R6 K32 [{"getName", "getDescription", "icon", "text", "clickableWhenViewportHidden"}]
       63 DUPCLOSURE                       R7 K33 [PROTO_1]
       64 SETTABLEKS                       R7 R6 K27 ["getName"]
       66 DUPCLOSURE                       R7 K34 [PROTO_2]
       67 SETTABLEKS                       R7 R6 K28 ["getDescription"]
       69 LOADK                            R7 K35 [""]
       70 SETTABLEKS                       R7 R6 K29 ["icon"]
       72 LOADNIL                          R7
       73 SETTABLEKS                       R7 R6 K30 ["text"]
       75 LOADB                            R7 1
       76 SETTABLEKS                       R7 R6 K31 ["clickableWhenViewportHidden"]
       78 SETTABLEKS                       R6 R5 K21 ["buttonInfo"]
       80 DUPTABLE                         R6 K40 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       81 LOADK                            R7 K25 ["AlignmentTool"]
       82 SETTABLEKS                       R7 R6 K36 ["id"]
       84 GETIMPORT                        R7 K43 [DockWidgetPluginGuiInfo.new]
       86 GETIMPORT                        R8 K47 [Enum.InitialDockState.Left]
       88 LOADB                            R9 0
       89 LOADB                            R10 0
       90 LOADN                            R11 44
       91 LOADN                            R12 250
       92 LOADN                            R13 175
       93 LOADN                            R14 250
       94 CALL                             R7 7 1
       95 SETTABLEKS                       R7 R6 K37 ["dockWidgetPluginGuiInfo"]
       97 DUPCLOSURE                       R7 K48 [PROTO_3]
       98 SETTABLEKS                       R7 R6 K38 ["getDockTitle"]
      100 GETIMPORT                        R7 K51 [Enum.ZIndexBehavior.Sibling]
      102 SETTABLEKS                       R7 R6 K39 ["zIndexBehavior"]
      104 SETTABLEKS                       R6 R5 K22 ["dockWidgetInfo"]
      106 GETTABLEKS                       R6 R2 K52 ["build"]
      108 MOVE                             R7 R5
      109 CALL                             R6 1 1
      110 GETTABLEKS                       R7 R6 K53 ["pluginLoader"]
      112 NAMECALL                         R7 R7 K54 ["waitForUserInteraction"]
      114 CALL                             R7 1 1
      115 JUMPIF                           R7 ; [+1]
      116 RETURN                           R0 0
      117 GETIMPORT                        R8 K1 [require]
      119 GETIMPORT                        R9 K3 [script]
      121 GETTABLEKS                       R9 R9 K4 ["Parent"]
      123 GETTABLEKS                       R9 R9 K55 ["main"]
      125 CALL                             R8 1 1
      126 MOVE                             R9 R8
      127 GETIMPORT                        R10 K24 [plugin]
      129 MOVE                             R11 R6
      130 CALL                             R9 2 0
      131 RETURN                           R0 0
