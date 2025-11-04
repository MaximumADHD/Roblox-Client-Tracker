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
  GETTABLEKS R5 R0 K6 ["Src"]
  GETTABLEKS R4 R5 K7 ["Components"]
  GETTABLEKS R3 R4 K8 ["NodeView"]
  GETTABLEKS R2 R3 K9 ["PluginAction"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K6 ["Src"]
  GETTABLEKS R5 R6 K12 ["Contexts"]
  GETTABLEKS R4 R5 K13 ["ViewportRectContext"]
  CALL R3 1 1
  NEWTABLE R4 0 0
  GETTABLEKS R5 R2 K14 ["createContext"]
  MOVE R6 R4
  CALL R5 1 1
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R5
  CAPTURE VAL R1
  DUPTABLE R7 K18 [{"Context", "Provider"}]
  SETTABLEKS R5 R7 K16 ["Context"]
  SETTABLEKS R6 R7 K17 ["Provider"]
  RETURN R7 1
