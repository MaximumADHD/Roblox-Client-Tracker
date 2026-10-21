PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+4]
        2 GETUPVAL                         R0 0
        3 NAMECALL                         R0 R0 K0 ["unmount"]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [plugin]
        9 GETTABLEKS                       R2 R0 K6 ["Name"]
       11 SETTABLEKS                       R2 R1 K6 ["Name"]
       13 GETIMPORT                        R1 K8 [require]
       15 GETTABLEKS                       R2 R0 K9 ["Packages"]
       17 GETTABLEKS                       R2 R2 K10 ["TestLoader"]
       19 CALL                             R1 1 1
       20 GETTABLEKS                       R2 R1 K11 ["launch"]
       22 LOADK                            R3 K2 ["KnowledgeTutorials"]
       23 GETTABLEKS                       R4 R0 K12 ["Src"]
       25 CALL                             R2 2 0
       26 GETTABLEKS                       R2 R1 K13 ["isCli"]
       28 CALL                             R2 0 1
       29 JUMPIFNOT                        R2 ; [+1]
       30 RETURN                           R0 0
       31 GETIMPORT                        R2 K15 [game]
       33 LOADK                            R4 K16 ["RunService"]
       34 NAMECALL                         R2 R2 K17 ["GetService"]
       36 CALL                             R2 2 1
       37 NAMECALL                         R3 R2 K18 ["IsEdit"]
       39 CALL                             R3 1 1
       40 JUMPIF                           R3 ; [+1]
       41 RETURN                           R0 0
       42 GETIMPORT                        R3 K8 [require]
       44 GETTABLEKS                       R4 R0 K9 ["Packages"]
       46 GETTABLEKS                       R4 R4 K19 ["PluginLoader"]
       48 CALL                             R3 1 1
       49 GETTABLEKS                       R4 R3 K20 ["PluginLoaderBuilder"]
       51 GETTABLEKS                       R5 R0 K12 ["Src"]
       53 GETTABLEKS                       R5 R5 K21 ["Resources"]
       55 GETTABLEKS                       R5 R5 K22 ["Localization"]
       57 GETTABLEKS                       R5 R5 K23 ["SourceStrings"]
       59 GETTABLEKS                       R6 R0 K12 ["Src"]
       61 GETTABLEKS                       R6 R6 K21 ["Resources"]
       63 GETTABLEKS                       R6 R6 K22 ["Localization"]
       65 GETTABLEKS                       R6 R6 K24 ["LocalizedStrings"]
       67 DUPTABLE                         R7 K30 [{["plugin"], ["pluginName"] = "KnowledgeTutorials", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True}]
       68 GETIMPORT                        R8 K5 [plugin]
       70 SETTABLEKS                       R8 R7 K4 ["plugin"]
       72 SETTABLEKS                       R6 R7 K26 ["translationResourceTable"]
       74 SETTABLEKS                       R5 R7 K27 ["fallbackResourceTable"]
       76 GETTABLEKS                       R8 R4 K31 ["build"]
       78 MOVE                             R9 R7
       79 CALL                             R8 1 1
       80 GETIMPORT                        R9 K8 [require]
       82 GETTABLEKS                       R10 R0 K9 ["Packages"]
       84 GETTABLEKS                       R10 R10 K32 ["React"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K8 [require]
       89 GETTABLEKS                       R11 R0 K9 ["Packages"]
       91 GETTABLEKS                       R11 R11 K33 ["ReactRoblox"]
       93 CALL                             R10 1 1
       94 GETIMPORT                        R11 K8 [require]
       96 GETTABLEKS                       R12 R0 K12 ["Src"]
       98 GETTABLEKS                       R12 R12 K34 ["MainPlugin"]
      100 CALL                             R11 1 1
      101 GETTABLEKS                       R12 R9 K35 ["createElement"]
      103 MOVE                             R13 R11
      104 DUPTABLE                         R14 K38 [{"Plugin", "PluginLoaderContext"}]
      105 GETIMPORT                        R15 K5 [plugin]
      107 SETTABLEKS                       R15 R14 K36 ["Plugin"]
      109 SETTABLEKS                       R8 R14 K37 ["PluginLoaderContext"]
      111 CALL                             R12 2 1
      112 GETIMPORT                        R13 K41 [Instance.new]
      114 LOADK                            R14 K42 ["Frame"]
      115 CALL                             R13 1 1
      116 GETTABLEKS                       R14 R10 K43 ["createRoot"]
      118 MOVE                             R15 R13
      119 CALL                             R14 1 1
      120 MOVE                             R17 R12
      121 NAMECALL                         R15 R14 K44 ["render"]
      123 CALL                             R15 2 0
      124 GETIMPORT                        R15 K5 [plugin]
      126 GETTABLEKS                       R15 R15 K45 ["Unloading"]
      128 DUPCLOSURE                       R17 K46 [PROTO_0]
      129 CAPTURE                          VAL R14
      130 NAMECALL                         R15 R15 K47 ["Connect"]
      132 CALL                             R15 2 0
      133 RETURN                           R0 0
