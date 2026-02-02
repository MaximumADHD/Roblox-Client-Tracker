PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Weight"]
  JUMPIFNOTEQKNIL R0 [+3]
  LOADNIL R0
  RETURN R0 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Weight"]
  MULK R1 R2 K1 [100]
  FASTCALL1 MATH_ROUND R1 [+2]
  GETIMPORT R0 K4 [math.round]
  CALL R0 1 1
  RETURN R0 1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useMemo"]
  NEWCLOSURE R2 P0
  CAPTURE VAL R0
  NEWTABLE R3 0 1
  GETTABLEKS R4 R0 K1 ["Weight"]
  SETLIST R3 R4 1 [1]
  CALL R1 2 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K3 ["View"]
  DUPTABLE R4 K6 [{"tag", "LayoutOrder"}]
  LOADK R5 K7 ["row auto-xy gap-small flex-x-start align-y-center"]
  SETTABLEKS R5 R4 K4 ["tag"]
  GETTABLEKS R5 R0 K5 ["LayoutOrder"]
  SETTABLEKS R5 R4 K5 ["LayoutOrder"]
  DUPTABLE R5 K10 [{"InputLabel", "InputWeight"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["Text"]
  DUPTABLE R8 K12 [{"tag", "Text", "LayoutOrder"}]
  LOADK R9 K13 ["content-emphasis text-body-small text-align-x-left auto-xy"]
  SETTABLEKS R9 R8 K4 ["tag"]
  GETTABLEKS R9 R0 K14 ["Name"]
  SETTABLEKS R9 R8 K11 ["Text"]
  LOADN R9 1
  SETTABLEKS R9 R8 K5 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["InputLabel"]
  JUMPIFEQKNIL R1 [+24]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K11 ["Text"]
  DUPTABLE R8 K12 [{"tag", "Text", "LayoutOrder"}]
  LOADK R9 K15 ["content-muted text-body-small text-align-x-left auto-xy"]
  SETTABLEKS R9 R8 K4 ["tag"]
  LOADK R10 K16 ["%*%%"]
  MOVE R12 R1
  NAMECALL R10 R10 K17 ["format"]
  CALL R10 2 1
  MOVE R9 R10
  SETTABLEKS R9 R8 K11 ["Text"]
  LOADN R9 2
  SETTABLEKS R9 R8 K5 ["LayoutOrder"]
  CALL R6 2 1
  JUMP [+1]
  LOADNIL R6
  SETTABLEKS R6 R5 K9 ["InputWeight"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AnimationEditor"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Parent"]
  GETTABLEKS R2 R3 K7 ["Foundation"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Parent"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  DUPCLOSURE R3 K9 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  RETURN R3 1
