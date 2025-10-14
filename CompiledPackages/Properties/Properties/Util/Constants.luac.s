MAIN:
  PREPVARARGS 0
  NEWTABLE R0 8 0
  LOADN R1 12
  SETTABLEKS R1 R0 K0 ["scrollBarWidth"]
  LOADN R1 24
  SETTABLEKS R1 R0 K1 ["indentWidth"]
  LOADN R1 20
  SETTABLEKS R1 R0 K2 ["labelHeight"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["PropertiesMaxLabelWidth"]
  LOADN R4 135
  NAMECALL R1 R1 K6 ["DefineFastInt"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K7 ["maxLabelWidth"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K8 ["PropertiesMinValueWidth"]
  LOADN R4 155
  NAMECALL R1 R1 K6 ["DefineFastInt"]
  CALL R1 3 1
  SETTABLEKS R1 R0 K9 ["minValueWidth"]
  RETURN R0 1
