PROTO_0:
        0 LOADK                            R3 K0 ["AssistantButton"]
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
        0 LOADK                            R3 K0 ["AssistantToolbar"]
        1 RETURN                           R3 1

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["DataModelSessionStarted"]
        3 RETURN                           R0 1

PROTO_4:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
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

PROTO_6:
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

PROTO_7:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["IsPlaceDocumentOpen"]
        3 CALL                             R0 1 -1
        4 RETURN                           R0 -1

PROTO_8:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["Name"]
        3 SETTABLEKS                       R3 R0 K0 ["Name"]
        5 GETTABLEKS                       R3 R0 K1 ["MultipleDocumentInterfaceInstance"]
        7 DUPTABLE                         R4 K10 [{["getName"], ["getDescription"], ["icon"] = "", ["enabled"] = False, ["clickableWhenViewportHidden"] = True}]
        8 DUPCLOSURE                       R5 K11 [PROTO_0]
        9 SETTABLEKS                       R5 R4 K2 ["getName"]
       11 DUPCLOSURE                       R5 K12 [PROTO_1]
       12 SETTABLEKS                       R5 R4 K3 ["getDescription"]
       14 DUPTABLE                         R5 K21 [{["plugin"], ["pluginName"] = "Assistant", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["buttonInfo"], ["extraTriggers"]}]
       15 SETTABLEKS                       R0 R5 K13 ["plugin"]
       17 GETUPVAL                         R6 1
       18 SETTABLEKS                       R6 R5 K16 ["translationResourceTable"]
       20 GETUPVAL                         R6 2
       21 SETTABLEKS                       R6 R5 K17 ["fallbackResourceTable"]
       23 DUPCLOSURE                       R6 K22 [PROTO_2]
       24 SETTABLEKS                       R6 R5 K18 ["getToolbarName"]
       26 SETTABLEKS                       R4 R5 K19 ["buttonInfo"]
       28 JUMPIFNOT                        R2 ; [+6]
       29 DUPTABLE                         R6 K24 [{"SessionStarted"}]
       30 NEWCLOSURE                       R7 P3
       31 CAPTURE                          VAL R3
       32 SETTABLEKS                       R7 R6 K23 ["SessionStarted"]
       34 JUMP                             ; [+1]
       35 LOADNIL                          R6
       36 SETTABLEKS                       R6 R5 K20 ["extraTriggers"]
       38 LOADB                            R6 1
       39 SETTABLEKS                       R6 R4 K6 ["enabled"]
       41 DUPTABLE                         R6 K29 [{["id"] = "Assistant", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
       42 GETIMPORT                        R7 K32 [DockWidgetPluginGuiInfo.new]
       44 GETUPVAL                         R9 3
       45 JUMPIFNOT                        R9 ; [+3]
       46 GETIMPORT                        R8 K36 [Enum.InitialDockState.Left]
       48 JUMP                             ; [+2]
       49 GETIMPORT                        R8 K38 [Enum.InitialDockState.Right]
       51 GETUPVAL                         R9 3
       52 LOADB                            R10 0
       53 LOADN                            R11 640
       54 LOADN                            R12 480
       55 LOADN                            R13 250
       56 LOADN                            R14 200
       57 CALL                             R7 7 1
       58 SETTABLEKS                       R7 R6 K26 ["dockWidgetPluginGuiInfo"]
       60 DUPCLOSURE                       R7 K39 [PROTO_4]
       61 SETTABLEKS                       R7 R6 K27 ["getDockTitle"]
       63 GETIMPORT                        R7 K42 [Enum.ZIndexBehavior.Sibling]
       65 SETTABLEKS                       R7 R6 K28 ["zIndexBehavior"]
       67 SETTABLEKS                       R6 R5 K43 ["dockWidgetInfo"]
       69 NEWCLOSURE                       R6 P5
       70 CAPTURE                          UPVAL U4
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R1
       73 CAPTURE                          VAL R0
       74 GETUPVAL                         R7 3
       75 JUMPIFNOT                        R7 ; [+52]
       76 LOADB                            R7 0
       77 LOADNIL                          R8
       78 NEWCLOSURE                       R9 P6
       79 CAPTURE                          REF R7
       80 CAPTURE                          REF R8
       81 CAPTURE                          UPVAL U4
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R1
       84 CAPTURE                          VAL R0
       85 LOADK                            R12 K44 ["PlaceManager"]
       86 NAMECALL                         R10 R0 K45 ["GetPluginComponent"]
       88 CALL                             R10 2 1
       89 GETTABLEKS                       R11 R10 K46 ["PlaceDocPanelShown"]
       91 MOVE                             R13 R9
       92 NAMECALL                         R11 R11 K47 ["Connect"]
       94 CALL                             R11 2 1
       95 MOVE                             R8 R11
       96 GETIMPORT                        R11 K49 [pcall]
       98 NEWCLOSURE                       R12 P7
       99 CAPTURE                          VAL R10
      100 CALL                             R11 1 2
      101 JUMPIFNOT                        R11 ; [+24]
      102 JUMPIFNOT                        R12 ; [+23]
      103 JUMPIFNOT                        R7 ; [+1]
      104 JUMP                             ; [+21]
      105 LOADB                            R7 1
      106 JUMPIFNOT                        R8 ; [+3]
      107 NAMECALL                         R13 R8 K50 ["Disconnect"]
      109 CALL                             R13 1 0
      110 GETUPVAL                         R13 4
      111 GETTABLEKS                       R13 R13 K51 ["build"]
      113 MOVE                             R14 R5
      114 CALL                             R13 1 1
      115 GETTABLEKS                       R14 R13 K52 ["pluginLoader"]
      117 NAMECALL                         R14 R14 K53 ["waitForUserInteraction"]
      119 CALL                             R14 1 1
      120 JUMPIF                           R14 ; [+1]
      121 JUMP                             ; [+4]
      122 MOVE                             R15 R1
      123 MOVE                             R16 R0
      124 MOVE                             R17 R13
      125 CALL                             R15 2 0
      126 CLOSEUPVALS                      R7
      127 RETURN                           R0 0
      128 GETUPVAL                         R7 4
      129 GETTABLEKS                       R7 R7 K51 ["build"]
      131 MOVE                             R8 R5
      132 CALL                             R7 1 1
      133 GETTABLEKS                       R8 R7 K52 ["pluginLoader"]
      135 NAMECALL                         R8 R8 K53 ["waitForUserInteraction"]
      137 CALL                             R8 1 1
      138 JUMPIF                           R8 ; [+1]
      139 RETURN                           R0 0
      140 MOVE                             R9 R1
      141 MOVE                             R10 R0
      142 MOVE                             R11 R7
      143 CALL                             R9 2 0
      144 RETURN                           R0 0

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
       38 DUPCLOSURE                       R6 K18 [PROTO_8]
       39 CAPTURE                          VAL R0
       40 CAPTURE                          VAL R4
       41 CAPTURE                          VAL R3
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R2
       44 RETURN                           R6 1
