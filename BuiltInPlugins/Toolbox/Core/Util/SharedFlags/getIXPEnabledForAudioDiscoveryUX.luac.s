PROTO_0:
  GETIMPORT R1 K1 [game]
  LOADK R3 K2 ["DebugToolboxEnableNewAudioDiscoveryUX"]
  NAMECALL R1 R1 K3 ["GetFastFlag"]
  CALL R1 2 1
  JUMPIFNOT R1 [+2]
  LOADB R1 1
  RETURN R1 1
  MOVE R1 R0
  JUMPIFNOT R1 [+5]
  GETUPVAL R1 0
  MOVE R2 R0
  LOADK R3 K4 ["MarketplaceAudioDiscoveryUX"]
  LOADK R4 K5 ["MarketplaceAudioDiscoveryUXEnabled"]
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
  GETIMPORT R2 K10 [game]
  LOADK R4 K11 ["DebugToolboxEnableNewAudioDiscoveryUX"]
  LOADB R5 0
  NAMECALL R2 R2 K12 ["DefineFastFlag"]
  CALL R2 3 0
  DUPCLOSURE R2 K13 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
