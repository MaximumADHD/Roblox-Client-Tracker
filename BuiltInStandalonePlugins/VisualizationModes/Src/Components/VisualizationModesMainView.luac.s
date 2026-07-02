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
        3 DUPTABLE                         R3 K2 [{[1] = "VisualizationModesMainView_LastSearchSetting"}]
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K6 [{"FuzzySearch", "OnVisualizationModeCategoryToggle", "OnVisualizationModeToggle"}]
        7 SETTABLEKS                       R2 R4 K3 ["FuzzySearch"]
        9 GETTABLEKS                       R5 R0 K4 ["OnVisualizationModeCategoryToggle"]
       11 SETTABLEKS                       R5 R4 K4 ["OnVisualizationModeCategoryToggle"]
       13 GETTABLEKS                       R5 R0 K5 ["OnVisualizationModeToggle"]
       15 SETTABLEKS                       R5 R4 K5 ["OnVisualizationModeToggle"]
       17 CALL                             R3 1 1
       18 GETTABLEKS                       R4 R1 K7 ["addSection"]
       20 DUPTABLE                         R5 K12 [{["key"] = "RecentSection", ["visible"], ["renderContent"]}]
       21 GETTABLEKS                       R7 R2 K13 ["searchText"]
       23 JUMPIFEQKS                       R7 K14 [""] ; [+2]
       25 LOADB                            R6 0 +1
       26 LOADB                            R6 1
       27 SETTABLEKS                       R6 R5 K10 ["visible"]
       29 NEWCLOSURE                       R6 P0
       30 CAPTURE                          UPVAL U3
       31 CAPTURE                          UPVAL U4
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R6 R5 K11 ["renderContent"]
       35 CALL                             R4 1 0
       36 NEWTABLE                         R4 2 0
       38 GETUPVAL                         R5 3
       39 GETTABLEKS                       R5 R5 K15 ["createElement"]
       41 GETUPVAL                         R6 5
       42 CALL                             R5 1 1
       43 SETTABLEKS                       R5 R4 K16 ["View"]
       45 GETUPVAL                         R5 3
       46 GETTABLEKS                       R5 R5 K15 ["createElement"]
       48 GETUPVAL                         R6 6
       49 CALL                             R5 1 1
       50 SETTABLEKS                       R5 R4 K17 ["PhysicsConstraints"]
       52 NEWTABLE                         R5 1 0
       54 GETUPVAL                         R6 3
       55 GETTABLEKS                       R6 R6 K15 ["createElement"]
       57 GETUPVAL                         R7 7
       58 DUPTABLE                         R8 K20 [{["LayoutOrder"] = 100}]
       59 CALL                             R6 2 1
       60 SETTABLEKS                       R6 R5 K21 ["Animation"]
       62 GETTABLEKS                       R6 R0 K22 ["VisualizationModeCategories"]
       64 LOADNIL                          R7
       65 LOADNIL                          R8
       66 FORGPREP                         R6
       67 GETTABLEKS                       R12 R10 K23 ["name"]
       69 GETTABLE                         R11 R4 R12
       70 GETTABLEKS                       R13 R10 K23 ["name"]
       72 GETTABLE                         R12 R5 R13
       73 GETTABLEKS                       R13 R1 K7 ["addSection"]
       75 GETTABLEKS                       R14 R3 K24 ["createSection"]
       77 MOVE                             R15 R10
       78 MOVE                             R16 R11
       79 MOVE                             R17 R12
       80 CALL                             R14 3 -1
       81 CALL                             R13 -1 0
       82 FORGLOOP                         R6 2 ; [-16]
       84 GETTABLEKS                       R6 R1 K7 ["addSection"]
       86 DUPTABLE                         R7 K26 [{["key"] = "HiddenCount", ["visible"], ["renderContent"]}]
       87 GETTABLEKS                       R9 R2 K27 ["getFilteredCount"]
       89 CALL                             R9 0 1
       90 LOADN                            R10 0
       91 JUMPIFLT                         R10 R9 ; [+2]
       93 LOADB                            R8 0 +1
       94 LOADB                            R8 1
       95 SETTABLEKS                       R8 R7 K10 ["visible"]
       97 NEWCLOSURE                       R8 P1
       98 CAPTURE                          UPVAL U3
       99 CAPTURE                          UPVAL U8
      100 CAPTURE                          VAL R2
      101 SETTABLEKS                       R8 R7 K11 ["renderContent"]
      103 CALL                             R6 1 0
      104 GETUPVAL                         R6 3
      105 GETTABLEKS                       R6 R6 K15 ["createElement"]
      107 GETUPVAL                         R7 9
      108 NEWTABLE                         R8 2 0
      110 GETUPVAL                         R9 3
      111 GETTABLEKS                       R9 R9 K28 ["Tag"]
      113 LOADK                            R10 K29 ["X-ColumnS X-Top"]
      114 SETTABLE                         R10 R8 R9
      115 GETTABLEKS                       R9 R0 K30 ["Size"]
      117 SETTABLEKS                       R9 R8 K30 ["Size"]
      119 DUPTABLE                         R9 K33 [{"SearchBarContainer", "ScrollingFrame"}]
      120 GETUPVAL                         R10 3
      121 GETTABLEKS                       R10 R10 K15 ["createElement"]
      123 GETUPVAL                         R11 10
      124 DUPTABLE                         R12 K35 [{["FuzzySearch"], ["LayoutOrder"] = 1}]
      125 SETTABLEKS                       R2 R12 K3 ["FuzzySearch"]
      127 CALL                             R10 2 1
      128 SETTABLEKS                       R10 R9 K31 ["SearchBarContainer"]
      130 GETUPVAL                         R10 3
      131 GETTABLEKS                       R10 R10 K15 ["createElement"]
      133 GETUPVAL                         R11 11
      134 NEWTABLE                         R12 4 0
      136 GETUPVAL                         R13 3
      137 GETTABLEKS                       R13 R13 K28 ["Tag"]
      139 LOADK                            R14 K36 ["ScrollingAutomaticSize VisualizationModes-MainScrollingFrame"]
      140 SETTABLE                         R14 R12 R13
      141 GETTABLEKS                       R13 R0 K37 ["SizeCalculator"]
      143 GETTABLEKS                       R13 R13 K38 ["scrollingFrameSize"]
      145 SETTABLEKS                       R13 R12 K30 ["Size"]
      147 LOADN                            R13 2
      148 SETTABLEKS                       R13 R12 K18 ["LayoutOrder"]
      150 DUPTABLE                         R13 K40 [{"Content"}]
      151 GETUPVAL                         R14 3
      152 GETTABLEKS                       R14 R14 K15 ["createElement"]
      154 GETUPVAL                         R15 9
      155 NEWTABLE                         R16 2 0
      157 GETUPVAL                         R17 3
      158 GETTABLEKS                       R17 R17 K28 ["Tag"]
      160 LOADK                            R18 K41 ["X-Column X-Top X-FitY"]
      161 SETTABLE                         R18 R16 R17
      162 GETTABLEKS                       R17 R0 K37 ["SizeCalculator"]
      164 GETTABLEKS                       R17 R17 K42 ["contentFrameRef"]
      166 SETTABLEKS                       R17 R16 K43 ["ref"]
      168 DUPTABLE                         R17 K46 [{"Sections", "UIPadding"}]
      169 GETTABLEKS                       R18 R1 K47 ["getSections"]
      171 CALL                             R18 0 1
      172 SETTABLEKS                       R18 R17 K44 ["Sections"]
      174 GETUPVAL                         R18 3
      175 GETTABLEKS                       R18 R18 K15 ["createElement"]
      177 LOADK                            R19 K45 ["UIPadding"]
      178 DUPTABLE                         R20 K49 [{"PaddingRight"}]
      179 GETIMPORT                        R21 K52 [UDim.new]
      181 LOADN                            R22 0
      182 LOADN                            R23 1
      183 CALL                             R21 2 1
      184 SETTABLEKS                       R21 R20 K48 ["PaddingRight"]
      186 CALL                             R18 2 1
      187 SETTABLEKS                       R18 R17 K45 ["UIPadding"]
      189 CALL                             R14 3 1
      190 SETTABLEKS                       R14 R13 K39 ["Content"]
      192 CALL                             R10 3 1
      193 SETTABLEKS                       R10 R9 K32 ["ScrollingFrame"]
      195 CALL                             R6 3 -1
      196 RETURN                           R6 -1

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
