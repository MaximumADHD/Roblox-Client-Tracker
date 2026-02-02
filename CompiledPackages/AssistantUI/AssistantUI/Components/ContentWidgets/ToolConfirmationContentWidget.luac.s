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
  GETUPVAL R6 1
  SETTABLEKS R6 R5 K6 ["toolName"]
  NAMECALL R1 R1 K5 ["getText"]
  CALL R1 4 1
  SETTABLEKS R1 R0 K2 ["AlwaysAccept"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["hidden"]
  NOT R2 R3
  CALL R1 1 0
  GETUPVAL R1 1
  GETTABLEKS R2 R0 K1 ["toolName"]
  CALL R1 1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K2 ["useMemo"]
  NEWCLOSURE R3 P0
  CAPTURE UPVAL U3
  CAPTURE VAL R1
  NEWTABLE R4 0 2
  MOVE R5 R1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K3 ["locale"]
  SETLIST R4 R5 2 [1]
  CALL R2 2 1
  GETTABLEKS R3 R0 K0 ["hidden"]
  JUMPIFNOT R3 [+2]
  LOADNIL R3
  RETURN R3 1
  GETUPVAL R3 4
  CALL R3 0 1
  NEWTABLE R4 4 0
  GETTABLEKS R5 R0 K4 ["warningMessage"]
  JUMPIFNOT R5 [+20]
  GETUPVAL R5 5
  GETUPVAL R6 6
  DUPTABLE R7 K9 [{"tag", "Text", "LayoutOrder", "testId"}]
  LOADK R8 K10 ["auto-xy text-body-small text-wrap text-align-x-left content-muted"]
  SETTABLEKS R8 R7 K5 ["tag"]
  GETTABLEKS R8 R0 K4 ["warningMessage"]
  SETTABLEKS R8 R7 K6 ["Text"]
  MOVE R8 R3
  CALL R8 0 1
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  LOADK R8 K11 ["Assistant-ToolConfirmation-Warning"]
  SETTABLEKS R8 R7 K8 ["testId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["Warning"]
  GETUPVAL R5 5
  GETUPVAL R6 7
  DUPTABLE R7 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
  GETTABLEKS R8 R2 K19 ["Accept"]
  SETTABLEKS R8 R7 K13 ["text"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K21 ["ButtonSize"]
  GETTABLEKS R8 R9 K22 ["XSmall"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K23 ["ButtonVariant"]
  GETTABLEKS R8 R9 K24 ["Emphasis"]
  SETTABLEKS R8 R7 K15 ["variant"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K25 ["FillBehavior"]
  GETTABLEKS R8 R9 K26 ["Fill"]
  SETTABLEKS R8 R7 K16 ["fillBehavior"]
  GETTABLEKS R8 R0 K27 ["onConfirm"]
  SETTABLEKS R8 R7 K17 ["onActivated"]
  MOVE R8 R3
  CALL R8 0 1
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  LOADK R8 K28 ["Assistant-ToolConfirmation-Accept"]
  SETTABLEKS R8 R7 K8 ["testId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K29 ["AcceptButton"]
  GETUPVAL R5 5
  GETUPVAL R6 7
  DUPTABLE R7 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
  GETTABLEKS R8 R2 K30 ["Reject"]
  SETTABLEKS R8 R7 K13 ["text"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K21 ["ButtonSize"]
  GETTABLEKS R8 R9 K22 ["XSmall"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K23 ["ButtonVariant"]
  GETTABLEKS R8 R9 K31 ["Standard"]
  SETTABLEKS R8 R7 K15 ["variant"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K25 ["FillBehavior"]
  GETTABLEKS R8 R9 K26 ["Fill"]
  SETTABLEKS R8 R7 K16 ["fillBehavior"]
  GETTABLEKS R8 R0 K32 ["onReject"]
  SETTABLEKS R8 R7 K17 ["onActivated"]
  MOVE R8 R3
  CALL R8 0 1
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  LOADK R8 K33 ["Assistant-ToolConfirmation-Reject"]
  SETTABLEKS R8 R7 K8 ["testId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K34 ["RejectButton"]
  GETUPVAL R5 5
  GETUPVAL R6 7
  DUPTABLE R7 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
  GETTABLEKS R8 R2 K35 ["AlwaysAccept"]
  SETTABLEKS R8 R7 K13 ["text"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K21 ["ButtonSize"]
  GETTABLEKS R8 R9 K22 ["XSmall"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K23 ["ButtonVariant"]
  GETTABLEKS R8 R9 K31 ["Standard"]
  SETTABLEKS R8 R7 K15 ["variant"]
  GETUPVAL R11 8
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K25 ["FillBehavior"]
  GETTABLEKS R8 R9 K26 ["Fill"]
  SETTABLEKS R8 R7 K16 ["fillBehavior"]
  GETTABLEKS R8 R0 K36 ["onAlwaysAccept"]
  SETTABLEKS R8 R7 K17 ["onActivated"]
  MOVE R8 R3
  CALL R8 0 1
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  LOADK R8 K37 ["Assistant-ToolConfirmation-AlwaysAccept"]
  SETTABLEKS R8 R7 K8 ["testId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K38 ["AlwaysAcceptButton"]
  GETUPVAL R5 5
  GETUPVAL R6 9
  DUPTABLE R7 K39 [{"tag", "LayoutOrder"}]
  LOADK R8 K40 ["col size-full-0 auto-y gap-small"]
  SETTABLEKS R8 R7 K5 ["tag"]
  GETTABLEKS R8 R0 K7 ["LayoutOrder"]
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  MOVE R8 R4
  CALL R5 3 -1
  RETURN R5 -1

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
  GETTABLEKS R6 R0 K6 ["Components"]
  GETTABLEKS R5 R6 K10 ["Contexts"]
  GETTABLEKS R4 R5 K11 ["PacketReceivedContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Parent"]
  GETTABLEKS R5 R6 K12 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K8 ["Parent"]
  GETTABLEKS R6 R7 K13 ["ReactUtils"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K14 ["Resources"]
  GETTABLEKS R8 R9 K15 ["Localization"]
  GETTABLEKS R7 R8 K16 ["Translator"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R8 R0 K17 ["Types"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R10 R0 K18 ["Hooks"]
  GETTABLEKS R9 R10 K19 ["useToolDisplayName"]
  CALL R8 1 1
  GETTABLEKS R9 R2 K20 ["View"]
  GETTABLEKS R10 R2 K21 ["Text"]
  GETTABLEKS R11 R2 K22 ["Button"]
  GETTABLEKS R12 R5 K23 ["createNextOrder"]
  GETTABLEKS R13 R4 K24 ["createElement"]
  GETTABLEKS R14 R3 K25 ["useMarkUserInputRequired"]
  DUPCLOSURE R15 K26 [PROTO_1]
  CAPTURE VAL R14
  CAPTURE VAL R8
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R12
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R9
  DUPTABLE R16 K29 [{"Type", "ContentWidget"}]
  LOADK R17 K30 ["ToolConfirmation"]
  SETTABLEKS R17 R16 K27 ["Type"]
  GETTABLEKS R17 R4 K31 ["memo"]
  MOVE R18 R15
  CALL R17 1 1
  SETTABLEKS R17 R16 K28 ["ContentWidget"]
  GETTABLEKS R17 R1 K32 ["registerWidget"]
  GETTABLEKS R18 R16 K27 ["Type"]
  GETTABLEKS R19 R16 K28 ["ContentWidget"]
  CALL R17 2 0
  RETURN R16 1
