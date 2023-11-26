MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R3 R1 K7 ["Style"]
  GETTABLEKS R2 R3 K8 ["StyleKey"]
  DUPTABLE R3 K18 [{"RowHeight", "HoverColor", "SelectedColor", "SelectedTextColor", "HeadingColor", "BorderColor", "Indent", "IconPadding", "Arrow"}]
  LOADN R4 24
  SETTABLEKS R4 R3 K9 ["RowHeight"]
  GETTABLEKS R4 R2 K19 ["ButtonHover"]
  SETTABLEKS R4 R3 K10 ["HoverColor"]
  GETTABLEKS R4 R2 K20 ["DialogMainButton"]
  SETTABLEKS R4 R3 K11 ["SelectedColor"]
  GETTABLEKS R4 R2 K21 ["DialogMainButtonText"]
  SETTABLEKS R4 R3 K12 ["SelectedTextColor"]
  GETTABLEKS R4 R2 K22 ["CategoryItem"]
  SETTABLEKS R4 R3 K13 ["HeadingColor"]
  GETTABLEKS R4 R2 K23 ["Border"]
  SETTABLEKS R4 R3 K14 ["BorderColor"]
  LOADN R4 20
  SETTABLEKS R4 R3 K15 ["Indent"]
  LOADN R4 5
  SETTABLEKS R4 R3 K16 ["IconPadding"]
  DUPTABLE R4 K29 [{"Image", "Size", "ExpandedOffset", "CollapsedOffset", "Color"}]
  LOADK R5 K30 ["rbxasset://textures/StudioSharedUI/arrowSpritesheet.png"]
  SETTABLEKS R5 R4 K24 ["Image"]
  LOADN R5 12
  SETTABLEKS R5 R4 K25 ["Size"]
  GETIMPORT R5 K33 [Vector2.new]
  LOADN R6 24
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K26 ["ExpandedOffset"]
  GETIMPORT R5 K33 [Vector2.new]
  LOADN R6 12
  LOADN R7 0
  CALL R5 2 1
  SETTABLEKS R5 R4 K27 ["CollapsedOffset"]
  GETTABLEKS R5 R2 K34 ["MainText"]
  SETTABLEKS R5 R4 K28 ["Color"]
  SETTABLEKS R4 R3 K17 ["Arrow"]
  RETURN R3 1
