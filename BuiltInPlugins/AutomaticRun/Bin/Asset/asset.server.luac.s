MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [plugin]
        3 JUMPIF                           R0 ; [+1]
        4 RETURN                           R0 0
        5 GETIMPORT                        R0 K3 [game]
        7 LOADK                            R2 K4 ["ApolloPlaceLoadWait"]
        8 LOADN                            R3 5
        9 NAMECALL                         R0 R0 K5 ["DefineFastInt"]
       11 CALL                             R0 3 0
       12 GETIMPORT                        R0 K3 [game]
       14 LOADK                            R2 K4 ["ApolloPlaceLoadWait"]
       15 NAMECALL                         R0 R0 K6 ["GetFastInt"]
       17 CALL                             R0 2 1
       18 GETIMPORT                        R1 K8 [script]
       20 LOADK                            R3 K9 ["AutomaticRun"]
       21 NAMECALL                         R1 R1 K10 ["FindFirstAncestor"]
       23 CALL                             R1 2 1
       24 GETIMPORT                        R2 K12 [require]
       26 GETTABLEKS                       R4 R1 K13 ["Packages"]
       28 GETTABLEKS                       R3 R4 K14 ["TestLoader"]
       30 CALL                             R2 1 1
       31 GETTABLEKS                       R3 R2 K15 ["launch"]
       33 LOADK                            R4 K9 ["AutomaticRun"]
       34 GETTABLEKS                       R5 R1 K16 ["Src"]
       36 CALL                             R3 2 0
       37 GETTABLEKS                       R3 R2 K17 ["isCli"]
       39 CALL                             R3 0 1
       40 JUMPIFNOT                        R3 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R3 K12 [require]
       44 GETTABLEKS                       R6 R1 K18 ["Bin"]
       46 GETTABLEKS                       R5 R6 K19 ["Common"]
       48 GETTABLEKS                       R4 R5 K20 ["defineLuaFlags"]
       50 CALL                             R3 1 1
       51 GETTABLEKS                       R4 R3 K21 ["getFFlagDebugEnableAutomaticRun"]
       53 CALL                             R4 0 1
       54 JUMPIF                           R4 ; [+1]
       55 RETURN                           R0 0
       56 GETIMPORT                        R4 K12 [require]
       58 GETTABLEKS                       R7 R1 K18 ["Bin"]
       60 GETTABLEKS                       R6 R7 K19 ["Common"]
       62 GETTABLEKS                       R5 R6 K22 ["pluginType"]
       64 CALL                             R4 1 1
       65 GETTABLEKS                       R5 R4 K23 ["get"]
       67 CALL                             R5 0 1
       68 GETTABLEKS                       R6 R4 K24 ["Asset"]
       70 JUMPIFEQ                         R5 R6 ; [+2]
       72 RETURN                           R0 0
       73 GETIMPORT                        R5 K3 [game]
       75 LOADK                            R7 K25 ["RunService"]
       76 NAMECALL                         R5 R5 K26 ["GetService"]
       78 CALL                             R5 2 1
       79 NAMECALL                         R5 R5 K27 ["IsEdit"]
       81 CALL                             R5 1 1
       82 JUMPIFNOT                        R5 ; [+27]
       83 GETIMPORT                        R5 K29 [wait]
       85 MOVE                             R6 R0
       86 CALL                             R5 1 0
       87 DUPTABLE                         R5 K34 [{"DataModel", "PluginId", "Category", "ItemId"}]
       88 LOADK                            R6 K35 ["Standalone"]
       89 SETTABLEKS                       R6 R5 K30 ["DataModel"]
       91 LOADK                            R6 K36 ["RunTools"]
       92 SETTABLEKS                       R6 R5 K31 ["PluginId"]
       94 LOADK                            R6 K37 ["Actions"]
       95 SETTABLEKS                       R6 R5 K32 ["Category"]
       97 LOADK                            R6 K38 ["Run"]
       98 SETTABLEKS                       R6 R5 K33 ["ItemId"]
      100 GETIMPORT                        R6 K1 [plugin]
      102 LOADK                            R8 K37 ["Actions"]
      103 NAMECALL                         R6 R6 K39 ["GetPluginComponent"]
      105 CALL                             R6 2 1
      106 MOVE                             R9 R5
      107 NAMECALL                         R7 R6 K40 ["ActivateAsync"]
      109 CALL                             R7 2 0
      110 RETURN                           R0 0
