PROTO_0:
  NEWTABLE R1 0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["useContext"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["Context"]
  CALL R2 1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["Provider"]
  DUPTABLE R5 K5 [{"value"}]
  SETTABLEKS R1 R5 K4 ["value"]
  DUPTABLE R6 K8 [{"Children", "FrameViewportAction"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K9 ["Fragment"]
  NEWTABLE R9 0 0
  GETTABLEKS R10 R0 K10 ["children"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K6 ["Children"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K2 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K17 [{"ActionId", "Text", "StatusTip", "Enabled", "DefaultShortcut", "OnTrigger"}]
  LOADK R10 K18 ["frame_viewport"]
  SETTABLEKS R10 R9 K11 ["ActionId"]
  LOADK R10 K19 ["Frame Viewport"]
  SETTABLEKS R10 R9 K12 ["Text"]
  LOADK R10 K20 ["Frames the viewport to the selected nodes"]
  SETTABLEKS R10 R9 K13 ["StatusTip"]
  GETTABLEKS R10 R0 K21 ["focused"]
  SETTABLEKS R10 R9 K14 ["Enabled"]
  LOADK R10 K22 ["F"]
  SETTABLEKS R10 R9 K15 ["DefaultShortcut"]
  GETTABLEKS R10 R2 K23 ["frameSelection"]
  SETTABLEKS R10 R9 K16 ["OnTrigger"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K7 ["FrameViewportAction"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETTABLEKS R3 R1 K9 ["PluginAction"]
  GETTABLEKS R4 R1 K10 ["ViewportRectContext"]
  NEWTABLE R5 0 0
  GETTABLEKS R6 R2 K11 ["createContext"]
  MOVE R7 R5
  CALL R6 1 1
  DUPCLOSURE R7 K12 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R6
  CAPTURE VAL R3
  DUPTABLE R8 K15 [{"Context", "Provider"}]
  SETTABLEKS R6 R8 K13 ["Context"]
  SETTABLEKS R7 R8 K14 ["Provider"]
  RETURN R8 1
