MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["CompositorDebugger"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K8 ["Style"]
  GETTABLEKS R3 R2 K9 ["StyleKey"]
  GETTABLEKS R5 R0 K10 ["Src"]
  GETTABLEKS R4 R5 K11 ["Util"]
  GETIMPORT R5 K5 [require]
  GETTABLEKS R6 R4 K12 ["Constants"]
  CALL R5 1 1
  DUPTABLE R6 K19 [{"BackgroundColor", "PlayPauseButton", "Tick", "Intervals", "Scrubber", "BufferBar"}]
  GETTABLEKS R7 R3 K20 ["SubBackground2"]
  SETTABLEKS R7 R6 K13 ["BackgroundColor"]
  DUPTABLE R7 K25 [{"ButtonSize", "Play", "Pause", "Color"}]
  GETIMPORT R8 K28 [UDim2.fromOffset]
  LOADN R9 24
  LOADN R10 24
  CALL R8 2 1
  SETTABLEKS R8 R7 K21 ["ButtonSize"]
  LOADK R8 K29 ["rbxasset://textures/CompositorDebugger/play.png"]
  SETTABLEKS R8 R7 K22 ["Play"]
  LOADK R8 K30 ["rbxasset://textures/CompositorDebugger/pause.png"]
  SETTABLEKS R8 R7 K23 ["Pause"]
  GETTABLEKS R8 R3 K31 ["MainText"]
  SETTABLEKS R8 R7 K24 ["Color"]
  SETTABLEKS R7 R6 K14 ["PlayPauseButton"]
  DUPTABLE R7 K37 [{"Color", "LBorder", "RBorder", "Major", "Medium", "Minor"}]
  GETTABLEKS R8 R3 K38 ["MainTextDisabled"]
  SETTABLEKS R8 R7 K24 ["Color"]
  DUPTABLE R8 K42 [{"TextAlignment", "Width", "Height"}]
  GETIMPORT R9 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K39 ["TextAlignment"]
  LOADN R9 2
  SETTABLEKS R9 R8 K40 ["Width"]
  LOADN R9 1
  SETTABLEKS R9 R8 K41 ["Height"]
  SETTABLEKS R8 R7 K32 ["LBorder"]
  DUPTABLE R8 K42 [{"TextAlignment", "Width", "Height"}]
  GETIMPORT R9 K48 [Enum.TextXAlignment.Right]
  SETTABLEKS R9 R8 K39 ["TextAlignment"]
  LOADN R9 2
  SETTABLEKS R9 R8 K40 ["Width"]
  LOADN R9 1
  SETTABLEKS R9 R8 K41 ["Height"]
  SETTABLEKS R8 R7 K33 ["RBorder"]
  DUPTABLE R8 K42 [{"TextAlignment", "Width", "Height"}]
  GETIMPORT R9 K46 [Enum.TextXAlignment.Left]
  SETTABLEKS R9 R8 K39 ["TextAlignment"]
  LOADN R9 1
  SETTABLEKS R9 R8 K40 ["Width"]
  LOADK R9 K49 [0.75]
  SETTABLEKS R9 R8 K41 ["Height"]
  SETTABLEKS R8 R7 K34 ["Major"]
  DUPTABLE R8 K50 [{"Width", "Height"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K40 ["Width"]
  LOADK R9 K51 [0.5]
  SETTABLEKS R9 R8 K41 ["Height"]
  SETTABLEKS R8 R7 K35 ["Medium"]
  DUPTABLE R8 K50 [{"Width", "Height"}]
  LOADN R9 1
  SETTABLEKS R9 R8 K40 ["Width"]
  LOADK R9 K52 [0.25]
  SETTABLEKS R9 R8 K41 ["Height"]
  SETTABLEKS R8 R7 K36 ["Minor"]
  SETTABLEKS R7 R6 K15 ["Tick"]
  GETTABLEKS R7 R5 K53 ["TIMECONTROLS_INVERVALS"]
  SETTABLEKS R7 R6 K16 ["Intervals"]
  DUPTABLE R7 K55 [{"Color", "HeadSize"}]
  GETTABLEKS R8 R3 K56 ["DialogMainButton"]
  SETTABLEKS R8 R7 K24 ["Color"]
  LOADN R8 5
  SETTABLEKS R8 R7 K54 ["HeadSize"]
  SETTABLEKS R7 R6 K17 ["Scrubber"]
  DUPTABLE R7 K57 [{"Color", "Height"}]
  GETTABLEKS R8 R3 K56 ["DialogMainButton"]
  SETTABLEKS R8 R7 K24 ["Color"]
  LOADN R8 2
  SETTABLEKS R8 R7 K41 ["Height"]
  SETTABLEKS R7 R6 K18 ["BufferBar"]
  RETURN R6 1
