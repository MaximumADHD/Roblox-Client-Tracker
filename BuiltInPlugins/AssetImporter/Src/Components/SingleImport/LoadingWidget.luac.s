PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["View"]
  DUPTABLE R3 K3 [{"tag"}]
  LOADK R4 K4 ["size-full-0 auto-y row align-y-center align-x-left gap-large margin-medium"]
  SETTABLEKS R4 R3 K2 ["tag"]
  DUPTABLE R4 K7 [{"loadingIcon", "MainText"}]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K1 ["View"]
  DUPTABLE R7 K9 [{"tag", "LayoutOrder"}]
  LOADK R8 K10 ["size-0-0 auto-xy"]
  SETTABLEKS R8 R7 K2 ["tag"]
  LOADN R8 1
  SETTABLEKS R8 R7 K8 ["LayoutOrder"]
  NEWTABLE R8 0 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K0 ["createElement"]
  GETUPVAL R10 2
  DUPTABLE R11 K13 [{"size", "testId"}]
  GETUPVAL R13 3
  GETTABLEKS R12 R13 K14 ["Large"]
  SETTABLEKS R12 R11 K11 ["size"]
  LOADK R12 K15 ["loadingSymbol"]
  SETTABLEKS R12 R11 K12 ["testId"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 1
  SETTABLEKS R5 R4 K5 ["loadingIcon"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K16 ["Text"]
  DUPTABLE R7 K17 [{"tag", "Text", "LayoutOrder", "testId"}]
  LOADK R8 K18 ["text-align-x-left text-wrap text-body-medium size-0-0 auto-xy shrink"]
  SETTABLEKS R8 R7 K2 ["tag"]
  GETTABLEKS R8 R0 K19 ["text"]
  SETTABLEKS R8 R7 K16 ["Text"]
  LOADN R8 2
  SETTABLEKS R8 R7 K8 ["LayoutOrder"]
  LOADK R8 K20 ["loadingText"]
  SETTABLEKS R8 R7 K12 ["testId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["MainText"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetImporter"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Foundation"]
  CALL R2 1 1
  GETTABLEKS R3 R2 K9 ["Loading"]
  GETTABLEKS R5 R2 K10 ["Enums"]
  GETTABLEKS R4 R5 K11 ["IconSize"]
  DUPCLOSURE R5 K12 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
