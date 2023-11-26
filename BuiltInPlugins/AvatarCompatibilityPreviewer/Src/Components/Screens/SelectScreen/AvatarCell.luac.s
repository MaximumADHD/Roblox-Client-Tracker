PROTO_0:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["Cell"]
  GETTABLEKS R0 R1 K1 ["Avatar"]
  NAMECALL R0 R0 K2 ["Clone"]
  CALL R0 1 1
  NAMECALL R1 R0 K3 ["GetDescendants"]
  CALL R1 1 3
  FORGPREP R1
  LOADK R8 K4 ["LuaSourceContainer"]
  NAMECALL R6 R5 K5 ["IsA"]
  CALL R6 2 1
  JUMPIF R6 [+5]
  LOADK R8 K6 ["Sound"]
  NAMECALL R6 R5 K5 ["IsA"]
  CALL R6 2 1
  JUMPIFNOT R6 [+3]
  NAMECALL R6 R5 K7 ["Destroy"]
  CALL R6 1 0
  FORGLOOP R1 2 [-14]
  RETURN R0 1

PROTO_1:
  GETUPVAL R0 0
  NEWTABLE R2 0 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K0 ["Cell"]
  GETTABLEKS R3 R4 K1 ["Avatar"]
  SETLIST R2 R3 1 [1]
  NAMECALL R0 R0 K2 ["Set"]
  CALL R0 2 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  NAMECALL R1 R1 K1 ["get"]
  CALL R1 1 1
  GETUPVAL R2 1
  LOADK R4 K2 ["ImportPage"]
  NAMECALL R2 R2 K0 ["use"]
  CALL R2 2 1
  GETTABLEKS R3 R2 K3 ["Avatar"]
  GETUPVAL R5 2
  GETTABLEKS R4 R5 K4 ["new"]
  CALL R4 0 1
  GETUPVAL R6 3
  GETTABLEKS R5 R6 K5 ["useMemo"]
  NEWCLOSURE R6 P0
  CAPTURE VAL R0
  NEWTABLE R7 0 1
  GETTABLEKS R9 R0 K6 ["Cell"]
  GETTABLEKS R8 R9 K3 ["Avatar"]
  SETLIST R7 R8 1 [1]
  CALL R5 2 1
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K7 ["createElement"]
  GETUPVAL R7 4
  DUPTABLE R8 K12 [{"AutomaticSize", "Position", "OnClick", "Size"}]
  GETIMPORT R9 K15 [Enum.AutomaticSize.XY]
  SETTABLEKS R9 R8 K8 ["AutomaticSize"]
  GETTABLEKS R9 R0 K9 ["Position"]
  SETTABLEKS R9 R8 K9 ["Position"]
  NEWCLOSURE R9 P1
  CAPTURE VAL R1
  CAPTURE VAL R0
  SETTABLEKS R9 R8 K10 ["OnClick"]
  GETTABLEKS R9 R0 K11 ["Size"]
  SETTABLEKS R9 R8 K11 ["Size"]
  NEWTABLE R9 0 1
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K7 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K19 [{"Layout", "Padding", "Spacing"}]
  GETIMPORT R13 K22 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K16 ["Layout"]
  GETTABLEKS R13 R3 K23 ["InnerPadding"]
  SETTABLEKS R13 R12 K17 ["Padding"]
  GETTABLEKS R13 R3 K17 ["Padding"]
  SETTABLEKS R13 R12 K18 ["Spacing"]
  DUPTABLE R13 K26 [{"Preview", "Name"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K7 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K34 [{"FocusDirection", "Model", "Static", "Ambient", "LayoutOrder", "LightColor", "LightDirection", "Size"}]
  GETTABLEKS R19 R5 K35 ["PrimaryPart"]
  GETTABLEKS R18 R19 K36 ["CFrame"]
  GETTABLEKS R17 R18 K37 ["LookVector"]
  SETTABLEKS R17 R16 K27 ["FocusDirection"]
  SETTABLEKS R5 R16 K28 ["Model"]
  LOADB R17 1
  SETTABLEKS R17 R16 K29 ["Static"]
  GETTABLEKS R17 R3 K38 ["PreviewAmbient"]
  SETTABLEKS R17 R16 K30 ["Ambient"]
  NAMECALL R17 R4 K39 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K31 ["LayoutOrder"]
  GETIMPORT R17 K41 [Color3.new]
  LOADN R18 1
  LOADN R19 1
  LOADN R20 1
  CALL R17 3 1
  SETTABLEKS R17 R16 K32 ["LightColor"]
  GETTABLEKS R20 R5 K35 ["PrimaryPart"]
  GETTABLEKS R19 R20 K36 ["CFrame"]
  GETTABLEKS R18 R19 K37 ["LookVector"]
  MINUS R17 R18
  SETTABLEKS R17 R16 K33 ["LightDirection"]
  GETIMPORT R17 K44 [UDim2.fromOffset]
  GETTABLEKS R18 R3 K45 ["IconSize"]
  GETTABLEKS R19 R3 K45 ["IconSize"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K11 ["Size"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K24 ["Preview"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K7 ["createElement"]
  GETUPVAL R15 7
  DUPTABLE R16 K53 [{"LayoutOrder", "Size", "Text", "TextColor", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
  NAMECALL R17 R4 K39 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K31 ["LayoutOrder"]
  GETIMPORT R17 K54 [UDim2.new]
  LOADN R18 1
  LOADN R19 0
  LOADN R20 0
  GETTABLEKS R22 R3 K55 ["NameFontSize"]
  GETTABLEKS R23 R3 K56 ["NameLines"]
  MUL R21 R22 R23
  CALL R17 4 1
  SETTABLEKS R17 R16 K11 ["Size"]
  GETTABLEKS R19 R0 K6 ["Cell"]
  GETTABLEKS R18 R19 K3 ["Avatar"]
  GETTABLEKS R17 R18 K25 ["Name"]
  SETTABLEKS R17 R16 K46 ["Text"]
  GETTABLEKS R17 R3 K57 ["TitleColor"]
  SETTABLEKS R17 R16 K47 ["TextColor"]
  GETTABLEKS R17 R3 K55 ["NameFontSize"]
  SETTABLEKS R17 R16 K48 ["TextSize"]
  GETIMPORT R17 K59 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R17 R16 K49 ["TextTruncate"]
  GETIMPORT R17 K61 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K50 ["TextXAlignment"]
  GETIMPORT R17 K63 [Enum.TextYAlignment.Top]
  SETTABLEKS R17 R16 K51 ["TextYAlignment"]
  LOADB R17 1
  SETTABLEKS R17 R16 K52 ["TextWrapped"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K25 ["Name"]
  CALL R10 3 -1
  SETLIST R9 R10 -1 [1]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AvatarCompatibilityPreviewer"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["Framework"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R6 R0 K9 ["Src"]
  GETTABLEKS R5 R6 K10 ["Util"]
  GETTABLEKS R4 R5 K11 ["SelectionWrapper"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K12 ["Resources"]
  GETTABLEKS R5 R6 K13 ["Theme"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K14 ["UI"]
  GETTABLEKS R6 R5 K15 ["AssetRenderModel"]
  GETTABLEKS R7 R5 K16 ["Button"]
  GETTABLEKS R8 R5 K17 ["Pane"]
  GETTABLEKS R9 R5 K18 ["TextLabel"]
  GETTABLEKS R11 R1 K19 ["ContextServices"]
  GETTABLEKS R10 R11 K20 ["Stylizer"]
  GETTABLEKS R12 R1 K10 ["Util"]
  GETTABLEKS R11 R12 K21 ["LayoutOrderIterator"]
  DUPCLOSURE R12 K22 [PROTO_2]
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R2
  CAPTURE VAL R7
  CAPTURE VAL R8
  CAPTURE VAL R6
  CAPTURE VAL R9
  RETURN R12 1
