PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["OnVisualizationModeCategoryToggle"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R1 R2 K1 ["name"]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["enabled"]
        9 NOT                              R2 R3
       10 CALL                             R0 2 0
       11 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["createElement"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K15 [{"Text", "Visible", "LayoutOrder", "DefaultIsExpanded", "SettingKey", "Enabled", "SectionEntries", "MatchIndexes", "CanExpand", "CanToggle", "EntryCount", "EnabledEntryCount", "ForceExpansion", "OnToggle"}]
        5 GETUPVAL                         R6 2
        6 GETTABLEKS                       R5 R6 K16 ["title"]
        8 SETTABLEKS                       R5 R4 K1 ["Text"]
       10 SETTABLEKS                       R1 R4 K2 ["Visible"]
       12 SETTABLEKS                       R0 R4 K3 ["LayoutOrder"]
       14 LOADB                            R5 1
       15 SETTABLEKS                       R5 R4 K4 ["DefaultIsExpanded"]
       17 GETUPVAL                         R6 2
       18 GETTABLEKS                       R5 R6 K17 ["name"]
       20 SETTABLEKS                       R5 R4 K5 ["SettingKey"]
       22 GETUPVAL                         R6 2
       23 GETTABLEKS                       R5 R6 K18 ["enabled"]
       25 SETTABLEKS                       R5 R4 K6 ["Enabled"]
       27 GETUPVAL                         R6 3
       28 GETTABLEKS                       R5 R6 K19 ["renderEntries"]
       30 CALL                             R5 0 1
       31 SETTABLEKS                       R5 R4 K7 ["SectionEntries"]
       33 GETUPVAL                         R5 4
       34 SETTABLEKS                       R5 R4 K8 ["MatchIndexes"]
       36 LOADB                            R5 1
       37 SETTABLEKS                       R5 R4 K9 ["CanExpand"]
       39 LOADB                            R5 0
       40 SETTABLEKS                       R5 R4 K10 ["CanToggle"]
       42 GETUPVAL                         R6 3
       43 GETTABLEKS                       R5 R6 K20 ["getEntryCount"]
       45 CALL                             R5 0 1
       46 SETTABLEKS                       R5 R4 K11 ["EntryCount"]
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R5 R6 K21 ["getEnabledCount"]
       51 CALL                             R5 0 1
       52 SETTABLEKS                       R5 R4 K12 ["EnabledEntryCount"]
       54 LOADB                            R5 1
       55 GETUPVAL                         R7 3
       56 GETTABLEKS                       R6 R7 K22 ["getEntryMatchCount"]
       58 CALL                             R6 0 1
       59 LOADN                            R7 0
       60 JUMPIFLT                         R7 R6 ; [+6]
       62 GETUPVAL                         R6 4
       63 JUMPIFNOTEQKNIL                  R6 ; [+2]
       65 LOADB                            R5 0 +1
       66 LOADB                            R5 1
       67 SETTABLEKS                       R5 R4 K13 ["ForceExpansion"]
       69 NEWCLOSURE                       R5 P0
       70 CAPTURE                          UPVAL U5
       71 CAPTURE                          UPVAL U2
       72 SETTABLEKS                       R5 R4 K14 ["OnToggle"]
       74 CALL                             R2 2 -1
       75 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["FuzzySearch"]
        3 GETTABLEKS                       R2 R3 K1 ["includeEntry"]
        5 GETTABLEKS                       R3 R0 K2 ["title"]
        7 CALL                             R2 1 2
        8 GETUPVAL                         R4 1
        9 DUPTABLE                         R5 K5 [{"OnVisualizationModeToggle", "ForceVisible", "FuzzySearch"}]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K3 ["OnVisualizationModeToggle"]
       13 SETTABLEKS                       R6 R5 K3 ["OnVisualizationModeToggle"]
       15 JUMPIFNOTEQKNIL                  R3 ; [+2]
       17 LOADB                            R6 0 +1
       18 LOADB                            R6 1
       19 SETTABLEKS                       R6 R5 K4 ["ForceVisible"]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K0 ["FuzzySearch"]
       24 SETTABLEKS                       R6 R5 K0 ["FuzzySearch"]
       26 CALL                             R4 1 1
       27 JUMPIFNOT                        R1 ; [+18]
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R6 R7 K0 ["FuzzySearch"]
       31 GETTABLEKS                       R5 R6 K6 ["incrementEntryCount"]
       33 CALL                             R5 0 0
       34 JUMPIFNOT                        R2 ; [+5]
       35 GETTABLEKS                       R5 R4 K7 ["addCustomEntry"]
       37 MOVE                             R6 R1
       38 CALL                             R5 1 0
       39 JUMP                             ; [+6]
       40 GETUPVAL                         R7 0
       41 GETTABLEKS                       R6 R7 K0 ["FuzzySearch"]
       43 GETTABLEKS                       R5 R6 K8 ["incrementFilteredCount"]
       45 CALL                             R5 0 0
       46 GETTABLEKS                       R5 R0 K9 ["visualizationModeList"]
       48 LOADNIL                          R6
       49 LOADNIL                          R7
       50 FORGPREP                         R5
       51 GETTABLEKS                       R10 R4 K10 ["addVisualizationModeEntry"]
       53 MOVE                             R11 R0
       54 MOVE                             R12 R9
       55 CALL                             R10 2 0
       56 FORGLOOP                         R5 2 ; [-6]
       58 DUPTABLE                         R5 K14 [{"key", "visible", "renderContent"}]
       59 LOADK                            R7 K15 ["User_"]
       60 GETTABLEKS                       R8 R0 K16 ["name"]
       62 CONCAT                           R6 R7 R8
       63 SETTABLEKS                       R6 R5 K11 ["key"]
       65 GETTABLEKS                       R6 R4 K17 ["hasVisibleEntries"]
       67 CALL                             R6 0 1
       68 SETTABLEKS                       R6 R5 K12 ["visible"]
       70 NEWCLOSURE                       R6 P0
       71 CAPTURE                          UPVAL U2
       72 CAPTURE                          UPVAL U3
       73 CAPTURE                          VAL R0
       74 CAPTURE                          VAL R4
       75 CAPTURE                          VAL R3
       76 CAPTURE                          UPVAL U0
       77 SETTABLEKS                       R6 R5 K13 ["renderContent"]
       79 RETURN                           R5 1

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
        9 GETTABLEKS                       R3 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R3 K7 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Packages"]
       18 GETTABLEKS                       R3 R4 K9 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K6 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Components"]
       27 GETTABLEKS                       R4 R5 K11 ["VisualizationModeSection"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K6 ["Src"]
       34 GETTABLEKS                       R6 R7 K12 ["Compute"]
       36 GETTABLEKS                       R5 R6 K13 ["computeVisualizationModeSectionEntries"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K6 ["Src"]
       43 GETTABLEKS                       R7 R8 K14 ["Hooks"]
       45 GETTABLEKS                       R6 R7 K15 ["useFuzzySearch"]
       47 CALL                             R5 1 1
       48 DUPCLOSURE                       R6 K16 [PROTO_3]
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R2
       51 CAPTURE                          VAL R3
       52 RETURN                           R6 1
