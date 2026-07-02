PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 CALL                             R0 0 -1
        4 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["plugin"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 -1
        8 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["destroy"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["destroy"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R0 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          UPVAL U1
        3 RETURN                           R0 1

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Styling"]
        3 GETTABLEKS                       R1 R1 K1 ["registerPluginStyles"]
        5 GETTABLEKS                       R2 R0 K2 ["plugin"]
        7 GETUPVAL                         R3 1
        8 CALL                             R1 2 1
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 1
       11 GETUPVAL                         R3 3
       12 GETTABLEKS                       R3 R3 K3 ["useState"]
       14 DUPCLOSURE                       R4 K4 [PROTO_0]
       15 CAPTURE                          UPVAL U4
       16 CALL                             R3 1 1
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R4 R4 K3 ["useState"]
       20 NEWCLOSURE                       R5 P1
       21 CAPTURE                          UPVAL U5
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R3
       24 CALL                             R4 1 1
       25 GETUPVAL                         R5 3
       26 GETTABLEKS                       R5 R5 K5 ["useEffect"]
       28 NEWCLOSURE                       R6 P2
       29 CAPTURE                          VAL R3
       30 CAPTURE                          VAL R4
       31 NEWTABLE                         R7 0 0
       33 CALL                             R5 2 0
       34 GETUPVAL                         R5 6
       35 DUPTABLE                         R6 K15 [{["Width"] = 325, ["HeaderHeight"] = 32, ["MaxHeight"] = 400, ["InnerPadding"] = 5, ["Padding"]}]
       36 GETIMPORT                        R7 K18 [Vector2.zero]
       38 SETTABLEKS                       R7 R6 K14 ["Padding"]
       40 CALL                             R5 1 1
       41 GETUPVAL                         R6 3
       42 GETTABLEKS                       R6 R6 K19 ["createElement"]
       44 GETUPVAL                         R7 7
       45 NEWTABLE                         R8 2 0
       47 GETUPVAL                         R9 3
       48 GETTABLEKS                       R9 R9 K20 ["Tag"]
       50 LOADK                            R10 K21 ["X-Fill X-Column X-Top"]
       51 SETTABLE                         R10 R8 R9
       52 GETIMPORT                        R9 K24 [UDim2.fromOffset]
       54 GETTABLEKS                       R10 R5 K25 ["size"]
       56 GETTABLEKS                       R10 R10 K26 ["X"]
       58 GETTABLEKS                       R11 R5 K25 ["size"]
       60 GETTABLEKS                       R11 R11 K27 ["Y"]
       62 CALL                             R9 2 1
       63 SETTABLEKS                       R9 R8 K28 ["Size"]
       65 DUPTABLE                         R9 K31 [{"StyleLink", "VisualizationModesMainView"}]
       66 GETUPVAL                         R10 3
       67 GETTABLEKS                       R10 R10 K19 ["createElement"]
       69 LOADK                            R11 K29 ["StyleLink"]
       70 DUPTABLE                         R12 K33 [{"StyleSheet"}]
       71 SETTABLEKS                       R1 R12 K32 ["StyleSheet"]
       73 CALL                             R10 2 1
       74 SETTABLEKS                       R10 R9 K29 ["StyleLink"]
       76 GETUPVAL                         R10 3
       77 GETTABLEKS                       R10 R10 K19 ["createElement"]
       79 GETUPVAL                         R11 8
       80 DUPTABLE                         R12 K39 [{"OnVisualizationModeToggle", "OnVisualizationModeCategoryToggle", "SizeCalculator", "RecentVisualizationModes", "VisualizationModeCategories"}]
       81 GETTABLEKS                       R13 R2 K40 ["onVisualizationModeToggle"]
       83 SETTABLEKS                       R13 R12 K34 ["OnVisualizationModeToggle"]
       85 GETTABLEKS                       R13 R2 K41 ["onVisualizationModeCategoryToggle"]
       87 SETTABLEKS                       R13 R12 K35 ["OnVisualizationModeCategoryToggle"]
       89 SETTABLEKS                       R5 R12 K36 ["SizeCalculator"]
       91 GETTABLEKS                       R13 R2 K42 ["state"]
       93 GETTABLEKS                       R13 R13 K43 ["recentModes"]
       95 SETTABLEKS                       R13 R12 K37 ["RecentVisualizationModes"]
       97 GETTABLEKS                       R13 R2 K42 ["state"]
       99 GETTABLEKS                       R13 R13 K44 ["categories"]
      101 SETTABLEKS                       R13 R12 K38 ["VisualizationModeCategories"]
      103 CALL                             R10 2 1
      104 SETTABLEKS                       R10 R9 K30 ["VisualizationModesMainView"]
      106 CALL                             R6 3 -1
      107 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Model"]
       27 GETTABLEKS                       R4 R4 K11 ["VisualizationModeCombinerClient"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Model"]
       36 GETTABLEKS                       R5 R5 K12 ["Tracking"]
       38 GETTABLEKS                       R5 R5 K13 ["VisualizationModeServiceTracker"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K9 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["Components"]
       47 GETTABLEKS                       R6 R6 K15 ["VisualizationModesMainView"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K9 ["Src"]
       54 GETTABLEKS                       R7 R7 K16 ["Hooks"]
       56 GETTABLEKS                       R7 R7 K17 ["useSizeCalculator"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K9 ["Src"]
       63 GETTABLEKS                       R8 R8 K16 ["Hooks"]
       65 GETTABLEKS                       R8 R8 K18 ["useVisualizationModeCombiner"]
       67 CALL                             R7 1 1
       68 GETTABLEKS                       R8 R1 K19 ["UI"]
       70 GETTABLEKS                       R9 R8 K20 ["Pane"]
       72 DUPCLOSURE                       R10 K21 [PROTO_4]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R0
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R4
       78 CAPTURE                          VAL R3
       79 CAPTURE                          VAL R6
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R5
       82 DUPTABLE                         R11 K26 [{["name"] = "VisualizationModesMainView", ["summary"] = "Renders the main visualization modes view with all sections and controls", ["stories"]}]
       83 NEWTABLE                         R12 0 1
       85 DUPTABLE                         R13 K28 [{["name"] = "VisualizationModesMainView", ["story"]}]
       86 SETTABLEKS                       R10 R13 K27 ["story"]
       88 SETLIST                          R12 R13 1 [1]
       90 SETTABLEKS                       R12 R11 K25 ["stories"]
       92 RETURN                           R11 1
