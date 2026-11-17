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
        7 DUPCLOSURE                       R5 K2 [PROTO_0]
        8 FASTPCALL                        pcall 1 ; [+2]
        9 GETIMPORT                        R4 K4 [pcall]
       11 CALL                             R4 1 0
       12 LOADB                            R4 0
       13 NEWCLOSURE                       R6 P1
       14 CAPTURE                          REF R4
       15 FASTPCALL                        pcall 1 ; [+2]
       16 GETIMPORT                        R5 K4 [pcall]
       18 CALL                             R5 1 0
       19 DUPTABLE                         R5 K13 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = False, ["clickableWhenViewportHidden"] = True}]
       20 DUPCLOSURE                       R6 K14 [PROTO_2]
       21 SETTABLEKS                       R6 R5 K5 ["getName"]
       23 DUPCLOSURE                       R6 K15 [PROTO_3]
       24 SETTABLEKS                       R6 R5 K6 ["getDescription"]
       26 DUPTABLE                         R6 K24 [{["plugin"], ["pluginName"] = "Assistant", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["buttonInfo"], ["extraTriggers"]}]
       27 SETTABLEKS                       R0 R6 K16 ["plugin"]
       29 GETUPVAL                         R7 1
       30 SETTABLEKS                       R7 R6 K19 ["translationResourceTable"]
       32 GETUPVAL                         R7 2
       33 SETTABLEKS                       R7 R6 K20 ["fallbackResourceTable"]
       35 DUPCLOSURE                       R7 K25 [PROTO_4]
       36 SETTABLEKS                       R7 R6 K21 ["getToolbarName"]
       38 SETTABLEKS                       R5 R6 K22 ["buttonInfo"]
       40 JUMPIFNOT                        R2 ; [+6]
       41 DUPTABLE                         R7 K27 [{"SessionStarted"}]
       42 NEWCLOSURE                       R8 P5
       43 CAPTURE                          VAL R3
       44 SETTABLEKS                       R8 R7 K26 ["SessionStarted"]
       46 JUMP                             ; [+1]
       47 LOADNIL                          R7
       48 SETTABLEKS                       R7 R6 K23 ["extraTriggers"]
       50 JUMPIFNOT                        R2 ; [+19]
       51 GETUPVAL                         R7 3
       52 GETTABLEKS                       R7 R7 K28 ["FFlagMCPClientCountAsASetting"]
       54 JUMPIFNOT                        R7 ; [+15]
       55 DUPCLOSURE                       R7 K29 [PROTO_6]
       56 NEWTABLE                         R8 0 1
       58 DUPTABLE                         R9 K35 [{["uri"], ["isPreexistingAction"] = False, ["enabled"] = True, ["visible"] = True, ["getText"], ["getTooltip"]}]
       59 DUPTABLE                         R10 K43 [{["DataModel"] = "Standalone", ["PluginId"] = "Assistant", ["Category"] = "Actions", ["ItemId"] = "OpenMcpSettings"}]
       60 SETTABLEKS                       R10 R9 K30 ["uri"]
       62 SETTABLEKS                       R7 R9 K33 ["getText"]
       64 SETTABLEKS                       R7 R9 K34 ["getTooltip"]
       66 SETLIST                          R8 R9 1 [1]
       68 SETTABLEKS                       R8 R6 K44 ["actionInfos"]
       70 LOADB                            R7 1
       71 SETTABLEKS                       R7 R5 K9 ["enabled"]
       73 DUPTABLE                         R7 K49 [{["id"] = "Assistant", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       74 GETIMPORT                        R8 K52 [DockWidgetPluginGuiInfo.new]
       76 GETUPVAL                         R10 4
       77 JUMPIFNOT                        R10 ; [+3]
       78 GETIMPORT                        R9 K56 [Enum.InitialDockState.Left]
       80 JUMP                             ; [+2]
       81 GETIMPORT                        R9 K58 [Enum.InitialDockState.Right]
       83 GETUPVAL                         R10 4
       84 LOADB                            R11 0
       85 LOADN                            R12 640
       86 LOADN                            R13 480
       87 LOADN                            R14 250
       88 LOADN                            R15 200
       89 CALL                             R8 7 1
       90 SETTABLEKS                       R8 R7 K46 ["dockWidgetPluginGuiInfo"]
       92 NEWCLOSURE                       R8 P7
       93 CAPTURE                          REF R4
       94 SETTABLEKS                       R8 R7 K47 ["getDockTitle"]
       96 GETIMPORT                        R8 K61 [Enum.ZIndexBehavior.Sibling]
       98 SETTABLEKS                       R8 R7 K48 ["zIndexBehavior"]
      100 SETTABLEKS                       R7 R6 K62 ["dockWidgetInfo"]
      102 NEWCLOSURE                       R7 P8
      103 CAPTURE                          UPVAL U5
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R1
      106 CAPTURE                          VAL R0
      107 GETUPVAL                         R8 4
      108 JUMPIFNOT                        R8 ; [+53]
      109 LOADB                            R8 0
      110 LOADNIL                          R9
      111 NEWCLOSURE                       R10 P9
      112 CAPTURE                          REF R8
      113 CAPTURE                          REF R9
      114 CAPTURE                          UPVAL U5
      115 CAPTURE                          VAL R6
      116 CAPTURE                          VAL R1
      117 CAPTURE                          VAL R0
      118 LOADK                            R13 K63 ["PlaceManager"]
      119 NAMECALL                         R11 R0 K64 ["GetPluginComponent"]
      121 CALL                             R11 2 1
      122 GETTABLEKS                       R12 R11 K65 ["PlaceDocPanelShown"]
      124 MOVE                             R14 R10
      125 NAMECALL                         R12 R12 K66 ["Connect"]
      127 CALL                             R12 2 1
      128 MOVE                             R9 R12
      129 NEWCLOSURE                       R13 P10
      130 CAPTURE                          VAL R11
      131 FASTPCALL                        pcall 1 ; [+2]
      132 GETIMPORT                        R12 K4 [pcall]
      134 CALL                             R12 1 2
      135 JUMPIFNOT                        R12 ; [+24]
      136 JUMPIFNOT                        R13 ; [+23]
      137 JUMPIFNOT                        R8 ; [+1]
      138 JUMP                             ; [+21]
      139 LOADB                            R8 1
      140 JUMPIFNOT                        R9 ; [+3]
      141 NAMECALL                         R14 R9 K67 ["Disconnect"]
      143 CALL                             R14 1 0
      144 GETUPVAL                         R14 5
      145 GETTABLEKS                       R14 R14 K68 ["build"]
      147 MOVE                             R15 R6
      148 CALL                             R14 1 1
      149 GETTABLEKS                       R15 R14 K69 ["pluginLoader"]
      151 NAMECALL                         R15 R15 K70 ["waitForUserInteraction"]
      153 CALL                             R15 1 1
      154 JUMPIF                           R15 ; [+1]
      155 JUMP                             ; [+4]
      156 MOVE                             R16 R1
      157 MOVE                             R17 R0
      158 MOVE                             R18 R14
      159 CALL                             R16 2 0
      160 CLOSEUPVALS                      R8
      161 JUMP                             ; [+16]
      162 GETUPVAL                         R8 5
      163 GETTABLEKS                       R8 R8 K68 ["build"]
      165 MOVE                             R9 R6
      166 CALL                             R8 1 1
      167 GETTABLEKS                       R9 R8 K69 ["pluginLoader"]
      169 NAMECALL                         R9 R9 K70 ["waitForUserInteraction"]
      171 CALL                             R9 1 1
      172 JUMPIF                           R9 ; [+1]
      173 JUMP                             ; [+4]
      174 MOVE                             R10 R1
      175 MOVE                             R11 R0
      176 MOVE                             R12 R8
      177 CALL                             R10 2 0
      178 CLOSEUPVALS                      R4
      179 RETURN                           R0 0

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
