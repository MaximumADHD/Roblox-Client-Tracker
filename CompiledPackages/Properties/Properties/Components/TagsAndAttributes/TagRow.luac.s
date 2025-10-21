PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createNextOrder"]
  CALL R1 0 1
  GETUPVAL R2 1
  GETUPVAL R3 2
  DUPTABLE R4 K3 [{"tag", "LayoutOrder"}]
  LOADK R5 K4 ["row align-y-center padding-left-medium gap-small size-full-700"]
  SETTABLEKS R5 R4 K1 ["tag"]
  GETTABLEKS R5 R0 K2 ["LayoutOrder"]
  SETTABLEKS R5 R4 K2 ["LayoutOrder"]
  DUPTABLE R5 K8 [{"ArrowSpacer", "Icon", "TagName"}]
  GETUPVAL R6 1
  GETUPVAL R7 3
  DUPTABLE R8 K9 [{"LayoutOrder"}]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K5 ["ArrowSpacer"]
  GETUPVAL R6 1
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K10 ["Image"]
  DUPTABLE R8 K12 [{"tag", "LayoutOrder", "image"}]
  LOADK R9 K13 ["size-300-300 bg-alert"]
  SETTABLEKS R9 R8 K1 ["tag"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  GETTABLEKS R10 R0 K1 ["tag"]
  GETTABLEKS R9 R10 K14 ["icon"]
  SETTABLEKS R9 R8 K11 ["image"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Icon"]
  GETUPVAL R6 1
  GETUPVAL R7 5
  DUPTABLE R8 K16 [{"tag", "LayoutOrder", "Text"}]
  LOADK R9 K17 ["clip text-no-wrap text-align-x-left text-align-y-center text-body-small size-full-full"]
  SETTABLEKS R9 R8 K1 ["tag"]
  MOVE R9 R1
  CALL R9 0 1
  SETTABLEKS R9 R8 K2 ["LayoutOrder"]
  GETTABLEKS R10 R0 K1 ["tag"]
  GETTABLEKS R9 R10 K18 ["name"]
  SETTABLEKS R9 R8 K15 ["Text"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["TagName"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Properties"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Foundation"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K8 ["Util"]
  GETTABLEKS R4 R5 K9 ["LeftArrowSpacer"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R5 R1 K10 ["React"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R6 R1 K11 ["ReactUtils"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R0 K12 ["RpcTypes"]
  CALL R6 1 1
  GETTABLEKS R7 R4 K13 ["createElement"]
  GETTABLEKS R8 R2 K14 ["Text"]
  GETTABLEKS R9 R2 K15 ["View"]
  DUPCLOSURE R10 K16 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R9
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R8
  RETURN R10 1
