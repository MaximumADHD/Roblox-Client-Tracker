PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["tutorialData"]
  JUMPIF R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["loadTutorialData"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_2:
  DUPTABLE R2 K6 [{"enabled", "showCompletionDialog", "showAvailableDialog", "isTableOfContentsOpen", "tutorialData", "sectionIndex"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["showCompletionDialog"]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["showAvailableDialog"]
  LOADB R3 0
  SETTABLEKS R3 R2 K3 ["isTableOfContentsOpen"]
  LOADNIL R3
  SETTABLEKS R3 R2 K4 ["tutorialData"]
  LOADN R3 0
  SETTABLEKS R3 R2 K5 ["sectionIndex"]
  SETTABLEKS R2 R0 K7 ["state"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K8 ["DescendantAdded"]
  NEWCLOSURE R4 P0
  CAPTURE VAL R0
  NAMECALL R2 R2 K9 ["Connect"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K10 ["tutorialAddedConnection"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K11 ["Localization"]
  GETTABLEKS R2 R3 K12 ["new"]
  DUPTABLE R3 K16 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K13 ["stringResourceTable"]
  GETUPVAL R4 3
  SETTABLEKS R4 R3 K14 ["translationResourceTable"]
  LOADK R4 K17 ["KnowledgeTutorials"]
  SETTABLEKS R4 R3 K15 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K18 ["localization"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K19 ["Analytics"]
  GETTABLEKS R2 R3 K12 ["new"]
  DUPCLOSURE R3 K20 [PROTO_1]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K21 ["analytics"]
  GETUPVAL R3 4
  GETTABLEKS R2 R3 K12 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K22 ["telemetry"]
  GETUPVAL R3 5
  GETTABLEKS R2 R3 K12 ["new"]
  GETTABLEKS R3 R0 K22 ["telemetry"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K23 ["telemetryContext"]
  GETUPVAL R3 6
  GETTABLEKS R2 R3 K12 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K24 ["DEPRECATED_stylizer"]
  GETUPVAL R2 7
  JUMPIFNOT R2 [+22]
  GETUPVAL R4 8
  GETTABLEKS R3 R4 K25 ["Util"]
  GETTABLEKS R2 R3 K26 ["createFoundationDesignBinding"]
  CALL R2 0 2
  SETTABLEKS R3 R0 K27 ["onFoundationStyleSheetChange"]
  GETUPVAL R4 9
  GETTABLEKS R5 R1 K28 ["Plugin"]
  LOADNIL R6
  LOADNIL R7
  NEWTABLE R8 0 1
  MOVE R9 R2
  SETLIST R8 R9 1 [1]
  CALL R4 4 1
  SETTABLEKS R4 R0 K29 ["design"]
  JUMP [+6]
  GETUPVAL R2 9
  GETTABLEKS R3 R1 K28 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K29 ["design"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K30 ["Design"]
  GETTABLEKS R2 R3 K12 ["new"]
  GETTABLEKS R3 R0 K29 ["design"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K31 ["designContext"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  CALL R1 0 1
  JUMPIFNOT R1 [+15]
  GETTABLEKS R2 R0 K0 ["telemetryContext"]
  MOVE R4 R1
  NAMECALL R2 R2 K1 ["setTutorialData"]
  CALL R2 2 0
  DUPTABLE R4 K4 [{"tutorialData", "showAvailableDialog"}]
  SETTABLEKS R1 R4 K2 ["tutorialData"]
  LOADB R5 1
  SETTABLEKS R5 R4 K3 ["showAvailableDialog"]
  NAMECALL R2 R0 K5 ["setState"]
  CALL R2 2 0
  RETURN R0 0

PROTO_4:
  NAMECALL R1 R0 K0 ["loadTutorialData"]
  CALL R1 1 0
  RETURN R0 0

PROTO_5:
  GETTABLEKS R1 R0 K0 ["tutorialAddedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["telemetryContext"]
  GETUPVAL R3 0
  DUPTABLE R4 K5 [{"telemetryType", "telemetrySubtype", "context", "action"}]
  LOADK R5 K6 ["interaction"]
  SETTABLEKS R5 R4 K1 ["telemetryType"]
  LOADK R5 K7 ["click"]
  SETTABLEKS R5 R4 K2 ["telemetrySubtype"]
  LOADK R5 K8 ["tutorial_popup"]
  SETTABLEKS R5 R4 K3 ["context"]
  LOADK R5 K9 ["close"]
  SETTABLEKS R5 R4 K4 ["action"]
  NAMECALL R1 R1 K10 ["log"]
  CALL R1 3 0
  DUPTABLE R3 K13 [{"enabled", "showAvailableDialog"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["enabled"]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["showAvailableDialog"]
  NAMECALL R1 R0 K14 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["telemetryContext"]
  GETUPVAL R3 0
  DUPTABLE R4 K5 [{"telemetryType", "telemetrySubtype", "context", "action"}]
  LOADK R5 K6 ["interaction"]
  SETTABLEKS R5 R4 K1 ["telemetryType"]
  LOADK R5 K7 ["click"]
  SETTABLEKS R5 R4 K2 ["telemetrySubtype"]
  LOADK R5 K8 ["tutorial_completion_popup"]
  SETTABLEKS R5 R4 K3 ["context"]
  LOADK R5 K9 ["close"]
  SETTABLEKS R5 R4 K4 ["action"]
  NAMECALL R1 R1 K10 ["log"]
  CALL R1 3 0
  DUPTABLE R3 K13 [{"enabled", "showCompletionDialog"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K11 ["enabled"]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["showCompletionDialog"]
  NAMECALL R1 R0 K14 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_8:
  GETTABLEKS R1 R0 K0 ["telemetryContext"]
  GETUPVAL R3 0
  DUPTABLE R4 K5 [{"telemetryType", "telemetrySubtype", "context", "action"}]
  LOADK R5 K6 ["interaction"]
  SETTABLEKS R5 R4 K1 ["telemetryType"]
  LOADK R5 K7 ["click"]
  SETTABLEKS R5 R4 K2 ["telemetrySubtype"]
  LOADK R5 K8 ["tutorial_popup"]
  SETTABLEKS R5 R4 K3 ["context"]
  LOADK R5 K9 ["start"]
  SETTABLEKS R5 R4 K4 ["action"]
  NAMECALL R1 R1 K10 ["log"]
  CALL R1 3 0
  DUPTABLE R3 K14 [{"enabled", "showAvailableDialog", "sectionIndex"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K11 ["enabled"]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["showAvailableDialog"]
  LOADN R4 0
  SETTABLEKS R4 R3 K13 ["sectionIndex"]
  NAMECALL R1 R0 K15 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["telemetryContext"]
  GETUPVAL R3 0
  DUPTABLE R4 K5 [{"telemetryType", "telemetrySubtype", "context", "action"}]
  LOADK R5 K6 ["interaction"]
  SETTABLEKS R5 R4 K1 ["telemetryType"]
  LOADK R5 K7 ["click"]
  SETTABLEKS R5 R4 K2 ["telemetrySubtype"]
  LOADK R5 K8 ["tutorial_completion_popup"]
  SETTABLEKS R5 R4 K3 ["context"]
  LOADK R5 K9 ["restart"]
  SETTABLEKS R5 R4 K4 ["action"]
  NAMECALL R1 R1 K10 ["log"]
  CALL R1 3 0
  DUPTABLE R3 K14 [{"enabled", "showCompletionDialog", "sectionIndex"}]
  LOADB R4 1
  SETTABLEKS R4 R3 K11 ["enabled"]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["showCompletionDialog"]
  LOADN R4 0
  SETTABLEKS R4 R3 K13 ["sectionIndex"]
  NAMECALL R1 R0 K15 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_10:
  GETTABLEKS R2 R0 K0 ["telemetryContext"]
  GETUPVAL R4 0
  DUPTABLE R5 K5 [{"telemetryType", "telemetrySubtype", "context", "rating"}]
  LOADK R6 K4 ["rating"]
  SETTABLEKS R6 R5 K1 ["telemetryType"]
  LOADK R6 K6 ["tutorial"]
  SETTABLEKS R6 R5 K2 ["telemetrySubtype"]
  LOADK R6 K7 ["tutorial_completion"]
  SETTABLEKS R6 R5 K3 ["context"]
  SETTABLEKS R1 R5 K4 ["rating"]
  NAMECALL R2 R2 K8 ["log"]
  CALL R2 3 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["createElement"]
  GETUPVAL R4 1
  DUPTABLE R5 K10 [{"Enabled", "Modal", "Title", "Size", "MinSize", "Resizable", "ZIndexBehavior", "CreateWidgetImmediately", "OnClose"}]
  LOADB R6 1
  SETTABLEKS R6 R5 K1 ["Enabled"]
  LOADB R6 1
  SETTABLEKS R6 R5 K2 ["Modal"]
  GETTABLEKS R6 R1 K11 ["title"]
  SETTABLEKS R6 R5 K3 ["Title"]
  GETTABLEKS R6 R1 K12 ["size"]
  JUMPIF R6 [+5]
  GETIMPORT R6 K15 [Vector2.new]
  LOADN R7 244
  LOADN R8 250
  CALL R6 2 1
  SETTABLEKS R6 R5 K4 ["Size"]
  GETTABLEKS R6 R1 K16 ["minSize"]
  JUMPIF R6 [+5]
  GETIMPORT R6 K15 [Vector2.new]
  LOADN R7 244
  LOADN R8 250
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["MinSize"]
  LOADB R6 0
  SETTABLEKS R6 R5 K6 ["Resizable"]
  GETIMPORT R6 K19 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R6 R5 K7 ["ZIndexBehavior"]
  LOADB R6 1
  SETTABLEKS R6 R5 K8 ["CreateWidgetImmediately"]
  GETTABLEKS R6 R1 K20 ["onClose"]
  SETTABLEKS R6 R5 K9 ["OnClose"]
  DUPTABLE R6 K22 [{"FoundationProvider"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K25 [{"device", "onStyleSheetChange"}]
  LOADK R10 K26 ["Desktop"]
  SETTABLEKS R10 R9 K23 ["device"]
  GETTABLEKS R10 R0 K27 ["onFoundationStyleSheetChange"]
  SETTABLEKS R10 R9 K24 ["onStyleSheetChange"]
  MOVE R10 R2
  CALL R7 3 1
  SETTABLEKS R7 R6 K21 ["FoundationProvider"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_12:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onCloseAvailableDialog"]
  CALL R0 1 0
  RETURN R0 0

PROTO_13:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onCloseAvailableDialog"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onStartTutorial"]
  CALL R0 1 0
  RETURN R0 0

PROTO_15:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onCloseCompletionDialog"]
  CALL R0 1 0
  RETURN R0 0

PROTO_16:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onCloseCompletionDialog"]
  CALL R0 1 0
  RETURN R0 0

PROTO_17:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["onRestartTutorial"]
  CALL R0 1 0
  RETURN R0 0

PROTO_18:
  GETUPVAL R1 0
  MOVE R3 R0
  NAMECALL R1 R1 K0 ["onRateTutorial"]
  CALL R1 2 0
  RETURN R0 0

PROTO_19:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_20:
  DUPTABLE R1 K1 [{"isTableOfContentsOpen"}]
  GETTABLEKS R3 R0 K0 ["isTableOfContentsOpen"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["isTableOfContentsOpen"]
  RETURN R1 1

PROTO_21:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_20]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_22:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["telemetryContext"]
  GETUPVAL R3 1
  DUPTABLE R4 K6 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
  LOADK R5 K7 ["navigation"]
  SETTABLEKS R5 R4 K1 ["telemetryType"]
  LOADK R5 K8 ["section"]
  SETTABLEKS R5 R4 K2 ["telemetrySubtype"]
  LOADK R5 K9 ["table_of_contents"]
  SETTABLEKS R5 R4 K3 ["context"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["sectionIndex"]
  SETTABLEKS R5 R4 K4 ["from"]
  SETTABLEKS R0 R4 K5 ["to"]
  NAMECALL R1 R1 K11 ["log"]
  CALL R1 3 0
  GETUPVAL R1 0
  DUPTABLE R3 K13 [{"sectionIndex", "isTableOfContentsOpen"}]
  SETTABLEKS R0 R3 K10 ["sectionIndex"]
  LOADB R4 0
  SETTABLEKS R4 R3 K12 ["isTableOfContentsOpen"]
  NAMECALL R1 R1 K14 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_23:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["telemetryContext"]
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
  LOADK R4 K7 ["navigation"]
  SETTABLEKS R4 R3 K1 ["telemetryType"]
  LOADK R4 K8 ["section"]
  SETTABLEKS R4 R3 K2 ["telemetrySubtype"]
  LOADK R4 K9 ["tutorial_home"]
  SETTABLEKS R4 R3 K3 ["context"]
  LOADN R4 0
  SETTABLEKS R4 R3 K4 ["from"]
  LOADN R4 1
  SETTABLEKS R4 R3 K5 ["to"]
  NAMECALL R0 R0 K10 ["log"]
  CALL R0 3 0
  GETUPVAL R0 0
  DUPTABLE R2 K12 [{"sectionIndex"}]
  LOADN R3 1
  SETTABLEKS R3 R2 K11 ["sectionIndex"]
  NAMECALL R0 R0 K13 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_24:
  GETTABLEKS R1 R0 K0 ["tutorialData"]
  JUMPIFNOT R1 [+17]
  DUPTABLE R1 K2 [{"sectionIndex"}]
  GETTABLEKS R5 R0 K0 ["tutorialData"]
  GETTABLEKS R4 R5 K3 ["sections"]
  LENGTH R3 R4
  GETTABLEKS R5 R0 K1 ["sectionIndex"]
  ADDK R4 R5 K4 [1]
  FASTCALL2 MATH_MIN R3 R4 [+3]
  GETIMPORT R2 K7 [math.min]
  CALL R2 2 1
  SETTABLEKS R2 R1 K1 ["sectionIndex"]
  RETURN R1 1
  DUPTABLE R1 K2 [{"sectionIndex"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K1 ["sectionIndex"]
  RETURN R1 1

PROTO_25:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sectionIndex"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["sections"]
  LENGTH R1 R2
  JUMPIFNOTEQ R0 R1 [+13]
  GETUPVAL R0 2
  DUPTABLE R2 K4 [{"enabled", "showCompletionDialog"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["enabled"]
  LOADB R3 1
  SETTABLEKS R3 R2 K3 ["showCompletionDialog"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["sectionIndex"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["sections"]
  LENGTH R1 R2
  JUMPIFNOTLE R0 R1 [+34]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K6 ["telemetryContext"]
  GETUPVAL R2 3
  DUPTABLE R3 K12 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
  LOADK R4 K13 ["navigation"]
  SETTABLEKS R4 R3 K7 ["telemetryType"]
  LOADK R4 K14 ["section"]
  SETTABLEKS R4 R3 K8 ["telemetrySubtype"]
  LOADK R4 K15 ["tutorial_section"]
  SETTABLEKS R4 R3 K9 ["context"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["sectionIndex"]
  SETTABLEKS R4 R3 K10 ["from"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["sectionIndex"]
  ADDK R4 R5 K16 [1]
  SETTABLEKS R4 R3 K11 ["to"]
  NAMECALL R0 R0 K17 ["log"]
  CALL R0 3 0
  GETUPVAL R0 2
  DUPCLOSURE R2 K18 [PROTO_24]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_26:
  DUPTABLE R1 K1 [{"sectionIndex"}]
  LOADN R3 0
  GETTABLEKS R5 R0 K0 ["sectionIndex"]
  SUBK R4 R5 K2 [1]
  FASTCALL2 MATH_MAX R3 R4 [+3]
  GETIMPORT R2 K5 [math.max]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["sectionIndex"]
  RETURN R1 1

PROTO_27:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["telemetryContext"]
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"telemetryType", "telemetrySubtype", "context", "from", "to"}]
  LOADK R4 K7 ["navigation"]
  SETTABLEKS R4 R3 K1 ["telemetryType"]
  LOADK R4 K8 ["section"]
  SETTABLEKS R4 R3 K2 ["telemetrySubtype"]
  LOADK R4 K9 ["tutorial_section"]
  SETTABLEKS R4 R3 K3 ["context"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K10 ["sectionIndex"]
  SETTABLEKS R4 R3 K4 ["from"]
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K10 ["sectionIndex"]
  SUBK R4 R5 K11 [1]
  SETTABLEKS R4 R3 K5 ["to"]
  NAMECALL R0 R0 K12 ["log"]
  CALL R0 3 0
  GETUPVAL R0 0
  DUPCLOSURE R2 K13 [PROTO_26]
  NAMECALL R0 R0 K14 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_28:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETTABLEKS R5 R2 K4 ["tutorialData"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["provide"]
  NEWTABLE R7 0 7
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["new"]
  MOVE R9 R3
  CALL R8 1 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["new"]
  NAMECALL R10 R3 K7 ["getMouse"]
  CALL R10 1 -1
  CALL R9 -1 1
  GETTABLEKS R10 R0 K8 ["designContext"]
  GETTABLEKS R11 R0 K9 ["DEPRECATED_stylizer"]
  GETTABLEKS R12 R0 K10 ["localization"]
  GETTABLEKS R13 R0 K11 ["analytics"]
  GETTABLEKS R14 R0 K12 ["telemetryContext"]
  SETLIST R7 R8 7 [1]
  DUPTABLE R8 K16 [{"AvailableDialog", "CompletionDialog", "MainWidget"}]
  JUMPIFNOT R5 [+42]
  GETTABLEKS R10 R2 K17 ["showAvailableDialog"]
  JUMPIFNOT R10 [+39]
  DUPTABLE R11 K20 [{"title", "onClose"}]
  GETTABLEKS R12 R0 K10 ["localization"]
  LOADK R14 K2 ["Plugin"]
  LOADK R15 K21 ["TutorialAvailable"]
  NAMECALL R12 R12 K22 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K18 ["title"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K19 ["onClose"]
  DUPTABLE R12 K24 [{"Content"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K25 ["createElement"]
  GETUPVAL R14 4
  DUPTABLE R15 K28 [{"tutorialInfo", "onClose", "onStart"}]
  GETTABLEKS R16 R5 K29 ["info"]
  SETTABLEKS R16 R15 K26 ["tutorialInfo"]
  NEWCLOSURE R16 P1
  CAPTURE VAL R0
  SETTABLEKS R16 R15 K19 ["onClose"]
  NEWCLOSURE R16 P2
  CAPTURE VAL R0
  SETTABLEKS R16 R15 K27 ["onStart"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K23 ["Content"]
  NAMECALL R9 R0 K30 ["createDialog"]
  CALL R9 3 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K13 ["AvailableDialog"]
  JUMPIFNOT R5 [+46]
  GETTABLEKS R10 R2 K31 ["showCompletionDialog"]
  JUMPIFNOT R10 [+43]
  DUPTABLE R11 K20 [{"title", "onClose"}]
  GETTABLEKS R12 R0 K10 ["localization"]
  LOADK R14 K2 ["Plugin"]
  LOADK R15 K32 ["TutorialComplete"]
  NAMECALL R12 R12 K22 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K18 ["title"]
  NEWCLOSURE R12 P3
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K19 ["onClose"]
  DUPTABLE R12 K24 [{"Content"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K25 ["createElement"]
  GETUPVAL R14 5
  DUPTABLE R15 K35 [{"tutorialInfo", "onClose", "onRestart", "onRate"}]
  GETTABLEKS R16 R5 K29 ["info"]
  SETTABLEKS R16 R15 K26 ["tutorialInfo"]
  NEWCLOSURE R16 P4
  CAPTURE VAL R0
  SETTABLEKS R16 R15 K19 ["onClose"]
  NEWCLOSURE R16 P5
  CAPTURE VAL R0
  SETTABLEKS R16 R15 K33 ["onRestart"]
  NEWCLOSURE R16 P6
  CAPTURE VAL R0
  SETTABLEKS R16 R15 K34 ["onRate"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K23 ["Content"]
  NAMECALL R9 R0 K30 ["createDialog"]
  CALL R9 3 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K14 ["CompletionDialog"]
  JUMPIFNOT R4 [+220]
  JUMPIFNOT R5 [+219]
  GETUPVAL R10 3
  GETTABLEKS R9 R10 K25 ["createElement"]
  GETUPVAL R10 6
  DUPTABLE R11 K46 [{"Id", "Title", "Enabled", "ShouldRestore", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "OnClose", "Widget"}]
  LOADK R12 K47 ["KnowledgeTutorials"]
  SETTABLEKS R12 R11 K36 ["Id"]
  GETTABLEKS R12 R0 K10 ["localization"]
  LOADK R14 K2 ["Plugin"]
  LOADK R15 K48 ["Tutorial"]
  NAMECALL R12 R12 K22 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K37 ["Title"]
  LOADB R12 0
  GETTABLEKS R13 R2 K4 ["tutorialData"]
  JUMPIFEQKNIL R13 [+2]
  MOVE R12 R4
  SETTABLEKS R12 R11 K38 ["Enabled"]
  LOADB R12 0
  SETTABLEKS R12 R11 K39 ["ShouldRestore"]
  GETIMPORT R12 K51 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K40 ["ZIndexBehavior"]
  GETIMPORT R12 K53 [Enum.InitialDockState.Float]
  SETTABLEKS R12 R11 K41 ["InitialDockState"]
  GETIMPORT R12 K55 [Vector2.new]
  LOADN R13 128
  LOADN R14 32
  CALL R12 2 1
  SETTABLEKS R12 R11 K42 ["Size"]
  GETIMPORT R12 K55 [Vector2.new]
  LOADN R13 250
  LOADN R14 144
  CALL R12 2 1
  SETTABLEKS R12 R11 K43 ["MinSize"]
  NEWCLOSURE R12 P7
  CAPTURE VAL R0
  SETTABLEKS R12 R11 K44 ["OnClose"]
  GETTABLEKS R13 R1 K56 ["PluginLoaderContext"]
  GETTABLEKS R12 R13 K57 ["mainDockWidget"]
  SETTABLEKS R12 R11 K45 ["Widget"]
  DUPTABLE R12 K59 [{"FoundationProvider"}]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K25 ["createElement"]
  GETUPVAL R14 7
  DUPTABLE R15 K62 [{"device", "onStyleSheetChange"}]
  LOADK R16 K63 ["Desktop"]
  SETTABLEKS R16 R15 K60 ["device"]
  GETTABLEKS R16 R0 K64 ["onFoundationStyleSheetChange"]
  SETTABLEKS R16 R15 K61 ["onStyleSheetChange"]
  DUPTABLE R16 K66 [{"Topbar", "Content"}]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K25 ["createElement"]
  GETUPVAL R18 8
  DUPTABLE R19 K69 [{"tutorialData", "isTableOfContentsOpen", "onTableOfContentsClicked"}]
  SETTABLEKS R5 R19 K4 ["tutorialData"]
  GETTABLEKS R20 R2 K67 ["isTableOfContentsOpen"]
  SETTABLEKS R20 R19 K67 ["isTableOfContentsOpen"]
  NEWCLOSURE R20 P8
  CAPTURE VAL R0
  SETTABLEKS R20 R19 K68 ["onTableOfContentsClicked"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K65 ["Topbar"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K25 ["createElement"]
  GETUPVAL R18 9
  DUPTABLE R19 K71 [{"tag", "Size"}]
  LOADK R20 K72 ["padding-medium bg-surface-100 anchor-bottom-left position-bottom-left"]
  SETTABLEKS R20 R19 K70 ["tag"]
  GETIMPORT R20 K74 [UDim2.new]
  LOADN R21 1
  LOADN R22 0
  LOADN R23 1
  LOADN R24 224
  CALL R20 4 1
  SETTABLEKS R20 R19 K42 ["Size"]
  DUPTABLE R20 K78 [{"TableOfContents", "TutorialHome", "TutorialSection"}]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K25 ["createElement"]
  GETUPVAL R22 10
  DUPTABLE R23 K82 [{"visible", "currentSectionIndex", "tutorialData", "onSectionClicked"}]
  GETTABLEKS R24 R2 K67 ["isTableOfContentsOpen"]
  SETTABLEKS R24 R23 K79 ["visible"]
  GETTABLEKS R24 R2 K83 ["sectionIndex"]
  SETTABLEKS R24 R23 K80 ["currentSectionIndex"]
  SETTABLEKS R5 R23 K4 ["tutorialData"]
  NEWCLOSURE R24 P9
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  CAPTURE VAL R2
  SETTABLEKS R24 R23 K81 ["onSectionClicked"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K75 ["TableOfContents"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K25 ["createElement"]
  GETUPVAL R22 12
  DUPTABLE R23 K86 [{"visible", "tutorialHome", "onStartTutorial"}]
  LOADB R24 0
  GETTABLEKS R25 R2 K83 ["sectionIndex"]
  JUMPIFNOTEQKN R25 K87 [0] [+4]
  GETTABLEKS R25 R2 K67 ["isTableOfContentsOpen"]
  NOT R24 R25
  SETTABLEKS R24 R23 K79 ["visible"]
  GETTABLEKS R24 R5 K88 ["home"]
  SETTABLEKS R24 R23 K84 ["tutorialHome"]
  NEWCLOSURE R24 P10
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  SETTABLEKS R24 R23 K85 ["onStartTutorial"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K76 ["TutorialHome"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K25 ["createElement"]
  GETUPVAL R22 13
  DUPTABLE R23 K93 [{"visible", "showFinish", "tutorialSection", "onNext", "onPrevious"}]
  LOADB R24 0
  GETTABLEKS R25 R2 K83 ["sectionIndex"]
  LOADN R26 0
  JUMPIFNOTLT R26 R25 [+4]
  GETTABLEKS R25 R2 K67 ["isTableOfContentsOpen"]
  NOT R24 R25
  SETTABLEKS R24 R23 K79 ["visible"]
  GETTABLEKS R25 R2 K83 ["sectionIndex"]
  GETTABLEKS R27 R5 K94 ["sections"]
  LENGTH R26 R27
  JUMPIFEQ R25 R26 [+2]
  LOADB R24 0 +1
  LOADB R24 1
  SETTABLEKS R24 R23 K89 ["showFinish"]
  GETTABLEKS R25 R5 K94 ["sections"]
  GETTABLEKS R26 R2 K83 ["sectionIndex"]
  GETTABLE R24 R25 R26
  SETTABLEKS R24 R23 K90 ["tutorialSection"]
  NEWCLOSURE R24 P11
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  SETTABLEKS R24 R23 K91 ["onNext"]
  NEWCLOSURE R24 P12
  CAPTURE VAL R0
  CAPTURE UPVAL U11
  CAPTURE VAL R2
  SETTABLEKS R24 R23 K92 ["onPrevious"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K77 ["TutorialSection"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K23 ["Content"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K58 ["FoundationProvider"]
  CALL R9 3 1
  JUMP [+1]
  LOADNIL R9
  SETTABLEKS R9 R8 K15 ["MainWidget"]
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Packages"]
  GETTABLEKS R3 R4 K9 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Packages"]
  GETTABLEKS R4 R5 K10 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Packages"]
  GETTABLEKS R5 R6 K11 ["Foundation"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K8 ["Packages"]
  GETTABLEKS R6 R7 K12 ["StudioFoundation"]
  CALL R5 1 1
  GETTABLEKS R7 R5 K13 ["Components"]
  GETTABLEKS R6 R7 K14 ["FoundationProviderAdapter"]
  GETTABLEKS R8 R5 K15 ["SharedFlags"]
  GETTABLEKS R7 R8 K16 ["getFFlagStudioFoundationPluginMigration"]
  CALL R7 0 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R11 R0 K6 ["Src"]
  GETTABLEKS R10 R11 K17 ["Util"]
  GETTABLEKS R9 R10 K18 ["Services"]
  CALL R8 1 1
  GETTABLEKS R9 R8 K19 ["ServerStorage"]
  GETTABLEKS R11 R3 K20 ["UI"]
  GETTABLEKS R10 R11 K21 ["DockWidget"]
  GETTABLEKS R12 R3 K20 ["UI"]
  GETTABLEKS R11 R12 K22 ["Dialog"]
  GETTABLEKS R12 R4 K23 ["View"]
  GETTABLEKS R13 R3 K24 ["ContextServices"]
  GETTABLEKS R14 R13 K25 ["Plugin"]
  GETTABLEKS R15 R13 K26 ["Mouse"]
  GETTABLEKS R18 R3 K27 ["Style"]
  GETTABLEKS R17 R18 K28 ["Themes"]
  GETTABLEKS R16 R17 K29 ["StudioTheme"]
  GETTABLEKS R18 R3 K30 ["Styling"]
  GETTABLEKS R17 R18 K31 ["registerPluginStyles"]
  GETTABLEKS R21 R0 K6 ["Src"]
  GETTABLEKS R20 R21 K32 ["Resources"]
  GETTABLEKS R19 R20 K33 ["Localization"]
  GETTABLEKS R18 R19 K34 ["SourceStrings"]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K32 ["Resources"]
  GETTABLEKS R20 R21 K33 ["Localization"]
  GETTABLEKS R19 R20 K35 ["LocalizedStrings"]
  GETIMPORT R20 K5 [require]
  GETTABLEKS R24 R0 K6 ["Src"]
  GETTABLEKS R23 R24 K17 ["Util"]
  GETTABLEKS R22 R23 K36 ["Telemetry"]
  GETTABLEKS R21 R22 K37 ["TelemetryProtocol"]
  CALL R20 1 1
  GETIMPORT R21 K5 [require]
  GETTABLEKS R25 R0 K6 ["Src"]
  GETTABLEKS R24 R25 K17 ["Util"]
  GETTABLEKS R23 R24 K36 ["Telemetry"]
  GETTABLEKS R22 R23 K38 ["TelemetryContext"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R26 R0 K6 ["Src"]
  GETTABLEKS R25 R26 K17 ["Util"]
  GETTABLEKS R24 R25 K36 ["Telemetry"]
  GETTABLEKS R23 R24 K39 ["KnowledgeTutorialsTelemetryEvent"]
  CALL R22 1 1
  GETTABLEKS R24 R0 K6 ["Src"]
  GETTABLEKS R23 R24 K13 ["Components"]
  GETIMPORT R24 K5 [require]
  GETTABLEKS R25 R23 K40 ["TutorialAvailableDialog"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R26 R23 K41 ["TutorialCompletionDialog"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R27 R23 K42 ["Topbar"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R28 R23 K43 ["TableOfContents"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R29 R23 K44 ["TutorialHome"]
  CALL R28 1 1
  GETIMPORT R29 K5 [require]
  GETTABLEKS R30 R23 K45 ["TutorialSection"]
  CALL R29 1 1
  GETIMPORT R30 K5 [require]
  GETTABLEKS R33 R0 K6 ["Src"]
  GETTABLEKS R32 R33 K17 ["Util"]
  GETTABLEKS R31 R32 K46 ["getTutorialData"]
  CALL R30 1 1
  GETTABLEKS R31 R2 K47 ["PureComponent"]
  LOADK R33 K48 ["MainPlugin"]
  NAMECALL R31 R31 K49 ["extend"]
  CALL R31 2 1
  DUPCLOSURE R32 K50 [PROTO_2]
  CAPTURE VAL R9
  CAPTURE VAL R13
  CAPTURE VAL R18
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R16
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R17
  SETTABLEKS R32 R31 K51 ["init"]
  DUPCLOSURE R32 K52 [PROTO_3]
  CAPTURE VAL R30
  SETTABLEKS R32 R31 K53 ["loadTutorialData"]
  DUPCLOSURE R32 K54 [PROTO_4]
  SETTABLEKS R32 R31 K55 ["didMount"]
  DUPCLOSURE R32 K56 [PROTO_5]
  SETTABLEKS R32 R31 K57 ["willUnmount"]
  DUPCLOSURE R32 K58 [PROTO_6]
  CAPTURE VAL R22
  SETTABLEKS R32 R31 K59 ["onCloseAvailableDialog"]
  DUPCLOSURE R32 K60 [PROTO_7]
  CAPTURE VAL R22
  SETTABLEKS R32 R31 K61 ["onCloseCompletionDialog"]
  DUPCLOSURE R32 K62 [PROTO_8]
  CAPTURE VAL R22
  SETTABLEKS R32 R31 K63 ["onStartTutorial"]
  DUPCLOSURE R32 K64 [PROTO_9]
  CAPTURE VAL R22
  SETTABLEKS R32 R31 K65 ["onRestartTutorial"]
  DUPCLOSURE R32 K66 [PROTO_10]
  CAPTURE VAL R22
  SETTABLEKS R32 R31 K67 ["onRateTutorial"]
  DUPCLOSURE R32 K68 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R6
  SETTABLEKS R32 R31 K69 ["createDialog"]
  DUPCLOSURE R32 K70 [PROTO_28]
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R2
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R10
  CAPTURE VAL R6
  CAPTURE VAL R26
  CAPTURE VAL R12
  CAPTURE VAL R27
  CAPTURE VAL R22
  CAPTURE VAL R28
  CAPTURE VAL R29
  SETTABLEKS R32 R31 K71 ["render"]
  RETURN R31 1
