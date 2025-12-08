PROTO_0:
  DUPTABLE R0 K3 [{"Accept", "Reject", "AlwaysAccept"}]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolConfirmation"]
  LOADK R4 K0 ["Accept"]
  NAMECALL R1 R1 K5 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["Accept"]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolConfirmation"]
  LOADK R4 K1 ["Reject"]
  NAMECALL R1 R1 K5 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K1 ["Reject"]
  GETUPVAL R1 0
  LOADK R3 K4 ["ToolConfirmation"]
  LOADK R4 K2 ["AlwaysAccept"]
  DUPTABLE R5 K7 [{"toolName"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K8 ["toolDisplayName"]
  SETTABLEKS R6 R5 K6 ["toolName"]
  NAMECALL R1 R1 K5 ["getText"]
  CALL R1 4 1
  SETTABLEKS R1 R0 K2 ["AlwaysAccept"]
  RETURN R0 1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["hidden"]
  JUMPIFNOT R1 [+2]
  LOADNIL R1
  RETURN R1 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K1 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R0
  NEWTABLE R3 0 2
  GETTABLEKS R4 R0 K2 ["toolDisplayName"]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K3 ["locale"]
  SETLIST R3 R4 2 [1]
  CALL R1 2 1
  GETUPVAL R2 2
  CALL R2 0 1
  NEWTABLE R3 4 0
  GETTABLEKS R4 R0 K4 ["warningMessage"]
  JUMPIFNOT R4 [+20]
  GETUPVAL R4 3
  GETUPVAL R5 4
  DUPTABLE R6 K9 [{"tag", "Text", "LayoutOrder", "testId"}]
  LOADK R7 K10 ["auto-xy text-body-small text-wrap text-align-x-left content-muted"]
  SETTABLEKS R7 R6 K5 ["tag"]
  GETTABLEKS R7 R0 K4 ["warningMessage"]
  SETTABLEKS R7 R6 K6 ["Text"]
  MOVE R7 R2
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  LOADK R7 K11 ["Assistant-ToolConfirmation-Warning"]
  SETTABLEKS R7 R6 K8 ["testId"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K12 ["Warning"]
  GETUPVAL R4 3
  GETUPVAL R5 5
  DUPTABLE R6 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
  GETTABLEKS R7 R1 K19 ["Accept"]
  SETTABLEKS R7 R6 K13 ["text"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K20 ["Enums"]
  GETTABLEKS R8 R9 K21 ["ButtonSize"]
  GETTABLEKS R7 R8 K22 ["XSmall"]
  SETTABLEKS R7 R6 K14 ["size"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K20 ["Enums"]
  GETTABLEKS R8 R9 K23 ["ButtonVariant"]
  GETTABLEKS R7 R8 K24 ["Emphasis"]
  SETTABLEKS R7 R6 K15 ["variant"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K20 ["Enums"]
  GETTABLEKS R8 R9 K25 ["FillBehavior"]
  GETTABLEKS R7 R8 K26 ["Fill"]
  SETTABLEKS R7 R6 K16 ["fillBehavior"]
  GETTABLEKS R7 R0 K27 ["onConfirm"]
  SETTABLEKS R7 R6 K17 ["onActivated"]
  MOVE R7 R2
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  LOADK R7 K28 ["Assistant-ToolConfirmation-Accept"]
  SETTABLEKS R7 R6 K8 ["testId"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K29 ["AcceptButton"]
  GETUPVAL R4 3
  GETUPVAL R5 5
  DUPTABLE R6 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
  GETTABLEKS R7 R1 K30 ["Reject"]
  SETTABLEKS R7 R6 K13 ["text"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K20 ["Enums"]
  GETTABLEKS R8 R9 K21 ["ButtonSize"]
  GETTABLEKS R7 R8 K22 ["XSmall"]
  SETTABLEKS R7 R6 K14 ["size"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K20 ["Enums"]
  GETTABLEKS R8 R9 K23 ["ButtonVariant"]
  GETTABLEKS R7 R8 K31 ["Standard"]
  SETTABLEKS R7 R6 K15 ["variant"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K20 ["Enums"]
  GETTABLEKS R8 R9 K25 ["FillBehavior"]
  GETTABLEKS R7 R8 K26 ["Fill"]
  SETTABLEKS R7 R6 K16 ["fillBehavior"]
  GETTABLEKS R7 R0 K32 ["onReject"]
  SETTABLEKS R7 R6 K17 ["onActivated"]
  MOVE R7 R2
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  LOADK R7 K33 ["Assistant-ToolConfirmation-Reject"]
  SETTABLEKS R7 R6 K8 ["testId"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K34 ["RejectButton"]
  GETUPVAL R4 3
  GETUPVAL R5 5
  DUPTABLE R6 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
  GETTABLEKS R7 R1 K35 ["AlwaysAccept"]
  SETTABLEKS R7 R6 K13 ["text"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K20 ["Enums"]
  GETTABLEKS R8 R9 K21 ["ButtonSize"]
  GETTABLEKS R7 R8 K22 ["XSmall"]
  SETTABLEKS R7 R6 K14 ["size"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K20 ["Enums"]
  GETTABLEKS R8 R9 K23 ["ButtonVariant"]
  GETTABLEKS R7 R8 K31 ["Standard"]
  SETTABLEKS R7 R6 K15 ["variant"]
  GETUPVAL R10 6
  GETTABLEKS R9 R10 K20 ["Enums"]
  GETTABLEKS R8 R9 K25 ["FillBehavior"]
  GETTABLEKS R7 R8 K26 ["Fill"]
  SETTABLEKS R7 R6 K16 ["fillBehavior"]
  GETTABLEKS R7 R0 K36 ["onAlwaysAccept"]
  SETTABLEKS R7 R6 K17 ["onActivated"]
  MOVE R7 R2
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  LOADK R7 K37 ["Assistant-ToolConfirmation-AlwaysAccept"]
  SETTABLEKS R7 R6 K8 ["testId"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K38 ["AlwaysAcceptButton"]
  GETUPVAL R4 3
  GETUPVAL R5 7
  DUPTABLE R6 K39 [{"tag", "LayoutOrder"}]
  LOADK R7 K40 ["col size-full-0 auto-y gap-small"]
  SETTABLEKS R7 R6 K5 ["tag"]
  GETTABLEKS R7 R0 K7 ["LayoutOrder"]
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  MOVE R7 R3
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Components"]
  GETTABLEKS R2 R3 K7 ["ContentWidgetRegistry"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K8 ["Parent"]
  GETTABLEKS R4 R5 K10 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Parent"]
  GETTABLEKS R5 R6 K11 ["ReactUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K12 ["Resources"]
  GETTABLEKS R7 R8 K13 ["Localization"]
  GETTABLEKS R6 R7 K14 ["Translator"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R7 R0 K15 ["Types"]
  CALL R6 1 1
  GETTABLEKS R7 R2 K16 ["View"]
  GETTABLEKS R8 R2 K17 ["Text"]
  GETTABLEKS R9 R2 K18 ["Button"]
  GETTABLEKS R10 R4 K19 ["createNextOrder"]
  GETTABLEKS R11 R3 K20 ["createElement"]
  DUPCLOSURE R12 K21 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R7
  DUPTABLE R13 K24 [{"Type", "ContentWidget"}]
  LOADK R14 K25 ["ToolConfirmation"]
  SETTABLEKS R14 R13 K22 ["Type"]
  GETTABLEKS R14 R3 K26 ["memo"]
  MOVE R15 R12
  CALL R14 1 1
  SETTABLEKS R14 R13 K23 ["ContentWidget"]
  GETTABLEKS R14 R1 K27 ["registerWidget"]
  GETTABLEKS R15 R13 K22 ["Type"]
  GETTABLEKS R16 R13 K23 ["ContentWidget"]
  CALL R14 2 0
  RETURN R13 1
