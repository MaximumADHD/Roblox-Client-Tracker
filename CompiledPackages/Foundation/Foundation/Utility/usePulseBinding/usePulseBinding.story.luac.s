PROTO_0:
  GETIMPORT R1 K2 [UDim2.fromOffset]
  MULK R2 R0 K3 [50]
  MULK R3 R0 K3 [50]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K1 ["cycleTime"]
  GETIMPORT R4 K4 [NumberRange.new]
  GETTABLEKS R5 R1 K5 ["rangeMin"]
  GETTABLEKS R6 R1 K6 ["rangeMax"]
  CALL R4 2 -1
  CALL R2 -1 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K7 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K9 [{"Size"}]
  GETIMPORT R6 K12 [UDim2.fromOffset]
  GETTABLEKS R8 R1 K6 ["rangeMax"]
  MULK R7 R8 K13 [50]
  GETTABLEKS R9 R1 K6 ["rangeMax"]
  MULK R8 R9 K13 [50]
  CALL R6 2 1
  SETTABLEKS R6 R5 K8 ["Size"]
  DUPTABLE R6 K15 [{"Icon"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K18 [{"Image", "Size", "tag"}]
  LOADK R10 K19 ["reactions/heart"]
  SETTABLEKS R10 R9 K16 ["Image"]
  DUPCLOSURE R12 K20 [PROTO_0]
  NAMECALL R10 R2 K21 ["map"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K8 ["Size"]
  LOADK R10 K22 ["anchor-center-center position-center-center"]
  SETTABLEKS R10 R9 K17 ["tag"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["Icon"]
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
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Image"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  CALL R5 1 1
  DUPCLOSURE R6 K11 [PROTO_1]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R3
  DUPTABLE R7 K15 [{"summary", "stories", "controls"}]
  LOADK R8 K16 ["Creates a binding used for various pulsating effects"]
  SETTABLEKS R8 R7 K12 ["summary"]
  NEWTABLE R8 0 1
  DUPTABLE R9 K19 [{"name", "story"}]
  LOADK R10 K20 ["Example"]
  SETTABLEKS R10 R9 K17 ["name"]
  SETTABLEKS R6 R9 K18 ["story"]
  SETLIST R8 R9 1 [1]
  SETTABLEKS R8 R7 K13 ["stories"]
  DUPTABLE R8 K24 [{"cycleTime", "rangeMin", "rangeMax"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K21 ["cycleTime"]
  LOADK R9 K25 [0.5]
  SETTABLEKS R9 R8 K22 ["rangeMin"]
  LOADK R9 K26 [0.75]
  SETTABLEKS R9 R8 K23 ["rangeMax"]
  SETTABLEKS R8 R7 K14 ["controls"]
  RETURN R7 1
