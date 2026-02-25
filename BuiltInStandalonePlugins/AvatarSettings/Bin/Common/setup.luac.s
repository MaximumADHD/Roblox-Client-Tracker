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
       12 GETUPVAL                         R2 1
       13 GETTABLEKS                       R1 R2 K6 ["mainButton"]
       15 GETUPVAL                         R2 0
       16 SETTABLEKS                       R2 R1 K7 ["Enabled"]
       18 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["DmSessionEnded"]
        2 GETUPVAL                         R4 1
        3 GETTABLEKS                       R3 R4 K1 ["CurrentDataModelType"]
        5 NAMECALL                         R0 R0 K2 ["Invoke"]
        7 CALL                             R0 3 0
        8 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 1
        1 GETTABLEKS                       R0 R1 K0 ["FocusedDataModelSession"]
        3 SETUPVAL                         R0 0
        4 GETUPVAL                         R0 2
        5 LOADK                            R2 K1 ["DmSessionStarted"]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K2 ["CurrentDataModelType"]
        9 NAMECALL                         R0 R0 K3 ["Invoke"]
       11 CALL                             R0 3 0
       12 GETUPVAL                         R0 2
       13 LOADK                            R2 K4 ["DmChanged"]
       14 GETUPVAL                         R4 0
       15 GETTABLEKS                       R3 R4 K2 ["CurrentDataModelType"]
       17 NAMECALL                         R0 R0 K3 ["Invoke"]
       19 CALL                             R0 3 0
       20 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["mainButton"]
        3 LOADB                            R2 1
        4 SETTABLEKS                       R2 R1 K1 ["Enabled"]
        6 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["mainButton"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        6 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R0 R1 K0 ["build"]
        8 GETUPVAL                         R1 2
        9 CALL                             R0 1 1
       10 GETUPVAL                         R2 3
       11 GETTABLEKS                       R1 R2 K1 ["MultipleDocumentInterfaceInstance"]
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
       48 GETUPVAL                         R5 3
       49 GETTABLEKS                       R4 R5 K9 ["Unloading"]
       51 NEWCLOSURE                       R6 P4
       52 CAPTURE                          VAL R0
       53 NAMECALL                         R4 R4 K6 ["Connect"]
       55 CALL                             R4 2 0
       56 GETUPVAL                         R4 4
       57 NAMECALL                         R4 R4 K10 ["Disconnect"]
       59 CALL                             R4 1 0
       60 GETUPVAL                         R4 5
       61 CALL                             R4 0 1
       62 JUMPIF                           R4 ; [+4]
       63 GETUPVAL                         R4 6
       64 GETUPVAL                         R5 3
       65 MOVE                             R6 R0
       66 CALL                             R4 2 0
       67 GETTABLEKS                       R4 R2 K11 ["CurrentDataModelType"]
       69 GETIMPORT                        R5 K15 [Enum.StudioDataModelType.Edit]
       71 JUMPIFEQ                         R4 R5 ; [+2]
       73 LOADB                            R3 0 +1
       74 LOADB                            R3 1
       75 GETTABLEKS                       R4 R0 K16 ["mainButton"]
       77 SETTABLEKS                       R3 R4 K17 ["Enabled"]
       79 GETUPVAL                         R4 3
       80 LOADK                            R6 K3 ["DmChanged"]
       81 GETTABLEKS                       R7 R2 K11 ["CurrentDataModelType"]
       83 NAMECALL                         R4 R4 K18 ["Invoke"]
       85 CALL                             R4 3 0
       86 GETTABLEKS                       R4 R0 K19 ["pluginLoader"]
       88 NAMECALL                         R4 R4 K20 ["waitForUserInteraction"]
       90 CALL                             R4 1 1
       91 JUMPIF                           R4 ; [+2]
       92 CLOSEUPVALS                      R2
       93 RETURN                           R0 0
       94 GETUPVAL                         R5 5
       95 CALL                             R5 0 1
       96 JUMPIFNOT                        R5 ; [+4]
       97 GETUPVAL                         R5 6
       98 GETUPVAL                         R6 3
       99 MOVE                             R7 R0
      100 CALL                             R5 2 0
      101 CLOSEUPVALS                      R2
      102 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["Name"]
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
       24 LOADK                            R4 K17 ["AvatarSettings"]
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
       42 LOADK                            R5 K17 ["AvatarSettings"]
       43 SETTABLEKS                       R5 R4 K19 ["id"]
       45 GETIMPORT                        R5 K26 [DockWidgetPluginGuiInfo.new]
       47 GETIMPORT                        R6 K30 [Enum.InitialDockState.Bottom]
       49 LOADB                            R7 0
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
       73 CAPTURE                          VAL R0
       74 CAPTURE                          REF R4
       75 CAPTURE                          UPVAL U4
       76 CAPTURE                          VAL R1
       77 LOADK                            R9 K36 ["PlaceManager"]
       78 NAMECALL                         R7 R0 K37 ["GetPluginComponent"]
       80 CALL                             R7 2 1
       81 GETTABLEKS                       R8 R7 K38 ["PlaceDocPanelShown"]
       83 MOVE                             R10 R6
       84 NAMECALL                         R8 R8 K39 ["Connect"]
       86 CALL                             R8 2 1
       87 MOVE                             R4 R8
       88 GETIMPORT                        R8 K41 [pcall]
       90 NEWCLOSURE                       R9 P5
       91 CAPTURE                          VAL R7
       92 CALL                             R8 1 2
       93 JUMPIFNOT                        R8 ; [+3]
       94 JUMPIFNOT                        R9 ; [+2]
       95 MOVE                             R10 R6
       96 CALL                             R10 0 0
       97 CLOSEUPVALS                      R4
       98 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarSettings"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["PluginLoaderBuilder"]
       16 GETTABLEKS                       R6 R0 K9 ["Src"]
       18 GETTABLEKS                       R5 R6 K10 ["Resources"]
       20 GETTABLEKS                       R4 R5 K11 ["Localization"]
       22 GETTABLEKS                       R3 R4 K12 ["SourceStrings"]
       24 GETTABLEKS                       R7 R0 K9 ["Src"]
       26 GETTABLEKS                       R6 R7 K10 ["Resources"]
       28 GETTABLEKS                       R5 R6 K11 ["Localization"]
       30 GETTABLEKS                       R4 R5 K13 ["LocalizedStrings"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R8 R0 K9 ["Src"]
       36 GETTABLEKS                       R7 R8 K14 ["Flags"]
       38 GETTABLEKS                       R6 R7 K15 ["getFFlagAvatarSettingsFixMainOrdering"]
       40 CALL                             R5 1 1
       41 DUPCLOSURE                       R6 K16 [PROTO_11]
       42 CAPTURE                          VAL R0
       43 CAPTURE                          VAL R4
       44 CAPTURE                          VAL R3
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R5
       47 RETURN                           R6 1
