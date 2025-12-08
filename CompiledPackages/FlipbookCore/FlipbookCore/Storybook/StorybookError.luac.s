PROTO_0:
  GETUPVAL R1 0
  CALL R1 0 1
  GETTABLEKS R5 R0 K0 ["unavailableStorybook"]
  GETTABLEKS R4 R5 K1 ["storybook"]
  GETTABLEKS R3 R4 K2 ["source"]
  GETTABLEKS R2 R3 K3 ["Source"]
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K4 ["createElement"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K5 ["ScrollView"]
  DUPTABLE R5 K9 [{"tag", "scroll", "LayoutOrder"}]
  LOADK R6 K10 ["size-full col padding-large gap-large"]
  SETTABLEKS R6 R5 K6 ["tag"]
  DUPTABLE R6 K14 [{"ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
  GETIMPORT R7 K17 [Enum.ScrollingDirection.XY]
  SETTABLEKS R7 R6 K11 ["ScrollingDirection"]
  GETIMPORT R7 K19 [Enum.AutomaticSize.XY]
  SETTABLEKS R7 R6 K12 ["AutomaticCanvasSize"]
  GETIMPORT R7 K22 [UDim2.fromScale]
  LOADN R8 0
  LOADN R9 0
  CALL R7 2 1
  SETTABLEKS R7 R6 K13 ["CanvasSize"]
  SETTABLEKS R6 R5 K7 ["scroll"]
  GETTABLEKS R6 R0 K23 ["layoutOrder"]
  SETTABLEKS R6 R5 K8 ["LayoutOrder"]
  DUPTABLE R6 K27 [{"MainText", "Problem", "StorybookSource"}]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K28 ["Text"]
  DUPTABLE R9 K29 [{"tag", "Text", "LayoutOrder"}]
  LOADK R10 K30 ["auto-xy text-body-medium text-align-x-left"]
  SETTABLEKS R10 R9 K6 ["tag"]
  LOADK R11 K31 ["Failed to load %*"]
  GETTABLEKS R15 R0 K0 ["unavailableStorybook"]
  GETTABLEKS R14 R15 K1 ["storybook"]
  GETTABLEKS R13 R14 K32 ["name"]
  NAMECALL R11 R11 K33 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K28 ["Text"]
  GETUPVAL R10 3
  CALL R10 0 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  CALL R7 2 1
  SETTABLEKS R7 R6 K24 ["MainText"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K34 ["View"]
  DUPTABLE R9 K35 [{"tag", "LayoutOrder"}]
  LOADK R10 K36 ["auto-xy gap-medium col"]
  SETTABLEKS R10 R9 K6 ["tag"]
  GETUPVAL R10 3
  CALL R10 0 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  DUPTABLE R10 K39 [{"Title", "CodeBlock"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K28 ["Text"]
  DUPTABLE R13 K29 [{"tag", "Text", "LayoutOrder"}]
  LOADK R14 K40 ["auto-xy text-heading-medium"]
  SETTABLEKS R14 R13 K6 ["tag"]
  LOADK R14 K41 ["Error"]
  SETTABLEKS R14 R13 K28 ["Text"]
  GETUPVAL R14 3
  CALL R14 0 1
  SETTABLEKS R14 R13 K8 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K37 ["Title"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K43 [{"source", "sourceColor", "layoutOrder"}]
  GETTABLEKS R15 R0 K0 ["unavailableStorybook"]
  GETTABLEKS R14 R15 K44 ["problem"]
  SETTABLEKS R14 R13 K2 ["source"]
  GETTABLEKS R17 R1 K45 ["Color"]
  GETTABLEKS R16 R17 K46 ["ActionAlert"]
  GETTABLEKS R15 R16 K47 ["Foreground"]
  GETTABLEKS R14 R15 K48 ["Color3"]
  SETTABLEKS R14 R13 K42 ["sourceColor"]
  GETUPVAL R14 3
  CALL R14 0 1
  SETTABLEKS R14 R13 K23 ["layoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K38 ["CodeBlock"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K25 ["Problem"]
  GETUPVAL R8 1
  GETTABLEKS R7 R8 K4 ["createElement"]
  GETUPVAL R9 2
  GETTABLEKS R8 R9 K34 ["View"]
  DUPTABLE R9 K35 [{"tag", "LayoutOrder"}]
  LOADK R10 K36 ["auto-xy gap-medium col"]
  SETTABLEKS R10 R9 K6 ["tag"]
  GETUPVAL R10 3
  CALL R10 0 1
  SETTABLEKS R10 R9 K8 ["LayoutOrder"]
  DUPTABLE R10 K39 [{"Title", "CodeBlock"}]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R13 2
  GETTABLEKS R12 R13 K28 ["Text"]
  DUPTABLE R13 K29 [{"tag", "Text", "LayoutOrder"}]
  LOADK R14 K40 ["auto-xy text-heading-medium"]
  SETTABLEKS R14 R13 K6 ["tag"]
  LOADK R14 K49 ["Storybook Source"]
  SETTABLEKS R14 R13 K28 ["Text"]
  GETUPVAL R14 3
  CALL R14 0 1
  SETTABLEKS R14 R13 K8 ["LayoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K37 ["Title"]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K4 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K50 [{"source", "layoutOrder"}]
  SETTABLEKS R2 R13 K2 ["source"]
  GETUPVAL R14 3
  CALL R14 0 1
  SETTABLEKS R14 R13 K23 ["layoutOrder"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K38 ["CodeBlock"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K26 ["StorybookSource"]
  CALL R3 3 -1
  RETURN R3 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [require]
  GETIMPORT R5 K3 [script]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K4 ["Parent"]
  GETTABLEKS R2 R3 K5 ["RobloxPackages"]
  GETTABLEKS R1 R2 K6 ["Foundation"]
  CALL R0 1 1
  GETIMPORT R1 K1 [require]
  GETIMPORT R6 K3 [script]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K4 ["Parent"]
  GETTABLEKS R3 R4 K7 ["Packages"]
  GETTABLEKS R2 R3 K8 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K1 [require]
  GETIMPORT R7 K3 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K4 ["Parent"]
  GETTABLEKS R4 R5 K7 ["Packages"]
  GETTABLEKS R3 R4 K9 ["Storyteller"]
  CALL R2 1 1
  GETIMPORT R3 K1 [require]
  GETIMPORT R8 K3 [script]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K10 ["Common"]
  GETTABLEKS R4 R5 K11 ["CodeBlock"]
  CALL R3 1 1
  GETIMPORT R4 K1 [require]
  GETIMPORT R9 K3 [script]
  GETTABLEKS R8 R9 K4 ["Parent"]
  GETTABLEKS R7 R8 K4 ["Parent"]
  GETTABLEKS R6 R7 K10 ["Common"]
  GETTABLEKS R5 R6 K12 ["nextLayoutOrder"]
  CALL R4 1 1
  GETTABLEKS R6 R0 K13 ["Hooks"]
  GETTABLEKS R5 R6 K14 ["useTokens"]
  DUPCLOSURE R6 K15 [PROTO_0]
  CAPTURE VAL R5
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE VAL R4
  CAPTURE VAL R3
  RETURN R6 1
