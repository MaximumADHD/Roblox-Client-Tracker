PROTO_0:
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R9 R6 K0 ["scriptId"]
  NAMECALL R7 R1 K1 ["getScriptInstanceFromGUID"]
  CALL R7 2 1
  GETUPVAL R8 0
  MOVE R10 R7
  NAMECALL R8 R8 K2 ["HasScriptBackup"]
  CALL R8 2 1
  JUMPIF R8 [+2]
  LOADB R8 0
  RETURN R8 1
  FORGLOOP R2 2 [-14]
  LOADB R2 1
  RETURN R2 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["R15Migrator"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Util"]
  GETTABLEKS R3 R4 K8 ["ScriptHistory"]
  GETTABLEKS R2 R3 K9 ["ChunkUtil"]
  CALL R1 1 1
  DUPCLOSURE R2 K10 [PROTO_0]
  CAPTURE VAL R1
  RETURN R2 1
