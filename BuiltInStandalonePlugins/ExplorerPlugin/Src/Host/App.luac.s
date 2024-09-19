PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["ContextStack"]
  DUPTABLE R2 K2 [{"providers"}]
  NEWTABLE R3 0 4
  GETUPVAL R4 0
  GETUPVAL R5 2
  CALL R4 1 1
  GETUPVAL R5 0
  GETUPVAL R6 3
  CALL R5 1 1
  GETUPVAL R6 0
  GETUPVAL R7 4
  CALL R6 1 1
  GETUPVAL R7 0
  GETUPVAL R8 5
  CALL R7 1 -1
  SETLIST R3 R4 -1 [1]
  SETTABLEKS R3 R2 K1 ["providers"]
  DUPTABLE R3 K4 [{"MainView"}]
  GETUPVAL R4 0
  GETUPVAL R7 6
  GETTABLEKS R6 R7 K5 ["Components"]
  GETTABLEKS R5 R6 K3 ["MainView"]
  CALL R4 1 1
  SETTABLEKS R4 R3 K3 ["MainView"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["ExplorerPlugin"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Explorer"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["ReactUtils"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K11 ["Host"]
  GETTABLEKS R6 R7 K12 ["Contexts"]
  GETTABLEKS R5 R6 K13 ["StudioActiveViewContextProvider"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K14 ["ContextMenu"]
  GETTABLEKS R6 R7 K15 ["StudioContextMenuContextProvider"]
  CALL R5 1 1
  GETIMPORT R6 K5 [require]
  GETTABLEKS R10 R0 K10 ["Src"]
  GETTABLEKS R9 R10 K11 ["Host"]
  GETTABLEKS R8 R9 K12 ["Contexts"]
  GETTABLEKS R7 R8 K16 ["StudioNetworkContextProvider"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R11 R0 K10 ["Src"]
  GETTABLEKS R10 R11 K11 ["Host"]
  GETTABLEKS R9 R10 K12 ["Contexts"]
  GETTABLEKS R8 R9 K17 ["StudioThemeContextProvider"]
  CALL R7 1 1
  GETTABLEKS R8 R2 K18 ["createElement"]
  DUPCLOSURE R9 K19 [PROTO_0]
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R1
  RETURN R9 1
