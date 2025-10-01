PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["ActivateAsync"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["Util"]
  GETTABLEKS R1 R2 K1 ["StudioUri"]
  GETTABLEKS R0 R1 K2 ["fromAction"]
  LOADK R1 K3 ["MeshImporter"]
  LOADK R2 K4 ["Toggle"]
  CALL R0 2 1
  GETUPVAL R1 1
  LOADK R3 K5 ["Actions"]
  NAMECALL R1 R1 K6 ["GetPluginComponent"]
  CALL R1 2 1
  GETIMPORT R2 K9 [task.spawn]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CALL R2 1 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["ContextServices"]
  GETTABLEKS R0 R1 K1 ["Localization"]
  NAMECALL R0 R0 K2 ["use"]
  CALL R0 1 1
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K0 ["ContextServices"]
  GETTABLEKS R1 R2 K3 ["Stylizer"]
  LOADK R3 K4 ["SimpleSelectScreen"]
  NAMECALL R1 R1 K2 ["use"]
  CALL R1 2 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K5 ["Util"]
  GETTABLEKS R3 R4 K6 ["LayoutOrderIterator"]
  GETTABLEKS R2 R3 K7 ["new"]
  CALL R2 0 1
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K0 ["ContextServices"]
  GETTABLEKS R3 R4 K8 ["Plugin"]
  NAMECALL R3 R3 K2 ["use"]
  CALL R3 1 1
  NAMECALL R3 R3 K9 ["get"]
  CALL R3 1 1
  GETUPVAL R5 1
  GETTABLEKS R4 R5 K10 ["useCallback"]
  NEWCLOSURE R5 P0
  CAPTURE UPVAL U0
  CAPTURE VAL R3
  NEWTABLE R6 0 1
  MOVE R7 R3
  SETLIST R6 R7 1 [1]
  CALL R4 2 1
  GETUPVAL R5 2
  CALL R5 0 1
  JUMPIFNOT R5 [+389]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["createElement"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["UI"]
  GETTABLEKS R6 R7 K13 ["Pane"]
  NEWTABLE R7 0 0
  DUPTABLE R8 K15 [{"Contents"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["createElement"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K12 ["UI"]
  GETTABLEKS R10 R11 K13 ["Pane"]
  DUPTABLE R11 K19 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R12 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K16 ["Layout"]
  GETIMPORT R12 K25 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K17 ["HorizontalAlignment"]
  GETIMPORT R12 K26 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K18 ["VerticalAlignment"]
  DUPTABLE R12 K28 [{"Buttons"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["UI"]
  GETTABLEKS R14 R15 K13 ["Pane"]
  DUPTABLE R15 K32 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
  GETIMPORT R16 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K29 ["AutomaticSize"]
  GETIMPORT R16 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K16 ["Layout"]
  LOADN R16 20
  SETTABLEKS R16 R15 K30 ["Spacing"]
  GETIMPORT R16 K25 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K17 ["HorizontalAlignment"]
  NAMECALL R16 R2 K35 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K31 ["LayoutOrder"]
  DUPTABLE R16 K40 [{"Image", "SelectTitle", "SplitLabel", "Import3D"}]
  GETUPVAL R18 3
  JUMPIFNOT R18 [+27]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K36 ["Image"]
  DUPTABLE R19 K42 [{"LayoutOrder", "Image", "Size"}]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  GETTABLEKS R20 R1 K36 ["Image"]
  SETTABLEKS R20 R19 K36 ["Image"]
  GETIMPORT R20 K45 [UDim2.fromOffset]
  LOADN R21 64
  LOADN R22 180
  CALL R20 2 1
  SETTABLEKS R20 R19 K41 ["Size"]
  CALL R17 2 1
  JUMP [+97]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K46 ["Frame"]
  DUPTABLE R19 K49 [{"AutomaticSize", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R20 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K29 ["AutomaticSize"]
  GETTABLEKS R20 R1 K50 ["ImageBackgroundColor"]
  SETTABLEKS R20 R19 K47 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K48 ["BorderSizePixel"]
  DUPTABLE R20 K53 [{"UICorner", "UIPadding", "Image"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  LOADK R22 K51 ["UICorner"]
  DUPTABLE R23 K55 [{"CornerRadius"}]
  GETIMPORT R24 K57 [UDim.new]
  LOADK R25 K58 [0.5]
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K54 ["CornerRadius"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K51 ["UICorner"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  LOADK R22 K52 ["UIPadding"]
  DUPTABLE R23 K63 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R24 K57 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K59 ["PaddingTop"]
  GETIMPORT R24 K57 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K60 ["PaddingBottom"]
  GETIMPORT R24 K57 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K61 ["PaddingLeft"]
  GETIMPORT R24 K57 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K62 ["PaddingRight"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K52 ["UIPadding"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K12 ["UI"]
  GETTABLEKS R22 R23 K36 ["Image"]
  DUPTABLE R23 K65 [{"LayoutOrder", "Image", "ImageColor3", "Size"}]
  NAMECALL R24 R2 K35 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K31 ["LayoutOrder"]
  LOADK R24 K66 ["rbxassetid://6022668945"]
  SETTABLEKS R24 R23 K36 ["Image"]
  GETTABLEKS R24 R1 K67 ["IconColor"]
  SETTABLEKS R24 R23 K64 ["ImageColor3"]
  GETTABLEKS R24 R1 K68 ["ImageSize"]
  SETTABLEKS R24 R23 K41 ["Size"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K36 ["Image"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K36 ["Image"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K69 ["TextLabel"]
  DUPTABLE R19 K74 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text", "Style"}]
  GETIMPORT R20 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K29 ["AutomaticSize"]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  LOADB R20 1
  SETTABLEKS R20 R19 K70 ["TextWrapped"]
  GETTABLEKS R20 R1 K71 ["FontFace"]
  SETTABLEKS R20 R19 K71 ["FontFace"]
  LOADK R22 K75 ["SelectScreen"]
  LOADK R23 K37 ["SelectTitle"]
  NAMECALL R20 R0 K76 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K72 ["Text"]
  LOADK R20 K77 ["Title"]
  SETTABLEKS R20 R19 K73 ["Style"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K37 ["SelectTitle"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K13 ["Pane"]
  DUPTABLE R19 K78 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
  GETIMPORT R20 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K16 ["Layout"]
  GETIMPORT R20 K25 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R20 R19 K17 ["HorizontalAlignment"]
  GETTABLEKS R20 R1 K30 ["Spacing"]
  SETTABLEKS R20 R19 K30 ["Spacing"]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  GETIMPORT R20 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K29 ["AutomaticSize"]
  DUPTABLE R20 K81 [{"Description", "LearnMore"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K12 ["UI"]
  GETTABLEKS R22 R23 K69 ["TextLabel"]
  DUPTABLE R23 K82 [{"AutomaticSize", "LayoutOrder", "Text", "TextWrapped"}]
  GETIMPORT R24 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K29 ["AutomaticSize"]
  NAMECALL R24 R2 K35 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K31 ["LayoutOrder"]
  LOADK R26 K75 ["SelectScreen"]
  LOADK R27 K83 ["SelectDescription"]
  NAMECALL R24 R0 K76 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K72 ["Text"]
  LOADB R24 1
  SETTABLEKS R24 R23 K70 ["TextWrapped"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K79 ["Description"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K12 ["UI"]
  GETTABLEKS R22 R23 K84 ["LinkText"]
  DUPTABLE R23 K86 [{"AutomaticSize", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
  GETIMPORT R24 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K29 ["AutomaticSize"]
  NAMECALL R24 R2 K35 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K31 ["LayoutOrder"]
  DUPCLOSURE R24 K87 [PROTO_2]
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  SETTABLEKS R24 R23 K85 ["OnClick"]
  LOADK R26 K75 ["SelectScreen"]
  LOADK R27 K80 ["LearnMore"]
  NAMECALL R24 R0 K76 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K72 ["Text"]
  LOADB R24 1
  SETTABLEKS R24 R23 K70 ["TextWrapped"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K80 ["LearnMore"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K38 ["SplitLabel"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K88 ["IconButton"]
  DUPTABLE R19 K91 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Padding", "Text", "Style"}]
  GETIMPORT R20 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K29 ["AutomaticSize"]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  LOADK R20 K92 ["PointingHand"]
  SETTABLEKS R20 R19 K89 ["Cursor"]
  SETTABLEKS R4 R19 K85 ["OnClick"]
  DUPTABLE R20 K97 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R21 12
  SETTABLEKS R21 R20 K93 ["Left"]
  LOADN R21 12
  SETTABLEKS R21 R20 K94 ["Right"]
  LOADN R21 6
  SETTABLEKS R21 R20 K95 ["Top"]
  LOADN R21 6
  SETTABLEKS R21 R20 K96 ["Bottom"]
  SETTABLEKS R20 R19 K90 ["Padding"]
  LOADK R22 K75 ["SelectScreen"]
  LOADK R23 K98 ["Import3DEllipsis"]
  NAMECALL R20 R0 K76 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K72 ["Text"]
  LOADK R20 K99 ["Primary"]
  SETTABLEKS R20 R19 K73 ["Style"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K39 ["Import3D"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K27 ["Buttons"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K14 ["Contents"]
  CALL R5 3 -1
  RETURN R5 -1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["createElement"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["UI"]
  GETTABLEKS R6 R7 K13 ["Pane"]
  DUPTABLE R7 K100 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BackgroundColor3"}]
  GETIMPORT R8 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K16 ["Layout"]
  GETIMPORT R8 K25 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R8 R7 K17 ["HorizontalAlignment"]
  GETIMPORT R8 K26 [Enum.VerticalAlignment.Center]
  SETTABLEKS R8 R7 K18 ["VerticalAlignment"]
  GETTABLEKS R8 R1 K101 ["BackgroundColor"]
  SETTABLEKS R8 R7 K47 ["BackgroundColor3"]
  DUPTABLE R8 K28 [{"Buttons"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["createElement"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K12 ["UI"]
  GETTABLEKS R10 R11 K13 ["Pane"]
  DUPTABLE R11 K32 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
  GETIMPORT R12 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K29 ["AutomaticSize"]
  GETIMPORT R12 K23 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K16 ["Layout"]
  LOADN R12 20
  SETTABLEKS R12 R11 K30 ["Spacing"]
  GETIMPORT R12 K25 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K17 ["HorizontalAlignment"]
  NAMECALL R12 R2 K35 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K31 ["LayoutOrder"]
  DUPTABLE R12 K103 [{"Frame", "SelectHint", "SplitLabel", "Import3D"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  LOADK R14 K46 ["Frame"]
  DUPTABLE R15 K49 [{"AutomaticSize", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R16 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K29 ["AutomaticSize"]
  GETTABLEKS R16 R1 K50 ["ImageBackgroundColor"]
  SETTABLEKS R16 R15 K47 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K48 ["BorderSizePixel"]
  DUPTABLE R16 K53 [{"UICorner", "UIPadding", "Image"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K51 ["UICorner"]
  DUPTABLE R19 K55 [{"CornerRadius"}]
  GETIMPORT R20 K57 [UDim.new]
  LOADK R21 K58 [0.5]
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K54 ["CornerRadius"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K51 ["UICorner"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K52 ["UIPadding"]
  DUPTABLE R19 K63 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R20 K57 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K59 ["PaddingTop"]
  GETIMPORT R20 K57 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["PaddingBottom"]
  GETIMPORT R20 K57 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K61 ["PaddingLeft"]
  GETIMPORT R20 K57 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K62 ["PaddingRight"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["UIPadding"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K36 ["Image"]
  DUPTABLE R19 K65 [{"LayoutOrder", "Image", "ImageColor3", "Size"}]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  LOADK R20 K66 ["rbxassetid://6022668945"]
  SETTABLEKS R20 R19 K36 ["Image"]
  GETTABLEKS R20 R1 K67 ["IconColor"]
  SETTABLEKS R20 R19 K64 ["ImageColor3"]
  GETTABLEKS R20 R1 K68 ["ImageSize"]
  SETTABLEKS R20 R19 K41 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K36 ["Image"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K46 ["Frame"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["UI"]
  GETTABLEKS R14 R15 K69 ["TextLabel"]
  DUPTABLE R15 K104 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text"}]
  GETIMPORT R16 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K29 ["AutomaticSize"]
  NAMECALL R16 R2 K35 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K31 ["LayoutOrder"]
  LOADB R16 1
  SETTABLEKS R16 R15 K70 ["TextWrapped"]
  GETTABLEKS R16 R1 K71 ["FontFace"]
  SETTABLEKS R16 R15 K71 ["FontFace"]
  LOADK R18 K75 ["SelectScreen"]
  LOADK R19 K102 ["SelectHint"]
  NAMECALL R16 R0 K76 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K72 ["Text"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K102 ["SelectHint"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["UI"]
  GETTABLEKS R14 R15 K13 ["Pane"]
  DUPTABLE R15 K78 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
  GETIMPORT R16 K106 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K16 ["Layout"]
  GETIMPORT R16 K25 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K17 ["HorizontalAlignment"]
  GETTABLEKS R16 R1 K30 ["Spacing"]
  SETTABLEKS R16 R15 K30 ["Spacing"]
  NAMECALL R16 R2 K35 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K31 ["LayoutOrder"]
  GETIMPORT R16 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K29 ["AutomaticSize"]
  DUPTABLE R16 K110 [{"LeftLabel", "OrLabel", "RightLabel"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K46 ["Frame"]
  DUPTABLE R19 K111 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  GETTABLEKS R20 R1 K112 ["LineColor"]
  SETTABLEKS R20 R19 K47 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K48 ["BorderSizePixel"]
  GETTABLEKS R20 R1 K113 ["LineSize"]
  SETTABLEKS R20 R19 K41 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K107 ["LeftLabel"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K69 ["TextLabel"]
  DUPTABLE R19 K114 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R20 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K29 ["AutomaticSize"]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  LOADK R22 K75 ["SelectScreen"]
  LOADK R23 K115 ["Or"]
  NAMECALL R20 R0 K76 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K72 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K108 ["OrLabel"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K46 ["Frame"]
  DUPTABLE R19 K111 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
  NAMECALL R20 R2 K35 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K31 ["LayoutOrder"]
  GETTABLEKS R20 R1 K112 ["LineColor"]
  SETTABLEKS R20 R19 K47 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K48 ["BorderSizePixel"]
  GETTABLEKS R20 R1 K113 ["LineSize"]
  SETTABLEKS R20 R19 K41 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K109 ["RightLabel"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K38 ["SplitLabel"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["UI"]
  GETTABLEKS R14 R15 K88 ["IconButton"]
  DUPTABLE R15 K116 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Size", "Padding", "Spacing", "Text", "Style"}]
  GETIMPORT R16 K34 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K29 ["AutomaticSize"]
  NAMECALL R16 R2 K35 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K31 ["LayoutOrder"]
  LOADK R16 K92 ["PointingHand"]
  SETTABLEKS R16 R15 K89 ["Cursor"]
  SETTABLEKS R4 R15 K85 ["OnClick"]
  GETIMPORT R16 K45 [UDim2.fromOffset]
  LOADN R17 0
  GETTABLEKS R18 R1 K117 ["ButtonHeight"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K41 ["Size"]
  LOADN R16 5
  SETTABLEKS R16 R15 K90 ["Padding"]
  LOADN R16 5
  SETTABLEKS R16 R15 K30 ["Spacing"]
  LOADK R18 K75 ["SelectScreen"]
  LOADK R19 K118 ["Import3DFile"]
  NAMECALL R16 R0 K76 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K72 ["Text"]
  LOADK R16 K119 ["PrimaryBrand"]
  SETTABLEKS R16 R15 K73 ["Style"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K39 ["Import3D"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K27 ["Buttons"]
  CALL R5 3 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [game]
  LOADK R2 K2 ["BrowserService"]
  NAMECALL R0 R0 K3 ["GetService"]
  CALL R0 2 1
  GETIMPORT R1 K5 [script]
  LOADK R3 K6 ["AvatarCompatibilityPreviewer"]
  NAMECALL R1 R1 K7 ["FindFirstAncestor"]
  CALL R1 2 1
  GETIMPORT R2 K9 [require]
  GETTABLEKS R4 R1 K10 ["Packages"]
  GETTABLEKS R3 R4 K11 ["React"]
  CALL R2 1 1
  GETIMPORT R3 K9 [require]
  GETTABLEKS R5 R1 K10 ["Packages"]
  GETTABLEKS R4 R5 K12 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K9 [require]
  GETTABLEKS R7 R1 K13 ["Src"]
  GETTABLEKS R6 R7 K14 ["Resources"]
  GETTABLEKS R5 R6 K15 ["Theme"]
  CALL R4 1 1
  GETIMPORT R5 K9 [require]
  GETTABLEKS R8 R1 K13 ["Src"]
  GETTABLEKS R7 R8 K16 ["Flags"]
  GETTABLEKS R6 R7 K17 ["getFFlagAvatarPreviewerSortClothingUI"]
  CALL R5 1 1
  GETIMPORT R6 K1 [game]
  LOADK R8 K18 ["AvatarPreviewerUseEmptyStateIcon"]
  LOADB R9 0
  NAMECALL R6 R6 K19 ["DefineFastFlag"]
  CALL R6 3 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K20 ["AvatarAutoSetupLearnMoreLink"]
  LOADK R10 K21 ["https://create.roblox.com/docs/avatar-setup"]
  NAMECALL R7 R7 K22 ["DefineFastString"]
  CALL R7 3 1
  DUPCLOSURE R8 K23 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R0
  CAPTURE VAL R7
  RETURN R8 1
