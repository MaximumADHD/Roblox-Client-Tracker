PROTO_0:
  JUMPIFNOTEQKS R1 K0 ["default"] [+7]
  LOADK R5 K1 ["RecordTabView"]
  LOADK R6 K2 ["ComputerEmulationDeviceOrientation"]
  NAMECALL R3 R2 K3 ["getText"]
  CALL R3 3 -1
  RETURN R3 -1
  RETURN R0 1

PROTO_1:
  JUMPIFNOTEQKS R0 K0 ["default"] [+7]
  LOADK R4 K1 ["RecordTabView"]
  LOADK R5 K2 ["ComputerEmulationDeviceName"]
  NAMECALL R2 R1 K3 ["getText"]
  CALL R2 3 -1
  RETURN R2 -1
  RETURN R0 1

PROTO_2:
  GETIMPORT R2 K2 [string.format]
  LOADK R3 K3 ["%d x %d %s"]
  GETTABLEKS R5 R0 K4 ["X"]
  FASTCALL1 MATH_ROUND R5 [+2]
  GETIMPORT R4 K7 [math.round]
  CALL R4 1 1
  GETTABLEKS R6 R0 K8 ["Y"]
  FASTCALL1 MATH_ROUND R6 [+2]
  GETIMPORT R5 K7 [math.round]
  CALL R5 1 1
  MOVE R6 R1
  CALL R2 4 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 4 0
  DUPCLOSURE R1 K0 [PROTO_0]
  SETTABLEKS R1 R0 K1 ["formatDeviceOrientation"]
  DUPCLOSURE R1 K2 [PROTO_1]
  SETTABLEKS R1 R0 K3 ["formatDeviceName"]
  DUPCLOSURE R1 K4 [PROTO_2]
  SETTABLEKS R1 R0 K5 ["format2dResolution"]
  RETURN R0 1
