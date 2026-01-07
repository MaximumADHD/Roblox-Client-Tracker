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
  DUPTABLE R3 K12 [{"PlaceholderTextColor", "ValueTextBoxPadding", "ValueTextBoxWidth", "FramePadding"}]
  GETTABLEKS R4 R2 K13 ["DimmedText"]
  SETTABLEKS R4 R3 K8 ["PlaceholderTextColor"]
  LOADN R4 12
  SETTABLEKS R4 R3 K9 ["ValueTextBoxPadding"]
  LOADN R4 64
  SETTABLEKS R4 R3 K10 ["ValueTextBoxWidth"]
  LOADN R4 96
  SETTABLEKS R4 R3 K11 ["FramePadding"]
  RETURN R3 1
