PROTO_0:
        0 LOADK                            R0 K0 ["tagEditorToolbar"]
        1 RETURN                           R0 1

PROTO_1:
        0 LOADK                            R0 K0 ["TagEditor"]
        1 RETURN                           R0 1

PROTO_2:
        0 LOADK                            R3 K0 [""]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["ImprovePluginSpeed_TagEditor"]
        4 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        6 CALL                             R0 2 1
        7 JUMPIF                           R0 ; [+1]
        8 RETURN                           R0 0
        9 GETIMPORT                        R0 K5 [script]
       11 GETTABLEKS                       R0 R0 K6 ["Parent"]
       13 GETTABLEKS                       R0 R0 K6 ["Parent"]
       15 GETIMPORT                        R1 K8 [require]
       17 GETTABLEKS                       R2 R0 K9 ["Src"]
       19 GETTABLEKS                       R2 R2 K10 ["Util"]
       21 GETTABLEKS                       R2 R2 K11 ["shouldPluginRun"]
       23 CALL                             R1 1 1
       24 GETIMPORT                        R2 K8 [require]
       26 GETIMPORT                        R3 K5 [script]
       28 GETTABLEKS                       R3 R3 K6 ["Parent"]
       30 GETTABLEKS                       R3 R3 K12 ["defineLuaFlags"]
       32 CALL                             R2 1 0
       33 MOVE                             R2 R1
       34 CALL                             R2 0 1
       35 JUMPIF                           R2 ; [+1]
       36 RETURN                           R0 0
       37 GETIMPORT                        R2 K8 [require]
       39 GETTABLEKS                       R3 R0 K13 ["Packages"]
       41 GETTABLEKS                       R3 R3 K14 ["PluginLoader"]
       43 CALL                             R2 1 1
       44 GETTABLEKS                       R3 R2 K15 ["PluginLoaderBuilder"]
       46 GETTABLEKS                       R4 R0 K9 ["Src"]
       48 GETTABLEKS                       R4 R4 K16 ["Resources"]
       50 GETTABLEKS                       R4 R4 K17 ["Localization"]
       52 GETTABLEKS                       R4 R4 K18 ["SourceStrings"]
       54 GETTABLEKS                       R5 R0 K9 ["Src"]
       56 GETTABLEKS                       R5 R5 K16 ["Resources"]
       58 GETTABLEKS                       R5 R5 K17 ["Localization"]
       60 GETTABLEKS                       R5 R5 K19 ["LocalizedStrings"]
       62 DUPTABLE                         R6 K29 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo"}]
       63 GETIMPORT                        R7 K30 [plugin]
       65 SETTABLEKS                       R7 R6 K20 ["plugin"]
       67 LOADK                            R7 K31 ["TagEditor"]
       68 SETTABLEKS                       R7 R6 K21 ["pluginName"]
       70 SETTABLEKS                       R5 R6 K22 ["translationResourceTable"]
       72 SETTABLEKS                       R4 R6 K23 ["fallbackResourceTable"]
       74 LOADNIL                          R7
       75 SETTABLEKS                       R7 R6 K24 ["overrideLocaleId"]
       77 LOADNIL                          R7
       78 SETTABLEKS                       R7 R6 K25 ["localizationNamespace"]
       80 DUPCLOSURE                       R7 K32 [PROTO_0]
       81 SETTABLEKS                       R7 R6 K26 ["getToolbarName"]
       83 DUPTABLE                         R7 K38 [{"getName", "getDescription", "icon", "text", "ClickableWhenViewportHidden"}]
       84 DUPCLOSURE                       R8 K39 [PROTO_1]
       85 SETTABLEKS                       R8 R7 K33 ["getName"]
       87 DUPCLOSURE                       R8 K40 [PROTO_2]
       88 SETTABLEKS                       R8 R7 K34 ["getDescription"]
       90 LOADK                            R8 K41 [""]
       91 SETTABLEKS                       R8 R7 K35 ["icon"]
       93 LOADNIL                          R8
       94 SETTABLEKS                       R8 R7 K36 ["text"]
       96 LOADB                            R8 1
       97 SETTABLEKS                       R8 R7 K37 ["ClickableWhenViewportHidden"]
       99 SETTABLEKS                       R7 R6 K27 ["buttonInfo"]
      101 DUPTABLE                         R7 K46 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
      102 LOADK                            R8 K31 ["TagEditor"]
      103 SETTABLEKS                       R8 R7 K42 ["id"]
      105 GETIMPORT                        R8 K49 [DockWidgetPluginGuiInfo.new]
      107 GETIMPORT                        R9 K53 [Enum.InitialDockState.Right]
      109 LOADB                            R10 0
      110 LOADB                            R11 0
      111 LOADN                            R12 44
      112 LOADN                            R13 200
      113 LOADN                            R14 200
      114 LOADN                            R15 250
      115 CALL                             R8 7 1
      116 SETTABLEKS                       R8 R7 K43 ["dockWidgetPluginGuiInfo"]
      118 DUPCLOSURE                       R8 K54 [PROTO_3]
      119 SETTABLEKS                       R8 R7 K44 ["getDockTitle"]
      121 GETIMPORT                        R8 K57 [Enum.ZIndexBehavior.Sibling]
      123 SETTABLEKS                       R8 R7 K45 ["zIndexBehavior"]
      125 SETTABLEKS                       R7 R6 K28 ["dockWidgetInfo"]
      127 GETTABLEKS                       R7 R3 K58 ["build"]
      129 MOVE                             R8 R6
      130 CALL                             R7 1 1
      131 GETTABLEKS                       R8 R7 K59 ["pluginLoader"]
      133 NAMECALL                         R8 R8 K60 ["waitForUserInteraction"]
      135 CALL                             R8 1 1
      136 JUMPIF                           R8 ; [+1]
      137 RETURN                           R0 0
      138 GETIMPORT                        R9 K8 [require]
      140 GETIMPORT                        R10 K5 [script]
      142 GETTABLEKS                       R10 R10 K6 ["Parent"]
      144 GETTABLEKS                       R10 R10 K61 ["main"]
      146 CALL                             R9 1 1
      147 MOVE                             R10 R9
      148 GETIMPORT                        R11 K30 [plugin]
      150 MOVE                             R12 R7
      151 CALL                             R10 2 0
      152 RETURN                           R0 0
