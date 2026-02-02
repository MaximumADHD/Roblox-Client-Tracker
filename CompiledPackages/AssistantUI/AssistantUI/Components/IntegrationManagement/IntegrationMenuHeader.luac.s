PROTO_0:
  RETURN R0 0

PROTO_1:
  DUPTABLE R0 K2 [{"ManageIntegrations", "Add"}]
  GETUPVAL R1 0
  LOADK R3 K3 ["IntegrationManagement"]
  LOADK R4 K0 ["ManageIntegrations"]
  NAMECALL R1 R1 K4 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["ManageIntegrations"]
  GETUPVAL R1 0
  LOADK R3 K5 ["Settings"]
  LOADK R4 K1 ["Add"]
  NAMECALL R1 R1 K4 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K1 ["Add"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["useMemo"]
  DUPCLOSURE R3 K1 [PROTO_1]
  CAPTURE UPVAL U2
  NEWTABLE R4 0 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K2 ["locale"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  GETTABLEKS R3 R0 K3 ["onAddIntegration"]
  GETUPVAL R4 3
  GETUPVAL R5 4
  DUPTABLE R6 K6 [{"LayoutOrder", "tag"}]
  MOVE R7 R1
  CALL R7 0 1
  SETTABLEKS R7 R6 K4 ["LayoutOrder"]
  LOADK R7 K7 ["col size-full-0 auto-y gap-small padding-x-large"]
  SETTABLEKS R7 R6 K5 ["tag"]
  DUPTABLE R7 K10 [{"TitleAndButton", "IntegrationsDisabledNotice"}]
  GETUPVAL R8 3
  GETUPVAL R9 4
  DUPTABLE R10 K6 [{"LayoutOrder", "tag"}]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  LOADK R11 K11 ["row size-full-0 auto-y gap-small align-y-center"]
  SETTABLEKS R11 R10 K5 ["tag"]
  DUPTABLE R11 K15 [{"TitleText", "Spacer", "AddIntegrationButtonContainer"}]
  GETUPVAL R12 3
  GETUPVAL R13 5
  DUPTABLE R14 K17 [{"tag", "Text", "LayoutOrder"}]
  LOADK R15 K18 ["auto-xy text-title-medium bold text-align-x-left"]
  SETTABLEKS R15 R14 K5 ["tag"]
  GETTABLEKS R15 R2 K19 ["ManageIntegrations"]
  SETTABLEKS R15 R14 K16 ["Text"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K4 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K12 ["TitleText"]
  GETUPVAL R12 3
  GETUPVAL R13 4
  DUPTABLE R14 K20 [{"tag", "LayoutOrder"}]
  LOADK R15 K21 ["fill"]
  SETTABLEKS R15 R14 K5 ["tag"]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K4 ["LayoutOrder"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K13 ["Spacer"]
  GETUPVAL R12 3
  GETUPVAL R13 4
  DUPTABLE R14 K23 [{"LayoutOrder", "tag", "GroupTransparency"}]
  MOVE R15 R1
  CALL R15 0 1
  SETTABLEKS R15 R14 K4 ["LayoutOrder"]
  LOADK R15 K24 ["auto-xy"]
  SETTABLEKS R15 R14 K5 ["tag"]
  JUMPIFNOT R3 [+2]
  LOADN R15 0
  JUMP [+1]
  LOADN R15 1
  SETTABLEKS R15 R14 K22 ["GroupTransparency"]
  DUPTABLE R15 K26 [{"AddIntegrationButton"}]
  GETUPVAL R16 3
  GETUPVAL R17 6
  DUPTABLE R18 K30 [{"text", "size", "onActivated"}]
  GETTABLEKS R19 R2 K31 ["Add"]
  SETTABLEKS R19 R18 K27 ["text"]
  GETUPVAL R20 7
  GETTABLEKS R19 R20 K32 ["XSmall"]
  SETTABLEKS R19 R18 K28 ["size"]
  JUMPIFNOT R3 [+2]
  MOVE R19 R3
  JUMP [+1]
  GETUPVAL R19 8
  SETTABLEKS R19 R18 K29 ["onActivated"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K25 ["AddIntegrationButton"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K14 ["AddIntegrationButtonContainer"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K8 ["TitleAndButton"]
  GETUPVAL R8 3
  GETUPVAL R9 9
  DUPTABLE R10 K33 [{"LayoutOrder"}]
  MOVE R11 R1
  CALL R11 0 1
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["IntegrationsDisabledNotice"]
  CALL R4 3 -1
  RETURN R4 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["IntegrationsDisabledNotice"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Parent"]
  GETTABLEKS R5 R6 K10 ["ReactUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Resources"]
  GETTABLEKS R7 R8 K12 ["Localization"]
  GETTABLEKS R6 R7 K13 ["Translator"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K14 ["Button"]
  GETTABLEKS R8 R2 K15 ["Enums"]
  GETTABLEKS R7 R8 K16 ["ButtonSize"]
  GETTABLEKS R8 R2 K17 ["Text"]
  GETTABLEKS R9 R2 K18 ["View"]
  GETTABLEKS R10 R4 K19 ["createNextOrder"]
  GETTABLEKS R11 R3 K20 ["createElement"]
  DUPCLOSURE R12 K21 [PROTO_0]
  DUPCLOSURE R13 K22 [PROTO_2]
  CAPTURE VAL R10
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R12
  CAPTURE VAL R1
  GETTABLEKS R14 R3 K23 ["memo"]
  MOVE R15 R13
  CALL R14 1 -1
  RETURN R14 -1
