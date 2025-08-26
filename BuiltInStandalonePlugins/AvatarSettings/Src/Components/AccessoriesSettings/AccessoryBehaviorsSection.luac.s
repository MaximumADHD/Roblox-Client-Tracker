PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+22]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["accessoryBehaviorEnableSoundSetting"]
  GETTABLEKS R1 R2 K1 ["value"]
  NOT R0 R1
  GETUPVAL R1 2
  LOADK R3 K2 ["AccessorySoundToggled"]
  DUPTABLE R4 K4 [{"enabled"}]
  SETTABLEKS R0 R4 K3 ["enabled"]
  NAMECALL R1 R1 K5 ["logCounter"]
  CALL R1 3 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["accessoryBehaviorEnableSoundSetting"]
  GETTABLEKS R1 R2 K6 ["set"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["accessoryBehaviorEnableSoundSetting"]
  GETTABLEKS R0 R1 K6 ["set"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["accessoryBehaviorEnableSoundSetting"]
  GETTABLEKS R2 R3 K1 ["value"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFNOT R0 [+22]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["accessoryBehaviorEnableVFXSetting"]
  GETTABLEKS R1 R2 K1 ["value"]
  NOT R0 R1
  GETUPVAL R1 2
  LOADK R3 K2 ["AccessoryVFXToggled"]
  DUPTABLE R4 K4 [{"enabled"}]
  SETTABLEKS R0 R4 K3 ["enabled"]
  NAMECALL R1 R1 K5 ["logCounter"]
  CALL R1 3 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["accessoryBehaviorEnableVFXSetting"]
  GETTABLEKS R1 R2 K6 ["set"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["accessoryBehaviorEnableVFXSetting"]
  GETTABLEKS R0 R1 K6 ["set"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["accessoryBehaviorEnableVFXSetting"]
  GETTABLEKS R2 R3 K1 ["value"]
  NOT R1 R2
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  CALL R3 0 1
  JUMPIFNOT R3 [+5]
  GETUPVAL R2 2
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 1 1
  JUMP [+1]
  LOADNIL R2
  GETUPVAL R3 3
  CALL R3 0 1
  GETUPVAL R5 4
  GETTABLEKS R4 R5 K1 ["useContext"]
  GETUPVAL R5 5
  CALL R4 1 1
  GETTABLEKS R7 R4 K2 ["settings"]
  JUMPIFNOTEQKNIL R7 [+2]
  LOADB R6 0 +1
  LOADB R6 1
  FASTCALL2K ASSERT R6 K3 [+4]
  LOADK R7 K3 ["Settings must not be nil in AvatarSettingsContext"]
  GETIMPORT R5 K5 [assert]
  CALL R5 2 0
  GETTABLEKS R6 R4 K2 ["settings"]
  GETTABLEKS R5 R6 K6 ["accessoriesSettings"]
  GETUPVAL R6 6
  GETUPVAL R7 7
  DUPTABLE R8 K10 [{"text", "layoutOrder", "showWarning"}]
  LOADK R11 K11 ["AccessoriesSettings"]
  LOADK R12 K12 ["AccessoryBehaviorsSection"]
  NAMECALL R9 R1 K13 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["text"]
  GETTABLEKS R9 R0 K8 ["layoutOrder"]
  SETTABLEKS R9 R8 K8 ["layoutOrder"]
  LOADB R9 1
  SETTABLEKS R9 R8 K9 ["showWarning"]
  DUPTABLE R9 K17 [{"Description", "EnableSoundCheckbox", "EnableVFXCheckbox"}]
  GETUPVAL R10 6
  LOADK R11 K18 ["TextLabel"]
  NEWTABLE R12 8 0
  GETUPVAL R14 4
  GETTABLEKS R13 R14 K19 ["Tag"]
  LOADK R14 K20 ["Component-TextLabel SubText"]
  SETTABLE R14 R12 R13
  GETIMPORT R13 K23 [UDim2.fromOffset]
  LOADN R14 0
  GETUPVAL R16 8
  GETTABLEKS R15 R16 K24 ["STANDARD_HEIGHT"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K25 ["Size"]
  GETIMPORT R13 K29 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K27 ["AutomaticSize"]
  LOADK R15 K11 ["AccessoriesSettings"]
  LOADK R16 K30 ["AccessoryBehaviorsSectionSubText"]
  NAMECALL R13 R1 K13 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K31 ["Text"]
  GETIMPORT R13 K34 [Enum.TextXAlignment.Left]
  SETTABLEKS R13 R12 K32 ["TextXAlignment"]
  LOADB R13 1
  SETTABLEKS R13 R12 K35 ["TextWrapped"]
  MOVE R13 R3
  CALL R13 0 1
  SETTABLEKS R13 R12 K36 ["LayoutOrder"]
  DUPTABLE R13 K38 [{"Tooltip"}]
  GETUPVAL R14 6
  GETUPVAL R15 9
  DUPTABLE R16 K39 [{"Text"}]
  LOADK R19 K11 ["AccessoriesSettings"]
  LOADK R20 K30 ["AccessoryBehaviorsSectionSubText"]
  NAMECALL R17 R1 K13 ["getText"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K31 ["Text"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K37 ["Tooltip"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K14 ["Description"]
  GETUPVAL R10 6
  GETUPVAL R11 10
  DUPTABLE R12 K42 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
  MOVE R13 R3
  CALL R13 0 1
  SETTABLEKS R13 R12 K36 ["LayoutOrder"]
  GETTABLEKS R14 R5 K43 ["accessoryBehaviorEnableSoundSetting"]
  GETTABLEKS R13 R14 K44 ["value"]
  SETTABLEKS R13 R12 K40 ["Checked"]
  LOADK R15 K11 ["AccessoriesSettings"]
  LOADK R16 K45 ["AccessoryBehaviorsSectionEnableSound"]
  NAMECALL R13 R1 K13 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K31 ["Text"]
  NEWCLOSURE R13 P0
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K41 ["OnClick"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K15 ["EnableSoundCheckbox"]
  GETUPVAL R10 6
  GETUPVAL R11 10
  DUPTABLE R12 K42 [{"LayoutOrder", "Checked", "Text", "OnClick"}]
  MOVE R13 R3
  CALL R13 0 1
  SETTABLEKS R13 R12 K36 ["LayoutOrder"]
  GETTABLEKS R14 R5 K46 ["accessoryBehaviorEnableVFXSetting"]
  GETTABLEKS R13 R14 K44 ["value"]
  SETTABLEKS R13 R12 K40 ["Checked"]
  LOADK R15 K11 ["AccessoriesSettings"]
  LOADK R16 K47 ["AccessoryBehaviorsSectionEnableVFX"]
  NAMECALL R13 R1 K13 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K31 ["Text"]
  NEWCLOSURE R13 P1
  CAPTURE UPVAL U1
  CAPTURE VAL R5
  CAPTURE VAL R2
  SETTABLEKS R13 R12 K41 ["OnClick"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K16 ["EnableVFXCheckbox"]
  CALL R6 3 -1
  RETURN R6 -1

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
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K10 ["Util"]
  GETTABLEKS R11 R12 K19 ["Telemetry"]
  GETTABLEKS R10 R11 K20 ["TelemetryContext"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K21 ["Flags"]
  GETTABLEKS R11 R12 K22 ["getFFlagAddTelemetry"]
  CALL R10 1 1
  GETTABLEKS R11 R4 K23 ["UI"]
  GETTABLEKS R12 R11 K24 ["Checkbox"]
  GETTABLEKS R13 R11 K25 ["Tooltip"]
  GETTABLEKS R14 R6 K26 ["createNextOrder"]
  GETTABLEKS R15 R5 K27 ["createElement"]
  DUPCLOSURE R16 K28 [PROTO_2]
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R14
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R15
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R13
  CAPTURE VAL R12
  RETURN R16 1
