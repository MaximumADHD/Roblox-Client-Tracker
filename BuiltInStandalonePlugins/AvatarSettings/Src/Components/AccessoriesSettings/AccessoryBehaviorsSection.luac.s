PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["accessoryBehaviorEnableSoundSetting"]
  GETTABLEKS R0 R1 K1 ["set"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["accessoryBehaviorEnableSoundSetting"]
  GETTABLEKS R2 R3 K2 ["value"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["accessoryBehaviorEnableVFXSetting"]
  GETTABLEKS R0 R1 K1 ["set"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["accessoryBehaviorEnableVFXSetting"]
  GETTABLEKS R2 R3 K2 ["value"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R2 1
  CALL R2 0 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K1 ["useContext"]
  GETUPVAL R4 3
  CALL R3 1 1
  GETTABLEKS R6 R3 K2 ["settings"]
  JUMPIFNOTEQKNIL R6 [+2]
  LOADB R5 0 +1
  LOADB R5 1
  FASTCALL2K ASSERT R5 K3 [+4]
  LOADK R6 K3 ["Settings must not be nil in AvatarSettingsContext"]
  GETIMPORT R4 K5 [assert]
  CALL R4 2 0
  GETTABLEKS R5 R3 K2 ["settings"]
  GETTABLEKS R4 R5 K6 ["accessoriesSettings"]
  GETUPVAL R5 4
  GETUPVAL R6 5
  DUPTABLE R7 K10 [{"text", "layoutOrder", "showWarning"}]
  LOADK R10 K11 ["AccessoriesSettings"]
  LOADK R11 K12 ["AccessoryBehaviorsSection"]
  NAMECALL R8 R1 K13 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["text"]
  GETTABLEKS R8 R0 K8 ["layoutOrder"]
  SETTABLEKS R8 R7 K8 ["layoutOrder"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["showWarning"]
  DUPTABLE R8 K17 [{"Description", "EnableSoundCheckbox", "EnableVFXCheckbox"}]
  GETUPVAL R9 4
  LOADK R10 K18 ["TextLabel"]
  NEWTABLE R11 8 0
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K19 ["Tag"]
  LOADK R13 K20 ["Component-TextLabel SubText"]
  SETTABLE R13 R11 R12
  GETIMPORT R12 K23 [UDim2.fromOffset]
  LOADN R13 0
  GETUPVAL R15 6
  GETTABLEKS R14 R15 K24 ["STANDARD_HEIGHT"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K25 ["Size"]
  GETIMPORT R12 K29 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K27 ["AutomaticSize"]
  LOADK R14 K11 ["AccessoriesSettings"]
  LOADK R15 K30 ["AccessoryBehaviorsSectionSubText"]
  NAMECALL R12 R1 K13 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K31 ["Text"]
  GETIMPORT R12 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R12 R11 K32 ["TextXAlignment"]
  LOADB R12 1
  SETTABLEKS R12 R11 K35 ["TextWrapped"]
  MOVE R12 R2
  CALL R12 0 1
  SETTABLEKS R12 R11 K36 ["LayoutOrder"]
  DUPTABLE R12 K38 [{"Tooltip"}]
  GETUPVAL R13 4
  GETUPVAL R14 7
  DUPTABLE R15 K39 [{"Text"}]
  LOADK R18 K11 ["AccessoriesSettings"]
  LOADK R19 K30 ["AccessoryBehaviorsSectionSubText"]
  NAMECALL R16 R1 K13 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K31 ["Text"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K37 ["Tooltip"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["Description"]
  GETUPVAL R9 4
  GETUPVAL R10 8
  DUPTABLE R11 K42 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
  MOVE R12 R2
  CALL R12 0 1
  SETTABLEKS R12 R11 K36 ["LayoutOrder"]
  GETTABLEKS R13 R4 K43 ["accessoryBehaviorEnableSoundSetting"]
  GETTABLEKS R12 R13 K44 ["value"]
  SETTABLEKS R12 R11 K40 ["Checked"]
  LOADK R14 K11 ["AccessoriesSettings"]
  LOADK R15 K45 ["AccessoryBehaviorsSectionEnableSound"]
  NAMECALL R12 R1 K13 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K31 ["Text"]
  NEWCLOSURE R12 P0
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K41 ["OnClick"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K15 ["EnableSoundCheckbox"]
  GETUPVAL R9 4
  GETUPVAL R10 8
  DUPTABLE R11 K42 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
  MOVE R12 R2
  CALL R12 0 1
  SETTABLEKS R12 R11 K36 ["LayoutOrder"]
  GETTABLEKS R13 R4 K46 ["accessoryBehaviorEnableVFXSetting"]
  GETTABLEKS R12 R13 K44 ["value"]
  SETTABLEKS R12 R11 K40 ["Checked"]
  LOADK R14 K11 ["AccessoriesSettings"]
  LOADK R15 K47 ["AccessoryBehaviorsSectionEnableVFX"]
  NAMECALL R12 R1 K13 ["getText"]
  CALL R12 3 1
  SETTABLEKS R12 R11 K31 ["Text"]
  NEWCLOSURE R12 P1
  CAPTURE VAL R4
  SETTABLEKS R12 R11 K41 ["OnClick"]
  CALL R9 2 1
  SETTABLEKS R9 R8 K16 ["EnableVFXCheckbox"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarSettings"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["Contexts"]
  GETTABLEKS R2 R3 K9 ["AvatarSettingsContext"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K10 ["Util"]
  GETTABLEKS R3 R4 K11 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Components"]
  GETTABLEKS R4 R5 K12 ["ExpandableSection"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K13 ["Packages"]
  GETTABLEKS R5 R6 K14 ["Framework"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K13 ["Packages"]
  GETTABLEKS R6 R7 K15 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K13 ["Packages"]
  GETTABLEKS R7 R8 K16 ["ReactUtils"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K17 ["ContextServices"]
  GETTABLEKS R8 R7 K18 ["Localization"]
  GETTABLEKS R9 R4 K19 ["UI"]
  GETTABLEKS R10 R9 K20 ["Checkbox"]
  GETTABLEKS R11 R9 K21 ["Tooltip"]
  GETTABLEKS R12 R6 K22 ["createNextOrder"]
  GETTABLEKS R13 R5 K23 ["createElement"]
  DUPCLOSURE R14 K24 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R12
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R13
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R11
  CAPTURE VAL R10
  RETURN R14 1
