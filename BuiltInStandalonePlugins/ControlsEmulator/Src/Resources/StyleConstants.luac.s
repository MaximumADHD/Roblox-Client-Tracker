MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K3 [Enum.Font.SourceSans]
  GETIMPORT R1 K6 [Vector2.new]
  LOADN R2 88
  LOADN R3 88
  CALL R1 2 1
  DUPTABLE R2 K10 [{"DEVICEDROPDOWN_TEXTBUTTON", "DEVICEDROPDOWN_IMAGEBUTTON", "VRCONTROLS_TOOLTIP"}]
  LOADN R3 100
  SETTABLEKS R3 R2 K7 ["DEVICEDROPDOWN_TEXTBUTTON"]
  LOADN R3 101
  SETTABLEKS R3 R2 K8 ["DEVICEDROPDOWN_IMAGEBUTTON"]
  LOADN R3 2
  SETTABLEKS R3 R2 K9 ["VRCONTROLS_TOOLTIP"]
  DUPTABLE R3 K20 [{"deviceHeaderHeight", "deviceSelectorCornerRadius", "detailFontSize", "normalFontSize", "buttonFontSize", "headerFontSize", "defaultFont", "minimumMappingsDialogSize", "ZIndexData"}]
  LOADN R4 30
  SETTABLEKS R4 R3 K11 ["deviceHeaderHeight"]
  LOADN R4 5
  SETTABLEKS R4 R3 K12 ["deviceSelectorCornerRadius"]
  LOADN R4 11
  SETTABLEKS R4 R3 K13 ["detailFontSize"]
  LOADN R4 18
  SETTABLEKS R4 R3 K14 ["normalFontSize"]
  LOADN R4 18
  SETTABLEKS R4 R3 K15 ["buttonFontSize"]
  LOADN R4 20
  SETTABLEKS R4 R3 K16 ["headerFontSize"]
  SETTABLEKS R0 R3 K17 ["defaultFont"]
  SETTABLEKS R1 R3 K18 ["minimumMappingsDialogSize"]
  SETTABLEKS R2 R3 K19 ["ZIndexData"]
  RETURN R3 1
