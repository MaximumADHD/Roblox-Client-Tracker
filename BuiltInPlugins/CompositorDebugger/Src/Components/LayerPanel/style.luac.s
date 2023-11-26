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
  DUPTABLE R4 K12 [{"TabsHeight", "Blend"}]
  LOADN R5 32
  SETTABLEKS R5 R4 K10 ["TabsHeight"]
  DUPTABLE R5 K20 [{"Padding", "BorderColor", "BackgroundColor", "Dot", "Cursor", "Reset", "Grid"}]
  DUPTABLE R6 K25 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R7 15
  SETTABLEKS R7 R6 K21 ["Left"]
  LOADN R7 15
  SETTABLEKS R7 R6 K22 ["Right"]
  LOADN R7 33
  SETTABLEKS R7 R6 K23 ["Top"]
  LOADN R7 15
  SETTABLEKS R7 R6 K24 ["Bottom"]
  SETTABLEKS R6 R5 K13 ["Padding"]
  GETTABLEKS R6 R3 K26 ["MainText"]
  SETTABLEKS R6 R5 K14 ["BorderColor"]
  GETTABLEKS R6 R3 K27 ["SubBackground2"]
  SETTABLEKS R6 R5 K15 ["BackgroundColor"]
  DUPTABLE R6 K31 [{"Image", "Size", "Color"}]
  LOADK R7 K32 ["rbxasset://textures/CompositorDebugger/dot.png"]
  SETTABLEKS R7 R6 K28 ["Image"]
  GETIMPORT R7 K35 [UDim2.fromOffset]
  LOADN R8 9
  LOADN R9 9
  CALL R7 2 1
  SETTABLEKS R7 R6 K29 ["Size"]
  GETTABLEKS R7 R3 K26 ["MainText"]
  SETTABLEKS R7 R6 K30 ["Color"]
  SETTABLEKS R6 R5 K16 ["Dot"]
  DUPTABLE R6 K37 [{"Image", "Size", "Color", "Override"}]
  LOADK R7 K38 ["rbxasset://textures/CompositorDebugger/cursor.png"]
  SETTABLEKS R7 R6 K28 ["Image"]
  GETIMPORT R7 K35 [UDim2.fromOffset]
  LOADN R8 9
  LOADN R9 9
  CALL R7 2 1
  SETTABLEKS R7 R6 K29 ["Size"]
  GETTABLEKS R7 R3 K26 ["MainText"]
  SETTABLEKS R7 R6 K30 ["Color"]
  GETTABLEKS R7 R3 K39 ["ErrorMain"]
  SETTABLEKS R7 R6 K36 ["Override"]
  SETTABLEKS R6 R5 K17 ["Cursor"]
  DUPTABLE R6 K41 [{"Image", "Size", "Position", "Color"}]
  LOADK R7 K42 ["rbxasset://textures/CompositorDebugger/clear.png"]
  SETTABLEKS R7 R6 K28 ["Image"]
  GETIMPORT R7 K35 [UDim2.fromOffset]
  LOADN R8 12
  LOADN R9 12
  CALL R7 2 1
  SETTABLEKS R7 R6 K29 ["Size"]
  GETIMPORT R7 K44 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 250
  CALL R7 4 1
  SETTABLEKS R7 R6 K40 ["Position"]
  GETTABLEKS R7 R3 K26 ["MainText"]
  SETTABLEKS R7 R6 K30 ["Color"]
  SETTABLEKS R6 R5 K18 ["Reset"]
  DUPTABLE R6 K49 [{"MaxTicks", "Intervals", "AxisColor", "GridColor"}]
  LOADN R7 10
  SETTABLEKS R7 R6 K45 ["MaxTicks"]
  NEWTABLE R7 0 5
  LOADK R8 K50 [0.05]
  LOADK R9 K51 [0.1]
  LOADK R10 K52 [0.25]
  LOADK R11 K53 [0.5]
  LOADN R12 1
  SETLIST R7 R8 5 [1]
  SETTABLEKS R7 R6 K46 ["Intervals"]
  GETTABLEKS R7 R3 K26 ["MainText"]
  SETTABLEKS R7 R6 K47 ["AxisColor"]
  GETTABLEKS R7 R3 K54 ["MainTextDisabled"]
  SETTABLEKS R7 R6 K48 ["GridColor"]
  SETTABLEKS R6 R5 K19 ["Grid"]
  SETTABLEKS R5 R4 K11 ["Blend"]
  RETURN R4 1
