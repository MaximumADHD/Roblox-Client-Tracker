PROTO_0:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioCancellableDialogManager"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioCancellableDialogDesignUpdates"]
  NAMECALL R0 R0 K3 ["GetFastFlag"]
  CALL R0 2 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["StudioCancellableDialogDesignUpdates"]
  LOADB R3 0
  NAMECALL R0 R0 K3 ["DefineFastFlag"]
  CALL R0 3 0
  DUPTABLE R0 K6 [{"getFFlagStudioCancellableDialogManager", "getFFlagStudioCancellableDialogDesignUpdates"}]
  DUPCLOSURE R1 K7 [PROTO_0]
  SETTABLEKS R1 R0 K4 ["getFFlagStudioCancellableDialogManager"]
  DUPCLOSURE R1 K8 [PROTO_1]
  SETTABLEKS R1 R0 K5 ["getFFlagStudioCancellableDialogDesignUpdates"]
  RETURN R0 1
