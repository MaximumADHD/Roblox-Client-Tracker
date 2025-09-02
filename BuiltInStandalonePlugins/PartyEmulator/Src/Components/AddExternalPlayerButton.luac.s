PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["Add External Player Clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  DUPCLOSURE R2 K1 [PROTO_0]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["Button"]
  DUPTABLE R5 K9 [{"text", "onActivated", "variant", "size", "LayoutOrder"}]
  LOADK R8 K10 ["Action"]
  LOADK R9 K11 ["AddExternalPlayer"]
  NAMECALL R6 R1 K12 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K4 ["text"]
  SETTABLEKS R2 R5 K5 ["onActivated"]
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K13 ["Subtle"]
  SETTABLEKS R6 R5 K6 ["variant"]
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K14 ["Medium"]
  SETTABLEKS R6 R5 K7 ["size"]
  GETTABLEKS R6 R0 K8 ["LayoutOrder"]
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["PartyEmulator"]
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
  GETTABLEKS R4 R2 K9 ["Enums"]
  GETTABLEKS R3 R4 K10 ["ButtonVariant"]
  GETTABLEKS R5 R2 K9 ["Enums"]
  GETTABLEKS R4 R5 K11 ["InputSize"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R7 R0 K6 ["Packages"]
  GETTABLEKS R6 R7 K12 ["Framework"]
  CALL R5 1 1
  GETTABLEKS R6 R5 K13 ["ContextServices"]
  GETTABLEKS R7 R6 K14 ["Localization"]
  DUPCLOSURE R8 K15 [PROTO_1]
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R8 1
