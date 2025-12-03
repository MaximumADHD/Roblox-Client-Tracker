MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  LOADN R1 12
  SETTABLEKS R1 R0 K0 ["scrollBarWidth"]
  GETIMPORT R1 K2 [game]
  LOADK R3 K3 ["PropertiesMaxLabelWidth"]
  LOADN R4 135
  NAMECALL R1 R1 K4 ["DefineFastInt"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K5 ["maxLabelWidth"]
  GETIMPORT R1 K2 [game]
  LOADK R3 K6 ["PropertiesMinValueWidth"]
  LOADN R4 155
  NAMECALL R1 R1 K4 ["DefineFastInt"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K7 ["minValueWidth"]
  LOADK R1 K8 [0.62]
  SETTABLEKS R1 R0 K9 ["disabledTransparency"]
  GETIMPORT R1 K12 [Color3.fromRGB]
  LOADN R2 223
  LOADN R3 40
  LOADN R4 31
  CALL R1 3 1
  SETTABLEKS R1 R0 K13 ["unimplementedLabelColor"]
  LOADK R1 K14 [0.5]
  SETTABLEKS R1 R0 K15 ["readOnlyLabelTransparency"]
  RETURN R0 1
