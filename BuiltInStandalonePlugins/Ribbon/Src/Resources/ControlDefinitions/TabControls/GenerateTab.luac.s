MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Util"]
       13 GETTABLEKS                       R2 R2 K8 ["deepFreeze"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K6 ["Src"]
       20 GETTABLEKS                       R3 R3 K9 ["Types"]
       22 CALL                             R2 1 1
       23 DUPTABLE                         R3 K13 [{["Name"] = "Generate", ["Controls"]}]
       24 NEWTABLE                         R4 0 6
       26 DUPTABLE                         R5 K19 [{["Id"] = "Generate", ["Type"] = "IconButton", ["Action"], ["FastFlag"]}]
       27 DUPTABLE                         R6 K27 [{["PluginId"] = "Gen3d", ["DataModel"] = "Standalone", ["ItemId"] = "Generate", ["Category"] = "Actions"}]
       28 SETTABLEKS                       R6 R5 K17 ["Action"]
       30 DUPTABLE                         R6 K29 [{"EnableIfAll"}]
       31 NEWTABLE                         R7 0 2
       33 LOADK                            R8 K30 ["RibbonEnableGenerateTab"]
       34 LOADK                            R9 K31 ["RibbonEnableGenerateButton"]
       35 SETLIST                          R7 R8 2 [1]
       37 SETTABLEKS                       R7 R6 K28 ["EnableIfAll"]
       39 SETTABLEKS                       R6 R5 K18 ["FastFlag"]
       41 DUPTABLE                         R6 K33 [{["Id"] = "SceneGen", ["Type"] = "IconButton", ["Action"], ["FastFlag"]}]
       42 DUPTABLE                         R7 K34 [{["PluginId"] = "Gen3d", ["DataModel"] = "Standalone", ["ItemId"] = "SceneGen", ["Category"] = "Actions"}]
       43 SETTABLEKS                       R7 R6 K17 ["Action"]
       45 DUPTABLE                         R7 K29 [{"EnableIfAll"}]
       46 NEWTABLE                         R8 0 2
       48 LOADK                            R9 K30 ["RibbonEnableGenerateTab"]
       49 LOADK                            R10 K35 ["RibbonEnableSceneGenButton"]
       50 SETLIST                          R8 R9 2 [1]
       52 SETTABLEKS                       R8 R7 K28 ["EnableIfAll"]
       54 SETTABLEKS                       R7 R6 K18 ["FastFlag"]
       56 DUPTABLE                         R7 K39 [{["Size"] = "Large", ["Type"] = "Separator", ["FastFlag"]}]
       57 DUPTABLE                         R8 K29 [{"EnableIfAll"}]
       58 NEWTABLE                         R9 0 2
       60 LOADK                            R10 K30 ["RibbonEnableGenerateTab"]
       61 LOADK                            R11 K40 ["RibbonEnableGenerateTabSeparator"]
       62 SETLIST                          R9 R10 2 [1]
       64 SETTABLEKS                       R9 R8 K28 ["EnableIfAll"]
       66 SETTABLEKS                       R8 R7 K18 ["FastFlag"]
       68 DUPTABLE                         R8 K42 [{["Id"] = "Segment", ["Type"] = "IconButton", ["Action"], ["FastFlag"]}]
       69 DUPTABLE                         R9 K43 [{["PluginId"] = "Gen3d", ["DataModel"] = "Standalone", ["ItemId"] = "Segment", ["Category"] = "Actions"}]
       70 SETTABLEKS                       R9 R8 K17 ["Action"]
       72 DUPTABLE                         R9 K29 [{"EnableIfAll"}]
       73 NEWTABLE                         R10 0 2
       75 LOADK                            R11 K30 ["RibbonEnableGenerateTab"]
       76 LOADK                            R12 K44 ["RibbonEnableSegmentButton"]
       77 SETLIST                          R10 R11 2 [1]
       79 SETTABLEKS                       R10 R9 K28 ["EnableIfAll"]
       81 SETTABLEKS                       R9 R8 K18 ["FastFlag"]
       83 DUPTABLE                         R9 K46 [{["Id"] = "Restyle", ["Type"] = "IconButton", ["Action"], ["FastFlag"]}]
       84 DUPTABLE                         R10 K47 [{["PluginId"] = "Gen3d", ["DataModel"] = "Standalone", ["ItemId"] = "Restyle", ["Category"] = "Actions"}]
       85 SETTABLEKS                       R10 R9 K17 ["Action"]
       87 DUPTABLE                         R10 K29 [{"EnableIfAll"}]
       88 NEWTABLE                         R11 0 2
       90 LOADK                            R12 K30 ["RibbonEnableGenerateTab"]
       91 LOADK                            R13 K48 ["RibbonEnableRestyleButton"]
       92 SETLIST                          R11 R12 2 [1]
       94 SETTABLEKS                       R11 R10 K28 ["EnableIfAll"]
       96 SETTABLEKS                       R10 R9 K18 ["FastFlag"]
       98 DUPTABLE                         R10 K50 [{["Id"] = "UpRezz", ["Type"] = "IconButton", ["Action"], ["FastFlag"]}]
       99 DUPTABLE                         R11 K51 [{["PluginId"] = "Gen3d", ["DataModel"] = "Standalone", ["ItemId"] = "UpRezz", ["Category"] = "Actions"}]
      100 SETTABLEKS                       R11 R10 K17 ["Action"]
      102 DUPTABLE                         R11 K29 [{"EnableIfAll"}]
      103 NEWTABLE                         R12 0 2
      105 LOADK                            R13 K30 ["RibbonEnableGenerateTab"]
      106 LOADK                            R14 K52 ["RibbonEnableUpRezzButton"]
      107 SETLIST                          R12 R13 2 [1]
      109 SETTABLEKS                       R12 R11 K28 ["EnableIfAll"]
      111 SETTABLEKS                       R11 R10 K18 ["FastFlag"]
      113 SETLIST                          R4 R5 6 [1]
      115 SETTABLEKS                       R4 R3 K12 ["Controls"]
      117 MOVE                             R4 R1
      118 MOVE                             R5 R3
      119 CALL                             R4 1 -1
      120 RETURN                           R4 -1
