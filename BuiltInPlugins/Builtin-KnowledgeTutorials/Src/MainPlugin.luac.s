PROTO_0:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"theme"}]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K2 ["Theme"]
  GETTABLEKS R3 R4 K3 ["Name"]
  SETTABLEKS R3 R2 K0 ["theme"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["state"]
  GETTABLEKS R0 R1 K1 ["tutorialData"]
  JUMPIF R0 [+4]
  GETUPVAL R0 0
  NAMECALL R0 R0 K2 ["loadTutorialData"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_3:
  GETIMPORT R3 K1 [settings]
  CALL R3 0 1
  GETTABLEKS R2 R3 K2 ["Studio"]
  DUPTABLE R3 K10 [{"enabled", "showCompletionDialog", "showAvailableDialog", "isTableOfContentsOpen", "tutorialData", "sectionIndex", "theme"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K3 ["enabled"]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["showCompletionDialog"]
  LOADB R4 0
  SETTABLEKS R4 R3 K5 ["showAvailableDialog"]
  LOADB R4 0
  SETTABLEKS R4 R3 K6 ["isTableOfContentsOpen"]
  LOADNIL R4
  SETTABLEKS R4 R3 K7 ["tutorialData"]
  LOADN R4 0
  SETTABLEKS R4 R3 K8 ["sectionIndex"]
  GETTABLEKS R5 R2 K11 ["Theme"]
  GETTABLEKS R4 R5 K12 ["Name"]
  SETTABLEKS R4 R3 K9 ["theme"]
  SETTABLEKS R3 R0 K13 ["state"]
  GETTABLEKS R3 R2 K14 ["ThemeChanged"]
  NEWCLOSURE R5 P0
  CAPTURE VAL R0
  CAPTURE VAL R2
  NAMECALL R3 R3 K15 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K16 ["themeChangeConnection"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K17 ["DescendantAdded"]
  NEWCLOSURE R5 P1
  CAPTURE VAL R0
  NAMECALL R3 R3 K15 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K18 ["tutorialAddedConnection"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K19 ["Localization"]
  GETTABLEKS R3 R4 K20 ["new"]
  DUPTABLE R4 K24 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K21 ["stringResourceTable"]
  GETUPVAL R5 3
  SETTABLEKS R5 R4 K22 ["translationResourceTable"]
  LOADK R5 K25 ["KnowledgeTutorials"]
  SETTABLEKS R5 R4 K23 ["pluginName"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K26 ["localization"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K27 ["Analytics"]
  GETTABLEKS R3 R4 K20 ["new"]
  DUPCLOSURE R4 K28 [PROTO_2]
  NEWTABLE R5 0 0
  CALL R3 2 1
  SETTABLEKS R3 R0 K29 ["analytics"]
  GETUPVAL R4 4
  GETTABLEKS R3 R4 K20 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R0 K30 ["telemetry"]
  GETUPVAL R4 5
  GETTABLEKS R3 R4 K20 ["new"]
  GETTABLEKS R4 R0 K30 ["telemetry"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K31 ["telemetryContext"]
  GETUPVAL R4 6
  GETTABLEKS R3 R4 K20 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R0 K32 ["DEPRECATED_stylizer"]
  GETUPVAL R3 7
  GETTABLEKS R4 R1 K33 ["Plugin"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K34 ["design"]
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K35 ["Design"]
  GETTABLEKS R3 R4 K20 ["new"]
  GETTABLEKS R4 R0 K34 ["design"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K36 ["designContext"]
  RETURN R0 0

PROTO_4:
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

PROTO_5:
  NAMECALL R1 R0 K0 ["loadTutorialData"]
  CALL R1 1 0
  RETURN R0 0

PROTO_6:
  GETTABLEKS R1 R0 K0 ["themeChangeConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  GETTABLEKS R1 R0 K2 ["tutorialAddedConnection"]
  NAMECALL R1 R1 K1 ["Disconnect"]
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["telemetryContext"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"telemetryType", "telemetrySubtype", "context", "action"}]
  LOADK R4 K6 ["interaction"]
  SETTABLEKS R4 R3 K1 ["telemetryType"]
  LOADK R4 K7 ["click"]
  SETTABLEKS R4 R3 K2 ["telemetrySubtype"]
  LOADK R4 K8 ["tutorial_popup"]
  SETTABLEKS R4 R3 K3 ["context"]
  LOADK R4 K9 ["close"]
  SETTABLEKS R4 R3 K4 ["action"]
  NAMECALL R0 R0 K10 ["log"]
  CALL R0 3 0
  GETUPVAL R0 0
  DUPTABLE R2 K13 [{"enabled", "showAvailableDialog"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K11 ["enabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K12 ["showAvailableDialog"]
  NAMECALL R0 R0 K14 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["telemetryContext"]
  GETUPVAL R2 1
  DUPTABLE R3 K5 [{"telemetryType", "telemetrySubtype", "context", "action"}]
  LOADK R4 K6 ["interaction"]
  SETTABLEKS R4 R3 K1 ["telemetryType"]
  LOADK R4 K7 ["click"]
  SETTABLEKS R4 R3 K2 ["telemetrySubtype"]
  LOADK R4 K8 ["tutorial_popup"]
  SETTABLEKS R4 R3 K3 ["context"]
  LOADK R4 K9 ["open"]
  SETTABLEKS R4 R3 K4 ["action"]
  NAMECALL R0 R0 K10 ["log"]
  CALL R0 3 0
  GETUPVAL R0 0
  DUPTABLE R2 K14 [{"enabled", "showAvailableDialog", "sectionIndex"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K11 ["enabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K12 ["showAvailableDialog"]
  LOADN R3 0
  SETTABLEKS R3 R2 K13 ["sectionIndex"]
  NAMECALL R0 R0 K15 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  DUPTABLE R2 K2 [{"enabled", "showCompletionDialog"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["showCompletionDialog"]
  NAMECALL R0 R0 K3 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R0 0
  DUPTABLE R2 K3 [{"enabled", "showCompletionDialog", "sectionIndex"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K0 ["enabled"]
  LOADB R3 0
  SETTABLEKS R3 R2 K1 ["showCompletionDialog"]
  LOADN R3 0
  SETTABLEKS R3 R2 K2 ["sectionIndex"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["telemetryContext"]
  GETUPVAL R3 1
  DUPTABLE R4 K5 [{"telemetryType", "telemetrySubtype", "context", "rating"}]
  LOADK R5 K4 ["rating"]
  SETTABLEKS R5 R4 K1 ["telemetryType"]
  LOADK R5 K6 ["tutorial"]
  SETTABLEKS R5 R4 K2 ["telemetrySubtype"]
  LOADK R5 K7 ["tutorial_completion"]
  SETTABLEKS R5 R4 K3 ["context"]
  SETTABLEKS R0 R4 K4 ["rating"]
  NAMECALL R1 R1 K8 ["log"]
  CALL R1 3 0
  RETURN R0 0

PROTO_12:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_13:
  DUPTABLE R1 K1 [{"isTableOfContentsOpen"}]
  GETTABLEKS R3 R0 K0 ["isTableOfContentsOpen"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["isTableOfContentsOpen"]
  RETURN R1 1

PROTO_14:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_13]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_15:
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

PROTO_16:
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

PROTO_17:
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

PROTO_18:
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
  DUPCLOSURE R2 K18 [PROTO_17]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_19:
  DUPTABLE R1 K1 [{"sectionIndex"}]
  LOADN R3 0
  GETTABLEKS R5 R0 K0 ["sectionIndex"]
  SUBK R4 R5 K2 [1]
  FASTCALL2 MATH_MAX R3 R4 [+3]
  GETIMPORT R2 K5 [math.max]
  CALL R2 2 1
  SETTABLEKS R2 R1 K0 ["sectionIndex"]
  RETURN R1 1

PROTO_20:
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
  DUPCLOSURE R2 K13 [PROTO_19]
  NAMECALL R0 R0 K14 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_21:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETTABLEKS R5 R2 K4 ["tutorialData"]
  GETTABLEKS R6 R2 K5 ["theme"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K6 ["provide"]
  NEWTABLE R8 0 7
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K7 ["new"]
  MOVE R10 R3
  CALL R9 1 1
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K7 ["new"]
  NAMECALL R11 R3 K8 ["getMouse"]
  CALL R11 1 -1
  CALL R10 -1 1
  GETTABLEKS R11 R0 K9 ["designContext"]
  GETTABLEKS R12 R0 K10 ["DEPRECATED_stylizer"]
  GETTABLEKS R13 R0 K11 ["localization"]
  GETTABLEKS R14 R0 K12 ["analytics"]
  GETTABLEKS R15 R0 K13 ["telemetryContext"]
  SETLIST R8 R9 7 [1]
  DUPTABLE R9 K15 [{"FoundationProvider"}]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K16 ["createElement"]
  GETUPVAL R11 4
  DUPTABLE R12 K18 [{"theme", "device"}]
  SETTABLEKS R6 R12 K5 ["theme"]
  LOADK R13 K19 ["Desktop"]
  SETTABLEKS R13 R12 K17 ["device"]
  DUPTABLE R13 K23 [{"AvailableDialog", "CompletionDialog", "MainWidget"}]
  JUMPIFNOT R5 [+24]
  GETTABLEKS R15 R2 K24 ["showAvailableDialog"]
  JUMPIFNOT R15 [+21]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K16 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K28 [{"tutorialInfo", "onClose", "onOpen"}]
  GETTABLEKS R17 R5 K29 ["info"]
  SETTABLEKS R17 R16 K25 ["tutorialInfo"]
  NEWCLOSURE R17 P0
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R17 R16 K26 ["onClose"]
  NEWCLOSURE R17 P1
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R17 R16 K27 ["onOpen"]
  CALL R14 2 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K20 ["AvailableDialog"]
  JUMPIFNOT R5 [+27]
  GETTABLEKS R15 R2 K30 ["showCompletionDialog"]
  JUMPIFNOT R15 [+24]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K16 ["createElement"]
  GETUPVAL R15 7
  DUPTABLE R16 K33 [{"tutorialInfo", "onClose", "onRestart", "onRating"}]
  GETTABLEKS R17 R5 K29 ["info"]
  SETTABLEKS R17 R16 K25 ["tutorialInfo"]
  NEWCLOSURE R17 P2
  CAPTURE VAL R0
  SETTABLEKS R17 R16 K26 ["onClose"]
  NEWCLOSURE R17 P3
  CAPTURE VAL R0
  SETTABLEKS R17 R16 K31 ["onRestart"]
  NEWCLOSURE R17 P4
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R17 R16 K32 ["onRating"]
  CALL R14 2 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K21 ["CompletionDialog"]
  JUMPIFNOT R4 [+216]
  JUMPIFNOT R5 [+215]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K16 ["createElement"]
  GETUPVAL R15 8
  DUPTABLE R16 K44 [{"Id", "Title", "Enabled", "ShouldRestore", "ZIndexBehavior", "InitialDockState", "Size", "MinSize", "OnClose", "Widget"}]
  LOADK R17 K45 ["KnowledgeTutorials"]
  SETTABLEKS R17 R16 K34 ["Id"]
  GETTABLEKS R17 R0 K11 ["localization"]
  LOADK R19 K2 ["Plugin"]
  LOADK R20 K46 ["Tutorial"]
  NAMECALL R17 R17 K47 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K35 ["Title"]
  LOADB R17 0
  GETTABLEKS R18 R2 K4 ["tutorialData"]
  JUMPIFEQKNIL R18 [+2]
  MOVE R17 R4
  SETTABLEKS R17 R16 K36 ["Enabled"]
  LOADB R17 0
  SETTABLEKS R17 R16 K37 ["ShouldRestore"]
  GETIMPORT R17 K50 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R17 R16 K38 ["ZIndexBehavior"]
  GETIMPORT R17 K52 [Enum.InitialDockState.Float]
  SETTABLEKS R17 R16 K39 ["InitialDockState"]
  GETIMPORT R17 K54 [Vector2.new]
  LOADN R18 128
  LOADN R19 32
  CALL R17 2 1
  SETTABLEKS R17 R16 K40 ["Size"]
  GETIMPORT R17 K54 [Vector2.new]
  LOADN R18 250
  LOADN R19 144
  CALL R17 2 1
  SETTABLEKS R17 R16 K41 ["MinSize"]
  NEWCLOSURE R17 P5
  CAPTURE VAL R0
  SETTABLEKS R17 R16 K42 ["OnClose"]
  GETTABLEKS R18 R1 K55 ["PluginLoaderContext"]
  GETTABLEKS R17 R18 K56 ["mainDockWidget"]
  SETTABLEKS R17 R16 K43 ["Widget"]
  DUPTABLE R17 K60 [{"StyleLink", "Topbar", "Content"}]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K16 ["createElement"]
  LOADK R19 K57 ["StyleLink"]
  DUPTABLE R20 K62 [{"StyleSheet"}]
  GETTABLEKS R21 R0 K63 ["design"]
  SETTABLEKS R21 R20 K61 ["StyleSheet"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K57 ["StyleLink"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K16 ["createElement"]
  GETUPVAL R19 9
  DUPTABLE R20 K66 [{"tutorialData", "isTableOfContentsOpen", "onTableOfContentsClicked"}]
  SETTABLEKS R5 R20 K4 ["tutorialData"]
  GETTABLEKS R21 R2 K64 ["isTableOfContentsOpen"]
  SETTABLEKS R21 R20 K64 ["isTableOfContentsOpen"]
  NEWCLOSURE R21 P6
  CAPTURE VAL R0
  SETTABLEKS R21 R20 K65 ["onTableOfContentsClicked"]
  CALL R18 2 1
  SETTABLEKS R18 R17 K58 ["Topbar"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K16 ["createElement"]
  GETUPVAL R19 10
  DUPTABLE R20 K68 [{"tag", "Size"}]
  LOADK R21 K69 ["padding-medium bg-surface-100 anchor-bottom-left position-bottom-left"]
  SETTABLEKS R21 R20 K67 ["tag"]
  GETIMPORT R21 K71 [UDim2.new]
  LOADN R22 1
  LOADN R23 0
  LOADN R24 1
  LOADN R25 224
  CALL R21 4 1
  SETTABLEKS R21 R20 K40 ["Size"]
  DUPTABLE R21 K75 [{"TableOfContents", "TutorialHome", "TutorialSection"}]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K16 ["createElement"]
  GETUPVAL R23 11
  DUPTABLE R24 K79 [{"visible", "currentSectionIndex", "tutorialData", "onSectionClicked"}]
  GETTABLEKS R25 R2 K64 ["isTableOfContentsOpen"]
  SETTABLEKS R25 R24 K76 ["visible"]
  GETTABLEKS R25 R2 K80 ["sectionIndex"]
  SETTABLEKS R25 R24 K77 ["currentSectionIndex"]
  SETTABLEKS R5 R24 K4 ["tutorialData"]
  NEWCLOSURE R25 P7
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  SETTABLEKS R25 R24 K78 ["onSectionClicked"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K72 ["TableOfContents"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K16 ["createElement"]
  GETUPVAL R23 12
  DUPTABLE R24 K83 [{"visible", "tutorialHome", "onStartTutorial"}]
  LOADB R25 0
  GETTABLEKS R26 R2 K80 ["sectionIndex"]
  JUMPIFNOTEQKN R26 K84 [0] [+4]
  GETTABLEKS R26 R2 K64 ["isTableOfContentsOpen"]
  NOT R25 R26
  SETTABLEKS R25 R24 K76 ["visible"]
  GETTABLEKS R25 R5 K85 ["home"]
  SETTABLEKS R25 R24 K81 ["tutorialHome"]
  NEWCLOSURE R25 P8
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R25 R24 K82 ["onStartTutorial"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K73 ["TutorialHome"]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K16 ["createElement"]
  GETUPVAL R23 13
  DUPTABLE R24 K90 [{"visible", "showFinish", "tutorialSection", "onNext", "onPrevious"}]
  LOADB R25 0
  GETTABLEKS R26 R2 K80 ["sectionIndex"]
  LOADN R27 0
  JUMPIFNOTLT R27 R26 [+4]
  GETTABLEKS R26 R2 K64 ["isTableOfContentsOpen"]
  NOT R25 R26
  SETTABLEKS R25 R24 K76 ["visible"]
  GETTABLEKS R26 R2 K80 ["sectionIndex"]
  GETTABLEKS R28 R5 K91 ["sections"]
  LENGTH R27 R28
  JUMPIFEQ R26 R27 [+2]
  LOADB R25 0 +1
  LOADB R25 1
  SETTABLEKS R25 R24 K86 ["showFinish"]
  GETTABLEKS R26 R5 K91 ["sections"]
  GETTABLEKS R27 R2 K80 ["sectionIndex"]
  GETTABLE R25 R26 R27
  SETTABLEKS R25 R24 K87 ["tutorialSection"]
  NEWCLOSURE R25 P9
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  SETTABLEKS R25 R24 K88 ["onNext"]
  NEWCLOSURE R25 P10
  CAPTURE VAL R0
  CAPTURE UPVAL U6
  CAPTURE VAL R2
  SETTABLEKS R25 R24 K89 ["onPrevious"]
  CALL R22 2 1
  SETTABLEKS R22 R21 K74 ["TutorialSection"]
  CALL R18 3 1
  SETTABLEKS R18 R17 K59 ["Content"]
  CALL R14 3 1
  JUMP [+1]
  LOADNIL R14
  SETTABLEKS R14 R13 K22 ["MainWidget"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["FoundationProvider"]
  CALL R7 2 -1
  RETURN R7 -1

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
  GETTABLEKS R5 R4 K12 ["FoundationProvider"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K6 ["Src"]
  GETTABLEKS R8 R9 K13 ["Util"]
  GETTABLEKS R7 R8 K14 ["Services"]
  CALL R6 1 1
  GETTABLEKS R7 R6 K15 ["ServerStorage"]
  GETTABLEKS R9 R3 K16 ["UI"]
  GETTABLEKS R8 R9 K17 ["DockWidget"]
  GETTABLEKS R9 R4 K18 ["View"]
  GETTABLEKS R10 R3 K19 ["ContextServices"]
  GETTABLEKS R11 R10 K20 ["Plugin"]
  GETTABLEKS R12 R10 K21 ["Mouse"]
  GETTABLEKS R15 R3 K22 ["Style"]
  GETTABLEKS R14 R15 K23 ["Themes"]
  GETTABLEKS R13 R14 K24 ["StudioTheme"]
  GETTABLEKS R15 R3 K25 ["Styling"]
  GETTABLEKS R14 R15 K26 ["registerPluginStyles"]
  GETTABLEKS R18 R0 K6 ["Src"]
  GETTABLEKS R17 R18 K27 ["Resources"]
  GETTABLEKS R16 R17 K28 ["Localization"]
  GETTABLEKS R15 R16 K29 ["SourceStrings"]
  GETTABLEKS R19 R0 K6 ["Src"]
  GETTABLEKS R18 R19 K27 ["Resources"]
  GETTABLEKS R17 R18 K28 ["Localization"]
  GETTABLEKS R16 R17 K30 ["LocalizedStrings"]
  GETIMPORT R17 K5 [require]
  GETTABLEKS R21 R0 K6 ["Src"]
  GETTABLEKS R20 R21 K13 ["Util"]
  GETTABLEKS R19 R20 K31 ["Telemetry"]
  GETTABLEKS R18 R19 K32 ["TelemetryProtocol"]
  CALL R17 1 1
  GETIMPORT R18 K5 [require]
  GETTABLEKS R22 R0 K6 ["Src"]
  GETTABLEKS R21 R22 K13 ["Util"]
  GETTABLEKS R20 R21 K31 ["Telemetry"]
  GETTABLEKS R19 R20 K33 ["TelemetryContext"]
  CALL R18 1 1
  GETIMPORT R19 K5 [require]
  GETTABLEKS R23 R0 K6 ["Src"]
  GETTABLEKS R22 R23 K13 ["Util"]
  GETTABLEKS R21 R22 K31 ["Telemetry"]
  GETTABLEKS R20 R21 K34 ["KnowledgeTutorialsTelemetryEvent"]
  CALL R19 1 1
  GETTABLEKS R21 R0 K6 ["Src"]
  GETTABLEKS R20 R21 K35 ["Components"]
  GETIMPORT R21 K5 [require]
  GETTABLEKS R22 R20 K36 ["TutorialAvailableDialog"]
  CALL R21 1 1
  GETIMPORT R22 K5 [require]
  GETTABLEKS R23 R20 K37 ["TutorialCompletionDialog"]
  CALL R22 1 1
  GETIMPORT R23 K5 [require]
  GETTABLEKS R24 R20 K38 ["Topbar"]
  CALL R23 1 1
  GETIMPORT R24 K5 [require]
  GETTABLEKS R25 R20 K39 ["TableOfContents"]
  CALL R24 1 1
  GETIMPORT R25 K5 [require]
  GETTABLEKS R26 R20 K40 ["TutorialHome"]
  CALL R25 1 1
  GETIMPORT R26 K5 [require]
  GETTABLEKS R27 R20 K41 ["TutorialSection"]
  CALL R26 1 1
  GETIMPORT R27 K5 [require]
  GETTABLEKS R30 R0 K6 ["Src"]
  GETTABLEKS R29 R30 K13 ["Util"]
  GETTABLEKS R28 R29 K42 ["getTutorialData"]
  CALL R27 1 1
  GETTABLEKS R28 R2 K43 ["PureComponent"]
  LOADK R30 K44 ["MainPlugin"]
  NAMECALL R28 R28 K45 ["extend"]
  CALL R28 2 1
  DUPCLOSURE R29 K46 [PROTO_3]
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R16
  CAPTURE VAL R17
  CAPTURE VAL R18
  CAPTURE VAL R13
  CAPTURE VAL R14
  SETTABLEKS R29 R28 K47 ["init"]
  DUPCLOSURE R29 K48 [PROTO_4]
  CAPTURE VAL R27
  SETTABLEKS R29 R28 K49 ["loadTutorialData"]
  DUPCLOSURE R29 K50 [PROTO_5]
  SETTABLEKS R29 R28 K51 ["didMount"]
  DUPCLOSURE R29 K52 [PROTO_6]
  SETTABLEKS R29 R28 K53 ["willUnmount"]
  DUPCLOSURE R29 K54 [PROTO_21]
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R21
  CAPTURE VAL R19
  CAPTURE VAL R22
  CAPTURE VAL R8
  CAPTURE VAL R23
  CAPTURE VAL R9
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R26
  SETTABLEKS R29 R28 K55 ["render"]
  RETURN R28 1
