PROTO_0:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["HasInternalPermission"]
  CALL R1 1 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K1 ["DefaultForInternalUsers"]
  JUMPIFEQKNIL R1 [+5]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K1 ["DefaultForInternalUsers"]
  JUMP [+3]
  GETUPVAL R1 1
  GETTABLEKS R0 R1 K2 ["Default"]
  GETUPVAL R1 2
  LOADK R3 K3 ["StyleEditor"]
  NAMECALL R1 R1 K4 ["FindFirstChild"]
  CALL R1 2 1
  JUMPIFNOT R1 [+5]
  LOADK R4 K5 ["Folder"]
  NAMECALL R2 R1 K6 ["IsA"]
  CALL R2 2 1
  JUMPIF R2 [+1]
  RETURN R0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K7 ["Name"]
  NAMECALL R2 R1 K4 ["FindFirstChild"]
  CALL R2 2 1
  JUMPIFNOT R2 [+5]
  LOADK R5 K8 ["BoolValue"]
  NAMECALL R3 R2 K6 ["IsA"]
  CALL R3 2 1
  JUMPIF R3 [+1]
  RETURN R0 1
  GETTABLEKS R3 R2 K9 ["Value"]
  RETURN R3 1

PROTO_1:
  GETTABLEKS R4 R0 K0 ["Name"]
  FASTCALL1 TYPEOF R4 [+2]
  GETIMPORT R3 K2 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K3 ["string"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K4 [+4]
  LOADK R3 K4 ["DebugFlag name must be a string"]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETTABLEKS R4 R0 K7 ["Default"]
  FASTCALL1 TYPEOF R4 [+2]
  GETIMPORT R3 K2 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K8 ["boolean"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K9 [+4]
  LOADK R3 K9 ["DebugFlag default value must be a boolean"]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  LOADB R2 1
  GETTABLEKS R3 R0 K10 ["DefaultForInternalUsers"]
  JUMPIFEQKNIL R3 [+11]
  GETTABLEKS R4 R0 K10 ["DefaultForInternalUsers"]
  FASTCALL1 TYPEOF R4 [+2]
  GETIMPORT R3 K2 [typeof]
  CALL R3 1 1
  JUMPIFEQKS R3 K8 ["boolean"] [+2]
  LOADB R2 0 +1
  LOADB R2 1
  FASTCALL2K ASSERT R2 K11 [+4]
  LOADK R3 K11 ["DebugFlag default value for internal users must be either a boolean or nil"]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  NEWCLOSURE R1 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R0
  CAPTURE UPVAL U1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["Workspace"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K1 [game]
  LOADK R3 K4 ["StudioService"]
  NAMECALL R1 R1 K3 ["GetService"]
  CALL R1 2 1
  DUPCLOSURE R2 K5 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R0
  DUPTABLE R3 K8 [{"LogNetworkErrors", "LogTelemetry"}]
  MOVE R4 R2
  DUPTABLE R5 K12 [{"Name", "Default", "DefaultForInternalUsers"}]
  LOADK R6 K6 ["LogNetworkErrors"]
  SETTABLEKS R6 R5 K9 ["Name"]
  LOADB R6 0
  SETTABLEKS R6 R5 K10 ["Default"]
  LOADB R6 1
  SETTABLEKS R6 R5 K11 ["DefaultForInternalUsers"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K6 ["LogNetworkErrors"]
  MOVE R4 R2
  DUPTABLE R5 K13 [{"Name", "Default"}]
  LOADK R6 K7 ["LogTelemetry"]
  SETTABLEKS R6 R5 K9 ["Name"]
  LOADB R6 0
  SETTABLEKS R6 R5 K10 ["Default"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K7 ["LogTelemetry"]
  RETURN R3 1
