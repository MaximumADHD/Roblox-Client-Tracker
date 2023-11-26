PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  MOVE R3 R0
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
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
  DUPTABLE R7 K13 [{"SearchList"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K16 [{"Items", "ItemMinWidth"}]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K14 ["Items"]
  LOADN R11 28
  SETTABLEKS R11 R10 K15 ["ItemMinWidth"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["SearchList"]
  CALL R4 3 -1
  SETLIST R3 R4 -1 [1]
  CALL R0 3 -1
  RETURN R0 -1

PROTO_2:
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
  DUPTABLE R7 K13 [{"SearchList"}]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K0 ["createElement"]
  GETUPVAL R9 2
  DUPTABLE R10 K17 [{"Items", "ItemMinWidth", "MaxRowCount"}]
  GETUPVAL R11 3
  SETTABLEKS R11 R10 K14 ["Items"]
  LOADN R11 28
  SETTABLEKS R11 R10 K15 ["ItemMinWidth"]
  LOADN R11 2
  SETTABLEKS R11 R10 K16 ["MaxRowCount"]
  CALL R8 2 1
  SETTABLEKS R8 R7 K12 ["SearchList"]
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
  GETTABLEKS R5 R6 K12 ["SearchList"]
  CALL R4 1 1
  DUPCLOSURE R5 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  NEWTABLE R6 0 21
  LOADK R7 K14 ["charmander"]
  LOADK R8 K15 ["bulbasaur"]
  LOADK R9 K16 ["squirtle"]
  LOADK R10 K17 ["cyndaquil"]
  LOADK R11 K18 ["totodile"]
  LOADK R12 K19 ["chikorita"]
  LOADK R13 K20 ["torchic"]
  LOADK R14 K21 ["mudkip"]
  LOADK R15 K22 ["treecko"]
  LOADK R16 K23 ["chimchar"]
  LOADK R17 K24 ["piplup"]
  LOADK R18 K25 ["turtwig"]
  LOADK R19 K26 ["tepig"]
  LOADK R20 K27 ["oshawott"]
  LOADK R21 K28 ["snivy"]
  LOADK R22 K29 ["fennekin"]
  SETLIST R6 R7 16 [1]
  LOADK R7 K30 ["froakie"]
  LOADK R8 K31 ["chespin"]
  LOADK R9 K32 ["litten"]
  LOADK R10 K33 ["popplio"]
  LOADK R11 K34 ["rowlet"]
  SETLIST R6 R7 5 [17]
  DUPTABLE R7 K37 [{"summary", "stories"}]
  LOADK R8 K38 ["A generic search list."]
  SETTABLEKS R8 R7 K35 ["summary"]
  NEWTABLE R8 0 2
  DUPTABLE R9 K41 [{"name", "story"}]
  LOADK R10 K42 ["Full, no max count"]
  SETTABLEKS R10 R9 K39 ["name"]
  DUPCLOSURE R10 K43 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R10 R9 K40 ["story"]
  DUPTABLE R10 K41 [{"name", "story"}]
  LOADK R11 K44 ["Max row count of 2"]
  SETTABLEKS R11 R10 K39 ["name"]
  DUPCLOSURE R11 K45 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R4
  CAPTURE VAL R6
  SETTABLEKS R11 R10 K40 ["story"]
  SETLIST R8 R9 2 [1]
  SETTABLEKS R8 R7 K36 ["stories"]
  RETURN R7 1
