PROTO_0:
  GETTABLEKS R4 R0 K0 ["hoveredPointNames"]
  LENGTH R3 R4
  LOADN R4 1
  JUMPIFNOTLT R4 R3 [+7]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["MULTI_SELECT_PHONY_TARGET"]
  LOADNIL R4
  LOADN R5 1
  RETURN R3 3
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETIMPORT R8 K4 [table.find]
  GETTABLEKS R9 R0 K0 ["hoveredPointNames"]
  MOVE R10 R7
  CALL R8 2 1
  JUMPIFEQKNIL R8 [+5]
  MOVE R8 R7
  LOADNIL R9
  LOADN R10 1
  RETURN R8 3
  FORGLOOP R3 2 [-13]
  GETTABLEKS R4 R0 K0 ["hoveredPointNames"]
  LENGTH R3 R4
  JUMPIFNOTEQKN R3 K5 [0] [+5]
  LOADNIL R3
  LOADNIL R4
  LOADNIL R5
  RETURN R3 3
  GETTABLEKS R4 R0 K0 ["hoveredPointNames"]
  GETTABLEN R3 R4 1
  LOADNIL R4
  LOADN R5 1
  RETURN R3 3

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K7 ["Components"]
  GETTABLEKS R4 R5 K8 ["EditingTools"]
  GETTABLEKS R3 R4 K9 ["BodyPointsTool"]
  GETTABLEKS R2 R3 K10 ["Types"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETTABLEKS R3 R4 K12 ["Constants"]
  CALL R2 1 1
  DUPCLOSURE R3 K13 [PROTO_0]
  CAPTURE VAL R2
  RETURN R3 1
