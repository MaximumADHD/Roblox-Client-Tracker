PROTO_0:
  RETURN R0 0

PROTO_1:
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  LOADB R0 1
  RETURN R0 1

PROTO_4:
  RETURN R0 0

PROTO_5:
  DUPTABLE R1 K5 [{"SendGamepadEventAsync", "GetKeyboardShortcutAsync", "ConnectGamepadAsync", "UpdateKeyMappingAsync", "GetCurrentlyEmulatedDeviceAsync"}]
  DUPCLOSURE R2 K6 [PROTO_0]
  SETTABLEKS R2 R1 K0 ["SendGamepadEventAsync"]
  DUPCLOSURE R2 K7 [PROTO_1]
  SETTABLEKS R2 R1 K1 ["GetKeyboardShortcutAsync"]
  DUPCLOSURE R2 K8 [PROTO_2]
  SETTABLEKS R2 R1 K2 ["ConnectGamepadAsync"]
  DUPCLOSURE R2 K9 [PROTO_3]
  SETTABLEKS R2 R1 K3 ["UpdateKeyMappingAsync"]
  DUPCLOSURE R2 K10 [PROTO_4]
  SETTABLEKS R2 R1 K4 ["GetCurrentlyEmulatedDeviceAsync"]
  DUPTABLE R4 K12 [{"__index"}]
  GETUPVAL R5 0
  SETTABLEKS R5 R4 K11 ["__index"]
  FASTCALL2 SETMETATABLE R1 R4 [+4]
  MOVE R3 R1
  GETIMPORT R2 K14 [setmetatable]
  CALL R2 2 0
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  SETTABLEKS R0 R0 K0 ["__index"]
  DUPCLOSURE R1 K1 [PROTO_5]
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K2 ["new"]
  RETURN R0 1
