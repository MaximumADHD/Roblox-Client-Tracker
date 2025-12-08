PROTO_0:
  GETUPVAL R0 0
  CALL R0 0 1
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K0 ["View"]
  DUPTABLE R3 K2 [{"tag"}]
  LOADK R4 K3 ["size-full col bg-surface-200 gap-medium align-y-center align-x-center"]
  SETTABLEKS R4 R3 K1 ["tag"]
  DUPTABLE R4 K6 [{"Icon", "Message"}]
  GETUPVAL R5 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K4 ["Icon"]
  DUPTABLE R7 K11 [{"name", "style", "size", "LayoutOrder"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K12 ["Enums"]
  GETTABLEKS R9 R10 K13 ["IconName"]
  GETTABLEKS R8 R9 K14 ["SquareBooks"]
  SETTABLEKS R8 R7 K7 ["name"]
  GETTABLEKS R10 R0 K15 ["Color"]
  GETTABLEKS R9 R10 K16 ["ActionStandard"]
  GETTABLEKS R8 R9 K17 ["Foreground"]
  SETTABLEKS R8 R7 K8 ["style"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K12 ["Enums"]
  GETTABLEKS R9 R10 K18 ["IconSize"]
  GETTABLEKS R8 R9 K19 ["Large"]
  SETTABLEKS R8 R7 K9 ["size"]
  GETUPVAL R8 3
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K4 ["Icon"]
  GETUPVAL R5 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K20 ["Text"]
  DUPTABLE R7 K21 [{"tag", "Text", "LayoutOrder"}]
  LOADK R8 K22 ["auto-xy text-heading-medium"]
  SETTABLEKS R8 R7 K1 ["tag"]
  LOADK R8 K23 ["Select a story to preview it"]
  SETTABLEKS R8 R7 K20 ["Text"]
  GETUPVAL R8 3
  CALL R8 0 1
  SETTABLEKS R8 R7 K10 ["LayoutOrder"]
  CALL R5 2 1
  SETTABLEKS R5 R4 K5 ["Message"]
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
  GETTABLEKS R4 R5 K9 ["Common"]
  GETTABLEKS R3 R4 K10 ["nextLayoutOrder"]
  CALL R2 1 1
  GETTABLEKS R4 R0 K11 ["Hooks"]
  GETTABLEKS R3 R4 K12 ["useTokens"]
  GETTABLEKS R4 R1 K13 ["createElement"]
  DUPCLOSURE R5 K14 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R5 1
