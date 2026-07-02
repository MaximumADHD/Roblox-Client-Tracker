PROTO_0:
        0 LOADK                            R3 K0 ["AvatarSettingsButton"]
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
        0 LOADK                            R3 K0 ["AvatarSettingsToolbar"]
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
        0 GETIMPORT                        R1 K3 [Enum.StudioDataModelType.None]
        2 JUMPIFNOTEQ                      R0 R1 ; [+2]
        4 RETURN                           R0 0
        5 GETIMPORT                        R2 K5 [Enum.StudioDataModelType.Edit]
        7 JUMPIFEQ                         R0 R2 ; [+2]
        9 LOADB                            R1 0 +1
       10 LOADB                            R1 1
       11 SETUPVAL                         R1 0
       12 GETUPVAL                         R1 1
       13 GETTABLEKS                       R1 R1 K6 ["mainButton"]
       15 GETUPVAL                         R2 0
       16 SETTABLEKS                       R2 R1 K7 ["Enabled"]
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DmSessionEnded"]
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R3 R3 K1 ["CurrentDataModelType"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 1
        1 GETTABLEKS                       R0 R0 K0 ["FocusedDataModelSession"]
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 2
        5 LOADK                            R2 K1 ["DmSessionStarted"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K2 ["CurrentDataModelType"]
        9 NAMECALL                         R0 R0 K3 ["Invoke"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 2
       13 LOADK                            R2 K4 ["DmChanged"]
       14 GETUPVAL                         R3 0
       15 GETTABLEKS                       R3 R3 K2 ["CurrentDataModelType"]
       17 NAMECALL                         R0 R0 K3 ["Invoke"]
       19 CALL                             R0 3 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["mainButton"]
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K1 ["Enabled"]
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["mainButton"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 GETTABLEKS                       R0 R0 K0 ["build"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 1
       10 GETUPVAL                         R1 3
       11 GETTABLEKS                       R1 R1 K1 ["MultipleDocumentInterfaceInstance"]
       13 GETTABLEKS                       R2 R1 K2 ["FocusedDataModelSession"]
       15 LOADB                            R3 1
       16 GETUPVAL                         R4 3
       17 LOADK                            R6 K3 ["DmChanged"]
       18 NEWCLOSURE                       R7 P0
       19 CAPTURE                          REF R3
       20 CAPTURE                          VAL R0
       21 NAMECALL                         R4 R4 K4 ["OnInvoke"]
       23 CALL                             R4 3 0
       24 GETTABLEKS                       R4 R1 K5 ["DataModelSessionEnded"]
       26 NEWCLOSURE                       R6 P1
       27 CAPTURE                          UPVAL U3
       28 CAPTURE                          REF R2
       29 NAMECALL                         R4 R4 K6 ["Connect"]
       31 CALL                             R4 2 0
       32 GETTABLEKS                       R4 R1 K7 ["DataModelSessionStarted"]
       34 NEWCLOSURE                       R6 P2
       35 CAPTURE                          REF R2
       36 CAPTURE                          VAL R1
       37 CAPTURE                          UPVAL U3
       38 NAMECALL                         R4 R4 K6 ["Connect"]
       40 CALL                             R4 2 0
       41 GETUPVAL                         R4 3
       42 LOADK                            R6 K8 ["DmSessionEnded"]
       43 NEWCLOSURE                       R7 P3
       44 CAPTURE                          VAL R0
       45 NAMECALL                         R4 R4 K4 ["OnInvoke"]
       47 CALL                             R4 3 0
       48 GETUPVAL                         R4 3
       49 GETTABLEKS                       R4 R4 K9 ["Unloading"]
       51 NEWCLOSURE                       R6 P4
       52 CAPTURE                          VAL R0
       53 NAMECALL                         R4 R4 K6 ["Connect"]
       55 CALL                             R4 2 0
       56 GETUPVAL                         R4 4
       57 NAMECALL                         R4 R4 K10 ["Disconnect"]
       59 CALL                             R4 1 0
       60 GETTABLEKS                       R4 R2 K11 ["CurrentDataModelType"]
       62 GETIMPORT                        R5 K15 [Enum.StudioDataModelType.Edit]
       64 JUMPIFEQ                         R4 R5 ; [+2]
       66 LOADB                            R3 0 +1
       67 LOADB                            R3 1
       68 GETTABLEKS                       R4 R0 K16 ["mainButton"]
       70 SETTABLEKS                       R3 R4 K17 ["Enabled"]
       72 GETUPVAL                         R4 3
       73 LOADK                            R6 K3 ["DmChanged"]
       74 GETTABLEKS                       R7 R2 K11 ["CurrentDataModelType"]
       76 NAMECALL                         R4 R4 K18 ["Invoke"]
       78 CALL                             R4 3 0
       79 GETTABLEKS                       R4 R0 K19 ["pluginLoader"]
       81 NAMECALL                         R4 R4 K20 ["waitForUserInteraction"]
       83 CALL                             R4 1 1
       84 JUMPIF                           R4 ; [+2]
       85 CLOSEUPVALS                      R2
       86 RETURN                           R0 0
       87 GETUPVAL                         R5 5
       88 GETUPVAL                         R6 3
       89 MOVE                             R7 R0
       90 CALL                             R5 2 0
       91 CLOSEUPVALS                      R2
       92 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 DUPTABLE                         R2 K9 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = False, ["clickableWhenViewportHidden"] = True}]
        6 DUPCLOSURE                       R3 K10 [PROTO_0]
        7 SETTABLEKS                       R3 R2 K1 ["getName"]
        9 DUPCLOSURE                       R3 K11 [PROTO_1]
       10 SETTABLEKS                       R3 R2 K2 ["getDescription"]
       12 DUPTABLE                         R3 K19 [{["plugin"], ["pluginName"] = "AvatarSettings", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["buttonInfo"]}]
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
       29 DUPTABLE                         R4 K25 [{["id"] = "AvatarSettings", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       30 GETIMPORT                        R5 K28 [DockWidgetPluginGuiInfo.new]
       32 GETIMPORT                        R6 K32 [Enum.InitialDockState.Bottom]
       34 LOADB                            R7 0
       35 LOADB                            R8 0
       36 LOADN                            R9 640
       37 LOADN                            R10 480
       38 LOADN                            R11 250
       39 LOADN                            R12 200
       40 CALL                             R5 7 1
       41 SETTABLEKS                       R5 R4 K22 ["dockWidgetPluginGuiInfo"]
       43 DUPCLOSURE                       R5 K33 [PROTO_3]
       44 SETTABLEKS                       R5 R4 K23 ["getDockTitle"]
       46 GETIMPORT                        R5 K36 [Enum.ZIndexBehavior.Sibling]
       48 SETTABLEKS                       R5 R4 K24 ["zIndexBehavior"]
       50 SETTABLEKS                       R4 R3 K37 ["dockWidgetInfo"]
       52 LOADNIL                          R4
       53 LOADB                            R5 0
       54 NEWCLOSURE                       R6 P4
       55 CAPTURE                          REF R5
       56 CAPTURE                          UPVAL U3
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R0
       59 CAPTURE                          REF R4
       60 CAPTURE                          VAL R1
       61 LOADK                            R9 K38 ["PlaceManager"]
       62 NAMECALL                         R7 R0 K39 ["GetPluginComponent"]
       64 CALL                             R7 2 1
       65 GETTABLEKS                       R8 R7 K40 ["PlaceDocPanelShown"]
       67 MOVE                             R10 R6
       68 NAMECALL                         R8 R8 K41 ["Connect"]
       70 CALL                             R8 2 1
       71 MOVE                             R4 R8
       72 GETIMPORT                        R8 K43 [pcall]
       74 NEWCLOSURE                       R9 P5
       75 CAPTURE                          VAL R7
       76 CALL                             R8 1 2
       77 JUMPIFNOT                        R8 ; [+3]
       78 JUMPIFNOT                        R9 ; [+2]
       79 MOVE                             R10 R6
       80 CALL                             R10 0 0
       81 CLOSEUPVALS                      R4
       82 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
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
       32 DUPCLOSURE                       R5 K14 [PROTO_11]
       33 CAPTURE                          VAL R0
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R3
       36 CAPTURE                          VAL R2
       37 RETURN                           R5 1
