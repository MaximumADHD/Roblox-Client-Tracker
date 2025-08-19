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
  JUMPIFNOT R5 [+396]
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["createElement"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["UI"]
  GETTABLEKS R6 R7 K13 ["Pane"]
  NEWTABLE R7 0 0
  DUPTABLE R8 K16 [{"Background", "Contents"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["createElement"]
  GETUPVAL R10 3
  CALL R9 1 1
  SETTABLEKS R9 R8 K14 ["Background"]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["createElement"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K12 ["UI"]
  GETTABLEKS R10 R11 K13 ["Pane"]
  DUPTABLE R11 K20 [{"Layout", "HorizontalAlignment", "VerticalAlignment"}]
  GETIMPORT R12 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K17 ["Layout"]
  GETIMPORT R12 K26 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K18 ["HorizontalAlignment"]
  GETIMPORT R12 K27 [Enum.VerticalAlignment.Center]
  SETTABLEKS R12 R11 K19 ["VerticalAlignment"]
  DUPTABLE R12 K29 [{"Buttons"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["UI"]
  GETTABLEKS R14 R15 K13 ["Pane"]
  DUPTABLE R15 K33 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
  GETIMPORT R16 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K30 ["AutomaticSize"]
  GETIMPORT R16 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R16 R15 K17 ["Layout"]
  LOADN R16 20
  SETTABLEKS R16 R15 K31 ["Spacing"]
  GETIMPORT R16 K26 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K18 ["HorizontalAlignment"]
  NAMECALL R16 R2 K36 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K32 ["LayoutOrder"]
  DUPTABLE R16 K41 [{"Image", "SelectTitle", "SplitLabel", "Import3D"}]
  GETUPVAL R18 4
  JUMPIFNOT R18 [+27]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K37 ["Image"]
  DUPTABLE R19 K43 [{"LayoutOrder", "Image", "Size"}]
  NAMECALL R20 R2 K36 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K32 ["LayoutOrder"]
  GETTABLEKS R20 R1 K37 ["Image"]
  SETTABLEKS R20 R19 K37 ["Image"]
  GETIMPORT R20 K46 [UDim2.fromOffset]
  LOADN R21 32
  LOADN R22 162
  CALL R20 2 1
  SETTABLEKS R20 R19 K42 ["Size"]
  CALL R17 2 1
  JUMP [+97]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K47 ["Frame"]
  DUPTABLE R19 K50 [{"AutomaticSize", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R20 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K30 ["AutomaticSize"]
  GETTABLEKS R20 R1 K51 ["ImageBackgroundColor"]
  SETTABLEKS R20 R19 K48 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K49 ["BorderSizePixel"]
  DUPTABLE R20 K54 [{"UICorner", "UIPadding", "Image"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  LOADK R22 K52 ["UICorner"]
  DUPTABLE R23 K56 [{"CornerRadius"}]
  GETIMPORT R24 K58 [UDim.new]
  LOADK R25 K59 [0.5]
  LOADN R26 0
  CALL R24 2 1
  SETTABLEKS R24 R23 K55 ["CornerRadius"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K52 ["UICorner"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  LOADK R22 K53 ["UIPadding"]
  DUPTABLE R23 K64 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R24 K58 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K60 ["PaddingTop"]
  GETIMPORT R24 K58 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K61 ["PaddingBottom"]
  GETIMPORT R24 K58 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K62 ["PaddingLeft"]
  GETIMPORT R24 K58 [UDim.new]
  LOADN R25 0
  LOADN R26 10
  CALL R24 2 1
  SETTABLEKS R24 R23 K63 ["PaddingRight"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K53 ["UIPadding"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K12 ["UI"]
  GETTABLEKS R22 R23 K37 ["Image"]
  DUPTABLE R23 K66 [{"LayoutOrder", "Image", "ImageColor3", "Size"}]
  NAMECALL R24 R2 K36 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K32 ["LayoutOrder"]
  LOADK R24 K67 ["rbxassetid://6022668945"]
  SETTABLEKS R24 R23 K37 ["Image"]
  GETTABLEKS R24 R1 K68 ["IconColor"]
  SETTABLEKS R24 R23 K65 ["ImageColor3"]
  GETTABLEKS R24 R1 K69 ["ImageSize"]
  SETTABLEKS R24 R23 K42 ["Size"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K37 ["Image"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K37 ["Image"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K70 ["TextLabel"]
  DUPTABLE R19 K75 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text", "Style"}]
  GETIMPORT R20 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K30 ["AutomaticSize"]
  NAMECALL R20 R2 K36 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K32 ["LayoutOrder"]
  LOADB R20 1
  SETTABLEKS R20 R19 K71 ["TextWrapped"]
  GETTABLEKS R20 R1 K72 ["FontFace"]
  SETTABLEKS R20 R19 K72 ["FontFace"]
  LOADK R22 K76 ["SelectScreen"]
  LOADK R23 K38 ["SelectTitle"]
  NAMECALL R20 R0 K77 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K73 ["Text"]
  LOADK R20 K78 ["Title"]
  SETTABLEKS R20 R19 K74 ["Style"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K38 ["SelectTitle"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K13 ["Pane"]
  DUPTABLE R19 K79 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
  GETIMPORT R20 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R20 R19 K17 ["Layout"]
  GETIMPORT R20 K26 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R20 R19 K18 ["HorizontalAlignment"]
  GETTABLEKS R20 R1 K31 ["Spacing"]
  SETTABLEKS R20 R19 K31 ["Spacing"]
  NAMECALL R20 R2 K36 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K32 ["LayoutOrder"]
  GETIMPORT R20 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K30 ["AutomaticSize"]
  DUPTABLE R20 K82 [{"Description", "LearnMore"}]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K12 ["UI"]
  GETTABLEKS R22 R23 K70 ["TextLabel"]
  DUPTABLE R23 K83 [{"AutomaticSize", "LayoutOrder", "Text", "TextWrapped"}]
  GETIMPORT R24 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K30 ["AutomaticSize"]
  NAMECALL R24 R2 K36 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K32 ["LayoutOrder"]
  LOADK R26 K76 ["SelectScreen"]
  LOADK R27 K84 ["SelectDescription"]
  NAMECALL R24 R0 K77 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K73 ["Text"]
  LOADB R24 1
  SETTABLEKS R24 R23 K71 ["TextWrapped"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K80 ["Description"]
  GETUPVAL R22 1
  GETTABLEKS R21 R22 K11 ["createElement"]
  GETUPVAL R24 0
  GETTABLEKS R23 R24 K12 ["UI"]
  GETTABLEKS R22 R23 K85 ["LinkText"]
  DUPTABLE R23 K87 [{"AutomaticSize", "LayoutOrder", "OnClick", "Text", "TextWrapped"}]
  GETIMPORT R24 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R24 R23 K30 ["AutomaticSize"]
  NAMECALL R24 R2 K36 ["getNextOrder"]
  CALL R24 1 1
  SETTABLEKS R24 R23 K32 ["LayoutOrder"]
  DUPCLOSURE R24 K88 [PROTO_2]
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  SETTABLEKS R24 R23 K86 ["OnClick"]
  LOADK R26 K76 ["SelectScreen"]
  LOADK R27 K81 ["LearnMore"]
  NAMECALL R24 R0 K77 ["getText"]
  CALL R24 3 1
  SETTABLEKS R24 R23 K73 ["Text"]
  LOADB R24 1
  SETTABLEKS R24 R23 K71 ["TextWrapped"]
  CALL R21 2 1
  SETTABLEKS R21 R20 K81 ["LearnMore"]
  CALL R17 3 1
  SETTABLEKS R17 R16 K39 ["SplitLabel"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K89 ["IconButton"]
  DUPTABLE R19 K92 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Padding", "Text", "Style"}]
  GETIMPORT R20 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K30 ["AutomaticSize"]
  NAMECALL R20 R2 K36 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K32 ["LayoutOrder"]
  LOADK R20 K93 ["PointingHand"]
  SETTABLEKS R20 R19 K90 ["Cursor"]
  SETTABLEKS R4 R19 K86 ["OnClick"]
  DUPTABLE R20 K98 [{"Left", "Right", "Top", "Bottom"}]
  LOADN R21 12
  SETTABLEKS R21 R20 K94 ["Left"]
  LOADN R21 12
  SETTABLEKS R21 R20 K95 ["Right"]
  LOADN R21 6
  SETTABLEKS R21 R20 K96 ["Top"]
  LOADN R21 6
  SETTABLEKS R21 R20 K97 ["Bottom"]
  SETTABLEKS R20 R19 K91 ["Padding"]
  LOADK R22 K76 ["SelectScreen"]
  LOADK R23 K99 ["Import3DEllipsis"]
  NAMECALL R20 R0 K77 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K73 ["Text"]
  LOADK R20 K100 ["Primary"]
  SETTABLEKS R20 R19 K74 ["Style"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K40 ["Import3D"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K28 ["Buttons"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K15 ["Contents"]
  CALL R5 3 -1
  RETURN R5 -1
  GETUPVAL R6 1
  GETTABLEKS R5 R6 K11 ["createElement"]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K12 ["UI"]
  GETTABLEKS R6 R7 K13 ["Pane"]
  DUPTABLE R7 K101 [{"Layout", "HorizontalAlignment", "VerticalAlignment", "BackgroundColor3"}]
  GETIMPORT R8 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R8 R7 K17 ["Layout"]
  GETIMPORT R8 K26 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R8 R7 K18 ["HorizontalAlignment"]
  GETIMPORT R8 K27 [Enum.VerticalAlignment.Center]
  SETTABLEKS R8 R7 K19 ["VerticalAlignment"]
  GETTABLEKS R8 R1 K102 ["BackgroundColor"]
  SETTABLEKS R8 R7 K48 ["BackgroundColor3"]
  DUPTABLE R8 K29 [{"Buttons"}]
  GETUPVAL R10 1
  GETTABLEKS R9 R10 K11 ["createElement"]
  GETUPVAL R12 0
  GETTABLEKS R11 R12 K12 ["UI"]
  GETTABLEKS R10 R11 K13 ["Pane"]
  DUPTABLE R11 K33 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "LayoutOrder"}]
  GETIMPORT R12 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R12 R11 K30 ["AutomaticSize"]
  GETIMPORT R12 K24 [Enum.FillDirection.Vertical]
  SETTABLEKS R12 R11 K17 ["Layout"]
  LOADN R12 20
  SETTABLEKS R12 R11 K31 ["Spacing"]
  GETIMPORT R12 K26 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R12 R11 K18 ["HorizontalAlignment"]
  NAMECALL R12 R2 K36 ["getNextOrder"]
  CALL R12 1 1
  SETTABLEKS R12 R11 K32 ["LayoutOrder"]
  DUPTABLE R12 K104 [{"Frame", "SelectHint", "SplitLabel", "Import3D"}]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  LOADK R14 K47 ["Frame"]
  DUPTABLE R15 K50 [{"AutomaticSize", "BackgroundColor3", "BorderSizePixel"}]
  GETIMPORT R16 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K30 ["AutomaticSize"]
  GETTABLEKS R16 R1 K51 ["ImageBackgroundColor"]
  SETTABLEKS R16 R15 K48 ["BackgroundColor3"]
  LOADN R16 0
  SETTABLEKS R16 R15 K49 ["BorderSizePixel"]
  DUPTABLE R16 K54 [{"UICorner", "UIPadding", "Image"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K52 ["UICorner"]
  DUPTABLE R19 K56 [{"CornerRadius"}]
  GETIMPORT R20 K58 [UDim.new]
  LOADK R21 K59 [0.5]
  LOADN R22 0
  CALL R20 2 1
  SETTABLEKS R20 R19 K55 ["CornerRadius"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K52 ["UICorner"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K53 ["UIPadding"]
  DUPTABLE R19 K64 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R20 K58 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K60 ["PaddingTop"]
  GETIMPORT R20 K58 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K61 ["PaddingBottom"]
  GETIMPORT R20 K58 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K62 ["PaddingLeft"]
  GETIMPORT R20 K58 [UDim.new]
  LOADN R21 0
  LOADN R22 10
  CALL R20 2 1
  SETTABLEKS R20 R19 K63 ["PaddingRight"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K53 ["UIPadding"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K37 ["Image"]
  DUPTABLE R19 K66 [{"LayoutOrder", "Image", "ImageColor3", "Size"}]
  NAMECALL R20 R2 K36 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K32 ["LayoutOrder"]
  LOADK R20 K67 ["rbxassetid://6022668945"]
  SETTABLEKS R20 R19 K37 ["Image"]
  GETTABLEKS R20 R1 K68 ["IconColor"]
  SETTABLEKS R20 R19 K65 ["ImageColor3"]
  GETTABLEKS R20 R1 K69 ["ImageSize"]
  SETTABLEKS R20 R19 K42 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K37 ["Image"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K47 ["Frame"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["UI"]
  GETTABLEKS R14 R15 K70 ["TextLabel"]
  DUPTABLE R15 K105 [{"AutomaticSize", "LayoutOrder", "TextWrapped", "FontFace", "Text"}]
  GETIMPORT R16 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K30 ["AutomaticSize"]
  NAMECALL R16 R2 K36 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K32 ["LayoutOrder"]
  LOADB R16 1
  SETTABLEKS R16 R15 K71 ["TextWrapped"]
  GETTABLEKS R16 R1 K72 ["FontFace"]
  SETTABLEKS R16 R15 K72 ["FontFace"]
  LOADK R18 K76 ["SelectScreen"]
  LOADK R19 K103 ["SelectHint"]
  NAMECALL R16 R0 K77 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K73 ["Text"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K103 ["SelectHint"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["UI"]
  GETTABLEKS R14 R15 K13 ["Pane"]
  DUPTABLE R15 K79 [{"Layout", "HorizontalAlignment", "Spacing", "LayoutOrder", "AutomaticSize"}]
  GETIMPORT R16 K107 [Enum.FillDirection.Horizontal]
  SETTABLEKS R16 R15 K17 ["Layout"]
  GETIMPORT R16 K26 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R16 R15 K18 ["HorizontalAlignment"]
  GETTABLEKS R16 R1 K31 ["Spacing"]
  SETTABLEKS R16 R15 K31 ["Spacing"]
  NAMECALL R16 R2 K36 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K32 ["LayoutOrder"]
  GETIMPORT R16 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K30 ["AutomaticSize"]
  DUPTABLE R16 K111 [{"LeftLabel", "OrLabel", "RightLabel"}]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K47 ["Frame"]
  DUPTABLE R19 K112 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
  NAMECALL R20 R2 K36 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K32 ["LayoutOrder"]
  GETTABLEKS R20 R1 K113 ["LineColor"]
  SETTABLEKS R20 R19 K48 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K49 ["BorderSizePixel"]
  GETTABLEKS R20 R1 K114 ["LineSize"]
  SETTABLEKS R20 R19 K42 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K108 ["LeftLabel"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  GETUPVAL R20 0
  GETTABLEKS R19 R20 K12 ["UI"]
  GETTABLEKS R18 R19 K70 ["TextLabel"]
  DUPTABLE R19 K115 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R20 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R20 R19 K30 ["AutomaticSize"]
  NAMECALL R20 R2 K36 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K32 ["LayoutOrder"]
  LOADK R22 K76 ["SelectScreen"]
  LOADK R23 K116 ["Or"]
  NAMECALL R20 R0 K77 ["getText"]
  CALL R20 3 1
  SETTABLEKS R20 R19 K73 ["Text"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K109 ["OrLabel"]
  GETUPVAL R18 1
  GETTABLEKS R17 R18 K11 ["createElement"]
  LOADK R18 K47 ["Frame"]
  DUPTABLE R19 K112 [{"LayoutOrder", "BackgroundColor3", "BorderSizePixel", "Size"}]
  NAMECALL R20 R2 K36 ["getNextOrder"]
  CALL R20 1 1
  SETTABLEKS R20 R19 K32 ["LayoutOrder"]
  GETTABLEKS R20 R1 K113 ["LineColor"]
  SETTABLEKS R20 R19 K48 ["BackgroundColor3"]
  LOADN R20 0
  SETTABLEKS R20 R19 K49 ["BorderSizePixel"]
  GETTABLEKS R20 R1 K114 ["LineSize"]
  SETTABLEKS R20 R19 K42 ["Size"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K110 ["RightLabel"]
  CALL R13 3 1
  SETTABLEKS R13 R12 K39 ["SplitLabel"]
  GETUPVAL R14 1
  GETTABLEKS R13 R14 K11 ["createElement"]
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K12 ["UI"]
  GETTABLEKS R14 R15 K89 ["IconButton"]
  DUPTABLE R15 K117 [{"AutomaticSize", "LayoutOrder", "Cursor", "OnClick", "Size", "Padding", "Spacing", "Text", "Style"}]
  GETIMPORT R16 K35 [Enum.AutomaticSize.XY]
  SETTABLEKS R16 R15 K30 ["AutomaticSize"]
  NAMECALL R16 R2 K36 ["getNextOrder"]
  CALL R16 1 1
  SETTABLEKS R16 R15 K32 ["LayoutOrder"]
  LOADK R16 K93 ["PointingHand"]
  SETTABLEKS R16 R15 K90 ["Cursor"]
  SETTABLEKS R4 R15 K86 ["OnClick"]
  GETIMPORT R16 K46 [UDim2.fromOffset]
  LOADN R17 0
  GETTABLEKS R18 R1 K118 ["ButtonHeight"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K42 ["Size"]
  LOADN R16 5
  SETTABLEKS R16 R15 K91 ["Padding"]
  LOADN R16 5
  SETTABLEKS R16 R15 K31 ["Spacing"]
  LOADK R18 K76 ["SelectScreen"]
  LOADK R19 K119 ["Import3DFile"]
  NAMECALL R16 R0 K77 ["getText"]
  CALL R16 3 1
  SETTABLEKS R16 R15 K73 ["Text"]
  LOADK R16 K120 ["PrimaryBrand"]
  SETTABLEKS R16 R15 K74 ["Style"]
  CALL R13 2 1
  SETTABLEKS R13 R12 K40 ["Import3D"]
  CALL R9 3 1
  SETTABLEKS R9 R8 K28 ["Buttons"]
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
  GETTABLEKS R7 R8 K16 ["Components"]
  GETTABLEKS R6 R7 K17 ["Background"]
  CALL R5 1 1
  GETIMPORT R6 K9 [require]
  GETTABLEKS R9 R1 K13 ["Src"]
  GETTABLEKS R8 R9 K18 ["Flags"]
  GETTABLEKS R7 R8 K19 ["getFFlagAvatarPreviewerSortClothingUI"]
  CALL R6 1 1
  GETIMPORT R7 K1 [game]
  LOADK R9 K20 ["AvatarPreviewerUseEmptyStateIcon"]
  LOADB R10 0
  NAMECALL R7 R7 K21 ["DefineFastFlag"]
  CALL R7 3 1
  GETIMPORT R8 K1 [game]
  LOADK R10 K22 ["AvatarAutoSetupLearnMoreLink"]
  LOADK R11 K23 ["https://create.roblox.com/docs/avatar-setup"]
  NAMECALL R8 R8 K24 ["DefineFastString"]
  CALL R8 3 1
  DUPCLOSURE R9 K25 [PROTO_3]
  CAPTURE VAL R3
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R5
  CAPTURE VAL R7
  CAPTURE VAL R0
  CAPTURE VAL R8
  RETURN R9 1
