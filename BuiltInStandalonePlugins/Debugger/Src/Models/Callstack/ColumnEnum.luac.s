MAIN:
  PREPVARARGS 0
  DUPTABLE R0 K4 [{"Frame", "Source", "Function", "Line"}]
  LOADK R1 K5 ["FrameColumn"]
  SETTABLEKS R1 R0 K0 ["Frame"]
  LOADK R1 K6 ["SourceColumn"]
  SETTABLEKS R1 R0 K1 ["Source"]
  LOADK R1 K7 ["FunctionColumn"]
  SETTABLEKS R1 R0 K2 ["Function"]
  LOADK R1 K8 ["LineColumn"]
  SETTABLEKS R1 R0 K3 ["Line"]
  RETURN R0 1
