MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Explorer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R2 R0 K6 ["Analytics"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K7 ["Fields"]
  GETTABLEKS R3 R4 K8 ["FieldTypes"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R4 R0 K9 ["RpcTypes"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K10 ["Guest"]
  GETTABLEKS R7 R8 K11 ["InstanceGuestRPCInterface"]
  GETTABLEKS R6 R7 K12 ["Streaming"]
  GETTABLEKS R5 R6 K13 ["StreamingInterface"]
  CALL R4 1 1
  LOADNIL R5
  RETURN R5 1
