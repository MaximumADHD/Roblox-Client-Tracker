PROTO_0:
  LOADK R3 K0 ["SeparatorFrame"]
  GETUPVAL R4 0
  CONCAT R2 R3 R4
  GETUPVAL R3 0
  ADDK R3 R3 K1 [1]
  SETUPVAL R3 0
  GETUPVAL R3 1
  GETUPVAL R4 2
  DUPTABLE R5 K4 [{"tag", "LayoutOrder"}]
  LOADK R6 K5 ["size-full-0 auto-y radius-medium bg-surface-100"]
  SETTABLEKS R6 R5 K2 ["tag"]
  SETTABLEKS R1 R5 K3 ["LayoutOrder"]
  DUPTABLE R6 K7 [{"Separator"}]
  GETUPVAL R7 1
  GETUPVAL R8 3
  DUPTABLE R9 K10 [{"variant", "orientation", "LayoutOrder"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K11 ["Enums"]
  GETTABLEKS R11 R12 K12 ["DividerVariant"]
  GETTABLEKS R10 R11 K13 ["Default"]
  SETTABLEKS R10 R9 K8 ["variant"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K11 ["Enums"]
  GETTABLEKS R11 R12 K14 ["DividerOrientation"]
  GETTABLEKS R10 R11 K15 ["Horizontal"]
  SETTABLEKS R10 R9 K9 ["orientation"]
  GETUPVAL R10 5
  CALL R10 0 1
  SETTABLEKS R10 R9 K3 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["Separator"]
  CALL R3 3 1
  SETTABLE R3 R0 R2
  RETURN R0 0

PROTO_1:
  DUPTABLE R0 K4 [{"ManageMcpIntegration", "EditApiKeys", "FirstPartyTool", "Integrations"}]
  LOADK R1 K5 ["Manage Integrations"]
  SETTABLEKS R1 R0 K0 ["ManageMcpIntegration"]
  GETUPVAL R1 0
  LOADK R3 K6 ["SettingsDialog"]
  LOADK R4 K1 ["EditApiKeys"]
  NAMECALL R1 R1 K7 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K1 ["EditApiKeys"]
  LOADK R1 K8 ["First party tools"]
  SETTABLEKS R1 R0 K2 ["FirstPartyTool"]
  LOADK R1 K3 ["Integrations"]
  SETTABLEKS R1 R0 K3 ["Integrations"]
  RETURN R0 1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["useMemo"]
  DUPCLOSURE R3 K3 [PROTO_1]
  CAPTURE UPVAL U2
  NEWTABLE R4 0 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["locale"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  NEWTABLE R3 0 0
  GETUPVAL R4 3
  CALL R4 0 1
  JUMPIFNOT R4 [+21]
  GETUPVAL R4 4
  GETUPVAL R5 5
  DUPTABLE R6 K9 [{"tag", "Text", "LayoutOrder", "onActivated"}]
  LOADK R7 K10 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
  SETTABLEKS R7 R6 K5 ["tag"]
  GETTABLEKS R7 R2 K11 ["ManageMcpIntegration"]
  SETTABLEKS R7 R6 K6 ["Text"]
  GETUPVAL R7 6
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  GETTABLEKS R7 R0 K12 ["openAddIntegrationDialog"]
  SETTABLEKS R7 R6 K8 ["onActivated"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K13 ["ManageIntegrationsButton"]
  GETUPVAL R4 7
  CALL R4 0 1
  JUMPIFNOT R4 [+21]
  GETUPVAL R4 4
  GETUPVAL R5 5
  DUPTABLE R6 K9 [{"tag", "Text", "LayoutOrder", "onActivated"}]
  LOADK R7 K10 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
  SETTABLEKS R7 R6 K5 ["tag"]
  GETTABLEKS R7 R2 K14 ["EditApiKeys"]
  SETTABLEKS R7 R6 K6 ["Text"]
  GETUPVAL R7 6
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  GETTABLEKS R7 R0 K15 ["openApiKeysDialog"]
  SETTABLEKS R7 R6 K8 ["onActivated"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K16 ["EditApiKeysButton"]
  GETUPVAL R4 8
  MOVE R5 R3
  GETUPVAL R6 6
  CALL R6 0 -1
  CALL R4 -1 0
  GETUPVAL R4 4
  GETUPVAL R5 5
  DUPTABLE R6 K17 [{"tag", "Text", "LayoutOrder"}]
  LOADK R7 K18 ["auto-xy text-caption-small text-wrap text-align-x-left"]
  SETTABLEKS R7 R6 K5 ["tag"]
  GETTABLEKS R7 R2 K19 ["FirstPartyTool"]
  SETTABLEKS R7 R6 K6 ["Text"]
  GETUPVAL R7 6
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K20 ["FirstPartyToolLabel"]
  GETTABLEKS R4 R1 K21 ["options"]
  JUMPIFNOT R4 [+78]
  LENGTH R5 R4
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+75]
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R9 K22 ["label"]
  GETUPVAL R11 4
  GETUPVAL R12 9
  DUPTABLE R13 K24 [{"testId", "LayoutOrder", "tag"}]
  LOADK R14 K25 ["Assistant-ToolMenuView-Option-Container"]
  SETTABLEKS R14 R13 K23 ["testId"]
  GETUPVAL R14 6
  CALL R14 0 1
  SETTABLEKS R14 R13 K7 ["LayoutOrder"]
  LOADK R14 K26 ["row size-full-0 auto-y gap-small flex-y-fill align-y-center"]
  SETTABLEKS R14 R13 K5 ["tag"]
  DUPTABLE R14 K29 [{"Checkbox", "Label"}]
  GETUPVAL R15 4
  GETUPVAL R16 10
  DUPTABLE R17 K32 [{"testId", "LayoutOrder", "isChecked", "onActivated", "label", "size"}]
  LOADK R18 K33 ["Assistant-ToolMenuView-Option-Checkbox"]
  SETTABLEKS R18 R17 K23 ["testId"]
  GETUPVAL R18 6
  CALL R18 0 1
  SETTABLEKS R18 R17 K7 ["LayoutOrder"]
  GETTABLEKS R18 R9 K30 ["isChecked"]
  SETTABLEKS R18 R17 K30 ["isChecked"]
  GETTABLEKS R18 R9 K34 ["onChange"]
  SETTABLEKS R18 R17 K8 ["onActivated"]
  LOADK R18 K35 [""]
  SETTABLEKS R18 R17 K22 ["label"]
  GETUPVAL R21 11
  GETTABLEKS R20 R21 K36 ["Enums"]
  GETTABLEKS R19 R20 K37 ["InputSize"]
  GETTABLEKS R18 R19 K38 ["XSmall"]
  SETTABLEKS R18 R17 K31 ["size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K27 ["Checkbox"]
  GETUPVAL R15 4
  GETUPVAL R16 5
  DUPTABLE R17 K17 [{"tag", "Text", "LayoutOrder"}]
  LOADK R18 K10 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
  SETTABLEKS R18 R17 K5 ["tag"]
  GETTABLEKS R18 R9 K39 ["displayLabel"]
  SETTABLEKS R18 R17 K6 ["Text"]
  GETUPVAL R18 6
  CALL R18 0 1
  SETTABLEKS R18 R17 K7 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K28 ["Label"]
  CALL R11 3 1
  SETTABLE R11 R3 R10
  FORGLOOP R5 2 [-69]
  GETUPVAL R5 4
  GETUPVAL R6 9
  DUPTABLE R7 K40 [{"tag", "LayoutOrder"}]
  LOADK R8 K41 ["size-full-full"]
  SETTABLEKS R8 R7 K5 ["tag"]
  GETTABLEKS R8 R0 K7 ["LayoutOrder"]
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  DUPTABLE R8 K43 [{"MainView"}]
  GETUPVAL R9 4
  GETUPVAL R10 9
  DUPTABLE R11 K44 [{"tag", "testId"}]
  LOADK R12 K45 ["col auto-xy padding-small gap-small bg-surface-100"]
  SETTABLEKS R12 R11 K5 ["tag"]
  LOADK R12 K46 ["Assistant-ToolMenuView"]
  SETTABLEKS R12 R11 K23 ["testId"]
  MOVE R12 R3
  CALL R9 3 1
  SETTABLEKS R9 R8 K42 ["MainView"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Flags"]
  GETTABLEKS R2 R3 K7 ["FFlagMCPAssistantExternalAPIKey"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Flags"]
  GETTABLEKS R3 R4 K8 ["FFlagMCPAssistantManagementMenu"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K9 ["Parent"]
  GETTABLEKS R4 R5 K10 ["Foundation"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K11 ["Components"]
  GETTABLEKS R6 R7 K12 ["Contexts"]
  GETTABLEKS R5 R6 K13 ["OptionsContext"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K9 ["Parent"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K9 ["Parent"]
  GETTABLEKS R7 R8 K15 ["ReactUtils"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K16 ["Resources"]
  GETTABLEKS R9 R10 K17 ["Localization"]
  GETTABLEKS R8 R9 K18 ["Translator"]
  CALL R7 1 1
  GETTABLEKS R8 R3 K19 ["Checkbox"]
  GETTABLEKS R9 R3 K20 ["Divider"]
  GETTABLEKS R10 R3 K21 ["Text"]
  GETTABLEKS R11 R3 K22 ["View"]
  GETTABLEKS R12 R1 K23 ["Get"]
  GETTABLEKS R13 R2 K23 ["Get"]
  GETTABLEKS R14 R6 K24 ["createNextOrder"]
  MOVE R15 R14
  CALL R15 0 1
  GETTABLEKS R16 R5 K25 ["createElement"]
  LOADN R17 0
  NEWCLOSURE R18 P0
  CAPTURE REF R17
  CAPTURE VAL R16
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R15
  DUPCLOSURE R19 K26 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R13
  CAPTURE VAL R16
  CAPTURE VAL R10
  CAPTURE VAL R15
  CAPTURE VAL R12
  CAPTURE VAL R18
  CAPTURE VAL R11
  CAPTURE VAL R8
  CAPTURE VAL R3
  CLOSEUPVALS R17
  RETURN R19 1
