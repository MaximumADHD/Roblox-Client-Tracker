PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["moderationController"]
  NAMECALL R0 R0 K1 ["ReactivateAsync"]
  CALL R0 1 0
  GETUPVAL R0 0
  DUPTABLE R2 K3 [{"showDialog"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["showDialog"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["moderationController"]
  NAMECALL R0 R0 K1 ["LogoutAsync"]
  CALL R0 1 0
  GETUPVAL R0 0
  DUPTABLE R2 K3 [{"showDialog"}]
  LOADB R3 0
  SETTABLEKS R3 R2 K2 ["showDialog"]
  NAMECALL R0 R0 K4 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  DUPTABLE R3 K6 [{"showDialog", "messageToUser", "reason", "reviewDateTime", "type", "bannedDateTime"}]
  GETTABLEKS R5 R0 K7 ["InterventionId"]
  JUMPIFEQKNIL R5 [+3]
  LOADB R4 1
  JUMP [+1]
  LOADB R4 0
  SETTABLEKS R4 R3 K0 ["showDialog"]
  GETTABLEKS R4 R0 K8 ["MessageToUser"]
  SETTABLEKS R4 R3 K1 ["messageToUser"]
  GETTABLEKS R5 R0 K9 ["BadUtterances"]
  JUMPIFEQKNIL R5 [+5]
  GETTABLEKS R5 R0 K9 ["BadUtterances"]
  GETTABLEN R4 R5 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K2 ["reason"]
  GETTABLEKS R4 R0 K10 ["BeginDate"]
  SETTABLEKS R4 R3 K3 ["reviewDateTime"]
  GETTABLEKS R4 R0 K11 ["PunishmentType"]
  SETTABLEKS R4 R3 K4 ["type"]
  GETTABLEKS R4 R0 K12 ["EndDate"]
  SETTABLEKS R4 R3 K5 ["bannedDateTime"]
  NAMECALL R1 R1 K13 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  DUPTABLE R3 K1 [{"showDialog"}]
  SETTABLEKS R0 R3 K0 ["showDialog"]
  NAMECALL R1 R1 K2 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  NEWTABLE R0 0 0
  RETURN R0 1

PROTO_5:
  GETTABLEKS R2 R1 K0 ["Plugin"]
  LOADK R4 K1 ["ModerationController"]
  NAMECALL R2 R2 K2 ["GetPluginComponent"]
  CALL R2 2 1
  SETTABLEKS R2 R0 K3 ["moderationController"]
  GETTABLEKS R2 R0 K3 ["moderationController"]
  NAMECALL R2 R2 K4 ["GetModerationInfoAsync"]
  CALL R2 1 1
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K5 ["onReactivate"]
  NEWCLOSURE R3 P1
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K6 ["onLogout"]
  DUPTABLE R3 K13 [{"showDialog", "messageToUser", "reason", "reviewDateTime", "type", "bannedDateTime"}]
  GETTABLEKS R5 R2 K14 ["InterventionId"]
  JUMPIFEQKNIL R5 [+3]
  LOADB R4 1
  JUMP [+1]
  LOADB R4 0
  SETTABLEKS R4 R3 K7 ["showDialog"]
  GETTABLEKS R4 R2 K15 ["MessageToUser"]
  SETTABLEKS R4 R3 K8 ["messageToUser"]
  GETTABLEKS R5 R2 K16 ["BadUtterances"]
  JUMPIFEQKNIL R5 [+5]
  GETTABLEKS R5 R2 K16 ["BadUtterances"]
  GETTABLEN R4 R5 1
  JUMP [+1]
  LOADNIL R4
  SETTABLEKS R4 R3 K9 ["reason"]
  GETTABLEKS R4 R2 K17 ["BeginDate"]
  SETTABLEKS R4 R3 K10 ["reviewDateTime"]
  GETTABLEKS R4 R2 K18 ["PunishmentType"]
  SETTABLEKS R4 R3 K11 ["type"]
  GETTABLEKS R4 R2 K19 ["EndDate"]
  SETTABLEKS R4 R3 K12 ["bannedDateTime"]
  SETTABLEKS R3 R0 K20 ["state"]
  GETTABLEKS R4 R0 K3 ["moderationController"]
  GETTABLEKS R3 R4 K21 ["ShowModerationDialog"]
  NEWCLOSURE R5 P2
  CAPTURE VAL R0
  NAMECALL R3 R3 K22 ["Connect"]
  CALL R3 2 1
  SETTABLEKS R3 R0 K23 ["showModerationDialogConnection"]
  NEWCLOSURE R3 P3
  CAPTURE VAL R0
  SETTABLEKS R3 R0 K24 ["onRestore"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K25 ["Localization"]
  GETTABLEKS R3 R4 K26 ["new"]
  DUPTABLE R4 K30 [{"stringResourceTable", "translationResourceTable", "pluginName"}]
  GETUPVAL R5 1
  SETTABLEKS R5 R4 K27 ["stringResourceTable"]
  GETUPVAL R5 2
  SETTABLEKS R5 R4 K28 ["translationResourceTable"]
  LOADK R5 K31 ["ModerationDialog"]
  SETTABLEKS R5 R4 K29 ["pluginName"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K32 ["localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K33 ["Analytics"]
  GETTABLEKS R3 R4 K26 ["new"]
  DUPCLOSURE R4 K34 [PROTO_4]
  NEWTABLE R5 0 0
  CALL R3 2 1
  SETTABLEKS R3 R0 K35 ["analytics"]
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K26 ["new"]
  CALL R3 0 1
  SETTABLEKS R3 R0 K36 ["DEPRECATED_stylizer"]
  GETUPVAL R3 4
  GETTABLEKS R4 R1 K0 ["Plugin"]
  CALL R3 1 1
  SETTABLEKS R3 R0 K37 ["design"]
  RETURN R0 0

PROTO_6:
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
  DUPTABLE R8 K12 [{"DialogContainer", "StyleLink"}]
  GETTABLEKS R9 R2 K13 ["showDialog"]
  JUMPIFNOT R9 [+34]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K14 ["createElement"]
  GETUPVAL R10 5
  DUPTABLE R11 K22 [{"Reason", "ReviewDateTime", "ModeratorNote", "OnReactivate", "OnLogout", "Type", "BannedDateTime"}]
  GETTABLEKS R12 R2 K23 ["reason"]
  SETTABLEKS R12 R11 K15 ["Reason"]
  GETTABLEKS R12 R2 K24 ["reviewDateTime"]
  SETTABLEKS R12 R11 K16 ["ReviewDateTime"]
  GETTABLEKS R12 R2 K25 ["messageToUser"]
  SETTABLEKS R12 R11 K17 ["ModeratorNote"]
  GETTABLEKS R12 R0 K26 ["onReactivate"]
  SETTABLEKS R12 R11 K18 ["OnReactivate"]
  GETTABLEKS R12 R0 K27 ["onLogout"]
  SETTABLEKS R12 R11 K19 ["OnLogout"]
  GETTABLEKS R12 R2 K28 ["type"]
  SETTABLEKS R12 R11 K20 ["Type"]
  GETTABLEKS R12 R2 K29 ["bannedDateTime"]
  SETTABLEKS R12 R11 K21 ["BannedDateTime"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K10 ["DialogContainer"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K14 ["createElement"]
  LOADK R10 K11 ["StyleLink"]
  DUPTABLE R11 K31 [{"StyleSheet"}]
  GETTABLEKS R12 R0 K9 ["design"]
  SETTABLEKS R12 R11 K30 ["StyleSheet"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K11 ["StyleLink"]
  CALL R6 2 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ModerationDialog"]
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
  GETTABLEKS R5 R3 K11 ["UI"]
  GETTABLEKS R4 R5 K12 ["DockWidget"]
  GETTABLEKS R5 R3 K13 ["ContextServices"]
  GETTABLEKS R6 R5 K14 ["Plugin"]
  GETTABLEKS R7 R5 K15 ["Mouse"]
  GETTABLEKS R8 R5 K16 ["Design"]
  GETTABLEKS R11 R3 K17 ["Style"]
  GETTABLEKS R10 R11 K18 ["Themes"]
  GETTABLEKS R9 R10 K19 ["StudioTheme"]
  GETTABLEKS R11 R3 K20 ["Styling"]
  GETTABLEKS R10 R11 K21 ["registerPluginStyles"]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K22 ["Resources"]
  GETTABLEKS R12 R13 K23 ["Localization"]
  GETTABLEKS R11 R12 K24 ["SourceStrings"]
  GETTABLEKS R15 R0 K6 ["Src"]
  GETTABLEKS R14 R15 K22 ["Resources"]
  GETTABLEKS R13 R14 K23 ["Localization"]
  GETTABLEKS R12 R13 K25 ["LocalizedStrings"]
  GETTABLEKS R14 R0 K6 ["Src"]
  GETTABLEKS R13 R14 K26 ["Components"]
  GETIMPORT R14 K5 [require]
  GETTABLEKS R15 R13 K27 ["DialogContainer"]
  CALL R14 1 1
  GETTABLEKS R15 R2 K28 ["PureComponent"]
  LOADK R17 K29 ["MainPlugin"]
  NAMECALL R15 R15 K30 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K31 [PROTO_5]
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R10
  SETTABLEKS R16 R15 K32 ["init"]
  DUPCLOSURE R16 K33 [PROTO_6]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R14
  SETTABLEKS R16 R15 K34 ["render"]
  RETURN R15 1
