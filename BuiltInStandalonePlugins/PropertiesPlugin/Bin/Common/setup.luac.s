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
        5 DUPTABLE                         R2 K9 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = False, ["clickableWhenViewportHidden"] = True}]
        6 DUPCLOSURE                       R3 K10 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K11 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 DUPTABLE                         R3 K19 [{["plugin"], ["pluginName"] = "PropertiesPlugin", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["buttonInfo"]}]
       13 SETTABLEKS                       R0 R3 K12 ["plugin"]
       15 GETUPVAL                         R4 1
       16 SETTABLEKS                       R4 R3 K15 ["translationResourceTable"]
       18 GETUPVAL                         R4 2
       19 SETTABLEKS                       R4 R3 K16 ["fallbackResourceTable"]
       21 DUPCLOSURE                       R4 K20 [PROTO_2]
       22 SETTABLEKS                       R4 R3 K17 ["getToolbarName"]
       24 SETTABLEKS                       R2 R3 K18 ["buttonInfo"]
       26 LOADB                            R4 1
       27 SETTABLEKS                       R4 R2 K5 ["enabled"]
       29 DUPTABLE                         R4 K26 [{["id"] = "PropertiesPlugin", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"], ["keyboardNavigationEnabled"] = True}]
       30 GETIMPORT                        R5 K29 [DockWidgetPluginGuiInfo.new]
       32 GETIMPORT                        R6 K33 [Enum.InitialDockState.Right]
       34 LOADB                            R7 1
       35 LOADB                            R8 0
       36 LOADN                            R9 640
       37 LOADN                            R10 480
       38 LOADN                            R11 250
       39 LOADN                            R12 200
       40 CALL                             R5 7 1
       41 SETTABLEKS                       R5 R4 K22 ["dockWidgetPluginGuiInfo"]
       43 DUPCLOSURE                       R5 K34 [PROTO_3]
       44 SETTABLEKS                       R5 R4 K23 ["getDockTitle"]
       46 GETIMPORT                        R5 K37 [Enum.ZIndexBehavior.Sibling]
       48 SETTABLEKS                       R5 R4 K24 ["zIndexBehavior"]
       50 SETTABLEKS                       R4 R3 K38 ["dockWidgetInfo"]
       52 LOADNIL                          R4
       53 LOADB                            R5 0
       54 NEWCLOSURE                       R6 P4
       55 CAPTURE                          REF R5
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R3
       58 CAPTURE                          REF R4
       59 CAPTURE                          VAL R1
       60 CAPTURE                          VAL R0
       61 LOADK                            R9 K39 ["PlaceManager"]
       62 NAMECALL                         R7 R0 K40 ["GetPluginComponent"]
       64 CALL                             R7 2 1
       65 GETTABLEKS                       R8 R7 K41 ["PlaceDocPanelShown"]
       67 MOVE                             R10 R6
       68 NAMECALL                         R8 R8 K42 ["Connect"]
       70 CALL                             R8 2 1
       71 MOVE                             R4 R8
       72 GETIMPORT                        R8 K44 [pcall]
       74 NEWCLOSURE                       R9 P5
       75 CAPTURE                          VAL R7
       76 CALL                             R8 1 2
       77 JUMPIFNOT                        R8 ; [+23]
       78 JUMPIFNOT                        R9 ; [+22]
       79 JUMPIFNOT                        R5 ; [+1]
       80 JUMP                             ; [+20]
       81 LOADB                            R5 1
       82 GETUPVAL                         R10 3
       83 GETTABLEKS                       R10 R10 K45 ["build"]
       85 MOVE                             R11 R3
       86 CALL                             R10 1 1
       87 GETTABLEKS                       R11 R10 K46 ["pluginLoader"]
       89 NAMECALL                         R11 R11 K47 ["waitForUserInteraction"]
       91 CALL                             R11 1 1
       92 JUMPIF                           R11 ; [+1]
       93 JUMP                             ; [+7]
       94 NAMECALL                         R12 R4 K48 ["Disconnect"]
       96 CALL                             R12 1 0
       97 MOVE                             R12 R1
       98 MOVE                             R13 R0
       99 MOVE                             R14 R10
      100 CALL                             R12 2 0
      101 CLOSEUPVALS                      R4
      102 RETURN                           R0 0

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
