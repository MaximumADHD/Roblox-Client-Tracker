MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K2 ["Parent"]
  GETIMPORT R2 K4 [require]
  GETTABLEKS R3 R1 K5 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K6 ["Style"]
  GETTABLEKS R3 R4 K7 ["StyleKey"]
  GETIMPORT R4 K4 [require]
  GETTABLEKS R6 R0 K8 ["Enums"]
  GETTABLEKS R5 R6 K9 ["ViewType"]
  CALL R4 1 1
  GETIMPORT R5 K12 [UDim.new]
  LOADN R6 0
  LOADN R7 6
  CALL R5 2 1
  DUPTABLE R6 K33 [{"BackgroundColor", "GridItemBackgroundColor", "GridItemBackgroundColorApplied", "GridItemBackgroundColorHovered", "GridItemBorderColor", "GridItemBorderColorSelected", "GridItemCornerRadius", "GridItemPadding", "GridItemSize", "GridItemLabelPadding", "ListItemBackgroundColor", "ListItemHeight", "ListItemPadding", "ListItemSpacing", "MaterialPreviewStyle", "Padding", "ShimmerSizeOffset", "SnapshotSize", "TextSize", "TooltipDelay", "ViewType"}]
  GETTABLEKS R7 R3 K34 ["ScrollBarBackground"]
  SETTABLEKS R7 R6 K13 ["BackgroundColor"]
  GETTABLEKS R7 R3 K35 ["Button"]
  SETTABLEKS R7 R6 K14 ["GridItemBackgroundColor"]
  GETTABLEKS R7 R3 K36 ["BackgroundDefault"]
  SETTABLEKS R7 R6 K15 ["GridItemBackgroundColorApplied"]
  GETTABLEKS R7 R3 K37 ["ButtonHover"]
  SETTABLEKS R7 R6 K16 ["GridItemBackgroundColorHovered"]
  GETTABLEKS R7 R3 K38 ["Border"]
  SETTABLEKS R7 R6 K17 ["GridItemBorderColor"]
  GETTABLEKS R7 R3 K39 ["InputFieldBorderSelected"]
  SETTABLEKS R7 R6 K18 ["GridItemBorderColorSelected"]
  GETIMPORT R7 K12 [UDim.new]
  LOADN R8 0
  LOADN R9 6
  CALL R7 2 1
  SETTABLEKS R7 R6 K19 ["GridItemCornerRadius"]
  LOADN R7 4
  SETTABLEKS R7 R6 K20 ["GridItemPadding"]
  LOADN R7 128
  SETTABLEKS R7 R6 K21 ["GridItemSize"]
  DUPTABLE R7 K43 [{"PaddingBottom", "PaddingLeft", "PaddingRight"}]
  SETTABLEKS R5 R7 K40 ["PaddingBottom"]
  SETTABLEKS R5 R7 K41 ["PaddingLeft"]
  SETTABLEKS R5 R7 K42 ["PaddingRight"]
  SETTABLEKS R7 R6 K22 ["GridItemLabelPadding"]
  GETTABLEKS R7 R3 K35 ["Button"]
  SETTABLEKS R7 R6 K23 ["ListItemBackgroundColor"]
  LOADN R7 40
  SETTABLEKS R7 R6 K24 ["ListItemHeight"]
  LOADN R7 0
  SETTABLEKS R7 R6 K25 ["ListItemPadding"]
  LOADN R7 4
  SETTABLEKS R7 R6 K26 ["ListItemSpacing"]
  LOADK R7 K44 ["CornerBox"]
  SETTABLEKS R7 R6 K27 ["MaterialPreviewStyle"]
  LOADN R7 0
  SETTABLEKS R7 R6 K28 ["Padding"]
  LOADN R7 2
  SETTABLEKS R7 R6 K29 ["ShimmerSizeOffset"]
  GETIMPORT R7 K47 [UDim2.fromOffset]
  LOADN R8 64
  LOADN R9 64
  CALL R7 2 1
  SETTABLEKS R7 R6 K30 ["SnapshotSize"]
  LOADN R7 20
  SETTABLEKS R7 R6 K31 ["TextSize"]
  LOADK R7 K48 [0.3]
  SETTABLEKS R7 R6 K32 ["TooltipDelay"]
  GETTABLEKS R7 R4 K49 ["Grid"]
  SETTABLEKS R7 R6 K9 ["ViewType"]
  RETURN R6 1
