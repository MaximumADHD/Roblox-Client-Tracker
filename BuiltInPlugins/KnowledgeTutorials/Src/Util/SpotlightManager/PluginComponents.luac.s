MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [plugin]
        9 JUMPIF                           R1 ; [+6]
       10 GETIMPORT                        R1 K1 [script]
       12 LOADK                            R3 K6 ["Plugin"]
       13 NAMECALL                         R1 R1 K7 ["FindFirstAncestorWhichIsA"]
       15 CALL                             R1 2 1
       16 GETIMPORT                        R2 K9 [require]
       18 GETTABLEKS                       R4 R0 K10 ["Packages"]
       20 GETTABLEKS                       R3 R4 K11 ["TestLoader"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K12 ["isCli"]
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+115]
       27 GETIMPORT                        R3 K9 [require]
       29 GETTABLEKS                       R6 R0 K10 ["Packages"]
       31 GETTABLEKS                       R5 R6 K13 ["Dev"]
       33 GETTABLEKS                       R4 R5 K14 ["JestGlobals"]
       35 CALL                             R3 1 1
       36 GETTABLEKS                       R4 R3 K15 ["jest"]
       38 DUPTABLE                         R5 K20 [{"Spotlight", "Panels", "Widgets", "RibbonConfiguration"}]
       39 DUPTABLE                         R6 K24 [{"ApplyShadowsAsync", "ApplySpotlightAsync", "HideSpotlightAsync"}]
       40 GETTABLEKS                       R7 R4 K25 ["fn"]
       42 CALL                             R7 0 1
       43 SETTABLEKS                       R7 R6 K21 ["ApplyShadowsAsync"]
       45 GETTABLEKS                       R7 R4 K25 ["fn"]
       47 CALL                             R7 0 1
       48 SETTABLEKS                       R7 R6 K22 ["ApplySpotlightAsync"]
       50 GETTABLEKS                       R7 R4 K25 ["fn"]
       52 CALL                             R7 0 1
       53 SETTABLEKS                       R7 R6 K23 ["HideSpotlightAsync"]
       55 SETTABLEKS                       R6 R5 K16 ["Spotlight"]
       57 DUPTABLE                         R6 K27 [{"FocusAsync"}]
       58 GETTABLEKS                       R7 R4 K25 ["fn"]
       60 CALL                             R7 0 1
       61 SETTABLEKS                       R7 R6 K26 ["FocusAsync"]
       63 SETTABLEKS                       R6 R5 K17 ["Panels"]
       65 DUPTABLE                         R6 K29 [{"GetWidgetAsync"}]
       66 GETTABLEKS                       R8 R4 K25 ["fn"]
       68 CALL                             R8 0 1
       69 GETTABLEKS                       R7 R8 K30 ["mockReturnValue"]
       71 DUPTABLE                         R8 K32 [{"Exists"}]
       72 LOADB                            R9 1
       73 SETTABLEKS                       R9 R8 K31 ["Exists"]
       75 CALL                             R7 1 1
       76 SETTABLEKS                       R7 R6 K28 ["GetWidgetAsync"]
       78 SETTABLEKS                       R6 R5 K18 ["Widgets"]
       80 DUPTABLE                         R6 K34 [{"GetRibbonDefinitionAsync"}]
       81 GETTABLEKS                       R8 R4 K25 ["fn"]
       83 CALL                             R8 0 1
       84 GETTABLEKS                       R7 R8 K30 ["mockReturnValue"]
       86 DUPTABLE                         R8 K37 [{"MezzanineControls", "TabControls"}]
       87 DUPTABLE                         R9 K40 [{"Left", "Right"}]
       88 DUPTABLE                         R10 K42 [{"Controls"}]
       89 NEWTABLE                         R11 0 2
       91 NEWTABLE                         R12 0 0
       93 DUPTABLE                         R13 K44 [{"Id"}]
       94 LOADK                            R14 K45 ["ControlId"]
       95 SETTABLEKS                       R14 R13 K43 ["Id"]
       97 SETLIST                          R11 R12 2 [1]
       99 SETTABLEKS                       R11 R10 K41 ["Controls"]
      101 SETTABLEKS                       R10 R9 K38 ["Left"]
      103 DUPTABLE                         R10 K42 [{"Controls"}]
      104 NEWTABLE                         R11 0 1
      106 DUPTABLE                         R12 K44 [{"Id"}]
      107 LOADK                            R13 K45 ["ControlId"]
      108 SETTABLEKS                       R13 R12 K43 ["Id"]
      110 SETLIST                          R11 R12 1 [1]
      112 SETTABLEKS                       R11 R10 K41 ["Controls"]
      114 SETTABLEKS                       R10 R9 K39 ["Right"]
      116 SETTABLEKS                       R9 R8 K35 ["MezzanineControls"]
      118 DUPTABLE                         R9 K47 [{"tabIdentifier"}]
      119 DUPTABLE                         R10 K42 [{"Controls"}]
      120 NEWTABLE                         R11 0 2
      122 NEWTABLE                         R12 0 0
      124 DUPTABLE                         R13 K44 [{"Id"}]
      125 LOADK                            R14 K45 ["ControlId"]
      126 SETTABLEKS                       R14 R13 K43 ["Id"]
      128 SETLIST                          R11 R12 2 [1]
      130 SETTABLEKS                       R11 R10 K41 ["Controls"]
      132 SETTABLEKS                       R10 R9 K46 ["tabIdentifier"]
      134 SETTABLEKS                       R9 R8 K36 ["TabControls"]
      136 CALL                             R7 1 1
      137 SETTABLEKS                       R7 R6 K33 ["GetRibbonDefinitionAsync"]
      139 SETTABLEKS                       R6 R5 K19 ["RibbonConfiguration"]
      141 RETURN                           R5 1
      142 DUPTABLE                         R3 K20 [{"Spotlight", "Panels", "Widgets", "RibbonConfiguration"}]
      143 LOADK                            R6 K16 ["Spotlight"]
      144 NAMECALL                         R4 R1 K48 ["GetPluginComponent"]
      146 CALL                             R4 2 1
      147 SETTABLEKS                       R4 R3 K16 ["Spotlight"]
      149 LOADK                            R6 K17 ["Panels"]
      150 NAMECALL                         R4 R1 K48 ["GetPluginComponent"]
      152 CALL                             R4 2 1
      153 SETTABLEKS                       R4 R3 K17 ["Panels"]
      155 LOADK                            R6 K18 ["Widgets"]
      156 NAMECALL                         R4 R1 K48 ["GetPluginComponent"]
      158 CALL                             R4 2 1
      159 SETTABLEKS                       R4 R3 K18 ["Widgets"]
      161 LOADK                            R6 K19 ["RibbonConfiguration"]
      162 NAMECALL                         R4 R1 K48 ["GetPluginComponent"]
      164 CALL                             R4 2 1
      165 SETTABLEKS                       R4 R3 K19 ["RibbonConfiguration"]
      167 RETURN                           R3 1
