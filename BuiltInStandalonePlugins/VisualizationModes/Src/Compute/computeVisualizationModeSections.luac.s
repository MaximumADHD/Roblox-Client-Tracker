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
       51 JUMPIFLT                         R7 R6 ; [+10]
       53 LOADB                            R5 1
       54 GETUPVAL                         R6 4
       55 JUMPIFNOTEQKNIL                  R6 ; [+6]
       57 GETUPVAL                         R6 5
       58 JUMPIFEQKB                       R6 TRUE ; [+2]
       60 LOADB                            R5 0 +1
       61 LOADB                            R5 1
       62 SETTABLEKS                       R5 R4 K15 ["ForceExpansion"]
       64 NEWCLOSURE                       R5 P0
       65 CAPTURE                          UPVAL U6
       66 CAPTURE                          UPVAL U2
       67 SETTABLEKS                       R5 R4 K16 ["OnToggle"]
       69 CALL                             R2 2 -1
       70 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["FuzzySearch"]
        3 GETTABLEKS                       R5 R5 K1 ["includeEntry"]
        5 GETTABLEKS                       R6 R0 K2 ["title"]
        7 CALL                             R5 1 2
        8 GETUPVAL                         R7 1
        9 DUPTABLE                         R8 K5 [{"OnVisualizationModeToggle", "ForceVisible", "FuzzySearch"}]
       10 GETUPVAL                         R9 0
       11 GETTABLEKS                       R9 R9 K3 ["OnVisualizationModeToggle"]
       13 SETTABLEKS                       R9 R8 K3 ["OnVisualizationModeToggle"]
       15 JUMPIFNOTEQKNIL                  R6 ; [+2]
       17 LOADB                            R9 0 +1
       18 LOADB                            R9 1
       19 SETTABLEKS                       R9 R8 K4 ["ForceVisible"]
       21 GETUPVAL                         R9 0
       22 GETTABLEKS                       R9 R9 K0 ["FuzzySearch"]
       24 SETTABLEKS                       R9 R8 K0 ["FuzzySearch"]
       26 CALL                             R7 1 1
       27 JUMPIFNOT                        R1 ; [+32]
       28 GETUPVAL                         R8 0
       29 GETTABLEKS                       R8 R8 K0 ["FuzzySearch"]
       31 GETTABLEKS                       R8 R8 K6 ["incrementEntryCount"]
       33 CALL                             R8 0 0
       34 MOVE                             R8 R5
       35 JUMPIF                           R8 ; [+9]
       36 JUMPIFNOT                        R3 ; [+8]
       37 GETUPVAL                         R9 0
       38 GETTABLEKS                       R9 R9 K0 ["FuzzySearch"]
       40 GETTABLEKS                       R9 R9 K1 ["includeEntry"]
       42 MOVE                             R10 R3
       43 CALL                             R9 1 1
       44 MOVE                             R8 R9
       45 JUMPIF                           R8 ; [+2]
       46 JUMPIFNOT                        R4 ; [+1]
       47 LOADB                            R8 1
       48 JUMPIFNOT                        R8 ; [+5]
       49 GETTABLEKS                       R9 R7 K7 ["addCustomEntry"]
       51 MOVE                             R10 R1
       52 CALL                             R9 1 0
       53 JUMP                             ; [+6]
       54 GETUPVAL                         R9 0
       55 GETTABLEKS                       R9 R9 K0 ["FuzzySearch"]
       57 GETTABLEKS                       R9 R9 K8 ["incrementFilteredCount"]
       59 CALL                             R9 0 0
       60 GETTABLEKS                       R8 R0 K9 ["visualizationModeList"]
       62 LOADNIL                          R9
       63 LOADNIL                          R10
       64 FORGPREP                         R8
       65 GETTABLEKS                       R13 R7 K10 ["addVisualizationModeEntry"]
       67 MOVE                             R14 R0
       68 MOVE                             R15 R12
       69 CALL                             R13 2 0
       70 FORGLOOP                         R8 2 ; [-6]
       72 JUMPIFNOT                        R2 ; [+18]
       73 GETUPVAL                         R8 0
       74 GETTABLEKS                       R8 R8 K0 ["FuzzySearch"]
       76 GETTABLEKS                       R8 R8 K6 ["incrementEntryCount"]
       78 CALL                             R8 0 0
       79 JUMPIFNOT                        R5 ; [+5]
       80 GETTABLEKS                       R8 R7 K7 ["addCustomEntry"]
       82 MOVE                             R9 R2
       83 CALL                             R8 1 0
       84 JUMP                             ; [+6]
       85 GETUPVAL                         R8 0
       86 GETTABLEKS                       R8 R8 K0 ["FuzzySearch"]
       88 GETTABLEKS                       R8 R8 K8 ["incrementFilteredCount"]
       90 CALL                             R8 0 0
       91 DUPTABLE                         R8 K14 [{"key", "visible", "renderContent"}]
       92 LOADK                            R10 K15 ["User_"]
       93 GETTABLEKS                       R11 R0 K16 ["name"]
       95 CONCAT                           R9 R10 R11
       96 SETTABLEKS                       R9 R8 K11 ["key"]
       98 GETTABLEKS                       R9 R7 K17 ["hasVisibleEntries"]
      100 CALL                             R9 0 1
      101 SETTABLEKS                       R9 R8 K12 ["visible"]
      103 NEWCLOSURE                       R9 P0
      104 CAPTURE                          UPVAL U2
      105 CAPTURE                          UPVAL U3
      106 CAPTURE                          VAL R0
      107 CAPTURE                          VAL R7
      108 CAPTURE                          VAL R6
      109 CAPTURE                          VAL R4
      110 CAPTURE                          UPVAL U0
      111 SETTABLEKS                       R9 R8 K13 ["renderContent"]
      113 RETURN                           R8 1

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
