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
  DUPTABLE R9 K11 [{"Size", "layout", "scroll"}]
  GETIMPORT R10 K14 [UDim2.new]
  LOADN R11 0
  LOADN R12 120
  LOADN R13 0
  LOADN R14 120
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Size"]
  DUPTABLE R10 K16 [{"FillDirection"}]
  GETIMPORT R11 K18 [Enum.FillDirection.Vertical]
  SETTABLEKS R11 R10 K15 ["FillDirection"]
  SETTABLEKS R10 R9 K9 ["layout"]
  DUPTABLE R10 K23 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
  GETIMPORT R11 K26 [Enum.AutomaticSize.Y]
  SETTABLEKS R11 R10 K19 ["AutomaticCanvasSize"]
  GETIMPORT R11 K28 [UDim2.fromOffset]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["CanvasSize"]
  GETIMPORT R11 K29 [Enum.ScrollingDirection.Y]
  SETTABLEKS R11 R10 K21 ["ScrollingDirection"]
  GETTABLEKS R11 R1 K22 ["scrollBarVisibility"]
  SETTABLEKS R11 R10 K22 ["scrollBarVisibility"]
  SETTABLEKS R10 R9 K10 ["scroll"]
  NEWTABLE R10 0 2
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K31 [{"Size", "backgroundStyle"}]
  GETIMPORT R14 K28 [UDim2.fromOffset]
  LOADN R15 120
  LOADN R16 75
  CALL R14 2 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETTABLEKS R17 R2 K32 ["Color"]
  GETTABLEKS R16 R17 K33 ["Extended"]
  GETTABLEKS R15 R16 K34 ["Turquoise"]
  GETTABLEKS R14 R15 K35 ["Turquoise_500"]
  SETTABLEKS R14 R13 K30 ["backgroundStyle"]
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K31 [{"Size", "backgroundStyle"}]
  GETIMPORT R15 K28 [UDim2.fromOffset]
  LOADN R16 120
  LOADN R17 75
  CALL R15 2 1
  SETTABLEKS R15 R14 K8 ["Size"]
  GETTABLEKS R18 R2 K32 ["Color"]
  GETTABLEKS R17 R18 K33 ["Extended"]
  GETTABLEKS R16 R17 K36 ["Magenta"]
  GETTABLEKS R15 R16 K37 ["Magenta_500"]
  SETTABLEKS R15 R14 K30 ["backgroundStyle"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  SETTABLEKS R7 R6 K5 ["Vertical"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K1 ["createElement"]
  GETUPVAL R8 3
  DUPTABLE R9 K11 [{"Size", "layout", "scroll"}]
  GETIMPORT R10 K14 [UDim2.new]
  LOADN R11 0
  LOADN R12 120
  LOADN R13 0
  LOADN R14 120
  CALL R10 4 1
  SETTABLEKS R10 R9 K8 ["Size"]
  DUPTABLE R10 K16 [{"FillDirection"}]
  GETIMPORT R11 K38 [Enum.FillDirection.Horizontal]
  SETTABLEKS R11 R10 K15 ["FillDirection"]
  SETTABLEKS R10 R9 K9 ["layout"]
  DUPTABLE R10 K23 [{"AutomaticCanvasSize", "CanvasSize", "ScrollingDirection", "scrollBarVisibility"}]
  GETIMPORT R11 K40 [Enum.AutomaticSize.X]
  SETTABLEKS R11 R10 K19 ["AutomaticCanvasSize"]
  GETIMPORT R11 K28 [UDim2.fromOffset]
  LOADN R12 0
  LOADN R13 0
  CALL R11 2 1
  SETTABLEKS R11 R10 K20 ["CanvasSize"]
  GETIMPORT R11 K41 [Enum.ScrollingDirection.X]
  SETTABLEKS R11 R10 K21 ["ScrollingDirection"]
  GETTABLEKS R11 R1 K22 ["scrollBarVisibility"]
  SETTABLEKS R11 R10 K22 ["scrollBarVisibility"]
  SETTABLEKS R10 R9 K10 ["scroll"]
  NEWTABLE R10 0 2
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K1 ["createElement"]
  GETUPVAL R12 2
  DUPTABLE R13 K31 [{"Size", "backgroundStyle"}]
  GETIMPORT R14 K28 [UDim2.fromOffset]
  LOADN R15 120
  LOADN R16 75
  CALL R14 2 1
  SETTABLEKS R14 R13 K8 ["Size"]
  GETTABLEKS R17 R2 K32 ["Color"]
  GETTABLEKS R16 R17 K33 ["Extended"]
  GETTABLEKS R15 R16 K34 ["Turquoise"]
  GETTABLEKS R14 R15 K35 ["Turquoise_500"]
  SETTABLEKS R14 R13 K30 ["backgroundStyle"]
  CALL R11 2 1
  GETUPVAL R13 1
  GETTABLEKS R12 R13 K1 ["createElement"]
  GETUPVAL R13 2
  DUPTABLE R14 K31 [{"Size", "backgroundStyle"}]
  GETIMPORT R15 K28 [UDim2.fromOffset]
  LOADN R16 120
  LOADN R17 75
  CALL R15 2 1
  SETTABLEKS R15 R14 K8 ["Size"]
  GETTABLEKS R18 R2 K32 ["Color"]
  GETTABLEKS R17 R18 K33 ["Extended"]
  GETTABLEKS R16 R17 K36 ["Magenta"]
  GETTABLEKS R15 R16 K37 ["Magenta_500"]
  SETTABLEKS R15 R14 K30 ["backgroundStyle"]
  CALL R12 2 -1
  SETLIST R10 R11 -1 [1]
  CALL R7 3 1
  SETTABLEKS R7 R6 K6 ["Horizontal"]
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
  GETTABLEKS R4 R5 K9 ["View"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETTABLEKS R6 R0 K8 ["Components"]
  GETTABLEKS R5 R6 K10 ["ScrollView"]
  CALL R4 1 1
  GETIMPORT R5 K6 [require]
  GETTABLEKS R8 R0 K11 ["Providers"]
  GETTABLEKS R7 R8 K12 ["Style"]
  GETTABLEKS R6 R7 K13 ["useTokens"]
  CALL R5 1 1
  GETIMPORT R6 K6 [require]
  GETTABLEKS R8 R0 K14 ["Enums"]
  GETTABLEKS R7 R8 K15 ["ControlState"]
  CALL R6 1 1
  DUPCLOSURE R7 K16 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R2
  CAPTURE VAL R3
  CAPTURE VAL R4
  DUPTABLE R8 K20 [{"summary", "stories", "controls"}]
  LOADK R9 K10 ["ScrollView"]
  SETTABLEKS R9 R8 K17 ["summary"]
  DUPTABLE R9 K22 [{"Scrolling"}]
  DUPTABLE R10 K25 [{"name", "story"}]
  LOADK R11 K21 ["Scrolling"]
  SETTABLEKS R11 R10 K23 ["name"]
  SETTABLEKS R7 R10 K24 ["story"]
  SETTABLEKS R10 R9 K21 ["Scrolling"]
  SETTABLEKS R9 R8 K18 ["stories"]
  DUPTABLE R9 K27 [{"scrollBarVisibility"}]
  NEWTABLE R10 0 3
  LOADK R11 K28 ["Auto"]
  LOADK R12 K29 ["Always"]
  LOADK R13 K30 ["None"]
  SETLIST R10 R11 3 [1]
  SETTABLEKS R10 R9 K26 ["scrollBarVisibility"]
  SETTABLEKS R9 R8 K19 ["controls"]
  RETURN R8 1
