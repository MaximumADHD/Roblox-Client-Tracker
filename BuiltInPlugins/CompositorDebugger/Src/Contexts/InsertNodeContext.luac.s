PROTO_0:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  GETUPVAL R2 1
  GETTABLEKS R1 R2 K0 ["enable"]
  CALL R1 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useToggleState"]
  LOADB R2 0
  CALL R1 1 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["useState"]
  GETIMPORT R3 K4 [Vector2.new]
  LOADN R4 0
  LOADN R5 0
  CALL R3 2 -1
  CALL R2 -1 2
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K1 ["useState"]
  LOADNIL R5
  CALL R4 1 2
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K5 ["useCallback"]
  NEWCLOSURE R7 P0
  CAPTURE VAL R3
  CAPTURE VAL R1
  NEWTABLE R8 0 2
  MOVE R9 R3
  GETTABLEKS R10 R1 K6 ["enable"]
  SETLIST R8 R9 2 [1]
  CALL R6 2 1
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K7 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K8 ["Provider"]
  DUPTABLE R9 K10 [{"value"}]
  DUPTABLE R10 K16 [{"menuState", "plotPosition", "openInsertNodeMenu", "currentConnectionInfo", "setCurrentConnectionInfo"}]
  SETTABLEKS R1 R10 K11 ["menuState"]
  SETTABLEKS R2 R10 K12 ["plotPosition"]
  SETTABLEKS R6 R10 K13 ["openInsertNodeMenu"]
  SETTABLEKS R4 R10 K14 ["currentConnectionInfo"]
  SETTABLEKS R5 R10 K15 ["setCurrentConnectionInfo"]
  SETTABLEKS R10 R9 K9 ["value"]
  GETTABLEKS R10 R0 K17 ["children"]
  CALL R7 3 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["AnimationEditor"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Graphing"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R6 R0 K6 ["Packages"]
  GETTABLEKS R5 R6 K10 ["ReactUtils"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K11 ["Src"]
  GETTABLEKS R7 R8 K12 ["Contexts"]
  GETTABLEKS R6 R7 K13 ["ViewportRectContext"]
  CALL R5 1 1
  DUPTABLE R6 K19 [{"menuState", "plotPosition", "openInsertNodeMenu", "currentConnectionInfo", "setCurrentConnectionInfo"}]
  DUPTABLE R7 K25 [{"disable", "enable", "enabled", "set", "toggle"}]
  GETTABLEKS R8 R4 K26 ["createUnimplemented"]
  LOADK R9 K27 ["ToggleState.disable"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K20 ["disable"]
  GETTABLEKS R8 R4 K26 ["createUnimplemented"]
  LOADK R9 K28 ["ToggleState.enable"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K21 ["enable"]
  LOADB R8 0
  SETTABLEKS R8 R7 K22 ["enabled"]
  GETTABLEKS R8 R4 K26 ["createUnimplemented"]
  LOADK R9 K29 ["ToggleState.set"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K23 ["set"]
  GETTABLEKS R8 R4 K26 ["createUnimplemented"]
  LOADK R9 K30 ["ToggleState.toggle"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K24 ["toggle"]
  SETTABLEKS R7 R6 K14 ["menuState"]
  GETIMPORT R7 K33 [Vector2.zero]
  SETTABLEKS R7 R6 K15 ["plotPosition"]
  GETTABLEKS R7 R4 K26 ["createUnimplemented"]
  LOADK R8 K16 ["openInsertNodeMenu"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K16 ["openInsertNodeMenu"]
  LOADNIL R7
  SETTABLEKS R7 R6 K17 ["currentConnectionInfo"]
  GETTABLEKS R7 R4 K26 ["createUnimplemented"]
  LOADK R8 K18 ["setCurrentConnectionInfo"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K18 ["setCurrentConnectionInfo"]
  GETTABLEKS R7 R3 K34 ["createContext"]
  MOVE R8 R6
  CALL R7 1 1
  DUPCLOSURE R8 K35 [PROTO_1]
  CAPTURE VAL R4
  CAPTURE VAL R3
  CAPTURE VAL R7
  DUPTABLE R9 K38 [{"Context", "Provider"}]
  SETTABLEKS R7 R9 K36 ["Context"]
  SETTABLEKS R8 R9 K37 ["Provider"]
  RETURN R9 1
