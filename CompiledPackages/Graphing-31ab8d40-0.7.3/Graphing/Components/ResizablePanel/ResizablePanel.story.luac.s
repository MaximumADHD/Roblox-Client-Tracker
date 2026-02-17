PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useState"]
  GETIMPORT R2 K3 [Rect.new]
  LOADN R3 0
  LOADN R4 0
  LOADN R5 10
  LOADN R6 10
  CALL R2 4 -1
  CALL R1 -1 2
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K0 ["useState"]
  GETIMPORT R4 K3 [Rect.new]
  LOADN R5 1
  LOADN R6 1
  LOADN R7 3
  LOADN R8 3
  CALL R4 4 -1
  CALL R3 -1 2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K0 ["useState"]
  GETIMPORT R6 K3 [Rect.new]
  LOADN R7 7
  LOADN R8 7
  LOADN R9 9
  LOADN R10 9
  CALL R6 4 -1
  CALL R5 -1 2
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K7 [{"GraphRect", "children"}]
  SETTABLEKS R1 R9 K5 ["GraphRect"]
  DUPTABLE R10 K11 [{"Grid", "Panel", "Panel2"}]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K14 [{"XAxis", "YAxis"}]
  DUPTABLE R14 K17 [{"Type", "Unit"}]
  LOADK R15 K18 ["Uniform"]
  SETTABLEKS R15 R14 K15 ["Type"]
  LOADK R15 K19 [0.5]
  SETTABLEKS R15 R14 K16 ["Unit"]
  SETTABLEKS R14 R13 K12 ["XAxis"]
  DUPTABLE R14 K17 [{"Type", "Unit"}]
  LOADK R15 K18 ["Uniform"]
  SETTABLEKS R15 R14 K15 ["Type"]
  LOADN R15 1
  SETTABLEKS R15 R14 K16 ["Unit"]
  SETTABLEKS R14 R13 K13 ["YAxis"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K8 ["Grid"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K30 [{"Rect", "SetRect", "MinSize", "DragEnabled", "CornerBottomRightEnabled", "EdgeRightEnabled", "EdgeBottomEnabled", "XSnap", "YSnap", "BackgroundTransparency", "ZIndex"}]
  SETTABLEKS R3 R13 K1 ["Rect"]
  SETTABLEKS R4 R13 K20 ["SetRect"]
  GETIMPORT R14 K32 [Vector2.new]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K21 ["MinSize"]
  LOADB R14 1
  SETTABLEKS R14 R13 K22 ["DragEnabled"]
  LOADB R14 1
  SETTABLEKS R14 R13 K23 ["CornerBottomRightEnabled"]
  LOADB R14 1
  SETTABLEKS R14 R13 K24 ["EdgeRightEnabled"]
  LOADB R14 1
  SETTABLEKS R14 R13 K25 ["EdgeBottomEnabled"]
  LOADK R14 K33 [0.125]
  SETTABLEKS R14 R13 K26 ["XSnap"]
  LOADK R14 K34 [0.25]
  SETTABLEKS R14 R13 K27 ["YSnap"]
  LOADN R14 0
  SETTABLEKS R14 R13 K28 ["BackgroundTransparency"]
  LOADN R14 2
  SETTABLEKS R14 R13 K29 ["ZIndex"]
  DUPTABLE R14 K36 [{"Text"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["createElement"]
  LOADK R16 K37 ["TextLabel"]
  DUPTABLE R17 K42 [{"BackgroundTransparency", "BorderSizePixel", "Size", "Text", "TextColor3", "TextWrapped", "ZIndex"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K28 ["BackgroundTransparency"]
  LOADN R18 0
  SETTABLEKS R18 R17 K38 ["BorderSizePixel"]
  GETIMPORT R18 K45 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K39 ["Size"]
  LOADK R18 K46 ["this panel can be resized from the right or the bottom"]
  SETTABLEKS R18 R17 K35 ["Text"]
  GETIMPORT R18 K48 [Color3.new]
  LOADN R19 1
  LOADN R20 1
  LOADN R21 1
  CALL R18 3 1
  SETTABLEKS R18 R17 K40 ["TextColor3"]
  LOADB R18 1
  SETTABLEKS R18 R17 K41 ["TextWrapped"]
  LOADN R18 255
  SETTABLEKS R18 R17 K29 ["ZIndex"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K35 ["Text"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K9 ["Panel"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K53 [{"Rect", "SetRect", "MinSize", "DragEnabled", "CornerTopLeftEnabled", "EdgeLeftEnabled", "EdgeTopEnabled", "XSnap", "YSnap", "BackgroundTransparency", "BackgroundColor3", "ZIndex"}]
  SETTABLEKS R5 R13 K1 ["Rect"]
  SETTABLEKS R6 R13 K20 ["SetRect"]
  GETIMPORT R14 K32 [Vector2.new]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K21 ["MinSize"]
  LOADB R14 1
  SETTABLEKS R14 R13 K22 ["DragEnabled"]
  LOADB R14 1
  SETTABLEKS R14 R13 K49 ["CornerTopLeftEnabled"]
  LOADB R14 1
  SETTABLEKS R14 R13 K50 ["EdgeLeftEnabled"]
  LOADB R14 1
  SETTABLEKS R14 R13 K51 ["EdgeTopEnabled"]
  LOADK R14 K33 [0.125]
  SETTABLEKS R14 R13 K26 ["XSnap"]
  LOADK R14 K34 [0.25]
  SETTABLEKS R14 R13 K27 ["YSnap"]
  LOADN R14 0
  SETTABLEKS R14 R13 K28 ["BackgroundTransparency"]
  GETIMPORT R14 K48 [Color3.new]
  LOADK R15 K54 [0.4]
  LOADK R16 K55 [0.8]
  LOADK R17 K54 [0.4]
  CALL R14 3 1
  SETTABLEKS R14 R13 K52 ["BackgroundColor3"]
  LOADN R14 1
  SETTABLEKS R14 R13 K29 ["ZIndex"]
  DUPTABLE R14 K36 [{"Text"}]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K4 ["createElement"]
  LOADK R16 K37 ["TextLabel"]
  DUPTABLE R17 K42 [{"BackgroundTransparency", "BorderSizePixel", "Size", "Text", "TextColor3", "TextWrapped", "ZIndex"}]
  LOADN R18 1
  SETTABLEKS R18 R17 K28 ["BackgroundTransparency"]
  LOADN R18 0
  SETTABLEKS R18 R17 K38 ["BorderSizePixel"]
  GETIMPORT R18 K45 [UDim2.fromScale]
  LOADN R19 1
  LOADN R20 1
  CALL R18 2 1
  SETTABLEKS R18 R17 K39 ["Size"]
  LOADK R18 K56 ["this panel can be resized from the left or the top"]
  SETTABLEKS R18 R17 K35 ["Text"]
  GETIMPORT R18 K48 [Color3.new]
  LOADN R19 0
  LOADN R20 0
  LOADN R21 0
  CALL R18 3 1
  SETTABLEKS R18 R17 K40 ["TextColor3"]
  LOADB R18 1
  SETTABLEKS R18 R17 K41 ["TextWrapped"]
  LOADN R18 255
  SETTABLEKS R18 R17 K29 ["ZIndex"]
  CALL R15 2 1
  SETTABLEKS R15 R14 K35 ["Text"]
  CALL R11 3 1
  SETTABLEKS R11 R10 K10 ["Panel2"]
  SETTABLEKS R10 R9 K6 ["children"]
  CALL R7 2 -1
  RETURN R7 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Graphing"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["Canvas"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Grid"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K11 ["ResizablePanel"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R7 R0 K12 ["Types"]
  CALL R6 1 1
  DUPCLOSURE R7 K13 [PROTO_0]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPTABLE R8 K17 [{"summary", "story", "controls"}]
  LOADK R9 K18 ["Example with two moveable, resizable panels with handles on different sides."]
  SETTABLEKS R9 R8 K14 ["summary"]
  SETTABLEKS R7 R8 K15 ["story"]
  NEWTABLE R9 0 0
  SETTABLEKS R9 R8 K16 ["controls"]
  RETURN R8 1
