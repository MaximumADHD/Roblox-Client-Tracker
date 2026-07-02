PROTO_0:
        0 LOADK                            R3 K0 ["AvatarUnification"]
        1 RETURN                           R3 1

PROTO_1:
        0 LOADK                            R3 K0 ["r15_migration_button"]
        1 RETURN                           R3 1

PROTO_2:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Description"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_3:
        0 MOVE                             R3 R0
        1 MOVE                             R4 R1
        2 MOVE                             R5 R2
        3 LOADK                            R6 K0 ["Plugin"]
        4 LOADK                            R7 K1 ["Name"]
        5 CALL                             R3 4 -1
        6 RETURN                           R3 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnPublishAttempt"]
        3 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["R15Migrator"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["DebugFlags"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K7 ["Util"]
       22 GETTABLEKS                       R3 R3 K9 ["shouldPluginRun"]
       24 CALL                             R2 1 1
       25 MOVE                             R3 R2
       26 CALL                             R3 0 1
       27 JUMPIF                           R3 ; [+1]
       28 RETURN                           R0 0
       29 GETTABLEKS                       R3 R1 K10 ["RunTests"]
       31 CALL                             R3 0 1
       32 JUMPIF                           R3 ; [+4]
       33 GETTABLEKS                       R3 R1 K11 ["RunningUnderCLI"]
       35 CALL                             R3 0 1
       36 JUMPIFNOT                        R3 ; [+1]
       37 RETURN                           R0 0
       38 GETTABLEKS                       R3 R0 K6 ["Src"]
       40 GETTABLEKS                       R3 R3 K12 ["Resources"]
       42 GETTABLEKS                       R3 R3 K13 ["Localization"]
       44 GETTABLEKS                       R3 R3 K14 ["SourceStrings"]
       46 GETTABLEKS                       R4 R0 K6 ["Src"]
       48 GETTABLEKS                       R4 R4 K12 ["Resources"]
       50 GETTABLEKS                       R4 R4 K13 ["Localization"]
       52 GETTABLEKS                       R4 R4 K15 ["LocalizedStrings"]
       54 GETIMPORT                        R5 K5 [require]
       56 GETTABLEKS                       R6 R0 K16 ["Packages"]
       58 GETTABLEKS                       R6 R6 K17 ["PluginLoader"]
       60 CALL                             R5 1 1
       61 GETTABLEKS                       R6 R5 K18 ["PluginLoaderBuilder"]
       63 GETIMPORT                        R7 K5 [require]
       65 GETTABLEKS                       R8 R0 K6 ["Src"]
       67 GETTABLEKS                       R8 R8 K7 ["Util"]
       69 GETTABLEKS                       R8 R8 K19 ["checkPublishLock"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K6 ["Src"]
       76 GETTABLEKS                       R9 R9 K7 ["Util"]
       78 GETTABLEKS                       R9 R9 K20 ["PluginSettings"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K22 [game]
       83 LOADK                            R11 K23 ["StudioPublishService"]
       84 NAMECALL                         R9 R9 K24 ["GetService"]
       86 CALL                             R9 2 1
       87 MOVE                             R10 R7
       88 CALL                             R10 0 0
       89 DUPTABLE                         R10 K36 [{["plugin"], ["pluginName"] = "R15Migrator", ["translationResourceTable"], ["fallbackResourceTable"], ["overrideLocaleId"] = , ["localizationNamespace"] = , ["getToolbarName"], ["buttonInfo"], ["dockWidgetInfo"], ["extraTriggers"]}]
       90 GETIMPORT                        R11 K37 [plugin]
       92 SETTABLEKS                       R11 R10 K25 ["plugin"]
       94 SETTABLEKS                       R4 R10 K27 ["translationResourceTable"]
       96 SETTABLEKS                       R3 R10 K28 ["fallbackResourceTable"]
       98 DUPCLOSURE                       R11 K38 [PROTO_0]
       99 SETTABLEKS                       R11 R10 K32 ["getToolbarName"]
      101 DUPTABLE                         R11 K44 [{["getName"], ["getDescription"], ["icon"] = "http://www.roblox.com/asset/?id=12399871436", ["text"] = }]
      102 DUPCLOSURE                       R12 K45 [PROTO_1]
      103 SETTABLEKS                       R12 R11 K39 ["getName"]
      105 DUPCLOSURE                       R12 K46 [PROTO_2]
      106 SETTABLEKS                       R12 R11 K40 ["getDescription"]
      108 SETTABLEKS                       R11 R10 K33 ["buttonInfo"]
      110 DUPTABLE                         R11 K52 [{["id"] = "R15Migrator", ["dockWidgetPluginGuiInfo"], ["getDockTitle"], ["name"] = "R15Migrator", ["zIndexBehavior"]}]
      111 GETIMPORT                        R12 K55 [DockWidgetPluginGuiInfo.new]
      113 GETIMPORT                        R13 K59 [Enum.InitialDockState.Left]
      115 GETTABLEKS                       R14 R8 K60 ["InitiallyEnabled"]
      117 GETIMPORT                        R16 K37 [plugin]
      119 GETIMPORT                        R17 K22 [game]
      121 GETTABLEKS                       R17 R17 K61 ["GameId"]
      123 NAMECALL                         R14 R14 K62 ["getBooleanSetting"]
      125 CALL                             R14 3 1
      126 LOADB                            R15 1
      127 LOADN                            R16 508
      128 LOADN                            R17 640
      129 LOADN                            R18 508
      130 LOADN                            R19 640
      131 CALL                             R12 7 1
      132 SETTABLEKS                       R12 R11 K48 ["dockWidgetPluginGuiInfo"]
      134 DUPCLOSURE                       R12 K63 [PROTO_3]
      135 SETTABLEKS                       R12 R11 K49 ["getDockTitle"]
      137 GETIMPORT                        R12 K66 [Enum.ZIndexBehavior.Sibling]
      139 SETTABLEKS                       R12 R11 K51 ["zIndexBehavior"]
      141 SETTABLEKS                       R11 R10 K34 ["dockWidgetInfo"]
      143 NEWTABLE                         R11 1 0
      145 DUPCLOSURE                       R12 K67 [PROTO_4]
      146 CAPTURE                          VAL R9
      147 SETTABLEKS                       R12 R11 K68 ["StudioPublishService.OnPublishAttempt"]
      149 SETTABLEKS                       R11 R10 K35 ["extraTriggers"]
      151 GETTABLEKS                       R11 R8 K60 ["InitiallyEnabled"]
      153 GETIMPORT                        R13 K37 [plugin]
      155 GETIMPORT                        R14 K22 [game]
      157 GETTABLEKS                       R14 R14 K61 ["GameId"]
      159 LOADNIL                          R15
      160 NAMECALL                         R11 R11 K69 ["setSetting"]
      162 CALL                             R11 4 0
      163 GETTABLEKS                       R11 R6 K70 ["build"]
      165 MOVE                             R12 R10
      166 CALL                             R11 1 1
      167 GETTABLEKS                       R12 R11 K71 ["pluginLoader"]
      169 NAMECALL                         R12 R12 K72 ["waitForUserInteraction"]
      171 CALL                             R12 1 1
      172 JUMPIF                           R12 ; [+1]
      173 RETURN                           R0 0
      174 GETIMPORT                        R13 K5 [require]
      176 GETIMPORT                        R14 K1 [script]
      178 GETTABLEKS                       R14 R14 K73 ["Parent"]
      180 GETTABLEKS                       R14 R14 K74 ["main"]
      182 CALL                             R13 1 1
      183 MOVE                             R14 R13
      184 GETIMPORT                        R15 K37 [plugin]
      186 MOVE                             R16 R11
      187 CALL                             R14 2 0
      188 RETURN                           R0 0
