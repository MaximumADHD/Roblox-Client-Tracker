PROTO_0:
  GETUPVAL R1 0
  LOADK R3 K0 ["No Cursor Provider found"]
  NAMECALL R1 R1 K1 ["warning"]
  CALL R1 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  LOADK R3 K0 ["No Cursor Provider found"]
  NAMECALL R1 R1 K1 ["warning"]
  CALL R1 2 0
  RETURN R0 0

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
  GETTABLEKS R5 R0 K8 ["Utility"]
  GETTABLEKS R4 R5 K9 ["Logger"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K10 ["Enums"]
  GETTABLEKS R5 R6 K11 ["CursorType"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K12 ["Components"]
  GETTABLEKS R6 R7 K13 ["Types"]
  CALL R5 1 1
  GETTABLEKS R6 R2 K14 ["createContext"]
  DUPTABLE R7 K18 [{"refCache", "setMountedCursors", "getCursor"}]
  NEWTABLE R8 0 0
  SETTABLEKS R8 R7 K15 ["refCache"]
  DUPCLOSURE R8 K19 [PROTO_0]
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K16 ["setMountedCursors"]
  DUPCLOSURE R8 K20 [PROTO_1]
  CAPTURE VAL R3
  SETTABLEKS R8 R7 K17 ["getCursor"]
  CALL R6 1 1
  RETURN R6 1
