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
       35 DUPTABLE                         R6 K11 [{"Width", "HeaderHeight", "MaxHeight", "InnerPadding", "Padding"}]
       36 LOADN                            R7 69
       37 SETTABLEKS                       R7 R6 K6 ["Width"]
       39 LOADN                            R7 32
       40 SETTABLEKS                       R7 R6 K7 ["HeaderHeight"]
       42 LOADN                            R7 144
       43 SETTABLEKS                       R7 R6 K8 ["MaxHeight"]
       45 LOADN                            R7 5
       46 SETTABLEKS                       R7 R6 K9 ["InnerPadding"]
       48 GETIMPORT                        R7 K14 [Vector2.zero]
       50 SETTABLEKS                       R7 R6 K10 ["Padding"]
       52 CALL                             R5 1 1
       53 GETUPVAL                         R6 3
       54 GETTABLEKS                       R6 R6 K15 ["createElement"]
       56 GETUPVAL                         R7 7
       57 NEWTABLE                         R8 2 0
       59 GETUPVAL                         R9 3
       60 GETTABLEKS                       R9 R9 K16 ["Tag"]
       62 LOADK                            R10 K17 ["X-Fill X-Column X-Top"]
       63 SETTABLE                         R10 R8 R9
       64 GETIMPORT                        R9 K20 [UDim2.fromOffset]
       66 GETTABLEKS                       R10 R5 K21 ["size"]
       68 GETTABLEKS                       R10 R10 K22 ["X"]
       70 GETTABLEKS                       R11 R5 K21 ["size"]
       72 GETTABLEKS                       R11 R11 K23 ["Y"]
       74 CALL                             R9 2 1
       75 SETTABLEKS                       R9 R8 K24 ["Size"]
       77 DUPTABLE                         R9 K27 [{"StyleLink", "VisualizationModesMainView"}]
       78 GETUPVAL                         R10 3
       79 GETTABLEKS                       R10 R10 K15 ["createElement"]
       81 LOADK                            R11 K25 ["StyleLink"]
       82 DUPTABLE                         R12 K29 [{"StyleSheet"}]
       83 SETTABLEKS                       R1 R12 K28 ["StyleSheet"]
       85 CALL                             R10 2 1
       86 SETTABLEKS                       R10 R9 K25 ["StyleLink"]
       88 GETUPVAL                         R10 3
       89 GETTABLEKS                       R10 R10 K15 ["createElement"]
       91 GETUPVAL                         R11 8
       92 DUPTABLE                         R12 K35 [{"OnVisualizationModeToggle", "OnVisualizationModeCategoryToggle", "SizeCalculator", "RecentVisualizationModes", "VisualizationModeCategories"}]
       93 GETTABLEKS                       R13 R2 K36 ["onVisualizationModeToggle"]
       95 SETTABLEKS                       R13 R12 K30 ["OnVisualizationModeToggle"]
       97 GETTABLEKS                       R13 R2 K37 ["onVisualizationModeCategoryToggle"]
       99 SETTABLEKS                       R13 R12 K31 ["OnVisualizationModeCategoryToggle"]
      101 SETTABLEKS                       R5 R12 K32 ["SizeCalculator"]
      103 GETTABLEKS                       R13 R2 K38 ["state"]
      105 GETTABLEKS                       R13 R13 K39 ["recentModes"]
      107 SETTABLEKS                       R13 R12 K33 ["RecentVisualizationModes"]
      109 GETTABLEKS                       R13 R2 K38 ["state"]
      111 GETTABLEKS                       R13 R13 K40 ["categories"]
      113 SETTABLEKS                       R13 R12 K34 ["VisualizationModeCategories"]
      115 CALL                             R10 2 1
      116 SETTABLEKS                       R10 R9 K26 ["VisualizationModesMainView"]
      118 CALL                             R6 3 -1
      119 RETURN                           R6 -1

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
       82 DUPTABLE                         R11 K25 [{"name", "summary", "stories"}]
       83 LOADK                            R12 K15 ["VisualizationModesMainView"]
       84 SETTABLEKS                       R12 R11 K22 ["name"]
       86 LOADK                            R12 K26 ["Renders the main visualization modes view with all sections and controls"]
       87 SETTABLEKS                       R12 R11 K23 ["summary"]
       89 NEWTABLE                         R12 0 1
       91 DUPTABLE                         R13 K28 [{"name", "story"}]
       92 LOADK                            R14 K15 ["VisualizationModesMainView"]
       93 SETTABLEKS                       R14 R13 K22 ["name"]
       95 SETTABLEKS                       R10 R13 K27 ["story"]
       97 SETLIST                          R12 R13 1 [1]
       99 SETTABLEKS                       R12 R11 K24 ["stories"]
      101 RETURN                           R11 1
