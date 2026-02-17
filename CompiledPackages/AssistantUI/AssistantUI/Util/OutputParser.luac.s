PROTO_0:
  LOADK R3 K0 ["\n"]
  LOADK R4 K1 ["
"]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 1
  MOVE R0 R1
  LOADK R3 K3 ["\t"]
  LOADK R4 K4 ["	"]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 1
  MOVE R0 R1
  LOADK R3 K5 ["\r"]
  LOADK R4 K6 [""]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 1
  MOVE R0 R1
  LOADK R3 K7 ["\\""]
  LOADK R4 K8 ["\""]
  NAMECALL R1 R0 K2 ["gsub"]
  CALL R1 3 1
  MOVE R0 R1
  RETURN R0 1

PROTO_1:
  LOADK R3 K0 ["\"code\"%s*:%s*\""]
  NAMECALL R1 R0 K1 ["find"]
  CALL R1 2 2
  JUMPIF R2 [+2]
  LOADNIL R3
  RETURN R3 1
  ADDK R5 R2 K2 [1]
  NAMECALL R3 R0 K3 ["sub"]
  CALL R3 2 1
  LOADK R6 K4 ["\\""]
  LOADK R7 K5 ["\'"]
  NAMECALL R4 R3 K6 ["gsub"]
  CALL R4 3 1
  LOADK R6 K7 ["\""]
  NAMECALL R4 R4 K1 ["find"]
  CALL R4 2 1
  JUMPIFNOT R4 [+6]
  LOADN R7 1
  SUBK R8 R4 K2 [1]
  NAMECALL R5 R3 K3 ["sub"]
  CALL R5 3 1
  MOVE R3 R5
  MOVE R5 R3
  LOADK R8 K8 ["\n"]
  LOADK R9 K9 ["
"]
  NAMECALL R6 R5 K6 ["gsub"]
  CALL R6 3 1
  MOVE R5 R6
  LOADK R8 K10 ["\t"]
  LOADK R9 K11 ["	"]
  NAMECALL R6 R5 K6 ["gsub"]
  CALL R6 3 1
  MOVE R5 R6
  LOADK R8 K12 ["\r"]
  LOADK R9 K13 [""]
  NAMECALL R6 R5 K6 ["gsub"]
  CALL R6 3 1
  MOVE R5 R6
  LOADK R8 K4 ["\\""]
  LOADK R9 K7 ["\""]
  NAMECALL R6 R5 K6 ["gsub"]
  CALL R6 3 1
  MOVE R5 R6
  MOVE R3 R5
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  DUPCLOSURE R0 K0 [PROTO_0]
  DUPCLOSURE R1 K1 [PROTO_1]
  DUPTABLE R2 K3 [{"parseJSONForCode"}]
  SETTABLEKS R1 R2 K2 ["parseJSONForCode"]
  RETURN R2 1
