PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["visualizationModeToggled"]
        2 DUPTABLE                         R3 K6 [{["actionSource"] = "recent_section", ["visualizationModeCategory"], ["visualizationMode"], ["isEnabled"]}]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K7 ["visualizationModeCategoryName"]
        6 SETTABLEKS                       R4 R3 K3 ["visualizationModeCategory"]
        8 GETUPVAL                         R4 1
        9 GETTABLEKS                       R4 R4 K8 ["name"]
       11 SETTABLEKS                       R4 R3 K4 ["visualizationMode"]
       13 GETUPVAL                         R5 1
       14 GETTABLEKS                       R5 R5 K9 ["enabled"]
       16 NOT                              R4 R5
       17 SETTABLEKS                       R4 R3 K5 ["isEnabled"]
       19 NAMECALL                         R0 R0 K10 ["report"]
       21 CALL                             R0 3 0
       22 GETUPVAL                         R0 2
       23 GETTABLEKS                       R0 R0 K11 ["OnVisualizationModeToggle"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K7 ["visualizationModeCategoryName"]
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R2 R2 K8 ["name"]
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R4 R4 K9 ["enabled"]
       34 NOT                              R3 R4
       35 LOADB                            R4 0
       36 CALL                             R0 4 0
       37 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Analytics"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K2 ["Localization"]
        9 NAMECALL                         R2 R2 K1 ["use"]
       11 CALL                             R2 1 1
       12 NEWTABLE                         R3 0 0
       14 LOADN                            R4 0
       15 LOADN                            R5 0
       16 GETTABLEKS                       R6 R0 K3 ["RecentVisualizationModes"]
       18 LOADNIL                          R7
       19 LOADNIL                          R8
       20 FORGPREP                         R6
       21 ADDK                             R4 R4 K4 [1]
       22 GETTABLEKS                       R11 R10 K5 ["enabled"]
       24 JUMPIFNOT                        R11 ; [+1]
       25 ADDK                             R5 R5 K4 [1]
       26 GETTABLEKS                       R11 R10 K6 ["name"]
       28 GETUPVAL                         R12 1
       29 GETTABLEKS                       R12 R12 K7 ["createElement"]
       31 GETUPVAL                         R13 2
       32 DUPTABLE                         R14 K17 [{["Text"], ["Enabled"], ["ToolTip"], ["LayoutOrder"], ["MatchIndexes"] = , ["IsEditingEnabled"] = True, ["OnToggle"]}]
       33 GETTABLEKS                       R15 R10 K18 ["title"]
       35 SETTABLEKS                       R15 R14 K8 ["Text"]
       37 GETTABLEKS                       R15 R10 K5 ["enabled"]
       39 SETTABLEKS                       R15 R14 K9 ["Enabled"]
       41 GETTABLEKS                       R15 R10 K19 ["toolTip"]
       43 SETTABLEKS                       R15 R14 K10 ["ToolTip"]
       45 SETTABLEKS                       R9 R14 K11 ["LayoutOrder"]
       47 NEWCLOSURE                       R15 P0
       48 CAPTURE                          VAL R1
       49 CAPTURE                          VAL R10
       50 CAPTURE                          VAL R0
       51 SETTABLEKS                       R15 R14 K16 ["OnToggle"]
       53 CALL                             R12 2 1
       54 SETTABLE                         R12 R3 R11
       55 FORGLOOP                         R6 2 ; [-35]
       57 GETUPVAL                         R6 1
       58 GETTABLEKS                       R6 R6 K7 ["createElement"]
       60 GETUPVAL                         R7 3
       61 DUPTABLE                         R8 K30 [{["Text"], ["SettingKey"] = "RecentCategories", ["DefaultIsExpanded"] = False, ["CanToggle"] = False, ["EnabledEntryCount"], ["Enabled"] = True, ["Visible"], ["LayoutOrder"], ["EntryCount"], ["SectionEntries"], ["ForceExpansion"] = False, ["IsEditingEnabled"]}]
       62 LOADK                            R11 K31 ["VisualizationModeCategories"]
       63 LOADK                            R12 K32 ["Recent"]
       64 NAMECALL                         R9 R2 K33 ["getText"]
       66 CALL                             R9 3 1
       67 SETTABLEKS                       R9 R8 K8 ["Text"]
       69 SETTABLEKS                       R5 R8 K25 ["EnabledEntryCount"]
       71 GETTABLEKS                       R9 R0 K26 ["Visible"]
       73 SETTABLEKS                       R9 R8 K26 ["Visible"]
       75 GETTABLEKS                       R9 R0 K11 ["LayoutOrder"]
       77 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       79 SETTABLEKS                       R4 R8 K27 ["EntryCount"]
       81 SETTABLEKS                       R3 R8 K28 ["SectionEntries"]
       83 GETTABLEKS                       R9 R0 K14 ["IsEditingEnabled"]
       85 SETTABLEKS                       R9 R8 K14 ["IsEditingEnabled"]
       87 CALL                             R6 2 -1
       88 RETURN                           R6 -1

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
       18 GETTABLEKS                       R3 R3 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Components"]
       34 GETTABLEKS                       R5 R5 K12 ["VisualizationModeEntry"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K6 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Components"]
       43 GETTABLEKS                       R6 R6 K13 ["VisualizationModeSection"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K14 ["ContextServices"]
       48 DUPCLOSURE                       R7 K15 [PROTO_1]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 RETURN                           R7 1
