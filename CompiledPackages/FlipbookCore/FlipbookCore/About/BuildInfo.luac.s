PROTO_0:
  NEWTABLE R1 0 0
  GETUPVAL R2 0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K0 ["label"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K1 ["createElement"]
  GETUPVAL R10 2
  GETTABLEKS R9 R10 K2 ["Text"]
  DUPTABLE R10 K5 [{"tag", "LayoutOrder", "Text"}]
  LOADK R11 K6 ["auto-xy text-body-medium content-muted"]
  SETTABLEKS R11 R10 K3 ["tag"]
  GETUPVAL R11 3
  CALL R11 0 1
  SETTABLEKS R11 R10 K4 ["LayoutOrder"]
  LOADK R12 K7 ["%*: %*"]
  GETTABLEKS R14 R6 K0 ["label"]
  GETTABLEKS R15 R6 K8 ["value"]
  NAMECALL R12 R12 K9 ["format"]
  CALL R12 3 1
  MOVE R11 R12
  SETTABLEKS R11 R10 K2 ["Text"]
  CALL R8 2 1
  SETTABLE R8 R1 R7
  FORGLOOP R2 2 [-30]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["createElement"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K10 ["View"]
  DUPTABLE R4 K11 [{"tag", "LayoutOrder"}]
  LOADK R5 K12 ["auto-xy col gap-medium align-x-center"]
  SETTABLEKS R5 R4 K3 ["tag"]
  GETTABLEKS R5 R0 K13 ["layoutOrder"]
  SETTABLEKS R5 R4 K4 ["LayoutOrder"]
  MOVE R5 R1
  CALL R2 3 -1
  RETURN R2 -1

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
  NEWTABLE R3 0 3
  DUPTABLE R4 K13 [{"label", "value"}]
  LOADK R5 K14 ["Version"]
  SETTABLEKS R5 R4 K11 ["label"]
  LOADK R5 K15 ["2.3.0"]
  SETTABLEKS R5 R4 K12 ["value"]
  DUPTABLE R5 K13 [{"label", "value"}]
  LOADK R6 K16 ["Channel"]
  SETTABLEKS R6 R5 K11 ["label"]
  LOADK R6 K17 ["production"]
  SETTABLEKS R6 R5 K12 ["value"]
  DUPTABLE R6 K13 [{"label", "value"}]
  LOADK R7 K18 ["Hash"]
  SETTABLEKS R7 R6 K11 ["label"]
  LOADK R7 K19 ["207a999"]
  SETTABLEKS R7 R6 K12 ["value"]
  SETLIST R3 R4 3 [1]
  DUPCLOSURE R4 K20 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R2
  RETURN R4 1
