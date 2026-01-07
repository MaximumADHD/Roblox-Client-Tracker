PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["resultCallback"]
  LOADB R1 1
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["resultCallback"]
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["View"]
  DUPTABLE R4 K4 [{"tag"}]
  LOADK R5 K5 ["size-full col padding-medium"]
  SETTABLEKS R5 R4 K3 ["tag"]
  DUPTABLE R5 K8 [{"MainText", "ButtonPanel"}]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K9 ["Text"]
  DUPTABLE R8 K12 [{"tag", "Text", "testId", "LayoutOrder"}]
  LOADK R9 K13 ["text-align-x-left text-wrap text-body-medium size-0-full auto-x shrink"]
  SETTABLEKS R9 R8 K3 ["tag"]
  GETTABLEKS R9 R0 K14 ["text"]
  SETTABLEKS R9 R8 K9 ["Text"]
  LOADK R9 K15 ["mainText"]
  SETTABLEKS R9 R8 K10 ["testId"]
  LOADN R9 1
  SETTABLEKS R9 R8 K11 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["MainText"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["createElement"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K2 ["View"]
  DUPTABLE R8 K16 [{"tag", "LayoutOrder"}]
  LOADK R9 K17 ["row align-x-right padding-small size-full-1200 gap-small"]
  SETTABLEKS R9 R8 K3 ["tag"]
  LOADN R9 2
  SETTABLEKS R9 R8 K11 ["LayoutOrder"]
  DUPTABLE R9 K20 [{"Yes", "No"}]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K21 ["Button"]
  DUPTABLE R12 K26 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder", "testId"}]
  LOADK R15 K27 ["Buttons"]
  LOADK R16 K18 ["Yes"]
  NAMECALL R13 R1 K28 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K14 ["text"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K29 ["Enums"]
  GETTABLEKS R14 R15 K30 ["ButtonVariant"]
  GETTABLEKS R13 R14 K31 ["Emphasis"]
  SETTABLEKS R13 R12 K22 ["variant"]
  NEWCLOSURE R13 P0
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K23 ["onActivated"]
  LOADB R13 0
  SETTABLEKS R13 R12 K24 ["isDisabled"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K29 ["Enums"]
  GETTABLEKS R14 R15 K32 ["InputSize"]
  GETTABLEKS R13 R14 K33 ["Small"]
  SETTABLEKS R13 R12 K25 ["size"]
  LOADN R13 2
  SETTABLEKS R13 R12 K11 ["LayoutOrder"]
  LOADK R13 K34 ["yes"]
  SETTABLEKS R13 R12 K10 ["testId"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["Yes"]
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K1 ["createElement"]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K21 ["Button"]
  DUPTABLE R12 K26 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder", "testId"}]
  LOADK R15 K27 ["Buttons"]
  LOADK R16 K19 ["No"]
  NAMECALL R13 R1 K28 ["getText"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K14 ["text"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K29 ["Enums"]
  GETTABLEKS R14 R15 K30 ["ButtonVariant"]
  GETTABLEKS R13 R14 K31 ["Emphasis"]
  SETTABLEKS R13 R12 K22 ["variant"]
  NEWCLOSURE R13 P1
  CAPTURE VAL R0
  SETTABLEKS R13 R12 K23 ["onActivated"]
  LOADB R13 0
  SETTABLEKS R13 R12 K24 ["isDisabled"]
  GETUPVAL R16 2
  GETTABLEKS R15 R16 K29 ["Enums"]
  GETTABLEKS R14 R15 K32 ["InputSize"]
  GETTABLEKS R13 R14 K33 ["Small"]
  SETTABLEKS R13 R12 K25 ["size"]
  LOADN R13 1
  SETTABLEKS R13 R12 K11 ["LayoutOrder"]
  LOADK R13 K35 ["no"]
  SETTABLEKS R13 R12 K10 ["testId"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K19 ["No"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K7 ["ButtonPanel"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["Localization"]
  DUPCLOSURE R6 K12 [PROTO_2]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R2
  RETURN R6 1
