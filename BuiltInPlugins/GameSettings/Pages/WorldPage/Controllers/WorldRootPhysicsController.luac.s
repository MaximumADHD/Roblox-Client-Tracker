PROTO_0:
  NEWTABLE R0 0 0
  GETUPVAL R3 0
  FASTCALL2 SETMETATABLE R0 R3 [+4]
  MOVE R2 R0
  GETIMPORT R1 K1 [setmetatable]
  CALL R1 2 1
  RETURN R1 1

PROTO_1:
  MULK R1 R0 K0 [0.28]
  RETURN R1 1

PROTO_2:
  GETIMPORT R3 K1 [workspace]
  MOVE R5 R0
  MOVE R6 R1
  MOVE R7 R2
  NAMECALL R3 R3 K2 ["CalculateJumpDistance"]
  CALL R3 4 -1
  RETURN R3 -1

PROTO_3:
  GETIMPORT R2 K1 [workspace]
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K2 ["CalculateJumpHeight"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_4:
  GETIMPORT R2 K1 [workspace]
  MOVE R4 R0
  MOVE R5 R1
  NAMECALL R2 R2 K2 ["CalculateJumpPower"]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_5:
  LOADK R4 K0 ["Workspace"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K2 ["Gravity"]
  RETURN R3 1

PROTO_6:
  LOADK R5 K0 ["Workspace"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  SETTABLEKS R2 R3 K2 ["Gravity"]
  RETURN R0 0

PROTO_7:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K2 ["CharacterUseJumpPower"]
  RETURN R3 1

PROTO_8:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  SETTABLEKS R2 R3 K2 ["CharacterUseJumpPower"]
  RETURN R0 0

PROTO_9:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  LOADK R5 K2 ["Workspace"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  MOVE R6 R1
  NAMECALL R4 R0 K3 ["getUseJumpPower"]
  CALL R4 2 1
  JUMPIFNOT R4 [+12]
  MOVE R8 R1
  NAMECALL R6 R0 K4 ["getGravity"]
  CALL R6 2 1
  MOVE R9 R1
  NAMECALL R7 R0 K5 ["getJumpPower"]
  CALL R7 2 -1
  NAMECALL R4 R3 K6 ["CalculateJumpHeight"]
  CALL R4 -1 -1
  RETURN R4 -1
  GETTABLEKS R4 R2 K7 ["CharacterJumpHeight"]
  RETURN R4 1

PROTO_10:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  LOADK R6 K2 ["Workspace"]
  NAMECALL R4 R1 K1 ["GetService"]
  CALL R4 2 1
  MOVE R7 R1
  NAMECALL R5 R0 K3 ["getGravity"]
  CALL R5 2 1
  SETTABLEKS R2 R3 K4 ["CharacterJumpHeight"]
  MOVE R8 R5
  MOVE R9 R2
  NAMECALL R6 R4 K5 ["CalculateJumpPower"]
  CALL R6 3 1
  SETTABLEKS R6 R3 K6 ["CharacterJumpPower"]
  RETURN R0 0

PROTO_11:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  MOVE R5 R1
  NAMECALL R3 R0 K2 ["getGravity"]
  CALL R3 2 1
  MOVE R6 R1
  NAMECALL R4 R0 K3 ["getUseJumpPower"]
  CALL R4 2 1
  JUMPIFNOT R4 [+3]
  GETTABLEKS R4 R2 K4 ["CharacterJumpPower"]
  RETURN R4 1
  GETIMPORT R4 K6 [workspace]
  MOVE R6 R3
  MOVE R9 R1
  NAMECALL R7 R0 K7 ["getJumpHeight"]
  CALL R7 2 -1
  NAMECALL R4 R4 K8 ["CalculateJumpPower"]
  CALL R4 -1 -1
  RETURN R4 -1

PROTO_12:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  SETTABLEKS R2 R3 K2 ["CharacterJumpPower"]
  GETIMPORT R4 K4 [workspace]
  MOVE R8 R1
  NAMECALL R6 R0 K5 ["getGravity"]
  CALL R6 2 1
  MOVE R7 R2
  NAMECALL R4 R4 K6 ["CalculateJumpHeight"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K7 ["CharacterJumpHeight"]
  RETURN R0 0

PROTO_13:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K2 ["CharacterWalkSpeed"]
  RETURN R3 1

PROTO_14:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  SETTABLEKS R2 R3 K2 ["CharacterWalkSpeed"]
  RETURN R0 0

PROTO_15:
  LOADK R4 K0 ["StarterPlayer"]
  NAMECALL R2 R1 K1 ["GetService"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K2 ["CharacterMaxSlopeAngle"]
  RETURN R3 1

PROTO_16:
  LOADK R5 K0 ["StarterPlayer"]
  NAMECALL R3 R1 K1 ["GetService"]
  CALL R3 2 1
  SETTABLEKS R2 R3 K2 ["CharacterMaxSlopeAngle"]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 32 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_0]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  DUPCLOSURE R1 K3 [PROTO_1]
  SETTABLEKS R1 R0 K4 ["convertStudsToMeters"]
  DUPCLOSURE R1 K5 [PROTO_2]
  SETTABLEKS R1 R0 K6 ["calculateJumpDistance"]
  DUPCLOSURE R1 K7 [PROTO_3]
  SETTABLEKS R1 R0 K8 ["calculateJumpHeight"]
  DUPCLOSURE R1 K9 [PROTO_4]
  SETTABLEKS R1 R0 K10 ["calculateJumpPower"]
  DUPCLOSURE R1 K11 [PROTO_5]
  SETTABLEKS R1 R0 K12 ["getGravity"]
  DUPCLOSURE R1 K13 [PROTO_6]
  SETTABLEKS R1 R0 K14 ["setGravity"]
  DUPCLOSURE R1 K15 [PROTO_7]
  SETTABLEKS R1 R0 K16 ["getUseJumpPower"]
  DUPCLOSURE R1 K17 [PROTO_8]
  SETTABLEKS R1 R0 K18 ["setUseJumpPower"]
  DUPCLOSURE R1 K19 [PROTO_9]
  SETTABLEKS R1 R0 K20 ["getJumpHeight"]
  DUPCLOSURE R1 K21 [PROTO_10]
  SETTABLEKS R1 R0 K22 ["setJumpHeight"]
  DUPCLOSURE R1 K23 [PROTO_11]
  SETTABLEKS R1 R0 K24 ["getJumpPower"]
  DUPCLOSURE R1 K25 [PROTO_12]
  SETTABLEKS R1 R0 K26 ["setJumpPower"]
  DUPCLOSURE R1 K27 [PROTO_13]
  SETTABLEKS R1 R0 K28 ["getWalkspeed"]
  DUPCLOSURE R1 K29 [PROTO_14]
  SETTABLEKS R1 R0 K30 ["setWalkspeed"]
  DUPCLOSURE R1 K31 [PROTO_15]
  SETTABLEKS R1 R0 K32 ["getMaxSlopeAngle"]
  DUPCLOSURE R1 K33 [PROTO_16]
  SETTABLEKS R1 R0 K34 ["setMaxSlopeAngle"]
  RETURN R0 1
