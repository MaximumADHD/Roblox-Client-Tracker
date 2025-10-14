PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  GETUPVAL R4 2
  MOVE R5 R0
  DUPTABLE R6 K4 [{"Text", "tag", "ref"}]
  GETTABLEKS R7 R0 K5 ["text"]
  SETTABLEKS R7 R6 K1 ["Text"]
  NEWTABLE R7 4 0
  LOADB R8 1
  SETTABLEKS R8 R7 K6 ["size-full-0 auto-y text-caption-small text-align-x-left text-align-y-top text-wrap"]
  GETTABLEKS R9 R0 K7 ["hasError"]
  NOT R8 R9
  SETTABLEKS R8 R7 K8 ["content-default"]
  GETTABLEKS R8 R0 K7 ["hasError"]
  SETTABLEKS R8 R7 K9 ["content-action-alert"]
  SETTABLEKS R7 R6 K2 ["tag"]
  SETTABLEKS R1 R6 K3 ["ref"]
  CALL R4 2 -1
  CALL R2 -1 -1
  RETURN R2 -1

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
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Utility"]
  GETTABLEKS R6 R7 K12 ["withCommonProps"]
  CALL R5 1 1
  DUPCLOSURE R6 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  GETTABLEKS R7 R2 K14 ["memo"]
  GETTABLEKS R8 R2 K15 ["forwardRef"]
  MOVE R9 R6
  CALL R8 1 -1
  CALL R7 -1 -1
  RETURN R7 -1
