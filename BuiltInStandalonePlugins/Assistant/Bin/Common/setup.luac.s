PROTO_0:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantBuildName"]
        3 LOADB                            R3 0
        4 NAMECALL                         R0 R0 K3 ["DefineFastFlag"]
        6 CALL                             R0 3 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["AssistantBuildName"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 1
        6 SETUPVAL                         R0 0
        7 RETURN                           R0 0

PROTO_2:
        0 LOADK                            R3 K0 ["AssistantButton"]
        1 RETURN                           R3 1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 LOADK                            R3 K0 ["AssistantToolbar"]
        1 RETURN                           R3 1

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DataModelSessionStarted"]
        3 RETURN                           R0 1

PROTO_6:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 GETUPVAL                         R8 0
        5 JUMPIFNOT                        R8 ; [+2]
        6 LOADK                            R7 K1 ["NameBuild"]
        7 JUMP                             ; [+1]
        8 LOADK                            R7 K2 ["Name"]
        9 CALL                             R3 4 -1
       10 RETURN                           R3 -1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["build"]
        3 GETUPVAL                         R1 1
        4 CALL                             R0 1 1
        5 GETTABLEKS                       R1 R0 K1 ["pluginLoader"]
        7 NAMECALL                         R1 R1 K2 ["waitForUserInteraction"]
        9 CALL                             R1 1 1
       10 JUMPIF                           R1 ; [+1]
       11 RETURN                           R0 0
       12 GETUPVAL                         R2 2
       13 GETUPVAL                         R3 3
       14 MOVE                             R4 R0
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+1]
        2 RETURN                           R0 0
        3 LOADB                            R0 1
        4 SETUPVAL                         R0 0
        5 GETUPVAL                         R0 1
        6 JUMPIFNOT                        R0 ; [+4]
        7 GETUPVAL                         R0 1
        8 NAMECALL                         R0 R0 K0 ["Disconnect"]
       10 CALL                             R0 1 0
       11 GETUPVAL                         R0 2
       12 GETTABLEKS                       R0 R0 K1 ["build"]
       14 GETUPVAL                         R1 3
       15 CALL                             R0 1 1
       16 GETTABLEKS                       R1 R0 K2 ["pluginLoader"]
       18 NAMECALL                         R1 R1 K3 ["waitForUserInteraction"]
       20 CALL                             R1 1 1
       21 JUMPIF                           R1 ; [+1]
       22 RETURN                           R0 0
       23 GETUPVAL                         R2 4
       24 GETUPVAL                         R3 5
       25 MOVE                             R4 R0
       26 CALL                             R2 2 0
       27 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Name"]
        3 SETTABLEKS                       R3 R0 K0 ["Name"]
        5 GETTABLEKS                       R3 R0 K1 ["MultipleDocumentInterfaceInstance"]
        7 GETIMPORT                        R4 K3 [pcall]
        9 DUPCLOSURE                       R5 K4 [PROTO_0]
       10 CALL                             R4 1 0
       11 LOADB                            R4 0
       12 GETIMPORT                        R5 K3 [pcall]
       14 NEWCLOSURE                       R6 P1
       15 CAPTURE                          REF R4
       16 CALL                             R5 1 0
       17 DUPTABLE                         R5 K13 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = False, ["clickableWhenViewportHidden"] = True}]
       18 DUPCLOSURE                       R6 K14 [PROTO_2]
       19 SETTABLEKS                       R6 R5 K5 ["getName"]
       21 DUPCLOSURE                       R6 K15 [PROTO_3]
       22 SETTABLEKS                       R6 R5 K6 ["getDescription"]
       24 DUPTABLE                         R6 K24 [{["plugin"], ["pluginName"] = "Assistant", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["buttonInfo"], ["extraTriggers"]}]
       25 SETTABLEKS                       R0 R6 K16 ["plugin"]
       27 GETUPVAL                         R7 1
       28 SETTABLEKS                       R7 R6 K19 ["translationResourceTable"]
       30 GETUPVAL                         R7 2
       31 SETTABLEKS                       R7 R6 K20 ["fallbackResourceTable"]
       33 DUPCLOSURE                       R7 K25 [PROTO_4]
       34 SETTABLEKS                       R7 R6 K21 ["getToolbarName"]
       36 SETTABLEKS                       R5 R6 K22 ["buttonInfo"]
       38 JUMPIFNOT                        R2 ; [+6]
       39 DUPTABLE                         R7 K27 [{"SessionStarted"}]
       40 NEWCLOSURE                       R8 P5
       41 CAPTURE                          VAL R3
       42 SETTABLEKS                       R8 R7 K26 ["SessionStarted"]
       44 JUMP                             ; [+1]
       45 LOADNIL                          R7
       46 SETTABLEKS                       R7 R6 K23 ["extraTriggers"]
       48 LOADB                            R7 1
       49 SETTABLEKS                       R7 R5 K9 ["enabled"]
       51 DUPTABLE                         R7 K32 [{["id"] = "Assistant", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       52 GETIMPORT                        R8 K35 [DockWidgetPluginGuiInfo.new]
       54 GETUPVAL                         R10 3
       55 JUMPIFNOT                        R10 ; [+3]
       56 GETIMPORT                        R9 K39 [Enum.InitialDockState.Left]
       58 JUMP                             ; [+2]
       59 GETIMPORT                        R9 K41 [Enum.InitialDockState.Right]
       61 GETUPVAL                         R10 3
       62 LOADB                            R11 0
       63 LOADN                            R12 640
       64 LOADN                            R13 480
       65 LOADN                            R14 250
       66 LOADN                            R15 200
       67 CALL                             R8 7 1
       68 SETTABLEKS                       R8 R7 K29 ["dockWidgetPluginGuiInfo"]
       70 NEWCLOSURE                       R8 P6
       71 CAPTURE                          REF R4
       72 SETTABLEKS                       R8 R7 K30 ["getDockTitle"]
       74 GETIMPORT                        R8 K44 [Enum.ZIndexBehavior.Sibling]
       76 SETTABLEKS                       R8 R7 K31 ["zIndexBehavior"]
       78 SETTABLEKS                       R7 R6 K45 ["dockWidgetInfo"]
       80 NEWCLOSURE                       R7 P7
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          VAL R6
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R0
       85 GETUPVAL                         R8 3
       86 JUMPIFNOT                        R8 ; [+52]
       87 LOADB                            R8 0
       88 LOADNIL                          R9
       89 NEWCLOSURE                       R10 P8
       90 CAPTURE                          REF R8
       91 CAPTURE                          REF R9
       92 CAPTURE                          UPVAL U4
       93 CAPTURE                          VAL R6
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R0
       96 LOADK                            R13 K46 ["PlaceManager"]
       97 NAMECALL                         R11 R0 K47 ["GetPluginComponent"]
       99 CALL                             R11 2 1
      100 GETTABLEKS                       R12 R11 K48 ["PlaceDocPanelShown"]
      102 MOVE                             R14 R10
      103 NAMECALL                         R12 R12 K49 ["Connect"]
      105 CALL                             R12 2 1
      106 MOVE                             R9 R12
      107 GETIMPORT                        R12 K3 [pcall]
      109 NEWCLOSURE                       R13 P9
      110 CAPTURE                          VAL R11
      111 CALL                             R12 1 2
      112 JUMPIFNOT                        R12 ; [+24]
      113 JUMPIFNOT                        R13 ; [+23]
      114 JUMPIFNOT                        R8 ; [+1]
      115 JUMP                             ; [+21]
      116 LOADB                            R8 1
      117 JUMPIFNOT                        R9 ; [+3]
      118 NAMECALL                         R14 R9 K50 ["Disconnect"]
      120 CALL                             R14 1 0
      121 GETUPVAL                         R14 4
      122 GETTABLEKS                       R14 R14 K51 ["build"]
      124 MOVE                             R15 R6
      125 CALL                             R14 1 1
      126 GETTABLEKS                       R15 R14 K52 ["pluginLoader"]
      128 NAMECALL                         R15 R15 K53 ["waitForUserInteraction"]
      130 CALL                             R15 1 1
      131 JUMPIF                           R15 ; [+1]
      132 JUMP                             ; [+4]
      133 MOVE                             R16 R1
      134 MOVE                             R17 R0
      135 MOVE                             R18 R14
      136 CALL                             R16 2 0
      137 CLOSEUPVALS                      R8
      138 JUMP                             ; [+16]
      139 GETUPVAL                         R8 4
      140 GETTABLEKS                       R8 R8 K51 ["build"]
      142 MOVE                             R9 R6
      143 CALL                             R8 1 1
      144 GETTABLEKS                       R9 R8 K52 ["pluginLoader"]
      146 NAMECALL                         R9 R9 K53 ["waitForUserInteraction"]
      148 CALL                             R9 1 1
      149 JUMPIF                           R9 ; [+1]
      150 JUMP                             ; [+4]
      151 MOVE                             R10 R1
      152 MOVE                             R11 R0
      153 MOVE                             R12 R8
      154 CALL                             R10 2 0
      155 CLOSEUPVALS                      R4
      156 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
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
       32 GETIMPORT                        R5 K15 [game]
       34 LOADK                            R7 K16 ["RaiseAssistantVisibility"]
       35 NAMECALL                         R5 R5 K17 ["GetEngineFeature"]
       37 CALL                             R5 2 1
       38 DUPCLOSURE                       R6 K18 [PROTO_10]
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R2
       44 RETURN                           R6 1
