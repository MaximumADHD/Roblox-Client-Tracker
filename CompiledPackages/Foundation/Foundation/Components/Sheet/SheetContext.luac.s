PROTO_0:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["No SheetContext available"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["No SheetContext available"]
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["No SheetContext available"]
  CALL R1 1 0
  RETURN R0 0

PROTO_3:
  GETIMPORT R1 K1 [error]
  LOADK R2 K2 ["No SheetContext available"]
  CALL R1 1 0
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
  GETIMPORT R6 K1 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K8 ["SheetType"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K9 ["createContext"]
  DUPTABLE R5 K25 [{"sheetHeightAvailable", "setSheetHeightAvailable", "actionsHeight", "setActionsHeight", "safeAreaPadding", "bottomPadding", "innerScrollingEnabled", "innerScrollY", "setInnerScrollY", "hasHeader", "setHasHeader", "closeSheet", "sheetType", "innerSurface", "testId"}]
  LOADNIL R6
  SETTABLEKS R6 R5 K10 ["sheetHeightAvailable"]
  DUPCLOSURE R6 K26 [PROTO_0]
  SETTABLEKS R6 R5 K11 ["setSheetHeightAvailable"]
  LOADNIL R6
  SETTABLEKS R6 R5 K12 ["actionsHeight"]
  DUPCLOSURE R6 K27 [PROTO_1]
  SETTABLEKS R6 R5 K13 ["setActionsHeight"]
  LOADNIL R6
  SETTABLEKS R6 R5 K14 ["safeAreaPadding"]
  LOADNIL R6
  SETTABLEKS R6 R5 K15 ["bottomPadding"]
  LOADNIL R6
  SETTABLEKS R6 R5 K16 ["innerScrollingEnabled"]
  LOADNIL R6
  SETTABLEKS R6 R5 K17 ["innerScrollY"]
  DUPCLOSURE R6 K28 [PROTO_2]
  SETTABLEKS R6 R5 K18 ["setInnerScrollY"]
  LOADNIL R6
  SETTABLEKS R6 R5 K19 ["hasHeader"]
  DUPCLOSURE R6 K29 [PROTO_3]
  SETTABLEKS R6 R5 K20 ["setHasHeader"]
  LOADNIL R6
  SETTABLEKS R6 R5 K21 ["closeSheet"]
  LOADNIL R6
  SETTABLEKS R6 R5 K22 ["sheetType"]
  LOADNIL R6
  SETTABLEKS R6 R5 K23 ["innerSurface"]
  LOADNIL R6
  SETTABLEKS R6 R5 K24 ["testId"]
  CALL R4 1 -1
  RETURN R4 -1
