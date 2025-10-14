PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K3 [{"Items", "TextWrapped"}]
  NEWTABLE R3 0 4
  LOADK R4 K4 ["Bulbasaur"]
  LOADK R5 K5 ["Charmander"]
  LOADK R6 K6 ["Squirtle"]
  LOADK R7 K7 ["This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it."]
  SETLIST R3 R4 4 [1]
  SETTABLEKS R3 R2 K1 ["Items"]
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["TextWrapped"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_1:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K3 [{"Items", "TextWrapped"}]
  NEWTABLE R3 0 9
  LOADK R4 K4 ["Grass"]
  DUPTABLE R5 K7 [{"Text", "Style"}]
  LOADK R6 K8 ["Bulbasaur"]
  SETTABLEKS R6 R5 K5 ["Text"]
  LOADK R6 K9 ["SubItem"]
  SETTABLEKS R6 R5 K6 ["Style"]
  LOADK R6 K10 ["Fire"]
  DUPTABLE R7 K7 [{"Text", "Style"}]
  LOADK R8 K11 ["Charmander"]
  SETTABLEKS R8 R7 K5 ["Text"]
  LOADK R8 K9 ["SubItem"]
  SETTABLEKS R8 R7 K6 ["Style"]
  DUPTABLE R8 K7 [{"Text", "Style"}]
  LOADK R9 K12 ["Cyndaquil"]
  SETTABLEKS R9 R8 K5 ["Text"]
  LOADK R9 K9 ["SubItem"]
  SETTABLEKS R9 R8 K6 ["Style"]
  LOADK R9 K13 ["Water"]
  DUPTABLE R10 K7 [{"Text", "Style"}]
  LOADK R11 K14 ["Squirtle"]
  SETTABLEKS R11 R10 K5 ["Text"]
  LOADK R11 K9 ["SubItem"]
  SETTABLEKS R11 R10 K6 ["Style"]
  DUPTABLE R11 K7 [{"Text", "Style"}]
  LOADK R12 K15 ["Totodile"]
  SETTABLEKS R12 R11 K5 ["Text"]
  LOADK R12 K9 ["SubItem"]
  SETTABLEKS R12 R11 K6 ["Style"]
  DUPTABLE R12 K7 [{"Text", "Style"}]
  LOADK R13 K16 ["This indeed is a very long item for this list example that one would expect to overflow had we not wrapped it."]
  SETTABLEKS R13 R12 K5 ["Text"]
  LOADK R13 K9 ["SubItem"]
  SETTABLEKS R13 R12 K6 ["Style"]
  SETLIST R3 R4 9 [1]
  SETTABLEKS R3 R2 K1 ["Items"]
  LOADB R3 1
  SETTABLEKS R3 R2 K2 ["TextWrapped"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_2:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["link clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R0 0
  CALL R0 0 1
  GETTABLEKS R3 R0 K0 ["Color"]
  GETTABLEKS R2 R3 K1 ["Content"]
  GETTABLEKS R1 R2 K2 ["Link"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K3 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K6 [{"Items", "TextWrapped"}]
  NEWTABLE R5 0 3
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K3 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K9 [{"Size", "Image"}]
  GETIMPORT R9 K12 [UDim2.fromOffset]
  LOADN R10 100
  LOADN R11 100
  CALL R9 2 1
  SETTABLEKS R9 R8 K7 ["Size"]
  LOADK R9 K13 ["rbxasset://textures/ui/common/robux_color@2x.png"]
  SETTABLEKS R9 R8 K8 ["Image"]
  CALL R6 2 1
  LOADK R7 K14 ["As you can see, arbitrary elements can be used as list items"]
  GETUPVAL R9 1
  GETTABLEKS R8 R9 K3 ["createElement"]
  GETUPVAL R9 4
  DUPTABLE R10 K20 [{"TextXAlignment", "AutomaticSize", "onActivated", "textStyle", "Text"}]
  GETIMPORT R11 K23 [Enum.TextXAlignment.Left]
  SETTABLEKS R11 R10 K15 ["TextXAlignment"]
  GETIMPORT R11 K25 [Enum.AutomaticSize.XY]
  SETTABLEKS R11 R10 K16 ["AutomaticSize"]
  DUPCLOSURE R11 K26 [PROTO_2]
  SETTABLEKS R11 R10 K17 ["onActivated"]
  SETTABLEKS R1 R10 K18 ["textStyle"]
  LOADK R11 K27 ["And here is a link, displayed as a list element"]
  SETTABLEKS R11 R10 K19 ["Text"]
  CALL R8 2 -1
  SETLIST R5 R6 -1 [1]
  SETTABLEKS R5 R4 K4 ["Items"]
  LOADB R5 1
  SETTABLEKS R5 R4 K5 ["TextWrapped"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  LOADK R3 K2 ["Components"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETIMPORT R1 K1 [script]
  LOADK R3 K5 ["Packages"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K7 [require]
  GETTABLEKS R3 R1 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K7 [require]
  GETTABLEKS R4 R1 K9 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R5 R3 K10 ["Hooks"]
  GETTABLEKS R4 R5 K11 ["useTokens"]
  GETTABLEKS R5 R3 K12 ["Image"]
  GETTABLEKS R6 R3 K13 ["Text"]
  GETIMPORT R7 K7 [require]
  GETTABLEKS R9 R0 K2 ["Components"]
  GETTABLEKS R8 R9 K14 ["BulletList"]
  CALL R7 1 1
  DUPTABLE R8 K17 [{"summary", "stories"}]
  LOADK R9 K18 ["An array of strings and/or elements displayed as a bulleted list."]
  SETTABLEKS R9 R8 K15 ["summary"]
  NEWTABLE R9 0 3
  DUPTABLE R10 K21 [{"name", "summary", "story"}]
  LOADK R11 K22 ["Basic"]
  SETTABLEKS R11 R10 K19 ["name"]
  LOADK R11 K23 ["A basic bullet list with string items."]
  SETTABLEKS R11 R10 K15 ["summary"]
  DUPCLOSURE R11 K24 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLEKS R11 R10 K20 ["story"]
  DUPTABLE R11 K21 [{"name", "summary", "story"}]
  LOADK R12 K25 ["With Indentation"]
  SETTABLEKS R12 R11 K19 ["name"]
  LOADK R12 K26 ["A bullet list with indented sub-items."]
  SETTABLEKS R12 R11 K15 ["summary"]
  DUPCLOSURE R12 K27 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R7
  SETTABLEKS R12 R11 K20 ["story"]
  DUPTABLE R12 K21 [{"name", "summary", "story"}]
  LOADK R13 K28 ["With Rendered Components"]
  SETTABLEKS R13 R12 K19 ["name"]
  LOADK R13 K29 ["BulletList can render custom components as items."]
  SETTABLEKS R13 R12 K15 ["summary"]
  DUPCLOSURE R13 K30 [PROTO_3]
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R13 R12 K20 ["story"]
  SETLIST R9 R10 3 [1]
  SETTABLEKS R9 R8 K16 ["stories"]
  RETURN R8 1
