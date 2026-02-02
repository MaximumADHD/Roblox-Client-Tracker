PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["controls"]
  GETTABLEKS R2 R3 K1 ["keycode"]
  CALL R1 1 1
  JUMPIFNOT R1 [+9]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K4 [{"name"}]
  SETTABLEKS R1 R4 K3 ["name"]
  CALL R2 2 -1
  RETURN R2 -1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 3
  DUPTABLE R4 K7 [{"Text", "tag"}]
  LOADK R6 K8 ["No BuilderIcon associated with: %*"]
  GETTABLEKS R9 R0 K0 ["controls"]
  GETTABLEKS R8 R9 K1 ["keycode"]
  NAMECALL R6 R6 K9 ["format"]
  CALL R6 2 1
  MOVE R5 R6
  SETTABLEKS R5 R4 K5 ["Text"]
  LOADK R5 K10 ["text-align-x-left size-full-0 auto-y"]
  SETTABLEKS R5 R4 K6 ["tag"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Dash"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R4 R1 K8 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K9 ["getBuilderIconForKeycode"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["Icon"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K10 ["Components"]
  GETTABLEKS R7 R8 K12 ["Text"]
  CALL R6 1 1
  DUPTABLE R7 K16 [{"name", "story", "controls"}]
  LOADK R8 K9 ["getBuilderIconForKeycode"]
  SETTABLEKS R8 R7 K13 ["name"]
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R8 R7 K14 ["story"]
  DUPTABLE R8 K19 [{"keycode"}]
  GETTABLEKS R9 R2 K20 ["values"]
  GETIMPORT R10 K23 [Enum.KeyCode]
  NAMECALL R10 R10 K24 ["GetEnumItems"]
  CALL R10 1 -1
  CALL R9 -1 1
  SETTABLEKS R9 R8 K18 ["keycode"]
  SETTABLEKS R8 R7 K15 ["controls"]
  RETURN R7 1
