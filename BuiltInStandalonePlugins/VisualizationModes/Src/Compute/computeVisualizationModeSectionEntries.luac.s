PROTO_0:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 ADDK                             R1 R1 K0 [1]
        5 SETUPVAL                         R1 1
        6 GETUPVAL                         R1 2
        7 GETTABLEKS                       R1 R1 K1 ["FuzzySearch"]
        9 GETTABLEKS                       R1 R1 K2 ["incrementEntryCount"]
       11 CALL                             R1 0 0
       12 GETUPVAL                         R2 3
       13 FASTCALL2                        TABLE_INSERT R2 R0 ; [+4]
       15 MOVE                             R3 R0
       16 GETIMPORT                        R1 K5 [table.insert]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 ADDK                             R1 R1 K0 [1]
        2 SETUPVAL                         R1 0
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["FuzzySearch"]
        6 GETTABLEKS                       R1 R1 K2 ["incrementEntryCount"]
        8 CALL                             R1 0 0
        9 GETTABLEKS                       R1 R0 K3 ["Visible"]
       11 JUMPIFEQKB                       R1 FALSE ; [+4]
       13 GETUPVAL                         R1 2
       14 ADDK                             R1 R1 K0 [1]
       15 SETUPVAL                         R1 2
       16 GETUPVAL                         R2 3
       17 GETUPVAL                         R3 4
       18 GETTABLEKS                       R3 R3 K4 ["createElement"]
       20 GETUPVAL                         R4 5
       21 MOVE                             R5 R0
       22 CALL                             R3 2 -1
       23 FASTCALL                         TABLE_INSERT ; [+2]
       24 GETIMPORT                        R1 K7 [table.insert]
       26 CALL                             R1 -1 0
       27 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["visualizationModeToggled"]
        2 DUPTABLE                         R3 K6 [{["actionSource"] = "button", ["visualizationModeCategory"], ["visualizationMode"], ["isEnabled"]}]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K7 ["name"]
        6 SETTABLEKS                       R4 R3 K3 ["visualizationModeCategory"]
        8 GETUPVAL                         R4 2
        9 GETTABLEKS                       R4 R4 K7 ["name"]
       11 SETTABLEKS                       R4 R3 K4 ["visualizationMode"]
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K8 ["enabled"]
       16 NOT                              R4 R5
       17 SETTABLEKS                       R4 R3 K5 ["isEnabled"]
       19 NAMECALL                         R0 R0 K9 ["report"]
       21 CALL                             R0 3 0
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K10 ["OnVisualizationModeToggle"]
       25 GETUPVAL                         R1 1
       26 GETTABLEKS                       R1 R1 K7 ["name"]
       28 GETUPVAL                         R2 2
       29 GETTABLEKS                       R2 R2 K7 ["name"]
       31 GETUPVAL                         R4 2
       32 GETTABLEKS                       R4 R4 K8 ["enabled"]
       34 NOT                              R3 R4
       35 LOADB                            R4 1
       36 CALL                             R0 4 0
       37 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 ADDK                             R2 R2 K0 [1]
        2 SETUPVAL                         R2 0
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["FuzzySearch"]
        6 GETTABLEKS                       R2 R2 K2 ["includeEntry"]
        8 GETTABLEKS                       R3 R1 K3 ["title"]
       10 CALL                             R2 1 2
       11 GETUPVAL                         R4 1
       12 GETTABLEKS                       R4 R4 K4 ["ForceVisible"]
       14 JUMPIFNOT                        R4 ; [+1]
       15 LOADB                            R2 1
       16 JUMPIFEQKNIL                     R3 ; [+4]
       18 GETUPVAL                         R4 2
       19 ADDK                             R4 R4 K0 [1]
       20 SETUPVAL                         R4 2
       21 JUMPIF                           R2 ; [+6]
       22 GETUPVAL                         R4 1
       23 GETTABLEKS                       R4 R4 K1 ["FuzzySearch"]
       25 GETTABLEKS                       R4 R4 K5 ["incrementFilteredCount"]
       27 CALL                             R4 0 0
       28 GETTABLEKS                       R4 R1 K6 ["enabled"]
       30 JUMPIFNOT                        R4 ; [+3]
       31 GETUPVAL                         R4 3
       32 ADDK                             R4 R4 K0 [1]
       33 SETUPVAL                         R4 3
       34 DUPTABLE                         R4 K17 [{["key"], ["Text"], ["Visible"], ["ToolTip"], ["Enabled"], ["LayoutOrder"], ["MatchIndexes"], ["IsEditingEnabled"] = True, ["OnToggle"]}]
       35 GETTABLEKS                       R5 R1 K18 ["name"]
       37 SETTABLEKS                       R5 R4 K7 ["key"]
       39 GETTABLEKS                       R5 R1 K3 ["title"]
       41 SETTABLEKS                       R5 R4 K8 ["Text"]
       43 SETTABLEKS                       R2 R4 K9 ["Visible"]
       45 GETTABLEKS                       R5 R1 K19 ["toolTip"]
       47 SETTABLEKS                       R5 R4 K10 ["ToolTip"]
       49 GETTABLEKS                       R5 R1 K6 ["enabled"]
       51 SETTABLEKS                       R5 R4 K11 ["Enabled"]
       53 GETUPVAL                         R5 4
       54 NAMECALL                         R5 R5 K20 ["getNextOrder"]
       56 CALL                             R5 1 1
       57 SETTABLEKS                       R5 R4 K12 ["LayoutOrder"]
       59 SETTABLEKS                       R3 R4 K13 ["MatchIndexes"]
       61 NEWCLOSURE                       R5 P0
       62 CAPTURE                          UPVAL U5
       63 CAPTURE                          VAL R0
       64 CAPTURE                          VAL R1
       65 CAPTURE                          UPVAL U1
       66 SETTABLEKS                       R5 R4 K16 ["OnToggle"]
       68 GETUPVAL                         R5 6
       69 ADDK                             R5 R5 K0 [1]
       70 SETUPVAL                         R5 6
       71 GETUPVAL                         R5 1
       72 GETTABLEKS                       R5 R5 K1 ["FuzzySearch"]
       74 GETTABLEKS                       R5 R5 K21 ["incrementEntryCount"]
       76 CALL                             R5 0 0
       77 GETTABLEKS                       R5 R4 K9 ["Visible"]
       79 JUMPIFEQKB                       R5 FALSE ; [+4]
       81 GETUPVAL                         R5 7
       82 ADDK                             R5 R5 K0 [1]
       83 SETUPVAL                         R5 7
       84 GETUPVAL                         R6 8
       85 GETUPVAL                         R7 9
       86 GETTABLEKS                       R7 R7 K22 ["createElement"]
       88 GETUPVAL                         R8 10
       89 MOVE                             R9 R4
       90 CALL                             R7 2 -1
       91 FASTCALL                         TABLE_INSERT ; [+2]
       92 GETIMPORT                        R5 K25 [table.insert]
       94 CALL                             R5 -1 0
       95 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_5:
        0 GETUPVAL                         R1 0
        1 LOADN                            R2 0
        2 JUMPIFLT                         R2 R1 ; [+2]
        4 LOADB                            R0 0 +1
        5 LOADB                            R0 1
        6 RETURN                           R0 1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_8:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_9:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Analytics"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["new"]
        9 CALL                             R2 0 1
       10 NEWTABLE                         R3 0 0
       12 LOADN                            R4 0
       13 LOADN                            R5 0
       14 LOADN                            R6 0
       15 LOADN                            R7 0
       16 LOADN                            R8 0
       17 NEWCLOSURE                       R9 P0
       18 CAPTURE                          REF R5
       19 CAPTURE                          REF R4
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R3
       22 NEWCLOSURE                       R10 P1
       23 CAPTURE                          REF R5
       24 CAPTURE                          VAL R0
       25 CAPTURE                          REF R4
       26 CAPTURE                          VAL R3
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          UPVAL U3
       29 NEWCLOSURE                       R11 P2
       30 CAPTURE                          REF R6
       31 CAPTURE                          VAL R0
       32 CAPTURE                          REF R7
       33 CAPTURE                          REF R8
       34 CAPTURE                          VAL R2
       35 CAPTURE                          VAL R1
       36 CAPTURE                          REF R5
       37 CAPTURE                          REF R4
       38 CAPTURE                          VAL R3
       39 CAPTURE                          UPVAL U2
       40 CAPTURE                          UPVAL U3
       41 NEWCLOSURE                       R12 P3
       42 CAPTURE                          VAL R3
       43 NEWCLOSURE                       R13 P4
       44 CAPTURE                          REF R4
       45 NEWCLOSURE                       R14 P5
       46 CAPTURE                          REF R7
       47 NEWCLOSURE                       R15 P6
       48 CAPTURE                          REF R5
       49 NEWCLOSURE                       R16 P7
       50 CAPTURE                          REF R6
       51 NEWCLOSURE                       R17 P8
       52 CAPTURE                          REF R8
       53 DUPTABLE                         R18 K12 [{"addEntry", "addCustomEntry", "addVisualizationModeEntry", "renderEntries", "hasVisibleEntries", "getEntryCount", "getVisualizationModeEntryCount", "getEntryMatchCount", "getEnabledCount"}]
       54 SETTABLEKS                       R10 R18 K3 ["addEntry"]
       56 SETTABLEKS                       R9 R18 K4 ["addCustomEntry"]
       58 SETTABLEKS                       R11 R18 K5 ["addVisualizationModeEntry"]
       60 SETTABLEKS                       R12 R18 K6 ["renderEntries"]
       62 SETTABLEKS                       R13 R18 K7 ["hasVisibleEntries"]
       64 SETTABLEKS                       R15 R18 K8 ["getEntryCount"]
       66 SETTABLEKS                       R16 R18 K9 ["getVisualizationModeEntryCount"]
       68 SETTABLEKS                       R14 R18 K10 ["getEntryMatchCount"]
       70 SETTABLEKS                       R17 R18 K11 ["getEnabledCount"]
       72 CLOSEUPVALS                      R4
       73 RETURN                           R18 1

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
       41 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       43 GETTABLEKS                       R6 R6 K14 ["useFuzzySearch"]
       45 CALL                             R5 1 1
       46 GETTABLEKS                       R6 R2 K15 ["ContextServices"]
       48 GETTABLEKS                       R7 R2 K16 ["Util"]
       50 GETTABLEKS                       R7 R7 K17 ["LayoutOrderIterator"]
       52 DUPCLOSURE                       R8 K18 [PROTO_10]
       53 CAPTURE                          VAL R6
       54 CAPTURE                          VAL R7
       55 CAPTURE                          VAL R3
       56 CAPTURE                          VAL R4
       57 RETURN                           R8 1
