PROTO_0:
  GETUPVAL R3 0
  CALL R3 0 1
  NOT R2 R3
  LOADK R4 K0 ["%* is marked for removal"]
  GETIMPORT R7 K2 [script]
  GETTABLEKS R6 R7 K3 ["Name"]
  NAMECALL R4 R4 K4 ["format"]
  CALL R4 2 1
  MOVE R3 R4
  FASTCALL2 ASSERT R2 R3 [+3]
  GETIMPORT R1 K6 [assert]
  CALL R1 2 0
  GETIMPORT R1 K8 [game]
  LOADK R3 K9 ["DebugToolboxEnableNewAudioDiscoveryUX"]
  NAMECALL R1 R1 K10 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  RETURN R1 1
  MOVE R1 R0
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 1
  MOVE R2 R0
  LOADK R3 K11 ["MarketplaceAudioDiscoveryUX"]
  LOADK R4 K12 ["MarketplaceAudioDiscoveryUXEnabled"]
  CALL R1 3 1
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Toolbox"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R4 R0 K6 ["Core"]
  GETTABLEKS R3 R4 K7 ["Util"]
  GETTABLEKS R2 R3 K8 ["getIsIXPVariableEnabled"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Core"]
  GETTABLEKS R4 R5 K9 ["Flags"]
  GETTABLEKS R3 R4 K10 ["getFFlagToolboxCleanupAudioDiscoveryExperiment"]
  CALL R2 1 1
  GETIMPORT R3 K12 [game]
  LOADK R5 K13 ["DebugToolboxEnableNewAudioDiscoveryUX"]
  LOADB R6 0
  NAMECALL R3 R3 K14 ["DefineFastFlag"]
  CALL R3 3 0
  DUPCLOSURE R3 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
