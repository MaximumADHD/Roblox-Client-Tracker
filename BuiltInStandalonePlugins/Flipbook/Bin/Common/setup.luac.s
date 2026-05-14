PROTO_0:
        0 RETURN                           R2 1

PROTO_1:
        0 LOADK                            R3 K0 ["Open Flipbook to view and preview UI components"]
        1 RETURN                           R3 1

PROTO_2:
        0 RETURN                           R2 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R2 R0 K0 ["Checked"]
        3 SETTABLEKS                       R2 R1 K1 ["Enabled"]
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NAMECALL                         R0 R0 K0 ["ActivateAsync"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETIMPORT                        R0 K2 [task.spawn]
        2 NEWCLOSURE                       R1 P0
        3 CAPTURE                          UPVAL U0
        4 CAPTURE                          UPVAL U1
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["unmount"]
        3 CALL                             R0 0 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K1 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Name"]
        3 SETTABLEKS                       R1 R0 K0 ["Name"]
        5 NEWTABLE                         R1 0 1
        7 DUPTABLE                         R2 K10 [{"uri", "isPreexistingAction", "getText", "getTooltip", "icon", "enabled", "visible", "checkable", "checked"}]
        8 GETUPVAL                         R3 1
        9 SETTABLEKS                       R3 R2 K1 ["uri"]
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K2 ["isPreexistingAction"]
       14 DUPCLOSURE                       R3 K11 [PROTO_0]
       15 SETTABLEKS                       R3 R2 K3 ["getText"]
       17 DUPCLOSURE                       R3 K12 [PROTO_1]
       18 SETTABLEKS                       R3 R2 K4 ["getTooltip"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K13 ["FLIPBOOK_LOGO"]
       23 SETTABLEKS                       R3 R2 K5 ["icon"]
       25 LOADB                            R3 1
       26 SETTABLEKS                       R3 R2 K6 ["enabled"]
       28 LOADB                            R3 1
       29 SETTABLEKS                       R3 R2 K7 ["visible"]
       31 LOADB                            R3 1
       32 SETTABLEKS                       R3 R2 K8 ["checkable"]
       34 LOADB                            R3 0
       35 SETTABLEKS                       R3 R2 K9 ["checked"]
       37 SETLIST                          R1 R2 1 [1]
       39 DUPTABLE                         R2 K20 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar", "actionInfos"}]
       40 SETTABLEKS                       R0 R2 K14 ["plugin"]
       42 LOADK                            R3 K21 ["Flipbook"]
       43 SETTABLEKS                       R3 R2 K15 ["pluginName"]
       45 GETUPVAL                         R3 3
       46 SETTABLEKS                       R3 R2 K16 ["translationResourceTable"]
       48 GETUPVAL                         R3 4
       49 SETTABLEKS                       R3 R2 K17 ["fallbackResourceTable"]
       51 LOADB                            R3 1
       52 SETTABLEKS                       R3 R2 K18 ["noToolbar"]
       54 SETTABLEKS                       R1 R2 K19 ["actionInfos"]
       56 GETIMPORT                        R3 K23 [game]
       58 LOADK                            R5 K24 ["RunService"]
       59 NAMECALL                         R3 R3 K25 ["GetService"]
       61 CALL                             R3 2 1
       62 GETUPVAL                         R5 5
       63 GETTABLEKS                       R5 R5 K26 ["get"]
       65 CALL                             R5 0 1
       66 GETUPVAL                         R6 5
       67 GETTABLEKS                       R6 R6 K27 ["Standalone"]
       69 JUMPIFEQ                         R5 R6 ; [+2]
       71 LOADB                            R4 0 +1
       72 LOADB                            R4 1
       73 NAMECALL                         R5 R3 K28 ["IsEdit"]
       75 CALL                             R5 1 1
       76 JUMPIF                           R4 ; [+1]
       77 JUMPIFNOT                        R5 ; [+86]
       78 DUPTABLE                         R6 K33 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "zIndexBehavior"}]
       79 LOADK                            R7 K34 ["FlipbookInternal"]
       80 SETTABLEKS                       R7 R6 K29 ["id"]
       82 GETIMPORT                        R7 K37 [DockWidgetPluginGuiInfo.new]
       84 GETIMPORT                        R8 K41 [Enum.InitialDockState.Bottom]
       86 LOADB                            R9 0
       87 LOADB                            R10 0
       88 LOADN                            R11 128
       89 LOADN                            R12 224
       90 LOADN                            R13 250
       91 LOADN                            R14 200
       92 CALL                             R7 7 1
       93 SETTABLEKS                       R7 R6 K30 ["dockWidgetPluginGuiInfo"]
       95 DUPCLOSURE                       R7 K42 [PROTO_2]
       96 SETTABLEKS                       R7 R6 K31 ["getDockTitle"]
       98 GETIMPORT                        R7 K45 [Enum.ZIndexBehavior.Sibling]
      100 SETTABLEKS                       R7 R6 K32 ["zIndexBehavior"]
      102 SETTABLEKS                       R6 R2 K46 ["dockWidgetInfo"]
      104 GETUPVAL                         R6 6
      105 GETTABLEKS                       R6 R6 K47 ["build"]
      107 MOVE                             R7 R2
      108 CALL                             R6 1 1
      109 GETTABLEKS                       R7 R6 K48 ["mainDockWidget"]
      111 MOVE                             R9 R7
      112 JUMPIFNOT                        R9 ; [+4]
      113 LOADK                            R11 K49 ["DockWidgetPluginGui"]
      114 NAMECALL                         R9 R7 K50 ["IsA"]
      116 CALL                             R9 2 1
      117 FASTCALL2K                       ASSERT R9 K51 ; [+4]
      119 LOADK                            R10 K51 ["Flipbook needs a DockWidgetPluginGui to work"]
      120 GETIMPORT                        R8 K53 [assert]
      122 CALL                             R8 2 0
      123 LOADK                            R10 K54 ["Actions"]
      124 NAMECALL                         R8 R0 K55 ["GetPluginComponent"]
      126 CALL                             R8 2 1
      127 GETUPVAL                         R11 1
      128 NAMECALL                         R9 R8 K56 ["BindToChangedAsync"]
      130 CALL                             R9 2 1
      131 NEWCLOSURE                       R11 P3
      132 CAPTURE                          VAL R7
      133 NAMECALL                         R9 R9 K57 ["Connect"]
      135 CALL                             R9 2 1
      136 NEWCLOSURE                       R12 P4
      137 CAPTURE                          VAL R8
      138 CAPTURE                          UPVAL U1
      139 NAMECALL                         R10 R7 K58 ["BindToClose"]
      141 CALL                             R10 2 0
      142 GETTABLEKS                       R10 R6 K59 ["pluginLoader"]
      144 NAMECALL                         R10 R10 K60 ["waitForUserInteraction"]
      146 CALL                             R10 1 1
      147 JUMPIF                           R10 ; [+1]
      148 RETURN                           R0 0
      149 GETUPVAL                         R11 2
      150 GETTABLEKS                       R11 R11 K61 ["createFlipbookPlugin"]
      152 MOVE                             R12 R0
      153 MOVE                             R13 R7
      154 CALL                             R11 2 1
      155 GETTABLEKS                       R12 R0 K62 ["Unloading"]
      157 NEWCLOSURE                       R14 P5
      158 CAPTURE                          VAL R11
      159 CAPTURE                          VAL R9
      160 NAMECALL                         R12 R12 K57 ["Connect"]
      162 CALL                             R12 2 0
      163 RETURN                           R0 0
      164 GETUPVAL                         R6 6
      165 GETTABLEKS                       R6 R6 K47 ["build"]
      167 MOVE                             R7 R2
      168 CALL                             R6 1 0
      169 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Flipbook"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["PluginLoader"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["StudioFoundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["FlipbookCore"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Bin"]
       32 GETTABLEKS                       R5 R5 K11 ["Common"]
       34 GETTABLEKS                       R5 R5 K12 ["pluginType"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["PluginLoaderBuilder"]
       39 GETTABLEKS                       R6 R0 K14 ["Src"]
       41 GETTABLEKS                       R6 R6 K15 ["Resources"]
       43 GETTABLEKS                       R6 R6 K16 ["Localization"]
       45 GETTABLEKS                       R6 R6 K17 ["SourceStrings"]
       47 GETTABLEKS                       R7 R0 K14 ["Src"]
       49 GETTABLEKS                       R7 R7 K15 ["Resources"]
       51 GETTABLEKS                       R7 R7 K16 ["Localization"]
       53 GETTABLEKS                       R7 R7 K18 ["LocalizedStrings"]
       55 GETTABLEKS                       R8 R2 K19 ["Util"]
       57 GETTABLEKS                       R8 R8 K20 ["StudioUri"]
       59 GETTABLEKS                       R9 R8 K21 ["fromAction"]
       61 LOADK                            R10 K2 ["Flipbook"]
       62 LOADK                            R11 K22 ["Toggle"]
       63 CALL                             R9 2 1
       64 DUPCLOSURE                       R10 K23 [PROTO_7]
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R9
       67 CAPTURE                          VAL R3
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R6
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R5
       72 RETURN                           R10 1
