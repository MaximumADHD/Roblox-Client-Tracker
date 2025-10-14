PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  JUMPIFEQKNIL R0 [+5]
  NAMECALL R1 R0 K0 ["GetFullName"]
  CALL R1 1 1
  JUMP [+1]
  LOADK R1 K1 ["N/A"]
  LOADK R3 K2 ["Overlay Name: %*"]
  MOVE R5 R1
  NAMECALL R3 R3 K3 ["format"]
  CALL R3 2 1
  MOVE R2 R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K7 [{"tag", "Text"}]
  LOADK R6 K8 ["auto-y align-x-center size-full-0 text-wrap"]
  SETTABLEKS R6 R5 K5 ["tag"]
  SETTABLEKS R2 R5 K6 ["Text"]
  CALL R3 2 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Text"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K10 ["useOverlay"]
  CALL R4 1 1
  DUPTABLE R5 K14 [{"name", "summary", "story"}]
  LOADK R6 K10 ["useOverlay"]
  SETTABLEKS R6 R5 K11 ["name"]
  LOADK R6 K15 ["Provides access to the overlay"]
  SETTABLEKS R6 R5 K12 ["summary"]
  DUPCLOSURE R6 K16 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R6 R5 K13 ["story"]
  RETURN R5 1
