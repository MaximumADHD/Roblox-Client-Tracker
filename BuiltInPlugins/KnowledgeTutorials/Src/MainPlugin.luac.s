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
       15 GETUPVAL                         R3 1
       16 GETTABLEKS                       R2 R3 K7 ["state"]
       18 GETTABLEKS                       R1 R2 K8 ["tutorialData"]
       20 JUMPIF                           R1 ; [+4]
       21 GETUPVAL                         R1 1
       22 NAMECALL                         R1 R1 K9 ["loadTutorialData"]
       24 CALL                             R1 1 0
       25 RETURN                           R0 0

PROTO_1:
        0 NEWTABLE                         R0 0 0
        2 RETURN                           R0 1

PROTO_2:
        0 DUPTABLE                         R2 K6 [{"enabled", "showCompletionDialog", "showAvailableDialog", "isTableOfContentsOpen", "tutorialData", "sectionIndex"}]
        1 LOADB                            R3 0
        2 SETTABLEKS                       R3 R2 K0 ["enabled"]
        4 LOADB                            R3 0
        5 SETTABLEKS                       R3 R2 K1 ["showCompletionDialog"]
        7 LOADB                            R3 0
        8 SETTABLEKS                       R3 R2 K2 ["showAvailableDialog"]
       10 LOADB                            R3 0
       11 SETTABLEKS                       R3 R2 K3 ["isTableOfContentsOpen"]
       13 LOADNIL                          R3
       14 SETTABLEKS                       R3 R2 K4 ["tutorialData"]
       16 LOADN                            R3 0
       17 SETTABLEKS                       R3 R2 K5 ["sectionIndex"]
       19 SETTABLEKS                       R2 R0 K7 ["state"]
       21 GETUPVAL                         R3 0
       22 JUMPIFNOT                        R3 ; [+4]
       23 GETUPVAL                         R3 1
       24 GETTABLEKS                       R2 R3 K8 ["ChildAdded"]
       26 JUMP                             ; [+3]
       27 GETUPVAL                         R3 1
       28 GETTABLEKS                       R2 R3 K9 ["DescendantAdded"]
       30 NEWCLOSURE                       R5 P0
       31 CAPTURE                          UPVAL U0
       32 CAPTURE                          VAL R0
       33 NAMECALL                         R3 R2 K10 ["Connect"]
       35 CALL                             R3 2 1
       36 SETTABLEKS                       R3 R0 K11 ["tutorialAddedConnection"]
       38 GETUPVAL                         R5 2
       39 GETTABLEKS                       R4 R5 K12 ["Localization"]
       41 GETTABLEKS                       R3 R4 K13 ["new"]
       43 DUPTABLE                         R4 K17 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
       44 GETUPVAL                         R5 3
       45 SETTABLEKS                       R5 R4 K14 ["stringResourceTable"]
       47 GETUPVAL                         R5 4
       48 SETTABLEKS                       R5 R4 K15 ["translationResourceTable"]
       50 LOADK                            R5 K18 ["KnowledgeTutorials"]
       51 SETTABLEKS                       R5 R4 K16 ["pluginName"]
       53 CALL                             R3 1 1
       54 SETTABLEKS                       R3 R0 K19 ["localization"]
       56 GETUPVAL                         R5 2
       57 GETTABLEKS                       R4 R5 K20 ["Analytics"]
       59 GETTABLEKS                       R3 R4 K13 ["new"]
       61 DUPCLOSURE                       R4 K21 [PROTO_1]
       62 NEWTABLE                         R5 0 0
       64 CALL                             R3 2 1
       65 SETTABLEKS                       R3 R0 K22 ["analytics"]
       67 GETUPVAL                         R4 5
       68 GETTABLEKS                       R3 R4 K13 ["new"]
       70 CALL                             R3 0 1
       71 SETTABLEKS                       R3 R0 K23 ["telemetry"]
       73 GETUPVAL                         R4 6
       74 GETTABLEKS                       R3 R4 K13 ["new"]
       76 GETTABLEKS                       R4 R0 K23 ["telemetry"]
       78 CALL                             R3 1 1
       79 SETTABLEKS                       R3 R0 K24 ["telemetryContext"]
       81 GETUPVAL                         R4 7
       82 GETTABLEKS                       R3 R4 K13 ["new"]
       84 CALL                             R3 0 1
       85 SETTABLEKS                       R3 R0 K25 ["DEPRECATED_stylizer"]
       87 GETUPVAL                         R5 8
       88 GETTABLEKS                       R4 R5 K26 ["Util"]
       90 GETTABLEKS                       R3 R4 K27 ["createFoundationDesignBinding"]
       92 CALL                             R3 0 2
       93 SETTABLEKS                       R4 R0 K28 ["onFoundationStyleSheetChange"]
       95 GETUPVAL                         R5 9
       96 GETTABLEKS                       R6 R1 K29 ["Plugin"]
       98 LOADNIL                          R7
       99 LOADNIL                          R8
      100 NEWTABLE                         R9 0 1
      102 MOVE                             R10 R3
      103 SETLIST                          R9 R10 1 [1]
      105 CALL                             R5 4 1
      106 SETTABLEKS                       R5 R0 K30 ["design"]
      108 GETUPVAL                         R7 2
      109 GETTABLEKS                       R6 R7 K31 ["Design"]
      111 GETTABLEKS                       R5 R6 K13 ["new"]
      113 GETTABLEKS                       R6 R0 K30 ["design"]
      115 CALL                             R5 1 1
      116 SETTABLEKS                       R5 R0 K32 ["designContext"]
      118 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 JUMPIFNOT                        R1 ; [+15]
        3 GETTABLEKS                       R2 R0 K0 ["telemetryContext"]
        5 MOVE                             R4 R1
        6 NAMECALL                         R2 R2 K1 ["setTutorialData"]
        8 CALL                             R2 2 0
        9 DUPTABLE                         R4 K4 [{"tutorialData", "showAvailableDialog"}]
       10 SETTABLEKS                       R1 R4 K2 ["tutorialData"]
       12 LOADB                            R5 1
       13 SETTABLEKS                       R5 R4 K3 ["showAvailableDialog"]
       15 NAMECALL                         R2 R0 K5 ["setState"]
       17 CALL                             R2 2 0
       18 RETURN                           R0 0

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
        3 DUPTABLE                         R4 K5 [{"telemetryType", "telemetrySubtype", "context", "action"}]
        4 LOADK                            R5 K6 ["interaction"]
        5 SETTABLEKS                       R5 R4 K1 ["telemetryType"]
        7 LOADK                            R5 K7 ["click"]
        8 SETTABLEKS                       R5 R4 K2 ["telemetrySubtype"]
       10 LOADK                            R5 K8 ["tutorial_popup"]
       11 SETTABLEKS                       R5 R4 K3 ["context"]
       13 LOADK                            R5 K9 ["close"]
       14 SETTABLEKS                       R5 R4 K4 ["action"]
       16 NAMECALL                         R1 R1 K10 ["log"]
       18 CALL                             R1 3 0
       19 DUPTABLE                         R3 K13 [{"enabled", "showAvailableDialog"}]
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K11 ["enabled"]
       23 LOADB                            R4 0
       24 SETTABLEKS                       R4 R3 K12 ["showAvailableDialog"]
       26 NAMECALL                         R1 R0 K14 ["setState"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["telemetryContext"]
        2 GETUPVAL                         R3 0
        3 DUPTABLE                         R4 K5 [{"telemetryType", "telemetrySubtype", "context", "action"}]
        4 LOADK                            R5 K6 ["interaction"]
        5 SETTABLEKS                       R5 R4 K1 ["telemetryType"]
        7 LOADK                            R5 K7 ["click"]
        8 SETTABLEKS                       R5 R4 K2 ["telemetrySubtype"]
       10 LOADK                            R5 K8 ["tutorial_completion_popup"]
       11 SETTABLEKS                       R5 R4 K3 ["context"]
       13 LOADK                            R5 K9 ["close"]
       14 SETTABLEKS                       R5 R4 K4 ["action"]
       16 NAMECALL                         R1 R1 K10 ["log"]
       18 CALL                             R1 3 0
       19 DUPTABLE                         R3 K13 [{"enabled", "showCompletionDialog"}]
       20 LOADB                            R4 0
       21 SETTABLEKS                       R4 R3 K11 ["enabled"]
       23 LOADB                            R4 0
       24 SETTABLEKS                       R4 R3 K12 ["showCompletionDialog"]
       26 NAMECALL                         R1 R0 K14 ["setState"]
       28 CALL                             R1 2 0
       29 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["telemetryContext"]
        2 GETUPVAL                         R3 0
        3 DUPTABLE                         R4 K5 [{"telemetryType", "telemetrySubtype", "context", "action"}]
        4 LOADK                            R5 K6 ["interaction"]
        5 SETTABLEKS                       R5 R4 K1 ["telemetryType"]
        7 LOADK                            R5 K7 ["click"]
        8 SETTABLEKS                       R5 R4 K2 ["telemetrySubtype"]
       10 LOADK                            R5 K8 ["tutorial_popup"]
       11 SETTABLEKS                       R5 R4 K3 ["context"]
       13 LOADK                            R5 K9 ["start"]
       14 SETTABLEKS                       R5 R4 K4 ["action"]
       16 NAMECALL                         R1 R1 K10 ["log"]
       18 CALL                             R1 3 0
       19 DUPTABLE                         R3 K14 [{"enabled", "showAvailableDialog", "sectionIndex"}]
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K11 ["enabled"]
       23 LOADB                            R4 0
       24 SETTABLEKS                       R4 R3 K12 ["showAvailableDialog"]
       26 LOADN                            R4 0
       27 SETTABLEKS                       R4 R3 K13 ["sectionIndex"]
       29 NAMECALL                         R1 R0 K15 ["setState"]
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R1 R0 K0 ["telemetryContext"]
        2 GETUPVAL                         R3 0
        3 DUPTABLE                         R4 K5 [{"telemetryType", "telemetrySubtype", "context", "action"}]
        4 LOADK                            R5 K6 ["interaction"]
        5 SETTABLEKS                       R5 R4 K1 ["telemetryType"]
        7 LOADK                            R5 K7 ["click"]
        8 SETTABLEKS                       R5 R4 K2 ["telemetrySubtype"]
       10 LOADK                            R5 K8 ["tutorial_completion_popup"]
       11 SETTABLEKS                       R5 R4 K3 ["context"]
       13 LOADK                            R5 K9 ["restart"]
       14 SETTABLEKS                       R5 R4 K4 ["action"]
       16 NAMECALL                         R1 R1 K10 ["log"]
       18 CALL                             R1 3 0
       19 DUPTABLE                         R3 K14 [{"enabled", "showCompletionDialog", "sectionIndex"}]
       20 LOADB                            R4 1
       21 SETTABLEKS                       R4 R3 K11 ["enabled"]
       23 LOADB                            R4 0
       24 SETTABLEKS                       R4 R3 K12 ["showCompletionDialog"]
       26 LOADN                            R4 0
       27 SETTABLEKS                       R4 R3 K13 ["sectionIndex"]
       29 NAMECALL                         R1 R0 K15 ["setState"]
       31 CALL                             R1 2 0
       32 RETURN                           R0 0

PROTO_10:
        0 GETTABLEKS                       R2 R0 K0 ["telemetryContext"]
        2 GETUPVAL                         R4 0
        3 DUPTABLE                         R5 K5 [{"telemetryType", "telemetrySubtype", "context", "rating"}]
        4 LOADK                            R6 K4 ["rating"]
        5 SETTABLEKS                       R6 R5 K1 ["telemetryType"]
        7 LOADK                            R6 K6 ["tutorial"]
        8 SETTABLEKS                       R6 R5 K2 ["telemetrySubtype"]
       10 LOADK                            R6 K7 ["tutorial_completion"]
       11 SETTABLEKS                       R6 R5 K3 ["context"]
       13 SETTABLEKS                       R1 R5 K4 ["rating"]
       15 NAMECALL                         R2 R2 K8 ["log"]
       17 CALL                             R2 3 0
       18 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["createElement"]
        3 GETUPVAL                         R4 1
        4 DUPTABLE                         R5 K10 [{"Enabled", "Modal", "Title", "Size", "MinSize", "Resizable", "ZIndexBehavior", "CreateWidgetImmediately", "OnClose"}]
        5 LOADB                            R6 1
        6 SETTABLEKS                       R6 R5 K1 ["Enabled"]
        8 LOADB                            R6 1
        9 SETTABLEKS                       R6 R5 K2 ["Modal"]
       11 GETTABLEKS                       R6 R1 K11 ["title"]
       13 SETTABLEKS                       R6 R5 K3 ["Title"]
       15 GETTABLEKS                       R6 R1 K12 ["size"]
       17 JUMPIF                           R6 ; [+5]
       18 GETIMPORT                        R6 K15 [Vector2.new]
       20 LOADN                            R7 244
       21 LOADN                            R8 250
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K4 ["Size"]
       25 GETTABLEKS                       R6 R1 K16 ["minSize"]
       27 JUMPIF                           R6 ; [+5]
       28 GETIMPORT                        R6 K15 [Vector2.new]
       30 LOADN                            R7 244
       31 LOADN                            R8 250
       32 CALL                             R6 2 1
       33 SETTABLEKS                       R6 R5 K5 ["MinSize"]
       35 LOADB                            R6 0
       36 SETTABLEKS                       R6 R5 K6 ["Resizable"]
       38 GETIMPORT                        R6 K19 [Enum.ZIndexBehavior.Sibling]
       40 SETTABLEKS                       R6 R5 K7 ["ZIndexBehavior"]
       42 LOADB                            R6 1
       43 SETTABLEKS                       R6 R5 K8 ["CreateWidgetImmediately"]
       45 GETTABLEKS                       R6 R1 K20 ["onClose"]
       47 SETTABLEKS                       R6 R5 K9 ["OnClose"]
       49 DUPTABLE                         R6 K22 [{"FoundationProvider"}]
       50 GETUPVAL                         R8 0
       51 GETTABLEKS                       R7 R8 K0 ["createElement"]
       53 GETUPVAL                         R8 2
       54 DUPTABLE                         R9 K25 [{"device", "onStyleSheetChange"}]
       55 LOADK                            R10 K26 ["Desktop"]
       56 SETTABLEKS                       R10 R9 K23 ["device"]
       58 GETTABLEKS                       R10 R0 K27 ["onFoundationStyleSheetChange"]
       60 SETTABLEKS                       R10 R9 K24 ["onStyleSheetChange"]
       62 MOVE                             R10 R2
       63 CALL                             R7 3 1
       64 SETTABLEKS                       R7 R6 K21 ["FoundationProvider"]
       66 CALL                             R3 3 -1
       67 RETURN                           R3 -1

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
        1 DUPTABLE                         R2 K1 [{"enabled"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["enabled"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["telemetryContext"]
        3 GETUPVAL                         R3 1
        4 DUPTABLE                         R4 K6 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
        5 LOADK                            R5 K7 ["navigation"]
        6 SETTABLEKS                       R5 R4 K1 ["telemetryType"]
        8 LOADK                            R5 K8 ["section"]
        9 SETTABLEKS                       R5 R4 K2 ["telemetrySubtype"]
       11 LOADK                            R5 K9 ["table_of_contents"]
       12 SETTABLEKS                       R5 R4 K3 ["context"]
       14 GETUPVAL                         R6 2
       15 GETTABLEKS                       R5 R6 K10 ["sectionIndex"]
       17 SETTABLEKS                       R5 R4 K4 ["from"]
       19 SETTABLEKS                       R0 R4 K5 ["to"]
       21 NAMECALL                         R1 R1 K11 ["log"]
       23 CALL                             R1 3 0
       24 GETUPVAL                         R1 0
       25 DUPTABLE                         R3 K13 [{"sectionIndex", "isTableOfContentsOpen"}]
       26 SETTABLEKS                       R0 R3 K10 ["sectionIndex"]
       28 LOADB                            R4 0
       29 SETTABLEKS                       R4 R3 K12 ["isTableOfContentsOpen"]
       31 NAMECALL                         R1 R1 K14 ["setState"]
       33 CALL                             R1 2 0
       34 RETURN                           R0 0

PROTO_23:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["telemetryContext"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
        5 LOADK                            R4 K7 ["navigation"]
        6 SETTABLEKS                       R4 R3 K1 ["telemetryType"]
        8 LOADK                            R4 K8 ["section"]
        9 SETTABLEKS                       R4 R3 K2 ["telemetrySubtype"]
       11 LOADK                            R4 K9 ["tutorial_home"]
       12 SETTABLEKS                       R4 R3 K3 ["context"]
       14 LOADN                            R4 0
       15 SETTABLEKS                       R4 R3 K4 ["from"]
       17 LOADN                            R4 1
       18 SETTABLEKS                       R4 R3 K5 ["to"]
       20 NAMECALL                         R0 R0 K10 ["log"]
       22 CALL                             R0 3 0
       23 GETUPVAL                         R0 0
       24 DUPTABLE                         R2 K12 [{"sectionIndex"}]
       25 LOADN                            R3 1
       26 SETTABLEKS                       R3 R2 K11 ["sectionIndex"]
       28 NAMECALL                         R0 R0 K13 ["setState"]
       30 CALL                             R0 2 0
       31 RETURN                           R0 0

PROTO_24:
        0 GETTABLEKS                       R1 R0 K0 ["tutorialData"]
        2 JUMPIFNOT                        R1 ; [+17]
        3 DUPTABLE                         R1 K2 [{"sectionIndex"}]
        4 GETTABLEKS                       R5 R0 K0 ["tutorialData"]
        6 GETTABLEKS                       R4 R5 K3 ["sections"]
        8 LENGTH                           R3 R4
        9 GETTABLEKS                       R5 R0 K1 ["sectionIndex"]
       11 ADDK                             R4 R5 K4 [1]
       12 FASTCALL2                        MATH_MIN R3 R4 ; [+3]
       14 GETIMPORT                        R2 K7 [math.min]
       16 CALL                             R2 2 1
       17 SETTABLEKS                       R2 R1 K1 ["sectionIndex"]
       19 RETURN                           R1 1
       20 DUPTABLE                         R1 K2 [{"sectionIndex"}]
       21 LOADN                            R2 0
       22 SETTABLEKS                       R2 R1 K1 ["sectionIndex"]
       24 RETURN                           R1 1

PROTO_25:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["sectionIndex"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["sections"]
        6 LENGTH                           R1 R2
        7 JUMPIFNOTEQ                      R0 R1 ; [+13]
        9 GETUPVAL                         R0 2
       10 DUPTABLE                         R2 K4 [{"enabled", "showCompletionDialog"}]
       11 LOADB                            R3 0
       12 SETTABLEKS                       R3 R2 K2 ["enabled"]
       14 LOADB                            R3 1
       15 SETTABLEKS                       R3 R2 K3 ["showCompletionDialog"]
       17 NAMECALL                         R0 R0 K5 ["setState"]
       19 CALL                             R0 2 0
       20 RETURN                           R0 0
       21 GETUPVAL                         R1 0
       22 GETTABLEKS                       R0 R1 K0 ["sectionIndex"]
       24 GETUPVAL                         R3 1
       25 GETTABLEKS                       R2 R3 K1 ["sections"]
       27 LENGTH                           R1 R2
       28 JUMPIFNOTLE                      R0 R1 ; [+34]
       30 GETUPVAL                         R1 2
       31 GETTABLEKS                       R0 R1 K6 ["telemetryContext"]
       33 GETUPVAL                         R2 3
       34 DUPTABLE                         R3 K12 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
       35 LOADK                            R4 K13 ["navigation"]
       36 SETTABLEKS                       R4 R3 K7 ["telemetryType"]
       38 LOADK                            R4 K14 ["section"]
       39 SETTABLEKS                       R4 R3 K8 ["telemetrySubtype"]
       41 LOADK                            R4 K15 ["tutorial_section"]
       42 SETTABLEKS                       R4 R3 K9 ["context"]
       44 GETUPVAL                         R5 0
       45 GETTABLEKS                       R4 R5 K0 ["sectionIndex"]
       47 SETTABLEKS                       R4 R3 K10 ["from"]
       49 GETUPVAL                         R6 0
       50 GETTABLEKS                       R5 R6 K0 ["sectionIndex"]
       52 ADDK                             R4 R5 K16 [1]
       53 SETTABLEKS                       R4 R3 K11 ["to"]
       55 NAMECALL                         R0 R0 K17 ["log"]
       57 CALL                             R0 3 0
       58 GETUPVAL                         R0 2
       59 DUPCLOSURE                       R2 K18 [PROTO_24]
       60 NAMECALL                         R0 R0 K5 ["setState"]
       62 CALL                             R0 2 0
       63 RETURN                           R0 0

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
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["telemetryContext"]
        3 GETUPVAL                         R2 1
        4 DUPTABLE                         R3 K6 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
        5 LOADK                            R4 K7 ["navigation"]
        6 SETTABLEKS                       R4 R3 K1 ["telemetryType"]
        8 LOADK                            R4 K8 ["section"]
        9 SETTABLEKS                       R4 R3 K2 ["telemetrySubtype"]
       11 LOADK                            R4 K9 ["tutorial_section"]
       12 SETTABLEKS                       R4 R3 K3 ["context"]
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K10 ["sectionIndex"]
       17 SETTABLEKS                       R4 R3 K4 ["from"]
       19 GETUPVAL                         R6 2
       20 GETTABLEKS                       R5 R6 K10 ["sectionIndex"]
       22 SUBK                             R4 R5 K11 [1]
       23 SETTABLEKS                       R4 R3 K5 ["to"]
       25 NAMECALL                         R0 R0 K12 ["log"]
       27 CALL                             R0 3 0
       28 GETUPVAL                         R0 0
       29 DUPCLOSURE                       R2 K13 [PROTO_26]
       30 NAMECALL                         R0 R0 K14 ["setState"]
       32 CALL                             R0 2 0
       33 RETURN                           R0 0

PROTO_28:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K1 ["state"]
        4 GETTABLEKS                       R3 R1 K2 ["Plugin"]
        6 GETTABLEKS                       R4 R2 K3 ["enabled"]
        8 GETTABLEKS                       R5 R2 K4 ["tutorialData"]
       10 GETUPVAL                         R7 0
       11 GETTABLEKS                       R6 R7 K5 ["provide"]
       13 NEWTABLE                         R7 0 7
       15 GETUPVAL                         R9 1
       16 GETTABLEKS                       R8 R9 K6 ["new"]
       18 MOVE                             R9 R3
       19 CALL                             R8 1 1
       20 GETUPVAL                         R10 2
       21 GETTABLEKS                       R9 R10 K6 ["new"]
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
       59 GETUPVAL                         R14 3
       60 GETTABLEKS                       R13 R14 K25 ["createElement"]
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
      105 GETUPVAL                         R14 3
      106 GETTABLEKS                       R13 R14 K25 ["createElement"]
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
      136 JUMPIFNOT                        R4 ; [+220]
      137 JUMPIFNOT                        R5 ; [+219]
      138 GETUPVAL                         R10 3
      139 GETTABLEKS                       R9 R10 K25 ["createElement"]
      141 GETUPVAL                         R10 6
      142 DUPTABLE                         R11 K46 [{"Id", "Title", "Enabled", "ShouldRestore", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "OnClose", "Widget"}]
      143 LOADK                            R12 K47 ["KnowledgeTutorials"]
      144 SETTABLEKS                       R12 R11 K36 ["Id"]
      146 GETTABLEKS                       R12 R0 K10 ["localization"]
      148 LOADK                            R14 K2 ["Plugin"]
      149 LOADK                            R15 K48 ["Tutorial"]
      150 NAMECALL                         R12 R12 K22 ["getText"]
      152 CALL                             R12 3 1
      153 SETTABLEKS                       R12 R11 K37 ["Title"]
      155 LOADB                            R12 0
      156 GETTABLEKS                       R13 R2 K4 ["tutorialData"]
      158 JUMPIFEQKNIL                     R13 ; [+2]
      160 MOVE                             R12 R4
      161 SETTABLEKS                       R12 R11 K38 ["Enabled"]
      163 LOADB                            R12 0
      164 SETTABLEKS                       R12 R11 K39 ["ShouldRestore"]
      166 GETIMPORT                        R12 K51 [Enum.ZIndexBehavior.Sibling]
      168 SETTABLEKS                       R12 R11 K40 ["ZIndexBehavior"]
      170 GETIMPORT                        R12 K53 [Enum.InitialDockState.Float]
      172 SETTABLEKS                       R12 R11 K41 ["InitialDockState"]
      174 GETIMPORT                        R12 K55 [Vector2.new]
      176 LOADN                            R13 128
      177 LOADN                            R14 32
      178 CALL                             R12 2 1
      179 SETTABLEKS                       R12 R11 K42 ["Size"]
      181 GETIMPORT                        R12 K55 [Vector2.new]
      183 LOADN                            R13 250
      184 LOADN                            R14 144
      185 CALL                             R12 2 1
      186 SETTABLEKS                       R12 R11 K43 ["MinSize"]
      188 NEWCLOSURE                       R12 P7
      189 CAPTURE                          VAL R0
      190 SETTABLEKS                       R12 R11 K44 ["OnClose"]
      192 GETTABLEKS                       R13 R1 K56 ["PluginLoaderContext"]
      194 GETTABLEKS                       R12 R13 K57 ["mainDockWidget"]
      196 SETTABLEKS                       R12 R11 K45 ["Widget"]
      198 DUPTABLE                         R12 K59 [{"FoundationProvider"}]
      199 GETUPVAL                         R14 3
      200 GETTABLEKS                       R13 R14 K25 ["createElement"]
      202 GETUPVAL                         R14 7
      203 DUPTABLE                         R15 K62 [{"device", "onStyleSheetChange"}]
      204 LOADK                            R16 K63 ["Desktop"]
      205 SETTABLEKS                       R16 R15 K60 ["device"]
      207 GETTABLEKS                       R16 R0 K64 ["onFoundationStyleSheetChange"]
      209 SETTABLEKS                       R16 R15 K61 ["onStyleSheetChange"]
      211 DUPTABLE                         R16 K66 [{"Topbar", "Content"}]
      212 GETUPVAL                         R18 3
      213 GETTABLEKS                       R17 R18 K25 ["createElement"]
      215 GETUPVAL                         R18 8
      216 DUPTABLE                         R19 K69 [{"tutorialData", "isTableOfContentsOpen", "onTableOfContentsClicked"}]
      217 SETTABLEKS                       R5 R19 K4 ["tutorialData"]
      219 GETTABLEKS                       R20 R2 K67 ["isTableOfContentsOpen"]
      221 SETTABLEKS                       R20 R19 K67 ["isTableOfContentsOpen"]
      223 NEWCLOSURE                       R20 P8
      224 CAPTURE                          VAL R0
      225 SETTABLEKS                       R20 R19 K68 ["onTableOfContentsClicked"]
      227 CALL                             R17 2 1
      228 SETTABLEKS                       R17 R16 K65 ["Topbar"]
      230 GETUPVAL                         R18 3
      231 GETTABLEKS                       R17 R18 K25 ["createElement"]
      233 GETUPVAL                         R18 9
      234 DUPTABLE                         R19 K71 [{"tag", "Size"}]
      235 LOADK                            R20 K72 ["padding-medium bg-surface-100 anchor-bottom-left position-bottom-left"]
      236 SETTABLEKS                       R20 R19 K70 ["tag"]
      238 GETIMPORT                        R20 K74 [UDim2.new]
      240 LOADN                            R21 1
      241 LOADN                            R22 0
      242 LOADN                            R23 1
      243 LOADN                            R24 224
      244 CALL                             R20 4 1
      245 SETTABLEKS                       R20 R19 K42 ["Size"]
      247 DUPTABLE                         R20 K78 [{"TableOfContents", "TutorialHome", "TutorialSection"}]
      248 GETUPVAL                         R22 3
      249 GETTABLEKS                       R21 R22 K25 ["createElement"]
      251 GETUPVAL                         R22 10
      252 DUPTABLE                         R23 K82 [{"visible", "currentSectionIndex", "tutorialData", "onSectionClicked"}]
      253 GETTABLEKS                       R24 R2 K67 ["isTableOfContentsOpen"]
      255 SETTABLEKS                       R24 R23 K79 ["visible"]
      257 GETTABLEKS                       R24 R2 K83 ["sectionIndex"]
      259 SETTABLEKS                       R24 R23 K80 ["currentSectionIndex"]
      261 SETTABLEKS                       R5 R23 K4 ["tutorialData"]
      263 NEWCLOSURE                       R24 P9
      264 CAPTURE                          VAL R0
      265 CAPTURE                          UPVAL U11
      266 CAPTURE                          VAL R2
      267 SETTABLEKS                       R24 R23 K81 ["onSectionClicked"]
      269 CALL                             R21 2 1
      270 SETTABLEKS                       R21 R20 K75 ["TableOfContents"]
      272 GETUPVAL                         R22 3
      273 GETTABLEKS                       R21 R22 K25 ["createElement"]
      275 GETUPVAL                         R22 12
      276 DUPTABLE                         R23 K86 [{"visible", "tutorialHome", "onStartTutorial"}]
      277 LOADB                            R24 0
      278 GETTABLEKS                       R25 R2 K83 ["sectionIndex"]
      280 JUMPIFNOTEQKN                    R25 K87 [0] ; [+4]
      282 GETTABLEKS                       R25 R2 K67 ["isTableOfContentsOpen"]
      284 NOT                              R24 R25
      285 SETTABLEKS                       R24 R23 K79 ["visible"]
      287 GETTABLEKS                       R24 R5 K88 ["home"]
      289 SETTABLEKS                       R24 R23 K84 ["tutorialHome"]
      291 NEWCLOSURE                       R24 P10
      292 CAPTURE                          VAL R0
      293 CAPTURE                          UPVAL U11
      294 SETTABLEKS                       R24 R23 K85 ["onStartTutorial"]
      296 CALL                             R21 2 1
      297 SETTABLEKS                       R21 R20 K76 ["TutorialHome"]
      299 GETUPVAL                         R22 3
      300 GETTABLEKS                       R21 R22 K25 ["createElement"]
      302 GETUPVAL                         R22 13
      303 DUPTABLE                         R23 K93 [{"visible", "showFinish", "tutorialSection", "onNext", "onPrevious"}]
      304 LOADB                            R24 0
      305 GETTABLEKS                       R25 R2 K83 ["sectionIndex"]
      307 LOADN                            R26 0
      308 JUMPIFNOTLT                      R26 R25 ; [+4]
      310 GETTABLEKS                       R25 R2 K67 ["isTableOfContentsOpen"]
      312 NOT                              R24 R25
      313 SETTABLEKS                       R24 R23 K79 ["visible"]
      315 GETTABLEKS                       R25 R2 K83 ["sectionIndex"]
      317 GETTABLEKS                       R27 R5 K94 ["sections"]
      319 LENGTH                           R26 R27
      320 JUMPIFEQ                         R25 R26 ; [+2]
      322 LOADB                            R24 0 +1
      323 LOADB                            R24 1
      324 SETTABLEKS                       R24 R23 K89 ["showFinish"]
      326 GETTABLEKS                       R25 R5 K94 ["sections"]
      328 GETTABLEKS                       R26 R2 K83 ["sectionIndex"]
      330 GETTABLE                         R24 R25 R26
      331 SETTABLEKS                       R24 R23 K90 ["tutorialSection"]
      333 NEWCLOSURE                       R24 P11
      334 CAPTURE                          VAL R2
      335 CAPTURE                          VAL R5
      336 CAPTURE                          VAL R0
      337 CAPTURE                          UPVAL U11
      338 SETTABLEKS                       R24 R23 K91 ["onNext"]
      340 NEWCLOSURE                       R24 P12
      341 CAPTURE                          VAL R0
      342 CAPTURE                          UPVAL U11
      343 CAPTURE                          VAL R2
      344 SETTABLEKS                       R24 R23 K92 ["onPrevious"]
      346 CALL                             R21 2 1
      347 SETTABLEKS                       R21 R20 K77 ["TutorialSection"]
      349 CALL                             R17 3 1
      350 SETTABLEKS                       R17 R16 K23 ["Content"]
      352 CALL                             R13 3 1
      353 SETTABLEKS                       R13 R12 K58 ["FoundationProvider"]
      355 CALL                             R9 3 1
      356 JUMP                             ; [+1]
      357 LOADNIL                          R9
      358 SETTABLEKS                       R9 R8 K15 ["MainWidget"]
      360 CALL                             R6 2 -1
      361 RETURN                           R6 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["KnowledgeTutorials"]
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
       23 GETTABLEKS                       R5 R0 K8 ["Packages"]
       25 GETTABLEKS                       R4 R5 K10 ["Framework"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Packages"]
       32 GETTABLEKS                       R5 R6 K11 ["Foundation"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K8 ["Packages"]
       39 GETTABLEKS                       R6 R7 K12 ["StudioFoundation"]
       41 CALL                             R5 1 1
       42 GETTABLEKS                       R7 R5 K13 ["Components"]
       44 GETTABLEKS                       R6 R7 K14 ["FoundationProviderAdapter"]
       46 GETIMPORT                        R7 K5 [require]
       48 GETTABLEKS                       R9 R0 K15 ["Bin"]
       50 GETTABLEKS                       R8 R9 K16 ["defineLuaFlags"]
       52 CALL                             R7 1 1
       53 GETTABLEKS                       R8 R7 K17 ["getFFlagKnowledgeTutorialsAvoidHanging"]
       55 CALL                             R8 0 1
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R12 R0 K6 ["Src"]
       60 GETTABLEKS                       R11 R12 K18 ["Util"]
       62 GETTABLEKS                       R10 R11 K19 ["Services"]
       64 CALL                             R9 1 1
       65 GETTABLEKS                       R10 R9 K20 ["ServerStorage"]
       67 GETTABLEKS                       R12 R3 K21 ["UI"]
       69 GETTABLEKS                       R11 R12 K22 ["DockWidget"]
       71 GETTABLEKS                       R13 R3 K21 ["UI"]
       73 GETTABLEKS                       R12 R13 K23 ["Dialog"]
       75 GETTABLEKS                       R13 R4 K24 ["View"]
       77 GETTABLEKS                       R14 R3 K25 ["ContextServices"]
       79 GETTABLEKS                       R15 R14 K26 ["Plugin"]
       81 GETTABLEKS                       R16 R14 K27 ["Mouse"]
       83 GETTABLEKS                       R19 R3 K28 ["Style"]
       85 GETTABLEKS                       R18 R19 K29 ["Themes"]
       87 GETTABLEKS                       R17 R18 K30 ["StudioTheme"]
       89 GETTABLEKS                       R19 R3 K31 ["Styling"]
       91 GETTABLEKS                       R18 R19 K32 ["registerPluginStyles"]
       93 GETTABLEKS                       R22 R0 K6 ["Src"]
       95 GETTABLEKS                       R21 R22 K33 ["Resources"]
       97 GETTABLEKS                       R20 R21 K34 ["Localization"]
       99 GETTABLEKS                       R19 R20 K35 ["SourceStrings"]
      101 GETTABLEKS                       R23 R0 K6 ["Src"]
      103 GETTABLEKS                       R22 R23 K33 ["Resources"]
      105 GETTABLEKS                       R21 R22 K34 ["Localization"]
      107 GETTABLEKS                       R20 R21 K36 ["LocalizedStrings"]
      109 GETIMPORT                        R21 K5 [require]
      111 GETTABLEKS                       R25 R0 K6 ["Src"]
      113 GETTABLEKS                       R24 R25 K18 ["Util"]
      115 GETTABLEKS                       R23 R24 K37 ["Telemetry"]
      117 GETTABLEKS                       R22 R23 K38 ["TelemetryProtocol"]
      119 CALL                             R21 1 1
      120 GETIMPORT                        R22 K5 [require]
      122 GETTABLEKS                       R26 R0 K6 ["Src"]
      124 GETTABLEKS                       R25 R26 K18 ["Util"]
      126 GETTABLEKS                       R24 R25 K37 ["Telemetry"]
      128 GETTABLEKS                       R23 R24 K39 ["TelemetryContext"]
      130 CALL                             R22 1 1
      131 GETIMPORT                        R23 K5 [require]
      133 GETTABLEKS                       R27 R0 K6 ["Src"]
      135 GETTABLEKS                       R26 R27 K18 ["Util"]
      137 GETTABLEKS                       R25 R26 K37 ["Telemetry"]
      139 GETTABLEKS                       R24 R25 K40 ["KnowledgeTutorialsTelemetryEvent"]
      141 CALL                             R23 1 1
      142 GETTABLEKS                       R25 R0 K6 ["Src"]
      144 GETTABLEKS                       R24 R25 K13 ["Components"]
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
      178 GETTABLEKS                       R34 R0 K6 ["Src"]
      180 GETTABLEKS                       R33 R34 K18 ["Util"]
      182 GETTABLEKS                       R32 R33 K47 ["getTutorialData"]
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
