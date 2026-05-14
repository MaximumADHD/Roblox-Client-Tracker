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
       83 DUPTABLE                         R8 K33 [{"plugin", "pluginName", "translationResourceTable", "fallbackResourceTable", "noToolbar"}]
       84 GETIMPORT                        R9 K5 [plugin]
       86 SETTABLEKS                       R9 R8 K4 ["plugin"]
       88 LOADK                            R9 K2 ["KnowledgeTutorials"]
       89 SETTABLEKS                       R9 R8 K29 ["pluginName"]
       91 SETTABLEKS                       R7 R8 K30 ["translationResourceTable"]
       93 SETTABLEKS                       R6 R8 K31 ["fallbackResourceTable"]
       95 LOADB                            R9 1
       96 SETTABLEKS                       R9 R8 K32 ["noToolbar"]
       98 GETTABLEKS                       R9 R5 K34 ["build"]
      100 MOVE                             R10 R8
      101 CALL                             R9 1 1
      102 GETIMPORT                        R10 K8 [require]
      104 GETTABLEKS                       R11 R0 K9 ["Packages"]
      106 GETTABLEKS                       R11 R11 K35 ["React"]
      108 CALL                             R10 1 1
      109 GETIMPORT                        R11 K8 [require]
      111 GETTABLEKS                       R12 R0 K9 ["Packages"]
      113 GETTABLEKS                       R12 R12 K36 ["ReactRoblox"]
      115 CALL                             R11 1 1
      116 GETIMPORT                        R12 K8 [require]
      118 GETTABLEKS                       R13 R0 K12 ["Src"]
      120 GETTABLEKS                       R13 R13 K37 ["MainPlugin"]
      122 CALL                             R12 1 1
      123 GETTABLEKS                       R13 R10 K38 ["createElement"]
      125 MOVE                             R14 R12
      126 DUPTABLE                         R15 K41 [{"Plugin", "PluginLoaderContext"}]
      127 GETIMPORT                        R16 K5 [plugin]
      129 SETTABLEKS                       R16 R15 K39 ["Plugin"]
      131 SETTABLEKS                       R9 R15 K40 ["PluginLoaderContext"]
      133 CALL                             R13 2 1
      134 GETIMPORT                        R14 K44 [Instance.new]
      136 LOADK                            R15 K45 ["Frame"]
      137 CALL                             R14 1 1
      138 GETTABLEKS                       R15 R11 K46 ["createRoot"]
      140 MOVE                             R16 R14
      141 CALL                             R15 1 1
      142 MOVE                             R18 R13
      143 NAMECALL                         R16 R15 K47 ["render"]
      145 CALL                             R16 2 0
      146 GETIMPORT                        R16 K5 [plugin]
      148 GETTABLEKS                       R16 R16 K48 ["Unloading"]
      150 DUPCLOSURE                       R18 K49 [PROTO_0]
      151 CAPTURE                          VAL R15
      152 NAMECALL                         R16 R16 K50 ["Connect"]
      154 CALL                             R16 2 0
      155 RETURN                           R0 0
