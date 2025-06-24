PROTO_0:
  GETTABLEKS R2 R0 K0 ["target"]
  FASTCALL1 TYPE R2 [+3]
  MOVE R4 R2
  GETIMPORT R3 K2 [type]
  CALL R3 1 1
  JUMPIFEQKS R3 K3 ["string"] [+5]
  GETIMPORT R3 K5 [error]
  LOADK R4 K6 ["OpenLink action triggered without a target"]
  CALL R3 1 0
  LOADN R5 1
  LOADN R6 4
  NAMECALL R3 R2 K7 ["sub"]
  CALL R3 3 1
  JUMPIFEQKS R3 K8 ["http"] [+10]
  GETIMPORT R3 K5 [error]
  LOADK R5 K9 ["OpenLink action triggered with invalid target: %*"]
  MOVE R7 R2
  NAMECALL R5 R5 K10 ["format"]
  CALL R5 2 1
  MOVE R4 R5
  CALL R3 1 0
  GETUPVAL R3 0
  MOVE R5 R2
  NAMECALL R3 R3 K11 ["openLink"]
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["KnowledgeTutorials"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Util"]
  GETTABLEKS R3 R4 K9 ["Services"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K10 ["StartPageService"]
  DUPCLOSURE R4 K11 [PROTO_0]
  CAPTURE VAL R3
  RETURN R4 1
