PROTO_0:
  DUPTABLE R0 K4 [{"frameColumn", "functionColumn", "lineColumn", "sourceColumn"}]
  LOADK R1 K5 [""]
  SETTABLEKS R1 R0 K0 ["frameColumn"]
  LOADK R1 K5 [""]
  SETTABLEKS R1 R0 K1 ["functionColumn"]
  LOADK R1 K5 [""]
  SETTABLEKS R1 R0 K2 ["lineColumn"]
  LOADK R1 K5 [""]
  SETTABLEKS R1 R0 K3 ["sourceColumn"]
  RETURN R0 1

PROTO_1:
  DUPTABLE R1 K4 [{"frameColumn", "functionColumn", "lineColumn", "sourceColumn"}]
  GETTABLEKS R2 R0 K0 ["frameColumn"]
  SETTABLEKS R2 R1 K0 ["frameColumn"]
  GETTABLEKS R2 R0 K1 ["functionColumn"]
  SETTABLEKS R2 R1 K1 ["functionColumn"]
  GETTABLEKS R2 R0 K2 ["lineColumn"]
  SETTABLEKS R2 R1 K2 ["lineColumn"]
  GETTABLEKS R2 R0 K3 ["sourceColumn"]
  SETTABLEKS R2 R1 K3 ["sourceColumn"]
  RETURN R1 1

MAIN:
  PREPVARARGS 0
  NEWTABLE R0 2 0
  NEWTABLE R1 2 0
  LOADK R2 K0 ["rbxasset://textures/Debugger/debugger_arrow.png"]
  SETTABLEKS R2 R1 K1 ["Image"]
  GETIMPORT R2 K4 [UDim2.new]
  LOADN R3 0
  LOADN R4 14
  LOADN R5 0
  LOADN R6 14
  CALL R2 4 1
  SETTABLEKS R2 R1 K5 ["Size"]
  SETTABLEKS R1 R0 K6 ["LeftIcon"]
  LOADK R1 K7 [""]
  SETTABLEKS R1 R0 K8 ["Value"]
  NEWTABLE R1 2 0
  NEWTABLE R2 2 0
  LOADK R3 K9 ["rbxasset://textures/Debugger/debugger_arrow_curve_left.png"]
  SETTABLEKS R3 R2 K1 ["Image"]
  GETIMPORT R3 K4 [UDim2.new]
  LOADN R4 0
  LOADN R5 14
  LOADN R6 0
  LOADN R7 14
  CALL R3 4 1
  SETTABLEKS R3 R2 K5 ["Size"]
  SETTABLEKS R2 R1 K6 ["LeftIcon"]
  LOADK R2 K7 [""]
  SETTABLEKS R2 R1 K8 ["Value"]
  DUPCLOSURE R2 K10 [PROTO_0]
  DUPCLOSURE R3 K11 [PROTO_1]
  DUPTABLE R4 K15 [{"new", "fromData", "ICON_FRAME_TOP", "ICON_CURRENT_FRAME"}]
  SETTABLEKS R2 R4 K3 ["new"]
  SETTABLEKS R3 R4 K12 ["fromData"]
  SETTABLEKS R0 R4 K13 ["ICON_FRAME_TOP"]
  SETTABLEKS R1 R4 K14 ["ICON_CURRENT_FRAME"]
  RETURN R4 1
