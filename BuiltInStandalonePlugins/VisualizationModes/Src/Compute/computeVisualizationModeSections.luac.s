PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["OnVisualizationModeCategoryToggle"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["name"]
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["enabled"]
        9 NOT                              R2 R3
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K17 [{["Text"], ["Visible"], ["LayoutOrder"], ["DefaultIsExpanded"] = True, ["SettingKey"], ["Enabled"], ["SectionEntries"], ["MatchIndexes"], ["CanExpand"] = True, ["CanToggle"] = False, ["EntryCount"], ["EnabledEntryCount"], ["ForceExpansion"], ["OnToggle"]}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K18 ["title"]
        8 SETTABLEKS                       R5 R4 K1 ["Text"]
       10 SETTABLEKS                       R1 R4 K2 ["Visible"]
       12 SETTABLEKS                       R0 R4 K3 ["LayoutOrder"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K19 ["name"]
       17 SETTABLEKS                       R5 R4 K6 ["SettingKey"]
       19 GETUPVAL                         R5 2
       20 GETTABLEKS                       R5 R5 K20 ["enabled"]
       22 SETTABLEKS                       R5 R4 K7 ["Enabled"]
       24 GETUPVAL                         R5 3
       25 GETTABLEKS                       R5 R5 K21 ["renderEntries"]
       27 CALL                             R5 0 1
       28 SETTABLEKS                       R5 R4 K8 ["SectionEntries"]
       30 GETUPVAL                         R5 4
       31 SETTABLEKS                       R5 R4 K9 ["MatchIndexes"]
       33 GETUPVAL                         R5 3
       34 GETTABLEKS                       R5 R5 K22 ["getEntryCount"]
       36 CALL                             R5 0 1
       37 SETTABLEKS                       R5 R4 K13 ["EntryCount"]
       39 GETUPVAL                         R5 3
       40 GETTABLEKS                       R5 R5 K23 ["getEnabledCount"]
       42 CALL                             R5 0 1
       43 SETTABLEKS                       R5 R4 K14 ["EnabledEntryCount"]
       45 LOADB                            R5 1
       46 GETUPVAL                         R6 3
       47 GETTABLEKS                       R6 R6 K24 ["getEntryMatchCount"]
       49 CALL                             R6 0 1
       50 LOADN                            R7 0
       51 JUMPIFLT                         R7 R6 ; [+6]
       53 GETUPVAL                         R6 4
       54 JUMPIFNOTEQKNIL                  R6 ; [+2]
       56 LOADB                            R5 0 +1
       57 LOADB                            R5 1
       58 SETTABLEKS                       R5 R4 K15 ["ForceExpansion"]
       60 NEWCLOSURE                       R5 P0
       61 CAPTURE                          UPVAL U5
       62 CAPTURE                          UPVAL U2
       63 SETTABLEKS                       R5 R4 K16 ["OnToggle"]
       65 CALL                             R2 2 -1
       66 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["FuzzySearch"]
        3 GETTABLEKS                       R3 R3 K1 ["includeEntry"]
        5 GETTABLEKS                       R4 R0 K2 ["title"]
        7 CALL                             R3 1 2
        8 GETUPVAL                         R5 1
        9 DUPTABLE                         R6 K5 [{"OnVisualizationModeToggle", "ForceVisible", "FuzzySearch"}]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R7 R7 K3 ["OnVisualizationModeToggle"]
       13 SETTABLEKS                       R7 R6 K3 ["OnVisualizationModeToggle"]
       15 JUMPIFNOTEQKNIL                  R4 ; [+2]
       17 LOADB                            R7 0 +1
       18 LOADB                            R7 1
       19 SETTABLEKS                       R7 R6 K4 ["ForceVisible"]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R7 R7 K0 ["FuzzySearch"]
       24 SETTABLEKS                       R7 R6 K0 ["FuzzySearch"]
       26 CALL                             R5 1 1
       27 JUMPIFNOT                        R1 ; [+18]
       28 GETUPVAL                         R6 0
       29 GETTABLEKS                       R6 R6 K0 ["FuzzySearch"]
       31 GETTABLEKS                       R6 R6 K6 ["incrementEntryCount"]
       33 CALL                             R6 0 0
       34 JUMPIFNOT                        R3 ; [+5]
       35 GETTABLEKS                       R6 R5 K7 ["addCustomEntry"]
       37 MOVE                             R7 R1
       38 CALL                             R6 1 0
       39 JUMP                             ; [+6]
       40 GETUPVAL                         R6 0
       41 GETTABLEKS                       R6 R6 K0 ["FuzzySearch"]
       43 GETTABLEKS                       R6 R6 K8 ["incrementFilteredCount"]
       45 CALL                             R6 0 0
       46 GETTABLEKS                       R6 R0 K9 ["visualizationModeList"]
       48 LOADNIL                          R7
       49 LOADNIL                          R8
       50 FORGPREP                         R6
       51 GETTABLEKS                       R11 R5 K10 ["addVisualizationModeEntry"]
       53 MOVE                             R12 R0
       54 MOVE                             R13 R10
       55 CALL                             R11 2 0
       56 FORGLOOP                         R6 2 ; [-6]
       58 JUMPIFNOT                        R2 ; [+18]
       59 GETUPVAL                         R6 0
       60 GETTABLEKS                       R6 R6 K0 ["FuzzySearch"]
       62 GETTABLEKS                       R6 R6 K6 ["incrementEntryCount"]
       64 CALL                             R6 0 0
       65 JUMPIFNOT                        R3 ; [+5]
       66 GETTABLEKS                       R6 R5 K7 ["addCustomEntry"]
       68 MOVE                             R7 R2
       69 CALL                             R6 1 0
       70 JUMP                             ; [+6]
       71 GETUPVAL                         R6 0
       72 GETTABLEKS                       R6 R6 K0 ["FuzzySearch"]
       74 GETTABLEKS                       R6 R6 K8 ["incrementFilteredCount"]
       76 CALL                             R6 0 0
       77 DUPTABLE                         R6 K14 [{"key", "visible", "renderContent"}]
       78 LOADK                            R8 K15 ["User_"]
       79 GETTABLEKS                       R9 R0 K16 ["name"]
       81 CONCAT                           R7 R8 R9
       82 SETTABLEKS                       R7 R6 K11 ["key"]
       84 GETTABLEKS                       R7 R5 K17 ["hasVisibleEntries"]
       86 CALL                             R7 0 1
       87 SETTABLEKS                       R7 R6 K12 ["visible"]
       89 NEWCLOSURE                       R7 P0
       90 CAPTURE                          UPVAL U2
       91 CAPTURE                          UPVAL U3
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R5
       94 CAPTURE                          VAL R4
       95 CAPTURE                          UPVAL U0
       96 SETTABLEKS                       R7 R6 K13 ["renderContent"]
       98 RETURN                           R6 1

PROTO_3:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 GETIMPORT                        R2 K2 [table.freeze]
        7 DUPTABLE                         R3 K4 [{"createSection"}]
        8 SETTABLEKS                       R1 R3 K3 ["createSection"]
       10 CALL                             R2 1 -1
       11 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R3 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Components"]
       27 GETTABLEKS                       R4 R4 K11 ["VisualizationModeSection"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K6 ["Src"]
       34 GETTABLEKS                       R5 R5 K12 ["Compute"]
       36 GETTABLEKS                       R5 R5 K13 ["computeVisualizationModeSectionEntries"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K6 ["Src"]
       43 GETTABLEKS                       R6 R6 K14 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K15 ["useFuzzySearch"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K16 [PROTO_3]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 RETURN                           R6 1
