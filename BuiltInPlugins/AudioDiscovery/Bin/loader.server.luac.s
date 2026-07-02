PROTO_0:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Toolbar"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_1:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

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
        4 LOADK                            R7 K1 ["Toolbar"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_5:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K5 ["defineLuaFlags"]
        9 CALL                             R0 1 1
       10 GETIMPORT                        R1 K7 [game]
       12 LOADK                            R3 K8 ["RetireAudioDiscoveryPlugin"]
       13 NAMECALL                         R1 R1 K9 ["GetFastFlag"]
       15 CALL                             R1 2 1
       16 JUMPIFNOT                        R1 ; [+1]
       17 RETURN                           R0 0
       18 GETIMPORT                        R1 K3 [script]
       20 GETTABLEKS                       R1 R1 K4 ["Parent"]
       22 GETTABLEKS                       R1 R1 K4 ["Parent"]
       24 GETIMPORT                        R2 K1 [require]
       26 GETTABLEKS                       R3 R1 K10 ["Src"]
       28 GETTABLEKS                       R3 R3 K11 ["Util"]
       30 GETTABLEKS                       R3 R3 K12 ["DebugFlags"]
       32 CALL                             R2 1 1
       33 GETTABLEKS                       R3 R2 K13 ["RunningUnderCLI"]
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+1]
       37 RETURN                           R0 0
       38 GETIMPORT                        R3 K1 [require]
       40 GETTABLEKS                       R4 R1 K14 ["Packages"]
       42 GETTABLEKS                       R4 R4 K15 ["PluginLoader"]
       44 CALL                             R3 1 1
       45 GETTABLEKS                       R4 R3 K16 ["PluginLoaderBuilder"]
       47 GETTABLEKS                       R5 R1 K10 ["Src"]
       49 GETTABLEKS                       R5 R5 K17 ["Resources"]
       51 GETTABLEKS                       R5 R5 K18 ["Localization"]
       53 GETTABLEKS                       R5 R5 K19 ["SourceStrings"]
       55 GETTABLEKS                       R6 R1 K10 ["Src"]
       57 GETTABLEKS                       R6 R6 K17 ["Resources"]
       59 GETTABLEKS                       R6 R6 K18 ["Localization"]
       61 GETTABLEKS                       R6 R6 K20 ["LocalizedStrings"]
       63 LOADNIL                          R7
       64 LOADNIL                          R8
       65 LOADNIL                          R9
       66 GETTABLEKS                       R10 R0 K21 ["shouldMigrateToActions"]
       68 CALL                             R10 0 1
       69 JUMPIFNOT                        R10 ; [+33]
       70 GETIMPORT                        R10 K1 [require]
       72 GETTABLEKS                       R11 R1 K14 ["Packages"]
       74 GETTABLEKS                       R11 R11 K22 ["StudioFoundation"]
       76 CALL                             R10 1 1
       77 GETTABLEKS                       R11 R10 K11 ["Util"]
       79 GETTABLEKS                       R11 R11 K23 ["StudioUri"]
       81 GETIMPORT                        R12 K25 [plugin]
       83 NAMECALL                         R12 R12 K26 ["GetUri"]
       85 CALL                             R12 1 1
       86 GETTABLEKS                       R13 R11 K27 ["join"]
       88 MOVE                             R14 R12
       89 DUPTABLE                         R15 K32 [{["Category"] = "Actions", ["ItemId"] = "Toggle"}]
       90 CALL                             R13 2 1
       91 MOVE                             R8 R13
       92 DUPTABLE                         R13 K44 [{["getText"], ["getTooltip"], ["uri"], ["icon"] = "ViewSounds", ["enabled"] = False, ["visible"] = True, ["checkable"] = True, ["checked"] = False}]
       93 DUPCLOSURE                       R14 K45 [PROTO_0]
       94 SETTABLEKS                       R14 R13 K33 ["getText"]
       96 DUPCLOSURE                       R14 K46 [PROTO_1]
       97 SETTABLEKS                       R14 R13 K34 ["getTooltip"]
       99 SETTABLEKS                       R8 R13 K35 ["uri"]
      101 MOVE                             R7 R13
      102 JUMP                             ; [+8]
      103 DUPTABLE                         R10 K50 [{["getName"], ["getDescription"], ["icon"] = "rbxlocaltheme://ViewSounds", ["enabled"] = False}]
      104 DUPCLOSURE                       R11 K51 [PROTO_2]
      105 SETTABLEKS                       R11 R10 K47 ["getName"]
      107 DUPCLOSURE                       R11 K52 [PROTO_3]
      108 SETTABLEKS                       R11 R10 K48 ["getDescription"]
      110 MOVE                             R9 R10
      111 DUPTABLE                         R10 K61 [{["plugin"], ["pluginName"] = "AudioDiscovery", ["translationResourceTable"], ["fallbackResourceTable"], ["getToolbarName"], ["actionInfos"], ["buttonInfo"], ["noToolbar"]}]
      112 GETIMPORT                        R11 K25 [plugin]
      114 SETTABLEKS                       R11 R10 K24 ["plugin"]
      116 SETTABLEKS                       R6 R10 K55 ["translationResourceTable"]
      118 SETTABLEKS                       R5 R10 K56 ["fallbackResourceTable"]
      120 DUPCLOSURE                       R11 K62 [PROTO_4]
      121 SETTABLEKS                       R11 R10 K57 ["getToolbarName"]
      123 GETTABLEKS                       R12 R0 K21 ["shouldMigrateToActions"]
      125 CALL                             R12 0 1
      126 JUMPIFNOT                        R12 ; [+6]
      127 NEWTABLE                         R11 0 1
      129 MOVE                             R12 R7
      130 SETLIST                          R11 R12 1 [1]
      132 JUMP                             ; [+1]
      133 LOADNIL                          R11
      134 SETTABLEKS                       R11 R10 K58 ["actionInfos"]
      136 GETTABLEKS                       R12 R0 K21 ["shouldMigrateToActions"]
      138 CALL                             R12 0 1
      139 JUMPIF                           R12 ; [+2]
      140 MOVE                             R11 R9
      141 JUMP                             ; [+1]
      142 LOADNIL                          R11
      143 SETTABLEKS                       R11 R10 K59 ["buttonInfo"]
      145 GETTABLEKS                       R11 R0 K21 ["shouldMigrateToActions"]
      147 CALL                             R11 0 1
      148 SETTABLEKS                       R11 R10 K60 ["noToolbar"]
      150 GETIMPORT                        R11 K7 [game]
      152 LOADK                            R13 K63 ["RunService"]
      153 NAMECALL                         R11 R11 K64 ["GetService"]
      155 CALL                             R11 2 1
      156 NAMECALL                         R12 R11 K65 ["IsEdit"]
      158 CALL                             R12 1 1
      159 JUMPIFNOT                        R12 ; [+67]
      160 GETTABLEKS                       R12 R0 K21 ["shouldMigrateToActions"]
      162 CALL                             R12 0 1
      163 JUMPIFNOT                        R12 ; [+4]
      164 LOADB                            R12 1
      165 SETTABLEKS                       R12 R7 K38 ["enabled"]
      167 JUMP                             ; [+3]
      168 LOADB                            R12 1
      169 SETTABLEKS                       R12 R9 K38 ["enabled"]
      171 DUPTABLE                         R12 K70 [{["id"] = "AudioDiscovery", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["zIndexBehavior"]}]
      172 GETIMPORT                        R13 K73 [DockWidgetPluginGuiInfo.new]
      174 GETIMPORT                        R14 K77 [Enum.InitialDockState.Bottom]
      176 LOADB                            R15 0
      177 LOADB                            R16 0
      178 LOADN                            R17 640
      179 LOADN                            R18 480
      180 LOADN                            R19 250
      181 LOADN                            R20 200
      182 CALL                             R13 7 1
      183 SETTABLEKS                       R13 R12 K67 ["dockWidgetPluginGuiInfo"]
      185 DUPCLOSURE                       R13 K78 [PROTO_5]
      186 SETTABLEKS                       R13 R12 K68 ["getDockTitle"]
      188 GETIMPORT                        R13 K81 [Enum.ZIndexBehavior.Sibling]
      190 SETTABLEKS                       R13 R12 K69 ["zIndexBehavior"]
      192 SETTABLEKS                       R12 R10 K82 ["dockWidgetInfo"]
      194 GETTABLEKS                       R12 R4 K83 ["build"]
      196 MOVE                             R13 R10
      197 CALL                             R12 1 1
      198 GETTABLEKS                       R13 R12 K84 ["pluginLoader"]
      200 NAMECALL                         R13 R13 K85 ["waitForUserInteraction"]
      202 CALL                             R13 1 1
      203 JUMPIF                           R13 ; [+1]
      204 RETURN                           R0 0
      205 GETIMPORT                        R14 K1 [require]
      207 GETIMPORT                        R15 K3 [script]
      209 GETTABLEKS                       R15 R15 K4 ["Parent"]
      211 GETTABLEKS                       R15 R15 K86 ["main"]
      213 CALL                             R14 1 1
      214 MOVE                             R15 R14
      215 GETIMPORT                        R16 K25 [plugin]
      217 MOVE                             R17 R12
      218 GETTABLEKS                       R19 R0 K21 ["shouldMigrateToActions"]
      220 CALL                             R19 0 1
      221 JUMPIFNOT                        R19 ; [+2]
      222 MOVE                             R18 R8
      223 JUMP                             ; [+1]
      224 LOADNIL                          R18
      225 CALL                             R15 3 0
      226 RETURN                           R0 0
      227 GETTABLEKS                       R12 R4 K83 ["build"]
      229 MOVE                             R13 R10
      230 CALL                             R12 1 0
      231 RETURN                           R0 0
