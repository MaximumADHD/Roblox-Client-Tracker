PROTO_0:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R2 0
  CALL R2 0 1
  GETUPVAL R3 1
  GETTABLEKS R4 R1 K1 ["fixScrollViewTags"]
  SETTABLEKS R4 R3 K2 ["FoundationFixScrollViewTags"]
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["createElement"]
  GETUPVAL R4 3
  DUPTABLE R5 K5 [{"tag"}]
  LOADK R6 K6 ["row gap-large auto-xy"]
  SETTABLEKS R6 R5 K4 ["tag"]
  DUPTABLE R6 K9 [{"Vertical", "Horizontal"}]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K13 [{"Size", "layout", "scroll"}]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 0
  LOADN R12 120
  LOADN R13 0
  LOADN R14 120
  CALL R10 4 1
  SETTABLEKS R10 R9 K10 ["Size"]
  DUPTABLE R10 K18 [{"FillDirection"}]
  GETIMPORT R11 K20 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K17 ["FillDirection"]
  SETTABLEKS R10 R9 K11 ["layout"]
  DUPTABLE R10 K25 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
  GETIMPORT R11 K28 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K21 ["AutomaticCanvasSize"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["CanvasSize"]
  GETIMPORT R11 K31 [Enum.ScrollingDirection.Y]
  SETTABLEKS R11 R10 K23 ["ScrollingDirection"]
  GETTABLEKS R11 R1 K24 ["scrollBarVisibility"]
  SETTABLEKS R11 R10 K24 ["scrollBarVisibility"]
  SETTABLEKS R10 R9 K12 ["scroll"]
  NEWTABLE R10 0 2
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K33 [{"Size", "backgroundStyle"}]
  GETIMPORT R14 K30 [UDim2.fromOffset]
  LOADN R15 120
  LOADN R16 75
  CALL R14 2 1
  SETTABLEKS R14 R13 K10 ["Size"]
  GETTABLEKS R17 R2 K34 ["Color"]
  GETTABLEKS R16 R17 K35 ["Extended"]
  GETTABLEKS R15 R16 K36 ["Turquoise"]
  GETTABLEKS R14 R15 K37 ["Turquoise_500"]
  SETTABLEKS R14 R13 K32 ["backgroundStyle"]
  CALL R11 2 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K33 [{"Size", "backgroundStyle"}]
  GETIMPORT R15 K30 [UDim2.fromOffset]
  LOADN R16 120
  LOADN R17 75
  CALL R15 2 1
  SETTABLEKS R15 R14 K10 ["Size"]
  GETTABLEKS R18 R2 K34 ["Color"]
  GETTABLEKS R17 R18 K35 ["Extended"]
  GETTABLEKS R16 R17 K38 ["Magenta"]
  GETTABLEKS R15 R16 K39 ["Magenta_500"]
  SETTABLEKS R15 R14 K32 ["backgroundStyle"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  SETTABLEKS R7 R6 K7 ["Vertical"]
  GETUPVAL R8 2
  GETTABLEKS R7 R8 K3 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K13 [{"Size", "layout", "scroll"}]
  GETIMPORT R10 K16 [UDim2.new]
  LOADN R11 0
  LOADN R12 120
  LOADN R13 0
  LOADN R14 120
  CALL R10 4 1
  SETTABLEKS R10 R9 K10 ["Size"]
  DUPTABLE R10 K18 [{"FillDirection"}]
  GETIMPORT R11 K40 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K17 ["FillDirection"]
  SETTABLEKS R10 R9 K11 ["layout"]
  DUPTABLE R10 K25 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
  GETIMPORT R11 K42 [Enum.AutomaticSize.X]
  SETTABLEKS R11 R10 K21 ["AutomaticCanvasSize"]
  GETIMPORT R11 K30 [UDim2.fromOffset]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K22 ["CanvasSize"]
  GETIMPORT R11 K43 [Enum.ScrollingDirection.X]
  SETTABLEKS R11 R10 K23 ["ScrollingDirection"]
  GETTABLEKS R11 R1 K24 ["scrollBarVisibility"]
  SETTABLEKS R11 R10 K24 ["scrollBarVisibility"]
  SETTABLEKS R10 R9 K12 ["scroll"]
  NEWTABLE R10 0 2
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K3 ["createElement"]
  GETUPVAL R12 3
  DUPTABLE R13 K33 [{"Size", "backgroundStyle"}]
  GETIMPORT R14 K30 [UDim2.fromOffset]
  LOADN R15 120
  LOADN R16 75
  CALL R14 2 1
  SETTABLEKS R14 R13 K10 ["Size"]
  GETTABLEKS R17 R2 K34 ["Color"]
  GETTABLEKS R16 R17 K35 ["Extended"]
  GETTABLEKS R15 R16 K36 ["Turquoise"]
  GETTABLEKS R14 R15 K37 ["Turquoise_500"]
  SETTABLEKS R14 R13 K32 ["backgroundStyle"]
  CALL R11 2 1
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K3 ["createElement"]
  GETUPVAL R13 3
  DUPTABLE R14 K33 [{"Size", "backgroundStyle"}]
  GETIMPORT R15 K30 [UDim2.fromOffset]
  LOADN R16 120
  LOADN R17 75
  CALL R15 2 1
  SETTABLEKS R15 R14 K10 ["Size"]
  GETTABLEKS R18 R2 K34 ["Color"]
  GETTABLEKS R17 R18 K35 ["Extended"]
  GETTABLEKS R16 R17 K38 ["Magenta"]
  GETTABLEKS R15 R16 K39 ["Magenta_500"]
  SETTABLEKS R15 R14 K32 ["backgroundStyle"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  SETTABLEKS R7 R6 K8 ["Horizontal"]
  CALL R3 3 -1
  RETURN R3 -1

PROTO_1:
  GETTABLEKS R1 R0 K0 ["controls"]
  GETUPVAL R2 0
  GETTABLEKS R3 R1 K1 ["fixScrollViewTags"]
  SETTABLEKS R3 R2 K2 ["FoundationFixScrollViewTags"]
  NEWTABLE R2 0 0
  LOADN R5 1
  LOADN R3 10
  LOADN R4 1
  FORNPREP R3
  LOADK R7 K3 ["Item%*"]
  MOVE R9 R5
  NAMECALL R7 R7 K4 ["format"]
  CALL R7 2 1
  MOVE R6 R7
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K9 [{"tag", "Text", "LayoutOrder"}]
  LOADK R10 K10 ["bg-shift-100 radius-medium size-3000-2000 content-muted"]
  SETTABLEKS R10 R9 K6 ["tag"]
  LOADK R11 K11 ["Item %*"]
  MOVE R13 R5
  NAMECALL R11 R11 K4 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K7 ["Text"]
  SETTABLEKS R5 R9 K8 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLE R7 R2 R6
  FORNLOOP R3
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K5 ["createElement"]
  GETUPVAL R4 3
  DUPTABLE R5 K12 [{"tag"}]
  LOADK R6 K13 ["col gap-large auto-y size-full-0"]
  SETTABLEKS R6 R5 K6 ["tag"]
  DUPTABLE R6 K16 [{"ScrollView1", "TagInfo"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 4
  DUPTABLE R9 K18 [{"tag", "scroll", "LayoutOrder"}]
  LOADK R10 K19 ["row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000"]
  SETTABLEKS R10 R9 K6 ["tag"]
  DUPTABLE R10 K23 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection"}]
  GETIMPORT R11 K27 [Enum.AutomaticSize.X]
  SETTABLEKS R11 R10 K20 ["AutomaticCanvasSize"]
  GETIMPORT R11 K30 [UDim2.fromScale]
  LOADN R12 0
  LOADN R13 1
  CALL R11 2 1
  SETTABLEKS R11 R10 K21 ["CanvasSize"]
  GETIMPORT R11 K31 [Enum.ScrollingDirection.X]
  SETTABLEKS R11 R10 K22 ["ScrollingDirection"]
  SETTABLEKS R10 R9 K17 ["scroll"]
  LOADN R10 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  MOVE R10 R2
  CALL R7 3 1
  SETTABLEKS R7 R6 K14 ["ScrollView1"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K5 ["createElement"]
  GETUPVAL R8 2
  DUPTABLE R9 K9 [{"tag", "Text", "LayoutOrder"}]
  LOADK R10 K32 ["text-label-small content-default size-full-200"]
  SETTABLEKS R10 R9 K6 ["tag"]
  LOADK R11 K33 ["tag = %*"]
  LOADK R13 K19 ["row gap-medium bg-surface-100 padding-medium radius-medium size-full-3000"]
  NAMECALL R11 R11 K4 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K7 ["Text"]
  LOADN R10 2
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K15 ["TagInfo"]
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
  GETIMPORT R8 K6 [require]
  GETTABLEKS R10 R0 K17 ["Utility"]
  GETTABLEKS R9 R10 K18 ["Flags"]
  CALL R8 1 1
  DUPCLOSURE R9 K19 [PROTO_0]
  CAPTURE VAL R6
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPCLOSURE R10 K20 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  CAPTURE VAL R5
  DUPTABLE R11 K24 [{"summary", "stories", "controls"}]
  LOADK R12 K11 ["ScrollView"]
  SETTABLEKS R12 R11 K21 ["summary"]
  DUPTABLE R12 K27 [{"Scrolling", "Tags"}]
  DUPTABLE R13 K30 [{"name", "story"}]
  LOADK R14 K31 ["Horizontal and Vertical scrolling"]
  SETTABLEKS R14 R13 K28 ["name"]
  SETTABLEKS R9 R13 K29 ["story"]
  SETTABLEKS R13 R12 K25 ["Scrolling"]
  DUPTABLE R13 K30 [{"name", "story"}]
  LOADK R14 K32 ["ScrollView with tags"]
  SETTABLEKS R14 R13 K28 ["name"]
  SETTABLEKS R10 R13 K29 ["story"]
  SETTABLEKS R13 R12 K26 ["Tags"]
  SETTABLEKS R12 R11 K22 ["stories"]
  DUPTABLE R12 K35 [{"scrollBarVisibility", "fixScrollViewTags"}]
  NEWTABLE R13 0 3
  LOADK R14 K36 ["Auto"]
  LOADK R15 K37 ["Always"]
  LOADK R16 K38 ["None"]
  SETLIST R13 R14 3 [1]
  SETTABLEKS R13 R12 K33 ["scrollBarVisibility"]
  GETTABLEKS R13 R8 K39 ["FoundationFixScrollViewTags"]
  SETTABLEKS R13 R12 K34 ["fixScrollViewTags"]
  SETTABLEKS R12 R11 K23 ["controls"]
  RETURN R11 1
