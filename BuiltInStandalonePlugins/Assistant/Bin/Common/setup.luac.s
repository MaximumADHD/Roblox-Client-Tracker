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
        3 LOADK                            R6 K0 ["SettingsDialog"]
        4 LOADK                            R7 K1 ["Title"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_7:
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

PROTO_8:
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

PROTO_9:
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

PROTO_10:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_11:
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
       48 JUMPIFNOT                        R2 ; [+19]
       49 GETUPVAL                         R7 3
       50 GETTABLEKS                       R7 R7 K28 ["FFlagMCPClientCountAsASetting"]
       52 JUMPIFNOT                        R7 ; [+15]
       53 DUPCLOSURE                       R7 K29 [PROTO_6]
       54 NEWTABLE                         R8 0 1
       56 DUPTABLE                         R9 K35 [{["uri"], ["isPreexistingAction"] = False, ["enabled"] = True, ["visible"] = True, ["getText"], ["getTooltip"]}]
       57 DUPTABLE                         R10 K43 [{["DataModel"] = "Standalone", ["PluginId"] = "Assistant", ["Category"] = "Actions", ["ItemId"] = "OpenMcpSettings"}]
       58 SETTABLEKS                       R10 R9 K30 ["uri"]
       60 SETTABLEKS                       R7 R9 K33 ["getText"]
       62 SETTABLEKS                       R7 R9 K34 ["getTooltip"]
       64 SETLIST                          R8 R9 1 [1]
       66 SETTABLEKS                       R8 R6 K44 ["actionInfos"]
       68 LOADB                            R7 1
       69 SETTABLEKS                       R7 R5 K9 ["enabled"]
       71 DUPTABLE                         R7 K49 [{["id"] = "Assistant", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       72 GETIMPORT                        R8 K52 [DockWidgetPluginGuiInfo.new]
       74 GETUPVAL                         R10 4
       75 JUMPIFNOT                        R10 ; [+3]
       76 GETIMPORT                        R9 K56 [Enum.InitialDockState.Left]
       78 JUMP                             ; [+2]
       79 GETIMPORT                        R9 K58 [Enum.InitialDockState.Right]
       81 GETUPVAL                         R10 4
       82 LOADB                            R11 0
       83 LOADN                            R12 640
       84 LOADN                            R13 480
       85 LOADN                            R14 250
       86 LOADN                            R15 200
       87 CALL                             R8 7 1
       88 SETTABLEKS                       R8 R7 K46 ["dockWidgetPluginGuiInfo"]
       90 NEWCLOSURE                       R8 P7
       91 CAPTURE                          REF R4
       92 SETTABLEKS                       R8 R7 K47 ["getDockTitle"]
       94 GETIMPORT                        R8 K61 [Enum.ZIndexBehavior.Sibling]
       96 SETTABLEKS                       R8 R7 K48 ["zIndexBehavior"]
       98 SETTABLEKS                       R7 R6 K62 ["dockWidgetInfo"]
      100 NEWCLOSURE                       R7 P8
      101 CAPTURE                          UPVAL U5
      102 CAPTURE                          VAL R6
      103 CAPTURE                          VAL R1
      104 CAPTURE                          VAL R0
      105 GETUPVAL                         R8 4
      106 JUMPIFNOT                        R8 ; [+52]
      107 LOADB                            R8 0
      108 LOADNIL                          R9
      109 NEWCLOSURE                       R10 P9
      110 CAPTURE                          REF R8
      111 CAPTURE                          REF R9
      112 CAPTURE                          UPVAL U5
      113 CAPTURE                          VAL R6
      114 CAPTURE                          VAL R1
      115 CAPTURE                          VAL R0
      116 LOADK                            R13 K63 ["PlaceManager"]
      117 NAMECALL                         R11 R0 K64 ["GetPluginComponent"]
      119 CALL                             R11 2 1
      120 GETTABLEKS                       R12 R11 K65 ["PlaceDocPanelShown"]
      122 MOVE                             R14 R10
      123 NAMECALL                         R12 R12 K66 ["Connect"]
      125 CALL                             R12 2 1
      126 MOVE                             R9 R12
      127 GETIMPORT                        R12 K3 [pcall]
      129 NEWCLOSURE                       R13 P10
      130 CAPTURE                          VAL R11
      131 CALL                             R12 1 2
      132 JUMPIFNOT                        R12 ; [+24]
      133 JUMPIFNOT                        R13 ; [+23]
      134 JUMPIFNOT                        R8 ; [+1]
      135 JUMP                             ; [+21]
      136 LOADB                            R8 1
      137 JUMPIFNOT                        R9 ; [+3]
      138 NAMECALL                         R14 R9 K67 ["Disconnect"]
      140 CALL                             R14 1 0
      141 GETUPVAL                         R14 5
      142 GETTABLEKS                       R14 R14 K68 ["build"]
      144 MOVE                             R15 R6
      145 CALL                             R14 1 1
      146 GETTABLEKS                       R15 R14 K69 ["pluginLoader"]
      148 NAMECALL                         R15 R15 K70 ["waitForUserInteraction"]
      150 CALL                             R15 1 1
      151 JUMPIF                           R15 ; [+1]
      152 JUMP                             ; [+4]
      153 MOVE                             R16 R1
      154 MOVE                             R17 R0
      155 MOVE                             R18 R14
      156 CALL                             R16 2 0
      157 CLOSEUPVALS                      R8
      158 JUMP                             ; [+16]
      159 GETUPVAL                         R8 5
      160 GETTABLEKS                       R8 R8 K68 ["build"]
      162 MOVE                             R9 R6
      163 CALL                             R8 1 1
      164 GETTABLEKS                       R9 R8 K69 ["pluginLoader"]
      166 NAMECALL                         R9 R9 K70 ["waitForUserInteraction"]
      168 CALL                             R9 1 1
      169 JUMPIF                           R9 ; [+1]
      170 JUMP                             ; [+4]
      171 MOVE                             R10 R1
      172 MOVE                             R11 R0
      173 MOVE                             R12 R8
      174 CALL                             R10 2 0
      175 CLOSEUPVALS                      R4
      176 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Assistant"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["PluginLoader"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K10 ["PluginLoaderBuilder"]
       23 GETTABLEKS                       R4 R0 K6 ["Src"]
       25 GETTABLEKS                       R4 R4 K11 ["Resources"]
       27 GETTABLEKS                       R4 R4 K12 ["Localization"]
       29 GETTABLEKS                       R4 R4 K13 ["SourceStrings"]
       31 GETTABLEKS                       R5 R0 K6 ["Src"]
       33 GETTABLEKS                       R5 R5 K11 ["Resources"]
       35 GETTABLEKS                       R5 R5 K12 ["Localization"]
       37 GETTABLEKS                       R5 R5 K14 ["LocalizedStrings"]
       39 GETIMPORT                        R6 K16 [game]
       41 LOADK                            R8 K17 ["RaiseAssistantVisibility"]
       42 NAMECALL                         R6 R6 K18 ["GetEngineFeature"]
       44 CALL                             R6 2 1
       45 DUPCLOSURE                       R7 K19 [PROTO_11]
       46 CAPTURE                          VAL R0
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R4
       49 CAPTURE                          VAL R1
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R3
       52 RETURN                           R7 1
