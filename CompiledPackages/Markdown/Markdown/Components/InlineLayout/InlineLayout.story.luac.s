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
  DUPTABLE R7 K18 [{"OnActivated", "fontStyle", "Text", "SplitBy"}]
  DUPCLOSURE R8 K19 [PROTO_4]
  SETTABLEKS R8 R7 K17 ["OnActivated"]
  DUPTABLE R8 K11 [{"Font", "FontSize"}]
  GETIMPORT R9 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R9 R8 K9 ["Font"]
  LOADN R9 18
  SETTABLEKS R9 R8 K10 ["FontSize"]
  SETTABLEKS R8 R7 K5 ["fontStyle"]
  LOADK R8 K20 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. "]
  SETTABLEKS R8 R7 K4 ["Text"]
  GETTABLEKS R9 R0 K15 ["controls"]
  GETTABLEKS R8 R9 K16 ["splitBy"]
  SETTABLEKS R8 R7 K6 ["SplitBy"]
  CALL R6 1 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["new"]
  DUPTABLE R8 K7 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R9 K21 ["雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨"]
  SETTABLEKS R9 R8 K4 ["Text"]
  DUPTABLE R9 K11 [{"Font", "FontSize"}]
  GETIMPORT R10 K14 [Enum.Font.BuilderSans]
  SETTABLEKS R10 R9 K9 ["Font"]
  LOADN R10 18
  SETTABLEKS R10 R9 K10 ["FontSize"]
  SETTABLEKS R9 R8 K5 ["fontStyle"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K22 ["Symbol"]
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
  DUPTABLE R7 K18 [{"OnActivated", "fontStyle", "Text", "SplitBy"}]
  DUPCLOSURE R8 K19 [PROTO_6]
  SETTABLEKS R8 R7 K17 ["OnActivated"]
  DUPTABLE R8 K11 [{"Font", "FontSize"}]
  GETIMPORT R9 K21 [Enum.Font.SourceSansItalic]
  SETTABLEKS R9 R8 K9 ["Font"]
  LOADN R9 18
  SETTABLEKS R9 R8 K10 ["FontSize"]
  SETTABLEKS R8 R7 K5 ["fontStyle"]
  LOADK R8 K22 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text. "]
  SETTABLEKS R8 R7 K4 ["Text"]
  GETTABLEKS R9 R0 K15 ["controls"]
  GETTABLEKS R8 R9 K16 ["splitBy"]
  SETTABLEKS R8 R7 K6 ["SplitBy"]
  CALL R6 1 1
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["new"]
  DUPTABLE R8 K24 [{"Text", "fontStyle", "TextVariant", "SplitBy"}]
  LOADK R9 K25 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨 "]
  SETTABLEKS R9 R8 K4 ["Text"]
  DUPTABLE R9 K11 [{"Font", "FontSize"}]
  GETIMPORT R10 K27 [Enum.Font.BuilderSans]
  SETTABLEKS R10 R9 K9 ["Font"]
  LOADN R10 18
  SETTABLEKS R10 R9 K10 ["FontSize"]
  SETTABLEKS R9 R8 K5 ["fontStyle"]
  DUPTABLE R9 K29 [{"Strike"}]
  LOADB R10 1
  SETTABLEKS R10 R9 K28 ["Strike"]
  SETTABLEKS R9 R8 K23 ["TextVariant"]
  GETUPVAL R10 4
  GETTABLEKS R9 R10 K30 ["Symbol"]
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
  DUPTABLE R7 K18 [{"OnActivated", "Text", "fontStyle", "SplitBy"}]
  DUPCLOSURE R8 K19 [PROTO_8]
  SETTABLEKS R8 R7 K17 ["OnActivated"]
  LOADK R8 K20 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
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
  GETUPVAL R8 4
  GETTABLEKS R7 R8 K3 ["new"]
  DUPTABLE R8 K23 [{"Image", "Size", "SplitBy"}]
  LOADK R9 K24 ["rbxasset://textures/ui/common/robux_color@2x.png"]
  SETTABLEKS R9 R8 K21 ["Image"]
  GETIMPORT R9 K27 [UDim2.fromOffset]
  LOADN R10 100
  LOADN R11 100
  CALL R9 2 1
  SETTABLEKS R9 R8 K22 ["Size"]
  GETTABLEKS R10 R0 K15 ["controls"]
  GETTABLEKS R9 R10 K16 ["splitBy"]
  SETTABLEKS R9 R8 K6 ["SplitBy"]
  CALL R7 1 1
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["new"]
  DUPTABLE R9 K28 [{"Text", "fontStyle"}]
  LOADK R10 K29 [" 雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨雨"]
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
  DUPTABLE R7 K15 [{"OnActivated", "Text", "fontStyle"}]
  DUPCLOSURE R8 K16 [PROTO_10]
  SETTABLEKS R8 R7 K14 ["OnActivated"]
  LOADK R8 K17 ["Sehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange Text Sehr lange TextSehr lange TextSehr lange Text"]
  SETTABLEKS R8 R7 K4 ["Text"]
  DUPTABLE R8 K10 [{"Font", "FontSize"}]
  GETIMPORT R9 K13 [Enum.Font.BuilderSans]
  SETTABLEKS R9 R8 K8 ["Font"]
  LOADN R9 18
  SETTABLEKS R9 R8 K9 ["FontSize"]
  SETTABLEKS R8 R7 K5 ["fontStyle"]
  CALL R6 1 1
  GETUPVAL R7 3
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K3 ["new"]
  DUPTABLE R9 K19 [{"Text", "fontStyle", "SplitBy"}]
  LOADK R10 K20 ["Very long text Very long textVery long textVery long textVery long textVery long textVery long textVery long textVery long textVery long text "]
  SETTABLEKS R10 R9 K4 ["Text"]
  DUPTABLE R10 K10 [{"Font", "FontSize"}]
  GETIMPORT R11 K13 [Enum.Font.BuilderSans]
  SETTABLEKS R11 R10 K8 ["Font"]
  LOADN R11 18
  SETTABLEKS R11 R10 K9 ["FontSize"]
  SETTABLEKS R10 R9 K5 ["fontStyle"]
  GETUPVAL R11 5
  GETTABLEKS R10 R11 K21 ["Symbol"]
  SETTABLEKS R10 R9 K18 ["SplitBy"]
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
  GETIMPORT R2 K1 [script]
  LOADK R4 K6 ["InlineLayout"]
  NAMECALL R2 R2 K3 ["FindFirstAncestor"]
  CALL R2 2 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R4 R1 K9 ["React"]
  CALL R3 1 1
  GETIMPORT R4 K8 [require]
  GETTABLEKS R5 R2 K10 ["TextElement"]
  CALL R4 1 1
  GETIMPORT R5 K8 [require]
  GETTABLEKS R6 R2 K11 ["LinkElement"]
  CALL R5 1 1
  GETIMPORT R6 K8 [require]
  GETTABLEKS R7 R2 K12 ["ImageElement"]
  CALL R6 1 1
  GETIMPORT R7 K8 [require]
  GETTABLEKS R8 R2 K13 ["HardBreakElement"]
  CALL R7 1 1
  GETIMPORT R8 K8 [require]
  GETTABLEKS R10 R0 K14 ["Utils"]
  GETTABLEKS R9 R10 K15 ["TextSplitByEnum"]
  CALL R8 1 1
  GETIMPORT R9 K8 [require]
  GETTABLEKS R11 R0 K2 ["Components"]
  GETTABLEKS R10 R11 K6 ["InlineLayout"]
  CALL R9 1 1
  DUPTABLE R10 K19 [{"summary", "controls", "stories"}]
  LOADK R11 K20 ["A component that lays out inline elements such as text, links, and images."]
  SETTABLEKS R11 R10 K16 ["summary"]
  DUPTABLE R11 K23 [{"splitBy", "text"}]
  NEWTABLE R12 0 2
  GETTABLEKS R13 R8 K24 ["Word"]
  GETTABLEKS R14 R8 K25 ["Symbol"]
  SETLIST R12 R13 2 [1]
  SETTABLEKS R12 R11 K21 ["splitBy"]
  LOADK R12 K26 ["Any text you want"]
  SETTABLEKS R12 R11 K22 ["text"]
  SETTABLEKS R11 R10 K17 ["controls"]
  NEWTABLE R11 0 9
  DUPTABLE R12 K29 [{"name", "summary", "story"}]
  LOADK R13 K30 ["CustomText"]
  SETTABLEKS R13 R12 K27 ["name"]
  LOADK R13 K31 ["Type a custom text and choice split mode."]
  SETTABLEKS R13 R12 K16 ["summary"]
  DUPCLOSURE R13 K32 [PROTO_0]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLEKS R13 R12 K28 ["story"]
  DUPTABLE R13 K29 [{"name", "summary", "story"}]
  LOADK R14 K33 ["Default"]
  SETTABLEKS R14 R13 K27 ["name"]
  LOADK R14 K34 ["InlineLayout can render a single TextElement with a long English text"]
  SETTABLEKS R14 R13 K16 ["summary"]
  DUPCLOSURE R14 K35 [PROTO_1]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLEKS R14 R13 K28 ["story"]
  DUPTABLE R14 K29 [{"name", "summary", "story"}]
  LOADK R15 K36 ["DefaultUTF8"]
  SETTABLEKS R15 R14 K27 ["name"]
  LOADK R15 K37 ["InlineLayout can render a single TextElement with a long UTF-8 (Cyrillic and combining marks)"]
  SETTABLEKS R15 R14 K16 ["summary"]
  DUPCLOSURE R15 K38 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLEKS R15 R14 K28 ["story"]
  DUPTABLE R15 K29 [{"name", "summary", "story"}]
  LOADK R16 K39 ["SeveralTextElements"]
  SETTABLEKS R16 R15 K27 ["name"]
  LOADK R16 K40 ["InlineLayout can render a multiple TextElements in different languages."]
  SETTABLEKS R16 R15 K16 ["summary"]
  DUPCLOSURE R16 K41 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLEKS R16 R15 K28 ["story"]
  DUPTABLE R16 K29 [{"name", "summary", "story"}]
  LOADK R17 K42 ["WithLinks"]
  SETTABLEKS R17 R16 K27 ["name"]
  LOADK R17 K43 ["InlineLayout can render TextElements and LinkElements mixed together, including Chinese characters with symbol-based splitting."]
  SETTABLEKS R17 R16 K16 ["summary"]
  DUPCLOSURE R17 K44 [PROTO_5]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R8
  SETTABLEKS R17 R16 K28 ["story"]
  DUPTABLE R17 K29 [{"name", "summary", "story"}]
  LOADK R18 K45 ["WithRichText"]
  SETTABLEKS R18 R17 K27 ["name"]
  LOADK R18 K46 ["InlineLayout can render TextElements and LinkElements with different font styles (bold, italic) and text effects (strikethrough)."]
  SETTABLEKS R18 R17 K16 ["summary"]
  DUPCLOSURE R18 K47 [PROTO_7]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R8
  SETTABLEKS R18 R17 K28 ["story"]
  DUPTABLE R18 K29 [{"name", "summary", "story"}]
  LOADK R19 K48 ["WithImage"]
  SETTABLEKS R19 R18 K27 ["name"]
  LOADK R19 K49 ["InlineLayout can render Images with TextElements, LinkElements"]
  SETTABLEKS R19 R18 K16 ["summary"]
  DUPCLOSURE R19 K50 [PROTO_9]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R5
  CAPTURE VAL R6
  SETTABLEKS R19 R18 K28 ["story"]
  DUPTABLE R19 K29 [{"name", "summary", "story"}]
  LOADK R20 K51 ["WithHardBreak"]
  SETTABLEKS R20 R19 K27 ["name"]
  LOADK R20 K52 ["Elements can be separated by hard breaks to force line breaks in specific places."]
  SETTABLEKS R20 R19 K16 ["summary"]
  DUPCLOSURE R20 K53 [PROTO_11]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  CAPTURE VAL R7
  CAPTURE VAL R5
  CAPTURE VAL R8
  SETTABLEKS R20 R19 K28 ["story"]
  DUPTABLE R20 K29 [{"name", "summary", "story"}]
  LOADK R21 K54 ["LongWord"]
  SETTABLEKS R21 R20 K27 ["name"]
  LOADK R21 K55 ["InlineLayout can render a TextElement with a very long word that cannot be split by word boundaries"]
  SETTABLEKS R21 R20 K16 ["summary"]
  DUPCLOSURE R21 K56 [PROTO_12]
  CAPTURE VAL R3
  CAPTURE VAL R9
  CAPTURE VAL R4
  SETTABLEKS R21 R20 K28 ["story"]
  SETLIST R11 R12 9 [1]
  SETTABLEKS R11 R10 K18 ["stories"]
  RETURN R10 1
