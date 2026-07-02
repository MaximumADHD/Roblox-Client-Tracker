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
       31 GETIMPORT                        R2 K8 [require]
       33 GETTABLEKS                       R3 R0 K14 ["Bin"]
       35 GETTABLEKS                       R3 R3 K15 ["defineLuaFlags"]
       37 CALL                             R2 1 1
       38 GETTABLEKS                       R3 R2 K16 ["getFFlagEnableKnowledgeTutorials"]
       40 CALL                             R3 0 1
       41 JUMPIF                           R3 ; [+5]
       42 GETTABLEKS                       R3 R2 K17 ["getFFlagDebugKnowledgeTutorials"]
       44 CALL                             R3 0 1
       45 JUMPIF                           R3 ; [+1]
       46 RETURN                           R0 0
       47 GETIMPORT                        R3 K19 [game]
       49 LOADK                            R5 K20 ["RunService"]
       50 NAMECALL                         R3 R3 K21 ["GetService"]
       52 CALL                             R3 2 1
       53 NAMECALL                         R4 R3 K22 ["IsEdit"]
       55 CALL                             R4 1 1
       56 JUMPIF                           R4 ; [+1]
       57 RETURN                           R0 0
       58 GETIMPORT                        R4 K8 [require]
       60 GETTABLEKS                       R5 R0 K9 ["Packages"]
       62 GETTABLEKS                       R5 R5 K23 ["PluginLoader"]
       64 CALL                             R4 1 1
       65 GETTABLEKS                       R5 R4 K24 ["PluginLoaderBuilder"]
       67 GETTABLEKS                       R6 R0 K12 ["Src"]
       69 GETTABLEKS                       R6 R6 K25 ["Resources"]
       71 GETTABLEKS                       R6 R6 K26 ["Localization"]
       73 GETTABLEKS                       R6 R6 K27 ["SourceStrings"]
       75 GETTABLEKS                       R7 R0 K12 ["Src"]
       77 GETTABLEKS                       R7 R7 K25 ["Resources"]
       79 GETTABLEKS                       R7 R7 K26 ["Localization"]
       81 GETTABLEKS                       R7 R7 K28 ["LocalizedStrings"]
       83 DUPTABLE                         R8 K34 [{["plugin"], ["pluginName"] = "KnowledgeTutorials", ["translationResourceTable"], ["fallbackResourceTable"], ["noToolbar"] = True}]
       84 GETIMPORT                        R9 K5 [plugin]
       86 SETTABLEKS                       R9 R8 K4 ["plugin"]
       88 SETTABLEKS                       R7 R8 K30 ["translationResourceTable"]
       90 SETTABLEKS                       R6 R8 K31 ["fallbackResourceTable"]
       92 GETTABLEKS                       R9 R5 K35 ["build"]
       94 MOVE                             R10 R8
       95 CALL                             R9 1 1
       96 GETIMPORT                        R10 K8 [require]
       98 GETTABLEKS                       R11 R0 K9 ["Packages"]
      100 GETTABLEKS                       R11 R11 K36 ["React"]
      102 CALL                             R10 1 1
      103 GETIMPORT                        R11 K8 [require]
      105 GETTABLEKS                       R12 R0 K9 ["Packages"]
      107 GETTABLEKS                       R12 R12 K37 ["ReactRoblox"]
      109 CALL                             R11 1 1
      110 GETIMPORT                        R12 K8 [require]
      112 GETTABLEKS                       R13 R0 K12 ["Src"]
      114 GETTABLEKS                       R13 R13 K38 ["MainPlugin"]
      116 CALL                             R12 1 1
      117 GETTABLEKS                       R13 R10 K39 ["createElement"]
      119 MOVE                             R14 R12
      120 DUPTABLE                         R15 K42 [{"Plugin", "PluginLoaderContext"}]
      121 GETIMPORT                        R16 K5 [plugin]
      123 SETTABLEKS                       R16 R15 K40 ["Plugin"]
      125 SETTABLEKS                       R9 R15 K41 ["PluginLoaderContext"]
      127 CALL                             R13 2 1
      128 GETIMPORT                        R14 K45 [Instance.new]
      130 LOADK                            R15 K46 ["Frame"]
      131 CALL                             R14 1 1
      132 GETTABLEKS                       R15 R11 K47 ["createRoot"]
      134 MOVE                             R16 R14
      135 CALL                             R15 1 1
      136 MOVE                             R18 R13
      137 NAMECALL                         R16 R15 K48 ["render"]
      139 CALL                             R16 2 0
      140 GETIMPORT                        R16 K5 [plugin]
      142 GETTABLEKS                       R16 R16 K49 ["Unloading"]
      144 DUPCLOSURE                       R18 K50 [PROTO_0]
      145 CAPTURE                          VAL R15
      146 NAMECALL                         R16 R16 K51 ["Connect"]
      148 CALL                             R16 2 0
      149 RETURN                           R0 0
