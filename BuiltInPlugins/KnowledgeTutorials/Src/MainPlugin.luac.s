PROTO_0:
        0 GETUPVAL                         R1 0
        1 JUMPIFNOT                        R1 ; [+13]
        2 LOADK                            R3 K0 ["IntValue"]
        3 NAMECALL                         R1 R0 K1 ["IsA"]
        5 CALL                             R1 2 1
        6 JUMPIFNOT                        R1 ; [+7]
        7 GETIMPORT                        R1 K4 [string.find]
        9 GETTABLEKS                       R2 R0 K5 ["Name"]
       11 LOADK                            R3 K6 ["%.tutorial$"]
       12 CALL                             R1 2 1
       13 JUMPIF                           R1 ; [+1]
       14 RETURN                           R0 0
       15 GETUPVAL                         R1 1
       16 GETTABLEKS                       R1 R1 K7 ["state"]
       18 GETTABLEKS                       R1 R1 K8 ["tutorialData"]
       20 JUMPIF                           R1 ; [+4]
       21 GETUPVAL                         R1 1
       22 NAMECALL                         R1 R1 K9 ["loadTutorialData"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R2 K9 [{[1] = False, ["showCompletionDialog"] = False, ["showAvailableDialog"] = False, ["isTableOfContentsOpen"] = False, ["tutorialData"] = , ["sectionIndex"] = 0}]
        1 SETTABLEKS                       R2 R0 K10 ["state"]
        3 GETUPVAL                         R3 0
        4 JUMPIFNOT                        R3 ; [+4]
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K11 ["ChildAdded"]
        8 JUMP                             ; [+3]
        9 GETUPVAL                         R2 1
       10 GETTABLEKS                       R2 R2 K12 ["DescendantAdded"]
       12 NEWCLOSURE                       R5 P0
       13 CAPTURE                          UPVAL U0
       14 CAPTURE                          VAL R0
       15 NAMECALL                         R3 R2 K13 ["Connect"]
       17 CALL                             R3 2 1
       18 SETTABLEKS                       R3 R0 K14 ["tutorialAddedConnection"]
       20 GETUPVAL                         R3 2
       21 GETTABLEKS                       R3 R3 K15 ["Localization"]
       23 GETTABLEKS                       R3 R3 K16 ["new"]
       25 DUPTABLE                         R4 K21 [{["stringResourceTable"], ["translationResourceTable"], ["pluginName"] = "KnowledgeTutorials"}]
       26 GETUPVAL                         R5 3
       27 SETTABLEKS                       R5 R4 K17 ["stringResourceTable"]
       29 GETUPVAL                         R5 4
       30 SETTABLEKS                       R5 R4 K18 ["translationResourceTable"]
       32 CALL                             R3 1 1
       33 SETTABLEKS                       R3 R0 K22 ["localization"]
       35 GETUPVAL                         R3 2
       36 GETTABLEKS                       R3 R3 K23 ["Analytics"]
       38 GETTABLEKS                       R3 R3 K16 ["new"]
       40 DUPCLOSURE                       R4 K24 [PROTO_1]
       41 NEWTABLE                         R5 0 0
       43 CALL                             R3 2 1
       44 SETTABLEKS                       R3 R0 K25 ["analytics"]
       46 GETUPVAL                         R3 5
       47 GETTABLEKS                       R3 R3 K16 ["new"]
       49 CALL                             R3 0 1
       50 SETTABLEKS                       R3 R0 K26 ["telemetry"]
       52 GETUPVAL                         R3 6
       53 GETTABLEKS                       R3 R3 K16 ["new"]
       55 GETTABLEKS                       R4 R0 K26 ["telemetry"]
       57 CALL                             R3 1 1
       58 SETTABLEKS                       R3 R0 K27 ["telemetryContext"]
       60 GETUPVAL                         R3 7
       61 GETTABLEKS                       R3 R3 K16 ["new"]
       63 CALL                             R3 0 1
       64 SETTABLEKS                       R3 R0 K28 ["DEPRECATED_stylizer"]
       66 GETUPVAL                         R3 8
       67 GETTABLEKS                       R3 R3 K29 ["Util"]
       69 GETTABLEKS                       R3 R3 K30 ["createFoundationDesignBinding"]
       71 CALL                             R3 0 2
       72 SETTABLEKS                       R4 R0 K31 ["onFoundationStyleSheetChange"]
       74 GETUPVAL                         R5 9
       75 GETTABLEKS                       R6 R1 K32 ["Plugin"]
       77 LOADNIL                          R7
       78 LOADNIL                          R8
       79 NEWTABLE                         R9 0 1
       81 MOVE                             R10 R3
       82 SETLIST                          R9 R10 1 [1]
       84 CALL                             R5 4 1
       85 SETTABLEKS                       R5 R0 K33 ["design"]
       87 GETUPVAL                         R5 2
       88 GETTABLEKS                       R5 R5 K34 ["Design"]
       90 GETTABLEKS                       R5 R5 K16 ["new"]
       92 GETTABLEKS                       R6 R0 K33 ["design"]
       94 CALL                             R5 1 1
       95 SETTABLEKS                       R5 R0 K35 ["designContext"]
       97 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+12]
        3 GETTABLEKS                       R2 R0 K0 ["telemetryContext"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["setTutorialData"]
        8 CALL                             R2 2 0
        9 DUPTABLE                         R4 K5 [{["tutorialData"], ["showAvailableDialog"] = True}]
       10 SETTABLEKS                       R1 R4 K2 ["tutorialData"]
       12 NAMECALL                         R2 R0 K6 ["setState"]
       14 CALL                             R2 2 0
       15 RETURN                           R0 0

PROTO_4:
        0 NAMECALL                         R1 R0 K0 ["loadTutorialData"]
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["tutorialAddedConnection"]
        2 NAMECALL                         R1 R1 K1 ["Disconnect"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R1 R0 K0 ["telemetryContext"]
        2 GETUPVAL                         R3 0
        3 DUPTABLE                         R4 K9 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "click", ["context"] = "tutorial_popup", ["action"] = "close"}]
        4 NAMECALL                         R1 R1 K10 ["log"]
        6 CALL                             R1 3 0
        7 DUPTABLE                         R3 K14 [{["enabled"] = False, ["showAvailableDialog"] = False}]
        8 NAMECALL                         R1 R0 K15 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["telemetryContext"]
        2 GETUPVAL                         R3 0
        3 DUPTABLE                         R4 K9 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "click", ["context"] = "tutorial_completion_popup", ["action"] = "close"}]
        4 NAMECALL                         R1 R1 K10 ["log"]
        6 CALL                             R1 3 0
        7 DUPTABLE                         R3 K14 [{["enabled"] = False, ["showCompletionDialog"] = False}]
        8 NAMECALL                         R1 R0 K15 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["telemetryContext"]
        2 GETUPVAL                         R3 0
        3 DUPTABLE                         R4 K9 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "click", ["context"] = "tutorial_popup", ["action"] = "start"}]
        4 NAMECALL                         R1 R1 K10 ["log"]
        6 CALL                             R1 3 0
        7 DUPTABLE                         R3 K17 [{["enabled"] = True, ["showAvailableDialog"] = False, ["sectionIndex"] = 0}]
        8 NAMECALL                         R1 R0 K18 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["telemetryContext"]
        2 GETUPVAL                         R3 0
        3 DUPTABLE                         R4 K9 [{["telemetryType"] = "interaction", ["telemetrySubtype"] = "click", ["context"] = "tutorial_completion_popup", ["action"] = "restart"}]
        4 NAMECALL                         R1 R1 K10 ["log"]
        6 CALL                             R1 3 0
        7 DUPTABLE                         R3 K17 [{["enabled"] = True, ["showCompletionDialog"] = False, ["sectionIndex"] = 0}]
        8 NAMECALL                         R1 R0 K18 ["setState"]
       10 CALL                             R1 2 0
       11 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["telemetryContext"]
        2 GETUPVAL                         R4 0
        3 DUPTABLE                         R5 K7 [{["telemetryType"] = "rating", ["telemetrySubtype"] = "tutorial", ["context"] = "tutorial_completion", ["rating"]}]
        4 SETTABLEKS                       R1 R5 K2 ["rating"]
        6 NAMECALL                         R2 R2 K8 ["log"]
        8 CALL                             R2 3 0
        9 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K12 [{["Enabled"] = True, ["Modal"] = True, ["Title"], ["Size"], ["MinSize"], ["Resizable"] = False, ["ZIndexBehavior"], ["CreateWidgetImmediately"] = True, ["OnClose"]}]
        5 GETTABLEKS                       R6 R1 K13 ["title"]
        7 SETTABLEKS                       R6 R5 K4 ["Title"]
        9 GETTABLEKS                       R6 R1 K14 ["size"]
       11 JUMPIF                           R6 ; [+5]
       12 GETIMPORT                        R6 K17 [Vector2.new]
       14 LOADN                            R7 500
       15 LOADN                            R8 250
       16 CALL                             R6 2 1
       17 SETTABLEKS                       R6 R5 K5 ["Size"]
       19 GETTABLEKS                       R6 R1 K18 ["minSize"]
       21 JUMPIF                           R6 ; [+5]
       22 GETIMPORT                        R6 K17 [Vector2.new]
       24 LOADN                            R7 500
       25 LOADN                            R8 250
       26 CALL                             R6 2 1
       27 SETTABLEKS                       R6 R5 K6 ["MinSize"]
       29 GETIMPORT                        R6 K21 [Enum.ZIndexBehavior.Sibling]
       31 SETTABLEKS                       R6 R5 K9 ["ZIndexBehavior"]
       33 GETTABLEKS                       R6 R1 K22 ["onClose"]
       35 SETTABLEKS                       R6 R5 K11 ["OnClose"]
       37 DUPTABLE                         R6 K24 [{"FoundationProvider"}]
       38 GETUPVAL                         R7 0
       39 GETTABLEKS                       R7 R7 K0 ["createElement"]
       41 GETUPVAL                         R8 2
       42 DUPTABLE                         R9 K28 [{["device"] = "Desktop", ["onStyleSheetChange"]}]
       43 GETTABLEKS                       R10 R0 K29 ["onFoundationStyleSheetChange"]
       45 SETTABLEKS                       R10 R9 K27 ["onStyleSheetChange"]
       47 MOVE                             R10 R2
       48 CALL                             R7 3 1
       49 SETTABLEKS                       R7 R6 K23 ["FoundationProvider"]
       51 CALL                             R3 3 -1
       52 RETURN                           R3 -1

PROTO_12:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onCloseAvailableDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onCloseAvailableDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onStartTutorial"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_15:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onCloseCompletionDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_16:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onCloseCompletionDialog"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_17:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["onRestartTutorial"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_18:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["onRateTutorial"]
        4 CALL                             R1 2 0
        5 RETURN                           R0 0

PROTO_19:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_20:
        0 DUPTABLE                         R1 K1 [{"isTableOfContentsOpen"}]
        1 GETTABLEKS                       R3 R0 K0 ["isTableOfContentsOpen"]
        3 NOT                              R2 R3
        4 SETTABLEKS                       R2 R1 K0 ["isTableOfContentsOpen"]
        6 RETURN                           R1 1

PROTO_21:
        0 GETUPVAL                         R0 0
        1 DUPCLOSURE                       R2 K0 [PROTO_20]
        2 NAMECALL                         R0 R0 K1 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_22:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["telemetryContext"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K9 [{["telemetryType"] = "navigation", ["telemetrySubtype"] = "section", ["context"] = "table_of_contents", ["from"], ["to"]}]
        5 GETUPVAL                         R5 2
        6 GETTABLEKS                       R5 R5 K10 ["sectionIndex"]
        8 SETTABLEKS                       R5 R4 K7 ["from"]
       10 SETTABLEKS                       R0 R4 K8 ["to"]
       12 NAMECALL                         R1 R1 K11 ["log"]
       14 CALL                             R1 3 0
       15 GETUPVAL                         R1 0
       16 DUPTABLE                         R3 K14 [{["sectionIndex"], ["isTableOfContentsOpen"] = False}]
       17 SETTABLEKS                       R0 R3 K10 ["sectionIndex"]
       19 NAMECALL                         R1 R1 K15 ["setState"]
       21 CALL                             R1 2 0
       22 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["telemetryContext"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K11 [{["telemetryType"] = "navigation", ["telemetrySubtype"] = "section", ["context"] = "tutorial_home", ["from"] = 0, ["to"] = 1}]
        5 NAMECALL                         R0 R0 K12 ["log"]
        7 CALL                             R0 3 0
        8 GETUPVAL                         R0 0
        9 DUPTABLE                         R2 K14 [{["sectionIndex"] = 1}]
       10 NAMECALL                         R0 R0 K15 ["setState"]
       12 CALL                             R0 2 0
       13 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["tutorialData"]
        2 JUMPIFNOT                        R1 ; [+17]
        3 DUPTABLE                         R1 K2 [{"sectionIndex"}]
        4 GETTABLEKS                       R4 R0 K0 ["tutorialData"]
        6 GETTABLEKS                       R4 R4 K3 ["sections"]
        8 LENGTH                           R3 R4
        9 GETTABLEKS                       R5 R0 K1 ["sectionIndex"]
       11 ADDK                             R4 R5 K4 [1]
       12 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       14 GETIMPORT                        R2 K7 [math.min]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K1 ["sectionIndex"]
       19 RETURN                           R1 1
       20 DUPTABLE                         R1 K9 [{["sectionIndex"] = 0}]
       21 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["sectionIndex"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["sections"]
        6 LENGTH                           R1 R2
        7 JUMPIFNOTEQ                      R0 R1 ; [+7]
        9 GETUPVAL                         R0 2
       10 DUPTABLE                         R2 K6 [{["enabled"] = False, ["showCompletionDialog"] = True}]
       11 NAMECALL                         R0 R0 K7 ["setState"]
       13 CALL                             R0 2 0
       14 RETURN                           R0 0
       15 GETUPVAL                         R0 0
       16 GETTABLEKS                       R0 R0 K0 ["sectionIndex"]
       18 GETUPVAL                         R2 1
       19 GETTABLEKS                       R2 R2 K1 ["sections"]
       21 LENGTH                           R1 R2
       22 JUMPIFNOTLE                      R0 R1 ; [+25]
       24 GETUPVAL                         R0 2
       25 GETTABLEKS                       R0 R0 K8 ["telemetryContext"]
       27 GETUPVAL                         R2 3
       28 DUPTABLE                         R3 K17 [{["telemetryType"] = "navigation", ["telemetrySubtype"] = "section", ["context"] = "tutorial_section", ["from"], ["to"]}]
       29 GETUPVAL                         R4 0
       30 GETTABLEKS                       R4 R4 K0 ["sectionIndex"]
       32 SETTABLEKS                       R4 R3 K15 ["from"]
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R5 R5 K0 ["sectionIndex"]
       37 ADDK                             R4 R5 K18 [1]
       38 SETTABLEKS                       R4 R3 K16 ["to"]
       40 NAMECALL                         R0 R0 K19 ["log"]
       42 CALL                             R0 3 0
       43 GETUPVAL                         R0 2
       44 DUPCLOSURE                       R2 K20 [PROTO_24]
       45 NAMECALL                         R0 R0 K7 ["setState"]
       47 CALL                             R0 2 0
       48 RETURN                           R0 0

PROTO_26:
        0 DUPTABLE                         R1 K1 [{"sectionIndex"}]
        1 LOADN                            R3 0
        2 GETTABLEKS                       R5 R0 K0 ["sectionIndex"]
        4 SUBK                             R4 R5 K2 [1]
        5 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
        7 GETIMPORT                        R2 K5 [math.max]
        9 CALL                             R2 2 1
       10 SETTABLEKS                       R2 R1 K0 ["sectionIndex"]
       12 RETURN                           R1 1

PROTO_27:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["telemetryContext"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K9 [{["telemetryType"] = "navigation", ["telemetrySubtype"] = "section", ["context"] = "tutorial_section", ["from"], ["to"]}]
        5 GETUPVAL                         R4 2
        6 GETTABLEKS                       R4 R4 K10 ["sectionIndex"]
        8 SETTABLEKS                       R4 R3 K7 ["from"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K10 ["sectionIndex"]
       13 SUBK                             R4 R5 K11 [1]
       14 SETTABLEKS                       R4 R3 K8 ["to"]
       16 NAMECALL                         R0 R0 K12 ["log"]
       18 CALL                             R0 3 0
       19 GETUPVAL                         R0 0
       20 DUPCLOSURE                       R2 K13 [PROTO_26]
       21 NAMECALL                         R0 R0 K14 ["setState"]
       23 CALL                             R0 2 0
       24 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETTABLEKS                       R5 R2 K4 ["tutorialData"]
       10 GETUPVAL                         R6 0
       11 GETTABLEKS                       R6 R6 K5 ["provide"]
       13 NEWTABLE                         R7 0 7
       15 GETUPVAL                         R8 1
       16 GETTABLEKS                       R8 R8 K6 ["new"]
       18 MOVE                             R9 R3
       19 CALL                             R8 1 1
       20 GETUPVAL                         R9 2
       21 GETTABLEKS                       R9 R9 K6 ["new"]
       23 NAMECALL                         R10 R3 K7 ["getMouse"]
       25 CALL                             R10 1 -1
       26 CALL                             R9 -1 1
       27 GETTABLEKS                       R10 R0 K8 ["designContext"]
       29 GETTABLEKS                       R11 R0 K9 ["DEPRECATED_stylizer"]
       31 GETTABLEKS                       R12 R0 K10 ["localization"]
       33 GETTABLEKS                       R13 R0 K11 ["analytics"]
       35 GETTABLEKS                       R14 R0 K12 ["telemetryContext"]
       37 SETLIST                          R7 R8 7 [1]
       39 DUPTABLE                         R8 K16 [{"AvailableDialog", "CompletionDialog", "MainWidget"}]
       40 JUMPIFNOT                        R5 ; [+42]
       41 GETTABLEKS                       R10 R2 K17 ["showAvailableDialog"]
       43 JUMPIFNOT                        R10 ; [+39]
       44 DUPTABLE                         R11 K20 [{"title", "onClose"}]
       45 GETTABLEKS                       R12 R0 K10 ["localization"]
       47 LOADK                            R14 K2 ["Plugin"]
       48 LOADK                            R15 K21 ["TutorialAvailable"]
       49 NAMECALL                         R12 R12 K22 ["getText"]
       51 CALL                             R12 3 1
       52 SETTABLEKS                       R12 R11 K18 ["title"]
       54 NEWCLOSURE                       R12 P0
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R12 R11 K19 ["onClose"]
       58 DUPTABLE                         R12 K24 [{"Content"}]
       59 GETUPVAL                         R13 3
       60 GETTABLEKS                       R13 R13 K25 ["createElement"]
       62 GETUPVAL                         R14 4
       63 DUPTABLE                         R15 K28 [{"tutorialInfo", "onClose", "onStart"}]
       64 GETTABLEKS                       R16 R5 K29 ["info"]
       66 SETTABLEKS                       R16 R15 K26 ["tutorialInfo"]
       68 NEWCLOSURE                       R16 P1
       69 CAPTURE                          VAL R0
       70 SETTABLEKS                       R16 R15 K19 ["onClose"]
       72 NEWCLOSURE                       R16 P2
       73 CAPTURE                          VAL R0
       74 SETTABLEKS                       R16 R15 K27 ["onStart"]
       76 CALL                             R13 2 1
       77 SETTABLEKS                       R13 R12 K23 ["Content"]
       79 NAMECALL                         R9 R0 K30 ["createDialog"]
       81 CALL                             R9 3 1
       82 JUMP                             ; [+1]
       83 LOADNIL                          R9
       84 SETTABLEKS                       R9 R8 K13 ["AvailableDialog"]
       86 JUMPIFNOT                        R5 ; [+46]
       87 GETTABLEKS                       R10 R2 K31 ["showCompletionDialog"]
       89 JUMPIFNOT                        R10 ; [+43]
       90 DUPTABLE                         R11 K20 [{"title", "onClose"}]
       91 GETTABLEKS                       R12 R0 K10 ["localization"]
       93 LOADK                            R14 K2 ["Plugin"]
       94 LOADK                            R15 K32 ["TutorialComplete"]
       95 NAMECALL                         R12 R12 K22 ["getText"]
       97 CALL                             R12 3 1
       98 SETTABLEKS                       R12 R11 K18 ["title"]
      100 NEWCLOSURE                       R12 P3
      101 CAPTURE                          VAL R0
      102 SETTABLEKS                       R12 R11 K19 ["onClose"]
      104 DUPTABLE                         R12 K24 [{"Content"}]
      105 GETUPVAL                         R13 3
      106 GETTABLEKS                       R13 R13 K25 ["createElement"]
      108 GETUPVAL                         R14 5
      109 DUPTABLE                         R15 K35 [{"tutorialInfo", "onClose", "onRestart", "onRate"}]
      110 GETTABLEKS                       R16 R5 K29 ["info"]
      112 SETTABLEKS                       R16 R15 K26 ["tutorialInfo"]
      114 NEWCLOSURE                       R16 P4
      115 CAPTURE                          VAL R0
      116 SETTABLEKS                       R16 R15 K19 ["onClose"]
      118 NEWCLOSURE                       R16 P5
      119 CAPTURE                          VAL R0
      120 SETTABLEKS                       R16 R15 K33 ["onRestart"]
      122 NEWCLOSURE                       R16 P6
      123 CAPTURE                          VAL R0
      124 SETTABLEKS                       R16 R15 K34 ["onRate"]
      126 CALL                             R13 2 1
      127 SETTABLEKS                       R13 R12 K23 ["Content"]
      129 NAMECALL                         R9 R0 K30 ["createDialog"]
      131 CALL                             R9 3 1
      132 JUMP                             ; [+1]
      133 LOADNIL                          R9
      134 SETTABLEKS                       R9 R8 K14 ["CompletionDialog"]
      136 JUMPIFNOT                        R4 ; [+208]
      137 JUMPIFNOT                        R5 ; [+207]
      138 GETUPVAL                         R9 3
      139 GETTABLEKS                       R9 R9 K25 ["createElement"]
      141 GETUPVAL                         R10 6
      142 DUPTABLE                         R11 K48 [{["Id"] = "KnowledgeTutorials", ["Title"], ["Enabled"], ["ShouldRestore"] = False, ["ZIndexBehavior"], ["InitialDockState"], ["Size"], ["MinSize"], ["OnClose"], ["Widget"]}]
      143 GETTABLEKS                       R12 R0 K10 ["localization"]
      145 LOADK                            R14 K2 ["Plugin"]
      146 LOADK                            R15 K49 ["Tutorial"]
      147 NAMECALL                         R12 R12 K22 ["getText"]
      149 CALL                             R12 3 1
      150 SETTABLEKS                       R12 R11 K38 ["Title"]
      152 LOADB                            R12 0
      153 GETTABLEKS                       R13 R2 K4 ["tutorialData"]
      155 JUMPIFEQKNIL                     R13 ; [+2]
      157 MOVE                             R12 R4
      158 SETTABLEKS                       R12 R11 K39 ["Enabled"]
      160 GETIMPORT                        R12 K52 [Enum.ZIndexBehavior.Sibling]
      162 SETTABLEKS                       R12 R11 K42 ["ZIndexBehavior"]
      164 GETIMPORT                        R12 K54 [Enum.InitialDockState.Float]
      166 SETTABLEKS                       R12 R11 K43 ["InitialDockState"]
      168 GETIMPORT                        R12 K56 [Vector2.new]
      170 LOADN                            R13 640
      171 LOADN                            R14 800
      172 CALL                             R12 2 1
      173 SETTABLEKS                       R12 R11 K44 ["Size"]
      175 GETIMPORT                        R12 K56 [Vector2.new]
      177 LOADN                            R13 250
      178 LOADN                            R14 400
      179 CALL                             R12 2 1
      180 SETTABLEKS                       R12 R11 K45 ["MinSize"]
      182 NEWCLOSURE                       R12 P7
      183 CAPTURE                          VAL R0
      184 SETTABLEKS                       R12 R11 K46 ["OnClose"]
      186 GETTABLEKS                       R12 R1 K57 ["PluginLoaderContext"]
      188 GETTABLEKS                       R12 R12 K58 ["mainDockWidget"]
      190 SETTABLEKS                       R12 R11 K47 ["Widget"]
      192 DUPTABLE                         R12 K60 [{"FoundationProvider"}]
      193 GETUPVAL                         R13 3
      194 GETTABLEKS                       R13 R13 K25 ["createElement"]
      196 GETUPVAL                         R14 7
      197 DUPTABLE                         R15 K64 [{["device"] = "Desktop", ["onStyleSheetChange"]}]
      198 GETTABLEKS                       R16 R0 K65 ["onFoundationStyleSheetChange"]
      200 SETTABLEKS                       R16 R15 K63 ["onStyleSheetChange"]
      202 DUPTABLE                         R16 K67 [{"Topbar", "Content"}]
      203 GETUPVAL                         R17 3
      204 GETTABLEKS                       R17 R17 K25 ["createElement"]
      206 GETUPVAL                         R18 8
      207 DUPTABLE                         R19 K70 [{"tutorialData", "isTableOfContentsOpen", "onTableOfContentsClicked"}]
      208 SETTABLEKS                       R5 R19 K4 ["tutorialData"]
      210 GETTABLEKS                       R20 R2 K68 ["isTableOfContentsOpen"]
      212 SETTABLEKS                       R20 R19 K68 ["isTableOfContentsOpen"]
      214 NEWCLOSURE                       R20 P8
      215 CAPTURE                          VAL R0
      216 SETTABLEKS                       R20 R19 K69 ["onTableOfContentsClicked"]
      218 CALL                             R17 2 1
      219 SETTABLEKS                       R17 R16 K66 ["Topbar"]
      221 GETUPVAL                         R17 3
      222 GETTABLEKS                       R17 R17 K25 ["createElement"]
      224 GETUPVAL                         R18 9
      225 DUPTABLE                         R19 K73 [{["tag"] = "position-bottom-left anchor-bottom-left padding-medium bg-surface-100", ["Size"]}]
      226 GETIMPORT                        R20 K75 [UDim2.new]
      228 LOADN                            R21 1
      229 LOADN                            R22 0
      230 LOADN                            R23 1
      231 LOADN                            R24 -32
      232 CALL                             R20 4 1
      233 SETTABLEKS                       R20 R19 K44 ["Size"]
      235 DUPTABLE                         R20 K79 [{"TableOfContents", "TutorialHome", "TutorialSection"}]
      236 GETUPVAL                         R21 3
      237 GETTABLEKS                       R21 R21 K25 ["createElement"]
      239 GETUPVAL                         R22 10
      240 DUPTABLE                         R23 K83 [{"visible", "currentSectionIndex", "tutorialData", "onSectionClicked"}]
      241 GETTABLEKS                       R24 R2 K68 ["isTableOfContentsOpen"]
      243 SETTABLEKS                       R24 R23 K80 ["visible"]
      245 GETTABLEKS                       R24 R2 K84 ["sectionIndex"]
      247 SETTABLEKS                       R24 R23 K81 ["currentSectionIndex"]
      249 SETTABLEKS                       R5 R23 K4 ["tutorialData"]
      251 NEWCLOSURE                       R24 P9
      252 CAPTURE                          VAL R0
      253 CAPTURE                          UPVAL U11
      254 CAPTURE                          VAL R2
      255 SETTABLEKS                       R24 R23 K82 ["onSectionClicked"]
      257 CALL                             R21 2 1
      258 SETTABLEKS                       R21 R20 K76 ["TableOfContents"]
      260 GETUPVAL                         R21 3
      261 GETTABLEKS                       R21 R21 K25 ["createElement"]
      263 GETUPVAL                         R22 12
      264 DUPTABLE                         R23 K87 [{"visible", "tutorialHome", "onStartTutorial"}]
      265 LOADB                            R24 0
      266 GETTABLEKS                       R25 R2 K84 ["sectionIndex"]
      268 JUMPIFNOTEQKN                    R25 K88 [0] ; [+4]
      270 GETTABLEKS                       R25 R2 K68 ["isTableOfContentsOpen"]
      272 NOT                              R24 R25
      273 SETTABLEKS                       R24 R23 K80 ["visible"]
      275 GETTABLEKS                       R24 R5 K89 ["home"]
      277 SETTABLEKS                       R24 R23 K85 ["tutorialHome"]
      279 NEWCLOSURE                       R24 P10
      280 CAPTURE                          VAL R0
      281 CAPTURE                          UPVAL U11
      282 SETTABLEKS                       R24 R23 K86 ["onStartTutorial"]
      284 CALL                             R21 2 1
      285 SETTABLEKS                       R21 R20 K77 ["TutorialHome"]
      287 GETUPVAL                         R21 3
      288 GETTABLEKS                       R21 R21 K25 ["createElement"]
      290 GETUPVAL                         R22 13
      291 DUPTABLE                         R23 K94 [{"visible", "showFinish", "tutorialSection", "onNext", "onPrevious"}]
      292 LOADB                            R24 0
      293 GETTABLEKS                       R25 R2 K84 ["sectionIndex"]
      295 LOADN                            R26 0
      296 JUMPIFNOTLT                      R26 R25 ; [+4]
      298 GETTABLEKS                       R25 R2 K68 ["isTableOfContentsOpen"]
      300 NOT                              R24 R25
      301 SETTABLEKS                       R24 R23 K80 ["visible"]
      303 GETTABLEKS                       R25 R2 K84 ["sectionIndex"]
      305 GETTABLEKS                       R27 R5 K95 ["sections"]
      307 LENGTH                           R26 R27
      308 JUMPIFEQ                         R25 R26 ; [+2]
      310 LOADB                            R24 0 +1
      311 LOADB                            R24 1
      312 SETTABLEKS                       R24 R23 K90 ["showFinish"]
      314 GETTABLEKS                       R25 R5 K95 ["sections"]
      316 GETTABLEKS                       R26 R2 K84 ["sectionIndex"]
      318 GETTABLE                         R24 R25 R26
      319 SETTABLEKS                       R24 R23 K91 ["tutorialSection"]
      321 NEWCLOSURE                       R24 P11
      322 CAPTURE                          VAL R2
      323 CAPTURE                          VAL R5
      324 CAPTURE                          VAL R0
      325 CAPTURE                          UPVAL U11
      326 SETTABLEKS                       R24 R23 K92 ["onNext"]
      328 NEWCLOSURE                       R24 P12
      329 CAPTURE                          VAL R0
      330 CAPTURE                          UPVAL U11
      331 CAPTURE                          VAL R2
      332 SETTABLEKS                       R24 R23 K93 ["onPrevious"]
      334 CALL                             R21 2 1
      335 SETTABLEKS                       R21 R20 K78 ["TutorialSection"]
      337 CALL                             R17 3 1
      338 SETTABLEKS                       R17 R16 K23 ["Content"]
      340 CALL                             R13 3 1
      341 SETTABLEKS                       R13 R12 K59 ["FoundationProvider"]
      343 CALL                             R9 3 1
      344 JUMP                             ; [+1]
      345 LOADNIL                          R9
      346 SETTABLEKS                       R9 R8 K15 ["MainWidget"]
      348 CALL                             R6 2 -1
      349 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
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
       23 GETTABLEKS                       R4 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R4 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R5 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Packages"]
       39 GETTABLEKS                       R6 R6 K12 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R6 R5 K13 ["Components"]
       44 GETTABLEKS                       R6 R6 K14 ["FoundationProviderAdapter"]
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R8 R0 K15 ["Bin"]
       50 GETTABLEKS                       R8 R8 K16 ["defineLuaFlags"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R7 K17 ["getFFlagKnowledgeTutorialsAvoidHanging"]
       55 CALL                             R8 0 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R0 K6 ["Src"]
       60 GETTABLEKS                       R10 R10 K18 ["Util"]
       62 GETTABLEKS                       R10 R10 K19 ["Services"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R10 R9 K20 ["ServerStorage"]
       67 GETTABLEKS                       R11 R3 K21 ["UI"]
       69 GETTABLEKS                       R11 R11 K22 ["DockWidget"]
       71 GETTABLEKS                       R12 R3 K21 ["UI"]
       73 GETTABLEKS                       R12 R12 K23 ["Dialog"]
       75 GETTABLEKS                       R13 R4 K24 ["View"]
       77 GETTABLEKS                       R14 R3 K25 ["ContextServices"]
       79 GETTABLEKS                       R15 R14 K26 ["Plugin"]
       81 GETTABLEKS                       R16 R14 K27 ["Mouse"]
       83 GETTABLEKS                       R17 R3 K28 ["Style"]
       85 GETTABLEKS                       R17 R17 K29 ["Themes"]
       87 GETTABLEKS                       R17 R17 K30 ["StudioTheme"]
       89 GETTABLEKS                       R18 R3 K31 ["Styling"]
       91 GETTABLEKS                       R18 R18 K32 ["registerPluginStyles"]
       93 GETTABLEKS                       R19 R0 K6 ["Src"]
       95 GETTABLEKS                       R19 R19 K33 ["Resources"]
       97 GETTABLEKS                       R19 R19 K34 ["Localization"]
       99 GETTABLEKS                       R19 R19 K35 ["SourceStrings"]
      101 GETTABLEKS                       R20 R0 K6 ["Src"]
      103 GETTABLEKS                       R20 R20 K33 ["Resources"]
      105 GETTABLEKS                       R20 R20 K34 ["Localization"]
      107 GETTABLEKS                       R20 R20 K36 ["LocalizedStrings"]
      109 GETIMPORT                        R21 K5 [require]
      111 GETTABLEKS                       R22 R0 K6 ["Src"]
      113 GETTABLEKS                       R22 R22 K18 ["Util"]
      115 GETTABLEKS                       R22 R22 K37 ["Telemetry"]
      117 GETTABLEKS                       R22 R22 K38 ["TelemetryProtocol"]
      119 CALL                             R21 1 1
      120 GETIMPORT                        R22 K5 [require]
      122 GETTABLEKS                       R23 R0 K6 ["Src"]
      124 GETTABLEKS                       R23 R23 K18 ["Util"]
      126 GETTABLEKS                       R23 R23 K37 ["Telemetry"]
      128 GETTABLEKS                       R23 R23 K39 ["TelemetryContext"]
      130 CALL                             R22 1 1
      131 GETIMPORT                        R23 K5 [require]
      133 GETTABLEKS                       R24 R0 K6 ["Src"]
      135 GETTABLEKS                       R24 R24 K18 ["Util"]
      137 GETTABLEKS                       R24 R24 K37 ["Telemetry"]
      139 GETTABLEKS                       R24 R24 K40 ["KnowledgeTutorialsTelemetryEvent"]
      141 CALL                             R23 1 1
      142 GETTABLEKS                       R24 R0 K6 ["Src"]
      144 GETTABLEKS                       R24 R24 K13 ["Components"]
      146 GETIMPORT                        R25 K5 [require]
      148 GETTABLEKS                       R26 R24 K41 ["TutorialAvailableDialog"]
      150 CALL                             R25 1 1
      151 GETIMPORT                        R26 K5 [require]
      153 GETTABLEKS                       R27 R24 K42 ["TutorialCompletionDialog"]
      155 CALL                             R26 1 1
      156 GETIMPORT                        R27 K5 [require]
      158 GETTABLEKS                       R28 R24 K43 ["Topbar"]
      160 CALL                             R27 1 1
      161 GETIMPORT                        R28 K5 [require]
      163 GETTABLEKS                       R29 R24 K44 ["TableOfContents"]
      165 CALL                             R28 1 1
      166 GETIMPORT                        R29 K5 [require]
      168 GETTABLEKS                       R30 R24 K45 ["TutorialHome"]
      170 CALL                             R29 1 1
      171 GETIMPORT                        R30 K5 [require]
      173 GETTABLEKS                       R31 R24 K46 ["TutorialSection"]
      175 CALL                             R30 1 1
      176 GETIMPORT                        R31 K5 [require]
      178 GETTABLEKS                       R32 R0 K6 ["Src"]
      180 GETTABLEKS                       R32 R32 K18 ["Util"]
      182 GETTABLEKS                       R32 R32 K47 ["getTutorialData"]
      184 CALL                             R31 1 1
      185 GETTABLEKS                       R32 R2 K48 ["PureComponent"]
      187 LOADK                            R34 K49 ["MainPlugin"]
      188 NAMECALL                         R32 R32 K50 ["extend"]
      190 CALL                             R32 2 1
      191 DUPCLOSURE                       R33 K51 [PROTO_2]
      192 CAPTURE                          VAL R8
      193 CAPTURE                          VAL R10
      194 CAPTURE                          VAL R14
      195 CAPTURE                          VAL R19
      196 CAPTURE                          VAL R20
      197 CAPTURE                          VAL R21
      198 CAPTURE                          VAL R22
      199 CAPTURE                          VAL R17
      200 CAPTURE                          VAL R5
      201 CAPTURE                          VAL R18
      202 SETTABLEKS                       R33 R32 K52 ["init"]
      204 DUPCLOSURE                       R33 K53 [PROTO_3]
      205 CAPTURE                          VAL R31
      206 SETTABLEKS                       R33 R32 K54 ["loadTutorialData"]
      208 DUPCLOSURE                       R33 K55 [PROTO_4]
      209 SETTABLEKS                       R33 R32 K56 ["didMount"]
      211 DUPCLOSURE                       R33 K57 [PROTO_5]
      212 SETTABLEKS                       R33 R32 K58 ["willUnmount"]
      214 DUPCLOSURE                       R33 K59 [PROTO_6]
      215 CAPTURE                          VAL R23
      216 SETTABLEKS                       R33 R32 K60 ["onCloseAvailableDialog"]
      218 DUPCLOSURE                       R33 K61 [PROTO_7]
      219 CAPTURE                          VAL R23
      220 SETTABLEKS                       R33 R32 K62 ["onCloseCompletionDialog"]
      222 DUPCLOSURE                       R33 K63 [PROTO_8]
      223 CAPTURE                          VAL R23
      224 SETTABLEKS                       R33 R32 K64 ["onStartTutorial"]
      226 DUPCLOSURE                       R33 K65 [PROTO_9]
      227 CAPTURE                          VAL R23
      228 SETTABLEKS                       R33 R32 K66 ["onRestartTutorial"]
      230 DUPCLOSURE                       R33 K67 [PROTO_10]
      231 CAPTURE                          VAL R23
      232 SETTABLEKS                       R33 R32 K68 ["onRateTutorial"]
      234 DUPCLOSURE                       R33 K69 [PROTO_11]
      235 CAPTURE                          VAL R2
      236 CAPTURE                          VAL R12
      237 CAPTURE                          VAL R6
      238 SETTABLEKS                       R33 R32 K70 ["createDialog"]
      240 DUPCLOSURE                       R33 K71 [PROTO_28]
      241 CAPTURE                          VAL R14
      242 CAPTURE                          VAL R15
      243 CAPTURE                          VAL R16
      244 CAPTURE                          VAL R2
      245 CAPTURE                          VAL R25
      246 CAPTURE                          VAL R26
      247 CAPTURE                          VAL R11
      248 CAPTURE                          VAL R6
      249 CAPTURE                          VAL R27
      250 CAPTURE                          VAL R13
      251 CAPTURE                          VAL R28
      252 CAPTURE                          VAL R23
      253 CAPTURE                          VAL R29
      254 CAPTURE                          VAL R30
      255 SETTABLEKS                       R33 R32 K72 ["render"]
      257 RETURN                           R32 1
