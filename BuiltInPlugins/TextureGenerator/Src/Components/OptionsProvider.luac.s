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
  DUPTABLE R15 K20 [{"promptText", "randomizeSeed", "seed", "rotation", "smartUVUnwrap", "promptMasking", "validOptions", "setPromptText", "setRandomizeSeed", "setSeed", "setRotation", "setSmartUVUnwrap", "setPromptMasking", "setValidOptions"}]
  SETTABLEKS R1 R15 K6 ["promptText"]
  SETTABLEKS R3 R15 K7 ["randomizeSeed"]
  SETTABLEKS R5 R15 K8 ["seed"]
  SETTABLEKS R7 R15 K9 ["rotation"]
  SETTABLEKS R9 R15 K10 ["smartUVUnwrap"]
  SETTABLEKS R11 R15 K11 ["promptMasking"]
  SETTABLEKS R13 R15 K12 ["validOptions"]
  SETTABLEKS R2 R15 K13 ["setPromptText"]
  SETTABLEKS R4 R15 K14 ["setRandomizeSeed"]
  SETTABLEKS R6 R15 K15 ["setSeed"]
  SETTABLEKS R8 R15 K16 ["setRotation"]
  SETTABLEKS R10 R15 K17 ["setSmartUVUnwrap"]
  SETTABLEKS R12 R15 K18 ["setPromptMasking"]
  SETTABLEKS R14 R15 K19 ["setValidOptions"]
  GETUPVAL R17 0
  GETTABLEKS R16 R17 K21 ["createElement"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K22 ["Provider"]
  DUPTABLE R18 K24 [{"value"}]
  SETTABLEKS R15 R18 K23 ["value"]
  GETTABLEKS R19 R0 K25 ["children"]
  CALL R16 3 -1
  RETURN R16 -1

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
