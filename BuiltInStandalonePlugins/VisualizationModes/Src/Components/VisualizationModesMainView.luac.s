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
       36 GETUPVAL                         R4 5
       37 MOVE                             R5 R2
       38 GETTABLEKS                       R6 R0 K15 ["VisualizationModeCategories"]
       40 GETUPVAL                         R7 6
       41 CALL                             R7 0 -1
       42 CALL                             R4 -1 1
       43 NEWTABLE                         R5 1 0
       45 LOADNIL                          R6
       46 NEWTABLE                         R7 1 0
       48 GETUPVAL                         R8 6
       49 CALL                             R8 0 1
       50 JUMPIFNOT                        R8 ; [+12]
       51 GETTABLEKS                       R8 R4 K16 ["customControlSearchTitle"]
       53 SETTABLEKS                       R8 R5 K17 ["PhysicsSimulation"]
       55 GETTABLEKS                       R6 R4 K18 ["collisionFidelitySubSearch"]
       57 GETTABLEKS                       R8 R4 K19 ["hasSubMatch"]
       59 JUMPIFNOT                        R8 ; [+3]
       60 LOADB                            R8 1
       61 SETTABLEKS                       R8 R7 K17 ["PhysicsSimulation"]
       63 NEWTABLE                         R8 4 0
       65 GETUPVAL                         R9 3
       66 GETTABLEKS                       R9 R9 K20 ["createElement"]
       68 GETUPVAL                         R10 7
       69 CALL                             R9 1 1
       70 SETTABLEKS                       R9 R8 K21 ["View"]
       72 GETUPVAL                         R9 3
       73 GETTABLEKS                       R9 R9 K20 ["createElement"]
       75 GETUPVAL                         R10 8
       76 CALL                             R9 1 1
       77 SETTABLEKS                       R9 R8 K22 ["PhysicsConstraints"]
       79 GETUPVAL                         R9 6
       80 CALL                             R9 0 1
       81 JUMPIFNOT                        R9 ; [+33]
       82 GETUPVAL                         R9 3
       83 GETTABLEKS                       R9 R9 K20 ["createElement"]
       85 GETUPVAL                         R10 9
       86 DUPTABLE                         R11 K28 [{["LayoutOrder"] = 0, ["MatchIndexes"], ["ForceExpand"], ["SubOptionVisibility"]}]
       87 GETIMPORT                        R12 K30 [select]
       89 LOADN                            R13 2
       90 GETTABLEKS                       R14 R2 K31 ["includeEntry"]
       92 GETTABLEKS                       R15 R5 K17 ["PhysicsSimulation"]
       94 CALL                             R14 1 -1
       95 CALL                             R12 -1 1
       96 SETTABLEKS                       R12 R11 K25 ["MatchIndexes"]
       98 JUMPIFNOT                        R6 ; [+3]
       99 GETTABLEKS                       R12 R6 K32 ["anySubOptionMatched"]
      101 JUMP                             ; [+1]
      102 LOADNIL                          R12
      103 SETTABLEKS                       R12 R11 K26 ["ForceExpand"]
      105 JUMPIFNOT                        R6 ; [+3]
      106 GETTABLEKS                       R12 R6 K33 ["subOptionVisibility"]
      108 JUMP                             ; [+1]
      109 LOADNIL                          R12
      110 SETTABLEKS                       R12 R11 K27 ["SubOptionVisibility"]
      112 CALL                             R9 2 1
      113 SETTABLEKS                       R9 R8 K17 ["PhysicsSimulation"]
      115 NEWTABLE                         R9 1 0
      117 GETUPVAL                         R10 3
      118 GETTABLEKS                       R10 R10 K20 ["createElement"]
      120 GETUPVAL                         R11 10
      121 DUPTABLE                         R12 K35 [{["LayoutOrder"] = 100}]
      122 CALL                             R10 2 1
      123 SETTABLEKS                       R10 R9 K36 ["Animation"]
      125 GETTABLEKS                       R10 R0 K15 ["VisualizationModeCategories"]
      127 LOADNIL                          R11
      128 LOADNIL                          R12
      129 FORGPREP                         R10
      130 GETTABLEKS                       R16 R14 K37 ["name"]
      132 GETTABLE                         R15 R8 R16
      133 GETTABLEKS                       R17 R14 K37 ["name"]
      135 GETTABLE                         R16 R9 R17
      136 GETTABLEKS                       R18 R14 K37 ["name"]
      138 GETTABLE                         R17 R5 R18
      139 GETTABLEKS                       R18 R1 K7 ["addSection"]
      141 GETTABLEKS                       R19 R3 K38 ["createSection"]
      143 MOVE                             R20 R14
      144 MOVE                             R21 R15
      145 MOVE                             R22 R16
      146 MOVE                             R23 R17
      147 GETTABLEKS                       R25 R14 K37 ["name"]
      149 GETTABLE                         R24 R7 R25
      150 CALL                             R19 5 -1
      151 CALL                             R18 -1 0
      152 FORGLOOP                         R10 2 ; [-23]
      154 GETTABLEKS                       R10 R1 K7 ["addSection"]
      156 DUPTABLE                         R11 K40 [{["key"] = "HiddenCount", ["visible"], ["renderContent"]}]
      157 GETTABLEKS                       R13 R2 K41 ["getFilteredCount"]
      159 CALL                             R13 0 1
      160 LOADN                            R14 0
      161 JUMPIFLT                         R14 R13 ; [+2]
      163 LOADB                            R12 0 +1
      164 LOADB                            R12 1
      165 SETTABLEKS                       R12 R11 K10 ["visible"]
      167 NEWCLOSURE                       R12 P1
      168 CAPTURE                          UPVAL U3
      169 CAPTURE                          UPVAL U11
      170 CAPTURE                          VAL R2
      171 SETTABLEKS                       R12 R11 K11 ["renderContent"]
      173 CALL                             R10 1 0
      174 GETUPVAL                         R10 3
      175 GETTABLEKS                       R10 R10 K20 ["createElement"]
      177 GETUPVAL                         R11 12
      178 NEWTABLE                         R12 2 0
      180 GETUPVAL                         R13 3
      181 GETTABLEKS                       R13 R13 K42 ["Tag"]
      183 LOADK                            R14 K43 ["X-ColumnS X-Top"]
      184 SETTABLE                         R14 R12 R13
      185 GETTABLEKS                       R13 R0 K44 ["Size"]
      187 SETTABLEKS                       R13 R12 K44 ["Size"]
      189 DUPTABLE                         R13 K47 [{"SearchBarContainer", "ScrollingFrame"}]
      190 GETUPVAL                         R14 3
      191 GETTABLEKS                       R14 R14 K20 ["createElement"]
      193 GETUPVAL                         R15 13
      194 DUPTABLE                         R16 K49 [{["FuzzySearch"], ["LayoutOrder"] = 1}]
      195 SETTABLEKS                       R2 R16 K3 ["FuzzySearch"]
      197 CALL                             R14 2 1
      198 SETTABLEKS                       R14 R13 K45 ["SearchBarContainer"]
      200 GETUPVAL                         R14 3
      201 GETTABLEKS                       R14 R14 K20 ["createElement"]
      203 GETUPVAL                         R15 14
      204 NEWTABLE                         R16 4 0
      206 GETUPVAL                         R17 3
      207 GETTABLEKS                       R17 R17 K42 ["Tag"]
      209 LOADK                            R18 K50 ["ScrollingAutomaticSize VisualizationModes-MainScrollingFrame"]
      210 SETTABLE                         R18 R16 R17
      211 GETTABLEKS                       R17 R0 K51 ["SizeCalculator"]
      213 GETTABLEKS                       R17 R17 K52 ["scrollingFrameSize"]
      215 SETTABLEKS                       R17 R16 K44 ["Size"]
      217 LOADN                            R17 2
      218 SETTABLEKS                       R17 R16 K23 ["LayoutOrder"]
      220 DUPTABLE                         R17 K54 [{"Content"}]
      221 GETUPVAL                         R18 3
      222 GETTABLEKS                       R18 R18 K20 ["createElement"]
      224 GETUPVAL                         R19 12
      225 NEWTABLE                         R20 2 0
      227 GETUPVAL                         R21 3
      228 GETTABLEKS                       R21 R21 K42 ["Tag"]
      230 LOADK                            R22 K55 ["X-Column X-Top X-FitY"]
      231 SETTABLE                         R22 R20 R21
      232 GETTABLEKS                       R21 R0 K51 ["SizeCalculator"]
      234 GETTABLEKS                       R21 R21 K56 ["contentFrameRef"]
      236 SETTABLEKS                       R21 R20 K57 ["ref"]
      238 DUPTABLE                         R21 K60 [{"Sections", "UIPadding"}]
      239 GETTABLEKS                       R22 R1 K61 ["getSections"]
      241 CALL                             R22 0 1
      242 SETTABLEKS                       R22 R21 K58 ["Sections"]
      244 GETUPVAL                         R22 3
      245 GETTABLEKS                       R22 R22 K20 ["createElement"]
      247 LOADK                            R23 K59 ["UIPadding"]
      248 DUPTABLE                         R24 K63 [{"PaddingRight"}]
      249 GETIMPORT                        R25 K66 [UDim.new]
      251 LOADN                            R26 0
      252 LOADN                            R27 1
      253 CALL                             R25 2 1
      254 SETTABLEKS                       R25 R24 K62 ["PaddingRight"]
      256 CALL                             R22 2 1
      257 SETTABLEKS                       R22 R21 K59 ["UIPadding"]
      259 CALL                             R18 3 1
      260 SETTABLEKS                       R18 R17 K53 ["Content"]
      262 CALL                             R14 3 1
      263 SETTABLEKS                       R14 R13 K46 ["ScrollingFrame"]
      265 CALL                             R10 3 -1
      266 RETURN                           R10 -1

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
       87 GETTABLEKS                       R10 R10 K12 ["Sections"]
       89 GETTABLEKS                       R10 R10 K18 ["PhysicsSimulationSectionControls"]
       91 CALL                             R9 1 1
       92 GETTABLEKS                       R10 R9 K19 ["Component"]
       94 GETIMPORT                        R11 K5 [require]
       96 GETTABLEKS                       R12 R0 K8 ["Src"]
       98 GETTABLEKS                       R12 R12 K9 ["Components"]
      100 GETTABLEKS                       R12 R12 K20 ["VisualizationSearchBar"]
      102 CALL                             R11 1 1
      103 GETIMPORT                        R12 K5 [require]
      105 GETTABLEKS                       R13 R0 K8 ["Src"]
      107 GETTABLEKS                       R13 R13 K21 ["Compute"]
      109 GETTABLEKS                       R13 R13 K22 ["computeDividedSections"]
      111 CALL                             R12 1 1
      112 GETIMPORT                        R13 K5 [require]
      114 GETTABLEKS                       R14 R0 K8 ["Src"]
      116 GETTABLEKS                       R14 R14 K21 ["Compute"]
      118 GETTABLEKS                       R14 R14 K23 ["computeVisualizationModeSections"]
      120 CALL                             R13 1 1
      121 GETIMPORT                        R14 K5 [require]
      123 GETTABLEKS                       R15 R0 K8 ["Src"]
      125 GETTABLEKS                       R15 R15 K24 ["Hooks"]
      127 GETTABLEKS                       R15 R15 K25 ["useCollisionFidelitySearch"]
      129 CALL                             R14 1 1
      130 GETIMPORT                        R15 K5 [require]
      132 GETTABLEKS                       R16 R0 K8 ["Src"]
      134 GETTABLEKS                       R16 R16 K24 ["Hooks"]
      136 GETTABLEKS                       R16 R16 K26 ["useFuzzySearch"]
      138 CALL                             R15 1 1
      139 GETIMPORT                        R16 K5 [require]
      141 GETTABLEKS                       R17 R0 K8 ["Src"]
      143 GETTABLEKS                       R17 R17 K24 ["Hooks"]
      145 GETTABLEKS                       R17 R17 K27 ["useSizeCalculator"]
      147 CALL                             R16 1 1
      148 GETIMPORT                        R17 K5 [require]
      150 GETTABLEKS                       R18 R0 K8 ["Src"]
      152 GETTABLEKS                       R18 R18 K28 ["Flags"]
      154 GETTABLEKS                       R18 R18 K29 ["getFFlagUseAdornBasedCDDebugVis"]
      156 CALL                             R17 1 1
      157 GETTABLEKS                       R18 R1 K30 ["UI"]
      159 GETTABLEKS                       R19 R18 K31 ["Pane"]
      161 GETTABLEKS                       R20 R18 K32 ["ScrollingFrame"]
      163 DUPCLOSURE                       R21 K33 [PROTO_2]
      164 CAPTURE                          VAL R12
      165 CAPTURE                          VAL R15
      166 CAPTURE                          VAL R13
      167 CAPTURE                          VAL R3
      168 CAPTURE                          VAL R4
      169 CAPTURE                          VAL R14
      170 CAPTURE                          VAL R17
      171 CAPTURE                          VAL R7
      172 CAPTURE                          VAL R8
      173 CAPTURE                          VAL R10
      174 CAPTURE                          VAL R6
      175 CAPTURE                          VAL R2
      176 CAPTURE                          VAL R19
      177 CAPTURE                          VAL R11
      178 CAPTURE                          VAL R20
      179 RETURN                           R21 1
