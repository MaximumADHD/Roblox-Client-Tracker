PROTO_0:
  NEWTABLE R1 0 2
  DUPTABLE R2 K3 [{"tag", "priority", "properties"}]
  LOADK R3 K4 ["gui-object-defaults"]
  SETTABLEKS R3 R2 K0 ["tag"]
  LOADN R3 0
  SETTABLEKS R3 R2 K1 ["priority"]
  DUPTABLE R3 K6 [{"BackgroundTransparency"}]
  LOADN R4 1
  SETTABLEKS R4 R3 K5 ["BackgroundTransparency"]
  SETTABLEKS R3 R2 K2 ["properties"]
  DUPTABLE R3 K3 [{"tag", "priority", "properties"}]
  LOADK R4 K7 ["text-defaults"]
  SETTABLEKS R4 R3 K0 ["tag"]
  LOADN R4 0
  SETTABLEKS R4 R3 K1 ["priority"]
  DUPTABLE R4 K9 [{"Font"}]
  GETTABLEKS R7 R0 K10 ["Typography"]
  GETTABLEKS R6 R7 K11 ["BodyLarge"]
  GETTABLEKS R5 R6 K8 ["Font"]
  SETTABLEKS R5 R4 K8 ["Font"]
  SETTABLEKS R4 R3 K2 ["properties"]
  SETLIST R1 R2 2 [1]
  RETURN R1 1

PROTO_1:
  NEWTABLE R1 0 1
  DUPTABLE R2 K3 [{"tag", "priority", "properties"}]
  LOADK R3 K4 ["text-size-defaults"]
  SETTABLEKS R3 R2 K0 ["tag"]
  LOADN R3 0
  SETTABLEKS R3 R2 K1 ["priority"]
  DUPTABLE R3 K7 [{"TextSize", "LineHeight"}]
  GETTABLEKS R6 R0 K8 ["Typography"]
  GETTABLEKS R5 R6 K9 ["BodyLarge"]
  GETTABLEKS R4 R5 K10 ["FontSize"]
  SETTABLEKS R4 R3 K5 ["TextSize"]
  GETTABLEKS R6 R0 K8 ["Typography"]
  GETTABLEKS R5 R6 K9 ["BodyLarge"]
  GETTABLEKS R4 R5 K6 ["LineHeight"]
  SETTABLEKS R4 R3 K6 ["LineHeight"]
  SETTABLEKS R3 R2 K2 ["properties"]
  SETLIST R1 R2 1 [1]
  RETURN R1 1

PROTO_2:
  NEWTABLE R1 0 1
  DUPTABLE R2 K3 [{"tag", "priority", "properties"}]
  LOADK R3 K4 ["text-color-defaults"]
  SETTABLEKS R3 R2 K0 ["tag"]
  LOADN R3 0
  SETTABLEKS R3 R2 K1 ["priority"]
  DUPTABLE R3 K7 [{"TextColor3", "TextTransparency"}]
  GETTABLEKS R7 R0 K8 ["Color"]
  GETTABLEKS R6 R7 K9 ["Content"]
  GETTABLEKS R5 R6 K10 ["Default"]
  GETTABLEKS R4 R5 K11 ["Color3"]
  SETTABLEKS R4 R3 K5 ["TextColor3"]
  GETTABLEKS R7 R0 K8 ["Color"]
  GETTABLEKS R6 R7 K9 ["Content"]
  GETTABLEKS R5 R6 K10 ["Default"]
  GETTABLEKS R4 R5 K12 ["Transparency"]
  SETTABLEKS R4 R3 K6 ["TextTransparency"]
  SETTABLEKS R3 R2 K2 ["properties"]
  SETLIST R1 R2 1 [1]
  RETURN R1 1

PROTO_3:
  NEWTABLE R0 0 1
  DUPTABLE R1 K2 [{"tag", "properties"}]
  LOADK R2 K3 ["x-default-transparency"]
  SETTABLEKS R2 R1 K0 ["tag"]
  DUPTABLE R2 K5 [{"BackgroundTransparency"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K4 ["BackgroundTransparency"]
  SETTABLEKS R2 R1 K1 ["properties"]
  SETLIST R0 R1 1 [1]
  RETURN R0 1

PROTO_4:
  NEWTABLE R0 0 2
  DUPTABLE R1 K3 [{"tag", "pseudo", "properties"}]
  LOADK R2 K4 ["row"]
  SETTABLEKS R2 R1 K0 ["tag"]
  LOADK R2 K5 ["UIListLayout"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  DUPTABLE R2 K8 [{"FillDirection", "SortOrder"}]
  GETIMPORT R3 K11 [Enum.FillDirection.Horizontal]
  SETTABLEKS R3 R2 K6 ["FillDirection"]
  GETIMPORT R3 K13 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R3 R2 K7 ["SortOrder"]
  SETTABLEKS R2 R1 K2 ["properties"]
  DUPTABLE R2 K3 [{"tag", "pseudo", "properties"}]
  LOADK R3 K14 ["col"]
  SETTABLEKS R3 R2 K0 ["tag"]
  LOADK R3 K5 ["UIListLayout"]
  SETTABLEKS R3 R2 K1 ["pseudo"]
  DUPTABLE R3 K8 [{"FillDirection", "SortOrder"}]
  GETIMPORT R4 K16 [Enum.FillDirection.Vertical]
  SETTABLEKS R4 R3 K6 ["FillDirection"]
  GETIMPORT R4 K13 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R4 R3 K7 ["SortOrder"]
  SETTABLEKS R3 R2 K2 ["properties"]
  SETLIST R0 R1 2 [1]
  NEWTABLE R1 0 6
  DUPTABLE R2 K3 [{"tag", "pseudo", "properties"}]
  LOADK R3 K17 ["align-x-left"]
  SETTABLEKS R3 R2 K0 ["tag"]
  LOADK R3 K5 ["UIListLayout"]
  SETTABLEKS R3 R2 K1 ["pseudo"]
  DUPTABLE R3 K19 [{"HorizontalAlignment"}]
  GETIMPORT R4 K21 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R4 R3 K18 ["HorizontalAlignment"]
  SETTABLEKS R3 R2 K2 ["properties"]
  DUPTABLE R3 K3 [{"tag", "pseudo", "properties"}]
  LOADK R4 K22 ["align-x-center"]
  SETTABLEKS R4 R3 K0 ["tag"]
  LOADK R4 K5 ["UIListLayout"]
  SETTABLEKS R4 R3 K1 ["pseudo"]
  DUPTABLE R4 K19 [{"HorizontalAlignment"}]
  GETIMPORT R5 K24 [Enum.HorizontalAlignment.Center]
  SETTABLEKS R5 R4 K18 ["HorizontalAlignment"]
  SETTABLEKS R4 R3 K2 ["properties"]
  DUPTABLE R4 K3 [{"tag", "pseudo", "properties"}]
  LOADK R5 K25 ["align-x-right"]
  SETTABLEKS R5 R4 K0 ["tag"]
  LOADK R5 K5 ["UIListLayout"]
  SETTABLEKS R5 R4 K1 ["pseudo"]
  DUPTABLE R5 K19 [{"HorizontalAlignment"}]
  GETIMPORT R6 K27 [Enum.HorizontalAlignment.Right]
  SETTABLEKS R6 R5 K18 ["HorizontalAlignment"]
  SETTABLEKS R5 R4 K2 ["properties"]
  DUPTABLE R5 K3 [{"tag", "pseudo", "properties"}]
  LOADK R6 K28 ["align-y-top"]
  SETTABLEKS R6 R5 K0 ["tag"]
  LOADK R6 K5 ["UIListLayout"]
  SETTABLEKS R6 R5 K1 ["pseudo"]
  DUPTABLE R6 K30 [{"VerticalAlignment"}]
  GETIMPORT R7 K32 [Enum.VerticalAlignment.Top]
  SETTABLEKS R7 R6 K29 ["VerticalAlignment"]
  SETTABLEKS R6 R5 K2 ["properties"]
  DUPTABLE R6 K3 [{"tag", "pseudo", "properties"}]
  LOADK R7 K33 ["align-y-center"]
  SETTABLEKS R7 R6 K0 ["tag"]
  LOADK R7 K5 ["UIListLayout"]
  SETTABLEKS R7 R6 K1 ["pseudo"]
  DUPTABLE R7 K30 [{"VerticalAlignment"}]
  GETIMPORT R8 K34 [Enum.VerticalAlignment.Center]
  SETTABLEKS R8 R7 K29 ["VerticalAlignment"]
  SETTABLEKS R7 R6 K2 ["properties"]
  DUPTABLE R7 K3 [{"tag", "pseudo", "properties"}]
  LOADK R8 K35 ["align-y-bottom"]
  SETTABLEKS R8 R7 K0 ["tag"]
  LOADK R8 K5 ["UIListLayout"]
  SETTABLEKS R8 R7 K1 ["pseudo"]
  DUPTABLE R8 K30 [{"VerticalAlignment"}]
  GETIMPORT R9 K37 [Enum.VerticalAlignment.Bottom]
  SETTABLEKS R9 R8 K29 ["VerticalAlignment"]
  SETTABLEKS R8 R7 K2 ["properties"]
  SETLIST R1 R2 6 [1]
  NEWTABLE R2 0 2
  DUPTABLE R3 K3 [{"tag", "pseudo", "properties"}]
  LOADK R4 K38 ["wrap"]
  SETTABLEKS R4 R3 K0 ["tag"]
  LOADK R4 K5 ["UIListLayout"]
  SETTABLEKS R4 R3 K1 ["pseudo"]
  DUPTABLE R4 K40 [{"Wraps"}]
  LOADB R5 1
  SETTABLEKS R5 R4 K39 ["Wraps"]
  SETTABLEKS R4 R3 K2 ["properties"]
  DUPTABLE R4 K3 [{"tag", "pseudo", "properties"}]
  LOADK R5 K41 ["no-wrap"]
  SETTABLEKS R5 R4 K0 ["tag"]
  LOADK R5 K5 ["UIListLayout"]
  SETTABLEKS R5 R4 K1 ["pseudo"]
  DUPTABLE R5 K40 [{"Wraps"}]
  LOADB R6 0
  SETTABLEKS R6 R5 K39 ["Wraps"]
  SETTABLEKS R5 R4 K2 ["properties"]
  SETLIST R2 R3 2 [1]
  NEWTABLE R3 0 0
  DUPTABLE R4 K47 [{"none", "fill", "around", "between", "evenly"}]
  GETIMPORT R5 K50 [Enum.UIFlexAlignment.None]
  SETTABLEKS R5 R4 K42 ["none"]
  GETIMPORT R5 K52 [Enum.UIFlexAlignment.Fill]
  SETTABLEKS R5 R4 K43 ["fill"]
  GETIMPORT R5 K54 [Enum.UIFlexAlignment.SpaceAround]
  SETTABLEKS R5 R4 K44 ["around"]
  GETIMPORT R5 K56 [Enum.UIFlexAlignment.SpaceBetween]
  SETTABLEKS R5 R4 K45 ["between"]
  GETIMPORT R5 K58 [Enum.UIFlexAlignment.SpaceEvenly]
  SETTABLEKS R5 R4 K46 ["evenly"]
  MOVE R5 R4
  LOADNIL R6
  LOADNIL R7
  FORGPREP R5
  DUPTABLE R12 K3 [{"tag", "pseudo", "properties"}]
  LOADK R14 K59 ["flex-%*"]
  MOVE R16 R8
  NAMECALL R14 R14 K60 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLEKS R13 R12 K0 ["tag"]
  LOADK R13 K5 ["UIListLayout"]
  SETTABLEKS R13 R12 K1 ["pseudo"]
  DUPTABLE R13 K63 [{"HorizontalFlex", "VerticalFlex"}]
  SETTABLEKS R9 R13 K61 ["HorizontalFlex"]
  SETTABLEKS R9 R13 K62 ["VerticalFlex"]
  SETTABLEKS R13 R12 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R3 R12 [+4]
  MOVE R11 R3
  GETIMPORT R10 K66 [table.insert]
  CALL R10 2 0
  DUPTABLE R12 K3 [{"tag", "pseudo", "properties"}]
  LOADK R14 K67 ["flex-x-%*"]
  MOVE R16 R8
  NAMECALL R14 R14 K60 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLEKS R13 R12 K0 ["tag"]
  LOADK R13 K5 ["UIListLayout"]
  SETTABLEKS R13 R12 K1 ["pseudo"]
  DUPTABLE R13 K68 [{"HorizontalFlex"}]
  SETTABLEKS R9 R13 K61 ["HorizontalFlex"]
  SETTABLEKS R13 R12 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R3 R12 [+4]
  MOVE R11 R3
  GETIMPORT R10 K66 [table.insert]
  CALL R10 2 0
  DUPTABLE R12 K3 [{"tag", "pseudo", "properties"}]
  LOADK R14 K69 ["flex-y-%*"]
  MOVE R16 R8
  NAMECALL R14 R14 K60 ["format"]
  CALL R14 2 1
  MOVE R13 R14
  SETTABLEKS R13 R12 K0 ["tag"]
  LOADK R13 K5 ["UIListLayout"]
  SETTABLEKS R13 R12 K1 ["pseudo"]
  DUPTABLE R13 K70 [{"VerticalFlex"}]
  SETTABLEKS R9 R13 K62 ["VerticalFlex"]
  SETTABLEKS R13 R12 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R3 R12 [+4]
  MOVE R11 R3
  GETIMPORT R10 K66 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-72]
  NEWTABLE R5 8 0
  GETIMPORT R6 K73 [Enum.ItemLineAlignment.Automatic]
  SETTABLEKS R6 R5 K74 ["auto"]
  GETIMPORT R6 K76 [Enum.ItemLineAlignment.Start]
  SETTABLEKS R6 R5 K77 ["start"]
  GETIMPORT R6 K78 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R6 R5 K79 ["center"]
  GETIMPORT R6 K81 [Enum.ItemLineAlignment.End]
  SETTABLEKS R6 R5 K82 ["end"]
  GETIMPORT R6 K84 [Enum.ItemLineAlignment.Stretch]
  SETTABLEKS R6 R5 K85 ["stretch"]
  NEWTABLE R6 0 0
  MOVE R7 R5
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  DUPTABLE R14 K3 [{"tag", "pseudo", "properties"}]
  LOADK R16 K86 ["items-%*"]
  MOVE R18 R10
  NAMECALL R16 R16 K60 ["format"]
  CALL R16 2 1
  MOVE R15 R16
  SETTABLEKS R15 R14 K0 ["tag"]
  LOADK R15 K5 ["UIListLayout"]
  SETTABLEKS R15 R14 K1 ["pseudo"]
  DUPTABLE R15 K87 [{"ItemLineAlignment"}]
  SETTABLEKS R11 R15 K71 ["ItemLineAlignment"]
  SETTABLEKS R15 R14 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R6 R14 [+4]
  MOVE R13 R6
  GETIMPORT R12 K66 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-24]
  GETUPVAL R9 0
  GETTABLEKS R8 R9 K88 ["List"]
  GETTABLEKS R7 R8 K89 ["join"]
  MOVE R8 R0
  MOVE R9 R1
  MOVE R10 R2
  MOVE R11 R3
  MOVE R12 R6
  CALL R7 5 -1
  RETURN R7 -1

PROTO_5:
  NEWTABLE R2 0 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R10 K3 [{"tag", "pseudo", "properties"}]
  LOADK R12 K4 ["gap-%*"]
  GETTABLEKS R14 R7 K5 ["name"]
  NAMECALL R12 R12 K6 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  SETTABLEKS R11 R10 K0 ["tag"]
  LOADK R11 K7 ["UIListLayout"]
  SETTABLEKS R11 R10 K1 ["pseudo"]
  DUPTABLE R11 K9 [{"Padding"}]
  GETTABLEKS R12 R7 K10 ["size"]
  SETTABLEKS R12 R11 K8 ["Padding"]
  SETTABLEKS R11 R10 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K13 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-27]
  NEWTABLE R3 0 0
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  DUPTABLE R11 K3 [{"tag", "pseudo", "properties"}]
  LOADK R13 K14 ["gutter-%*"]
  GETTABLEKS R15 R8 K5 ["name"]
  NAMECALL R13 R13 K6 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K0 ["tag"]
  LOADK R12 K7 ["UIListLayout"]
  SETTABLEKS R12 R11 K1 ["pseudo"]
  DUPTABLE R12 K9 [{"Padding"}]
  GETTABLEKS R13 R8 K10 ["size"]
  SETTABLEKS R13 R12 K8 ["Padding"]
  SETTABLEKS R12 R11 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K13 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-27]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K15 ["List"]
  GETTABLEKS R4 R5 K16 ["join"]
  MOVE R5 R2
  MOVE R6 R3
  CALL R4 2 -1
  RETURN R4 -1

PROTO_6:
  NEWTABLE R0 0 3
  DUPTABLE R1 K3 [{"tag", "pseudo", "properties"}]
  LOADK R2 K4 ["grow"]
  SETTABLEKS R2 R1 K0 ["tag"]
  LOADK R2 K5 ["UIFlexItem"]
  SETTABLEKS R2 R1 K1 ["pseudo"]
  DUPTABLE R2 K7 [{"FlexMode"}]
  GETIMPORT R3 K11 [Enum.UIFlexMode.Grow]
  SETTABLEKS R3 R2 K6 ["FlexMode"]
  SETTABLEKS R2 R1 K2 ["properties"]
  DUPTABLE R2 K3 [{"tag", "pseudo", "properties"}]
  LOADK R3 K12 ["shrink"]
  SETTABLEKS R3 R2 K0 ["tag"]
  LOADK R3 K5 ["UIFlexItem"]
  SETTABLEKS R3 R2 K1 ["pseudo"]
  DUPTABLE R3 K7 [{"FlexMode"}]
  GETIMPORT R4 K14 [Enum.UIFlexMode.Shrink]
  SETTABLEKS R4 R3 K6 ["FlexMode"]
  SETTABLEKS R3 R2 K2 ["properties"]
  DUPTABLE R3 K3 [{"tag", "pseudo", "properties"}]
  LOADK R4 K15 ["fill"]
  SETTABLEKS R4 R3 K0 ["tag"]
  LOADK R4 K5 ["UIFlexItem"]
  SETTABLEKS R4 R3 K1 ["pseudo"]
  DUPTABLE R4 K7 [{"FlexMode"}]
  GETIMPORT R5 K17 [Enum.UIFlexMode.Fill]
  SETTABLEKS R5 R4 K6 ["FlexMode"]
  SETTABLEKS R4 R3 K2 ["properties"]
  SETLIST R0 R1 3 [1]
  NEWTABLE R1 0 5
  LOADN R2 1
  LOADN R3 2
  LOADN R4 3
  LOADN R5 4
  LOADN R6 5
  SETLIST R1 R2 5 [1]
  NEWTABLE R2 0 0
  NEWTABLE R3 0 0
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  DUPTABLE R11 K3 [{"tag", "pseudo", "properties"}]
  LOADK R13 K18 ["grow-%*"]
  MOVE R15 R7
  NAMECALL R13 R13 K19 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K0 ["tag"]
  LOADK R12 K5 ["UIFlexItem"]
  SETTABLEKS R12 R11 K1 ["pseudo"]
  DUPTABLE R12 K21 [{"FlexMode", "GrowRatio"}]
  GETIMPORT R13 K23 [Enum.UIFlexMode.Custom]
  SETTABLEKS R13 R12 K6 ["FlexMode"]
  SETTABLEKS R7 R12 K20 ["GrowRatio"]
  SETTABLEKS R12 R11 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R11 [+4]
  MOVE R10 R2
  GETIMPORT R9 K26 [table.insert]
  CALL R9 2 0
  DUPTABLE R11 K3 [{"tag", "pseudo", "properties"}]
  LOADK R13 K27 ["shrink-%*"]
  MOVE R15 R7
  NAMECALL R13 R13 K19 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K0 ["tag"]
  LOADK R12 K5 ["UIFlexItem"]
  SETTABLEKS R12 R11 K1 ["pseudo"]
  DUPTABLE R12 K29 [{"FlexMode", "ShrinkRatio"}]
  GETIMPORT R13 K23 [Enum.UIFlexMode.Custom]
  SETTABLEKS R13 R12 K6 ["FlexMode"]
  SETTABLEKS R7 R12 K28 ["ShrinkRatio"]
  SETTABLEKS R12 R11 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R3 R11 [+4]
  MOVE R10 R3
  GETIMPORT R9 K26 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 1 [-55]
  NEWTABLE R4 8 0
  GETIMPORT R5 K32 [Enum.ItemLineAlignment.Automatic]
  SETTABLEKS R5 R4 K33 ["auto"]
  GETIMPORT R5 K35 [Enum.ItemLineAlignment.Start]
  SETTABLEKS R5 R4 K36 ["start"]
  GETIMPORT R5 K38 [Enum.ItemLineAlignment.Center]
  SETTABLEKS R5 R4 K39 ["center"]
  GETIMPORT R5 K41 [Enum.ItemLineAlignment.End]
  SETTABLEKS R5 R4 K42 ["end"]
  GETIMPORT R5 K44 [Enum.ItemLineAlignment.Stretch]
  SETTABLEKS R5 R4 K45 ["stretch"]
  NEWTABLE R5 0 0
  MOVE R6 R4
  LOADNIL R7
  LOADNIL R8
  FORGPREP R6
  DUPTABLE R13 K3 [{"tag", "pseudo", "properties"}]
  LOADK R15 K46 ["self-%*"]
  MOVE R17 R9
  NAMECALL R15 R15 K19 ["format"]
  CALL R15 2 1
  MOVE R14 R15
  SETTABLEKS R14 R13 K0 ["tag"]
  LOADK R14 K5 ["UIFlexItem"]
  SETTABLEKS R14 R13 K1 ["pseudo"]
  DUPTABLE R14 K47 [{"ItemLineAlignment"}]
  SETTABLEKS R10 R14 K30 ["ItemLineAlignment"]
  SETTABLEKS R14 R13 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R5 R13 [+4]
  MOVE R12 R5
  GETIMPORT R11 K26 [table.insert]
  CALL R11 2 0
  FORGLOOP R6 2 [-24]
  GETUPVAL R8 0
  GETTABLEKS R7 R8 K48 ["List"]
  GETTABLEKS R6 R7 K49 ["join"]
  MOVE R7 R0
  MOVE R8 R2
  MOVE R9 R3
  MOVE R10 R5
  CALL R6 4 -1
  RETURN R6 -1

PROTO_7:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R9 K3 [{"tag", "pseudo", "properties"}]
  LOADK R11 K4 ["radius-%*"]
  GETTABLEKS R13 R6 K5 ["name"]
  NAMECALL R11 R11 K6 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K0 ["tag"]
  LOADK R10 K7 ["UICorner"]
  SETTABLEKS R10 R9 K1 ["pseudo"]
  DUPTABLE R10 K9 [{"CornerRadius"}]
  GETTABLEKS R11 R6 K10 ["size"]
  SETTABLEKS R11 R10 K8 ["CornerRadius"]
  SETTABLEKS R10 R9 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K13 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-27]
  RETURN R1 1

PROTO_8:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R9 K2 [{"tag", "properties"}]
  LOADK R11 K3 ["size-%*"]
  GETTABLEKS R13 R6 K4 ["name"]
  NAMECALL R11 R11 K5 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K0 ["tag"]
  DUPTABLE R10 K7 [{"Size"}]
  GETIMPORT R11 K10 [UDim2.new]
  GETTABLEKS R12 R6 K11 ["size"]
  GETTABLEKS R13 R6 K11 ["size"]
  CALL R11 2 1
  SETTABLEKS R11 R10 K6 ["Size"]
  SETTABLEKS R10 R9 K1 ["properties"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K14 [table.insert]
  CALL R7 2 0
  MOVE R7 R0
  LOADNIL R8
  LOADNIL R9
  FORGPREP R7
  DUPTABLE R14 K2 [{"tag", "properties"}]
  LOADK R16 K15 ["size-%*-%*"]
  GETTABLEKS R18 R6 K4 ["name"]
  GETTABLEKS R19 R11 K4 ["name"]
  NAMECALL R16 R16 K5 ["format"]
  CALL R16 3 1
  MOVE R15 R16
  SETTABLEKS R15 R14 K0 ["tag"]
  DUPTABLE R15 K7 [{"Size"}]
  GETIMPORT R16 K10 [UDim2.new]
  GETTABLEKS R17 R6 K11 ["size"]
  GETTABLEKS R18 R11 K11 ["size"]
  CALL R16 2 1
  SETTABLEKS R16 R15 K6 ["Size"]
  SETTABLEKS R15 R14 K1 ["properties"]
  FASTCALL2 TABLE_INSERT R1 R14 [+4]
  MOVE R13 R1
  GETIMPORT R12 K14 [table.insert]
  CALL R12 2 0
  FORGLOOP R7 2 [-31]
  FORGLOOP R2 2 [-65]
  RETURN R1 1

PROTO_9:
  NEWTABLE R2 0 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETIMPORT R8 K2 [table.find]
  GETUPVAL R10 0
  GETTABLE R9 R10 R6
  LOADK R10 K3 ["bg"]
  CALL R8 2 1
  JUMPIFNOT R8 [+32]
  MOVE R8 R7
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  DUPTABLE R15 K6 [{"tag", "properties"}]
  LOADK R17 K7 ["bg-%*"]
  MOVE R19 R11
  NAMECALL R17 R17 K8 ["format"]
  CALL R17 2 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K4 ["tag"]
  DUPTABLE R16 K11 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R17 R12 K12 ["Color3"]
  SETTABLEKS R17 R16 K9 ["BackgroundColor3"]
  GETTABLEKS R17 R12 K13 ["Transparency"]
  SETTABLEKS R17 R16 K10 ["BackgroundTransparency"]
  SETTABLEKS R16 R15 K5 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R15 [+4]
  MOVE R14 R2
  GETIMPORT R13 K15 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [-27]
  FORGLOOP R3 2 [-40]
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R10 K6 [{"tag", "properties"}]
  LOADK R12 K7 ["bg-%*"]
  MOVE R14 R6
  NAMECALL R12 R12 K8 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  SETTABLEKS R11 R10 K4 ["tag"]
  DUPTABLE R11 K11 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R13 R7 K16 ["Background"]
  GETTABLEKS R12 R13 K12 ["Color3"]
  SETTABLEKS R12 R11 K9 ["BackgroundColor3"]
  GETTABLEKS R13 R7 K16 ["Background"]
  GETTABLEKS R12 R13 K13 ["Transparency"]
  SETTABLEKS R12 R11 K10 ["BackgroundTransparency"]
  SETTABLEKS R11 R10 K5 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K15 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-31]
  RETURN R2 1

PROTO_10:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETTABLEKS R7 R6 K0 ["name"]
  JUMPIFEQKS R7 K1 ["none"] [+27]
  DUPTABLE R9 K5 [{"tag", "pseudo", "properties"}]
  LOADK R11 K6 ["stroke-%*"]
  GETTABLEKS R13 R6 K0 ["name"]
  NAMECALL R11 R11 K7 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K2 ["tag"]
  LOADK R10 K8 ["UIStroke"]
  SETTABLEKS R10 R9 K3 ["pseudo"]
  DUPTABLE R10 K10 [{"Thickness"}]
  GETTABLEKS R11 R6 K11 ["size"]
  SETTABLEKS R11 R10 K9 ["Thickness"]
  SETTABLEKS R10 R9 K4 ["properties"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K14 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-31]
  RETURN R1 1

PROTO_11:
  NEWTABLE R2 0 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETIMPORT R8 K2 [table.find]
  GETUPVAL R10 0
  GETTABLE R9 R10 R6
  LOADK R10 K3 ["stroke"]
  CALL R8 2 1
  JUMPIFNOT R8 [+35]
  MOVE R8 R7
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  DUPTABLE R15 K7 [{"tag", "pseudo", "properties"}]
  LOADK R17 K8 ["stroke-%*"]
  MOVE R19 R11
  NAMECALL R17 R17 K9 ["format"]
  CALL R17 2 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K4 ["tag"]
  LOADK R16 K10 ["UIStroke"]
  SETTABLEKS R16 R15 K5 ["pseudo"]
  DUPTABLE R16 K13 [{"Color", "Transparency"}]
  GETTABLEKS R17 R12 K14 ["Color3"]
  SETTABLEKS R17 R16 K11 ["Color"]
  GETTABLEKS R17 R12 K12 ["Transparency"]
  SETTABLEKS R17 R16 K12 ["Transparency"]
  SETTABLEKS R16 R15 K6 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R15 [+4]
  MOVE R14 R2
  GETIMPORT R13 K16 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [-30]
  FORGLOOP R3 2 [-43]
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R10 K7 [{"tag", "pseudo", "properties"}]
  LOADK R12 K8 ["stroke-%*"]
  MOVE R14 R6
  NAMECALL R12 R12 K9 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  SETTABLEKS R11 R10 K4 ["tag"]
  LOADK R11 K10 ["UIStroke"]
  SETTABLEKS R11 R10 K5 ["pseudo"]
  DUPTABLE R11 K13 [{"Color", "Transparency"}]
  GETTABLEKS R13 R7 K17 ["Border"]
  GETTABLEKS R12 R13 K14 ["Color3"]
  SETTABLEKS R12 R11 K11 ["Color"]
  GETTABLEKS R13 R7 K17 ["Border"]
  GETTABLEKS R12 R13 K12 ["Transparency"]
  SETTABLEKS R12 R11 K12 ["Transparency"]
  SETTABLEKS R11 R10 K6 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K16 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-34]
  RETURN R2 1

PROTO_12:
  NEWTABLE R2 0 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETIMPORT R8 K2 [table.find]
  GETUPVAL R10 0
  GETTABLE R9 R10 R6
  LOADK R10 K3 ["content"]
  CALL R8 2 1
  JUMPIFNOT R8 [+40]
  MOVE R8 R7
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  DUPTABLE R15 K6 [{"tag", "properties"}]
  LOADK R17 K7 ["content-%*"]
  MOVE R19 R11
  NAMECALL R17 R17 K8 ["format"]
  CALL R17 2 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K4 ["tag"]
  DUPTABLE R16 K13 [{"ImageColor3", "ImageTransparency", "TextColor3", "TextTransparency"}]
  GETTABLEKS R17 R12 K14 ["Color3"]
  SETTABLEKS R17 R16 K9 ["ImageColor3"]
  GETTABLEKS R17 R12 K15 ["Transparency"]
  SETTABLEKS R17 R16 K10 ["ImageTransparency"]
  GETTABLEKS R17 R12 K14 ["Color3"]
  SETTABLEKS R17 R16 K11 ["TextColor3"]
  GETTABLEKS R17 R12 K15 ["Transparency"]
  SETTABLEKS R17 R16 K12 ["TextTransparency"]
  SETTABLEKS R16 R15 K5 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R15 [+4]
  MOVE R14 R2
  GETIMPORT R13 K17 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [-35]
  FORGLOOP R3 2 [-48]
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R10 K6 [{"tag", "properties"}]
  LOADK R12 K7 ["content-%*"]
  MOVE R14 R6
  NAMECALL R12 R12 K8 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  SETTABLEKS R11 R10 K4 ["tag"]
  DUPTABLE R11 K13 [{"ImageColor3", "ImageTransparency", "TextColor3", "TextTransparency"}]
  GETTABLEKS R13 R7 K18 ["Foreground"]
  GETTABLEKS R12 R13 K14 ["Color3"]
  SETTABLEKS R12 R11 K9 ["ImageColor3"]
  GETTABLEKS R13 R7 K18 ["Foreground"]
  GETTABLEKS R12 R13 K15 ["Transparency"]
  SETTABLEKS R12 R11 K10 ["ImageTransparency"]
  GETTABLEKS R13 R7 K18 ["Foreground"]
  GETTABLEKS R12 R13 K14 ["Color3"]
  SETTABLEKS R12 R11 K11 ["TextColor3"]
  GETTABLEKS R13 R7 K18 ["Foreground"]
  GETTABLEKS R12 R13 K15 ["Transparency"]
  SETTABLEKS R12 R11 K12 ["TextTransparency"]
  SETTABLEKS R11 R10 K5 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R10 [+4]
  MOVE R9 R2
  GETIMPORT R8 K17 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-43]
  RETURN R2 1

PROTO_13:
  NEWTABLE R2 0 0
  MOVE R3 R0
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  GETTABLEKS R9 R7 K0 ["TextSize"]
  DIV R8 R9 R1
  GETTABLEKS R10 R7 K1 ["LineHeight"]
  MUL R9 R10 R1
  MUL R11 R8 R9
  GETTABLEKS R12 R7 K0 ["TextSize"]
  SUB R10 R11 R12
  GETIMPORT R11 K4 [UDim.new]
  LOADN R12 0
  DIVK R13 R10 K5 [2]
  CALL R11 2 1
  DUPTABLE R14 K9 [{"tag", "properties", "children"}]
  LOADK R16 K10 ["text-%*"]
  MOVE R18 R6
  NAMECALL R16 R16 K11 ["format"]
  CALL R16 2 1
  MOVE R15 R16
  SETTABLEKS R15 R14 K6 ["tag"]
  SETTABLEKS R7 R14 K7 ["properties"]
  NEWTABLE R15 0 1
  DUPTABLE R16 K13 [{"tag", "pseudo", "properties"}]
  LOADK R18 K10 ["text-%*"]
  MOVE R20 R6
  NAMECALL R18 R18 K11 ["format"]
  CALL R18 2 1
  MOVE R17 R18
  SETTABLEKS R17 R16 K6 ["tag"]
  LOADK R17 K14 ["UIPadding"]
  SETTABLEKS R17 R16 K12 ["pseudo"]
  DUPTABLE R17 K17 [{"PaddingTop", "PaddingBottom"}]
  SETTABLEKS R11 R17 K15 ["PaddingTop"]
  SETTABLEKS R11 R17 K16 ["PaddingBottom"]
  SETTABLEKS R17 R16 K7 ["properties"]
  SETLIST R15 R16 1 [1]
  SETTABLEKS R15 R14 K8 ["children"]
  FASTCALL2 TABLE_INSERT R2 R14 [+4]
  MOVE R13 R2
  GETIMPORT R12 K20 [table.insert]
  CALL R12 2 0
  FORGLOOP R3 2 [-58]
  RETURN R2 1

PROTO_14:
  NEWTABLE R0 0 0
  NEWTABLE R1 4 0
  GETIMPORT R2 K3 [Enum.TextXAlignment.Left]
  SETTABLEKS R2 R1 K4 ["left"]
  GETIMPORT R2 K6 [Enum.TextXAlignment.Center]
  SETTABLEKS R2 R1 K7 ["center"]
  GETIMPORT R2 K9 [Enum.TextXAlignment.Right]
  SETTABLEKS R2 R1 K10 ["right"]
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R9 K13 [{"tag", "properties"}]
  LOADK R11 K14 ["text-align-x-%*"]
  MOVE R13 R5
  NAMECALL R11 R11 K15 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K11 ["tag"]
  DUPTABLE R10 K16 [{"TextXAlignment"}]
  SETTABLEKS R6 R10 K1 ["TextXAlignment"]
  SETTABLEKS R10 R9 K12 ["properties"]
  FASTCALL2 TABLE_INSERT R0 R9 [+4]
  MOVE R8 R0
  GETIMPORT R7 K19 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-21]
  NEWTABLE R2 4 0
  GETIMPORT R3 K22 [Enum.TextYAlignment.Top]
  SETTABLEKS R3 R2 K23 ["top"]
  GETIMPORT R3 K24 [Enum.TextYAlignment.Center]
  SETTABLEKS R3 R2 K7 ["center"]
  GETIMPORT R3 K26 [Enum.TextYAlignment.Bottom]
  SETTABLEKS R3 R2 K27 ["bottom"]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  DUPTABLE R10 K13 [{"tag", "properties"}]
  LOADK R12 K28 ["text-align-y-%*"]
  MOVE R14 R6
  NAMECALL R12 R12 K15 ["format"]
  CALL R12 2 1
  MOVE R11 R12
  SETTABLEKS R11 R10 K11 ["tag"]
  DUPTABLE R11 K29 [{"TextYAlignment"}]
  SETTABLEKS R7 R11 K20 ["TextYAlignment"]
  SETTABLEKS R11 R10 K12 ["properties"]
  FASTCALL2 TABLE_INSERT R0 R10 [+4]
  MOVE R9 R0
  GETIMPORT R8 K19 [table.insert]
  CALL R8 2 0
  FORGLOOP R3 2 [-21]
  NEWTABLE R3 4 0
  GETIMPORT R4 K32 [Enum.TextTruncate.None]
  SETTABLEKS R4 R3 K33 ["none"]
  GETIMPORT R4 K35 [Enum.TextTruncate.AtEnd]
  SETTABLEKS R4 R3 K36 ["end"]
  GETIMPORT R4 K38 [Enum.TextTruncate.SplitWord]
  SETTABLEKS R4 R3 K39 ["split"]
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  DUPTABLE R11 K13 [{"tag", "properties"}]
  LOADK R13 K40 ["text-truncate-%*"]
  MOVE R15 R7
  NAMECALL R13 R13 K15 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K11 ["tag"]
  DUPTABLE R12 K41 [{"TextTruncate"}]
  SETTABLEKS R8 R12 K30 ["TextTruncate"]
  SETTABLEKS R12 R11 K12 ["properties"]
  FASTCALL2 TABLE_INSERT R0 R11 [+4]
  MOVE R10 R0
  GETIMPORT R9 K19 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-21]
  DUPTABLE R6 K13 [{"tag", "properties"}]
  LOADK R7 K42 ["text-wrap"]
  SETTABLEKS R7 R6 K11 ["tag"]
  DUPTABLE R7 K44 [{"TextWrapped"}]
  LOADB R8 1
  SETTABLEKS R8 R7 K43 ["TextWrapped"]
  SETTABLEKS R7 R6 K12 ["properties"]
  FASTCALL2 TABLE_INSERT R0 R6 [+4]
  MOVE R5 R0
  GETIMPORT R4 K19 [table.insert]
  CALL R4 2 0
  DUPTABLE R6 K13 [{"tag", "properties"}]
  LOADK R7 K45 ["text-no-wrap"]
  SETTABLEKS R7 R6 K11 ["tag"]
  DUPTABLE R7 K44 [{"TextWrapped"}]
  LOADB R8 0
  SETTABLEKS R8 R7 K43 ["TextWrapped"]
  SETTABLEKS R7 R6 K12 ["properties"]
  FASTCALL2 TABLE_INSERT R0 R6 [+4]
  MOVE R5 R0
  GETIMPORT R4 K19 [table.insert]
  CALL R4 2 0
  RETURN R0 1

PROTO_15:
  NEWTABLE R2 0 0
  DUPTABLE R3 K6 [{"x", "y", "top", "bottom", "left", "right"}]
  NEWTABLE R4 0 2
  LOADK R5 K7 ["PaddingLeft"]
  LOADK R6 K8 ["PaddingRight"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K0 ["x"]
  NEWTABLE R4 0 2
  LOADK R5 K9 ["PaddingTop"]
  LOADK R6 K10 ["PaddingBottom"]
  SETLIST R4 R5 2 [1]
  SETTABLEKS R4 R3 K1 ["y"]
  NEWTABLE R4 0 1
  LOADK R5 K9 ["PaddingTop"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K2 ["top"]
  NEWTABLE R4 0 1
  LOADK R5 K10 ["PaddingBottom"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K3 ["bottom"]
  NEWTABLE R4 0 1
  LOADK R5 K7 ["PaddingLeft"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K4 ["left"]
  NEWTABLE R4 0 1
  LOADK R5 K8 ["PaddingRight"]
  SETLIST R4 R5 1 [1]
  SETTABLEKS R4 R3 K5 ["right"]
  MOVE R4 R0
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  DUPTABLE R11 K14 [{"tag", "pseudo", "properties"}]
  LOADK R13 K15 ["padding-%*"]
  GETTABLEKS R15 R8 K16 ["name"]
  NAMECALL R13 R13 K17 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K11 ["tag"]
  LOADK R12 K18 ["UIPadding"]
  SETTABLEKS R12 R11 K12 ["pseudo"]
  DUPTABLE R12 K19 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETTABLEKS R13 R8 K20 ["size"]
  SETTABLEKS R13 R12 K9 ["PaddingTop"]
  GETTABLEKS R13 R8 K20 ["size"]
  SETTABLEKS R13 R12 K10 ["PaddingBottom"]
  GETTABLEKS R13 R8 K20 ["size"]
  SETTABLEKS R13 R12 K7 ["PaddingLeft"]
  GETTABLEKS R13 R8 K20 ["size"]
  SETTABLEKS R13 R12 K8 ["PaddingRight"]
  SETTABLEKS R12 R11 K13 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R11 [+4]
  MOVE R10 R2
  GETIMPORT R9 K23 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-39]
  MOVE R4 R1
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  DUPTABLE R11 K14 [{"tag", "pseudo", "properties"}]
  LOADK R13 K24 ["margin-%*"]
  GETTABLEKS R15 R8 K16 ["name"]
  NAMECALL R13 R13 K17 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K11 ["tag"]
  LOADK R12 K18 ["UIPadding"]
  SETTABLEKS R12 R11 K12 ["pseudo"]
  DUPTABLE R12 K19 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETTABLEKS R13 R8 K20 ["size"]
  SETTABLEKS R13 R12 K9 ["PaddingTop"]
  GETTABLEKS R13 R8 K20 ["size"]
  SETTABLEKS R13 R12 K10 ["PaddingBottom"]
  GETTABLEKS R13 R8 K20 ["size"]
  SETTABLEKS R13 R12 K7 ["PaddingLeft"]
  GETTABLEKS R13 R8 K20 ["size"]
  SETTABLEKS R13 R12 K8 ["PaddingRight"]
  SETTABLEKS R12 R11 K13 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R11 [+4]
  MOVE R10 R2
  GETIMPORT R9 K23 [table.insert]
  CALL R9 2 0
  FORGLOOP R4 2 [-39]
  MOVE R4 R3
  LOADNIL R5
  LOADNIL R6
  FORGPREP R4
  MOVE R9 R0
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  NEWTABLE R14 0 0
  MOVE R15 R8
  LOADNIL R16
  LOADNIL R17
  FORGPREP R15
  GETTABLEKS R20 R13 K20 ["size"]
  SETTABLE R20 R14 R19
  FORGLOOP R15 2 [-4]
  DUPTABLE R17 K14 [{"tag", "pseudo", "properties"}]
  LOADK R19 K25 ["padding-%*-%*"]
  MOVE R21 R7
  GETTABLEKS R22 R13 K16 ["name"]
  NAMECALL R19 R19 K17 ["format"]
  CALL R19 3 1
  MOVE R18 R19
  SETTABLEKS R18 R17 K11 ["tag"]
  LOADK R18 K18 ["UIPadding"]
  SETTABLEKS R18 R17 K12 ["pseudo"]
  SETTABLEKS R14 R17 K13 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R17 [+4]
  MOVE R16 R2
  GETIMPORT R15 K23 [table.insert]
  CALL R15 2 0
  FORGLOOP R9 2 [-34]
  MOVE R9 R1
  LOADNIL R10
  LOADNIL R11
  FORGPREP R9
  NEWTABLE R14 0 0
  MOVE R15 R8
  LOADNIL R16
  LOADNIL R17
  FORGPREP R15
  GETTABLEKS R20 R13 K20 ["size"]
  SETTABLE R20 R14 R19
  FORGLOOP R15 2 [-4]
  DUPTABLE R17 K14 [{"tag", "pseudo", "properties"}]
  LOADK R19 K26 ["margin-%*-%*"]
  MOVE R21 R7
  GETTABLEKS R22 R13 K16 ["name"]
  NAMECALL R19 R19 K17 ["format"]
  CALL R19 3 1
  MOVE R18 R19
  SETTABLEKS R18 R17 K11 ["tag"]
  LOADK R18 K18 ["UIPadding"]
  SETTABLEKS R18 R17 K12 ["pseudo"]
  SETTABLEKS R14 R17 K13 ["properties"]
  FASTCALL2 TABLE_INSERT R2 R17 [+4]
  MOVE R16 R2
  GETIMPORT R15 K23 [table.insert]
  CALL R15 2 0
  FORGLOOP R9 2 [-34]
  FORGLOOP R4 2 [-79]
  RETURN R2 1

PROTO_16:
  DUPTABLE R0 K4 [{"none", "x", "y", "xy"}]
  GETIMPORT R1 K8 [Enum.AutomaticSize.None]
  SETTABLEKS R1 R0 K0 ["none"]
  GETIMPORT R1 K10 [Enum.AutomaticSize.X]
  SETTABLEKS R1 R0 K1 ["x"]
  GETIMPORT R1 K12 [Enum.AutomaticSize.Y]
  SETTABLEKS R1 R0 K2 ["y"]
  GETIMPORT R1 K14 [Enum.AutomaticSize.XY]
  SETTABLEKS R1 R0 K3 ["xy"]
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R9 K17 [{"tag", "properties"}]
  LOADK R11 K18 ["auto-%*"]
  MOVE R13 R5
  NAMECALL R11 R11 K19 ["format"]
  CALL R11 2 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K15 ["tag"]
  DUPTABLE R10 K20 [{"AutomaticSize"}]
  SETTABLEKS R6 R10 K6 ["AutomaticSize"]
  SETTABLEKS R10 R9 K16 ["properties"]
  FASTCALL2 TABLE_INSERT R1 R9 [+4]
  MOVE R8 R1
  GETIMPORT R7 K23 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-21]
  RETURN R1 1

PROTO_17:
  NEWTABLE R0 0 0
  DUPTABLE R1 K3 [{"left", "center", "right"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["left"]
  LOADK R2 K4 [0.5]
  SETTABLEKS R2 R1 K1 ["center"]
  LOADN R2 1
  SETTABLEKS R2 R1 K2 ["right"]
  DUPTABLE R2 K7 [{"top", "center", "bottom"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K5 ["top"]
  LOADK R3 K4 [0.5]
  SETTABLEKS R3 R2 K1 ["center"]
  LOADN R3 1
  SETTABLEKS R3 R2 K6 ["bottom"]
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R8 R2
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  DUPTABLE R15 K10 [{"tag", "properties"}]
  LOADK R17 K11 ["position-%*-%*"]
  MOVE R19 R11
  MOVE R20 R6
  NAMECALL R17 R17 K12 ["format"]
  CALL R17 3 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K8 ["tag"]
  DUPTABLE R16 K14 [{"Position"}]
  GETIMPORT R17 K17 [UDim2.fromScale]
  MOVE R18 R7
  MOVE R19 R12
  CALL R17 2 1
  SETTABLEKS R17 R16 K13 ["Position"]
  SETTABLEKS R16 R15 K9 ["properties"]
  FASTCALL2 TABLE_INSERT R0 R15 [+4]
  MOVE R14 R0
  GETIMPORT R13 K20 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [-27]
  FORGLOOP R3 2 [-33]
  RETURN R0 1

PROTO_18:
  NEWTABLE R0 0 0
  DUPTABLE R1 K3 [{"left", "center", "right"}]
  LOADN R2 0
  SETTABLEKS R2 R1 K0 ["left"]
  LOADK R2 K4 [0.5]
  SETTABLEKS R2 R1 K1 ["center"]
  LOADN R2 1
  SETTABLEKS R2 R1 K2 ["right"]
  DUPTABLE R2 K7 [{"top", "center", "bottom"}]
  LOADN R3 0
  SETTABLEKS R3 R2 K5 ["top"]
  LOADK R3 K4 [0.5]
  SETTABLEKS R3 R2 K1 ["center"]
  LOADN R3 1
  SETTABLEKS R3 R2 K6 ["bottom"]
  MOVE R3 R1
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  MOVE R8 R2
  LOADNIL R9
  LOADNIL R10
  FORGPREP R8
  DUPTABLE R15 K10 [{"tag", "properties"}]
  LOADK R17 K11 ["anchor-%*-%*"]
  MOVE R19 R11
  MOVE R20 R6
  NAMECALL R17 R17 K12 ["format"]
  CALL R17 3 1
  MOVE R16 R17
  SETTABLEKS R16 R15 K8 ["tag"]
  DUPTABLE R16 K14 [{"AnchorPoint"}]
  GETIMPORT R17 K17 [Vector2.new]
  MOVE R18 R7
  MOVE R19 R12
  CALL R17 2 1
  SETTABLEKS R17 R16 K13 ["AnchorPoint"]
  SETTABLEKS R16 R15 K9 ["properties"]
  FASTCALL2 TABLE_INSERT R0 R15 [+4]
  MOVE R14 R0
  GETIMPORT R13 K20 [table.insert]
  CALL R13 2 0
  FORGLOOP R8 2 [-27]
  FORGLOOP R3 2 [-33]
  RETURN R0 1

PROTO_19:
  NEWTABLE R0 0 2
  DUPTABLE R1 K2 [{"tag", "properties"}]
  LOADK R2 K3 ["clip"]
  SETTABLEKS R2 R1 K0 ["tag"]
  DUPTABLE R2 K5 [{"ClipsDescendants"}]
  LOADB R3 1
  SETTABLEKS R3 R2 K4 ["ClipsDescendants"]
  SETTABLEKS R2 R1 K1 ["properties"]
  DUPTABLE R2 K2 [{"tag", "properties"}]
  LOADK R3 K6 ["no-clip"]
  SETTABLEKS R3 R2 K0 ["tag"]
  DUPTABLE R3 K5 [{"ClipsDescendants"}]
  LOADB R4 0
  SETTABLEKS R4 R3 K4 ["ClipsDescendants"]
  SETTABLEKS R3 R2 K1 ["properties"]
  SETLIST R0 R1 2 [1]
  RETURN R0 1

PROTO_20:
  LOADN R3 10
  POW R2 R3 R1
  MUL R5 R0 R2
  FASTCALL1 MATH_ROUND R5 [+2]
  GETIMPORT R4 K2 [math.round]
  CALL R4 1 1
  DIV R3 R4 R2
  RETURN R3 1

PROTO_21:
  NEWTABLE R0 0 0
  NEWTABLE R1 0 6
  NEWTABLE R2 0 2
  LOADN R3 1
  LOADN R4 1
  SETLIST R2 R3 2 [1]
  NEWTABLE R3 0 2
  LOADN R4 5
  LOADN R5 4
  SETLIST R3 R4 2 [1]
  NEWTABLE R4 0 2
  LOADN R5 4
  LOADN R6 3
  SETLIST R4 R5 2 [1]
  NEWTABLE R5 0 2
  LOADN R6 3
  LOADN R7 2
  SETLIST R5 R6 2 [1]
  NEWTABLE R6 0 2
  LOADN R7 16
  LOADN R8 9
  SETLIST R6 R7 2 [1]
  NEWTABLE R7 0 2
  LOADN R8 2
  LOADN R9 1
  SETLIST R7 R8 2 [1]
  SETLIST R1 R2 6 [1]
  MOVE R2 R1
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  DUPTABLE R9 K3 [{"tag", "pseudo", "properties"}]
  LOADK R11 K4 ["aspect-%*-%*"]
  GETTABLEN R13 R6 1
  GETTABLEN R14 R6 2
  NAMECALL R11 R11 K5 ["format"]
  CALL R11 3 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K0 ["tag"]
  LOADK R10 K6 ["UIAspectRatioConstraint"]
  SETTABLEKS R10 R9 K1 ["pseudo"]
  DUPTABLE R10 K8 [{"AspectRatio"}]
  GETTABLEN R13 R6 1
  GETTABLEN R14 R6 2
  DIV R12 R13 R14
  MULK R14 R12 K9 [1000]
  FASTCALL1 MATH_ROUND R14 [+2]
  GETIMPORT R13 K12 [math.round]
  CALL R13 1 1
  DIVK R11 R13 K9 [1000]
  SETTABLEKS R11 R10 K7 ["AspectRatio"]
  SETTABLEKS R10 R9 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R0 R9 [+4]
  MOVE R8 R0
  GETIMPORT R7 K15 [table.insert]
  CALL R7 2 0
  GETTABLEN R7 R6 1
  GETTABLEN R8 R6 2
  JUMPIFEQ R7 R8 [+34]
  DUPTABLE R9 K3 [{"tag", "pseudo", "properties"}]
  LOADK R11 K4 ["aspect-%*-%*"]
  GETTABLEN R13 R6 2
  GETTABLEN R14 R6 1
  NAMECALL R11 R11 K5 ["format"]
  CALL R11 3 1
  MOVE R10 R11
  SETTABLEKS R10 R9 K0 ["tag"]
  LOADK R10 K6 ["UIAspectRatioConstraint"]
  SETTABLEKS R10 R9 K1 ["pseudo"]
  DUPTABLE R10 K8 [{"AspectRatio"}]
  GETTABLEN R13 R6 2
  GETTABLEN R14 R6 1
  DIV R12 R13 R14
  MULK R14 R12 K9 [1000]
  FASTCALL1 MATH_ROUND R14 [+2]
  GETIMPORT R13 K12 [math.round]
  CALL R13 1 1
  DIVK R11 R13 K9 [1000]
  SETTABLEKS R11 R10 K7 ["AspectRatio"]
  SETTABLEKS R10 R9 K2 ["properties"]
  FASTCALL2 TABLE_INSERT R0 R9 [+4]
  MOVE R8 R0
  GETIMPORT R7 K15 [table.insert]
  CALL R7 2 0
  FORGLOOP R2 2 [-71]
  RETURN R0 1

PROTO_22:
  NEWTABLE R1 0 0
  GETTABLEKS R2 R0 K0 ["System"]
  MOVE R3 R2
  LOADNIL R4
  LOADNIL R5
  FORGPREP R3
  LOADN R10 8
  NAMECALL R8 R6 K1 ["sub"]
  CALL R8 2 1
  DUPTABLE R11 K5 [{"tag", "properties", "deprecatedFor"}]
  LOADK R13 K6 ["bg-%*"]
  MOVE R15 R8
  NAMECALL R13 R13 K7 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K2 ["tag"]
  DUPTABLE R12 K10 [{"BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R13 R7 K11 ["Color3"]
  SETTABLEKS R13 R12 K8 ["BackgroundColor3"]
  GETTABLEKS R13 R7 K12 ["Transparency"]
  SETTABLEKS R13 R12 K9 ["BackgroundTransparency"]
  SETTABLEKS R12 R11 K3 ["properties"]
  LOADK R13 K6 ["bg-%*"]
  MOVE R15 R6
  NAMECALL R13 R13 K7 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K4 ["deprecatedFor"]
  FASTCALL2 TABLE_INSERT R1 R11 [+4]
  MOVE R10 R1
  GETIMPORT R9 K15 [table.insert]
  CALL R9 2 0
  JUMPIFEQKS R8 K16 ["emphasis"] [+80]
  DUPTABLE R11 K5 [{"tag", "properties", "deprecatedFor"}]
  LOADK R13 K17 ["content-%*"]
  MOVE R15 R8
  NAMECALL R13 R13 K7 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K2 ["tag"]
  DUPTABLE R12 K22 [{"ImageColor3", "ImageTransparency", "TextColor3", "TextTransparency"}]
  GETTABLEKS R13 R7 K11 ["Color3"]
  SETTABLEKS R13 R12 K18 ["ImageColor3"]
  GETTABLEKS R13 R7 K12 ["Transparency"]
  SETTABLEKS R13 R12 K19 ["ImageTransparency"]
  GETTABLEKS R13 R7 K11 ["Color3"]
  SETTABLEKS R13 R12 K20 ["TextColor3"]
  GETTABLEKS R13 R7 K12 ["Transparency"]
  SETTABLEKS R13 R12 K21 ["TextTransparency"]
  SETTABLEKS R12 R11 K3 ["properties"]
  LOADK R13 K17 ["content-%*"]
  MOVE R15 R6
  NAMECALL R13 R13 K7 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K4 ["deprecatedFor"]
  FASTCALL2 TABLE_INSERT R1 R11 [+4]
  MOVE R10 R1
  GETIMPORT R9 K15 [table.insert]
  CALL R9 2 0
  DUPTABLE R11 K24 [{"tag", "pseudo", "properties", "deprecatedFor"}]
  LOADK R13 K25 ["stroke-%*"]
  MOVE R15 R8
  NAMECALL R13 R13 K7 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K2 ["tag"]
  LOADK R12 K26 ["UIStroke"]
  SETTABLEKS R12 R11 K23 ["pseudo"]
  DUPTABLE R12 K28 [{"Color", "Transparency"}]
  GETTABLEKS R13 R7 K11 ["Color3"]
  SETTABLEKS R13 R12 K27 ["Color"]
  GETTABLEKS R13 R7 K12 ["Transparency"]
  SETTABLEKS R13 R12 K12 ["Transparency"]
  SETTABLEKS R12 R11 K3 ["properties"]
  LOADK R13 K25 ["stroke-%*"]
  MOVE R15 R6
  NAMECALL R13 R13 K7 ["format"]
  CALL R13 2 1
  MOVE R12 R13
  SETTABLEKS R12 R11 K4 ["deprecatedFor"]
  FASTCALL2 TABLE_INSERT R1 R11 [+4]
  MOVE R10 R1
  GETIMPORT R9 K15 [table.insert]
  CALL R9 2 0
  FORGLOOP R3 2 [-120]
  RETURN R1 1

PROTO_23:
  NEWTABLE R1 0 0
  MOVE R2 R0
  LOADNIL R3
  LOADNIL R4
  FORGPREP R2
  GETIMPORT R7 K2 [table.clone]
  MOVE R8 R6
  CALL R7 1 1
  LOADK R9 K3 ["hover-%*"]
  GETTABLEKS R11 R6 K4 ["tag"]
  NAMECALL R9 R9 K5 ["format"]
  CALL R9 2 1
  MOVE R8 R9
  SETTABLEKS R8 R7 K4 ["tag"]
  LOADK R8 K6 ["hover"]
  SETTABLEKS R8 R7 K7 ["modifier"]
  FASTCALL2 TABLE_INSERT R1 R6 [+5]
  MOVE R9 R1
  MOVE R10 R6
  GETIMPORT R8 K9 [table.insert]
  CALL R8 2 0
  FASTCALL2 TABLE_INSERT R1 R7 [+5]
  MOVE R9 R1
  MOVE R10 R7
  GETIMPORT R8 K9 [table.insert]
  CALL R8 2 0
  FORGLOOP R2 2 [-31]
  RETURN R1 1

PROTO_24:
  GETTABLEKS R2 R1 K0 ["colors"]
  GETTABLEKS R3 R1 K1 ["variants"]
  GETTABLEKS R4 R1 K2 ["gaps"]
  GETTABLEKS R5 R1 K3 ["gutters"]
  GETTABLEKS R6 R1 K4 ["radii"]
  GETTABLEKS R7 R1 K5 ["sizes"]
  GETTABLEKS R8 R1 K6 ["strokes"]
  GETTABLEKS R9 R1 K7 ["typography"]
  GETTABLEKS R10 R1 K8 ["paddings"]
  GETTABLEKS R11 R1 K9 ["margins"]
  GETUPVAL R14 0
  GETTABLEKS R13 R14 K10 ["List"]
  GETTABLEKS R12 R13 K11 ["join"]
  GETUPVAL R13 1
  MOVE R14 R0
  CALL R13 1 1
  GETUPVAL R14 2
  CALL R14 0 1
  GETUPVAL R15 3
  CALL R15 0 1
  GETUPVAL R16 4
  CALL R16 0 1
  GETUPVAL R17 5
  CALL R17 0 1
  GETUPVAL R18 6
  CALL R18 0 1
  GETUPVAL R19 7
  CALL R19 0 1
  GETUPVAL R20 8
  CALL R20 0 1
  GETUPVAL R21 9
  CALL R21 0 1
  CALL R12 9 1
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K10 ["List"]
  GETTABLEKS R13 R14 K11 ["join"]
  GETUPVAL R14 10
  MOVE R15 R0
  CALL R14 1 1
  GETUPVAL R15 11
  CALL R15 0 1
  GETUPVAL R16 12
  MOVE R17 R4
  MOVE R18 R5
  CALL R16 2 1
  GETUPVAL R17 13
  MOVE R18 R6
  CALL R17 1 1
  GETUPVAL R18 14
  MOVE R19 R7
  CALL R18 1 1
  GETUPVAL R19 15
  MOVE R20 R8
  CALL R19 1 1
  GETUPVAL R20 16
  MOVE R21 R9
  GETTABLEKS R24 R0 K12 ["Config"]
  GETTABLEKS R23 R24 K13 ["Text"]
  GETTABLEKS R22 R23 K14 ["NominalScale"]
  CALL R20 2 1
  GETUPVAL R21 17
  MOVE R22 R10
  MOVE R23 R11
  CALL R21 2 1
  CALL R13 8 1
  GETUPVAL R16 0
  GETTABLEKS R15 R16 K10 ["List"]
  GETTABLEKS R14 R15 K11 ["join"]
  GETUPVAL R15 18
  MOVE R16 R0
  CALL R15 1 1
  GETUPVAL R16 19
  MOVE R17 R2
  CALL R16 1 1
  GETUPVAL R17 20
  MOVE R18 R2
  MOVE R19 R3
  CALL R17 2 1
  GETUPVAL R18 21
  MOVE R19 R2
  MOVE R20 R3
  CALL R18 2 1
  GETUPVAL R19 22
  MOVE R20 R2
  MOVE R21 R3
  CALL R19 2 1
  CALL R14 5 1
  RETURN R12 3

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["Foundation"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETTABLEKS R1 R0 K4 ["Parent"]
  GETIMPORT R2 K6 [require]
  GETTABLEKS R3 R1 K7 ["Cryo"]
  CALL R2 1 1
  GETIMPORT R3 K6 [require]
  GETTABLEKS R6 R0 K8 ["Providers"]
  GETTABLEKS R5 R6 K9 ["Style"]
  GETTABLEKS R4 R5 K10 ["Tokens"]
  CALL R3 1 1
  GETIMPORT R4 K6 [require]
  GETIMPORT R7 K1 [script]
  GETTABLEKS R6 R7 K4 ["Parent"]
  GETTABLEKS R5 R6 K11 ["Types"]
  CALL R4 1 1
  DUPTABLE R5 K23 [{"Content", "Stroke", "Shift", "Surface", "OverMedia", "System", "Extended", "Common", "Selection", "State", "None"}]
  NEWTABLE R6 0 1
  LOADK R7 K24 ["content"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K12 ["Content"]
  NEWTABLE R6 0 1
  LOADK R7 K25 ["stroke"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K13 ["Stroke"]
  NEWTABLE R6 0 1
  LOADK R7 K26 ["bg"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K14 ["Shift"]
  NEWTABLE R6 0 1
  LOADK R7 K26 ["bg"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K15 ["Surface"]
  NEWTABLE R6 0 1
  LOADK R7 K26 ["bg"]
  SETLIST R6 R7 1 [1]
  SETTABLEKS R6 R5 K16 ["OverMedia"]
  NEWTABLE R6 0 3
  LOADK R7 K26 ["bg"]
  LOADK R8 K24 ["content"]
  LOADK R9 K25 ["stroke"]
  SETLIST R6 R7 3 [1]
  SETTABLEKS R6 R5 K17 ["System"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K18 ["Extended"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K19 ["Common"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K20 ["Selection"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K21 ["State"]
  NEWTABLE R6 0 0
  SETTABLEKS R6 R5 K22 ["None"]
  DUPCLOSURE R6 K27 [PROTO_0]
  DUPCLOSURE R7 K28 [PROTO_1]
  DUPCLOSURE R8 K29 [PROTO_2]
  DUPCLOSURE R9 K30 [PROTO_3]
  DUPCLOSURE R10 K31 [PROTO_4]
  CAPTURE VAL R2
  DUPCLOSURE R11 K32 [PROTO_5]
  CAPTURE VAL R2
  DUPCLOSURE R12 K33 [PROTO_6]
  CAPTURE VAL R2
  DUPCLOSURE R13 K34 [PROTO_7]
  DUPCLOSURE R14 K35 [PROTO_8]
  DUPCLOSURE R15 K36 [PROTO_9]
  CAPTURE VAL R5
  DUPCLOSURE R16 K37 [PROTO_10]
  DUPCLOSURE R17 K38 [PROTO_11]
  CAPTURE VAL R5
  DUPCLOSURE R18 K39 [PROTO_12]
  CAPTURE VAL R5
  DUPCLOSURE R19 K40 [PROTO_13]
  DUPCLOSURE R20 K41 [PROTO_14]
  DUPCLOSURE R21 K42 [PROTO_15]
  DUPCLOSURE R22 K43 [PROTO_16]
  DUPCLOSURE R23 K44 [PROTO_17]
  DUPCLOSURE R24 K45 [PROTO_18]
  DUPCLOSURE R25 K46 [PROTO_19]
  DUPCLOSURE R26 K47 [PROTO_20]
  DUPCLOSURE R27 K48 [PROTO_21]
  DUPCLOSURE R28 K49 [PROTO_22]
  DUPCLOSURE R29 K50 [PROTO_23]
  DUPCLOSURE R30 K51 [PROTO_24]
  CAPTURE VAL R2
  CAPTURE VAL R6
  CAPTURE VAL R9
  CAPTURE VAL R12
  CAPTURE VAL R20
  CAPTURE VAL R22
  CAPTURE VAL R23
  CAPTURE VAL R24
  CAPTURE VAL R25
  CAPTURE VAL R27
  CAPTURE VAL R7
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R13
  CAPTURE VAL R14
  CAPTURE VAL R16
  CAPTURE VAL R19
  CAPTURE VAL R21
  CAPTURE VAL R8
  CAPTURE VAL R28
  CAPTURE VAL R15
  CAPTURE VAL R17
  CAPTURE VAL R18
  DUPTABLE R31 K54 [{"rulesGenerator", "rules"}]
  SETTABLEKS R30 R31 K52 ["rulesGenerator"]
  DUPTABLE R32 K77 [{"DefaultRules", "EngineDefaultBypassRules", "FlexItemRules", "TextRules", "AutomaticSizeRules", "PositionRules", "AnchorPointRules", "ClipsDescendantRules", "AspectRatioRules", "DefaultSizeRules", "ListLayoutRules", "ListLayoutSpacingRules", "CornerRules", "SizeRules", "StrokeSizeRules", "TypographyRules", "PaddingRules", "DefaultColorRules", "DeprecatedColorRules", "BackgroundRules", "StrokeRules", "ContentRules"}]
  SETTABLEKS R6 R32 K55 ["DefaultRules"]
  SETTABLEKS R9 R32 K56 ["EngineDefaultBypassRules"]
  SETTABLEKS R12 R32 K57 ["FlexItemRules"]
  SETTABLEKS R20 R32 K58 ["TextRules"]
  SETTABLEKS R22 R32 K59 ["AutomaticSizeRules"]
  SETTABLEKS R23 R32 K60 ["PositionRules"]
  SETTABLEKS R24 R32 K61 ["AnchorPointRules"]
  SETTABLEKS R25 R32 K62 ["ClipsDescendantRules"]
  SETTABLEKS R27 R32 K63 ["AspectRatioRules"]
  SETTABLEKS R7 R32 K64 ["DefaultSizeRules"]
  SETTABLEKS R10 R32 K65 ["ListLayoutRules"]
  SETTABLEKS R11 R32 K66 ["ListLayoutSpacingRules"]
  SETTABLEKS R13 R32 K67 ["CornerRules"]
  SETTABLEKS R14 R32 K68 ["SizeRules"]
  SETTABLEKS R16 R32 K69 ["StrokeSizeRules"]
  SETTABLEKS R19 R32 K70 ["TypographyRules"]
  SETTABLEKS R21 R32 K71 ["PaddingRules"]
  SETTABLEKS R8 R32 K72 ["DefaultColorRules"]
  SETTABLEKS R28 R32 K73 ["DeprecatedColorRules"]
  SETTABLEKS R15 R32 K74 ["BackgroundRules"]
  SETTABLEKS R17 R32 K75 ["StrokeRules"]
  SETTABLEKS R18 R32 K76 ["ContentRules"]
  SETTABLEKS R32 R31 K53 ["rules"]
  RETURN R31 1
