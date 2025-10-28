PROTO_0:
  GETIMPORT R1 K2 [Vector2.new]
  GETTABLEKS R4 R0 K3 ["X"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["viewportRect"]
  GETTABLEKS R6 R7 K5 ["Min"]
  GETTABLEKS R5 R6 K3 ["X"]
  SUB R3 R4 R5
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["viewportRect"]
  GETTABLEKS R6 R7 K6 ["Max"]
  GETTABLEKS R5 R6 K3 ["X"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["viewportRect"]
  GETTABLEKS R7 R8 K5 ["Min"]
  GETTABLEKS R6 R7 K3 ["X"]
  SUB R4 R5 R6
  DIV R2 R3 R4
  GETTABLEKS R6 R0 K8 ["Y"]
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["viewportRect"]
  GETTABLEKS R8 R9 K5 ["Min"]
  GETTABLEKS R7 R8 K8 ["Y"]
  SUB R5 R6 R7
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K4 ["viewportRect"]
  GETTABLEKS R8 R9 K6 ["Max"]
  GETTABLEKS R7 R8 K8 ["Y"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K4 ["viewportRect"]
  GETTABLEKS R9 R10 K5 ["Min"]
  GETTABLEKS R8 R9 K8 ["Y"]
  SUB R6 R7 R8
  DIV R4 R5 R6
  SUBRK R3 R7 K4 ["viewportRect"]
  CALL R1 2 1
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R2 1 0
  GETUPVAL R2 2
  MOVE R3 R1
  CALL R2 1 0
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K9 ["enable"]
  CALL R2 0 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useContext"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["CanvasContext"]
  CALL R1 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K2 ["Context"]
  CALL R2 1 1
  GETUPVAL R4 3
  GETTABLEKS R3 R4 K3 ["useToggleState"]
  LOADB R4 0
  CALL R3 1 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K4 ["useState"]
  GETIMPORT R5 K7 [Vector2.new]
  LOADN R6 0
  LOADN R7 0
  CALL R5 2 -1
  CALL R4 -1 2
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K4 ["useState"]
  GETIMPORT R7 K7 [Vector2.new]
  LOADN R8 0
  LOADN R9 0
  CALL R7 2 -1
  CALL R6 -1 2
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K4 ["useState"]
  LOADNIL R9
  CALL R8 1 2
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["useCallback"]
  NEWCLOSURE R11 P0
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R3
  NEWTABLE R12 0 5
  MOVE R13 R1
  GETTABLEKS R14 R2 K9 ["viewportRect"]
  MOVE R15 R5
  MOVE R16 R7
  GETTABLEKS R17 R3 K10 ["enable"]
  SETLIST R12 R13 5 [1]
  CALL R10 2 1
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K11 ["createElement"]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K12 ["Provider"]
  DUPTABLE R13 K14 [{"value"}]
  DUPTABLE R14 K23 [{"menuState", "canvasPosition", "setCanvasPosition", "scalePosition", "setScalePosition", "openInsertNodeMenu", "currentConnectionInfo", "setCurrentConnectionInfo"}]
  SETTABLEKS R3 R14 K15 ["menuState"]
  SETTABLEKS R4 R14 K16 ["canvasPosition"]
  SETTABLEKS R5 R14 K17 ["setCanvasPosition"]
  SETTABLEKS R6 R14 K18 ["scalePosition"]
  SETTABLEKS R7 R14 K19 ["setScalePosition"]
  SETTABLEKS R10 R14 K20 ["openInsertNodeMenu"]
  SETTABLEKS R8 R14 K21 ["currentConnectionInfo"]
  SETTABLEKS R9 R14 K22 ["setCurrentConnectionInfo"]
  SETTABLEKS R14 R13 K13 ["value"]
  GETTABLEKS R14 R0 K24 ["children"]
  CALL R11 3 -1
  RETURN R11 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Graphing"]
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
  GETTABLEKS R6 R0 K10 ["Src"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R8 R0 K10 ["Src"]
  GETTABLEKS R7 R8 K12 ["Contexts"]
  GETTABLEKS R6 R7 K13 ["ViewportRectContext"]
  CALL R5 1 1
  DUPTABLE R6 K22 [{"menuState", "canvasPosition", "setCanvasPosition", "scalePosition", "setScalePosition", "openInsertNodeMenu", "currentConnectionInfo", "setCurrentConnectionInfo"}]
  DUPTABLE R7 K28 [{"disable", "enable", "enabled", "set", "toggle"}]
  GETTABLEKS R8 R3 K29 ["createUnimplemented"]
  LOADK R9 K30 ["ToggleState.disable"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K23 ["disable"]
  GETTABLEKS R8 R3 K29 ["createUnimplemented"]
  LOADK R9 K31 ["ToggleState.enable"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K24 ["enable"]
  LOADB R8 0
  SETTABLEKS R8 R7 K25 ["enabled"]
  GETTABLEKS R8 R3 K29 ["createUnimplemented"]
  LOADK R9 K32 ["ToggleState.set"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K26 ["set"]
  GETTABLEKS R8 R3 K29 ["createUnimplemented"]
  LOADK R9 K33 ["ToggleState.toggle"]
  CALL R8 1 1
  SETTABLEKS R8 R7 K27 ["toggle"]
  SETTABLEKS R7 R6 K14 ["menuState"]
  GETIMPORT R7 K36 [Vector2.new]
  LOADN R8 0
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["canvasPosition"]
  GETTABLEKS R7 R3 K29 ["createUnimplemented"]
  LOADK R8 K16 ["setCanvasPosition"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K16 ["setCanvasPosition"]
  GETIMPORT R7 K36 [Vector2.new]
  LOADN R8 1
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K17 ["scalePosition"]
  GETTABLEKS R7 R3 K29 ["createUnimplemented"]
  LOADK R8 K18 ["setScalePosition"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K18 ["setScalePosition"]
  GETTABLEKS R7 R3 K29 ["createUnimplemented"]
  LOADK R8 K19 ["openInsertNodeMenu"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K19 ["openInsertNodeMenu"]
  LOADNIL R7
  SETTABLEKS R7 R6 K20 ["currentConnectionInfo"]
  GETTABLEKS R7 R3 K29 ["createUnimplemented"]
  LOADK R8 K21 ["setCurrentConnectionInfo"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K21 ["setCurrentConnectionInfo"]
  GETTABLEKS R7 R2 K37 ["createContext"]
  MOVE R8 R6
  CALL R7 1 1
  DUPCLOSURE R8 K38 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R1
  CAPTURE VAL R5
  CAPTURE VAL R3
  CAPTURE VAL R7
  DUPTABLE R9 K41 [{"Context", "Provider"}]
  SETTABLEKS R7 R9 K39 ["Context"]
  SETTABLEKS R8 R9 K40 ["Provider"]
  RETURN R9 1
