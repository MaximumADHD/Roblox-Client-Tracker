PROTO_0:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["'See All' button pressed"]
  CALL R0 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  DUPTABLE R3 K2 [{"EmptyFrame"}]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K3 ["Frame"]
  DUPTABLE R6 K6 [{"BackgroundTransparency", "Size"}]
  LOADN R7 1
  SETTABLEKS R7 R6 K4 ["BackgroundTransparency"]
  GETIMPORT R7 K9 [UDim2.new]
  LOADN R8 0
  LOADN R9 144
  LOADN R10 0
  LOADN R11 100
  CALL R7 4 1
  SETTABLEKS R7 R6 K5 ["Size"]
  DUPTABLE R7 K11 [{"SectionHeader"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K15 [{"OnClickSeeAll", "Position", "Title"}]
  DUPCLOSURE R11 K16 [PROTO_0]
  SETTABLEKS R11 R10 K12 ["OnClickSeeAll"]
  GETIMPORT R11 K9 [UDim2.new]
  LOADN R12 0
  LOADN R13 0
  LOADN R14 0
  LOADN R15 0
  CALL R11 4 1
  SETTABLEKS R11 R10 K13 ["Position"]
  LOADK R11 K17 ["This is a test"]
  SETTABLEKS R11 R10 K14 ["Title"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K10 ["SectionHeader"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K1 ["EmptyFrame"]
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
  GETTABLEKS R4 R5 K12 ["SectionHeader"]
  CALL R3 1 1
  DUPTABLE R4 K16 [{"name", "summary", "story"}]
  LOADK R5 K12 ["SectionHeader"]
  SETTABLEKS R5 R4 K13 ["name"]
  LOADK R5 K17 ["A header shown at the top of a swimlane."]
  SETTABLEKS R5 R4 K14 ["summary"]
  DUPCLOSURE R5 K18 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R2
  CAPTURE VAL R3
  SETTABLEKS R5 R4 K15 ["story"]
  RETURN R4 1
