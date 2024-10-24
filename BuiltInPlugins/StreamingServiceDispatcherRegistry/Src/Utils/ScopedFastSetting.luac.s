PROTO_0:
  GETUPVAL R3 0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R5 R1
  GETIMPORT R4 K1 [typeof]
  CALL R4 1 1
  GETTABLE R2 R3 R4
  JUMPIFNOT R2 [+18]
  GETIMPORT R3 K3 [pcall]
  MOVE R4 R2
  GETIMPORT R5 K5 [game]
  MOVE R6 R0
  MOVE R7 R1
  CALL R3 4 2
  JUMPIF R3 [+8]
  GETIMPORT R5 K7 [warn]
  MOVE R6 R4
  CALL R5 1 0
  GETIMPORT R5 K9 [error]
  MOVE R6 R4
  CALL R5 1 0
  RETURN R1 1
  GETIMPORT R3 K9 [error]
  LOADK R5 K10 ["Unsupported flag type for %*: %*"]
  MOVE R7 R0
  FASTCALL1 TYPEOF R1 [+3]
  MOVE R9 R1
  GETIMPORT R8 K1 [typeof]
  CALL R8 1 1
  NAMECALL R5 R5 K11 ["format"]
  CALL R5 3 1
  MOVE R4 R5
  CALL R3 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  LOADNIL R1
  LOADNIL R2
  FORGPREP R0
  GETUPVAL R5 1
  MOVE R6 R3
  MOVE R7 R4
  CALL R5 2 0
  FORGLOOP R0 2 [-5]
  RETURN R0 0

PROTO_2:
  GETUPVAL R2 0
  GETUPVAL R3 1
  MOVE R4 R0
  MOVE R5 R1
  CALL R3 2 1
  SETTABLE R3 R2 R0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StreamingServiceDispatcherRegistry"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Dev"]
  GETTABLEKS R2 R3 K8 ["JestGlobals"]
  CALL R1 1 1
  NEWTABLE R2 4 0
  GETIMPORT R4 K10 [game]
  GETTABLEKS R3 R4 K11 ["SetFastFlagForTesting"]
  SETTABLEKS R3 R2 K12 ["boolean"]
  GETIMPORT R4 K10 [game]
  GETTABLEKS R3 R4 K13 ["SetFastIntForTesting"]
  SETTABLEKS R3 R2 K14 ["number"]
  GETIMPORT R4 K10 [game]
  GETTABLEKS R3 R4 K15 ["SetFastStringForTesting"]
  SETTABLEKS R3 R2 K16 ["string"]
  NEWTABLE R3 0 0
  DUPCLOSURE R4 K17 [PROTO_0]
  CAPTURE VAL R2
  GETTABLEKS R5 R1 K18 ["afterEach"]
  DUPCLOSURE R6 K19 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CALL R5 1 0
  DUPCLOSURE R5 K20 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R4
  DUPTABLE R6 K24 [{"ScopedFastFlagSetting", "ScopedFastIntSetting", "ScopedFastStringSetting"}]
  SETTABLEKS R5 R6 K21 ["ScopedFastFlagSetting"]
  SETTABLEKS R5 R6 K22 ["ScopedFastIntSetting"]
  SETTABLEKS R5 R6 K23 ["ScopedFastStringSetting"]
  RETURN R6 1
