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
       89 DUPTABLE                         R10 K35 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "overrideLocaleId", "localizationNamespace", "getToolbarName", "buttonInfo", "dockWidgetInfo", "extraTriggers"}]
       90 GETIMPORT                        R11 K36 [plugin]
       92 SETTABLEKS                       R11 R10 K25 ["plugin"]
       94 LOADK                            R11 K2 ["R15Migrator"]
       95 SETTABLEKS                       R11 R10 K26 ["pluginName"]
       97 SETTABLEKS                       R4 R10 K27 ["translationResourceTable"]
       99 SETTABLEKS                       R3 R10 K28 ["fallbackResourceTable"]
      101 LOADNIL                          R11
      102 SETTABLEKS                       R11 R10 K29 ["overrideLocaleId"]
      104 LOADNIL                          R11
      105 SETTABLEKS                       R11 R10 K30 ["localizationNamespace"]
      107 DUPCLOSURE                       R11 K37 [PROTO_0]
      108 SETTABLEKS                       R11 R10 K31 ["getToolbarName"]
      110 DUPTABLE                         R11 K42 [{"getName", "getDescription", "icon", "text"}]
      111 DUPCLOSURE                       R12 K43 [PROTO_1]
      112 SETTABLEKS                       R12 R11 K38 ["getName"]
      114 DUPCLOSURE                       R12 K44 [PROTO_2]
      115 SETTABLEKS                       R12 R11 K39 ["getDescription"]
      117 LOADK                            R12 K45 ["http://www.roblox.com/asset/?id=12399871436"]
      118 SETTABLEKS                       R12 R11 K40 ["icon"]
      120 LOADNIL                          R12
      121 SETTABLEKS                       R12 R11 K41 ["text"]
      123 SETTABLEKS                       R11 R10 K32 ["buttonInfo"]
      125 DUPTABLE                         R11 K51 [{"id", "dockWidgetPluginGuiInfo", "getDockTitle", "name", "zIndexBehavior"}]
      126 LOADK                            R12 K2 ["R15Migrator"]
      127 SETTABLEKS                       R12 R11 K46 ["id"]
      129 GETIMPORT                        R12 K54 [DockWidgetPluginGuiInfo.new]
      131 GETIMPORT                        R13 K58 [Enum.InitialDockState.Left]
      133 GETTABLEKS                       R14 R8 K59 ["InitiallyEnabled"]
      135 GETIMPORT                        R16 K36 [plugin]
      137 GETIMPORT                        R17 K22 [game]
      139 GETTABLEKS                       R17 R17 K60 ["GameId"]
      141 NAMECALL                         R14 R14 K61 ["getBooleanSetting"]
      143 CALL                             R14 3 1
      144 LOADB                            R15 1
      145 LOADN                            R16 252
      146 LOADN                            R17 128
      147 LOADN                            R18 252
      148 LOADN                            R19 128
      149 CALL                             R12 7 1
      150 SETTABLEKS                       R12 R11 K47 ["dockWidgetPluginGuiInfo"]
      152 DUPCLOSURE                       R12 K62 [PROTO_3]
      153 SETTABLEKS                       R12 R11 K48 ["getDockTitle"]
      155 LOADK                            R12 K2 ["R15Migrator"]
      156 SETTABLEKS                       R12 R11 K49 ["name"]
      158 GETIMPORT                        R12 K65 [Enum.ZIndexBehavior.Sibling]
      160 SETTABLEKS                       R12 R11 K50 ["zIndexBehavior"]
      162 SETTABLEKS                       R11 R10 K33 ["dockWidgetInfo"]
      164 NEWTABLE                         R11 1 0
      166 DUPCLOSURE                       R12 K66 [PROTO_4]
      167 CAPTURE                          VAL R9
      168 SETTABLEKS                       R12 R11 K67 ["StudioPublishService.OnPublishAttempt"]
      170 SETTABLEKS                       R11 R10 K34 ["extraTriggers"]
      172 GETTABLEKS                       R11 R8 K59 ["InitiallyEnabled"]
      174 GETIMPORT                        R13 K36 [plugin]
      176 GETIMPORT                        R14 K22 [game]
      178 GETTABLEKS                       R14 R14 K60 ["GameId"]
      180 LOADNIL                          R15
      181 NAMECALL                         R11 R11 K68 ["setSetting"]
      183 CALL                             R11 4 0
      184 GETTABLEKS                       R11 R6 K69 ["build"]
      186 MOVE                             R12 R10
      187 CALL                             R11 1 1
      188 GETTABLEKS                       R12 R11 K70 ["pluginLoader"]
      190 NAMECALL                         R12 R12 K71 ["waitForUserInteraction"]
      192 CALL                             R12 1 1
      193 JUMPIF                           R12 ; [+1]
      194 RETURN                           R0 0
      195 GETIMPORT                        R13 K5 [require]
      197 GETIMPORT                        R14 K1 [script]
      199 GETTABLEKS                       R14 R14 K72 ["Parent"]
      201 GETTABLEKS                       R14 R14 K73 ["main"]
      203 CALL                             R13 1 1
      204 MOVE                             R14 R13
      205 GETIMPORT                        R15 K36 [plugin]
      207 MOVE                             R16 R11
      208 CALL                             R14 2 0
      209 RETURN                           R0 0
