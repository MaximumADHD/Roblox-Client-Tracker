PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"Elements"}]
  NEWTABLE R4 0 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["new"]
  DUPTABLE R6 K8 [{"fontStyle", "LayoutOrder", "Text", "SplitBy"}]
  DUPTABLE R7 K11 [{"Font", "FontSize"}]
  GETIMPORT R8 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R8 R7 K9 ["Font"]
  LOADN R8 18
  SETTABLEKS R8 R7 K10 ["FontSize"]
  SETTABLEKS R7 R6 K4 ["fontStyle"]
  LOADN R7 2
  SETTABLEKS R7 R6 K5 ["LayoutOrder"]
  GETTABLEKS R8 R0 K15 ["controls"]
  GETTABLEKS R7 R8 K16 ["text"]
  SETTABLEKS R7 R6 K6 ["Text"]
  GETTABLEKS R8 R0 K15 ["controls"]
  GETTABLEKS R7 R8 K17 ["splitBy"]
  SETTABLEKS R7 R6 K7 ["SplitBy"]
  CALL R5 1 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K1 ["Elements"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"Elements"}]
  NEWTABLE R4 0 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["new"]
  DUPTABLE R6 K8 [{"fontStyle", "LayoutOrder", "Text", "SplitBy"}]
  DUPTABLE R7 K11 [{"Font", "FontSize"}]
  GETIMPORT R8 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R8 R7 K9 ["Font"]
  LOADN R8 18
  SETTABLEKS R8 R7 K10 ["FontSize"]
  SETTABLEKS R7 R6 K4 ["fontStyle"]
  LOADN R7 2
  SETTABLEKS R7 R6 K5 ["LayoutOrder"]
  LOADK R7 K15 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text"]
  SETTABLEKS R7 R6 K6 ["Text"]
  GETTABLEKS R8 R0 K16 ["controls"]
  GETTABLEKS R7 R8 K17 ["splitBy"]
  SETTABLEKS R7 R6 K7 ["SplitBy"]
  CALL R5 1 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K1 ["Elements"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_2:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"Elements"}]
  NEWTABLE R4 0 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["new"]
  DUPTABLE R6 K8 [{"fontStyle", "LayoutOrder", "Text", "SplitBy"}]
  DUPTABLE R7 K11 [{"Font", "FontSize"}]
  GETIMPORT R8 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R8 R7 K9 ["Font"]
  LOADN R8 16
  SETTABLEKS R8 R7 K10 ["FontSize"]
  SETTABLEKS R7 R6 K4 ["fontStyle"]
  LOADN R7 2
  SETTABLEKS R7 R6 K5 ["LayoutOrder"]
  LOADK R7 K15 ["Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. and multiple codepoint symbolsééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééééé"]
  SETTABLEKS R7 R6 K6 ["Text"]
  GETTABLEKS R8 R0 K16 ["controls"]
  GETTABLEKS R7 R8 K17 ["splitBy"]
  SETTABLEKS R7 R6 K7 ["SplitBy"]
  CALL R5 1 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K1 ["Elements"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"Elements"}]
  NEWTABLE R4 0 3
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["new"]
  DUPTABLE R6 K7 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
  SETTABLEKS R7 R6 K4 ["Text"]
  DUPTABLE R7 K11 [{"Font", "FontSize"}]
  GETIMPORT R8 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R8 R7 K9 ["Font"]
  LOADN R8 18
  SETTABLEKS R8 R7 K10 ["FontSize"]
  SETTABLEKS R7 R6 K5 ["fontStyle"]
  GETTABLEKS R8 R0 K15 ["controls"]
  GETTABLEKS R7 R8 K16 ["splitBy"]
  SETTABLEKS R7 R6 K6 ["SplitBy"]
  CALL R5 1 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K3 ["new"]
  DUPTABLE R7 K7 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R8 K17 ["Очень длинный текст Очень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текстОчень длинный текст. "]
  SETTABLEKS R8 R7 K4 ["Text"]
  DUPTABLE R8 K11 [{"Font", "FontSize"}]
  GETIMPORT R9 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R9 R8 K9 ["Font"]
  LOADN R9 18
  SETTABLEKS R9 R8 K10 ["FontSize"]
  SETTABLEKS R8 R7 K5 ["fontStyle"]
  GETTABLEKS R9 R0 K15 ["controls"]
  GETTABLEKS R8 R9 K16 ["splitBy"]
  SETTABLEKS R8 R7 K6 ["SplitBy"]
  CALL R6 1 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["new"]
  DUPTABLE R8 K7 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R9 K18 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
  SETTABLEKS R9 R8 K4 ["Text"]
  DUPTABLE R9 K11 [{"Font", "FontSize"}]
  GETIMPORT R10 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R10 R9 K9 ["Font"]
  LOADN R10 18
  SETTABLEKS R10 R9 K10 ["FontSize"]
  SETTABLEKS R9 R8 K5 ["fontStyle"]
  GETTABLEKS R10 R0 K15 ["controls"]
  GETTABLEKS R9 R10 K16 ["splitBy"]
  SETTABLEKS R9 R8 K6 ["SplitBy"]
  CALL R7 1 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K1 ["Elements"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_4:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["link clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"Elements"}]
  NEWTABLE R4 0 3
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["new"]
  DUPTABLE R6 K7 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
  SETTABLEKS R7 R6 K4 ["Text"]
  DUPTABLE R7 K11 [{"Font", "FontSize"}]
  GETIMPORT R8 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R8 R7 K9 ["Font"]
  LOADN R8 18
  SETTABLEKS R8 R7 K10 ["FontSize"]
  SETTABLEKS R7 R6 K5 ["fontStyle"]
  GETTABLEKS R8 R0 K15 ["controls"]
  GETTABLEKS R7 R8 K16 ["splitBy"]
  SETTABLEKS R7 R6 K6 ["SplitBy"]
  CALL R5 1 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K3 ["new"]
  NEWTABLE R7 0 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["new"]
  DUPTABLE R9 K18 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
  LOADK R10 K19 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. "]
  SETTABLEKS R10 R9 K4 ["Text"]
  DUPTABLE R10 K11 [{"Font", "FontSize"}]
  GETIMPORT R11 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R11 R10 K9 ["Font"]
  LOADN R11 18
  SETTABLEKS R11 R10 K10 ["FontSize"]
  SETTABLEKS R10 R9 K5 ["fontStyle"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K22 [{"name", "attributes"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K23 ["FONT"]
  SETTABLEKS R12 R11 K20 ["name"]
  DUPTABLE R12 K25 [{"color"}]
  LOADK R13 K26 ["#0000FF"]
  SETTABLEKS R13 R12 K24 ["color"]
  SETTABLEKS R12 R11 K21 ["attributes"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K17 ["EngineTags"]
  GETTABLEKS R11 R0 K15 ["controls"]
  GETTABLEKS R10 R11 K16 ["splitBy"]
  SETTABLEKS R10 R9 K6 ["SplitBy"]
  CALL R8 1 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K28 [{"onActivated"}]
  DUPCLOSURE R9 K29 [PROTO_4]
  SETTABLEKS R9 R8 K27 ["onActivated"]
  CALL R6 2 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["new"]
  DUPTABLE R8 K7 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R9 K30 ["雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨"]
  SETTABLEKS R9 R8 K4 ["Text"]
  DUPTABLE R9 K11 [{"Font", "FontSize"}]
  GETIMPORT R10 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R10 R9 K9 ["Font"]
  LOADN R10 18
  SETTABLEKS R10 R9 K10 ["FontSize"]
  SETTABLEKS R9 R8 K5 ["fontStyle"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K31 ["Symbol"]
  SETTABLEKS R9 R8 K6 ["SplitBy"]
  CALL R7 1 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K1 ["Elements"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_6:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["link clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"Elements"}]
  NEWTABLE R4 0 3
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["new"]
  DUPTABLE R6 K7 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
  SETTABLEKS R7 R6 K4 ["Text"]
  DUPTABLE R7 K11 [{"Font", "FontSize"}]
  GETIMPORT R8 K14 [Enum.Font.BuilderSansBold]
  SETTABLEKS R8 R7 K9 ["Font"]
  LOADN R8 18
  SETTABLEKS R8 R7 K10 ["FontSize"]
  SETTABLEKS R7 R6 K5 ["fontStyle"]
  GETTABLEKS R8 R0 K15 ["controls"]
  GETTABLEKS R7 R8 K16 ["splitBy"]
  SETTABLEKS R7 R6 K6 ["SplitBy"]
  CALL R5 1 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K3 ["new"]
  NEWTABLE R7 0 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["new"]
  DUPTABLE R9 K18 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
  LOADK R10 K19 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. "]
  SETTABLEKS R10 R9 K4 ["Text"]
  DUPTABLE R10 K11 [{"Font", "FontSize"}]
  GETIMPORT R11 K21 [Enum.Font.BuilderSans]
  SETTABLEKS R11 R10 K9 ["Font"]
  LOADN R11 18
  SETTABLEKS R11 R10 K10 ["FontSize"]
  SETTABLEKS R10 R9 K5 ["fontStyle"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K24 [{"name", "attributes"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K25 ["FONT"]
  SETTABLEKS R12 R11 K22 ["name"]
  DUPTABLE R12 K27 [{"color"}]
  LOADK R13 K28 ["#0000FF"]
  SETTABLEKS R13 R12 K26 ["color"]
  SETTABLEKS R12 R11 K23 ["attributes"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K17 ["EngineTags"]
  GETTABLEKS R11 R0 K15 ["controls"]
  GETTABLEKS R10 R11 K16 ["splitBy"]
  SETTABLEKS R10 R9 K6 ["SplitBy"]
  CALL R8 1 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K30 [{"onActivated"}]
  DUPCLOSURE R9 K31 [PROTO_6]
  SETTABLEKS R9 R8 K29 ["onActivated"]
  CALL R6 2 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["new"]
  DUPTABLE R8 K18 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
  LOADK R9 K32 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 "]
  SETTABLEKS R9 R8 K4 ["Text"]
  DUPTABLE R9 K11 [{"Font", "FontSize"}]
  GETIMPORT R10 K21 [Enum.Font.BuilderSans]
  SETTABLEKS R10 R9 K9 ["Font"]
  LOADN R10 18
  SETTABLEKS R10 R9 K10 ["FontSize"]
  SETTABLEKS R9 R8 K5 ["fontStyle"]
  NEWTABLE R9 0 1
  DUPTABLE R10 K24 [{"name", "attributes"}]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K33 ["STRIKE"]
  SETTABLEKS R11 R10 K22 ["name"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K23 ["attributes"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K17 ["EngineTags"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K34 ["Symbol"]
  SETTABLEKS R9 R8 K6 ["SplitBy"]
  CALL R7 1 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K1 ["Elements"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_8:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["link clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"Elements"}]
  NEWTABLE R4 0 4
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["new"]
  DUPTABLE R6 K7 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R7 K8 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text "]
  SETTABLEKS R7 R6 K4 ["Text"]
  DUPTABLE R7 K11 [{"Font", "FontSize"}]
  GETIMPORT R8 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R8 R7 K9 ["Font"]
  LOADN R8 18
  SETTABLEKS R8 R7 K10 ["FontSize"]
  SETTABLEKS R7 R6 K5 ["fontStyle"]
  GETTABLEKS R8 R0 K15 ["controls"]
  GETTABLEKS R7 R8 K16 ["splitBy"]
  SETTABLEKS R7 R6 K6 ["SplitBy"]
  CALL R5 1 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K3 ["new"]
  NEWTABLE R7 0 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["new"]
  DUPTABLE R9 K18 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
  LOADK R10 K19 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
  SETTABLEKS R10 R9 K4 ["Text"]
  DUPTABLE R10 K11 [{"Font", "FontSize"}]
  GETIMPORT R11 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R11 R10 K9 ["Font"]
  LOADN R11 18
  SETTABLEKS R11 R10 K10 ["FontSize"]
  SETTABLEKS R10 R9 K5 ["fontStyle"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K22 [{"name", "attributes"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K23 ["FONT"]
  SETTABLEKS R12 R11 K20 ["name"]
  DUPTABLE R12 K25 [{"color"}]
  LOADK R13 K26 ["#0000FF"]
  SETTABLEKS R13 R12 K24 ["color"]
  SETTABLEKS R12 R11 K21 ["attributes"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K17 ["EngineTags"]
  GETTABLEKS R11 R0 K15 ["controls"]
  GETTABLEKS R10 R11 K16 ["splitBy"]
  SETTABLEKS R10 R9 K6 ["SplitBy"]
  CALL R8 1 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K28 [{"onActivated"}]
  DUPCLOSURE R9 K29 [PROTO_8]
  SETTABLEKS R9 R8 K27 ["onActivated"]
  CALL R6 2 1
  GETUPVAL R8 5
  GETTABLEKS R7 R8 K3 ["new"]
  DUPTABLE R8 K32 [{"Image", "Size", "SplitBy"}]
  LOADK R9 K33 ["rbxasset://textures/ui/common/robux_color@2x.png"]
  SETTABLEKS R9 R8 K30 ["Image"]
  GETIMPORT R9 K36 [UDim2.fromOffset]
  LOADN R10 100
  LOADN R11 100
  CALL R9 2 1
  SETTABLEKS R9 R8 K31 ["Size"]
  GETTABLEKS R10 R0 K15 ["controls"]
  GETTABLEKS R9 R10 K16 ["splitBy"]
  SETTABLEKS R9 R8 K6 ["SplitBy"]
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["new"]
  DUPTABLE R9 K37 [{"Text", "fontStyle"}]
  LOADK R10 K38 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨"]
  SETTABLEKS R10 R9 K4 ["Text"]
  DUPTABLE R10 K11 [{"Font", "FontSize"}]
  GETIMPORT R11 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R11 R10 K9 ["Font"]
  LOADN R11 18
  SETTABLEKS R11 R10 K10 ["FontSize"]
  SETTABLEKS R10 R9 K5 ["fontStyle"]
  CALL R8 1 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K1 ["Elements"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_10:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["link clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_11:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["createElement"]
  GETUPVAL R1 1
  DUPTABLE R2 K2 [{"Elements"}]
  NEWTABLE R3 0 5
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K3 ["new"]
  DUPTABLE R5 K6 [{"Text", "fontStyle"}]
  LOADK R6 K7 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text"]
  SETTABLEKS R6 R5 K4 ["Text"]
  DUPTABLE R6 K10 [{"Font", "FontSize"}]
  GETIMPORT R7 K13 [Enum.Font.BuilderSans]
  SETTABLEKS R7 R6 K8 ["Font"]
  LOADN R7 18
  SETTABLEKS R7 R6 K9 ["FontSize"]
  SETTABLEKS R6 R5 K5 ["fontStyle"]
  CALL R4 1 1
  GETUPVAL R5 3
  GETUPVAL R7 4
  GETTABLEKS R6 R7 K3 ["new"]
  NEWTABLE R7 0 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["new"]
  DUPTABLE R9 K15 [{"Text", "fontStyle", "EngineTags"}]
  LOADK R10 K16 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
  SETTABLEKS R10 R9 K4 ["Text"]
  DUPTABLE R10 K10 [{"Font", "FontSize"}]
  GETIMPORT R11 K13 [Enum.Font.BuilderSans]
  SETTABLEKS R11 R10 K8 ["Font"]
  LOADN R11 18
  SETTABLEKS R11 R10 K9 ["FontSize"]
  SETTABLEKS R10 R9 K5 ["fontStyle"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K19 [{"name", "attributes"}]
  GETUPVAL R13 5
  GETTABLEKS R12 R13 K20 ["FONT"]
  SETTABLEKS R12 R11 K17 ["name"]
  DUPTABLE R12 K22 [{"color"}]
  LOADK R13 K23 ["#0000FF"]
  SETTABLEKS R13 R12 K21 ["color"]
  SETTABLEKS R12 R11 K18 ["attributes"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K14 ["EngineTags"]
  CALL R8 1 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K25 [{"onActivated"}]
  DUPCLOSURE R9 K26 [PROTO_10]
  SETTABLEKS R9 R8 K24 ["onActivated"]
  CALL R6 2 1
  GETUPVAL R7 3
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["new"]
  DUPTABLE R9 K28 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R10 K29 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text "]
  SETTABLEKS R10 R9 K4 ["Text"]
  DUPTABLE R10 K10 [{"Font", "FontSize"}]
  GETIMPORT R11 K13 [Enum.Font.BuilderSans]
  SETTABLEKS R11 R10 K8 ["Font"]
  LOADN R11 18
  SETTABLEKS R11 R10 K9 ["FontSize"]
  SETTABLEKS R10 R9 K5 ["fontStyle"]
  GETUPVAL R11 6
  GETTABLEKS R10 R11 K30 ["Symbol"]
  SETTABLEKS R10 R9 K27 ["SplitBy"]
  CALL R8 1 -1
  SETLIST R3 R4 -1 [1]
  SETTABLEKS R3 R2 K1 ["Elements"]
  CALL R0 2 -1
  RETURN R0 -1

PROTO_12:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K2 [{"Elements"}]
  NEWTABLE R4 0 1
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K3 ["new"]
  DUPTABLE R6 K7 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R7 K8 ["Here goes some some random normal text that is also quite long long long long long long long long long long long long long long long long long long and then a very long word VerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextlongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtextVerylongtext Word"]
  SETTABLEKS R7 R6 K4 ["Text"]
  DUPTABLE R7 K11 [{"Font", "FontSize"}]
  GETIMPORT R8 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R8 R7 K9 ["Font"]
  LOADN R8 18
  SETTABLEKS R8 R7 K10 ["FontSize"]
  SETTABLEKS R7 R6 K5 ["fontStyle"]
  GETTABLEKS R8 R0 K15 ["controls"]
  GETTABLEKS R7 R8 K16 ["splitBy"]
  SETTABLEKS R7 R6 K6 ["SplitBy"]
  CALL R5 1 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K1 ["Elements"]
  CALL R1 2 -1
  RETURN R1 -1

PROTO_13:
  GETIMPORT R0 K1 [print]
  LOADK R1 K2 ["link clicked"]
  CALL R0 1 0
  RETURN R0 0

PROTO_14:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["createElement"]
  GETUPVAL R2 1
  DUPTABLE R3 K4 [{"VerticalPadding", "HorizontalAlignment", "Elements"}]
  GETIMPORT R4 K7 [UDim.new]
  LOADN R5 0
  LOADN R6 20
  CALL R4 2 1
  SETTABLEKS R4 R3 K1 ["VerticalPadding"]
  GETIMPORT R4 K10 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R4 R3 K2 ["HorizontalAlignment"]
  NEWTABLE R4 0 3
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K6 ["new"]
  DUPTABLE R6 K14 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R7 K15 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text. "]
  SETTABLEKS R7 R6 K11 ["Text"]
  DUPTABLE R7 K18 [{"Font", "FontSize"}]
  GETIMPORT R8 K20 [Enum.Font.BuilderSansBold]
  SETTABLEKS R8 R7 K16 ["Font"]
  LOADN R8 18
  SETTABLEKS R8 R7 K17 ["FontSize"]
  SETTABLEKS R7 R6 K12 ["fontStyle"]
  GETTABLEKS R8 R0 K21 ["controls"]
  GETTABLEKS R7 R8 K22 ["splitBy"]
  SETTABLEKS R7 R6 K13 ["SplitBy"]
  CALL R5 1 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K6 ["new"]
  NEWTABLE R7 0 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K6 ["new"]
  DUPTABLE R9 K24 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
  LOADK R10 K25 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. "]
  SETTABLEKS R10 R9 K11 ["Text"]
  DUPTABLE R10 K18 [{"Font", "FontSize"}]
  GETIMPORT R11 K27 [Enum.Font.BuilderSans]
  SETTABLEKS R11 R10 K16 ["Font"]
  LOADN R11 18
  SETTABLEKS R11 R10 K17 ["FontSize"]
  SETTABLEKS R10 R9 K12 ["fontStyle"]
  NEWTABLE R10 0 1
  DUPTABLE R11 K30 [{"name", "attributes"}]
  GETUPVAL R13 4
  GETTABLEKS R12 R13 K31 ["FONT"]
  SETTABLEKS R12 R11 K28 ["name"]
  DUPTABLE R12 K33 [{"color"}]
  LOADK R13 K34 ["#0000FF"]
  SETTABLEKS R13 R12 K32 ["color"]
  SETTABLEKS R12 R11 K29 ["attributes"]
  SETLIST R10 R11 1 [1]
  SETTABLEKS R10 R9 K23 ["EngineTags"]
  GETTABLEKS R11 R0 K21 ["controls"]
  GETTABLEKS R10 R11 K22 ["splitBy"]
  SETTABLEKS R10 R9 K13 ["SplitBy"]
  CALL R8 1 -1
  SETLIST R7 R8 -1 [1]
  DUPTABLE R8 K36 [{"onActivated"}]
  DUPCLOSURE R9 K37 [PROTO_13]
  SETTABLEKS R9 R8 K35 ["onActivated"]
  CALL R6 2 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K6 ["new"]
  DUPTABLE R8 K24 [{"Text", "fontStyle", "EngineTags", "SplitBy"}]
  LOADK R9 K38 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 "]
  SETTABLEKS R9 R8 K11 ["Text"]
  DUPTABLE R9 K18 [{"Font", "FontSize"}]
  GETIMPORT R10 K27 [Enum.Font.BuilderSans]
  SETTABLEKS R10 R9 K16 ["Font"]
  LOADN R10 18
  SETTABLEKS R10 R9 K17 ["FontSize"]
  SETTABLEKS R9 R8 K12 ["fontStyle"]
  NEWTABLE R9 0 1
  DUPTABLE R10 K30 [{"name", "attributes"}]
  GETUPVAL R12 4
  GETTABLEKS R11 R12 K39 ["STRIKE"]
  SETTABLEKS R11 R10 K28 ["name"]
  NEWTABLE R11 0 0
  SETTABLEKS R11 R10 K29 ["attributes"]
  SETLIST R9 R10 1 [1]
  SETTABLEKS R9 R8 K23 ["EngineTags"]
  GETUPVAL R10 5
  GETTABLEKS R9 R10 K40 ["Symbol"]
  SETTABLEKS R9 R8 K13 ["SplitBy"]
  CALL R7 1 -1
  SETLIST R4 R5 -1 [1]
  SETTABLEKS R4 R3 K3 ["Elements"]
  CALL R1 2 -1
  RETURN R1 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R1 K1 [script]
  LOADK R3 K2 ["Components"]
  NAMECALL R1 R1 K3 ["FindFirstAncestor"]
  CALL R1 2 1
  GETTABLEKS R0 R1 K4 ["Parent"]
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K8 ["InlineLayoutElements"]
  GETTABLEKS R4 R5 K9 ["TextElement"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R8 K1 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K8 ["InlineLayoutElements"]
  GETTABLEKS R5 R6 K10 ["LinkElement"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETIMPORT R9 K1 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K8 ["InlineLayoutElements"]
  GETTABLEKS R6 R7 K11 ["ImageElement"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETIMPORT R10 K1 [script]
  GETTABLEKS R9 R10 K4 ["Parent"]
  GETTABLEKS R8 R9 K8 ["InlineLayoutElements"]
  GETTABLEKS R7 R8 K12 ["HardBreakElement"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K13 ["Enums"]
  GETTABLEKS R8 R9 K14 ["TextSplitBy"]
  CALL R7 1 1
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K2 ["Components"]
  GETTABLEKS R9 R10 K15 ["InlineLayout"]
  CALL R8 1 1
  GETIMPORT R9 K6 [require]
  GETTABLEKS R10 R1 K16 ["MarkdownCore"]
  CALL R9 1 1
  GETTABLEKS R11 R9 K13 ["Enums"]
  GETTABLEKS R10 R11 K17 ["InlineEngineTag"]
  DUPTABLE R11 K21 [{"summary", "controls", "stories"}]
  LOADK R12 K22 ["A component that lays out inline elements such as text, links, and images."]
  SETTABLEKS R12 R11 K18 ["summary"]
  DUPTABLE R12 K25 [{"splitBy", "text"}]
  NEWTABLE R13 0 2
  GETTABLEKS R14 R7 K26 ["Word"]
  GETTABLEKS R15 R7 K27 ["Symbol"]
  SETLIST R13 R14 2 [1]
  SETTABLEKS R13 R12 K23 ["splitBy"]
  LOADK R13 K28 ["Any text you want"]
  SETTABLEKS R13 R12 K24 ["text"]
  SETTABLEKS R12 R11 K19 ["controls"]
  NEWTABLE R12 0 10
  DUPTABLE R13 K31 [{"name", "summary", "story"}]
  LOADK R14 K32 ["CustomText"]
  SETTABLEKS R14 R13 K29 ["name"]
  LOADK R14 K33 ["Type a custom text and choice split mode."]
  SETTABLEKS R14 R13 K18 ["summary"]
  DUPCLOSURE R14 K34 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  SETTABLEKS R14 R13 K30 ["story"]
  DUPTABLE R14 K31 [{"name", "summary", "story"}]
  LOADK R15 K35 ["Default"]
  SETTABLEKS R15 R14 K29 ["name"]
  LOADK R15 K36 ["InlineLayout can render a single TextElement with a long English text"]
  SETTABLEKS R15 R14 K18 ["summary"]
  DUPCLOSURE R15 K37 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  SETTABLEKS R15 R14 K30 ["story"]
  DUPTABLE R15 K31 [{"name", "summary", "story"}]
  LOADK R16 K38 ["DefaultUTF8"]
  SETTABLEKS R16 R15 K29 ["name"]
  LOADK R16 K39 ["InlineLayout can render a single TextElement with a long UTF-8 (Cyrillic and combining marks)"]
  SETTABLEKS R16 R15 K18 ["summary"]
  DUPCLOSURE R16 K40 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  SETTABLEKS R16 R15 K30 ["story"]
  DUPTABLE R16 K31 [{"name", "summary", "story"}]
  LOADK R17 K41 ["SeveralTextElements"]
  SETTABLEKS R17 R16 K29 ["name"]
  LOADK R17 K42 ["InlineLayout can render a multiple TextElements in different languages."]
  SETTABLEKS R17 R16 K18 ["summary"]
  DUPCLOSURE R17 K43 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  SETTABLEKS R17 R16 K30 ["story"]
  DUPTABLE R17 K31 [{"name", "summary", "story"}]
  LOADK R18 K44 ["WithLinks"]
  SETTABLEKS R18 R17 K29 ["name"]
  LOADK R18 K45 ["InlineLayout can render TextElements and LinkElements mixed together, including Chinese characters with symbol-based splitting."]
  SETTABLEKS R18 R17 K18 ["summary"]
  DUPCLOSURE R18 K46 [PROTO_5]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R7
  SETTABLEKS R18 R17 K30 ["story"]
  DUPTABLE R18 K31 [{"name", "summary", "story"}]
  LOADK R19 K47 ["WithRichText"]
  SETTABLEKS R19 R18 K29 ["name"]
  LOADK R19 K48 ["InlineLayout can render TextElements and LinkElements with different font styles (bold, italic) and text effects (strikethrough)."]
  SETTABLEKS R19 R18 K18 ["summary"]
  DUPCLOSURE R19 K49 [PROTO_7]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R7
  SETTABLEKS R19 R18 K30 ["story"]
  DUPTABLE R19 K31 [{"name", "summary", "story"}]
  LOADK R20 K50 ["WithImage"]
  SETTABLEKS R20 R19 K29 ["name"]
  LOADK R20 K51 ["InlineLayout can render Images with TextElements, LinkElements"]
  SETTABLEKS R20 R19 K18 ["summary"]
  DUPCLOSURE R20 K52 [PROTO_9]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R5
  SETTABLEKS R20 R19 K30 ["story"]
  DUPTABLE R20 K31 [{"name", "summary", "story"}]
  LOADK R21 K53 ["WithHardBreak"]
  SETTABLEKS R21 R20 K29 ["name"]
  LOADK R21 K54 ["Elements can be separated by hard breaks to force line breaks in specific places."]
  SETTABLEKS R21 R20 K18 ["summary"]
  DUPCLOSURE R21 K55 [PROTO_11]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R7
  SETTABLEKS R21 R20 K30 ["story"]
  DUPTABLE R21 K31 [{"name", "summary", "story"}]
  LOADK R22 K56 ["LongWord"]
  SETTABLEKS R22 R21 K29 ["name"]
  LOADK R22 K57 ["InlineLayout can render a TextElement with a very long word that cannot be split by word boundaries"]
  SETTABLEKS R22 R21 K18 ["summary"]
  DUPCLOSURE R22 K58 [PROTO_12]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  SETTABLEKS R22 R21 K30 ["story"]
  DUPTABLE R22 K31 [{"name", "summary", "story"}]
  LOADK R23 K59 ["With Custom Padding and Alignment"]
  SETTABLEKS R23 R22 K29 ["name"]
  LOADK R23 K60 ["InlineLayout can render elements with custom vertical padding and horizontal alignment."]
  SETTABLEKS R23 R22 K18 ["summary"]
  DUPCLOSURE R23 K61 [PROTO_14]
  CAPTURE VAL R2
  CAPTURE VAL R8
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R10
  CAPTURE VAL R7
  SETTABLEKS R23 R22 K30 ["story"]
  SETLIST R12 R13 10 [1]
  SETTABLEKS R12 R11 K20 ["stories"]
  RETURN R11 1
