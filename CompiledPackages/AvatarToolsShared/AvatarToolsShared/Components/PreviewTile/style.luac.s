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
  DUPTABLE R3 K16 [{"TileSize", "TileInnerBorder", "ThumbnailFrameSize", "TextLabelSize", "ButtonBackgroundColor", "ButtonPressedColor", "TextSize", "ThumbnailBackgroundColor"}]
  GETIMPORT R4 K19 [UDim2.new]
  LOADN R5 0
  LOADN R6 140
  LOADN R7 0
  LOADN R8 160
  CALL R4 4 1
  SETTABLEKS R4 R3 K8 ["TileSize"]
  GETIMPORT R4 K21 [Vector2.new]
  LOADN R5 10
  LOADN R6 10
  CALL R4 2 1
  SETTABLEKS R4 R3 K9 ["TileInnerBorder"]
  GETIMPORT R4 K19 [UDim2.new]
  LOADN R5 0
  LOADN R6 120
  LOADN R7 0
  LOADN R8 118
  CALL R4 4 1
  SETTABLEKS R4 R3 K10 ["ThumbnailFrameSize"]
  GETIMPORT R4 K19 [UDim2.new]
  LOADN R5 0
  LOADN R6 120
  LOADN R7 0
  LOADN R8 22
  CALL R4 4 1
  SETTABLEKS R4 R3 K11 ["TextLabelSize"]
  GETTABLEKS R4 R2 K22 ["Button"]
  SETTABLEKS R4 R3 K12 ["ButtonBackgroundColor"]
  GETTABLEKS R4 R2 K23 ["ButtonHover"]
  SETTABLEKS R4 R3 K13 ["ButtonPressedColor"]
  LOADN R4 18
  SETTABLEKS R4 R3 K14 ["TextSize"]
  GETTABLEKS R4 R2 K24 ["CategoryItem"]
  SETTABLEKS R4 R3 K15 ["ThumbnailBackgroundColor"]
  RETURN R3 1
