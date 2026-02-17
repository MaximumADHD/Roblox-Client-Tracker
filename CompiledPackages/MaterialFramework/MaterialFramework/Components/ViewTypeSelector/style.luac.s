MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R2 R0 K5 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K6 ["Style"]
  GETTABLEKS R2 R3 K7 ["StyleKey"]
  DUPTABLE R3 K18 [{"BackgroundColor", "IconColor", "IconSize", "ItemSize", "GridIcon", "ListIcon", "Size", "SliderAnchorPoint", "SliderPosition", "SliderSize"}]
  GETTABLEKS R4 R2 K19 ["Button"]
  SETTABLEKS R4 R3 K8 ["BackgroundColor"]
  GETTABLEKS R4 R2 K20 ["ButtonText"]
  SETTABLEKS R4 R3 K9 ["IconColor"]
  LOADN R4 16
  SETTABLEKS R4 R3 K10 ["IconSize"]
  GETIMPORT R4 K23 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 40
  CALL R4 4 1
  SETTABLEKS R4 R3 K11 ["ItemSize"]
  LOADK R4 K24 ["rbxasset://textures/MaterialFramework/Grid.png"]
  SETTABLEKS R4 R3 K12 ["GridIcon"]
  LOADK R4 K25 ["rbxasset://textures/MaterialFramework/List.png"]
  SETTABLEKS R4 R3 K13 ["ListIcon"]
  GETIMPORT R4 K27 [UDim2.fromOffset]
  LOADN R5 50
  LOADN R6 30
  CALL R4 2 1
  SETTABLEKS R4 R3 K14 ["Size"]
  GETIMPORT R4 K29 [Vector2.new]
  LOADK R5 K30 [0.5]
  LOADK R6 K30 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K15 ["SliderAnchorPoint"]
  GETIMPORT R4 K32 [UDim2.fromScale]
  LOADK R5 K30 [0.5]
  LOADK R6 K30 [0.5]
  CALL R4 2 1
  SETTABLEKS R4 R3 K16 ["SliderPosition"]
  GETIMPORT R4 K23 [UDim2.new]
  LOADN R5 1
  LOADN R6 246
  LOADN R7 0
  LOADN R8 20
  CALL R4 4 1
  SETTABLEKS R4 R3 K17 ["SliderSize"]
  RETURN R3 1
