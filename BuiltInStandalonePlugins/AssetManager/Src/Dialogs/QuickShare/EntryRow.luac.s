PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K3 [{"LayoutOrder", "tag"}]
  GETTABLEKS R4 R0 K1 ["LayoutOrder"]
  SETTABLEKS R4 R3 K1 ["LayoutOrder"]
  LOADK R4 K4 ["row size-full-700 align-x-left align-y-center padding-left-xsmall gap-small"]
  SETTABLEKS R4 R3 K2 ["tag"]
  DUPTABLE R4 K7 [{"Thumbnail", "Name"}]
  GETTABLEKS R6 R0 K8 ["Uri"]
  JUMPIFEQKNIL R6 [+18]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 2
  DUPTABLE R7 K10 [{"LayoutOrder", "Image", "tag"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  GETTABLEKS R8 R0 K8 ["Uri"]
  SETTABLEKS R8 R7 K9 ["Image"]
  LOADK R8 K11 ["size-600 radius-small data-testid=entryrow-image"]
  SETTABLEKS R8 R7 K2 ["tag"]
  CALL R5 2 1
  JUMP [+34]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K16 [{"LayoutOrder", "userId", "userPresence", "size", "testId"}]
  LOADN R8 1
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  GETTABLEKS R8 R0 K17 ["Id"]
  SETTABLEKS R8 R7 K12 ["userId"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K18 ["Enums"]
  GETTABLEKS R9 R10 K19 ["UserPresence"]
  GETTABLEKS R8 R9 K20 ["None"]
  SETTABLEKS R8 R7 K13 ["userPresence"]
  GETUPVAL R11 4
  GETTABLEKS R10 R11 K18 ["Enums"]
  GETTABLEKS R9 R10 K21 ["InputSize"]
  GETTABLEKS R8 R9 K22 ["XSmall"]
  SETTABLEKS R8 R7 K14 ["size"]
  LOADK R8 K23 ["entryrow-avatar"]
  SETTABLEKS R8 R7 K15 ["testId"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Thumbnail"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["createElement"]
  GETUPVAL R6 5
  DUPTABLE R7 K25 [{"LayoutOrder", "tag", "Text"}]
  LOADN R8 2
  SETTABLEKS R8 R7 K1 ["LayoutOrder"]
  LOADK R8 K26 ["text-body-medium text-wrap auto-xy"]
  SETTABLEKS R8 R7 K2 ["tag"]
  GETTABLEKS R8 R0 K24 ["Text"]
  SETTABLEKS R8 R7 K24 ["Text"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Name"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetManager"]
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
  GETTABLEKS R3 R2 K9 ["View"]
  GETTABLEKS R4 R2 K10 ["Avatar"]
  GETTABLEKS R5 R2 K11 ["Image"]
  GETTABLEKS R6 R2 K12 ["Text"]
  DUPCLOSURE R7 K13 [PROTO_0]
  CAPTURE VAL R1
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R6
  RETURN R7 1
