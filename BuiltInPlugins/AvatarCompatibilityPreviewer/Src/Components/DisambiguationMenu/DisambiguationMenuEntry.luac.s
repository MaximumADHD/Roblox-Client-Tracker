PROTO_0:
  GETUPVAL R1 0
  GETTABLEKS R3 R0 K0 ["AbsoluteSize"]
  GETTABLEKS R2 R3 K1 ["X"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["new"]
  CALL R1 0 1
  GETUPVAL R2 1
  LOADK R4 K1 ["DisambiguationMenu"]
  NAMECALL R2 R2 K2 ["use"]
  CALL R2 2 1
  GETUPVAL R4 2
  GETTABLEKS R3 R4 K3 ["useState"]
  LOADN R4 0
  CALL R3 1 2
  GETUPVAL R6 2
  GETTABLEKS R5 R6 K4 ["useRef"]
  LOADNIL R6
  CALL R5 1 1
  GETUPVAL R7 2
  GETTABLEKS R6 R7 K5 ["createElement"]
  GETUPVAL R7 3
  DUPTABLE R8 K10 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
  GETIMPORT R9 K13 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K6 ["AutomaticSize"]
  GETTABLEKS R9 R0 K7 ["LayoutOrder"]
  SETTABLEKS R9 R8 K7 ["LayoutOrder"]
  GETIMPORT R9 K16 [Enum.FillDirection.Horizontal]
  SETTABLEKS R9 R8 K8 ["Layout"]
  GETTABLEKS R9 R2 K17 ["HorizontalSpacing"]
  SETTABLEKS R9 R8 K9 ["Spacing"]
  DUPTABLE R9 K21 [{"ItemIcon", "ItemNames", "Children"}]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K24 [{"BackgroundColor3", "LayoutOrder", "Size"}]
  GETTABLEKS R13 R2 K25 ["IconBackground"]
  SETTABLEKS R13 R12 K22 ["BackgroundColor3"]
  NAMECALL R13 R1 K26 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  GETTABLEKS R13 R2 K27 ["IconSize"]
  SETTABLEKS R13 R12 K23 ["Size"]
  DUPTABLE R13 K29 [{"ItemDataPreviewModel"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R15 4
  DUPTABLE R16 K31 [{"Instance"}]
  GETTABLEKS R17 R0 K30 ["Instance"]
  SETTABLEKS R17 R16 K30 ["Instance"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K28 ["ItemDataPreviewModel"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K18 ["ItemIcon"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K32 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing", "Size"}]
  GETIMPORT R13 K13 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K6 ["AutomaticSize"]
  NAMECALL R13 R1 K26 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  GETIMPORT R13 K34 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K8 ["Layout"]
  GETTABLEKS R13 R2 K35 ["TextSpacing"]
  SETTABLEKS R13 R12 K9 ["Spacing"]
  GETIMPORT R13 K37 [UDim2.new]
  LOADN R14 1
  GETTABLEKS R20 R2 K27 ["IconSize"]
  GETTABLEKS R19 R20 K38 ["X"]
  GETTABLEKS R18 R19 K39 ["Offset"]
  GETTABLEKS R19 R2 K17 ["HorizontalSpacing"]
  ADD R17 R18 R19
  ADD R16 R17 R3
  MINUS R15 R16
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K23 ["Size"]
  DUPTABLE R13 K43 [{"ItemName", "Subtitle", "Warning"}]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K47 [{"AutomaticSize", "LayoutOrder", "Size", "Text", "TextXAlignment", "TextTruncate"}]
  GETIMPORT R17 K13 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K6 ["AutomaticSize"]
  NAMECALL R17 R1 K26 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K7 ["LayoutOrder"]
  GETIMPORT R17 K49 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K23 ["Size"]
  GETTABLEKS R17 R0 K50 ["Name"]
  SETTABLEKS R17 R16 K44 ["Text"]
  GETIMPORT R17 K52 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K45 ["TextXAlignment"]
  GETIMPORT R17 K54 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R17 R16 K46 ["TextTruncate"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K40 ["ItemName"]
  GETTABLEKS R14 R0 K41 ["Subtitle"]
  JUMPIFNOT R14 [+37]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K56 [{"AutomaticSize", "LayoutOrder", "Style", "Size", "Text", "TextXAlignment", "TextTruncate"}]
  GETIMPORT R17 K13 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K6 ["AutomaticSize"]
  NAMECALL R17 R1 K26 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K7 ["LayoutOrder"]
  LOADK R17 K57 ["SubText"]
  SETTABLEKS R17 R16 K55 ["Style"]
  GETIMPORT R17 K49 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K23 ["Size"]
  GETTABLEKS R17 R0 K41 ["Subtitle"]
  SETTABLEKS R17 R16 K44 ["Text"]
  GETIMPORT R17 K52 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K45 ["TextXAlignment"]
  GETIMPORT R17 K54 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R17 R16 K46 ["TextTruncate"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K41 ["Subtitle"]
  GETTABLEKS R14 R0 K58 ["WarningText"]
  JUMPIFNOT R14 [+36]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K5 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K60 [{"AutomaticSize", "LayoutOrder", "Style", "Size", "Text", "TextXAlignment", "TextWrapped"}]
  GETIMPORT R17 K13 [Enum.AutomaticSize.Y]
  SETTABLEKS R17 R16 K6 ["AutomaticSize"]
  NAMECALL R17 R1 K26 ["getNextOrder"]
  CALL R17 1 1
  SETTABLEKS R17 R16 K7 ["LayoutOrder"]
  LOADK R17 K42 ["Warning"]
  SETTABLEKS R17 R16 K55 ["Style"]
  GETIMPORT R17 K49 [UDim2.fromScale]
  LOADN R18 1
  LOADN R19 0
  CALL R17 2 1
  SETTABLEKS R17 R16 K23 ["Size"]
  GETTABLEKS R17 R0 K58 ["WarningText"]
  SETTABLEKS R17 R16 K44 ["Text"]
  GETIMPORT R17 K52 [Enum.TextXAlignment.Left]
  SETTABLEKS R17 R16 K45 ["TextXAlignment"]
  LOADB R17 1
  SETTABLEKS R17 R16 K59 ["TextWrapped"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K42 ["Warning"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K19 ["ItemNames"]
  GETUPVAL R11 2
  GETTABLEKS R10 R11 K5 ["createElement"]
  GETUPVAL R11 3
  NEWTABLE R12 4 0
  GETIMPORT R13 K62 [Enum.AutomaticSize.XY]
  SETTABLEKS R13 R12 K6 ["AutomaticSize"]
  NAMECALL R13 R1 K26 ["getNextOrder"]
  CALL R13 1 1
  SETTABLEKS R13 R12 K7 ["LayoutOrder"]
  SETTABLEKS R5 R12 K63 ["ref"]
  GETUPVAL R15 2
  GETTABLEKS R14 R15 K64 ["Change"]
  GETTABLEKS R13 R14 K65 ["AbsoluteSize"]
  NEWCLOSURE R14 P0
  CAPTURE VAL R4
  SETTABLE R14 R12 R13
  GETTABLEKS R13 R0 K66 ["children"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K20 ["Children"]
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
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Components"]
  GETTABLEKS R5 R6 K11 ["ItemDataPreview"]
  GETTABLEKS R4 R5 K12 ["ItemDataPreviewModel"]
  CALL R3 1 1
  GETIMPORT R4 K5 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K13 ["Resources"]
  GETTABLEKS R5 R6 K14 ["Theme"]
  CALL R4 1 1
  GETTABLEKS R5 R1 K15 ["UI"]
  GETTABLEKS R6 R5 K16 ["Pane"]
  GETTABLEKS R7 R5 K17 ["TextLabel"]
  GETTABLEKS R9 R1 K18 ["Util"]
  GETTABLEKS R8 R9 K19 ["LayoutOrderIterator"]
  GETTABLEKS R10 R1 K20 ["ContextServices"]
  GETTABLEKS R9 R10 K21 ["Stylizer"]
  DUPCLOSURE R10 K22 [PROTO_1]
  CAPTURE VAL R8
  CAPTURE VAL R9
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R3
  CAPTURE VAL R7
  RETURN R10 1
