PROTO_0:
  LOADK R3 K0 ["LuaSourceContainer"]
  NAMECALL R1 R0 K1 ["IsA"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  DUPCLOSURE R0 K0 [PROTO_0]
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 1
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETUPVAL R7 1
  MOVE R9 R6
  NAMECALL R7 R7 K1 ["RemoveScriptBackupChunks"]
  CALL R7 2 0
  FORGLOOP R2 2 [-6]
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K7 ["ScriptAnalysis"]
  GETTABLEKS R2 R3 K8 ["Constants"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R5 R0 K5 ["Src"]
  GETTABLEKS R4 R5 K6 ["Util"]
  GETTABLEKS R3 R4 K9 ["findAllInServices"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K5 ["Src"]
  GETTABLEKS R6 R7 K6 ["Util"]
  GETTABLEKS R5 R6 K10 ["ScriptHistory"]
  GETTABLEKS R4 R5 K11 ["ChunkUtil"]
  CALL R3 1 1
  DUPCLOSURE R4 K12 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  RETURN R4 1
