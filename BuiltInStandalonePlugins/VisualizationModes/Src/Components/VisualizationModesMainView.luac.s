PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{"LayoutOrder", "Visible", "IsEditingEnabled", "OnVisualizationModeToggle", "RecentVisualizationModes"}]
        5 SETTABLEKS                       R0 R4 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R1 R4 K2 ["Visible"]
        9 GETIMPORT                        R6 K8 [next]
       11 GETUPVAL                         R7 2
       12 GETTABLEKS                       R7 R7 K5 ["RecentVisualizationModes"]
       14 CALL                             R6 1 1
       15 JUMPIFNOTEQKNIL                  R6 ; [+2]
       17 LOADB                            R5 0 +1
       18 LOADB                            R5 1
       19 SETTABLEKS                       R5 R4 K3 ["IsEditingEnabled"]
       21 GETUPVAL                         R5 2
       22 GETTABLEKS                       R5 R5 K4 ["OnVisualizationModeToggle"]
       24 SETTABLEKS                       R5 R4 K4 ["OnVisualizationModeToggle"]
       26 GETUPVAL                         R5 2
       27 GETTABLEKS                       R5 R5 K5 ["RecentVisualizationModes"]
       29 SETTABLEKS                       R5 R4 K5 ["RecentVisualizationModes"]
       31 CALL                             R2 2 -1
       32 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K5 [{"LayoutOrder", "Visible", "HiddenCount", "AllHidden"}]
        5 SETTABLEKS                       R0 R4 K1 ["LayoutOrder"]
        7 SETTABLEKS                       R1 R4 K2 ["Visible"]
        9 GETUPVAL                         R5 2
       10 GETTABLEKS                       R5 R5 K6 ["getFilteredCount"]
       12 CALL                             R5 0 1
       13 SETTABLEKS                       R5 R4 K3 ["HiddenCount"]
       15 GETUPVAL                         R5 2
       16 GETTABLEKS                       R5 R5 K7 ["getAreAllEntriesHidden"]
       18 CALL                             R5 0 1
       19 SETTABLEKS                       R5 R4 K4 ["AllHidden"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 DUPTABLE                         R3 K1 [{"SettingsKey"}]
        4 LOADK                            R4 K2 ["VisualizationModesMainView_LastSearchSetting"]
        5 SETTABLEKS                       R4 R3 K0 ["SettingsKey"]
        7 CALL                             R2 1 1
        8 GETUPVAL                         R3 2
        9 DUPTABLE                         R4 K6 [{"FuzzySearch", "OnVisualizationModeCategoryToggle", "OnVisualizationModeToggle"}]
       10 SETTABLEKS                       R2 R4 K3 ["FuzzySearch"]
       12 GETTABLEKS                       R5 R0 K4 ["OnVisualizationModeCategoryToggle"]
       14 SETTABLEKS                       R5 R4 K4 ["OnVisualizationModeCategoryToggle"]
       16 GETTABLEKS                       R5 R0 K5 ["OnVisualizationModeToggle"]
       18 SETTABLEKS                       R5 R4 K5 ["OnVisualizationModeToggle"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R1 K7 ["addSection"]
       23 DUPTABLE                         R5 K11 [{"key", "visible", "renderContent"}]
       24 LOADK                            R6 K12 ["RecentSection"]
       25 SETTABLEKS                       R6 R5 K8 ["key"]
       27 GETTABLEKS                       R7 R2 K13 ["searchText"]
       29 JUMPIFEQKS                       R7 K14 [""] ; [+2]
       31 LOADB                            R6 0 +1
       32 LOADB                            R6 1
       33 SETTABLEKS                       R6 R5 K9 ["visible"]
       35 NEWCLOSURE                       R6 P0
       36 CAPTURE                          UPVAL U3
       37 CAPTURE                          UPVAL U4
       38 CAPTURE                          VAL R0
       39 SETTABLEKS                       R6 R5 K10 ["renderContent"]
       41 CALL                             R4 1 0
       42 NEWTABLE                         R4 2 0
       44 GETUPVAL                         R5 3
       45 GETTABLEKS                       R5 R5 K15 ["createElement"]
       47 GETUPVAL                         R6 5
       48 CALL                             R5 1 1
       49 SETTABLEKS                       R5 R4 K16 ["View"]
       51 GETUPVAL                         R5 3
       52 GETTABLEKS                       R5 R5 K15 ["createElement"]
       54 GETUPVAL                         R6 6
       55 CALL                             R5 1 1
       56 SETTABLEKS                       R5 R4 K17 ["PhysicsConstraints"]
       58 GETTABLEKS                       R5 R0 K18 ["VisualizationModeCategories"]
       60 LOADNIL                          R6
       61 LOADNIL                          R7
       62 FORGPREP                         R5
       63 GETTABLEKS                       R11 R9 K19 ["name"]
       65 GETTABLE                         R10 R4 R11
       66 GETTABLEKS                       R11 R1 K7 ["addSection"]
       68 GETTABLEKS                       R12 R3 K20 ["createSection"]
       70 MOVE                             R13 R9
       71 MOVE                             R14 R10
       72 CALL                             R12 2 -1
       73 CALL                             R11 -1 0
       74 FORGLOOP                         R5 2 ; [-12]
       76 GETTABLEKS                       R5 R1 K7 ["addSection"]
       78 DUPTABLE                         R6 K11 [{"key", "visible", "renderContent"}]
       79 LOADK                            R7 K21 ["HiddenCount"]
       80 SETTABLEKS                       R7 R6 K8 ["key"]
       82 GETTABLEKS                       R8 R2 K22 ["getFilteredCount"]
       84 CALL                             R8 0 1
       85 LOADN                            R9 0
       86 JUMPIFLT                         R9 R8 ; [+2]
       88 LOADB                            R7 0 +1
       89 LOADB                            R7 1
       90 SETTABLEKS                       R7 R6 K9 ["visible"]
       92 NEWCLOSURE                       R7 P1
       93 CAPTURE                          UPVAL U3
       94 CAPTURE                          UPVAL U7
       95 CAPTURE                          VAL R2
       96 SETTABLEKS                       R7 R6 K10 ["renderContent"]
       98 CALL                             R5 1 0
       99 GETUPVAL                         R5 3
      100 GETTABLEKS                       R5 R5 K15 ["createElement"]
      102 GETUPVAL                         R6 8
      103 NEWTABLE                         R7 2 0
      105 GETUPVAL                         R8 3
      106 GETTABLEKS                       R8 R8 K23 ["Tag"]
      108 LOADK                            R9 K24 ["X-ColumnS X-Top"]
      109 SETTABLE                         R9 R7 R8
      110 GETTABLEKS                       R8 R0 K25 ["Size"]
      112 SETTABLEKS                       R8 R7 K25 ["Size"]
      114 DUPTABLE                         R8 K28 [{"SearchBarContainer", "ScrollingFrame"}]
      115 GETUPVAL                         R9 3
      116 GETTABLEKS                       R9 R9 K15 ["createElement"]
      118 GETUPVAL                         R10 9
      119 DUPTABLE                         R11 K30 [{"FuzzySearch", "LayoutOrder"}]
      120 SETTABLEKS                       R2 R11 K3 ["FuzzySearch"]
      122 LOADN                            R12 1
      123 SETTABLEKS                       R12 R11 K29 ["LayoutOrder"]
      125 CALL                             R9 2 1
      126 SETTABLEKS                       R9 R8 K26 ["SearchBarContainer"]
      128 GETUPVAL                         R9 3
      129 GETTABLEKS                       R9 R9 K15 ["createElement"]
      131 GETUPVAL                         R10 10
      132 NEWTABLE                         R11 4 0
      134 GETUPVAL                         R12 3
      135 GETTABLEKS                       R12 R12 K23 ["Tag"]
      137 LOADK                            R13 K31 ["ScrollingAutomaticSize VisualizationModes-MainScrollingFrame"]
      138 SETTABLE                         R13 R11 R12
      139 GETTABLEKS                       R12 R0 K32 ["SizeCalculator"]
      141 GETTABLEKS                       R12 R12 K33 ["scrollingFrameSize"]
      143 SETTABLEKS                       R12 R11 K25 ["Size"]
      145 LOADN                            R12 2
      146 SETTABLEKS                       R12 R11 K29 ["LayoutOrder"]
      148 DUPTABLE                         R12 K35 [{"Content"}]
      149 GETUPVAL                         R13 3
      150 GETTABLEKS                       R13 R13 K15 ["createElement"]
      152 GETUPVAL                         R14 8
      153 NEWTABLE                         R15 2 0
      155 GETUPVAL                         R16 3
      156 GETTABLEKS                       R16 R16 K23 ["Tag"]
      158 LOADK                            R17 K36 ["X-Column X-Top X-FitY"]
      159 SETTABLE                         R17 R15 R16
      160 GETTABLEKS                       R16 R0 K32 ["SizeCalculator"]
      162 GETTABLEKS                       R16 R16 K37 ["contentFrameRef"]
      164 SETTABLEKS                       R16 R15 K38 ["ref"]
      166 DUPTABLE                         R16 K41 [{"Sections", "UIPadding"}]
      167 GETTABLEKS                       R17 R1 K42 ["getSections"]
      169 CALL                             R17 0 1
      170 SETTABLEKS                       R17 R16 K39 ["Sections"]
      172 GETUPVAL                         R17 3
      173 GETTABLEKS                       R17 R17 K15 ["createElement"]
      175 LOADK                            R18 K40 ["UIPadding"]
      176 DUPTABLE                         R19 K44 [{"PaddingRight"}]
      177 GETIMPORT                        R20 K47 [UDim.new]
      179 LOADN                            R21 0
      180 LOADN                            R22 1
      181 CALL                             R20 2 1
      182 SETTABLEKS                       R20 R19 K43 ["PaddingRight"]
      184 CALL                             R17 2 1
      185 SETTABLEKS                       R17 R16 K40 ["UIPadding"]
      187 CALL                             R13 3 1
      188 SETTABLEKS                       R13 R12 K34 ["Content"]
      190 CALL                             R9 3 1
      191 SETTABLEKS                       R9 R8 K27 ["ScrollingFrame"]
      193 CALL                             R5 3 -1
      194 RETURN                           R5 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Components"]
       20 GETTABLEKS                       R3 R3 K10 ["HiddenCountLabel"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K8 ["Src"]
       34 GETTABLEKS                       R5 R5 K9 ["Components"]
       36 GETTABLEKS                       R5 R5 K12 ["Sections"]
       38 GETTABLEKS                       R5 R5 K13 ["RecentSection"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K8 ["Src"]
       45 GETTABLEKS                       R6 R6 K14 ["Types"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K8 ["Src"]
       52 GETTABLEKS                       R7 R7 K9 ["Components"]
       54 GETTABLEKS                       R7 R7 K12 ["Sections"]
       56 GETTABLEKS                       R7 R7 K15 ["ViewSectionControls"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K9 ["Components"]
       65 GETTABLEKS                       R8 R8 K12 ["Sections"]
       67 GETTABLEKS                       R8 R8 K16 ["PhysicsConstraintsSectionControls"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K8 ["Src"]
       74 GETTABLEKS                       R9 R9 K9 ["Components"]
       76 GETTABLEKS                       R9 R9 K17 ["VisualizationSearchBar"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K8 ["Src"]
       83 GETTABLEKS                       R10 R10 K18 ["Compute"]
       85 GETTABLEKS                       R10 R10 K19 ["computeDividedSections"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K8 ["Src"]
       92 GETTABLEKS                       R11 R11 K18 ["Compute"]
       94 GETTABLEKS                       R11 R11 K20 ["computeVisualizationModeSections"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K8 ["Src"]
      101 GETTABLEKS                       R12 R12 K21 ["Hooks"]
      103 GETTABLEKS                       R12 R12 K22 ["useFuzzySearch"]
      105 CALL                             R11 1 1
      106 GETIMPORT                        R12 K5 [require]
      108 GETTABLEKS                       R13 R0 K8 ["Src"]
      110 GETTABLEKS                       R13 R13 K21 ["Hooks"]
      112 GETTABLEKS                       R13 R13 K23 ["useSizeCalculator"]
      114 CALL                             R12 1 1
      115 GETTABLEKS                       R13 R1 K24 ["UI"]
      117 GETTABLEKS                       R14 R13 K25 ["Pane"]
      119 GETTABLEKS                       R15 R13 K26 ["ScrollingFrame"]
      121 DUPCLOSURE                       R16 K27 [PROTO_2]
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R3
      126 CAPTURE                          VAL R4
      127 CAPTURE                          VAL R6
      128 CAPTURE                          VAL R7
      129 CAPTURE                          VAL R2
      130 CAPTURE                          VAL R14
      131 CAPTURE                          VAL R8
      132 CAPTURE                          VAL R15
      133 RETURN                           R16 1
