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
       41 GETIMPORT                        R5 K15 [game]
       43 LOADK                            R7 K16 ["AlignToolEnableKeyboardNav"]
       44 LOADB                            R8 0
       45 NAMECALL                         R5 R5 K17 ["DefineFastFlag"]
       47 CALL                             R5 3 1
       48 DUPTABLE                         R6 K29 [{["plugin"], ["pluginName"] = "AlignmentTool", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"]}]
       49 GETIMPORT                        R7 K30 [plugin]
       51 SETTABLEKS                       R7 R6 K18 ["plugin"]
       53 SETTABLEKS                       R4 R6 K21 ["translationResourceTable"]
       55 SETTABLEKS                       R3 R6 K22 ["fallbackResourceTable"]
       57 DUPCLOSURE                       R7 K31 [PROTO_0]
       58 SETTABLEKS                       R7 R6 K26 ["getToolbarName"]
       60 DUPTABLE                         R7 K39 [{["getName"], ["getDescription"], ["icon"] = "", ["text"] = , ["clickableWhenViewportHidden"] = True}]
       61 DUPCLOSURE                       R8 K40 [PROTO_1]
       62 SETTABLEKS                       R8 R7 K32 ["getName"]
       64 DUPCLOSURE                       R8 K41 [PROTO_2]
       65 SETTABLEKS                       R8 R7 K33 ["getDescription"]
       67 SETTABLEKS                       R7 R6 K27 ["buttonInfo"]
       69 DUPTABLE                         R7 K47 [{["id"] = "AlignmentTool", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"], ["keyboardNavigationEnabled"]}]
       70 GETIMPORT                        R8 K50 [DockWidgetPluginGuiInfo.new]
       72 GETIMPORT                        R9 K54 [Enum.InitialDockState.Left]
       74 LOADB                            R10 0
       75 LOADB                            R11 0
       76 LOADN                            R12 300
       77 LOADN                            R13 250
       78 LOADN                            R14 175
       79 LOADN                            R15 250
       80 CALL                             R8 7 1
       81 SETTABLEKS                       R8 R7 K43 ["dockWidgetPluginGuiInfo"]
       83 DUPCLOSURE                       R8 K55 [PROTO_3]
       84 SETTABLEKS                       R8 R7 K44 ["getDockTitle"]
       86 GETIMPORT                        R8 K58 [Enum.ZIndexBehavior.Sibling]
       88 SETTABLEKS                       R8 R7 K45 ["zIndexBehavior"]
       90 JUMPIFNOT                        R5 ; [+2]
       91 LOADB                            R8 1
       92 JUMP                             ; [+1]
       93 LOADNIL                          R8
       94 SETTABLEKS                       R8 R7 K46 ["keyboardNavigationEnabled"]
       96 SETTABLEKS                       R7 R6 K28 ["dockWidgetInfo"]
       98 GETTABLEKS                       R7 R2 K59 ["build"]
      100 MOVE                             R8 R6
      101 CALL                             R7 1 1
      102 GETTABLEKS                       R8 R7 K60 ["pluginLoader"]
      104 NAMECALL                         R8 R8 K61 ["waitForUserInteraction"]
      106 CALL                             R8 1 1
      107 JUMPIF                           R8 ; [+1]
      108 RETURN                           R0 0
      109 GETIMPORT                        R9 K1 [require]
      111 GETIMPORT                        R10 K3 [script]
      113 GETTABLEKS                       R10 R10 K4 ["Parent"]
      115 GETTABLEKS                       R10 R10 K62 ["main"]
      117 CALL                             R9 1 1
      118 MOVE                             R10 R9
      119 GETIMPORT                        R11 K30 [plugin]
      121 MOVE                             R12 R7
      122 CALL                             R10 2 0
      123 RETURN                           R0 0
