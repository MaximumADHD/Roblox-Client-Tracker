PROTO_0:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R2 0
  CALL R2 0 1
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K1 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K3 [{"tag"}]
  LOADK R6 K4 ["row gap-large auto-xy"]
  SETTABLEKS R6 R5 K2 ["tag"]
  DUPTABLE R6 K7 [{"Vertical", "Horizontal"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K12 [{"Size", "layout", "selection", "scroll"}]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 0
  LOADN R12 120
  LOADN R13 0
  LOADN R14 120
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Size"]
  DUPTABLE R10 K17 [{"FillDirection"}]
  GETIMPORT R11 K19 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K16 ["FillDirection"]
  SETTABLEKS R10 R9 K9 ["layout"]
  DUPTABLE R10 K21 [{"Selectable"}]
  GETTABLEKS R11 R1 K22 ["selectable"]
  SETTABLEKS R11 R10 K20 ["Selectable"]
  SETTABLEKS R10 R9 K10 ["selection"]
  DUPTABLE R10 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
  GETIMPORT R11 K30 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K23 ["AutomaticCanvasSize"]
  GETIMPORT R11 K32 [UDim2.fromOffset]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["CanvasSize"]
  GETIMPORT R11 K33 [Enum.ScrollingDirection.Y]
  SETTABLEKS R11 R10 K25 ["ScrollingDirection"]
  GETTABLEKS R11 R1 K26 ["scrollBarVisibility"]
  SETTABLEKS R11 R10 K26 ["scrollBarVisibility"]
  SETTABLEKS R10 R9 K11 ["scroll"]
  NEWTABLE R10 0 2
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K35 [{"Size", "backgroundStyle"}]
  GETIMPORT R14 K32 [UDim2.fromOffset]
  LOADN R15 120
  LOADN R16 75
  CALL R14 2 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETTABLEKS R17 R2 K36 ["Color"]
  GETTABLEKS R16 R17 K37 ["Extended"]
  GETTABLEKS R15 R16 K38 ["Turquoise"]
  GETTABLEKS R14 R15 K39 ["Turquoise_500"]
  SETTABLEKS R14 R13 K34 ["backgroundStyle"]
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K35 [{"Size", "backgroundStyle"}]
  GETIMPORT R15 K32 [UDim2.fromOffset]
  LOADN R16 120
  LOADN R17 75
  CALL R15 2 1
  SETTABLEKS R15 R14 K8 ["Size"]
  GETTABLEKS R18 R2 K36 ["Color"]
  GETTABLEKS R17 R18 K37 ["Extended"]
  GETTABLEKS R16 R17 K40 ["Magenta"]
  GETTABLEKS R15 R16 K41 ["Magenta_500"]
  SETTABLEKS R15 R14 K34 ["backgroundStyle"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["Vertical"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K12 [{"Size", "layout", "selection", "scroll"}]
  GETIMPORT R10 K15 [UDim2.new]
  LOADN R11 0
  LOADN R12 120
  LOADN R13 0
  LOADN R14 120
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Size"]
  DUPTABLE R10 K17 [{"FillDirection"}]
  GETIMPORT R11 K42 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K16 ["FillDirection"]
  SETTABLEKS R10 R9 K9 ["layout"]
  DUPTABLE R10 K21 [{"Selectable"}]
  GETTABLEKS R11 R1 K22 ["selectable"]
  SETTABLEKS R11 R10 K20 ["Selectable"]
  SETTABLEKS R10 R9 K10 ["selection"]
  DUPTABLE R10 K27 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
  GETIMPORT R11 K44 [Enum.AutomaticSize.X]
  SETTABLEKS R11 R10 K23 ["AutomaticCanvasSize"]
  GETIMPORT R11 K32 [UDim2.fromOffset]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K24 ["CanvasSize"]
  GETIMPORT R11 K45 [Enum.ScrollingDirection.X]
  SETTABLEKS R11 R10 K25 ["ScrollingDirection"]
  GETTABLEKS R11 R1 K26 ["scrollBarVisibility"]
  SETTABLEKS R11 R10 K26 ["scrollBarVisibility"]
  SETTABLEKS R10 R9 K11 ["scroll"]
  NEWTABLE R10 0 2
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K35 [{"Size", "backgroundStyle"}]
  GETIMPORT R14 K32 [UDim2.fromOffset]
  LOADN R15 120
  LOADN R16 75
  CALL R14 2 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETTABLEKS R17 R2 K36 ["Color"]
  GETTABLEKS R16 R17 K37 ["Extended"]
  GETTABLEKS R15 R16 K38 ["Turquoise"]
  GETTABLEKS R14 R15 K39 ["Turquoise_500"]
  SETTABLEKS R14 R13 K34 ["backgroundStyle"]
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K35 [{"Size", "backgroundStyle"}]
  GETIMPORT R15 K32 [UDim2.fromOffset]
  LOADN R16 120
  LOADN R17 75
  CALL R15 2 1
  SETTABLEKS R15 R14 K8 ["Size"]
  GETTABLEKS R18 R2 K36 ["Color"]
  GETTABLEKS R17 R18 K37 ["Extended"]
  GETTABLEKS R16 R17 K40 ["Magenta"]
  GETTABLEKS R15 R16 K41 ["Magenta_500"]
  SETTABLEKS R15 R14 K34 ["backgroundStyle"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  SETTABLEKS R7 R6 K6 ["Horizontal"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["controls"]
  NEWTABLE R2 0 0
  LOADN R5 1
  LOADN R3 10
  LOADN R4 1
  FORNPREP R3
  LOADK R7 K1 ["Item%*"]
  MOVE R9 R5
  NAMECALL R7 R7 K2 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K7 [{"tag", "Text", "LayoutOrder"}]
  LOADK R10 K8 ["bg-shift-100 radius-medium size-3000-2000 content-muted"]
  SETTABLEKS R10 R9 K4 ["tag"]
  LOADK R11 K9 ["Item %*"]
  MOVE R13 R5
  NAMECALL R11 R11 K2 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K5 ["Text"]
  SETTABLEKS R5 R9 K6 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLE R7 R2 R6
  FORNLOOP R3
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 2
  DUPTABLE R5 K10 [{"tag"}]
  LOADK R6 K11 ["col gap-large auto-y size-full-0"]
  SETTABLEKS R6 R5 K4 ["tag"]
  DUPTABLE R6 K14 [{"ScrollView", "TagInfo"}]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K17 [{"tag", "selection", "scroll", "LayoutOrder"}]
  LOADK R10 K18 ["row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000"]
  SETTABLEKS R10 R9 K4 ["tag"]
  DUPTABLE R10 K20 [{"Selectable"}]
  GETTABLEKS R11 R1 K21 ["selectable"]
  SETTABLEKS R11 R10 K19 ["Selectable"]
  SETTABLEKS R10 R9 K15 ["selection"]
  DUPTABLE R10 K25 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
  GETIMPORT R11 K29 [Enum.AutomaticSize.X]
  SETTABLEKS R11 R10 K22 ["AutomaticCanvasSize"]
  GETIMPORT R11 K32 [UDim2.fromScale]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K23 ["CanvasSize"]
  GETIMPORT R11 K33 [Enum.ScrollingDirection.X]
  SETTABLEKS R11 R10 K24 ["ScrollingDirection"]
  SETTABLEKS R10 R9 K16 ["scroll"]
  LOADN R10 1
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  MOVE R10 R2
  CALL R7 3 1
  SETTABLEKS R7 R6 K12 ["ScrollView"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 1
  DUPTABLE R9 K7 [{"tag", "Text", "LayoutOrder"}]
  LOADK R10 K34 ["text-label-small content-default size-full-200"]
  SETTABLEKS R10 R9 K4 ["tag"]
  LOADK R10 K35 ["tag = row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000"]
  SETTABLEKS R10 R9 K5 ["Text"]
  LOADN R10 2
  SETTABLEKS R10 R9 K6 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["TagInfo"]
  CALL R3 3 -1
  RETURN R3 -1

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
  GETTABLEKS R4 R5 K9 ["Text"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["View"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R7 R0 K8 ["Components"]
  GETTABLEKS R6 R7 K11 ["ScrollView"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R9 R0 K12 ["Providers"]
  GETTABLEKS R8 R9 K13 ["Style"]
  GETTABLEKS R7 R8 K14 ["useTokens"]
  CALL R6 1 1
  GETIMPORT R7 K6 [require]
  GETTABLEKS R9 R0 K15 ["Enums"]
  GETTABLEKS R8 R9 K16 ["ControlState"]
  CALL R7 1 1
  DUPCLOSURE R8 K17 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPCLOSURE R9 K18 [PROTO_1]
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPTABLE R10 K22 [{"summary", "stories", "controls"}]
  LOADK R11 K11 ["ScrollView"]
  SETTABLEKS R11 R10 K19 ["summary"]
  DUPTABLE R11 K25 [{"Scrolling", "Tags"}]
  DUPTABLE R12 K28 [{"name", "story"}]
  LOADK R13 K29 ["Horizontal and Vertical scrolling"]
  SETTABLEKS R13 R12 K26 ["name"]
  SETTABLEKS R8 R12 K27 ["story"]
  SETTABLEKS R12 R11 K23 ["Scrolling"]
  DUPTABLE R12 K28 [{"name", "story"}]
  LOADK R13 K30 ["ScrollView with tags"]
  SETTABLEKS R13 R12 K26 ["name"]
  SETTABLEKS R9 R12 K27 ["story"]
  SETTABLEKS R12 R11 K24 ["Tags"]
  SETTABLEKS R11 R10 K20 ["stories"]
  DUPTABLE R11 K33 [{"scrollBarVisibility", "selectable"}]
  NEWTABLE R12 0 3
  LOADK R13 K34 ["Auto"]
  LOADK R14 K35 ["Always"]
  LOADK R15 K36 ["None"]
  SETLIST R12 R13 3 [1]
  SETTABLEKS R12 R11 K31 ["scrollBarVisibility"]
  LOADB R12 1
  SETTABLEKS R12 R11 K32 ["selectable"]
  SETTABLEKS R11 R10 K21 ["controls"]
  RETURN R10 1
