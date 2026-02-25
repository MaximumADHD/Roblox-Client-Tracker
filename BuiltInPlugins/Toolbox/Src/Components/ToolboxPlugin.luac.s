PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["dockWidget"]
        3 GETTABLEKS                       R1 R2 K1 ["Enabled"]
        5 JUMPIFNOTEQKB                    R1 FALSE ; [+7]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K2 ["props"]
       10 GETTABLEKS                       R1 R2 K3 ["stopAllSounds"]
       12 CALL                             R1 0 0
       13 GETUPVAL                         R2 0
       14 GETTABLEKS                       R1 R2 K4 ["toolboxButton"]
       16 GETUPVAL                         R5 0
       17 GETTABLEKS                       R4 R5 K0 ["dockWidget"]
       19 GETTABLEKS                       R3 R4 K1 ["Enabled"]
       21 NAMECALL                         R1 R1 K5 ["SetActive"]
       23 CALL                             R1 2 0
       24 GETUPVAL                         R3 0
       25 GETTABLEKS                       R2 R3 K0 ["dockWidget"]
       27 GETTABLEKS                       R1 R2 K1 ["Enabled"]
       29 JUMPIFNOT                        R1 ; [+5]
       30 GETUPVAL                         R2 1
       31 GETTABLEKS                       R1 R2 K6 ["onToolboxDisplayed"]
       33 CALL                             R1 0 0
       34 RETURN                           R0 0
       35 GETUPVAL                         R2 1
       36 GETTABLEKS                       R1 R2 K7 ["onToolboxHidden"]
       38 CALL                             R1 0 0
       39 RETURN                           R0 0

PROTO_1:
        0 JUMPIF                           R2 ; [+12]
        1 GETUPVAL                         R5 0
        2 GETTABLEKS                       R4 R5 K0 ["props"]
        4 GETTABLEKS                       R3 R4 K1 ["onPluginWillDestroy"]
        6 JUMPIFNOT                        R3 ; [+6]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K0 ["props"]
       10 GETTABLEKS                       R3 R4 K1 ["onPluginWillDestroy"]
       12 CALL                             R3 0 0
       13 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 SETTABLEKS                       R0 R1 K0 ["dockWidget"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["toolboxButton"]
        6 GETUPVAL                         R5 0
        7 GETTABLEKS                       R4 R5 K0 ["dockWidget"]
        9 GETTABLEKS                       R3 R4 K2 ["Enabled"]
       11 NAMECALL                         R1 R1 K3 ["SetActive"]
       13 CALL                             R1 2 0
       14 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["dockWidget"]
        3 GETTABLEKS                       R0 R1 K1 ["AbsoluteSize"]
        5 GETUPVAL                         R1 1
        6 JUMPIFEQKNIL                     R1 ; [+15]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R1 R2 K2 ["X"]
       11 GETTABLEKS                       R2 R0 K2 ["X"]
       13 JUMPIFNOTEQ                      R1 R2 ; [+8]
       15 GETUPVAL                         R2 1
       16 GETTABLEKS                       R1 R2 K3 ["Y"]
       18 GETTABLEKS                       R2 R0 K3 ["Y"]
       20 JUMPIFEQ                         R1 R2 ; [+7]
       22 GETUPVAL                         R2 2
       23 GETTABLEKS                       R1 R2 K4 ["onToolboxWidgetInteraction"]
       25 MOVE                             R2 R0
       26 CALL                             R1 1 0
       27 SETUPVAL                         R0 1
       28 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 SETTABLEKS                       R2 R0 K0 ["theme"]
        4 GETTABLEKS                       R2 R1 K1 ["localization"]
        6 SETTABLEKS                       R2 R0 K1 ["localization"]
        8 GETTABLEKS                       R2 R1 K2 ["plugin"]
       10 SETTABLEKS                       R2 R0 K2 ["plugin"]
       12 GETTABLEKS                       R2 R0 K2 ["plugin"]
       14 JUMPIF                           R2 ; [+4]
       15 GETIMPORT                        R2 K4 [error]
       17 LOADK                            R3 K5 ["ToolboxPlugin component requires plugin to be passed as prop"]
       18 CALL                             R2 1 0
       19 DUPTABLE                         R2 K8 [{"enabled", "pluginGui"}]
       20 LOADB                            R3 1
       21 SETTABLEKS                       R3 R2 K6 ["enabled"]
       23 LOADNIL                          R3
       24 SETTABLEKS                       R3 R2 K7 ["pluginGui"]
       26 SETTABLEKS                       R2 R0 K9 ["state"]
       28 GETTABLEKS                       R3 R1 K10 ["pluginLoaderContext"]
       30 GETTABLEKS                       R2 R3 K11 ["toolbar"]
       32 SETTABLEKS                       R2 R0 K11 ["toolbar"]
       34 GETTABLEKS                       R3 R1 K10 ["pluginLoaderContext"]
       36 GETTABLEKS                       R2 R3 K12 ["mainButton"]
       38 SETTABLEKS                       R2 R0 K13 ["toolboxButton"]
       40 GETUPVAL                         R3 1
       41 GETTABLEKS                       R2 R3 K14 ["setPluginUri"]
       43 GETTABLEKS                       R3 R0 K2 ["plugin"]
       45 NAMECALL                         R3 R3 K15 ["GetUri"]
       47 CALL                             R3 1 -1
       48 CALL                             R2 -1 0
       49 NEWCLOSURE                       R2 P0
       50 CAPTURE                          VAL R0
       51 CAPTURE                          UPVAL U1
       52 SETTABLEKS                       R2 R0 K16 ["onDockWidgetEnabledChanged"]
       54 NEWCLOSURE                       R2 P1
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R2 R0 K17 ["onAncestryChanged"]
       58 NEWCLOSURE                       R2 P2
       59 CAPTURE                          VAL R0
       60 SETTABLEKS                       R2 R0 K18 ["dockWidgetRefFunc"]
       62 LOADNIL                          R2
       63 NEWCLOSURE                       R3 P3
       64 CAPTURE                          VAL R0
       65 CAPTURE                          REF R2
       66 CAPTURE                          UPVAL U1
       67 SETTABLEKS                       R3 R0 K19 ["onDockWidgetInteraction"]
       69 CLOSEUPVALS                      R2
       70 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dockWidget"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K0 ["dockWidget"]
        6 GETTABLEKS                       R2 R3 K1 ["Enabled"]
        8 NOT                              R1 R2
        9 SETTABLEKS                       R1 R0 K1 ["Enabled"]
       11 GETUPVAL                         R2 0
       12 GETTABLEKS                       R1 R2 K0 ["dockWidget"]
       14 GETTABLEKS                       R0 R1 K1 ["Enabled"]
       16 JUMPIFNOT                        R0 ; [+5]
       17 GETUPVAL                         R1 1
       18 GETTABLEKS                       R0 R1 K2 ["onPluginButtonClickOpen"]
       20 CALL                             R0 0 0
       21 RETURN                           R0 0
       22 GETUPVAL                         R1 1
       23 GETTABLEKS                       R0 R1 K3 ["onPluginButtonClickClose"]
       25 CALL                             R0 0 0
       26 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dockWidget"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["dockWidget"]
        9 NAMECALL                         R0 R0 K2 ["RequestRaise"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dockWidget"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["dockWidget"]
        9 NAMECALL                         R0 R0 K2 ["RequestRaise"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["dockWidget"]
        3 LOADB                            R1 1
        4 SETTABLEKS                       R1 R0 K1 ["Enabled"]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R0 R1 K0 ["dockWidget"]
        9 NAMECALL                         R0 R0 K2 ["RequestRaise"]
       11 CALL                             R0 1 0
       12 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R3 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R3 K1 ["pluginLoaderContext"]
        4 GETTABLEKS                       R1 R2 K2 ["mainButtonClickedSignal"]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 NAMECALL                         R1 R1 K3 ["Connect"]
       11 CALL                             R1 2 0
       12 GETUPVAL                         R1 1
       13 NAMECALL                         R1 R1 K4 ["getStartupAssetId"]
       15 CALL                             R1 1 1
       16 JUMPIFNOT                        R1 ; [+9]
       17 LENGTH                           R2 R1
       18 LOADN                            R3 0
       19 JUMPIFNOTLT                      R3 R2 ; [+6]
       21 GETTABLEKS                       R2 R0 K5 ["dockWidget"]
       23 LOADB                            R3 1
       24 SETTABLEKS                       R3 R2 K6 ["Enabled"]
       26 GETTABLEKS                       R2 R0 K7 ["onDockWidgetEnabledChanged"]
       28 GETTABLEKS                       R3 R0 K5 ["dockWidget"]
       30 CALL                             R2 1 0
       31 GETTABLEKS                       R3 R0 K5 ["dockWidget"]
       33 GETTABLEKS                       R2 R3 K8 ["WindowFocused"]
       35 GETTABLEKS                       R4 R0 K9 ["onDockWidgetInteraction"]
       37 NAMECALL                         R2 R2 K3 ["Connect"]
       39 CALL                             R2 2 1
       40 SETTABLEKS                       R2 R0 K10 ["_dockWidgetInteractionConnection"]
       42 DUPTABLE                         R4 K12 [{"pluginGui"}]
       43 GETTABLEKS                       R5 R0 K5 ["dockWidget"]
       45 SETTABLEKS                       R5 R4 K11 ["pluginGui"]
       47 NAMECALL                         R2 R0 K13 ["setState"]
       49 CALL                             R2 2 0
       50 GETTABLEKS                       R5 R0 K0 ["props"]
       52 GETTABLEKS                       R4 R5 K1 ["pluginLoaderContext"]
       54 GETTABLEKS                       R3 R4 K14 ["signals"]
       56 LOADK                            R5 K15 ["MemStorageService."]
       57 GETUPVAL                         R7 2
       58 GETTABLEKS                       R6 R7 K16 ["SHOW_TOOLBOX_PLUGINS_EVENT"]
       60 CONCAT                           R4 R5 R6
       61 GETTABLE                         R2 R3 R4
       62 NEWCLOSURE                       R4 P1
       63 CAPTURE                          VAL R0
       64 NAMECALL                         R2 R2 K3 ["Connect"]
       66 CALL                             R2 2 1
       67 SETTABLEKS                       R2 R0 K17 ["_showPluginsConnection"]
       69 GETTABLEKS                       R5 R0 K0 ["props"]
       71 GETTABLEKS                       R4 R5 K1 ["pluginLoaderContext"]
       73 GETTABLEKS                       R3 R4 K14 ["signals"]
       75 LOADK                            R5 K15 ["MemStorageService."]
       76 GETUPVAL                         R7 2
       77 GETTABLEKS                       R6 R7 K18 ["SHOW_TOOLBOX_OPEN_MODELS_AND_SEARCH_EVENT"]
       79 CONCAT                           R4 R5 R6
       80 GETTABLE                         R2 R3 R4
       81 NEWCLOSURE                       R4 P2
       82 CAPTURE                          VAL R0
       83 NAMECALL                         R2 R2 K3 ["Connect"]
       85 CALL                             R2 2 1
       86 SETTABLEKS                       R2 R0 K17 ["_showPluginsConnection"]
       88 GETTABLEKS                       R5 R0 K0 ["props"]
       90 GETTABLEKS                       R4 R5 K1 ["pluginLoaderContext"]
       92 GETTABLEKS                       R3 R4 K14 ["signals"]
       94 LOADK                            R5 K15 ["MemStorageService."]
       95 GETUPVAL                         R7 3
       96 GETTABLEKS                       R6 R7 K19 ["OPEN_MARKETPLACE_VIEW_FOR_ASSET_TYPE"]
       98 CONCAT                           R4 R5 R6
       99 GETTABLE                         R2 R3 R4
      100 NEWCLOSURE                       R4 P3
      101 CAPTURE                          VAL R0
      102 NAMECALL                         R2 R2 K3 ["Connect"]
      104 CALL                             R2 2 1
      105 SETTABLEKS                       R2 R0 K20 ["_changeMarketplaceTabConnection"]
      107 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R1 R0 K0 ["disconnectLocalizationListener"]
        2 JUMPIFNOT                        R1 ; [+3]
        3 GETTABLEKS                       R1 R0 K0 ["disconnectLocalizationListener"]
        5 CALL                             R1 0 0
        6 GETTABLEKS                       R1 R0 K1 ["_showPluginsConnection"]
        8 JUMPIFNOT                        R1 ; [+8]
        9 GETTABLEKS                       R1 R0 K1 ["_showPluginsConnection"]
       11 NAMECALL                         R1 R1 K2 ["Disconnect"]
       13 CALL                             R1 1 0
       14 LOADNIL                          R1
       15 SETTABLEKS                       R1 R0 K1 ["_showPluginsConnection"]
       17 GETTABLEKS                       R1 R0 K3 ["_changeMarketplaceTabConnection"]
       19 JUMPIFNOT                        R1 ; [+8]
       20 GETTABLEKS                       R1 R0 K3 ["_changeMarketplaceTabConnection"]
       22 NAMECALL                         R1 R1 K2 ["Disconnect"]
       24 CALL                             R1 1 0
       25 LOADNIL                          R1
       26 SETTABLEKS                       R1 R0 K3 ["_changeMarketplaceTabConnection"]
       28 GETTABLEKS                       R1 R0 K4 ["_dockWidgetInteractionConnection"]
       30 JUMPIFNOT                        R1 ; [+8]
       31 GETTABLEKS                       R1 R0 K4 ["_dockWidgetInteractionConnection"]
       33 NAMECALL                         R1 R1 K2 ["Disconnect"]
       35 CALL                             R1 1 0
       36 LOADNIL                          R1
       37 SETTABLEKS                       R1 R0 K4 ["_dockWidgetInteractionConnection"]
       39 RETURN                           R0 0

PROTO_11:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["plugin"]
        6 GETTABLEKS                       R4 R1 K3 ["theme"]
        8 GETTABLEKS                       R5 R1 K4 ["networkInterface"]
       10 GETTABLEKS                       R6 R1 K5 ["localization"]
       12 GETTABLEKS                       R7 R1 K6 ["backgrounds"]
       14 GETTABLEKS                       R8 R1 K7 ["suggestions"]
       16 GETTABLEKS                       R9 R1 K8 ["tryOpenAssetConfig"]
       18 GETTABLEKS                       R10 R2 K9 ["enabled"]
       20 GETTABLEKS                       R11 R2 K10 ["pluginGui"]
       22 JUMPIFNOT                        R11 ; [+5]
       23 GETTABLEKS                       R13 R11 K11 ["AbsoluteSize"]
       25 GETTABLEKS                       R12 R13 K12 ["x"]
       27 JUMPIF                           R12 ; [+3]
       28 GETUPVAL                         R13 0
       29 GETTABLEKS                       R12 R13 K13 ["TOOLBOX_MIN_WIDTH"]
       31 JUMPIFNOTEQKNIL                  R11 ; [+2]
       33 LOADB                            R13 0 +1
       34 LOADB                            R13 1
       35 GETTABLEKS                       R15 R0 K0 ["props"]
       37 GETTABLEKS                       R14 R15 K14 ["Localization"]
       39 LOADK                            R16 K15 ["General"]
       40 LOADK                            R17 K16 ["ToolboxToolbarName"]
       41 NAMECALL                         R14 R14 K17 ["getText"]
       43 CALL                             R14 3 1
       44 GETUPVAL                         R16 1
       45 GETTABLEKS                       R15 R16 K18 ["createElement"]
       47 GETUPVAL                         R16 2
       48 NEWTABLE                         R17 16 0
       50 LOADK                            R18 K19 ["Toolbox"]
       51 SETTABLEKS                       R18 R17 K20 ["Id"]
       53 SETTABLEKS                       R14 R17 K21 ["Title"]
       55 LOADK                            R18 K19 ["Toolbox"]
       56 SETTABLEKS                       R18 R17 K22 ["Name"]
       58 GETIMPORT                        R18 K26 [Enum.ZIndexBehavior.Sibling]
       60 SETTABLEKS                       R18 R17 K24 ["ZIndexBehavior"]
       62 GETTABLEKS                       R19 R1 K27 ["pluginLoaderContext"]
       64 GETTABLEKS                       R18 R19 K28 ["mainDockWidget"]
       66 SETTABLEKS                       R18 R17 K29 ["Widget"]
       68 GETUPVAL                         R19 0
       69 GETTABLEKS                       R18 R19 K13 ["TOOLBOX_MIN_WIDTH"]
       71 SETTABLEKS                       R18 R17 K30 ["MinWidth"]
       73 GETUPVAL                         R19 0
       74 GETTABLEKS                       R18 R19 K31 ["TOOLBOX_MIN_HEIGHT"]
       76 SETTABLEKS                       R18 R17 K32 ["MinHeight"]
       78 GETUPVAL                         R19 1
       79 GETTABLEKS                       R18 R19 K33 ["Ref"]
       81 GETTABLEKS                       R19 R0 K34 ["dockWidgetRefFunc"]
       83 SETTABLE                         R19 R17 R18
       84 GETUPVAL                         R20 1
       85 GETTABLEKS                       R19 R20 K35 ["Change"]
       87 GETTABLEKS                       R18 R19 K36 ["Enabled"]
       89 GETTABLEKS                       R19 R0 K37 ["onDockWidgetEnabledChanged"]
       91 SETTABLE                         R19 R17 R18
       92 GETUPVAL                         R20 1
       93 GETTABLEKS                       R19 R20 K38 ["Event"]
       95 GETTABLEKS                       R18 R19 K39 ["AncestryChanged"]
       97 GETTABLEKS                       R19 R0 K40 ["onAncestryChanged"]
       99 SETTABLE                         R19 R17 R18
      100 DUPTABLE                         R18 K41 [{"Toolbox"}]
      101 MOVE                             R19 R13
      102 JUMPIFNOT                        R19 ; [+82]
      103 GETUPVAL                         R20 3
      104 GETTABLEKS                       R19 R20 K42 ["provide"]
      106 NEWTABLE                         R20 0 3
      108 GETUPVAL                         R23 3
      109 GETTABLEKS                       R22 R23 K43 ["Focus"]
      111 GETTABLEKS                       R21 R22 K44 ["new"]
      113 GETTABLEKS                       R23 R0 K1 ["state"]
      115 GETTABLEKS                       R22 R23 K10 ["pluginGui"]
      117 CALL                             R21 1 1
      118 GETUPVAL                         R23 4
      119 GETTABLEKS                       R22 R23 K44 ["new"]
      121 CALL                             R22 0 1
      122 GETUPVAL                         R24 5
      123 GETTABLEKS                       R23 R24 K44 ["new"]
      125 DUPTABLE                         R24 K46 [{"namespace", "plugin"}]
      126 LOADK                            R25 K47 ["toolbox"]
      127 SETTABLEKS                       R25 R24 K45 ["namespace"]
      129 SETTABLEKS                       R3 R24 K2 ["plugin"]
      131 CALL                             R23 1 -1
      132 SETLIST                          R20 R21 -1 [1]
      134 NEWTABLE                         R21 0 1
      136 GETUPVAL                         R23 1
      137 GETTABLEKS                       R22 R23 K18 ["createElement"]
      139 GETUPVAL                         R23 6
      140 DUPTABLE                         R24 K48 [{"plugin", "pluginGui", "theme", "networkInterface", "localization"}]
      141 SETTABLEKS                       R3 R24 K2 ["plugin"]
      143 SETTABLEKS                       R11 R24 K10 ["pluginGui"]
      145 SETTABLEKS                       R4 R24 K3 ["theme"]
      147 SETTABLEKS                       R5 R24 K4 ["networkInterface"]
      149 SETTABLEKS                       R6 R24 K5 ["localization"]
      151 NEWTABLE                         R25 0 1
      153 GETUPVAL                         R27 1
      154 GETTABLEKS                       R26 R27 K18 ["createElement"]
      156 GETUPVAL                         R27 7
      157 DUPTABLE                         R28 K51 [{"initialWidth", "backgrounds", "suggestions", "tryOpenAssetConfig", "plugin", "pluginGui", "pluginLoaderContext", "onMouseEnter"}]
      158 SETTABLEKS                       R12 R28 K49 ["initialWidth"]
      160 SETTABLEKS                       R7 R28 K6 ["backgrounds"]
      162 SETTABLEKS                       R8 R28 K7 ["suggestions"]
      164 SETTABLEKS                       R9 R28 K8 ["tryOpenAssetConfig"]
      166 SETTABLEKS                       R3 R28 K2 ["plugin"]
      168 SETTABLEKS                       R11 R28 K10 ["pluginGui"]
      170 GETTABLEKS                       R29 R1 K27 ["pluginLoaderContext"]
      172 SETTABLEKS                       R29 R28 K27 ["pluginLoaderContext"]
      174 GETTABLEKS                       R29 R0 K52 ["onDockWidgetInteraction"]
      176 SETTABLEKS                       R29 R28 K50 ["onMouseEnter"]
      178 CALL                             R26 2 -1
      179 SETLIST                          R25 R26 -1 [1]
      181 CALL                             R22 3 -1
      182 SETLIST                          R21 R22 -1 [1]
      184 CALL                             R19 2 1
      185 SETTABLEKS                       R19 R18 K19 ["Toolbox"]
      187 CALL                             R15 3 -1
      188 RETURN                           R15 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R1 0 -1
        3 CALL                             R0 -1 0
        4 RETURN                           R0 0

PROTO_13:
        0 DUPTABLE                         R1 K1 [{"stopAllSounds"}]
        1 NEWCLOSURE                       R2 P0
        2 CAPTURE                          VAL R0
        3 CAPTURE                          UPVAL U0
        4 SETTABLEKS                       R2 R1 K0 ["stopAllSounds"]
        6 RETURN                           R1 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["StudioService"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R4 K5 [script]
        9 GETTABLEKS                       R3 R4 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K6 ["Parent"]
       13 GETTABLEKS                       R1 R2 K6 ["Parent"]
       15 GETTABLEKS                       R2 R1 K7 ["Packages"]
       17 GETIMPORT                        R3 K9 [require]
       19 GETTABLEKS                       R4 R2 K10 ["Roact"]
       21 CALL                             R3 1 1
       22 GETIMPORT                        R4 K9 [require]
       24 GETTABLEKS                       R5 R2 K11 ["RoactRodux"]
       26 CALL                             R4 1 1
       27 GETTABLEKS                       R6 R1 K12 ["Src"]
       29 GETTABLEKS                       R5 R6 K13 ["Util"]
       31 GETIMPORT                        R6 K9 [require]
       33 GETTABLEKS                       R7 R1 K14 ["SharedPluginConstants"]
       35 CALL                             R6 1 1
       36 GETIMPORT                        R7 K9 [require]
       38 GETTABLEKS                       R10 R1 K12 ["Src"]
       40 GETTABLEKS                       R9 R10 K13 ["Util"]
       42 GETTABLEKS                       R8 R9 K15 ["Constants"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K9 [require]
       47 GETTABLEKS                       R11 R1 K12 ["Src"]
       49 GETTABLEKS                       R10 R11 K13 ["Util"]
       51 GETTABLEKS                       R9 R10 K16 ["Images"]
       53 CALL                             R8 1 1
       54 GETIMPORT                        R9 K9 [require]
       56 GETTABLEKS                       R12 R1 K12 ["Src"]
       58 GETTABLEKS                       R11 R12 K17 ["Components"]
       60 GETTABLEKS                       R10 R11 K18 ["ExternalServicesWrapper"]
       62 CALL                             R9 1 1
       63 GETIMPORT                        R10 K9 [require]
       65 GETTABLEKS                       R14 R1 K12 ["Src"]
       67 GETTABLEKS                       R13 R14 K17 ["Components"]
       69 GETTABLEKS                       R12 R13 K19 ["PluginWidget"]
       71 GETTABLEKS                       R11 R12 K20 ["DockWidget"]
       73 CALL                             R10 1 1
       74 GETIMPORT                        R11 K9 [require]
       76 GETTABLEKS                       R14 R1 K12 ["Src"]
       78 GETTABLEKS                       R13 R14 K17 ["Components"]
       80 GETTABLEKS                       R12 R13 K21 ["Toolbox"]
       82 CALL                             R11 1 1
       83 GETIMPORT                        R12 K9 [require]
       85 GETTABLEKS                       R15 R1 K12 ["Src"]
       87 GETTABLEKS                       R14 R15 K22 ["Actions"]
       89 GETTABLEKS                       R13 R14 K23 ["StopAllSounds"]
       91 CALL                             R12 1 1
       92 GETIMPORT                        R13 K9 [require]
       94 GETTABLEKS                       R14 R5 K24 ["makeTheme"]
       96 CALL                             R13 1 1
       97 GETIMPORT                        R15 K9 [require]
       99 GETTABLEKS                       R16 R2 K25 ["Framework"]
      101 CALL                             R15 1 1
      102 GETTABLEKS                       R14 R15 K26 ["ContextServices"]
      104 GETTABLEKS                       R15 R14 K27 ["withContext"]
      106 GETIMPORT                        R16 K9 [require]
      108 GETTABLEKS                       R19 R1 K12 ["Src"]
      110 GETTABLEKS                       R18 R19 K26 ["ContextServices"]
      112 GETTABLEKS                       R17 R18 K28 ["NavigationContext"]
      114 CALL                             R16 1 1
      115 GETIMPORT                        R17 K9 [require]
      117 GETTABLEKS                       R20 R1 K12 ["Src"]
      119 GETTABLEKS                       R19 R20 K26 ["ContextServices"]
      121 GETTABLEKS                       R18 R19 K29 ["IXPContext"]
      123 CALL                             R17 1 1
      124 GETIMPORT                        R18 K9 [require]
      126 GETTABLEKS                       R19 R2 K30 ["WebView"]
      128 CALL                             R18 1 1
      129 GETTABLEKS                       R19 R18 K31 ["WebViewManagerContext"]
      131 GETIMPORT                        R20 K9 [require]
      133 GETTABLEKS                       R22 R5 K32 ["Analytics"]
      135 GETTABLEKS                       R21 R22 K32 ["Analytics"]
      137 CALL                             R20 1 1
      138 GETTABLEKS                       R21 R3 K33 ["PureComponent"]
      140 LOADK                            R23 K34 ["ToolboxPlugin"]
      141 NAMECALL                         R21 R21 K35 ["extend"]
      143 CALL                             R21 2 1
      144 DUPCLOSURE                       R22 K36 [PROTO_4]
      145 CAPTURE                          VAL R13
      146 CAPTURE                          VAL R20
      147 SETTABLEKS                       R22 R21 K37 ["init"]
      149 DUPCLOSURE                       R22 K38 [PROTO_9]
      150 CAPTURE                          VAL R20
      151 CAPTURE                          VAL R0
      152 CAPTURE                          VAL R6
      153 CAPTURE                          VAL R7
      154 SETTABLEKS                       R22 R21 K39 ["didMount"]
      156 DUPCLOSURE                       R22 K40 [PROTO_10]
      157 SETTABLEKS                       R22 R21 K41 ["willUnmount"]
      159 DUPCLOSURE                       R22 K42 [PROTO_11]
      160 CAPTURE                          VAL R7
      161 CAPTURE                          VAL R3
      162 CAPTURE                          VAL R10
      163 CAPTURE                          VAL R14
      164 CAPTURE                          VAL R16
      165 CAPTURE                          VAL R19
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R11
      168 SETTABLEKS                       R22 R21 K43 ["render"]
      170 MOVE                             R22 R15
      171 DUPTABLE                         R23 K46 [{"Localization", "IXP"}]
      172 GETTABLEKS                       R24 R14 K44 ["Localization"]
      174 SETTABLEKS                       R24 R23 K44 ["Localization"]
      176 SETTABLEKS                       R17 R23 K45 ["IXP"]
      178 CALL                             R22 1 1
      179 MOVE                             R23 R21
      180 CALL                             R22 1 1
      181 MOVE                             R21 R22
      182 DUPCLOSURE                       R22 K47 [PROTO_13]
      183 CAPTURE                          VAL R12
      184 GETTABLEKS                       R23 R4 K48 ["connect"]
      186 LOADNIL                          R24
      187 MOVE                             R25 R22
      188 CALL                             R23 2 1
      189 MOVE                             R24 R21
      190 CALL                             R23 1 -1
      191 RETURN                           R23 -1
