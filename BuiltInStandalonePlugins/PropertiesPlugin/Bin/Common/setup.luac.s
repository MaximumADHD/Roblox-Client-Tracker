PROTO_0:
        0 LOADK                            R3 K0 ["PropertiesPluginButton"]
        1 RETURN                           R3 1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_2:
        0 LOADK                            R3 K0 ["PropertiesPluginToolbar"]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["build"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 1
       10 GETTABLEKS                       R1 R0 K1 ["pluginLoader"]
       12 NAMECALL                         R1 R1 K2 ["waitForUserInteraction"]
       14 CALL                             R1 1 1
       15 JUMPIF                           R1 ; [+1]
       16 RETURN                           R0 0
       17 GETUPVAL                         R2 3
       18 NAMECALL                         R2 R2 K3 ["Disconnect"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 4
       22 GETUPVAL                         R3 5
       23 MOVE                             R4 R0
       24 CALL                             R2 2 0
       25 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K6 [{"getName", "getDescription", "icon", "enabled", "clickableWhenViewportHidden"}]
        6 DUPCLOSURE                       R3 K7 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K8 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 LOADK                            R3 K9 [""]
       13 SETTABLEKS                       R3 R2 K3 ["icon"]
       15 LOADB                            R3 0
       16 SETTABLEKS                       R3 R2 K4 ["enabled"]
       18 LOADB                            R3 1
       19 SETTABLEKS                       R3 R2 K5 ["clickableWhenViewportHidden"]
       21 DUPTABLE                         R3 K16 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "getToolbarName", "buttonInfo"}]
       22 SETTABLEKS                       R0 R3 K10 ["plugin"]
       24 LOADK                            R4 K17 ["PropertiesPlugin"]
       25 SETTABLEKS                       R4 R3 K11 ["pluginName"]
       27 GETUPVAL                         R4 1
       28 SETTABLEKS                       R4 R3 K12 ["translationResourceTable"]
       30 GETUPVAL                         R4 2
       31 SETTABLEKS                       R4 R3 K13 ["fallbackResourceTable"]
       33 DUPCLOSURE                       R4 K18 [PROTO_2]
       34 SETTABLEKS                       R4 R3 K14 ["getToolbarName"]
       36 SETTABLEKS                       R2 R3 K15 ["buttonInfo"]
       38 LOADB                            R4 1
       39 SETTABLEKS                       R4 R2 K4 ["enabled"]
       41 DUPTABLE                         R4 K23 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       42 LOADK                            R5 K17 ["PropertiesPlugin"]
       43 SETTABLEKS                       R5 R4 K19 ["id"]
       45 GETIMPORT                        R5 K26 [DockWidgetPluginGuiInfo.new]
       47 GETIMPORT                        R6 K30 [Enum.InitialDockState.Right]
       49 LOADB                            R7 1
       50 LOADB                            R8 0
       51 LOADN                            R9 128
       52 LOADN                            R10 224
       53 LOADN                            R11 250
       54 LOADN                            R12 200
       55 CALL                             R5 7 1
       56 SETTABLEKS                       R5 R4 K20 ["dockWidgetPluginGuiInfo"]
       58 DUPCLOSURE                       R5 K31 [PROTO_3]
       59 SETTABLEKS                       R5 R4 K21 ["getDockTitle"]
       61 GETIMPORT                        R5 K34 [Enum.ZIndexBehavior.Sibling]
       63 SETTABLEKS                       R5 R4 K22 ["zIndexBehavior"]
       65 SETTABLEKS                       R4 R3 K35 ["dockWidgetInfo"]
       67 LOADNIL                          R4
       68 LOADB                            R5 0
       69 NEWCLOSURE                       R6 P4
       70 CAPTURE                          REF R5
       71 CAPTURE                          UPVAL U3
       72 CAPTURE                          VAL R3
       73 CAPTURE                          REF R4
       74 CAPTURE                          VAL R1
       75 CAPTURE                          VAL R0
       76 LOADK                            R9 K36 ["PlaceManager"]
       77 NAMECALL                         R7 R0 K37 ["GetPluginComponent"]
       79 CALL                             R7 2 1
       80 GETTABLEKS                       R8 R7 K38 ["PlaceDocPanelShown"]
       82 MOVE                             R10 R6
       83 NAMECALL                         R8 R8 K39 ["Connect"]
       85 CALL                             R8 2 1
       86 MOVE                             R4 R8
       87 GETIMPORT                        R8 K41 [pcall]
       89 NEWCLOSURE                       R9 P5
       90 CAPTURE                          VAL R7
       91 CALL                             R8 1 2
       92 JUMPIFNOT                        R8 ; [+23]
       93 JUMPIFNOT                        R9 ; [+22]
       94 JUMPIFNOT                        R5 ; [+1]
       95 JUMP                             ; [+20]
       96 LOADB                            R5 1
       97 GETUPVAL                         R10 3
       98 GETTABLEKS                       R10 R10 K42 ["build"]
      100 MOVE                             R11 R3
      101 CALL                             R10 1 1
      102 GETTABLEKS                       R11 R10 K43 ["pluginLoader"]
      104 NAMECALL                         R11 R11 K44 ["waitForUserInteraction"]
      106 CALL                             R11 1 1
      107 JUMPIF                           R11 ; [+1]
      108 JUMP                             ; [+7]
      109 NAMECALL                         R12 R4 K45 ["Disconnect"]
      111 CALL                             R12 1 0
      112 MOVE                             R12 R1
      113 MOVE                             R13 R0
      114 MOVE                             R14 R10
      115 CALL                             R12 2 0
      116 CLOSEUPVALS                      R4
      117 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PropertiesPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R3 R0 K9 ["Src"]
       18 GETTABLEKS                       R3 R3 K10 ["Resources"]
       20 GETTABLEKS                       R3 R3 K11 ["Localization"]
       22 GETTABLEKS                       R3 R3 K12 ["SourceStrings"]
       24 GETTABLEKS                       R4 R0 K9 ["Src"]
       26 GETTABLEKS                       R4 R4 K10 ["Resources"]
       28 GETTABLEKS                       R4 R4 K11 ["Localization"]
       30 GETTABLEKS                       R4 R4 K13 ["LocalizedStrings"]
       32 DUPCLOSURE                       R5 K14 [PROTO_6]
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 RETURN                           R5 1
