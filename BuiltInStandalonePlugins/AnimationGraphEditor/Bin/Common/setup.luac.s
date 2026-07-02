PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R2 K1 [require]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R3 R3 K2 ["Packages"]
        5 GETTABLEKS                       R3 R3 K3 ["React"]
        7 CALL                             R2 1 1
        8 GETIMPORT                        R3 K1 [require]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K2 ["Packages"]
       13 GETTABLEKS                       R4 R4 K4 ["ReactRoblox"]
       15 CALL                             R3 1 1
       16 GETTABLEKS                       R4 R2 K5 ["createElement"]
       18 MOVE                             R5 R0
       19 MOVE                             R6 R1
       20 CALL                             R4 2 1
       21 GETIMPORT                        R5 K8 [Instance.new]
       23 LOADK                            R6 K9 ["Frame"]
       24 CALL                             R5 1 1
       25 GETTABLEKS                       R6 R3 K10 ["createRoot"]
       27 MOVE                             R7 R5
       28 CALL                             R6 1 1
       29 MOVE                             R9 R4
       30 NAMECALL                         R7 R6 K11 ["render"]
       32 CALL                             R7 2 0
       33 GETTABLEKS                       R7 R1 K12 ["Plugin"]
       35 GETTABLEKS                       R7 R7 K13 ["Unloading"]
       37 NEWCLOSURE                       R9 P0
       38 CAPTURE                          VAL R6
       39 NAMECALL                         R7 R7 K14 ["Connect"]
       41 CALL                             R7 2 0
       42 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Button"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["Name"]
        3 SETTABLEKS                       R2 R0 K0 ["Name"]
        5 JUMPIFNOTEQKS                    R1 K1 ["ui"] ; [+112]
        7 LOADNIL                          R2
        8 NEWTABLE                         R3 0 1
       10 DUPTABLE                         R4 K14 [{["uri"], ["isPreexistingAction"], ["getText"], ["getTooltip"], ["icon"] = "rbxlocaltheme://GameSettings", ["enabled"] = True, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R5 R5 K15 ["Util"]
       14 GETTABLEKS                       R5 R5 K16 ["StudioUri"]
       16 GETTABLEKS                       R5 R5 K17 ["fromAction"]
       18 LOADK                            R6 K18 ["AnimationGraphEditor"]
       19 LOADK                            R7 K19 ["Toggle"]
       20 CALL                             R5 2 1
       21 SETTABLEKS                       R5 R4 K2 ["uri"]
       23 GETUPVAL                         R5 2
       24 SETTABLEKS                       R5 R4 K3 ["isPreexistingAction"]
       26 DUPCLOSURE                       R5 K20 [PROTO_2]
       27 SETTABLEKS                       R5 R4 K4 ["getText"]
       29 DUPCLOSURE                       R5 K21 [PROTO_3]
       30 SETTABLEKS                       R5 R4 K5 ["getTooltip"]
       32 SETLIST                          R3 R4 1 [1]
       34 MOVE                             R2 R3
       35 DUPTABLE                         R3 K28 [{["plugin"], ["pluginName"] = "AnimationGraphEditor", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True, ["actionInfos"]}]
       36 SETTABLEKS                       R0 R3 K22 ["plugin"]
       38 GETUPVAL                         R4 0
       39 GETTABLEKS                       R4 R4 K29 ["Src"]
       41 GETTABLEKS                       R4 R4 K30 ["Resources"]
       43 GETTABLEKS                       R4 R4 K31 ["Localization"]
       45 GETTABLEKS                       R4 R4 K32 ["LocalizedStrings"]
       47 SETTABLEKS                       R4 R3 K24 ["translationResourceTable"]
       49 GETUPVAL                         R4 0
       50 GETTABLEKS                       R4 R4 K29 ["Src"]
       52 GETTABLEKS                       R4 R4 K30 ["Resources"]
       54 GETTABLEKS                       R4 R4 K31 ["Localization"]
       56 GETTABLEKS                       R4 R4 K33 ["SourceStrings"]
       58 SETTABLEKS                       R4 R3 K25 ["fallbackResourceTable"]
       60 SETTABLEKS                       R2 R3 K27 ["actionInfos"]
       62 DUPTABLE                         R4 K38 [{["id"] = "AnimationGraphEditor", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"], ["uri"]}]
       63 GETIMPORT                        R5 K41 [DockWidgetPluginGuiInfo.new]
       65 GETIMPORT                        R6 K45 [Enum.InitialDockState.Bottom]
       67 LOADB                            R7 0
       68 LOADB                            R8 0
       69 LOADN                            R9 640
       70 LOADN                            R10 480
       71 LOADN                            R11 250
       72 LOADN                            R12 200
       73 CALL                             R5 7 1
       74 SETTABLEKS                       R5 R4 K35 ["dockWidgetPluginGuiInfo"]
       76 DUPCLOSURE                       R5 K46 [PROTO_4]
       77 SETTABLEKS                       R5 R4 K36 ["getDockTitle"]
       79 GETIMPORT                        R5 K49 [Enum.ZIndexBehavior.Sibling]
       81 SETTABLEKS                       R5 R4 K37 ["zIndexBehavior"]
       83 GETUPVAL                         R5 3
       84 SETTABLEKS                       R5 R4 K2 ["uri"]
       86 SETTABLEKS                       R4 R3 K50 ["dockWidgetInfo"]
       88 GETUPVAL                         R4 4
       89 GETTABLEKS                       R4 R4 K51 ["PluginLoaderBuilder"]
       91 GETTABLEKS                       R4 R4 K52 ["build"]
       93 MOVE                             R5 R3
       94 CALL                             R4 1 1
       95 GETTABLEKS                       R5 R4 K53 ["pluginLoader"]
       97 NAMECALL                         R5 R5 K54 ["waitForUserInteraction"]
       99 CALL                             R5 1 1
      100 JUMPIF                           R5 ; [+1]
      101 RETURN                           R0 0
      102 GETUPVAL                         R6 5
      103 GETIMPORT                        R7 K56 [require]
      105 GETUPVAL                         R8 0
      106 GETTABLEKS                       R8 R8 K29 ["Src"]
      108 GETTABLEKS                       R8 R8 K57 ["UIDataModelMainPlugin"]
      110 CALL                             R7 1 1
      111 DUPTABLE                         R8 K60 [{"Plugin", "PluginLoaderContext"}]
      112 SETTABLEKS                       R0 R8 K58 ["Plugin"]
      114 SETTABLEKS                       R4 R8 K59 ["PluginLoaderContext"]
      116 CALL                             R6 2 0
      117 RETURN                           R0 0
      118 JUMPIFNOTEQKS                    R1 K61 ["editabledatamodel"] ; [+15]
      120 GETUPVAL                         R2 5
      121 GETIMPORT                        R3 K56 [require]
      123 GETUPVAL                         R4 0
      124 GETTABLEKS                       R4 R4 K29 ["Src"]
      126 GETTABLEKS                       R4 R4 K62 ["EditableDataModelMainPlugin"]
      128 CALL                             R3 1 1
      129 DUPTABLE                         R4 K63 [{"Plugin"}]
      130 SETTABLEKS                       R0 R4 K58 ["Plugin"]
      132 CALL                             R2 2 0
      133 RETURN                           R0 0
      134 JUMPIFNOTEQKS                    R1 K64 ["previewdatamodel"] ; [+15]
      136 GETUPVAL                         R2 5
      137 GETIMPORT                        R3 K56 [require]
      139 GETUPVAL                         R4 0
      140 GETTABLEKS                       R4 R4 K29 ["Src"]
      142 GETTABLEKS                       R4 R4 K65 ["PreviewDataModelMainPlugin"]
      144 CALL                             R3 1 1
      145 DUPTABLE                         R4 K63 [{"Plugin"}]
      146 SETTABLEKS                       R0 R4 K58 ["Plugin"]
      148 CALL                             R2 2 0
      149 RETURN                           R0 0
      150 GETIMPORT                        R2 K67 [error]
      152 LOADK                            R4 K68 ["Unknown plugin type: "]
      153 FASTCALL1                        TOSTRING R1 ; [+3]
      154 MOVE                             R6 R1
      155 GETIMPORT                        R5 K70 [tostring]
      157 CALL                             R5 1 1
      158 CONCAT                           R3 R4 R5
      159 CALL                             R2 1 0
      160 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationGraphEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["GuiUri"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["PluginLoader"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["StudioFoundation"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K12 [game]
       30 LOADK                            R6 K13 ["AnimationGraphEditorAction"]
       31 LOADB                            R7 0
       32 NAMECALL                         R4 R4 K14 ["DefineFastFlag"]
       34 CALL                             R4 3 1
       35 DUPCLOSURE                       R5 K15 [PROTO_1]
       36 CAPTURE                          VAL R0
       37 DUPCLOSURE                       R6 K16 [PROTO_5]
       38 CAPTURE                          VAL R0
       39 CAPTURE                          VAL R3
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R1
       42 CAPTURE                          VAL R2
       43 CAPTURE                          VAL R5
       44 RETURN                           R6 1
