PROTO_0:
  DUPTABLE R0 K1 [{"FirstPartyTool"}]
  GETUPVAL R1 0
  LOADK R3 K2 ["SettingsDialog"]
  LOADK R4 K3 ["FirstPartyTools"]
  NAMECALL R1 R1 K4 ["getText"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K0 ["FirstPartyTool"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Context"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["useMemo"]
  DUPCLOSURE R3 K3 [PROTO_0]
  CAPTURE UPVAL U2
  NEWTABLE R4 0 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["locale"]
  SETLIST R4 R5 1 [1]
  CALL R2 2 1
  NEWTABLE R3 0 0
  GETUPVAL R4 3
  GETUPVAL R5 4
  DUPTABLE R6 K8 [{"tag", "Text", "LayoutOrder"}]
  LOADK R7 K9 ["auto-xy text-caption-small text-wrap text-align-x-left"]
  SETTABLEKS R7 R6 K5 ["tag"]
  GETTABLEKS R7 R2 K10 ["FirstPartyTool"]
  SETTABLEKS R7 R6 K6 ["Text"]
  GETUPVAL R7 5
  CALL R7 0 1
  SETTABLEKS R7 R6 K7 ["LayoutOrder"]
  CALL R4 2 1
  SETTABLEKS R4 R3 K11 ["FirstPartyToolLabel"]
  GETTABLEKS R4 R1 K12 ["options"]
  JUMPIFNOT R4 [+78]
  LENGTH R5 R4
  LOADN R6 0
  JUMPIFNOTLT R6 R5 [+75]
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  GETTABLEKS R10 R9 K13 ["label"]
  GETUPVAL R11 3
  GETUPVAL R12 6
  DUPTABLE R13 K15 [{"testId", "LayoutOrder", "tag"}]
  LOADK R14 K16 ["Assistant-ToolMenuView-Option-Container"]
  SETTABLEKS R14 R13 K14 ["testId"]
  GETUPVAL R14 5
  CALL R14 0 1
  SETTABLEKS R14 R13 K7 ["LayoutOrder"]
  LOADK R14 K17 ["row size-full-0 auto-y gap-small flex-y-fill align-y-center"]
  SETTABLEKS R14 R13 K5 ["tag"]
  DUPTABLE R14 K20 [{"Checkbox", "Label"}]
  GETUPVAL R15 3
  GETUPVAL R16 7
  DUPTABLE R17 K24 [{"testId", "LayoutOrder", "isChecked", "onActivated", "label", "size"}]
  LOADK R18 K25 ["Assistant-ToolMenuView-Option-Checkbox"]
  SETTABLEKS R18 R17 K14 ["testId"]
  GETUPVAL R18 5
  CALL R18 0 1
  SETTABLEKS R18 R17 K7 ["LayoutOrder"]
  GETTABLEKS R18 R9 K21 ["isChecked"]
  SETTABLEKS R18 R17 K21 ["isChecked"]
  GETTABLEKS R18 R9 K26 ["onChange"]
  SETTABLEKS R18 R17 K22 ["onActivated"]
  LOADK R18 K27 [""]
  SETTABLEKS R18 R17 K13 ["label"]
  GETUPVAL R21 8
  GETTABLEKS R20 R21 K28 ["Enums"]
  GETTABLEKS R19 R20 K29 ["InputSize"]
  GETTABLEKS R18 R19 K30 ["XSmall"]
  SETTABLEKS R18 R17 K23 ["size"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K18 ["Checkbox"]
  GETUPVAL R15 3
  GETUPVAL R16 4
  DUPTABLE R17 K8 [{"tag", "Text", "LayoutOrder"}]
  LOADK R18 K31 ["auto-xy text-body-small text-no-wrap text-align-x-left"]
  SETTABLEKS R18 R17 K5 ["tag"]
  GETTABLEKS R18 R9 K32 ["displayLabel"]
  SETTABLEKS R18 R17 K6 ["Text"]
  GETUPVAL R18 5
  CALL R18 0 1
  SETTABLEKS R18 R17 K7 ["LayoutOrder"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K19 ["Label"]
  CALL R11 3 1
  SETTABLE R11 R3 R10
  FORGLOOP R5 2 [-69]
  GETUPVAL R5 3
  GETUPVAL R6 6
  DUPTABLE R7 K33 [{"tag", "LayoutOrder"}]
  LOADK R8 K34 ["size-full-full"]
  SETTABLEKS R8 R7 K5 ["tag"]
  GETTABLEKS R8 R0 K7 ["LayoutOrder"]
  SETTABLEKS R8 R7 K7 ["LayoutOrder"]
  DUPTABLE R8 K36 [{"MainView"}]
  GETUPVAL R9 3
  GETUPVAL R10 6
  DUPTABLE R11 K37 [{"tag", "testId"}]
  LOADK R12 K38 ["col auto-xy padding-small gap-small bg-surface-100"]
  SETTABLEKS R12 R11 K5 ["tag"]
  LOADK R12 K39 ["Assistant-ToolMenuView"]
  SETTABLEKS R12 R11 K14 ["testId"]
  MOVE R12 R3
  CALL R9 3 1
  SETTABLEKS R9 R8 K35 ["MainView"]
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
  GETTABLEKS R7 R1 K17 ["Text"]
  GETTABLEKS R8 R1 K18 ["View"]
  GETTABLEKS R9 R4 K19 ["createNextOrder"]
  MOVE R10 R9
  CALL R10 0 1
  GETTABLEKS R11 R3 K20 ["createElement"]
  DUPCLOSURE R12 K21 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R11
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R1
  RETURN R12 1
