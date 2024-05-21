PROTO_0:
  DUPTABLE R1 K1 [{"enabled"}]
  GETTABLEKS R3 R0 K0 ["enabled"]
  NOT R2 R3
  SETTABLEKS R2 R1 K0 ["enabled"]
  RETURN R1 1

PROTO_1:
  GETUPVAL R0 0
  DUPCLOSURE R2 K0 [PROTO_0]
  NAMECALL R0 R0 K1 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  SETTABLEKS R0 R3 K0 ["enabled"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"enabled"}]
  GETTABLEKS R4 R0 K2 ["Enabled"]
  SETTABLEKS R4 R3 K0 ["enabled"]
  NAMECALL R1 R1 K3 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["PluginLoaderContext"]
  GETTABLEKS R0 R1 K2 ["mainButtonClickedSignal"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K3 ["toggleEnabled"]
  NAMECALL R0 R0 K4 ["Connect"]
  CALL R0 2 0
  RETURN R0 0

PROTO_6:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_7:
  DUPTABLE R2 K1 [{"enabled"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K0 ["enabled"]
  SETTABLEKS R2 R0 K2 ["state"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K3 ["toggleEnabled"]
  NEWCLOSURE R2 P1
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K4 ["onClose"]
  NEWCLOSURE R2 P2
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K5 ["onRestore"]
  NEWCLOSURE R2 P3
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K6 ["onWidgetEnabledChanged"]
  NEWCLOSURE R2 P4
  CAPTURE VAL R0
  SETTABLEKS R2 R0 K7 ["onDockWidgetCreated"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K8 ["Localization"]
  GETTABLEKS R2 R3 K9 ["new"]
  DUPTABLE R3 K13 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R4 1
  SETTABLEKS R4 R3 K10 ["stringResourceTable"]
  GETUPVAL R4 2
  SETTABLEKS R4 R3 K11 ["translationResourceTable"]
  LOADK R4 K14 ["ModerationDialog"]
  SETTABLEKS R4 R3 K12 ["pluginName"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K15 ["localization"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K16 ["Analytics"]
  GETTABLEKS R2 R3 K9 ["new"]
  DUPCLOSURE R3 K17 [PROTO_6]
  NEWTABLE R4 0 0
  CALL R2 2 1
  SETTABLEKS R2 R0 K18 ["analytics"]
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K9 ["new"]
  CALL R2 0 1
  SETTABLEKS R2 R0 K19 ["DEPRECATED_stylizer"]
  GETUPVAL R2 4
  GETTABLEKS R3 R1 K20 ["Plugin"]
  CALL R2 1 1
  SETTABLEKS R2 R0 K21 ["design"]
  RETURN R0 0

PROTO_8:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["PluginLoaderContext"]
  GETTABLEKS R1 R2 K2 ["mainButton"]
  GETTABLEKS R4 R0 K3 ["state"]
  GETTABLEKS R3 R4 K4 ["enabled"]
  NAMECALL R1 R1 K5 ["SetActive"]
  CALL R1 2 0
  RETURN R0 0

PROTO_9:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R0 K1 ["state"]
  GETTABLEKS R3 R1 K2 ["Plugin"]
  GETTABLEKS R4 R2 K3 ["enabled"]
  GETTABLEKS R5 R0 K4 ["localization"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K5 ["provide"]
  NEWTABLE R7 0 5
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K6 ["new"]
  MOVE R9 R3
  CALL R8 1 1
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K6 ["new"]
  NAMECALL R10 R3 K7 ["getMouse"]
  CALL R10 1 -1
  CALL R9 -1 1
  GETTABLEKS R10 R0 K4 ["localization"]
  GETTABLEKS R11 R0 K8 ["analytics"]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K6 ["new"]
  GETTABLEKS R13 R0 K9 ["design"]
  CALL R12 1 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K11 [{"MainWidget"}]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K12 ["createElement"]
  GETUPVAL R10 5
  NEWTABLE R11 16 0
  LOADK R12 K13 ["ModerationDialog"]
  SETTABLEKS R12 R11 K14 ["Id"]
  LOADB R12 0
  SETTABLEKS R12 R11 K15 ["Enabled"]
  GETTABLEKS R12 R0 K4 ["localization"]
  LOADK R14 K2 ["Plugin"]
  LOADK R15 K16 ["Name"]
  NAMECALL R12 R12 K17 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K18 ["Title"]
  GETIMPORT R12 K22 [Enum.ZIndexBehavior.Sibling]
  SETTABLEKS R12 R11 K20 ["ZIndexBehavior"]
  GETIMPORT R12 K25 [Enum.InitialDockState.Bottom]
  SETTABLEKS R12 R11 K23 ["InitialDockState"]
  GETIMPORT R12 K27 [Vector2.new]
  LOADN R13 128
  LOADN R14 224
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["Size"]
  GETIMPORT R12 K27 [Vector2.new]
  LOADN R13 250
  LOADN R14 200
  CALL R12 2 1
  SETTABLEKS R12 R11 K29 ["MinSize"]
  GETTABLEKS R12 R0 K30 ["onClose"]
  SETTABLEKS R12 R11 K31 ["OnClose"]
  GETTABLEKS R13 R1 K32 ["PluginLoaderContext"]
  GETTABLEKS R12 R13 K33 ["mainDockWidget"]
  SETTABLEKS R12 R11 K34 ["Widget"]
  GETTABLEKS R12 R0 K35 ["onDockWidgetCreated"]
  SETTABLEKS R12 R11 K36 ["OnWidgetCreated"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K37 ["Change"]
  GETTABLEKS R12 R13 K15 ["Enabled"]
  GETTABLEKS R13 R0 K38 ["onWidgetEnabledChanged"]
  SETTABLE R13 R11 R12
  DUPTABLE R12 K41 [{"DialogContainer", "StyleLink"}]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K12 ["createElement"]
  GETUPVAL R14 6
  DUPTABLE R15 K45 [{"Reason", "ReviewDateTime", "ModeratorNote", "Enabled"}]
  GETUPVAL R18 7
  GETTABLEKS R17 R18 K46 ["badUtterances"]
  GETTABLEN R16 R17 1
  SETTABLEKS R16 R15 K42 ["Reason"]
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K47 ["beginDate"]
  SETTABLEKS R16 R15 K43 ["ReviewDateTime"]
  GETUPVAL R17 7
  GETTABLEKS R16 R17 K48 ["messageToUser"]
  SETTABLEKS R16 R15 K44 ["ModeratorNote"]
  SETTABLEKS R4 R15 K15 ["Enabled"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K39 ["DialogContainer"]
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K12 ["createElement"]
  LOADK R14 K40 ["StyleLink"]
  DUPTABLE R15 K50 [{"StyleSheet"}]
  GETTABLEKS R16 R0 K9 ["design"]
  SETTABLEKS R16 R15 K49 ["StyleSheet"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K40 ["StyleLink"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K10 ["MainWidget"]
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModerationDialog"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K9 ["UI"]
  GETTABLEKS R3 R4 K10 ["DockWidget"]
  GETTABLEKS R4 R2 K11 ["ContextServices"]
  GETTABLEKS R5 R4 K12 ["Plugin"]
  GETTABLEKS R6 R4 K13 ["Mouse"]
  GETTABLEKS R7 R4 K14 ["Design"]
  GETTABLEKS R10 R2 K15 ["Style"]
  GETTABLEKS R9 R10 K16 ["Themes"]
  GETTABLEKS R8 R9 K17 ["StudioTheme"]
  GETTABLEKS R10 R2 K18 ["Styling"]
  GETTABLEKS R9 R10 K19 ["registerPluginStyles"]
  GETTABLEKS R13 R0 K20 ["Src"]
  GETTABLEKS R12 R13 K21 ["Resources"]
  GETTABLEKS R11 R12 K22 ["Localization"]
  GETTABLEKS R10 R11 K23 ["SourceStrings"]
  GETTABLEKS R14 R0 K20 ["Src"]
  GETTABLEKS R13 R14 K21 ["Resources"]
  GETTABLEKS R12 R13 K22 ["Localization"]
  GETTABLEKS R11 R12 K24 ["LocalizedStrings"]
  GETTABLEKS R13 R0 K20 ["Src"]
  GETTABLEKS R12 R13 K25 ["Components"]
  GETIMPORT R13 K5 [require]
  GETTABLEKS R14 R12 K26 ["DialogContainer"]
  CALL R13 1 1
  GETTABLEKS R14 R1 K27 ["PureComponent"]
  LOADK R16 K28 ["MainPlugin"]
  NAMECALL R14 R14 K29 ["extend"]
  CALL R14 2 1
  DUPCLOSURE R15 K30 [PROTO_7]
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R9
  SETTABLEKS R15 R14 K31 ["init"]
  DUPCLOSURE R15 K32 [PROTO_8]
  SETTABLEKS R15 R14 K33 ["didUpdate"]
  DUPTABLE R15 K46 [{"punishedUserId", "interventionId", "punishmentId", "messageToUser", "punishmentTypeDescription", "beginDate", "endDate", "badUtterances", "verificationCategory", "consequenceTransparencyMessage", "showAppealsProcessLink", "agreedCheckBoxExperimentVariant"}]
  LOADK R16 K47 [123456789]
  SETTABLEKS R16 R15 K34 ["punishedUserId"]
  LOADK R16 K48 ["af9j230-34j1-2314-jfji-123j43i2oj"]
  SETTABLEKS R16 R15 K35 ["interventionId"]
  LOADN R16 0
  SETTABLEKS R16 R15 K36 ["punishmentId"]
  LOADK R16 K49 ["Roblox does not permit discriminatory language, behavior, or content of any kind."]
  SETTABLEKS R16 R15 K37 ["messageToUser"]
  LOADK R16 K50 ["Ban 1 Day"]
  SETTABLEKS R16 R15 K38 ["punishmentTypeDescription"]
  LOADK R16 K51 ["2024-05-01T22:27:27.378Z"]
  SETTABLEKS R16 R15 K39 ["beginDate"]
  LOADK R16 K52 ["2024-05-02T22:27:27.378Z"]
  SETTABLEKS R16 R15 K40 ["endDate"]
  NEWTABLE R16 0 3
  DUPTABLE R17 K56 [{"abuseType", "utteranceText", "imageUrl"}]
  LOADK R18 K57 ["ABUSE_TYPE_DISCRIMINATORY"]
  SETTABLEKS R18 R17 K53 ["abuseType"]
  LOADK R18 K58 ["some discriminatory text"]
  SETTABLEKS R18 R17 K54 ["utteranceText"]
  LOADK R18 K59 ["null"]
  SETTABLEKS R18 R17 K55 ["imageUrl"]
  DUPTABLE R18 K56 [{"abuseType", "utteranceText", "imageUrl"}]
  LOADK R19 K60 ["ABUSE_TYPE_SPAM"]
  SETTABLEKS R19 R18 K53 ["abuseType"]
  LOADK R19 K61 ["XDDDDD"]
  SETTABLEKS R19 R18 K54 ["utteranceText"]
  LOADK R19 K59 ["null"]
  SETTABLEKS R19 R18 K55 ["imageUrl"]
  DUPTABLE R19 K56 [{"abuseType", "utteranceText", "imageUrl"}]
  LOADK R20 K62 ["ABUSE_TYPE_SEXUAL_CONTENT"]
  SETTABLEKS R20 R19 K53 ["abuseType"]
  LOADK R20 K63 ["Asset Name:TEST Asset ID:17357472299"]
  SETTABLEKS R20 R19 K54 ["utteranceText"]
  LOADK R20 K59 ["null"]
  SETTABLEKS R20 R19 K55 ["imageUrl"]
  SETLIST R16 R17 3 [1]
  SETTABLEKS R16 R15 K41 ["badUtterances"]
  LOADK R16 K64 [""]
  SETTABLEKS R16 R15 K42 ["verificationCategory"]
  LOADK R16 K64 [""]
  SETTABLEKS R16 R15 K43 ["consequenceTransparencyMessage"]
  LOADB R16 0
  SETTABLEKS R16 R15 K44 ["showAppealsProcessLink"]
  LOADK R16 K59 ["null"]
  SETTABLEKS R16 R15 K45 ["agreedCheckBoxExperimentVariant"]
  DUPCLOSURE R16 K65 [PROTO_9]
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R13
  CAPTURE VAL R15
  SETTABLEKS R16 R14 K66 ["render"]
  RETURN R14 1
