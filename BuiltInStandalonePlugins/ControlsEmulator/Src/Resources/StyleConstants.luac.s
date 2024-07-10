MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K3 [Enum.Font.SourceSans]
  DUPTABLE R1 K6 [{"DEVICEDROPDOWN_TEXTBUTTON", "DEVICEDROPDOWN_IMAGEBUTTON"}]
  LOADN R2 100
  SETTABLEKS R2 R1 K4 ["DEVICEDROPDOWN_TEXTBUTTON"]
  LOADN R2 101
  SETTABLEKS R2 R1 K5 ["DEVICEDROPDOWN_IMAGEBUTTON"]
  DUPTABLE R2 K15 [{"deviceHeaderHeight", "deviceSelectorCornerRadius", "detailFontSize", "normalFontSize", "buttonFontSize", "headerFontSize", "defaultFont", "ZIndexData"}]
  LOADN R3 50
  SETTABLEKS R3 R2 K7 ["deviceHeaderHeight"]
  LOADN R3 5
  SETTABLEKS R3 R2 K8 ["deviceSelectorCornerRadius"]
  LOADN R3 14
  SETTABLEKS R3 R2 K9 ["detailFontSize"]
  LOADN R3 18
  SETTABLEKS R3 R2 K10 ["normalFontSize"]
  LOADN R3 18
  SETTABLEKS R3 R2 K11 ["buttonFontSize"]
  LOADN R3 18
  SETTABLEKS R3 R2 K12 ["headerFontSize"]
  SETTABLEKS R0 R2 K13 ["defaultFont"]
  SETTABLEKS R1 R2 K14 ["ZIndexData"]
  RETURN R2 1
