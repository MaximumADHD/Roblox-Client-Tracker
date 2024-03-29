PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  NEWTABLE R0 0 1
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  LOADK R2 K1 ["Frame"]
  DUPTABLE R3 K4 [{"BackgroundColor3", "Size"}]
  GETIMPORT R4 K7 [Color3.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  CALL R4 3 1
  SETTABLEKS R4 R3 K2 ["BackgroundColor3"]
  GETIMPORT R4 K9 [UDim2.new]
  LOADN R5 1
  LOADN R6 0
  LOADN R7 0
  LOADN R8 100
  CALL R4 4 1
  SETTABLEKS R4 R3 K3 ["Size"]
  CALL R1 2 -1
  SETLIST R0 R1 -1 [1]
  RETURN R0 1

PROTO_2:
  DUPTABLE R0 K1 [{"SearchList"}]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K6 [{"AutomaticSize", "Items", "ItemMinWidth"}]
  GETIMPORT R4 K9 [Enum.AutomaticSize.Y]
  SETTABLEKS R4 R3 K3 ["AutomaticSize"]
  NEWTABLE R4 0 15
  LOADK R5 K10 ["charmander"]
  LOADK R6 K11 ["bulbasaur"]
  LOADK R7 K12 ["squirtle"]
  LOADK R8 K13 ["cyndaquil"]
  LOADK R9 K14 ["totodile"]
  LOADK R10 K15 ["chikorita"]
  LOADK R11 K16 ["torchic"]
  LOADK R12 K17 ["mudkip"]
  LOADK R13 K18 ["treecko"]
  LOADK R14 K19 ["chimchar"]
  LOADK R15 K20 ["piplup"]
  LOADK R16 K21 ["turtwig"]
  LOADK R17 K22 ["tepig"]
  LOADK R18 K23 ["oshawott"]
  LOADK R19 K24 ["snivy"]
  SETLIST R4 R5 15 [1]
  SETTABLEKS R4 R3 K4 ["Items"]
  LOADN R4 28
  SETTABLEKS R4 R3 K5 ["ItemMinWidth"]
  CALL R1 2 1
  SETTABLEKS R1 R0 K0 ["SearchList"]
  RETURN R0 1

PROTO_3:
  GETIMPORT R1 K1 [print]
  LOADK R2 K2 ["isExpanded: "]
  MOVE R3 R0
  CALL R1 2 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  NEWTABLE R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K1 ["Frame"]
  DUPTABLE R6 K5 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
  GETIMPORT R7 K8 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K2 ["AutomaticSize"]
  LOADN R7 1
  SETTABLEKS R7 R6 K3 ["BackgroundTransparency"]
  GETIMPORT R7 K11 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K4 ["Size"]
  DUPTABLE R7 K13 [{"ExpandableTeaser"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K17 [{"OnExpandChanged", "Title", "TeaserSize"}]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K14 ["OnExpandChanged"]
  LOADK R11 K18 ["Expandable"]
  SETTABLEKS R11 R10 K15 ["Title"]
  GETIMPORT R11 K20 [Vector2.new]
  LOADN R12 0
  LOADN R13 10
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["TeaserSize"]
  GETUPVAL R11 4
  CALL R11 0 1
  CALL R8 3 1
  SETTABLEKS R8 R7 K12 ["ExpandableTeaser"]
  CALL R4 3 -1
  SETLIST R3 R4 -1 [1]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_5:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  NEWTABLE R2 0 0
  NEWTABLE R3 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["createElement"]
  LOADK R5 K1 ["Frame"]
  DUPTABLE R6 K5 [{"AutomaticSize", "BackgroundTransparency", "Size"}]
  GETIMPORT R7 K8 [Enum.AutomaticSize.Y]
  SETTABLEKS R7 R6 K2 ["AutomaticSize"]
  LOADN R7 1
  SETTABLEKS R7 R6 K3 ["BackgroundTransparency"]
  GETIMPORT R7 K11 [UDim2.new]
  LOADN R8 1
  LOADN R9 0
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K4 ["Size"]
  DUPTABLE R7 K13 [{"ExpandableTeaser"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K17 [{"OnExpandChanged", "Title", "TeaserSize"}]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K14 ["OnExpandChanged"]
  LOADK R11 K18 ["Top Searches"]
  SETTABLEKS R11 R10 K15 ["Title"]
  GETIMPORT R11 K20 [Vector2.new]
  LOADN R12 0
  LOADN R13 28
  CALL R11 2 1
  SETTABLEKS R11 R10 K16 ["TeaserSize"]
  GETUPVAL R11 4
  CALL R11 0 1
  CALL R8 3 1
  SETTABLEKS R8 R7 K12 ["ExpandableTeaser"]
  CALL R4 3 -1
  SETLIST R3 R4 -1 [1]
  CALL R0 3 -1
  RETURN R0 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R2 K1 [script]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETTABLEKS R1 R0 K3 ["Packages"]
  GETIMPORT R2 K5 [require]
  GETTABLEKS R3 R1 K6 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K7 ["Stories"]
  GETTABLEKS R4 R5 K8 ["ToolboxStoryWrapper"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R8 R0 K9 ["Core"]
  GETTABLEKS R7 R8 K10 ["Components"]
  GETTABLEKS R6 R7 K11 ["Categorization"]
  GETTABLEKS R5 R6 K12 ["ExpandableTeaser"]
  CALL R4 1 1
  GETIMPORT R5 K5 [require]
  GETTABLEKS R9 R0 K9 ["Core"]
  GETTABLEKS R8 R9 K10 ["Components"]
  GETTABLEKS R7 R8 K11 ["Categorization"]
  GETTABLEKS R6 R7 K13 ["SearchList"]
  CALL R5 1 1
  DUPCLOSURE R6 K14 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  DUPCLOSURE R7 K15 [PROTO_1]
  CAPTURE VAL R2
  DUPCLOSURE R8 K16 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  DUPCLOSURE R9 K17 [PROTO_3]
  DUPTABLE R10 K20 [{"summary", "stories"}]
  LOADK R11 K21 ["An expandable teaser."]
  SETTABLEKS R11 R10 K18 ["summary"]
  NEWTABLE R11 0 2
  DUPTABLE R12 K24 [{"name", "story"}]
  LOADK R13 K25 ["Expandable"]
  SETTABLEKS R13 R12 K22 ["name"]
  DUPCLOSURE R13 K26 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R7
  SETTABLEKS R13 R12 K23 ["story"]
  DUPTABLE R13 K24 [{"name", "story"}]
  LOADK R14 K27 ["Search Pills"]
  SETTABLEKS R14 R13 K22 ["name"]
  DUPCLOSURE R14 K28 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R9
  CAPTURE VAL R8
  SETTABLEKS R14 R13 K23 ["story"]
  SETLIST R11 R12 2 [1]
  SETTABLEKS R11 R10 K19 ["stories"]
  RETURN R10 1
