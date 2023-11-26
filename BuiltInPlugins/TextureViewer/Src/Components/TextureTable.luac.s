PROTO_0:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R1 R2 K1 ["Localization"]
  NEWTABLE R2 0 4
  DUPTABLE R3 K3 [{"Name"}]
  LOADK R6 K4 ["TextureTable"]
  LOADK R7 K5 ["Texture"]
  NAMECALL R4 R1 K6 ["getText"]
  CALL R4 3 1
  SETTABLEKS R4 R3 K2 ["Name"]
  DUPTABLE R4 K3 [{"Name"}]
  LOADK R7 K4 ["TextureTable"]
  LOADK R8 K7 ["Id"]
  NAMECALL R5 R1 K6 ["getText"]
  CALL R5 3 1
  SETTABLEKS R5 R4 K2 ["Name"]
  DUPTABLE R5 K3 [{"Name"}]
  LOADK R8 K4 ["TextureTable"]
  LOADK R9 K8 ["Size"]
  NAMECALL R6 R1 K6 ["getText"]
  CALL R6 3 1
  SETTABLEKS R6 R5 K2 ["Name"]
  DUPTABLE R6 K3 [{"Name"}]
  LOADK R9 K4 ["TextureTable"]
  LOADK R10 K9 ["FindSelect"]
  NAMECALL R7 R1 K6 ["getText"]
  CALL R7 3 1
  SETTABLEKS R7 R6 K2 ["Name"]
  SETLIST R2 R3 4 [1]
  RETURN R2 1

PROTO_1:
  SETUPVAL R0 0
  RETURN R0 0

PROTO_2:
  GETUPVAL R0 0
  DUPTABLE R2 K1 [{"editingCell"}]
  LOADN R3 255
  SETTABLEKS R3 R2 K0 ["editingCell"]
  NAMECALL R0 R0 K2 ["setState"]
  CALL R0 2 0
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["Texture"]
  GETUPVAL R1 1
  JUMPIFEQ R0 R1 [+9]
  GETUPVAL R1 2
  GETTABLEKS R0 R1 K1 ["replaceAllTexturesWithId"]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K2 ["Id"]
  GETUPVAL R2 1
  CALL R0 2 0
  GETUPVAL R0 3
  DUPTABLE R2 K4 [{"editingCell"}]
  LOADN R3 255
  SETTABLEKS R3 R2 K3 ["editingCell"]
  NAMECALL R0 R0 K5 ["setState"]
  CALL R0 2 0
  GETUPVAL R0 3
  NAMECALL R0 R0 K6 ["refreshData"]
  CALL R0 1 0
  RETURN R0 0

PROTO_4:
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ZoomedInstanceIndex"]
  SUBK R1 R2 K0 [1]
  SETTABLEKS R1 R0 K1 ["ZoomedInstanceIndex"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["ZoomedInstanceIndex"]
  LOADN R1 1
  JUMPIFNOTLT R0 R1 [+8]
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Instances"]
  LENGTH R1 R2
  SETTABLEKS R1 R0 K1 ["ZoomedInstanceIndex"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["ZoomedInstanceIndex"]
  SUBK R2 R3 K0 [1]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Instances"]
  LENGTH R3 R4
  MOD R1 R2 R3
  ADDK R0 R1 K0 [1]
  GETUPVAL R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Instances"]
  MOVE R4 R0
  NAMECALL R1 R1 K3 ["zoomTo"]
  CALL R1 3 0
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K1 ["ZoomedInstanceIndex"]
  ADDK R1 R2 K0 [1]
  SETTABLEKS R1 R0 K1 ["ZoomedInstanceIndex"]
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K1 ["ZoomedInstanceIndex"]
  LOADN R1 1
  JUMPIFNOTLT R0 R1 [+8]
  GETUPVAL R0 0
  GETUPVAL R3 0
  GETTABLEKS R2 R3 K2 ["Instances"]
  LENGTH R1 R2
  SETTABLEKS R1 R0 K1 ["ZoomedInstanceIndex"]
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K1 ["ZoomedInstanceIndex"]
  SUBK R2 R3 K0 [1]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K2 ["Instances"]
  LENGTH R3 R4
  MOD R1 R2 R3
  ADDK R0 R1 K0 [1]
  GETUPVAL R1 1
  GETUPVAL R4 0
  GETTABLEKS R3 R4 K2 ["Instances"]
  MOVE R4 R0
  NAMECALL R1 R1 K3 ["zoomTo"]
  CALL R1 3 0
  RETURN R0 0

PROTO_6:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["showRightClickMenu"]
  GETUPVAL R1 1
  GETUPVAL R3 2
  GETTABLEKS R2 R3 K1 ["Instances"]
  CALL R0 2 0
  RETURN R0 0

PROTO_7:
  GETTABLEKS R1 R0 K0 ["Row"]
  GETTABLEKS R2 R0 K1 ["ColumnIndex"]
  GETTABLEKS R3 R0 K2 ["RowIndex"]
  GETTABLEKS R4 R0 K3 ["Width"]
  JUMPIF R4 [+9]
  GETIMPORT R4 K6 [UDim.new]
  LOADN R6 1
  GETTABLEKS R8 R0 K7 ["Columns"]
  LENGTH R7 R8
  DIV R5 R6 R7
  LOADN R6 0
  CALL R4 2 1
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K8 ["TableCell"]
  LOADNIL R6
  GETTABLEKS R7 R1 K9 ["Texture"]
  NEWCLOSURE R8 P0
  CAPTURE REF R7
  NEWCLOSURE R9 P1
  CAPTURE UPVAL U1
  JUMPIFNOT R1 [+469]
  JUMPIFNOTEQKN R2 K10 [1] [+34]
  GETUPVAL R12 2
  GETTABLEKS R11 R12 K11 ["doesTextureAliasContainId"]
  GETTABLEKS R12 R1 K9 ["Texture"]
  CALL R11 1 1
  JUMPIFNOT R11 [+7]
  GETIMPORT R10 K14 [string.format]
  LOADK R11 K15 ["rbxthumb://type=Asset&id=%s&w=150&h=150&filters="]
  GETTABLEKS R12 R1 K16 ["Id"]
  CALL R10 2 1
  JUMPIF R10 [+2]
  GETTABLEKS R10 R1 K9 ["Texture"]
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K17 ["createElement"]
  GETUPVAL R12 4
  DUPTABLE R13 K20 [{"Image", "Size"}]
  SETTABLEKS R10 R13 K18 ["Image"]
  GETIMPORT R14 K23 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["Size"]
  CALL R11 2 1
  MOVE R6 R11
  JUMP [+434]
  JUMPIFNOTEQKN R2 K24 [2] [+214]
  GETUPVAL R12 1
  GETTABLEKS R11 R12 K25 ["state"]
  GETTABLEKS R10 R11 K26 ["editingCell"]
  JUMPIFNOTEQ R10 R3 [+195]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K17 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K28 [{"Layout", "Size"}]
  GETIMPORT R13 K32 [Enum.FillDirection.Vertical]
  SETTABLEKS R13 R12 K27 ["Layout"]
  GETIMPORT R13 K23 [UDim2.fromScale]
  LOADN R14 1
  LOADN R15 1
  CALL R13 2 1
  SETTABLEKS R13 R12 K19 ["Size"]
  DUPTABLE R13 K35 [{"TextInput", "ButtonsWrapper"}]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K17 ["createElement"]
  GETUPVAL R15 6
  DUPTABLE R16 K40 [{"Text", "TextXAlignment", "Size", "OnTextChanged", "LayoutOrder"}]
  SETTABLEKS R7 R16 K36 ["Text"]
  GETIMPORT R17 K42 [Enum.TextXAlignment.Center]
  SETTABLEKS R17 R16 K37 ["TextXAlignment"]
  GETTABLEKS R19 R5 K43 ["IdCell"]
  GETTABLEKS R18 R19 K33 ["TextInput"]
  GETTABLEKS R17 R18 K19 ["Size"]
  SETTABLEKS R17 R16 K19 ["Size"]
  SETTABLEKS R8 R16 K38 ["OnTextChanged"]
  LOADN R17 1
  SETTABLEKS R17 R16 K39 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K33 ["TextInput"]
  GETUPVAL R15 3
  GETTABLEKS R14 R15 K17 ["createElement"]
  GETUPVAL R15 5
  DUPTABLE R16 K45 [{"Size", "Layout", "Padding", "LayoutOrder"}]
  GETTABLEKS R20 R5 K43 ["IdCell"]
  GETTABLEKS R19 R20 K46 ["Buttons"]
  GETTABLEKS R18 R19 K34 ["ButtonsWrapper"]
  GETTABLEKS R17 R18 K19 ["Size"]
  SETTABLEKS R17 R16 K19 ["Size"]
  GETIMPORT R17 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R17 R16 K27 ["Layout"]
  GETTABLEKS R19 R5 K43 ["IdCell"]
  GETTABLEKS R18 R19 K46 ["Buttons"]
  GETTABLEKS R17 R18 K44 ["Padding"]
  SETTABLEKS R17 R16 K44 ["Padding"]
  LOADN R17 2
  SETTABLEKS R17 R16 K39 ["LayoutOrder"]
  DUPTABLE R17 K51 [{"CancelButton", "ConfirmButton"}]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K17 ["createElement"]
  GETUPVAL R19 5
  DUPTABLE R20 K53 [{"AutomaticSize", "Padding", "LayoutOrder"}]
  GETIMPORT R21 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K52 ["AutomaticSize"]
  GETTABLEKS R23 R5 K43 ["IdCell"]
  GETTABLEKS R22 R23 K46 ["Buttons"]
  GETTABLEKS R21 R22 K44 ["Padding"]
  SETTABLEKS R21 R20 K44 ["Padding"]
  LOADN R21 1
  SETTABLEKS R21 R20 K39 ["LayoutOrder"]
  NEWTABLE R21 0 1
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K17 ["createElement"]
  GETUPVAL R23 7
  DUPTABLE R24 K58 [{"LeftIcon", "TextXAlignment", "Size", "OnClick"}]
  GETTABLEKS R27 R5 K43 ["IdCell"]
  GETTABLEKS R26 R27 K46 ["Buttons"]
  GETTABLEKS R25 R26 K59 ["CancelIcon"]
  SETTABLEKS R25 R24 K56 ["LeftIcon"]
  GETIMPORT R25 K42 [Enum.TextXAlignment.Center]
  SETTABLEKS R25 R24 K37 ["TextXAlignment"]
  GETIMPORT R25 K23 [UDim2.fromScale]
  LOADN R26 1
  LOADN R27 1
  CALL R25 2 1
  SETTABLEKS R25 R24 K19 ["Size"]
  SETTABLEKS R9 R24 K57 ["OnClick"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  SETTABLEKS R18 R17 K49 ["CancelButton"]
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K17 ["createElement"]
  GETUPVAL R19 5
  DUPTABLE R20 K53 [{"AutomaticSize", "Padding", "LayoutOrder"}]
  GETIMPORT R21 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R21 R20 K52 ["AutomaticSize"]
  GETTABLEKS R23 R5 K43 ["IdCell"]
  GETTABLEKS R22 R23 K46 ["Buttons"]
  GETTABLEKS R21 R22 K44 ["Padding"]
  SETTABLEKS R21 R20 K44 ["Padding"]
  LOADN R21 2
  SETTABLEKS R21 R20 K39 ["LayoutOrder"]
  NEWTABLE R21 0 1
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K17 ["createElement"]
  GETUPVAL R23 7
  DUPTABLE R24 K58 [{"LeftIcon", "TextXAlignment", "Size", "OnClick"}]
  GETTABLEKS R27 R5 K43 ["IdCell"]
  GETTABLEKS R26 R27 K46 ["Buttons"]
  GETTABLEKS R25 R26 K60 ["ConfirmIcon"]
  SETTABLEKS R25 R24 K56 ["LeftIcon"]
  GETIMPORT R25 K42 [Enum.TextXAlignment.Center]
  SETTABLEKS R25 R24 K37 ["TextXAlignment"]
  GETIMPORT R25 K23 [UDim2.fromScale]
  LOADN R26 1
  LOADN R27 1
  CALL R25 2 1
  SETTABLEKS R25 R24 K19 ["Size"]
  NEWCLOSURE R25 P2
  CAPTURE VAL R1
  CAPTURE REF R7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U1
  SETTABLEKS R25 R24 K57 ["OnClick"]
  CALL R22 2 -1
  SETLIST R21 R22 -1 [1]
  CALL R18 3 1
  SETTABLEKS R18 R17 K50 ["ConfirmButton"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K34 ["ButtonsWrapper"]
  CALL R10 3 1
  MOVE R6 R10
  JUMP [+231]
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K17 ["createElement"]
  GETUPVAL R11 9
  DUPTABLE R12 K61 [{"Text"}]
  GETTABLEKS R13 R1 K16 ["Id"]
  SETTABLEKS R13 R12 K36 ["Text"]
  CALL R10 2 1
  MOVE R6 R10
  JUMP [+219]
  JUMPIFNOTEQKN R2 K62 [3] [+37]
  GETTABLEKS R11 R1 K19 ["Size"]
  LOADN R12 0
  JUMPIFNOTLT R12 R11 [+16]
  GETUPVAL R14 2
  GETTABLEKS R13 R14 K63 ["round"]
  GETTABLEKS R15 R1 K19 ["Size"]
  GETUPVAL R17 10
  GETTABLEKS R16 R17 K64 ["BYTES_IN_KB"]
  DIV R14 R15 R16
  LOADN R15 2
  CALL R13 2 1
  MOVE R11 R13
  LOADK R12 K65 [" KB"]
  CONCAT R10 R11 R12
  JUMPIF R10 [+6]
  GETUPVAL R10 11
  LOADK R12 K66 ["TextureTable"]
  LOADK R13 K67 ["NotLoaded"]
  NAMECALL R10 R10 K68 ["getText"]
  CALL R10 3 1
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K17 ["createElement"]
  GETUPVAL R12 9
  DUPTABLE R13 K61 [{"Text"}]
  SETTABLEKS R10 R13 K36 ["Text"]
  CALL R11 2 1
  MOVE R6 R11
  JUMP [+181]
  JUMPIFNOTEQKN R2 K69 [4] [+180]
  LOADNIL R10
  GETTABLEKS R11 R1 K70 ["ZoomedInstanceIndex"]
  JUMPIFEQKN R11 K71 [0] [+19]
  GETTABLEKS R18 R1 K70 ["ZoomedInstanceIndex"]
  SUBK R17 R18 K10 [1]
  GETTABLEKS R19 R1 K72 ["Instances"]
  LENGTH R18 R19
  MOD R16 R17 R18
  ADDK R15 R16 K10 [1]
  FASTCALL1 TOSTRING R15 [+2]
  GETIMPORT R14 K74 [tostring]
  CALL R14 1 1
  MOVE R11 R14
  LOADK R12 K75 ["/"]
  GETTABLEKS R13 R1 K76 ["Count"]
  CONCAT R10 R11 R13
  JUMP [+4]
  LOADK R11 K77 ["-/"]
  GETTABLEKS R12 R1 K76 ["Count"]
  CONCAT R10 R11 R12
  GETUPVAL R12 3
  GETTABLEKS R11 R12 K17 ["createElement"]
  GETUPVAL R12 5
  DUPTABLE R13 K28 [{"Layout", "Size"}]
  GETIMPORT R14 K48 [Enum.FillDirection.Horizontal]
  SETTABLEKS R14 R13 K27 ["Layout"]
  GETIMPORT R14 K23 [UDim2.fromScale]
  LOADN R15 1
  LOADN R16 1
  CALL R14 2 1
  SETTABLEKS R14 R13 K19 ["Size"]
  DUPTABLE R14 K81 [{"PrevButton", "ZoomTextLabel", "NextButton"}]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K17 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K82 [{"AutomaticSize", "LayoutOrder"}]
  GETIMPORT R18 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K52 ["AutomaticSize"]
  LOADN R18 1
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  NEWTABLE R18 0 1
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K17 ["createElement"]
  GETUPVAL R20 7
  DUPTABLE R21 K83 [{"LeftIcon", "Size", "OnClick"}]
  GETTABLEKS R24 R5 K84 ["FindSelectCell"]
  GETTABLEKS R23 R24 K78 ["PrevButton"]
  GETTABLEKS R22 R23 K85 ["Icon"]
  SETTABLEKS R22 R21 K56 ["LeftIcon"]
  GETIMPORT R22 K23 [UDim2.fromScale]
  LOADN R23 1
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K19 ["Size"]
  NEWCLOSURE R22 P3
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  SETTABLEKS R22 R21 K57 ["OnClick"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  SETTABLEKS R15 R14 K78 ["PrevButton"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K17 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K86 [{"Padding", "AutomaticSize", "LayoutOrder"}]
  GETTABLEKS R20 R5 K84 ["FindSelectCell"]
  GETTABLEKS R19 R20 K87 ["ZoomText"]
  GETTABLEKS R18 R19 K44 ["Padding"]
  SETTABLEKS R18 R17 K44 ["Padding"]
  GETIMPORT R18 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K52 ["AutomaticSize"]
  LOADN R18 2
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  NEWTABLE R18 0 1
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K17 ["createElement"]
  GETUPVAL R20 9
  DUPTABLE R21 K89 [{"Text", "TextSize"}]
  SETTABLEKS R10 R21 K36 ["Text"]
  GETTABLEKS R24 R5 K84 ["FindSelectCell"]
  GETTABLEKS R23 R24 K87 ["ZoomText"]
  GETTABLEKS R22 R23 K88 ["TextSize"]
  SETTABLEKS R22 R21 K88 ["TextSize"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  SETTABLEKS R15 R14 K79 ["ZoomTextLabel"]
  GETUPVAL R16 3
  GETTABLEKS R15 R16 K17 ["createElement"]
  GETUPVAL R16 5
  DUPTABLE R17 K82 [{"AutomaticSize", "LayoutOrder"}]
  GETIMPORT R18 K55 [Enum.AutomaticSize.XY]
  SETTABLEKS R18 R17 K52 ["AutomaticSize"]
  LOADN R18 3
  SETTABLEKS R18 R17 K39 ["LayoutOrder"]
  NEWTABLE R18 0 1
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K17 ["createElement"]
  GETUPVAL R20 7
  DUPTABLE R21 K83 [{"LeftIcon", "Size", "OnClick"}]
  GETTABLEKS R24 R5 K84 ["FindSelectCell"]
  GETTABLEKS R23 R24 K80 ["NextButton"]
  GETTABLEKS R22 R23 K85 ["Icon"]
  SETTABLEKS R22 R21 K56 ["LeftIcon"]
  GETIMPORT R22 K23 [UDim2.fromScale]
  LOADN R23 1
  LOADN R24 1
  CALL R22 2 1
  SETTABLEKS R22 R21 K19 ["Size"]
  NEWCLOSURE R22 P4
  CAPTURE VAL R1
  CAPTURE UPVAL U1
  SETTABLEKS R22 R21 K57 ["OnClick"]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  CALL R15 3 1
  SETTABLEKS R15 R14 K80 ["NextButton"]
  CALL R11 3 1
  MOVE R6 R11
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K17 ["createElement"]
  GETUPVAL R11 5
  DUPTABLE R12 K96 [{"LayoutOrder", "Style", "BorderSizePixel", "BackgroundColor3", "BorderColor3", "Size", "OnRightClick", "ClipsDescendants"}]
  GETTABLEKS R13 R0 K1 ["ColumnIndex"]
  SETTABLEKS R13 R12 K39 ["LayoutOrder"]
  GETTABLEKS R13 R5 K90 ["Style"]
  SETTABLEKS R13 R12 K90 ["Style"]
  GETTABLEKS R13 R5 K91 ["BorderSizePixel"]
  SETTABLEKS R13 R12 K91 ["BorderSizePixel"]
  GETTABLEKS R14 R0 K90 ["Style"]
  GETTABLEKS R13 R14 K97 ["BackgroundEven"]
  SETTABLEKS R13 R12 K92 ["BackgroundColor3"]
  GETTABLEKS R14 R0 K90 ["Style"]
  GETTABLEKS R13 R14 K98 ["Border"]
  SETTABLEKS R13 R12 K93 ["BorderColor3"]
  GETIMPORT R13 K99 [UDim2.new]
  GETTABLEKS R14 R4 K100 ["Scale"]
  GETTABLEKS R15 R4 K101 ["Offset"]
  LOADN R16 1
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K19 ["Size"]
  NEWCLOSURE R13 P5
  CAPTURE UPVAL U1
  CAPTURE VAL R3
  CAPTURE VAL R1
  SETTABLEKS R13 R12 K94 ["OnRightClick"]
  LOADB R13 1
  SETTABLEKS R13 R12 K95 ["ClipsDescendants"]
  DUPTABLE R13 K103 [{"Content"}]
  SETTABLEKS R6 R13 K102 ["Content"]
  CALL R10 3 -1
  CLOSEUPVALS R7
  RETURN R10 -1

PROTO_8:
  GETTABLEKS R3 R0 K0 ["props"]
  GETTABLEKS R2 R3 K1 ["Localization"]
  NEWCLOSURE R3 P0
  CAPTURE VAL R1
  CAPTURE VAL R0
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE VAL R2
  RETURN R3 1

PROTO_9:
  GETTABLEKS R2 R0 K0 ["props"]
  GETTABLEKS R3 R2 K1 ["Localization"]
  GETTABLEKS R5 R2 K2 ["Stylizer"]
  GETTABLEKS R4 R5 K3 ["TextureTable"]
  GETUPVAL R6 0
  GETTABLEKS R5 R6 K4 ["createElement"]
  GETUPVAL R6 1
  DUPTABLE R7 K12 [{"Size", "Rows", "Columns", "CellComponent", "Scroll", "RowHeight", "LayoutOrder"}]
  GETTABLEKS R8 R4 K5 ["Size"]
  SETTABLEKS R8 R7 K5 ["Size"]
  SETTABLEKS R1 R7 K6 ["Rows"]
  GETUPVAL R8 2
  MOVE R9 R0
  CALL R8 1 1
  SETTABLEKS R8 R7 K7 ["Columns"]
  GETTABLEKS R10 R0 K0 ["props"]
  GETTABLEKS R9 R10 K1 ["Localization"]
  NEWCLOSURE R8 P0
  CAPTURE VAL R4
  CAPTURE VAL R0
  CAPTURE UPVAL U3
  CAPTURE UPVAL U0
  CAPTURE UPVAL U4
  CAPTURE UPVAL U5
  CAPTURE UPVAL U6
  CAPTURE UPVAL U7
  CAPTURE UPVAL U8
  CAPTURE UPVAL U9
  CAPTURE UPVAL U10
  CAPTURE VAL R9
  SETTABLEKS R8 R7 K8 ["CellComponent"]
  LOADB R8 1
  SETTABLEKS R8 R7 K9 ["Scroll"]
  GETTABLEKS R8 R4 K10 ["RowHeight"]
  SETTABLEKS R8 R7 K10 ["RowHeight"]
  LOADN R8 3
  SETTABLEKS R8 R7 K11 ["LayoutOrder"]
  CALL R5 2 -1
  RETURN R5 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Framework"]
  CALL R2 1 1
  GETTABLEKS R4 R2 K8 ["UI"]
  GETTABLEKS R3 R4 K9 ["Pane"]
  GETTABLEKS R5 R2 K8 ["UI"]
  GETTABLEKS R4 R5 K10 ["IconButton"]
  GETTABLEKS R6 R2 K8 ["UI"]
  GETTABLEKS R5 R6 K11 ["TextLabel"]
  GETTABLEKS R7 R2 K8 ["UI"]
  GETTABLEKS R6 R7 K12 ["TextInput"]
  GETTABLEKS R8 R2 K8 ["UI"]
  GETTABLEKS R7 R8 K13 ["Image"]
  GETTABLEKS R9 R2 K8 ["UI"]
  GETTABLEKS R8 R9 K14 ["Table"]
  GETTABLEKS R10 R0 K15 ["Src"]
  GETTABLEKS R9 R10 K16 ["Util"]
  GETIMPORT R10 K4 [require]
  GETTABLEKS R11 R9 K17 ["Utils"]
  CALL R10 1 1
  GETIMPORT R11 K4 [require]
  GETTABLEKS R12 R9 K18 ["WorkspaceOperations"]
  CALL R11 1 1
  GETIMPORT R12 K4 [require]
  GETTABLEKS R13 R9 K19 ["Constants"]
  CALL R12 1 1
  DUPCLOSURE R13 K20 [PROTO_0]
  DUPCLOSURE R14 K21 [PROTO_8]
  CAPTURE VAL R10
  CAPTURE VAL R1
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R12
  DUPCLOSURE R15 K22 [PROTO_9]
  CAPTURE VAL R1
  CAPTURE VAL R8
  CAPTURE VAL R13
  CAPTURE VAL R10
  CAPTURE VAL R7
  CAPTURE VAL R3
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R11
  CAPTURE VAL R5
  CAPTURE VAL R12
  RETURN R15 1
