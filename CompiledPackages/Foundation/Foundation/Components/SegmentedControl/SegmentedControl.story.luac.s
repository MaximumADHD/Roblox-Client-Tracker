PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETUPVAL R4 1
  GETTABLEN R3 R4 1
  GETTABLEKS R2 R3 K1 ["id"]
  CALL R1 1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K4 [{"tag"}]
  LOADK R6 K5 ["col auto-xy"]
  SETTABLEKS R6 R5 K3 ["tag"]
  DUPTABLE R6 K7 [{"SegmentedControl"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K12 [{"size", "segments", "value", "onActivated"}]
  GETTABLEKS R11 R0 K13 ["controls"]
  GETTABLEKS R10 R11 K8 ["size"]
  SETTABLEKS R10 R9 K8 ["size"]
  GETUPVAL R10 1
  SETTABLEKS R10 R9 K9 ["segments"]
  SETTABLEKS R1 R9 K10 ["value"]
  SETTABLEKS R2 R9 K11 ["onActivated"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K6 ["SegmentedControl"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R6 R0 K9 ["Components"]
  GETTABLEKS R5 R6 K10 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K9 ["Components"]
  GETTABLEKS R6 R7 K11 ["View"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K9 ["Components"]
  GETTABLEKS R7 R8 K12 ["SegmentedControl"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K13 ["Enums"]
  GETTABLEKS R8 R9 K14 ["InputSize"]
  CALL R7 1 1
  NEWTABLE R8 0 5
  DUPTABLE R9 K17 [{"id", "text"}]
  LOADK R10 K18 ["1"]
  SETTABLEKS R10 R9 K15 ["id"]
  LOADK R10 K19 ["Lorem Ipsum"]
  SETTABLEKS R10 R9 K16 ["text"]
  DUPTABLE R10 K17 [{"id", "text"}]
  LOADK R11 K20 ["2"]
  SETTABLEKS R11 R10 K15 ["id"]
  LOADK R11 K19 ["Lorem Ipsum"]
  SETTABLEKS R11 R10 K16 ["text"]
  DUPTABLE R11 K17 [{"id", "text"}]
  LOADK R12 K21 ["3"]
  SETTABLEKS R12 R11 K15 ["id"]
  LOADK R12 K19 ["Lorem Ipsum"]
  SETTABLEKS R12 R11 K16 ["text"]
  DUPTABLE R12 K17 [{"id", "text"}]
  LOADK R13 K22 ["4"]
  SETTABLEKS R13 R12 K15 ["id"]
  LOADK R13 K19 ["Lorem Ipsum"]
  SETTABLEKS R13 R12 K16 ["text"]
  DUPTABLE R13 K17 [{"id", "text"}]
  LOADK R14 K23 ["5"]
  SETTABLEKS R14 R13 K15 ["id"]
  LOADK R14 K24 ["Lorem Ipsum Long"]
  SETTABLEKS R14 R13 K16 ["text"]
  SETLIST R8 R9 5 [1]
  DUPCLOSURE R9 K25 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R8
  CAPTURE VAL R5
  CAPTURE VAL R6
  DUPTABLE R10 K29 [{"summary", "story", "controls"}]
  LOADK R11 K12 ["SegmentedControl"]
  SETTABLEKS R11 R10 K26 ["summary"]
  SETTABLEKS R9 R10 K27 ["story"]
  DUPTABLE R11 K31 [{"size"}]
  GETTABLEKS R12 R2 K32 ["values"]
  MOVE R13 R7
  CALL R12 1 1
  SETTABLEKS R12 R11 K30 ["size"]
  SETTABLEKS R11 R10 K28 ["controls"]
  RETURN R10 1
