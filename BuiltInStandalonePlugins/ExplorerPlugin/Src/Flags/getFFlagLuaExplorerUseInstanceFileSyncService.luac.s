PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LDP811UseInstanceFileSyncService"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 1
  JUMPIFNOT R0 [+13]
  GETIMPORT R0 K1 [game]
  LOADK R2 K4 ["Collab7848InstanceFileSyncServiceEnabled"]
  NAMECALL R0 R0 K5 ["GetEngineFeature"]
  CALL R0 2 1
  JUMPIFNOT R0 [+6]
  GETIMPORT R0 K1 [game]
  LOADK R2 K6 ["LDP795InstanceFileSyncServiceGetTooltip"]
  NAMECALL R0 R0 K5 ["GetEngineFeature"]
  CALL R0 2 1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["LDP811UseInstanceFileSyncService"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPCLOSURE R0 K4 [PROTO_0]
  RETURN R0 1
