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
       18 GETTABLEKS                       R3 R0 K10 ["Packages"]
       20 GETTABLEKS                       R3 R3 K11 ["TestLoader"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K12 ["isCli"]
       25 CALL                             R3 0 1
       26 JUMPIFNOT                        R3 ; [+103]
       27 GETIMPORT                        R3 K9 [require]
       29 GETTABLEKS                       R4 R0 K10 ["Packages"]
       31 GETTABLEKS                       R4 R4 K13 ["Dev"]
       33 GETTABLEKS                       R4 R4 K14 ["JestGlobals"]
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
       66 GETTABLEKS                       R7 R4 K25 ["fn"]
       68 CALL                             R7 0 1
       69 GETTABLEKS                       R7 R7 K30 ["mockReturnValue"]
       71 DUPTABLE                         R8 K33 [{["Exists"] = True}]
       72 CALL                             R7 1 1
       73 SETTABLEKS                       R7 R6 K28 ["GetWidgetAsync"]
       75 SETTABLEKS                       R6 R5 K18 ["Widgets"]
       77 DUPTABLE                         R6 K35 [{"GetRibbonDefinitionAsync"}]
       78 GETTABLEKS                       R7 R4 K25 ["fn"]
       80 CALL                             R7 0 1
       81 GETTABLEKS                       R7 R7 K30 ["mockReturnValue"]
       83 DUPTABLE                         R8 K38 [{"MezzanineControls", "TabControls"}]
       84 DUPTABLE                         R9 K41 [{"Left", "Right"}]
       85 DUPTABLE                         R10 K43 [{"Controls"}]
       86 NEWTABLE                         R11 0 2
       88 NEWTABLE                         R12 0 0
       90 DUPTABLE                         R13 K46 [{["Id"] = "ControlId"}]
       91 SETLIST                          R11 R12 2 [1]
       93 SETTABLEKS                       R11 R10 K42 ["Controls"]
       95 SETTABLEKS                       R10 R9 K39 ["Left"]
       97 DUPTABLE                         R10 K43 [{"Controls"}]
       98 NEWTABLE                         R11 0 1
      100 DUPTABLE                         R12 K46 [{["Id"] = "ControlId"}]
      101 SETLIST                          R11 R12 1 [1]
      103 SETTABLEKS                       R11 R10 K42 ["Controls"]
      105 SETTABLEKS                       R10 R9 K40 ["Right"]
      107 SETTABLEKS                       R9 R8 K36 ["MezzanineControls"]
      109 DUPTABLE                         R9 K48 [{"tabIdentifier"}]
      110 DUPTABLE                         R10 K43 [{"Controls"}]
      111 NEWTABLE                         R11 0 2
      113 NEWTABLE                         R12 0 0
      115 DUPTABLE                         R13 K46 [{["Id"] = "ControlId"}]
      116 SETLIST                          R11 R12 2 [1]
      118 SETTABLEKS                       R11 R10 K42 ["Controls"]
      120 SETTABLEKS                       R10 R9 K47 ["tabIdentifier"]
      122 SETTABLEKS                       R9 R8 K37 ["TabControls"]
      124 CALL                             R7 1 1
      125 SETTABLEKS                       R7 R6 K34 ["GetRibbonDefinitionAsync"]
      127 SETTABLEKS                       R6 R5 K19 ["RibbonConfiguration"]
      129 RETURN                           R5 1
      130 DUPTABLE                         R3 K20 [{"Spotlight", "Panels", "Widgets", "RibbonConfiguration"}]
      131 LOADK                            R6 K16 ["Spotlight"]
      132 NAMECALL                         R4 R1 K49 ["GetPluginComponent"]
      134 CALL                             R4 2 1
      135 SETTABLEKS                       R4 R3 K16 ["Spotlight"]
      137 LOADK                            R6 K17 ["Panels"]
      138 NAMECALL                         R4 R1 K49 ["GetPluginComponent"]
      140 CALL                             R4 2 1
      141 SETTABLEKS                       R4 R3 K17 ["Panels"]
      143 LOADK                            R6 K18 ["Widgets"]
      144 NAMECALL                         R4 R1 K49 ["GetPluginComponent"]
      146 CALL                             R4 2 1
      147 SETTABLEKS                       R4 R3 K18 ["Widgets"]
      149 LOADK                            R6 K19 ["RibbonConfiguration"]
      150 NAMECALL                         R4 R1 K49 ["GetPluginComponent"]
      152 CALL                             R4 2 1
      153 SETTABLEKS                       R4 R3 K19 ["RibbonConfiguration"]
      155 RETURN                           R3 1
