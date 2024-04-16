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
  GETTABLEKS R5 R1 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["StyleModifier"]
  NEWTABLE R5 32 0
  DUPTABLE R6 K17 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
  LOADK R7 K18 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R7 R6 K12 ["Image"]
  LOADN R7 12
  SETTABLEKS R7 R6 K13 ["Size"]
  GETIMPORT R7 K21 [Vector2.new]
  LOADN R8 24
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K14 ["ExpandedOffset"]
  GETIMPORT R7 K21 [Vector2.new]
  LOADN R8 12
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["CollapsedOffset"]
  GETTABLEKS R7 R3 K22 ["MainText"]
  SETTABLEKS R7 R6 K16 ["Color"]
  SETTABLEKS R6 R5 K23 ["Arrow"]
  DUPTABLE R6 K28 [{"Image", "Size", "ActiveColor", "ActiveTransparency", "InactiveColor", "InactiveTransparency"}]
  LOADK R7 K29 ["rbxasset://textures/CompositorDebugger/eye.png"]
  SETTABLEKS R7 R6 K12 ["Image"]
  GETIMPORT R7 K32 [UDim2.fromOffset]
  LOADN R8 12
  LOADN R9 12
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["Size"]
  GETTABLEKS R7 R3 K22 ["MainText"]
  SETTABLEKS R7 R6 K24 ["ActiveColor"]
  LOADN R7 0
  SETTABLEKS R7 R6 K25 ["ActiveTransparency"]
  GETTABLEKS R7 R3 K22 ["MainText"]
  SETTABLEKS R7 R6 K26 ["InactiveColor"]
  LOADN R7 1
  SETTABLEKS R7 R6 K27 ["InactiveTransparency"]
  SETTABLEKS R6 R5 K33 ["Filter"]
  DUPTABLE R6 K34 [{"Image", "Size"}]
  LOADK R7 K35 ["rbxasset://textures/CompositorDebugger/clear.png"]
  SETTABLEKS R7 R6 K12 ["Image"]
  GETIMPORT R7 K32 [UDim2.fromOffset]
  LOADN R8 12
  LOADN R9 12
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["Size"]
  SETTABLEKS R6 R5 K36 ["Detach"]
  GETTABLEKS R6 R3 K37 ["SubBackground"]
  SETTABLEKS R6 R5 K38 ["Border"]
  GETTABLEKS R6 R3 K39 ["MainBackground"]
  SETTABLEKS R6 R5 K40 ["Background"]
  LOADN R6 17
  SETTABLEKS R6 R5 K41 ["Indent"]
  GETTABLEKS R6 R4 K42 ["Hover"]
  DUPTABLE R7 K43 [{"Background", "Filter"}]
  GETTABLEKS R8 R3 K44 ["ButtonHover"]
  SETTABLEKS R8 R7 K40 ["Background"]
  DUPTABLE R8 K28 [{"Image", "Size", "ActiveColor", "ActiveTransparency", "InactiveColor", "InactiveTransparency"}]
  LOADK R9 K29 ["rbxasset://textures/CompositorDebugger/eye.png"]
  SETTABLEKS R9 R8 K12 ["Image"]
  GETIMPORT R9 K32 [UDim2.fromOffset]
  LOADN R10 12
  LOADN R11 12
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["Size"]
  GETTABLEKS R9 R3 K22 ["MainText"]
  SETTABLEKS R9 R8 K24 ["ActiveColor"]
  LOADN R9 0
  SETTABLEKS R9 R8 K25 ["ActiveTransparency"]
  GETTABLEKS R9 R3 K45 ["MainTextDisabled"]
  SETTABLEKS R9 R8 K26 ["InactiveColor"]
  LOADN R9 0
  SETTABLEKS R9 R8 K27 ["InactiveTransparency"]
  SETTABLEKS R8 R7 K33 ["Filter"]
  SETTABLE R7 R5 R6
  GETTABLEKS R6 R4 K46 ["Selected"]
  DUPTABLE R7 K43 [{"Background", "Filter"}]
  GETTABLEKS R8 R3 K47 ["ActionSelected"]
  SETTABLEKS R8 R7 K40 ["Background"]
  DUPTABLE R8 K28 [{"Image", "Size", "ActiveColor", "ActiveTransparency", "InactiveColor", "InactiveTransparency"}]
  LOADK R9 K29 ["rbxasset://textures/CompositorDebugger/eye.png"]
  SETTABLEKS R9 R8 K12 ["Image"]
  GETIMPORT R9 K32 [UDim2.fromOffset]
  LOADN R10 12
  LOADN R11 12
  CALL R9 2 1
  SETTABLEKS R9 R8 K13 ["Size"]
  GETTABLEKS R9 R3 K22 ["MainText"]
  SETTABLEKS R9 R8 K24 ["ActiveColor"]
  LOADN R9 0
  SETTABLEKS R9 R8 K25 ["ActiveTransparency"]
  GETTABLEKS R9 R3 K45 ["MainTextDisabled"]
  SETTABLEKS R9 R8 K26 ["InactiveColor"]
  LOADN R9 0
  SETTABLEKS R9 R8 K27 ["InactiveTransparency"]
  SETTABLEKS R8 R7 K33 ["Filter"]
  SETTABLE R7 R5 R6
  DUPTABLE R6 K51 [{"Tree", "Weight", "Timestamp"}]
  LOADN R7 250
  SETTABLEKS R7 R6 K48 ["Tree"]
  LOADN R7 40
  SETTABLEKS R7 R6 K49 ["Weight"]
  LOADN R7 100
  SETTABLEKS R7 R6 K50 ["Timestamp"]
  SETTABLEKS R6 R5 K52 ["ColumnWidths"]
  LOADN R6 5
  SETTABLEKS R6 R5 K53 ["Spacing"]
  DUPTABLE R6 K58 [{"Top", "Bottom", "Left", "Right"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K54 ["Top"]
  LOADN R7 1
  SETTABLEKS R7 R6 K55 ["Bottom"]
  LOADN R7 0
  SETTABLEKS R7 R6 K56 ["Left"]
  LOADN R7 0
  SETTABLEKS R7 R6 K57 ["Right"]
  SETTABLEKS R6 R5 K59 ["Padding"]
  GETTABLEKS R6 R3 K22 ["MainText"]
  SETTABLEKS R6 R5 K60 ["ActiveLayer"]
  GETTABLEKS R6 R3 K45 ["MainTextDisabled"]
  SETTABLEKS R6 R5 K61 ["InactiveLayer"]
  DUPTABLE R6 K64 [{"Active", "Inactive", "Background", "Border"}]
  GETTABLEKS R7 R3 K65 ["DialogMainButtonSelected"]
  SETTABLEKS R7 R6 K62 ["Active"]
  GETTABLEKS R7 R3 K45 ["MainTextDisabled"]
  SETTABLEKS R7 R6 K63 ["Inactive"]
  GETTABLEKS R7 R3 K66 ["Button"]
  SETTABLEKS R7 R6 K40 ["Background"]
  GETTABLEKS R7 R3 K38 ["Border"]
  SETTABLEKS R7 R6 K38 ["Border"]
  SETTABLEKS R6 R5 K67 ["TimeBar"]
  DUPTABLE R6 K70 [{"TopLayer", "RegularLayer"}]
  GETIMPORT R7 K74 [Enum.Font.SourceSansBold]
  SETTABLEKS R7 R6 K68 ["TopLayer"]
  GETIMPORT R7 K76 [Enum.Font.SourceSans]
  SETTABLEKS R7 R6 K69 ["RegularLayer"]
  SETTABLEKS R6 R5 K72 ["Font"]
  DUPTABLE R6 K79 [{"Client", "Server"}]
  GETIMPORT R7 K82 [Color3.fromHex]
  LOADK R8 K83 ["349AD5"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K77 ["Client"]
  GETIMPORT R7 K82 [Color3.fromHex]
  LOADK R8 K84 ["00CC67"]
  CALL R7 1 1
  SETTABLEKS R7 R6 K78 ["Server"]
  SETTABLEKS R6 R5 K85 ["Colors"]
  DUPTABLE R6 K93 [{"Blend1D", "Blend2D", "BlendSpace", "ClipLayer", "Default", "SelectLayer", "SequenceLayer"}]
  DUPTABLE R7 K34 [{"Image", "Size"}]
  LOADK R8 K94 ["rbxasset://textures/CompositorDebugger/blend1d.png"]
  SETTABLEKS R8 R7 K12 ["Image"]
  GETIMPORT R8 K32 [UDim2.fromOffset]
  LOADN R9 12
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Size"]
  SETTABLEKS R7 R6 K86 ["Blend1D"]
  DUPTABLE R7 K34 [{"Image", "Size"}]
  LOADK R8 K95 ["rbxasset://textures/CompositorDebugger/blend2d.png"]
  SETTABLEKS R8 R7 K12 ["Image"]
  GETIMPORT R8 K32 [UDim2.fromOffset]
  LOADN R9 12
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Size"]
  SETTABLEKS R7 R6 K87 ["Blend2D"]
  DUPTABLE R7 K34 [{"Image", "Size"}]
  LOADK R8 K95 ["rbxasset://textures/CompositorDebugger/blend2d.png"]
  SETTABLEKS R8 R7 K12 ["Image"]
  GETIMPORT R8 K32 [UDim2.fromOffset]
  LOADN R9 12
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Size"]
  SETTABLEKS R7 R6 K88 ["BlendSpace"]
  DUPTABLE R7 K34 [{"Image", "Size"}]
  LOADK R8 K96 ["rbxasset://textures/CompositorDebugger/clip.png"]
  SETTABLEKS R8 R7 K12 ["Image"]
  GETIMPORT R8 K32 [UDim2.fromOffset]
  LOADN R9 12
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Size"]
  SETTABLEKS R7 R6 K89 ["ClipLayer"]
  DUPTABLE R7 K34 [{"Image", "Size"}]
  LOADK R8 K97 ["rbxasset://textures/CompositorDebugger/default.png"]
  SETTABLEKS R8 R7 K12 ["Image"]
  GETIMPORT R8 K32 [UDim2.fromOffset]
  LOADN R9 12
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Size"]
  SETTABLEKS R7 R6 K90 ["Default"]
  DUPTABLE R7 K34 [{"Image", "Size"}]
  LOADK R8 K98 ["rbxasset://textures/CompositorDebugger/select.png"]
  SETTABLEKS R8 R7 K12 ["Image"]
  GETIMPORT R8 K32 [UDim2.fromOffset]
  LOADN R9 12
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Size"]
  SETTABLEKS R7 R6 K91 ["SelectLayer"]
  DUPTABLE R7 K34 [{"Image", "Size"}]
  LOADK R8 K99 ["rbxasset://textures/CompositorDebugger/sequence.png"]
  SETTABLEKS R8 R7 K12 ["Image"]
  GETIMPORT R8 K32 [UDim2.fromOffset]
  LOADN R9 12
  LOADN R10 12
  CALL R8 2 1
  SETTABLEKS R8 R7 K13 ["Size"]
  SETTABLEKS R7 R6 K92 ["SequenceLayer"]
  SETTABLEKS R6 R5 K100 ["Icons"]
  RETURN R5 1
