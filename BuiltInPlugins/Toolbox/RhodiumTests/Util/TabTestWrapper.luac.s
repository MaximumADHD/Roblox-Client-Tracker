PROTO_0:
  DUPTABLE R0 K1 [{"currentTab"}]
  GETUPVAL R1 0
  SETTABLEKS R1 R0 K0 ["currentTab"]
  RETURN R0 1

PROTO_1:
  GETUPVAL R1 0
  NEWCLOSURE R3 P0
  CAPTURE VAL R0
  NAMECALL R1 R1 K0 ["setState"]
  CALL R1 2 0
  RETURN R0 0

PROTO_2:
  DUPTABLE R1 K1 [{"currentTab"}]
  LOADK R2 K2 ["Marketplace"]
  SETTABLEKS R2 R1 K0 ["currentTab"]
  SETTABLEKS R1 R0 K3 ["state"]
  NEWCLOSURE R1 P0
  CAPTURE VAL R0
  SETTABLEKS R1 R0 K4 ["changeTab"]
  RETURN R0 0

PROTO_3:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K7 [{"Size", "Position", "CurrentWidth", "CurrentTab", "Tabs", "onTabSelected"}]
  GETIMPORT R5 K10 [UDim2.new]
  LOADN R6 1
  LOADN R7 0
  LOADN R8 1
  LOADN R9 0
  CALL R5 4 1
  SETTABLEKS R5 R4 K1 ["Size"]
  GETIMPORT R5 K10 [UDim2.new]
  CALL R5 0 1
  SETTABLEKS R5 R4 K2 ["Position"]
  LOADK R5 K11 [565.5]
  SETTABLEKS R5 R4 K3 ["CurrentWidth"]
  GETTABLEKS R6 R0 K12 ["state"]
  GETTABLEKS R5 R6 K13 ["currentTab"]
  SETTABLEKS R5 R4 K4 ["CurrentTab"]
  NEWTABLE R5 0 2
  DUPTABLE R6 K17 [{"Image", "Key", "Text"}]
  LOADK R7 K18 ["rbxasset://textures/StudioToolbox/Tabs/Shop.png"]
  SETTABLEKS R7 R6 K14 ["Image"]
  LOADK R7 K19 ["Marketplace"]
  SETTABLEKS R7 R6 K15 ["Key"]
  LOADK R7 K19 ["Marketplace"]
  SETTABLEKS R7 R6 K16 ["Text"]
  SETTABLEN R6 R5 1
  DUPTABLE R6 K17 [{"Image", "Key", "Text"}]
  LOADK R7 K18 ["rbxasset://textures/StudioToolbox/Tabs/Shop.png"]
  SETTABLEKS R7 R6 K14 ["Image"]
  LOADK R7 K20 ["Inventory"]
  SETTABLEKS R7 R6 K15 ["Key"]
  LOADK R7 K20 ["Inventory"]
  SETTABLEKS R7 R6 K16 ["Text"]
  SETTABLEN R6 R5 2
  SETTABLEKS R5 R4 K5 ["Tabs"]
  GETTABLEKS R5 R0 K21 ["changeTab"]
  SETTABLEKS R5 R4 K6 ["onTabSelected"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K7 ["Core"]
  GETTABLEKS R5 R6 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["TabSet"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["PureComponent"]
  LOADK R6 K11 ["TabTestWrapper"]
  NAMECALL R4 R4 K12 ["extend"]
  CALL R4 2 1
  DUPCLOSURE R5 K13 [PROTO_2]
  SETTABLEKS R5 R4 K14 ["init"]
  DUPCLOSURE R5 K15 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K16 ["render"]
  RETURN R4 1
