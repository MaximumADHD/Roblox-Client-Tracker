MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K3 [Enum.Font.SourceSans]
  GETIMPORT R1 K5 [Enum.Font.SourceSansBold]
  GETIMPORT R2 K8 [Vector2.new]
  LOADN R3 88
  LOADN R4 88
  CALL R2 2 1
  DUPTABLE R3 K12 [{"DEVICEDROPDOWN_TEXTBUTTON", "DEVICEDROPDOWN_IMAGEBUTTON", "VRCONTROLS_TOOLTIP"}]
  LOADN R4 100
  SETTABLEKS R4 R3 K9 ["DEVICEDROPDOWN_TEXTBUTTON"]
  LOADN R4 101
  SETTABLEKS R4 R3 K10 ["DEVICEDROPDOWN_IMAGEBUTTON"]
  LOADN R4 2
  SETTABLEKS R4 R3 K11 ["VRCONTROLS_TOOLTIP"]
  DUPTABLE R4 K27 [{"deviceHeaderHeight", "deviceSelectorCornerRadius", "detailFontSize", "normalFontSize", "buttonFontSize", "headerFontSize", "blueprintLabelFontSize", "defaultFont", "defaultFontBold", "buttonPaddingVertical", "buttonPaddingHorizontal", "buttonCornerRadius", "minimumMappingsDialogSize", "ZIndexData"}]
  LOADN R5 40
  SETTABLEKS R5 R4 K13 ["deviceHeaderHeight"]
  LOADN R5 5
  SETTABLEKS R5 R4 K14 ["deviceSelectorCornerRadius"]
  LOADN R5 11
  SETTABLEKS R5 R4 K15 ["detailFontSize"]
  LOADN R5 18
  SETTABLEKS R5 R4 K16 ["normalFontSize"]
  LOADN R5 18
  SETTABLEKS R5 R4 K17 ["buttonFontSize"]
  LOADN R5 18
  SETTABLEKS R5 R4 K18 ["headerFontSize"]
  LOADN R5 18
  SETTABLEKS R5 R4 K19 ["blueprintLabelFontSize"]
  SETTABLEKS R0 R4 K20 ["defaultFont"]
  SETTABLEKS R1 R4 K21 ["defaultFontBold"]
  LOADN R5 2
  SETTABLEKS R5 R4 K22 ["buttonPaddingVertical"]
  LOADN R5 12
  SETTABLEKS R5 R4 K23 ["buttonPaddingHorizontal"]
  LOADN R5 4
  SETTABLEKS R5 R4 K24 ["buttonCornerRadius"]
  SETTABLEKS R2 R4 K25 ["minimumMappingsDialogSize"]
  SETTABLEKS R3 R4 K26 ["ZIndexData"]
  RETURN R4 1
