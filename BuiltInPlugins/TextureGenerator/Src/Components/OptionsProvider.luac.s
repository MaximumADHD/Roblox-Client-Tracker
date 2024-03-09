PROTO_0:
  GETIMPORT R0 K2 [math.random]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K3 ["MAX_SEED_VALUE"]
  CALL R0 1 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  LOADK R2 K1 [""]
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useState"]
  LOADB R4 1
  CALL R3 1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useState"]
  DUPCLOSURE R6 K2 [PROTO_0]
  CAPTURE UPVAL U1
  CALL R5 1 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K0 ["useState"]
  GETIMPORT R8 K5 [CFrame.new]
  CALL R8 0 -1
  CALL R7 -1 2
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["useState"]
  LOADB R10 1
  CALL R9 1 2
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K0 ["useState"]
  LOADB R12 0
  CALL R11 1 2
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K0 ["useState"]
  LOADB R14 1
  CALL R13 1 2
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K0 ["useState"]
  LOADB R16 1
  CALL R15 1 2
  DUPTABLE R17 K22 [{"promptText", "randomizeSeed", "seed", "rotation", "smartUVUnwrap", "promptMasking", "validRotation", "validSeed", "setPromptText", "setRandomizeSeed", "setSeed", "setRotation", "setSmartUVUnwrap", "setPromptMasking", "setValidRotation", "setValidSeed"}]
  SETTABLEKS R1 R17 K6 ["promptText"]
  SETTABLEKS R3 R17 K7 ["randomizeSeed"]
  SETTABLEKS R5 R17 K8 ["seed"]
  SETTABLEKS R7 R17 K9 ["rotation"]
  SETTABLEKS R9 R17 K10 ["smartUVUnwrap"]
  SETTABLEKS R11 R17 K11 ["promptMasking"]
  SETTABLEKS R13 R17 K12 ["validRotation"]
  SETTABLEKS R15 R17 K13 ["validSeed"]
  SETTABLEKS R2 R17 K14 ["setPromptText"]
  SETTABLEKS R4 R17 K15 ["setRandomizeSeed"]
  SETTABLEKS R6 R17 K16 ["setSeed"]
  SETTABLEKS R8 R17 K17 ["setRotation"]
  SETTABLEKS R10 R17 K18 ["setSmartUVUnwrap"]
  SETTABLEKS R12 R17 K19 ["setPromptMasking"]
  SETTABLEKS R14 R17 K20 ["setValidRotation"]
  SETTABLEKS R16 R17 K21 ["setValidSeed"]
  GETUPVAL R19 0
  GETTABLEKS R18 R19 K23 ["createElement"]
  GETUPVAL R20 2
  GETTABLEKS R19 R20 K24 ["Provider"]
  DUPTABLE R20 K26 [{"value"}]
  SETTABLEKS R17 R20 K25 ["value"]
  GETTABLEKS R21 R0 K27 ["children"]
  CALL R18 3 -1
  RETURN R18 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K7 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Constants"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R6 R0 K7 ["Src"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K10 ["OptionsContext"]
  CALL R3 1 1
  DUPCLOSURE R4 K11 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
