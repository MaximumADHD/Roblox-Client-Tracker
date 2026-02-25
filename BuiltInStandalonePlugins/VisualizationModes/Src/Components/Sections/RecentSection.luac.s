PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["visualizationModeToggled"]
        2 DUPTABLE                         R3 K5 [{"actionSource", "visualizationModeCategory", "visualizationMode", "isEnabled"}]
        3 LOADK                            R4 K6 ["recent_section"]
        4 SETTABLEKS                       R4 R3 K1 ["actionSource"]
        6 GETUPVAL                         R5 1
        7 GETTABLEKS                       R4 R5 K7 ["visualizationModeCategoryName"]
        9 SETTABLEKS                       R4 R3 K2 ["visualizationModeCategory"]
       11 GETUPVAL                         R5 1
       12 GETTABLEKS                       R4 R5 K8 ["name"]
       14 SETTABLEKS                       R4 R3 K3 ["visualizationMode"]
       16 GETUPVAL                         R6 1
       17 GETTABLEKS                       R5 R6 K9 ["enabled"]
       19 NOT                              R4 R5
       20 SETTABLEKS                       R4 R3 K4 ["isEnabled"]
       22 NAMECALL                         R0 R0 K10 ["report"]
       24 CALL                             R0 3 0
       25 GETUPVAL                         R1 2
       26 GETTABLEKS                       R0 R1 K11 ["OnVisualizationModeToggle"]
       28 GETUPVAL                         R2 1
       29 GETTABLEKS                       R1 R2 K7 ["visualizationModeCategoryName"]
       31 GETUPVAL                         R3 1
       32 GETTABLEKS                       R2 R3 K8 ["name"]
       34 GETUPVAL                         R5 1
       35 GETTABLEKS                       R4 R5 K9 ["enabled"]
       37 NOT                              R3 R4
       38 LOADB                            R4 0
       39 CALL                             R0 4 0
       40 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["Analytics"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K2 ["Localization"]
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
       28 GETUPVAL                         R13 1
       29 GETTABLEKS                       R12 R13 K7 ["createElement"]
       31 GETUPVAL                         R13 2
       32 DUPTABLE                         R14 K15 [{"Text", "Enabled", "ToolTip", "LayoutOrder", "MatchIndexes", "IsEditingEnabled", "OnToggle"}]
       33 GETTABLEKS                       R15 R10 K16 ["title"]
       35 SETTABLEKS                       R15 R14 K8 ["Text"]
       37 GETTABLEKS                       R15 R10 K5 ["enabled"]
       39 SETTABLEKS                       R15 R14 K9 ["Enabled"]
       41 GETTABLEKS                       R15 R10 K17 ["toolTip"]
       43 SETTABLEKS                       R15 R14 K10 ["ToolTip"]
       45 SETTABLEKS                       R9 R14 K11 ["LayoutOrder"]
       47 LOADNIL                          R15
       48 SETTABLEKS                       R15 R14 K12 ["MatchIndexes"]
       50 LOADB                            R15 1
       51 SETTABLEKS                       R15 R14 K13 ["IsEditingEnabled"]
       53 NEWCLOSURE                       R15 P0
       54 CAPTURE                          VAL R1
       55 CAPTURE                          VAL R10
       56 CAPTURE                          VAL R0
       57 SETTABLEKS                       R15 R14 K14 ["OnToggle"]
       59 CALL                             R12 2 1
       60 SETTABLE                         R12 R3 R11
       61 FORGLOOP                         R6 2 ; [-41]
       63 GETUPVAL                         R7 1
       64 GETTABLEKS                       R6 R7 K7 ["createElement"]
       66 GETUPVAL                         R7 3
       67 DUPTABLE                         R8 K26 [{"Text", "SettingKey", "DefaultIsExpanded", "CanToggle", "EnabledEntryCount", "Enabled", "Visible", "LayoutOrder", "EntryCount", "SectionEntries", "ForceExpansion", "IsEditingEnabled"}]
       68 LOADK                            R11 K27 ["VisualizationModeCategories"]
       69 LOADK                            R12 K28 ["Recent"]
       70 NAMECALL                         R9 R2 K29 ["getText"]
       72 CALL                             R9 3 1
       73 SETTABLEKS                       R9 R8 K8 ["Text"]
       75 LOADK                            R9 K30 ["RecentCategories"]
       76 SETTABLEKS                       R9 R8 K18 ["SettingKey"]
       78 LOADB                            R9 0
       79 SETTABLEKS                       R9 R8 K19 ["DefaultIsExpanded"]
       81 LOADB                            R9 0
       82 SETTABLEKS                       R9 R8 K20 ["CanToggle"]
       84 SETTABLEKS                       R5 R8 K21 ["EnabledEntryCount"]
       86 LOADB                            R9 1
       87 SETTABLEKS                       R9 R8 K9 ["Enabled"]
       89 GETTABLEKS                       R9 R0 K22 ["Visible"]
       91 SETTABLEKS                       R9 R8 K22 ["Visible"]
       93 GETTABLEKS                       R9 R0 K11 ["LayoutOrder"]
       95 SETTABLEKS                       R9 R8 K11 ["LayoutOrder"]
       97 SETTABLEKS                       R4 R8 K23 ["EntryCount"]
       99 SETTABLEKS                       R3 R8 K24 ["SectionEntries"]
      101 LOADB                            R9 0
      102 SETTABLEKS                       R9 R8 K25 ["ForceExpansion"]
      104 GETTABLEKS                       R9 R0 K13 ["IsEditingEnabled"]
      106 SETTABLEKS                       R9 R8 K13 ["IsEditingEnabled"]
      108 CALL                             R6 2 -1
      109 RETURN                           R6 -1

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
       18 GETTABLEKS                       R3 R4 K9 ["Framework"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["React"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R7 R0 K6 ["Src"]
       32 GETTABLEKS                       R6 R7 K11 ["Components"]
       34 GETTABLEKS                       R5 R6 K12 ["VisualizationModeEntry"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R8 R0 K6 ["Src"]
       41 GETTABLEKS                       R7 R8 K11 ["Components"]
       43 GETTABLEKS                       R6 R7 K13 ["VisualizationModeSection"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K14 ["ContextServices"]
       48 DUPCLOSURE                       R7 K15 [PROTO_1]
       49 CAPTURE                          VAL R6
       50 CAPTURE                          VAL R3
       51 CAPTURE                          VAL R4
       52 CAPTURE                          VAL R5
       53 RETURN                           R7 1
