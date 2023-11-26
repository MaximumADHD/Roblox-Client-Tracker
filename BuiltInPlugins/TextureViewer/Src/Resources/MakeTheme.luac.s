PROTO_0:
  LOADNIL R1
  JUMPIFNOT R0 [+6]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["mock"]
  CALL R2 0 1
  MOVE R1 R2
  JUMP [+5]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["new"]
  CALL R2 0 1
  MOVE R1 R2
  GETUPVAL R4 1
  NAMECALL R2 R1 K2 ["extend"]
  CALL R2 2 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Framework"]
  CALL R1 1 1
  GETTABLEKS R2 R1 K7 ["Style"]
  GETTABLEKS R4 R2 K8 ["Themes"]
  GETTABLEKS R3 R4 K9 ["StudioTheme"]
  DUPTABLE R4 K14 [{"App", "TopPanel", "SearchBar", "TextureTable"}]
  DUPTABLE R5 K17 [{"Padding", "Spacing"}]
  LOADN R6 4
  SETTABLEKS R6 R5 K15 ["Padding"]
  LOADN R6 4
  SETTABLEKS R6 R5 K16 ["Spacing"]
  SETTABLEKS R5 R4 K10 ["App"]
  DUPTABLE R5 K21 [{"Size", "Padding", "AggregateStats", "Refresh"}]
  GETIMPORT R6 K24 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 24
  CALL R6 4 1
  SETTABLEKS R6 R5 K18 ["Size"]
  LOADN R6 2
  SETTABLEKS R6 R5 K15 ["Padding"]
  DUPTABLE R6 K28 [{"TextSize", "NumTextures", "TotalMemory"}]
  LOADN R7 18
  SETTABLEKS R7 R6 K25 ["TextSize"]
  DUPTABLE R7 K29 [{"Size"}]
  GETIMPORT R8 K24 [UDim2.new]
  LOADK R9 K30 [0.333333333333333]
  LOADN R10 231
  LOADN R11 1
  LOADN R12 0
  CALL R8 4 1
  SETTABLEKS R8 R7 K18 ["Size"]
  SETTABLEKS R7 R6 K26 ["NumTextures"]
  DUPTABLE R7 K29 [{"Size"}]
  GETIMPORT R8 K32 [UDim2.fromScale]
  LOADK R9 K30 [0.333333333333333]
  LOADN R10 1
  CALL R8 2 1
  SETTABLEKS R8 R7 K18 ["Size"]
  SETTABLEKS R7 R6 K27 ["TotalMemory"]
  SETTABLEKS R6 R5 K19 ["AggregateStats"]
  DUPTABLE R6 K36 [{"Size", "AnchorPoint", "Position", "Button"}]
  GETIMPORT R7 K32 [UDim2.fromScale]
  LOADK R8 K30 [0.333333333333333]
  LOADN R9 1
  CALL R7 2 1
  SETTABLEKS R7 R6 K18 ["Size"]
  GETIMPORT R7 K38 [Vector2.new]
  LOADK R8 K39 [0.5]
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K33 ["AnchorPoint"]
  GETIMPORT R7 K24 [UDim2.new]
  LOADK R8 K39 [0.5]
  LOADN R9 25
  LOADN R10 0
  LOADN R11 0
  CALL R7 4 1
  SETTABLEKS R7 R6 K34 ["Position"]
  DUPTABLE R7 K41 [{"Icon"}]
  LOADK R8 K42 ["rbxasset://textures/TextureViewer/refresh_dark_theme.png"]
  SETTABLEKS R8 R7 K40 ["Icon"]
  SETTABLEKS R7 R6 K35 ["Button"]
  SETTABLEKS R6 R5 K20 ["Refresh"]
  SETTABLEKS R5 R4 K11 ["TopPanel"]
  DUPTABLE R5 K29 [{"Size"}]
  GETIMPORT R6 K24 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 0
  LOADN R10 32
  CALL R6 4 1
  SETTABLEKS R6 R5 K18 ["Size"]
  SETTABLEKS R5 R4 K12 ["SearchBar"]
  DUPTABLE R5 K45 [{"Size", "RowHeight", "TableCell"}]
  GETIMPORT R6 K24 [UDim2.new]
  LOADN R7 1
  LOADN R8 0
  LOADN R9 1
  LOADN R10 196
  CALL R6 4 1
  SETTABLEKS R6 R5 K18 ["Size"]
  LOADN R6 165
  SETTABLEKS R6 R5 K43 ["RowHeight"]
  DUPTABLE R6 K49 [{"Style", "BorderSizePixel", "IdCell", "FindSelectCell"}]
  LOADK R7 K50 ["Box"]
  SETTABLEKS R7 R6 K7 ["Style"]
  LOADN R7 1
  SETTABLEKS R7 R6 K46 ["BorderSizePixel"]
  DUPTABLE R7 K53 [{"TextInput", "Buttons"}]
  DUPTABLE R8 K29 [{"Size"}]
  GETIMPORT R9 K32 [UDim2.fromScale]
  LOADN R10 1
  LOADK R11 K30 [0.333333333333333]
  CALL R9 2 1
  SETTABLEKS R9 R8 K18 ["Size"]
  SETTABLEKS R8 R7 K51 ["TextInput"]
  DUPTABLE R8 K57 [{"ButtonsWrapper", "Padding", "CancelIcon", "ConfirmIcon"}]
  DUPTABLE R9 K29 [{"Size"}]
  GETIMPORT R10 K32 [UDim2.fromScale]
  LOADK R11 K58 [0.666666666666667]
  LOADK R12 K30 [0.333333333333333]
  CALL R10 2 1
  SETTABLEKS R10 R9 K18 ["Size"]
  SETTABLEKS R9 R8 K54 ["ButtonsWrapper"]
  LOADN R9 5
  SETTABLEKS R9 R8 K15 ["Padding"]
  LOADK R9 K59 ["rbxasset://textures/TextureViewer/cancel.png"]
  SETTABLEKS R9 R8 K55 ["CancelIcon"]
  LOADK R9 K60 ["rbxasset://textures/TextureViewer/confirm.png"]
  SETTABLEKS R9 R8 K56 ["ConfirmIcon"]
  SETTABLEKS R8 R7 K52 ["Buttons"]
  SETTABLEKS R7 R6 K47 ["IdCell"]
  DUPTABLE R7 K64 [{"ZoomText", "PrevButton", "NextButton"}]
  DUPTABLE R8 K65 [{"Padding", "TextSize"}]
  LOADN R9 5
  SETTABLEKS R9 R8 K15 ["Padding"]
  LOADN R9 18
  SETTABLEKS R9 R8 K25 ["TextSize"]
  SETTABLEKS R8 R7 K61 ["ZoomText"]
  DUPTABLE R8 K41 [{"Icon"}]
  LOADK R9 K66 ["rbxasset://textures/TextureViewer/arrowleft_black_16.png"]
  SETTABLEKS R9 R8 K40 ["Icon"]
  SETTABLEKS R8 R7 K62 ["PrevButton"]
  DUPTABLE R8 K41 [{"Icon"}]
  LOADK R9 K67 ["rbxasset://textures/TextureViewer/arrowright_black_16.png"]
  SETTABLEKS R9 R8 K40 ["Icon"]
  SETTABLEKS R8 R7 K63 ["NextButton"]
  SETTABLEKS R7 R6 K48 ["FindSelectCell"]
  SETTABLEKS R6 R5 K44 ["TableCell"]
  SETTABLEKS R5 R4 K13 ["TextureTable"]
  DUPCLOSURE R5 K68 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R4
  RETURN R5 1
