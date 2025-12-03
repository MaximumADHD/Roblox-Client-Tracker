PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["getNextLayoutOrder"]
  CALL R2 0 1
  DUPTABLE R3 K6 [{"messageId", "role", "contents", "LayoutOrder", "startTimestamp"}]
  LOADK R5 K7 ["message_%*"]
  MOVE R7 R2
  NAMECALL R5 R5 K8 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  SETTABLEKS R4 R3 K1 ["messageId"]
  SETTABLEKS R0 R3 K2 ["role"]
  JUMPIFNOT R1 [+10]
  NEWTABLE R4 1 0
  LOADK R6 K9 ["content_%*"]
  MOVE R8 R2
  NAMECALL R6 R6 K8 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLE R1 R4 R5
  JUMPIF R4 [+2]
  NEWTABLE R4 0 0
  SETTABLEKS R4 R3 K3 ["contents"]
  SETTABLEKS R2 R3 K4 ["LayoutOrder"]
  LOADN R4 0
  SETTABLEKS R4 R3 K5 ["startTimestamp"]
  RETURN R3 1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssistantUI"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Util"]
  GETTABLEKS R2 R3 K7 ["MessageLayoutOrder"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R0 K8 ["Types"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_0]
  CAPTURE VAL R1
  RETURN R3 1
