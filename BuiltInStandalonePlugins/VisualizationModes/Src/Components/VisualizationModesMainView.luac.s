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
      115 GETUPVAL                         R9 10
      116 CALL                             R9 0 1
      117 JUMPIFNOT                        R9 ; [+5]
      118 GETUPVAL                         R9 11
      119 LOADK                            R10 K34 ["DeviceEmulation"]
      120 LOADK                            R11 K35 ["Toggle"]
      121 LOADB                            R12 0
      122 CALL                             R9 3 1
      123 GETUPVAL                         R10 10
      124 CALL                             R10 0 1
      125 JUMPIFNOT                        R10 ; [+5]
      126 GETUPVAL                         R10 11
      127 LOADK                            R11 K34 ["DeviceEmulation"]
      128 LOADK                            R12 K36 ["ShowToolbar"]
      129 LOADB                            R13 1
      130 CALL                             R10 3 1
      131 MOVE                             R11 R9
      132 JUMPIFNOT                        R11 ; [+1]
      133 NOT                              R11 R10
      134 NEWTABLE                         R12 2 0
      136 GETUPVAL                         R13 3
      137 GETTABLEKS                       R13 R13 K20 ["createElement"]
      139 GETUPVAL                         R14 12
      140 DUPTABLE                         R15 K38 [{["LayoutOrder"] = 100}]
      141 CALL                             R13 2 1
      142 SETTABLEKS                       R13 R12 K39 ["Animation"]
      144 GETUPVAL                         R13 10
      145 CALL                             R13 0 1
      146 JUMPIFNOT                        R13 ; [+17]
      147 JUMPIFNOT                        R11 ; [+16]
      148 GETUPVAL                         R13 3
      149 GETTABLEKS                       R13 R13 K20 ["createElement"]
      151 GETUPVAL                         R14 13
      152 DUPTABLE                         R15 K41 [{["LayoutOrder"] = 100, ["IsMenuOpen"]}]
      153 GETTABLEKS                       R17 R0 K40 ["IsMenuOpen"]
      155 JUMPIFEQKB                       R17 TRUE ; [+2]
      157 LOADB                            R16 0 +1
      158 LOADB                            R16 1
      159 SETTABLEKS                       R16 R15 K40 ["IsMenuOpen"]
      161 CALL                             R13 2 1
      162 SETTABLEKS                       R13 R12 K42 ["DeviceSimulation"]
      164 GETTABLEKS                       R13 R0 K15 ["VisualizationModeCategories"]
      166 LOADNIL                          R14
      167 LOADNIL                          R15
      168 FORGPREP                         R13
      169 GETTABLEKS                       R19 R17 K43 ["name"]
      171 GETTABLE                         R18 R8 R19
      172 GETTABLEKS                       R20 R17 K43 ["name"]
      174 GETTABLE                         R19 R12 R20
      175 GETTABLEKS                       R21 R17 K43 ["name"]
      177 GETTABLE                         R20 R5 R21
      178 GETTABLEKS                       R21 R1 K7 ["addSection"]
      180 GETTABLEKS                       R22 R3 K44 ["createSection"]
      182 MOVE                             R23 R17
      183 MOVE                             R24 R18
      184 MOVE                             R25 R19
      185 MOVE                             R26 R20
      186 GETTABLEKS                       R28 R17 K43 ["name"]
      188 GETTABLE                         R27 R7 R28
      189 CALL                             R22 5 -1
      190 CALL                             R21 -1 0
      191 FORGLOOP                         R13 2 ; [-23]
      193 GETTABLEKS                       R13 R1 K7 ["addSection"]
      195 DUPTABLE                         R14 K46 [{["key"] = "HiddenCount", ["visible"], ["renderContent"]}]
      196 GETTABLEKS                       R16 R2 K47 ["getFilteredCount"]
      198 CALL                             R16 0 1
      199 LOADN                            R17 0
      200 JUMPIFLT                         R17 R16 ; [+2]
      202 LOADB                            R15 0 +1
      203 LOADB                            R15 1
      204 SETTABLEKS                       R15 R14 K10 ["visible"]
      206 NEWCLOSURE                       R15 P1
      207 CAPTURE                          UPVAL U3
      208 CAPTURE                          UPVAL U14
      209 CAPTURE                          VAL R2
      210 SETTABLEKS                       R15 R14 K11 ["renderContent"]
      212 CALL                             R13 1 0
      213 GETUPVAL                         R13 3
      214 GETTABLEKS                       R13 R13 K20 ["createElement"]
      216 GETUPVAL                         R14 15
      217 NEWTABLE                         R15 2 0
      219 GETUPVAL                         R16 3
      220 GETTABLEKS                       R16 R16 K48 ["Tag"]
      222 LOADK                            R17 K49 ["X-ColumnS X-Top"]
      223 SETTABLE                         R17 R15 R16
      224 GETTABLEKS                       R16 R0 K50 ["Size"]
      226 SETTABLEKS                       R16 R15 K50 ["Size"]
      228 DUPTABLE                         R16 K53 [{"SearchBarContainer", "ScrollingFrame"}]
      229 GETUPVAL                         R17 3
      230 GETTABLEKS                       R17 R17 K20 ["createElement"]
      232 GETUPVAL                         R18 16
      233 DUPTABLE                         R19 K55 [{["FuzzySearch"], ["LayoutOrder"] = 1}]
      234 SETTABLEKS                       R2 R19 K3 ["FuzzySearch"]
      236 CALL                             R17 2 1
      237 SETTABLEKS                       R17 R16 K51 ["SearchBarContainer"]
      239 GETUPVAL                         R17 3
      240 GETTABLEKS                       R17 R17 K20 ["createElement"]
      242 GETUPVAL                         R18 17
      243 NEWTABLE                         R19 4 0
      245 GETUPVAL                         R20 3
      246 GETTABLEKS                       R20 R20 K48 ["Tag"]
      248 LOADK                            R21 K56 ["ScrollingAutomaticSize VisualizationModes-MainScrollingFrame"]
      249 SETTABLE                         R21 R19 R20
      250 GETTABLEKS                       R20 R0 K57 ["SizeCalculator"]
      252 GETTABLEKS                       R20 R20 K58 ["scrollingFrameSize"]
      254 SETTABLEKS                       R20 R19 K50 ["Size"]
      256 LOADN                            R20 2
      257 SETTABLEKS                       R20 R19 K23 ["LayoutOrder"]
      259 DUPTABLE                         R20 K60 [{"Content"}]
      260 GETUPVAL                         R21 3
      261 GETTABLEKS                       R21 R21 K20 ["createElement"]
      263 GETUPVAL                         R22 15
      264 NEWTABLE                         R23 2 0
      266 GETUPVAL                         R24 3
      267 GETTABLEKS                       R24 R24 K48 ["Tag"]
      269 LOADK                            R25 K61 ["X-Column X-Top X-FitY"]
      270 SETTABLE                         R25 R23 R24
      271 GETTABLEKS                       R24 R0 K57 ["SizeCalculator"]
      273 GETTABLEKS                       R24 R24 K62 ["contentFrameRef"]
      275 SETTABLEKS                       R24 R23 K63 ["ref"]
      277 DUPTABLE                         R24 K66 [{"Sections", "UIPadding"}]
      278 GETTABLEKS                       R25 R1 K67 ["getSections"]
      280 CALL                             R25 0 1
      281 SETTABLEKS                       R25 R24 K64 ["Sections"]
      283 GETUPVAL                         R25 3
      284 GETTABLEKS                       R25 R25 K20 ["createElement"]
      286 LOADK                            R26 K65 ["UIPadding"]
      287 DUPTABLE                         R27 K69 [{"PaddingRight"}]
      288 GETIMPORT                        R28 K72 [UDim.new]
      290 LOADN                            R29 0
      291 LOADN                            R30 1
      292 CALL                             R28 2 1
      293 SETTABLEKS                       R28 R27 K68 ["PaddingRight"]
      295 CALL                             R25 2 1
      296 SETTABLEKS                       R25 R24 K65 ["UIPadding"]
      298 CALL                             R21 3 1
      299 SETTABLEKS                       R21 R20 K59 ["Content"]
      301 CALL                             R17 3 1
      302 SETTABLEKS                       R17 R16 K52 ["ScrollingFrame"]
      304 CALL                             R13 3 -1
      305 RETURN                           R13 -1

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
       78 GETTABLEKS                       R9 R9 K17 ["DeviceSimulationSummary"]
       80 CALL                             R8 1 1
       81 GETIMPORT                        R9 K5 [require]
       83 GETTABLEKS                       R10 R0 K8 ["Src"]
       85 GETTABLEKS                       R10 R10 K18 ["Flags"]
       87 GETTABLEKS                       R10 R10 K19 ["getEngineFeatureDeviceSimulatorToolbarHide"]
       89 CALL                             R9 1 1
       90 GETIMPORT                        R10 K5 [require]
       92 GETTABLEKS                       R11 R0 K8 ["Src"]
       94 GETTABLEKS                       R11 R11 K9 ["Components"]
       96 GETTABLEKS                       R11 R11 K12 ["Sections"]
       98 GETTABLEKS                       R11 R11 K20 ["PhysicsConstraintsSectionControls"]
      100 CALL                             R10 1 1
      101 GETIMPORT                        R11 K5 [require]
      103 GETTABLEKS                       R12 R0 K8 ["Src"]
      105 GETTABLEKS                       R12 R12 K9 ["Components"]
      107 GETTABLEKS                       R12 R12 K12 ["Sections"]
      109 GETTABLEKS                       R12 R12 K21 ["PhysicsSimulationSectionControls"]
      111 CALL                             R11 1 1
      112 GETTABLEKS                       R12 R11 K22 ["Component"]
      114 GETIMPORT                        R13 K5 [require]
      116 GETTABLEKS                       R14 R0 K8 ["Src"]
      118 GETTABLEKS                       R14 R14 K9 ["Components"]
      120 GETTABLEKS                       R14 R14 K23 ["VisualizationSearchBar"]
      122 CALL                             R13 1 1
      123 GETIMPORT                        R14 K5 [require]
      125 GETTABLEKS                       R15 R0 K8 ["Src"]
      127 GETTABLEKS                       R15 R15 K24 ["Compute"]
      129 GETTABLEKS                       R15 R15 K25 ["computeDividedSections"]
      131 CALL                             R14 1 1
      132 GETIMPORT                        R15 K5 [require]
      134 GETTABLEKS                       R16 R0 K8 ["Src"]
      136 GETTABLEKS                       R16 R16 K24 ["Compute"]
      138 GETTABLEKS                       R16 R16 K26 ["computeVisualizationModeSections"]
      140 CALL                             R15 1 1
      141 GETIMPORT                        R16 K5 [require]
      143 GETTABLEKS                       R17 R0 K8 ["Src"]
      145 GETTABLEKS                       R17 R17 K27 ["Hooks"]
      147 GETTABLEKS                       R17 R17 K28 ["useCollisionFidelitySearch"]
      149 CALL                             R16 1 1
      150 GETIMPORT                        R17 K5 [require]
      152 GETTABLEKS                       R18 R0 K8 ["Src"]
      154 GETTABLEKS                       R18 R18 K27 ["Hooks"]
      156 GETTABLEKS                       R18 R18 K29 ["useFuzzySearch"]
      158 CALL                             R17 1 1
      159 GETIMPORT                        R18 K5 [require]
      161 GETTABLEKS                       R19 R0 K8 ["Src"]
      163 GETTABLEKS                       R19 R19 K27 ["Hooks"]
      165 GETTABLEKS                       R19 R19 K30 ["useSizeCalculator"]
      167 CALL                             R18 1 1
      168 GETIMPORT                        R19 K5 [require]
      170 GETTABLEKS                       R20 R0 K8 ["Src"]
      172 GETTABLEKS                       R20 R20 K27 ["Hooks"]
      174 GETTABLEKS                       R20 R20 K31 ["useToggleAction"]
      176 CALL                             R19 1 1
      177 GETIMPORT                        R20 K5 [require]
      179 GETTABLEKS                       R21 R0 K8 ["Src"]
      181 GETTABLEKS                       R21 R21 K18 ["Flags"]
      183 GETTABLEKS                       R21 R21 K32 ["getFFlagUseAdornBasedCDDebugVis"]
      185 CALL                             R20 1 1
      186 GETTABLEKS                       R21 R1 K33 ["UI"]
      188 GETTABLEKS                       R22 R21 K34 ["Pane"]
      190 GETTABLEKS                       R23 R21 K35 ["ScrollingFrame"]
      192 DUPCLOSURE                       R24 K36 [PROTO_2]
      193 CAPTURE                          VAL R14
      194 CAPTURE                          VAL R17
      195 CAPTURE                          VAL R15
      196 CAPTURE                          VAL R3
      197 CAPTURE                          VAL R4
      198 CAPTURE                          VAL R16
      199 CAPTURE                          VAL R20
      200 CAPTURE                          VAL R7
      201 CAPTURE                          VAL R10
      202 CAPTURE                          VAL R12
      203 CAPTURE                          VAL R9
      204 CAPTURE                          VAL R19
      205 CAPTURE                          VAL R6
      206 CAPTURE                          VAL R8
      207 CAPTURE                          VAL R2
      208 CAPTURE                          VAL R22
      209 CAPTURE                          VAL R13
      210 CAPTURE                          VAL R23
      211 RETURN                           R24 1
