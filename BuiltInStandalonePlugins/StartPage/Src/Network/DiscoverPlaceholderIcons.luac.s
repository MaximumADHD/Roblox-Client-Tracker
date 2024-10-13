PROTO_0:
  LENGTH R2 R0
  JUMPIFNOTEQKN R2 K0 [0] [+2]
  RETURN R0 0
  DUPTABLE R2 K5 [{"returnPolicy", "size", "format", "universeIds"}]
  LOADK R3 K6 ["Placeholder"]
  SETTABLEKS R3 R2 K1 ["returnPolicy"]
  LOADK R3 K7 ["256x256"]
  SETTABLEKS R3 R2 K2 ["size"]
  LOADK R3 K8 ["png"]
  SETTABLEKS R3 R2 K3 ["format"]
  SETTABLEKS R0 R2 K4 ["universeIds"]
  GETUPVAL R3 0
  MOVE R4 R2
  MOVE R5 R1
  CALL R3 2 0
  RETURN R0 0

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["StartPage"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Src"]
  GETTABLEKS R2 R3 K7 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K8 ["Network"]
  GETTABLEKS R3 R4 K9 ["DiscoverGameIcons"]
  CALL R2 1 1
  DUPCLOSURE R3 K10 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
