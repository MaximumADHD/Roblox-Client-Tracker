PROTO_0:
  GETUPVAL R1 0
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["View"]
  DUPTABLE R3 K3 [{"tag", "LayoutOrder"}]
  LOADK R4 K4 ["size-full-0 auto-y col gap-medium"]
  SETTABLEKS R4 R3 K1 ["tag"]
  GETTABLEKS R4 R0 K5 ["layoutOrder"]
  SETTABLEKS R4 R3 K2 ["LayoutOrder"]
  DUPTABLE R4 K8 [{"Title", "Summary"}]
  GETUPVAL R5 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["Text"]
  DUPTABLE R7 K10 [{"tag", "Text", "LayoutOrder"}]
  LOADK R8 K11 ["auto-xy text-heading-large"]
  SETTABLEKS R8 R7 K1 ["tag"]
  GETTABLEKS R9 R0 K12 ["story"]
  GETTABLEKS R8 R9 K13 ["name"]
  SETTABLEKS R8 R7 K9 ["Text"]
  GETUPVAL R8 2
  CALL R8 0 1
  SETTABLEKS R8 R7 K2 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K6 ["Title"]
  GETTABLEKS R6 R0 K12 ["story"]
  GETTABLEKS R5 R6 K14 ["summary"]
  JUMPIFNOT R5 [+29]
  GETUPVAL R5 0
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K9 ["Text"]
  DUPTABLE R7 K16 [{"tag", "LayoutOrder", "Text", "sizeConstraint"}]
  LOADK R8 K17 ["auto-xy text-body-medium text-wrap"]
  SETTABLEKS R8 R7 K1 ["tag"]
  GETUPVAL R8 2
  CALL R8 0 1
  SETTABLEKS R8 R7 K2 ["LayoutOrder"]
  GETTABLEKS R9 R0 K12 ["story"]
  GETTABLEKS R8 R9 K14 ["summary"]
  SETTABLEKS R8 R7 K9 ["Text"]
  DUPTABLE R8 K19 [{"MaxSize"}]
  GETIMPORT R9 K22 [Vector2.new]
  LOADN R10 88
  LOADK R11 K23 [∞]
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["MaxSize"]
  SETTABLEKS R8 R7 K15 ["sizeConstraint"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K7 ["Summary"]
  CALL R1 3 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["RobloxPackages"]
  GETTABLEKS R1 R2 K6 ["Foundation"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Storyteller"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K10 ["Common"]
  GETTABLEKS R4 R5 K11 ["nextLayoutOrder"]
  CALL R3 1 1
  GETTABLEKS R4 R1 K12 ["createElement"]
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R3
  RETURN R5 1
