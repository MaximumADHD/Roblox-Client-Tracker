PROTO_0:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["createElement"]
  LOADK R3 K1 ["TextLabel"]
  DUPTABLE R4 K5 [{"Size", "Text", "LayoutOrder"}]
  GETIMPORT R5 K8 [UDim2.new]
  LOADN R6 0
  LOADN R7 50
  LOADN R8 0
  LOADN R9 50
  CALL R5 4 1
  SETTABLEKS R5 R4 K2 ["Size"]
  SETTABLEKS R1 R4 K3 ["Text"]
  SETTABLEKS R0 R4 K4 ["LayoutOrder"]
  CALL R2 2 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"Frame"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K1 ["Frame"]
  DUPTABLE R6 K5 [{"BackgroundTransparency", "Size"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K3 ["BackgroundTransparency"]
  GETIMPORT R7 K8 [UDim2.new]
  LOADN R8 0
  LOADN R9 88
  LOADN R10 0
  LOADN R11 60
  CALL R7 4 1
  SETTABLEKS R7 R6 K4 ["Size"]
  DUPTABLE R7 K10 [{"List"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K14 [{"DefaultHeight", "Data", "OnRenderItem"}]
  LOADN R11 50
  SETTABLEKS R11 R10 K11 ["DefaultHeight"]
  NEWTABLE R11 0 4
  LOADK R12 K15 ["This"]
  LOADK R13 K16 ["is"]
  LOADK R14 K17 ["a"]
  LOADK R15 K18 ["test"]
  SETLIST R11 R12 4 [1]
  SETTABLEKS R11 R10 K12 ["Data"]
  DUPCLOSURE R11 K19 [PROTO_0]
  CAPTURE UPVAL U0
  SETTABLEKS R11 R10 K13 ["OnRenderItem"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K9 ["List"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["Frame"]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Roact"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K7 ["Stories"]
  GETTABLEKS R3 R4 K8 ["ToolboxStoryWrapper"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R7 R0 K9 ["Core"]
  GETTABLEKS R6 R7 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["Categorization"]
  GETTABLEKS R4 R5 K12 ["HorizontalList"]
  CALL R3 1 1
  DUPTABLE R4 K16 [{"name", "summary", "story"}]
  LOADK R5 K12 ["HorizontalList"]
  SETTABLEKS R5 R4 K13 ["name"]
  LOADK R5 K17 ["A generic horizontal list that sizes itself to the size of its content"]
  SETTABLEKS R5 R4 K14 ["summary"]
  DUPCLOSURE R5 K18 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K15 ["story"]
  RETURN R4 1
