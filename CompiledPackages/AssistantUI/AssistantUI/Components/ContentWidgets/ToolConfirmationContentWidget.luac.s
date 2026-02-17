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
  JUMPIFNOT R5 [+24]
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
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K11 ["ToolConfirmation"]
  GETTABLEKS R8 R9 K12 ["Warning"]
  SETTABLEKS R8 R7 K8 ["testId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K12 ["Warning"]
  GETUPVAL R5 5
  GETUPVAL R6 8
  DUPTABLE R7 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
  GETTABLEKS R8 R2 K19 ["Accept"]
  SETTABLEKS R8 R7 K13 ["text"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K21 ["ButtonSize"]
  GETTABLEKS R8 R9 K22 ["XSmall"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K23 ["ButtonVariant"]
  GETTABLEKS R8 R9 K24 ["Emphasis"]
  SETTABLEKS R8 R7 K15 ["variant"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K25 ["FillBehavior"]
  GETTABLEKS R8 R9 K26 ["Fill"]
  SETTABLEKS R8 R7 K16 ["fillBehavior"]
  GETTABLEKS R8 R0 K27 ["onConfirm"]
  SETTABLEKS R8 R7 K17 ["onActivated"]
  MOVE R8 R3
  CALL R8 0 1
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K11 ["ToolConfirmation"]
  GETTABLEKS R8 R9 K19 ["Accept"]
  SETTABLEKS R8 R7 K8 ["testId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K28 ["AcceptButton"]
  GETUPVAL R5 5
  GETUPVAL R6 8
  DUPTABLE R7 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
  GETTABLEKS R8 R2 K29 ["Reject"]
  SETTABLEKS R8 R7 K13 ["text"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K21 ["ButtonSize"]
  GETTABLEKS R8 R9 K22 ["XSmall"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K23 ["ButtonVariant"]
  GETTABLEKS R8 R9 K30 ["Standard"]
  SETTABLEKS R8 R7 K15 ["variant"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K25 ["FillBehavior"]
  GETTABLEKS R8 R9 K26 ["Fill"]
  SETTABLEKS R8 R7 K16 ["fillBehavior"]
  GETTABLEKS R8 R0 K31 ["onReject"]
  SETTABLEKS R8 R7 K17 ["onActivated"]
  MOVE R8 R3
  CALL R8 0 1
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K11 ["ToolConfirmation"]
  GETTABLEKS R8 R9 K29 ["Reject"]
  SETTABLEKS R8 R7 K8 ["testId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K32 ["RejectButton"]
  GETUPVAL R5 5
  GETUPVAL R6 8
  DUPTABLE R7 K18 [{"text", "size", "variant", "fillBehavior", "onActivated", "LayoutOrder", "testId"}]
  GETTABLEKS R8 R2 K33 ["AlwaysAccept"]
  SETTABLEKS R8 R7 K13 ["text"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K21 ["ButtonSize"]
  GETTABLEKS R8 R9 K22 ["XSmall"]
  SETTABLEKS R8 R7 K14 ["size"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K23 ["ButtonVariant"]
  GETTABLEKS R8 R9 K30 ["Standard"]
  SETTABLEKS R8 R7 K15 ["variant"]
  GETUPVAL R11 9
  GETTABLEKS R10 R11 K20 ["Enums"]
  GETTABLEKS R9 R10 K25 ["FillBehavior"]
  GETTABLEKS R8 R9 K26 ["Fill"]
  SETTABLEKS R8 R7 K16 ["fillBehavior"]
  GETTABLEKS R8 R0 K34 ["onAlwaysAccept"]
  SETTABLEKS R8 R7 K17 ["onActivated"]
  MOVE R8 R3
  CALL R8 0 1
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  GETUPVAL R10 7
  GETTABLEKS R9 R10 K11 ["ToolConfirmation"]
  GETTABLEKS R8 R9 K33 ["AlwaysAccept"]
  SETTABLEKS R8 R7 K8 ["testId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K35 ["AlwaysAcceptButton"]
  GETUPVAL R5 5
  GETUPVAL R6 10
  DUPTABLE R7 K36 [{"tag", "LayoutOrder"}]
  LOADK R8 K37 ["col size-full-0 auto-y gap-small"]
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
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["ContentWidgetRegistry"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K8 ["Parent"]
  GETTABLEKS R3 R4 K9 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["Contexts"]
  GETTABLEKS R4 R5 K12 ["PacketReceivedContext"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K8 ["Parent"]
  GETTABLEKS R5 R6 K13 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K8 ["Parent"]
  GETTABLEKS R6 R7 K14 ["ReactUtils"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K6 ["Util"]
  GETTABLEKS R7 R8 K15 ["TestIds"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K16 ["Resources"]
  GETTABLEKS R9 R10 K17 ["Localization"]
  GETTABLEKS R8 R9 K18 ["Translator"]
  CALL R7 1 1
  GETIMPORT R8 K5 [require]
  GETTABLEKS R9 R0 K19 ["Types"]
  CALL R8 1 1
  GETIMPORT R9 K5 [require]
  GETTABLEKS R11 R0 K20 ["Hooks"]
  GETTABLEKS R10 R11 K21 ["useToolDisplayName"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R12 R0 K22 ["Flags"]
  GETTABLEKS R11 R12 K23 ["FFlagAssistantRegisterWidgetsThroughTools"]
  CALL R10 1 1
  GETTABLEKS R11 R2 K24 ["View"]
  GETTABLEKS R12 R2 K25 ["Text"]
  GETTABLEKS R13 R2 K26 ["Button"]
  GETTABLEKS R14 R5 K27 ["createNextOrder"]
  GETTABLEKS R15 R4 K28 ["createElement"]
  GETTABLEKS R16 R3 K29 ["useMarkUserInputRequired"]
  DUPCLOSURE R17 K30 [PROTO_1]
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R14
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R6
  CAPTURE VAL R13
  CAPTURE VAL R2
  CAPTURE VAL R11
  DUPTABLE R18 K33 [{"Type", "ContentWidget"}]
  LOADK R19 K34 ["ToolConfirmation"]
  SETTABLEKS R19 R18 K31 ["Type"]
  GETTABLEKS R19 R4 K35 ["memo"]
  MOVE R20 R17
  CALL R19 1 1
  SETTABLEKS R19 R18 K32 ["ContentWidget"]
  MOVE R19 R10
  CALL R19 0 1
  JUMPIF R19 [+7]
  GETTABLEKS R19 R1 K36 ["registerWidget"]
  GETTABLEKS R20 R18 K31 ["Type"]
  GETTABLEKS R21 R18 K32 ["ContentWidget"]
  CALL R19 2 0
  RETURN R18 1
