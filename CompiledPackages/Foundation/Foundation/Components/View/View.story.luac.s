PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K0 ["createElement"]
  GETUPVAL R3 2
  DUPTABLE R4 K5 [{"AutomaticSize", "GroupTransparency", "padding", "stroke"}]
  GETIMPORT R5 K8 [Enum.AutomaticSize.XY]
  SETTABLEKS R5 R4 K1 ["AutomaticSize"]
  GETTABLEKS R5 R0 K2 ["GroupTransparency"]
  SETTABLEKS R5 R4 K2 ["GroupTransparency"]
  LOADN R5 10
  SETTABLEKS R5 R4 K3 ["padding"]
  DUPTABLE R5 K12 [{"Color", "Transparency", "Thickness"}]
  GETTABLEKS R9 R1 K9 ["Color"]
  GETTABLEKS R8 R9 K13 ["Stroke"]
  GETTABLEKS R7 R8 K14 ["Emphasis"]
  GETTABLEKS R6 R7 K15 ["Color3"]
  SETTABLEKS R6 R5 K9 ["Color"]
  GETTABLEKS R9 R1 K9 ["Color"]
  GETTABLEKS R8 R9 K13 ["Stroke"]
  GETTABLEKS R7 R8 K14 ["Emphasis"]
  GETTABLEKS R6 R7 K10 ["Transparency"]
  SETTABLEKS R6 R5 K10 ["Transparency"]
  LOADN R6 2
  SETTABLEKS R6 R5 K11 ["Thickness"]
  SETTABLEKS R5 R4 K4 ["stroke"]
  NEWTABLE R5 0 1
  GETUPVAL R7 1
  GETTABLEKS R6 R7 K0 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K19 [{"Size", "backgroundStyle", "tag"}]
  GETIMPORT R9 K22 [UDim2.new]
  LOADN R10 0
  LOADN R11 100
  LOADN R12 0
  LOADN R13 100
  CALL R9 4 1
  SETTABLEKS R9 R8 K16 ["Size"]
  GETTABLEKS R11 R1 K9 ["Color"]
  GETTABLEKS R10 R11 K23 ["Surface"]
  GETTABLEKS R9 R10 K24 ["Surface_200"]
  SETTABLEKS R9 R8 K17 ["backgroundStyle"]
  LOADK R9 K25 ["row align-x-center align-y-center"]
  SETTABLEKS R9 R8 K18 ["tag"]
  NEWTABLE R9 0 1
  GETUPVAL R11 1
  GETTABLEKS R10 R11 K0 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K29 [{"textStyle", "fontStyle", "Text"}]
  GETTABLEKS R15 R1 K9 ["Color"]
  GETTABLEKS R14 R15 K30 ["Content"]
  GETTABLEKS R13 R14 K14 ["Emphasis"]
  SETTABLEKS R13 R12 K26 ["textStyle"]
  DUPTABLE R13 K34 [{"Font", "FontSize", "LineHeight"}]
  GETIMPORT R14 K36 [Enum.Font.BuilderSansMedium]
  SETTABLEKS R14 R13 K31 ["Font"]
  LOADN R14 24
  SETTABLEKS R14 R13 K32 ["FontSize"]
  LOADN R14 1
  SETTABLEKS R14 R13 K33 ["LineHeight"]
  SETTABLEKS R13 R12 K27 ["fontStyle"]
  LOADK R13 K37 ["View"]
  SETTABLEKS R13 R12 K28 ["Text"]
  CALL R10 2 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 -1
  SETLIST R5 R6 -1 [1]
  CALL R2 3 -1
  RETURN R2 -1

PROTO_1:
  GETUPVAL R1 0
  MOVE R2 R0
  CALL R1 1 0
  RETURN R0 0

PROTO_2:
  FASTCALL1 TOSTRING R0 [+3]
  MOVE R2 R0
  GETIMPORT R1 K1 [tostring]
  CALL R1 1 1
  RETURN R1 1

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["useBinding"]
  GETUPVAL R3 1
  GETTABLEKS R2 R3 K1 ["Initialize"]
  CALL R1 1 2
  GETUPVAL R3 2
  CALL R3 0 1
  NEWCLOSURE R4 P0
  CAPTURE VAL R2
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K2 ["createElement"]
  GETUPVAL R6 3
  DUPTABLE R7 K9 [{"Size", "LayoutOrder", "GroupTransparency", "backgroundStyle", "layout", "onStateChanged"}]
  GETIMPORT R8 K12 [UDim2.new]
  LOADN R9 0
  LOADN R10 120
  LOADN R11 0
  LOADN R12 120
  CALL R8 4 1
  SETTABLEKS R8 R7 K3 ["Size"]
  LOADN R8 2
  SETTABLEKS R8 R7 K4 ["LayoutOrder"]
  GETTABLEKS R8 R0 K5 ["GroupTransparency"]
  SETTABLEKS R8 R7 K5 ["GroupTransparency"]
  GETTABLEKS R11 R3 K13 ["Color"]
  GETTABLEKS R10 R11 K14 ["Extended"]
  GETTABLEKS R9 R10 K15 ["Purple"]
  GETTABLEKS R8 R9 K16 ["Purple_500"]
  SETTABLEKS R8 R7 K6 ["backgroundStyle"]
  DUPTABLE R8 K20 [{"FillDirection", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R9 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R9 R8 K17 ["FillDirection"]
  GETIMPORT R9 K25 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R9 R8 K18 ["HorizontalAlignment"]
  GETIMPORT R9 K26 [Enum.VerticalAlignment.Center]
  SETTABLEKS R9 R8 K19 ["VerticalAlignment"]
  SETTABLEKS R8 R7 K7 ["layout"]
  SETTABLEKS R4 R7 K8 ["onStateChanged"]
  NEWTABLE R8 0 1
  GETUPVAL R10 0
  GETTABLEKS R9 R10 K2 ["createElement"]
  GETUPVAL R10 4
  DUPTABLE R11 K29 [{"textStyle", "Text"}]
  GETTABLEKS R14 R3 K13 ["Color"]
  GETTABLEKS R13 R14 K30 ["Content"]
  GETTABLEKS R12 R13 K31 ["Emphasis"]
  SETTABLEKS R12 R11 K27 ["textStyle"]
  DUPCLOSURE R14 K32 [PROTO_2]
  NAMECALL R12 R1 K33 ["map"]
  CALL R12 2 1
  SETTABLEKS R12 R11 K28 ["Text"]
  CALL R9 2 -1
  SETLIST R8 R9 -1 [1]
  CALL R5 3 -1
  RETURN R5 -1

PROTO_4:
  GETTABLEKS R2 R0 K0 ["controls"]
  GETTABLEKS R1 R2 K1 ["transparency"]
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["createElement"]
  GETUPVAL R3 1
  DUPTABLE R4 K4 [{"tag"}]
  LOADK R5 K5 ["auto-xy row gap-large"]
  SETTABLEKS R5 R4 K3 ["tag"]
  DUPTABLE R5 K8 [{"Basic", "GuiState"}]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 2
  DUPTABLE R8 K10 [{"GroupTransparency"}]
  SETTABLEKS R1 R8 K9 ["GroupTransparency"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K6 ["Basic"]
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K2 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K10 [{"GroupTransparency"}]
  SETTABLEKS R1 R8 K9 ["GroupTransparency"]
  CALL R6 2 1
  SETTABLEKS R6 R5 K7 ["GuiState"]
  CALL R2 3 -1
  RETURN R2 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R5 R0 K8 ["Components"]
  GETTABLEKS R4 R5 K9 ["View"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["Text"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K11 ["Enums"]
  GETTABLEKS R6 R7 K12 ["ControlState"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K13 ["Providers"]
  GETTABLEKS R8 R9 K14 ["Style"]
  GETTABLEKS R7 R8 K15 ["useTokens"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  DUPCLOSURE R8 K17 [PROTO_3]
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R4
  DUPTABLE R9 K21 [{"summary", "stories", "controls"}]
  LOADK R10 K9 ["View"]
  SETTABLEKS R10 R9 K18 ["summary"]
  DUPTABLE R10 K23 [{"Basic"}]
  DUPTABLE R11 K26 [{"name", "story"}]
  LOADK R12 K27 ["Basic Use"]
  SETTABLEKS R12 R11 K24 ["name"]
  DUPCLOSURE R12 K28 [PROTO_4]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R7
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K25 ["story"]
  SETTABLEKS R11 R10 K22 ["Basic"]
  SETTABLEKS R10 R9 K19 ["stories"]
  DUPTABLE R10 K30 [{"transparency"}]
  NEWTABLE R11 0 3
  LOADN R12 0
  LOADK R13 K31 [0.25]
  LOADK R14 K32 [0.75]
  SETLIST R11 R12 3 [1]
  SETTABLEKS R11 R10 K29 ["transparency"]
  SETTABLEKS R10 R9 K20 ["controls"]
  RETURN R9 1
