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
  DUPTABLE R0 K3 [{"ManageMcpIntegration", "FirstPartyTool", "Integrations"}]
  LOADK R1 K4 ["Manage Integrations"]
  SETTABLEKS R1 R0 K0 ["ManageMcpIntegration"]
  LOADK R1 K5 ["First party tools"]
  SETTABLEKS R1 R0 K1 ["FirstPartyTool"]
  LOADK R1 K2 ["Integrations"]
  SETTABLEKS R1 R0 K2 ["Integrations"]
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
  NEWTABLE R4 0 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["locale"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  DUPTABLE R3 K6 [{"FirstPartyToolLabel"}]
  GETUPVAL R4 3
  GETUPVAL R5 4
  DUPTABLE R6 K10 [{"tag", "Text", "LayoutOrder"}]
  LOADK R7 K11 ["auto-xy text-caption-small text-wrap text-align-x-left"]
  SETTABLEKS R7 R6 K7 ["tag"]
  GETTABLEKS R7 R2 K12 ["FirstPartyTool"]
  SETTABLEKS R7 R6 K8 ["Text"]
  GETUPVAL R7 5
  CALL R7 0 1
  SETTABLEKS R7 R6 K9 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K5 ["FirstPartyToolLabel"]
  GETTABLEKS R4 R1 K13 ["options"]
  JUMPIFNOT R4 [+78]
  LENGTH R5 R4
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+75]
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R9 K14 ["label"]
  GETUPVAL R11 3
  GETUPVAL R12 6
  DUPTABLE R13 K16 [{"testId", "LayoutOrder", "tag"}]
  LOADK R14 K17 ["Assistant-ToolMenuView-Option-Container"]
  SETTABLEKS R14 R13 K15 ["testId"]
  GETUPVAL R14 5
  CALL R14 0 1
  SETTABLEKS R14 R13 K9 ["LayoutOrder"]
  LOADK R14 K18 ["row size-full-0 auto-y gap-small flex-y-fill align-y-center"]
  SETTABLEKS R14 R13 K7 ["tag"]
  DUPTABLE R14 K21 [{"Checkbox", "Label"}]
  GETUPVAL R15 3
  GETUPVAL R16 7
  DUPTABLE R17 K25 [{"testId", "LayoutOrder", "isChecked", "onActivated", "label", "size"}]
  LOADK R18 K26 ["Assistant-ToolMenuView-Option-Checkbox"]
  SETTABLEKS R18 R17 K15 ["testId"]
  GETUPVAL R18 5
  CALL R18 0 1
  SETTABLEKS R18 R17 K9 ["LayoutOrder"]
  GETTABLEKS R18 R9 K22 ["isChecked"]
  SETTABLEKS R18 R17 K22 ["isChecked"]
  GETTABLEKS R18 R9 K27 ["onChange"]
  SETTABLEKS R18 R17 K23 ["onActivated"]
  LOADK R18 K28 [""]
  SETTABLEKS R18 R17 K14 ["label"]
  GETUPVAL R21 8
  GETTABLEKS R20 R21 K29 ["Enums"]
  GETTABLEKS R19 R20 K30 ["InputSize"]
  GETTABLEKS R18 R19 K31 ["XSmall"]
  SETTABLEKS R18 R17 K24 ["size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K19 ["Checkbox"]
  GETUPVAL R15 3
  GETUPVAL R16 4
  DUPTABLE R17 K10 [{"tag", "Text", "LayoutOrder"}]
  LOADK R18 K32 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
  SETTABLEKS R18 R17 K7 ["tag"]
  GETTABLEKS R18 R9 K33 ["displayLabel"]
  SETTABLEKS R18 R17 K8 ["Text"]
  GETUPVAL R18 5
  CALL R18 0 1
  SETTABLEKS R18 R17 K9 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K20 ["Label"]
  CALL R11 3 1
  SETTABLE R11 R3 R10
  FORGLOOP R5 2 [-69]
  GETUPVAL R5 9
  MOVE R6 R3
  GETUPVAL R7 5
  CALL R7 0 -1
  CALL R5 -1 0
  GETUPVAL R5 3
  GETUPVAL R6 4
  DUPTABLE R7 K34 [{"tag", "Text", "LayoutOrder", "onActivated"}]
  LOADK R8 K32 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
  SETTABLEKS R8 R7 K7 ["tag"]
  GETTABLEKS R8 R2 K35 ["ManageMcpIntegration"]
  SETTABLEKS R8 R7 K8 ["Text"]
  GETUPVAL R8 5
  CALL R8 0 1
  SETTABLEKS R8 R7 K9 ["LayoutOrder"]
  GETTABLEKS R8 R0 K36 ["openAddIntegrationDialog"]
  SETTABLEKS R8 R7 K23 ["onActivated"]
  CALL R5 2 1
  SETTABLEKS R5 R3 K37 ["AddMCPToolButton"]
  GETUPVAL R5 3
  GETUPVAL R6 6
  DUPTABLE R7 K38 [{"tag", "LayoutOrder"}]
  LOADK R8 K39 ["size-full-full"]
  SETTABLEKS R8 R7 K7 ["tag"]
  GETTABLEKS R8 R0 K9 ["LayoutOrder"]
  SETTABLEKS R8 R7 K9 ["LayoutOrder"]
  DUPTABLE R8 K41 [{"MainView"}]
  GETUPVAL R9 3
  GETUPVAL R10 6
  DUPTABLE R11 K42 [{"tag", "testId"}]
  LOADK R12 K43 ["col auto-xy padding-small gap-small bg-surface-100"]
  SETTABLEKS R12 R11 K7 ["tag"]
  LOADK R12 K44 ["Assistant-ToolMenuView"]
  SETTABLEKS R12 R11 K15 ["testId"]
  MOVE R12 R3
  CALL R9 3 1
  SETTABLEKS R9 R8 K40 ["MainView"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Contexts"]
  GETTABLEKS R3 R4 K10 ["OptionsContext"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Parent"]
  GETTABLEKS R4 R5 K11 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Parent"]
  GETTABLEKS R5 R6 K12 ["ReactUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K13 ["Resources"]
  GETTABLEKS R7 R8 K14 ["Localization"]
  GETTABLEKS R6 R7 K15 ["Translator"]
  CALL R5 1 1
  GETTABLEKS R6 R1 K16 ["Checkbox"]
  GETTABLEKS R7 R1 K17 ["Divider"]
  GETTABLEKS R8 R1 K18 ["Text"]
  GETTABLEKS R9 R1 K19 ["View"]
  GETTABLEKS R10 R4 K20 ["createNextOrder"]
  MOVE R11 R10
  CALL R11 0 1
  GETTABLEKS R12 R3 K21 ["createElement"]
  LOADN R13 0
  NEWCLOSURE R14 P0
  CAPTURE REF R13
  CAPTURE VAL R12
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R11
  DUPCLOSURE R15 K22 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R12
  CAPTURE VAL R8
  CAPTURE VAL R11
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R1
  CAPTURE VAL R14
  CLOSEUPVALS R13
  RETURN R15 1
