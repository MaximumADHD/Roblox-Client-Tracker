PROTO_0:
  GETUPVAL R1 0
  JUMPIFEQ R1 R0 [+11]
  GETUPVAL R1 1
  LOADK R3 K0 ["AnimationPacksModeSelected"]
  DUPTABLE R4 K2 [{"animationPacksMode"}]
  GETTABLEKS R5 R0 K3 ["Name"]
  SETTABLEKS R5 R4 K1 ["animationPacksMode"]
  NAMECALL R1 R1 K4 ["logCounter"]
  CALL R1 3 0
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K5 ["animationPacksSetting"]
  GETTABLEKS R1 R2 K6 ["set"]
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
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
  NEWTABLE R5 0 3
  DUPTABLE R6 K8 [{"Id", "Label"}]
  GETIMPORT R7 K12 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
  SETTABLEKS R7 R6 K6 ["Id"]
  LOADK R9 K13 ["AnimationSettings"]
  LOADK R10 K14 ["AnimationPacksSectionPlayerChoiceButtonText"]
  NAMECALL R7 R1 K15 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Label"]
  DUPTABLE R7 K8 [{"Id", "Label"}]
  GETIMPORT R8 K17 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
  SETTABLEKS R8 R7 K6 ["Id"]
  LOADK R10 K13 ["AnimationSettings"]
  LOADK R11 K18 ["AnimationPacksSectionStandardR15ButtonText"]
  NAMECALL R8 R1 K15 ["getText"]
  CALL R8 3 1
  SETTABLEKS R8 R7 K7 ["Label"]
  DUPTABLE R8 K8 [{"Id", "Label"}]
  GETIMPORT R9 K20 [Enum.AvatarSettingsAnimationPacksMode.StandardR6]
  SETTABLEKS R9 R8 K6 ["Id"]
  LOADK R11 K13 ["AnimationSettings"]
  LOADK R12 K21 ["AnimationPacksSectionStandardR6ButtonText"]
  NAMECALL R9 R1 K15 ["getText"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K7 ["Label"]
  SETLIST R5 R6 3 [1]
  GETTABLEKS R7 R4 K2 ["settings"]
  GETTABLEKS R6 R7 K22 ["animationSettings"]
  GETTABLEKS R8 R6 K23 ["animationPacksSetting"]
  GETTABLEKS R7 R8 K24 ["value"]
  GETUPVAL R8 6
  GETUPVAL R9 7
  DUPTABLE R10 K28 [{"text", "layoutOrder", "showWarning"}]
  LOADK R13 K13 ["AnimationSettings"]
  LOADK R14 K29 ["AnimationPacksSection"]
  NAMECALL R11 R1 K15 ["getText"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K25 ["text"]
  GETTABLEKS R11 R0 K26 ["layoutOrder"]
  SETTABLEKS R11 R10 K26 ["layoutOrder"]
  LOADB R11 1
  SETTABLEKS R11 R10 K27 ["showWarning"]
  DUPTABLE R11 K31 [{"AnimationPacksModeSelector"}]
  GETUPVAL R12 6
  GETUPVAL R13 8
  DUPTABLE R14 K36 [{"layoutOrder", "items", "selected", "onItemActivated", "subText"}]
  MOVE R15 R3
  CALL R15 0 1
  SETTABLEKS R15 R14 K26 ["layoutOrder"]
  SETTABLEKS R5 R14 K32 ["items"]
  SETTABLEKS R7 R14 K33 ["selected"]
  GETUPVAL R16 1
  CALL R16 0 1
  JUMPIFNOT R16 [+5]
  NEWCLOSURE R15 P0
  CAPTURE VAL R7
  CAPTURE VAL R2
  CAPTURE VAL R6
  JUMP [+4]
  GETTABLEKS R16 R6 K23 ["animationPacksSetting"]
  GETTABLEKS R15 R16 K37 ["set"]
  SETTABLEKS R15 R14 K34 ["onItemActivated"]
  LOADK R17 K13 ["AnimationSettings"]
  GETIMPORT R19 K12 [Enum.AvatarSettingsAnimationPacksMode.PlayerChoice]
  JUMPIFNOTEQ R7 R19 [+3]
  LOADK R18 K38 ["AnimationPacksSectionPlayerChoiceSubText"]
  JUMP [+7]
  GETIMPORT R19 K17 [Enum.AvatarSettingsAnimationPacksMode.StandardR15]
  JUMPIFNOTEQ R7 R19 [+3]
  LOADK R18 K39 ["AnimationPacksSectionStandardR15SubText"]
  JUMP [+1]
  LOADK R18 K40 ["AnimationPacksSectionStandardR6SubText"]
  NAMECALL R15 R1 K15 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K35 ["subText"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K30 ["AnimationPacksModeSelector"]
  CALL R8 3 -1
  RETURN R8 -1

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
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K10 ["ExpandableSection"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K11 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K6 ["Src"]
  GETTABLEKS R6 R7 K7 ["Components"]
  GETTABLEKS R5 R6 K13 ["GenericModeSelector"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K11 ["Packages"]
  GETTABLEKS R6 R7 K14 ["React"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R8 R0 K11 ["Packages"]
  GETTABLEKS R7 R8 K15 ["ReactUtils"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K16 ["ContextServices"]
  GETTABLEKS R8 R7 K17 ["Localization"]
  GETIMPORT R9 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K18 ["Util"]
  GETTABLEKS R11 R12 K19 ["Telemetry"]
  GETTABLEKS R10 R11 K20 ["TelemetryContext"]
  CALL R9 1 1
  GETIMPORT R10 K5 [require]
  GETTABLEKS R13 R0 K6 ["Src"]
  GETTABLEKS R12 R13 K21 ["Flags"]
  GETTABLEKS R11 R12 K22 ["getFFlagAddTelemetry"]
  CALL R10 1 1
  GETTABLEKS R11 R6 K23 ["createNextOrder"]
  GETTABLEKS R12 R5 K24 ["createElement"]
  DUPCLOSURE R13 K25 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R10
  CAPTURE VAL R9
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R2
  CAPTURE VAL R4
  RETURN R13 1
