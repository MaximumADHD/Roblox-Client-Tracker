PROTO_0:
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K3 ["–"]
  LOADK R4 K4 ["-"]
  CALL R1 3 1
  MOVE R0 R1
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K5 ["—"]
  LOADK R4 K4 ["-"]
  CALL R1 3 1
  MOVE R0 R1
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K6 ["‐"]
  LOADK R4 K4 ["-"]
  CALL R1 3 1
  MOVE R0 R1
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K7 ["‑"]
  LOADK R4 K4 ["-"]
  CALL R1 3 1
  MOVE R0 R1
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K8 ["−"]
  LOADK R4 K4 ["-"]
  CALL R1 3 1
  MOVE R0 R1
  GETIMPORT R1 K2 [string.gsub]
  MOVE R2 R0
  LOADK R3 K9 ["%-"]
  LOADK R4 K10 ["%%-"]
  CALL R1 3 1
  MOVE R0 R1
  GETIMPORT R1 K12 [string.lower]
  MOVE R2 R0
  CALL R1 1 1
  MOVE R0 R1
  RETURN R0 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  SETGLOBAL R0 K1 ["sanitizeIconSearchInput"]
  GETGLOBAL R0 K1 ["sanitizeIconSearchInput"]
  RETURN R0 1
