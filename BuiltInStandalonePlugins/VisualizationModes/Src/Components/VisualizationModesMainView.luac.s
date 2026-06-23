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
       58 NEWTABLE                         R5 1 0
       60 GETUPVAL                         R6 3
       61 GETTABLEKS                       R6 R6 K15 ["createElement"]
       63 GETUPVAL                         R7 7
       64 DUPTABLE                         R8 K19 [{"LayoutOrder"}]
       65 LOADN                            R9 100
       66 SETTABLEKS                       R9 R8 K18 ["LayoutOrder"]
       68 CALL                             R6 2 1
       69 SETTABLEKS                       R6 R5 K20 ["Animation"]
       71 GETTABLEKS                       R6 R0 K21 ["VisualizationModeCategories"]
       73 LOADNIL                          R7
       74 LOADNIL                          R8
       75 FORGPREP                         R6
       76 GETTABLEKS                       R12 R10 K22 ["name"]
       78 GETTABLE                         R11 R4 R12
       79 GETTABLEKS                       R13 R10 K22 ["name"]
       81 GETTABLE                         R12 R5 R13
       82 GETTABLEKS                       R13 R1 K7 ["addSection"]
       84 GETTABLEKS                       R14 R3 K23 ["createSection"]
       86 MOVE                             R15 R10
       87 MOVE                             R16 R11
       88 MOVE                             R17 R12
       89 CALL                             R14 3 -1
       90 CALL                             R13 -1 0
       91 FORGLOOP                         R6 2 ; [-16]
       93 GETTABLEKS                       R6 R1 K7 ["addSection"]
       95 DUPTABLE                         R7 K11 [{"key", "visible", "renderContent"}]
       96 LOADK                            R8 K24 ["HiddenCount"]
       97 SETTABLEKS                       R8 R7 K8 ["key"]
       99 GETTABLEKS                       R9 R2 K25 ["getFilteredCount"]
      101 CALL                             R9 0 1
      102 LOADN                            R10 0
      103 JUMPIFLT                         R10 R9 ; [+2]
      105 LOADB                            R8 0 +1
      106 LOADB                            R8 1
      107 SETTABLEKS                       R8 R7 K9 ["visible"]
      109 NEWCLOSURE                       R8 P1
      110 CAPTURE                          UPVAL U3
      111 CAPTURE                          UPVAL U8
      112 CAPTURE                          VAL R2
      113 SETTABLEKS                       R8 R7 K10 ["renderContent"]
      115 CALL                             R6 1 0
      116 GETUPVAL                         R6 3
      117 GETTABLEKS                       R6 R6 K15 ["createElement"]
      119 GETUPVAL                         R7 9
      120 NEWTABLE                         R8 2 0
      122 GETUPVAL                         R9 3
      123 GETTABLEKS                       R9 R9 K26 ["Tag"]
      125 LOADK                            R10 K27 ["X-ColumnS X-Top"]
      126 SETTABLE                         R10 R8 R9
      127 GETTABLEKS                       R9 R0 K28 ["Size"]
      129 SETTABLEKS                       R9 R8 K28 ["Size"]
      131 DUPTABLE                         R9 K31 [{"SearchBarContainer", "ScrollingFrame"}]
      132 GETUPVAL                         R10 3
      133 GETTABLEKS                       R10 R10 K15 ["createElement"]
      135 GETUPVAL                         R11 10
      136 DUPTABLE                         R12 K32 [{"FuzzySearch", "LayoutOrder"}]
      137 SETTABLEKS                       R2 R12 K3 ["FuzzySearch"]
      139 LOADN                            R13 1
      140 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
      142 CALL                             R10 2 1
      143 SETTABLEKS                       R10 R9 K29 ["SearchBarContainer"]
      145 GETUPVAL                         R10 3
      146 GETTABLEKS                       R10 R10 K15 ["createElement"]
      148 GETUPVAL                         R11 11
      149 NEWTABLE                         R12 4 0
      151 GETUPVAL                         R13 3
      152 GETTABLEKS                       R13 R13 K26 ["Tag"]
      154 LOADK                            R14 K33 ["ScrollingAutomaticSize VisualizationModes-MainScrollingFrame"]
      155 SETTABLE                         R14 R12 R13
      156 GETTABLEKS                       R13 R0 K34 ["SizeCalculator"]
      158 GETTABLEKS                       R13 R13 K35 ["scrollingFrameSize"]
      160 SETTABLEKS                       R13 R12 K28 ["Size"]
      162 LOADN                            R13 2
      163 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
      165 DUPTABLE                         R13 K37 [{"Content"}]
      166 GETUPVAL                         R14 3
      167 GETTABLEKS                       R14 R14 K15 ["createElement"]
      169 GETUPVAL                         R15 9
      170 NEWTABLE                         R16 2 0
      172 GETUPVAL                         R17 3
      173 GETTABLEKS                       R17 R17 K26 ["Tag"]
      175 LOADK                            R18 K38 ["X-Column X-Top X-FitY"]
      176 SETTABLE                         R18 R16 R17
      177 GETTABLEKS                       R17 R0 K34 ["SizeCalculator"]
      179 GETTABLEKS                       R17 R17 K39 ["contentFrameRef"]
      181 SETTABLEKS                       R17 R16 K40 ["ref"]
      183 DUPTABLE                         R17 K43 [{"Sections", "UIPadding"}]
      184 GETTABLEKS                       R18 R1 K44 ["getSections"]
      186 CALL                             R18 0 1
      187 SETTABLEKS                       R18 R17 K41 ["Sections"]
      189 GETUPVAL                         R18 3
      190 GETTABLEKS                       R18 R18 K15 ["createElement"]
      192 LOADK                            R19 K42 ["UIPadding"]
      193 DUPTABLE                         R20 K46 [{"PaddingRight"}]
      194 GETIMPORT                        R21 K49 [UDim.new]
      196 LOADN                            R22 0
      197 LOADN                            R23 1
      198 CALL                             R21 2 1
      199 SETTABLEKS                       R21 R20 K45 ["PaddingRight"]
      201 CALL                             R18 2 1
      202 SETTABLEKS                       R18 R17 K42 ["UIPadding"]
      204 CALL                             R14 3 1
      205 SETTABLEKS                       R14 R13 K36 ["Content"]
      207 CALL                             R10 3 1
      208 SETTABLEKS                       R10 R9 K30 ["ScrollingFrame"]
      210 CALL                             R6 3 -1
      211 RETURN                           R6 -1

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
       56 GETTABLEKS                       R7 R7 K15 ["AnimationSectionControls"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K8 ["Src"]
       63 GETTABLEKS                       R8 R8 K9 ["Components"]
       65 GETTABLEKS                       R8 R8 K12 ["Sections"]
       67 GETTABLEKS                       R8 R8 K16 ["ViewSectionControls"]
       69 CALL                             R7 1 1
       70 GETIMPORT                        R8 K5 [require]
       72 GETTABLEKS                       R9 R0 K8 ["Src"]
       74 GETTABLEKS                       R9 R9 K9 ["Components"]
       76 GETTABLEKS                       R9 R9 K12 ["Sections"]
       78 GETTABLEKS                       R9 R9 K17 ["PhysicsConstraintsSectionControls"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K8 ["Src"]
       85 GETTABLEKS                       R10 R10 K9 ["Components"]
       87 GETTABLEKS                       R10 R10 K18 ["VisualizationSearchBar"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K8 ["Src"]
       94 GETTABLEKS                       R11 R11 K19 ["Compute"]
       96 GETTABLEKS                       R11 R11 K20 ["computeDividedSections"]
       98 CALL                             R10 1 1
       99 GETIMPORT                        R11 K5 [require]
      101 GETTABLEKS                       R12 R0 K8 ["Src"]
      103 GETTABLEKS                       R12 R12 K19 ["Compute"]
      105 GETTABLEKS                       R12 R12 K21 ["computeVisualizationModeSections"]
      107 CALL                             R11 1 1
      108 GETIMPORT                        R12 K5 [require]
      110 GETTABLEKS                       R13 R0 K8 ["Src"]
      112 GETTABLEKS                       R13 R13 K22 ["Hooks"]
      114 GETTABLEKS                       R13 R13 K23 ["useFuzzySearch"]
      116 CALL                             R12 1 1
      117 GETIMPORT                        R13 K5 [require]
      119 GETTABLEKS                       R14 R0 K8 ["Src"]
      121 GETTABLEKS                       R14 R14 K22 ["Hooks"]
      123 GETTABLEKS                       R14 R14 K24 ["useSizeCalculator"]
      125 CALL                             R13 1 1
      126 GETTABLEKS                       R14 R1 K25 ["UI"]
      128 GETTABLEKS                       R15 R14 K26 ["Pane"]
      130 GETTABLEKS                       R16 R14 K27 ["ScrollingFrame"]
      132 DUPCLOSURE                       R17 K28 [PROTO_2]
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R12
      135 CAPTURE                          VAL R11
      136 CAPTURE                          VAL R3
      137 CAPTURE                          VAL R4
      138 CAPTURE                          VAL R7
      139 CAPTURE                          VAL R8
      140 CAPTURE                          VAL R6
      141 CAPTURE                          VAL R2
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R9
      144 CAPTURE                          VAL R16
      145 RETURN                           R17 1
