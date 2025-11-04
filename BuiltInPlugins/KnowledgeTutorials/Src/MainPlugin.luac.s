PROTO_0:
  GETUPVAL R1 0
  JUMPIFNOT R1 [+13]
  LOADK R3 K0 ["IntValue"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 1
  JUMPIFNOT R1 [+7]
  GETIMPORT R1 K4 [string.find]
  GETTABLEKS R2 R0 K5 ["Name"]
  LOADK R3 K6 ["%.tutorial$"]
  CALL R1 2 1
  JUMPIF R1 [+1]
  RETURN R0 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K7 ["state"]
  GETTABLEKS R1 R2 K8 ["tutorialData"]
  JUMPIF R1 [+4]
  GETUPVAL R1 1
  NAMECALL R1 R1 K9 ["loadTutorialData"]
  CALL R1 1 0
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
  JUMPIFNOT R3 [+4]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K8 ["ChildAdded"]
  JUMP [+3]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K9 ["DescendantAdded"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  NAMECALL R3 R2 K10 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K11 ["tutorialAddedConnection"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K12 ["Localization"]
  GETTABLEKS R3 R4 K13 ["new"]
  DUPTABLE R4 K17 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K14 ["stringResourceTable"]
  GETUPVAL R5 4
  SETTABLEKS R5 R4 K15 ["translationResourceTable"]
  LOADK R5 K18 ["KnowledgeTutorials"]
  SETTABLEKS R5 R4 K16 ["pluginName"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K19 ["localization"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K20 ["Analytics"]
  GETTABLEKS R3 R4 K13 ["new"]
  DUPCLOSURE R4 K21 [PROTO_1]
  NEWTABLE R5 0 0
  CALL R3 2 1
  SETTABLEKS R3 R0 K22 ["analytics"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K13 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R0 K23 ["telemetry"]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K13 ["new"]
  GETTABLEKS R4 R0 K23 ["telemetry"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K24 ["telemetryContext"]
  GETUPVAL R4 7
  GETTABLEKS R3 R4 K13 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R0 K25 ["DEPRECATED_stylizer"]
  GETUPVAL R5 8
  GETTABLEKS R4 R5 K26 ["Util"]
  GETTABLEKS R3 R4 K27 ["createFoundationDesignBinding"]
  CALL R3 0 2
  SETTABLEKS R4 R0 K28 ["onFoundationStyleSheetChange"]
  GETUPVAL R5 9
  GETTABLEKS R6 R1 K29 ["Plugin"]
  LOADNIL R7
  LOADNIL R8
  NEWTABLE R9 0 1
  MOVE R10 R3
  SETLIST R9 R10 1 [1]
  CALL R5 4 1
  SETTABLEKS R5 R0 K30 ["design"]
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K31 ["Design"]
  GETTABLEKS R5 R6 K13 ["new"]
  GETTABLEKS R6 R0 K30 ["design"]
  CALL R5 1 1
  SETTABLEKS R5 R0 K32 ["designContext"]
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
  GETIMPORT R7 K5 [require]
  GETTABLEKS R9 R0 K15 ["Bin"]
  GETTABLEKS R8 R9 K16 ["defineLuaFlags"]
  CALL R7 1 1
  GETTABLEKS R8 R7 K17 ["getFFlagKnowledgeTutorialsAvoidHanging"]
  CALL R8 0 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R12 R0 K6 ["Src"]
  GETTABLEKS R11 R12 K18 ["Util"]
  GETTABLEKS R10 R11 K19 ["Services"]
  CALL R9 1 1
  GETTABLEKS R10 R9 K20 ["ServerStorage"]
  GETTABLEKS R12 R3 K21 ["UI"]
  GETTABLEKS R11 R12 K22 ["DockWidget"]
  GETTABLEKS R13 R3 K21 ["UI"]
  GETTABLEKS R12 R13 K23 ["Dialog"]
  GETTABLEKS R13 R4 K24 ["View"]
  GETTABLEKS R14 R3 K25 ["ContextServices"]
  GETTABLEKS R15 R14 K26 ["Plugin"]
  GETTABLEKS R16 R14 K27 ["Mouse"]
  GETTABLEKS R19 R3 K28 ["Style"]
  GETTABLEKS R18 R19 K29 ["Themes"]
  GETTABLEKS R17 R18 K30 ["StudioTheme"]
  GETTABLEKS R19 R3 K31 ["Styling"]
  GETTABLEKS R18 R19 K32 ["registerPluginStyles"]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K33 ["Resources"]
  GETTABLEKS R20 R21 K34 ["Localization"]
  GETTABLEKS R19 R20 K35 ["SourceStrings"]
  GETTABLEKS R23 R0 K6 ["Src"]
  GETTABLEKS R22 R23 K33 ["Resources"]
  GETTABLEKS R21 R22 K34 ["Localization"]
  GETTABLEKS R20 R21 K36 ["LocalizedStrings"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R25 R0 K6 ["Src"]
  GETTABLEKS R24 R25 K18 ["Util"]
  GETTABLEKS R23 R24 K37 ["Telemetry"]
  GETTABLEKS R22 R23 K38 ["TelemetryProtocol"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R26 R0 K6 ["Src"]
  GETTABLEKS R25 R26 K18 ["Util"]
  GETTABLEKS R24 R25 K37 ["Telemetry"]
  GETTABLEKS R23 R24 K39 ["TelemetryContext"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R27 R0 K6 ["Src"]
  GETTABLEKS R26 R27 K18 ["Util"]
  GETTABLEKS R25 R26 K37 ["Telemetry"]
  GETTABLEKS R24 R25 K40 ["KnowledgeTutorialsTelemetryEvent"]
  CALL R23 1 1
  GETTABLEKS R25 R0 K6 ["Src"]
  GETTABLEKS R24 R25 K13 ["Components"]
  GETIMPORT R25 K5 [require]
  GETTABLEKS R26 R24 K41 ["TutorialAvailableDialog"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R27 R24 K42 ["TutorialCompletionDialog"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R28 R24 K43 ["Topbar"]
  CALL R27 1 1
  GETIMPORT R28 K5 [require]
  GETTABLEKS R29 R24 K44 ["TableOfContents"]
  CALL R28 1 1
  GETIMPORT R29 K5 [require]
  GETTABLEKS R30 R24 K45 ["TutorialHome"]
  CALL R29 1 1
  GETIMPORT R30 K5 [require]
  GETTABLEKS R31 R24 K46 ["TutorialSection"]
  CALL R30 1 1
  GETIMPORT R31 K5 [require]
  GETTABLEKS R34 R0 K6 ["Src"]
  GETTABLEKS R33 R34 K18 ["Util"]
  GETTABLEKS R32 R33 K47 ["getTutorialData"]
  CALL R31 1 1
  GETTABLEKS R32 R2 K48 ["PureComponent"]
  LOADK R34 K49 ["MainPlugin"]
  NAMECALL R32 R32 K50 ["extend"]
  CALL R32 2 1
  DUPCLOSURE R33 K51 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R14
  CAPTURE VAL R19
  CAPTURE VAL R20
  CAPTURE VAL R21
  CAPTURE VAL R22
  CAPTURE VAL R17
  CAPTURE VAL R5
  CAPTURE VAL R18
  SETTABLEKS R33 R32 K52 ["init"]
  DUPCLOSURE R33 K53 [PROTO_3]
  CAPTURE VAL R31
  SETTABLEKS R33 R32 K54 ["loadTutorialData"]
  DUPCLOSURE R33 K55 [PROTO_4]
  SETTABLEKS R33 R32 K56 ["didMount"]
  DUPCLOSURE R33 K57 [PROTO_5]
  SETTABLEKS R33 R32 K58 ["willUnmount"]
  DUPCLOSURE R33 K59 [PROTO_6]
  CAPTURE VAL R23
  SETTABLEKS R33 R32 K60 ["onCloseAvailableDialog"]
  DUPCLOSURE R33 K61 [PROTO_7]
  CAPTURE VAL R23
  SETTABLEKS R33 R32 K62 ["onCloseCompletionDialog"]
  DUPCLOSURE R33 K63 [PROTO_8]
  CAPTURE VAL R23
  SETTABLEKS R33 R32 K64 ["onStartTutorial"]
  DUPCLOSURE R33 K65 [PROTO_9]
  CAPTURE VAL R23
  SETTABLEKS R33 R32 K66 ["onRestartTutorial"]
  DUPCLOSURE R33 K67 [PROTO_10]
  CAPTURE VAL R23
  SETTABLEKS R33 R32 K68 ["onRateTutorial"]
  DUPCLOSURE R33 K69 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R12
  CAPTURE VAL R6
  SETTABLEKS R33 R32 K70 ["createDialog"]
  DUPCLOSURE R33 K71 [PROTO_28]
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R2
  CAPTURE VAL R25
  CAPTURE VAL R26
  CAPTURE VAL R11
  CAPTURE VAL R6
  CAPTURE VAL R27
  CAPTURE VAL R13
  CAPTURE VAL R28
  CAPTURE VAL R23
  CAPTURE VAL R29
  CAPTURE VAL R30
  SETTABLEKS R33 R32 K72 ["render"]
  RETURN R32 1
