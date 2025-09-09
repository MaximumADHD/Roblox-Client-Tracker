PROTO_0:
  GETTABLEKS R1 R0 K0 ["UserInputType"]
  GETIMPORT R2 K3 [Enum.UserInputType.MouseButton2]
  JUMPIFNOTEQ R1 R2 [+22]
  GETUPVAL R1 0
  GETIMPORT R2 K6 [UDim2.fromOffset]
  GETTABLEKS R4 R0 K7 ["Position"]
  GETTABLEKS R3 R4 K8 ["X"]
  GETTABLEKS R5 R0 K7 ["Position"]
  GETTABLEKS R4 R5 K9 ["Y"]
  CALL R2 2 -1
  CALL R1 -1 0
  GETUPVAL R1 1
  LOADB R2 1
  CALL R1 1 0
  GETUPVAL R1 2
  GETUPVAL R3 3
  GETTABLEKS R2 R3 K10 ["assetId"]
  CALL R1 1 0
  RETURN R0 0

PROTO_1:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["Disconnect"]
  CALL R0 1 0
  RETURN R0 0

PROTO_2:
  RETURN R0 0

PROTO_3:
  GETUPVAL R1 0
  GETTABLEKS R0 R1 K0 ["current"]
  JUMPIFEQKNIL R0 [+17]
  GETUPVAL R2 0
  GETTABLEKS R1 R2 K0 ["current"]
  GETTABLEKS R0 R1 K1 ["InputEnded"]
  NEWCLOSURE R2 P0
  CAPTURE UPVAL U1
  CAPTURE UPVAL U2
  CAPTURE UPVAL U3
  CAPTURE UPVAL U4
  NAMECALL R0 R0 K2 ["Connect"]
  CALL R0 2 1
  NEWCLOSURE R1 P1
  CAPTURE VAL R0
  RETURN R1 1
  DUPCLOSURE R0 K3 [PROTO_2]
  RETURN R0 1

PROTO_4:
  RETURN R0 0

PROTO_5:
  GETUPVAL R0 0
  LOADB R1 0
  CALL R0 1 0
  RETURN R0 0

PROTO_6:
  JUMPIFNOTEQKS R0 K0 ["viewInExplorer"] [+7]
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K0 ["viewInExplorer"]
  CALL R1 2 0
  JUMP [+7]
  JUMPIFNOTEQKS R0 K1 ["openInBrowser"] [+6]
  GETUPVAL R1 0
  GETUPVAL R3 1
  NAMECALL R1 R1 K1 ["openInBrowser"]
  CALL R1 2 0
  GETUPVAL R1 2
  LOADB R2 0
  CALL R1 1 0
  RETURN R0 0

PROTO_7:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["openLearnPage"]
  CALL R0 1 0
  RETURN R0 0

PROTO_8:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["openMain"]
  CALL R0 1 0
  RETURN R0 0

PROTO_9:
  GETUPVAL R0 0
  NAMECALL R0 R0 K0 ["triggerFilePathSelection"]
  CALL R0 1 0
  RETURN R0 0

PROTO_10:
  GETUPVAL R1 0
  NAMECALL R1 R1 K0 ["use"]
  CALL R1 1 1
  NEWTABLE R2 0 0
  GETUPVAL R4 1
  GETTABLEKS R3 R4 K0 ["use"]
  CALL R3 0 1
  LOADK R6 K1 ["textures"]
  NAMECALL R4 R3 K2 ["getSettingValue"]
  CALL R4 2 1
  GETUPVAL R5 2
  MOVE R6 R3
  CALL R5 1 3
  FORGPREP R5
  JUMPIF R4 [+4]
  GETTABLEKS R10 R9 K3 ["assetType"]
  JUMPIFNOTEQKS R10 K4 ["Mesh"] [+18]
  DUPTABLE R12 K7 [{"assetId", "assetType", "count"}]
  SETTABLEKS R8 R12 K5 ["assetId"]
  GETTABLEKS R13 R9 K3 ["assetType"]
  SETTABLEKS R13 R12 K3 ["assetType"]
  GETTABLEKS R13 R9 K6 ["count"]
  SETTABLEKS R13 R12 K6 ["count"]
  FASTCALL2 TABLE_INSERT R2 R12 [+4]
  MOVE R11 R2
  GETIMPORT R10 K10 [table.insert]
  CALL R10 2 0
  FORGLOOP R5 2 [-23]
  NEWTABLE R5 0 0
  GETUPVAL R7 3
  GETTABLEKS R6 R7 K11 ["useState"]
  LOADB R7 0
  CALL R6 1 2
  GETUPVAL R9 3
  GETTABLEKS R8 R9 K11 ["useState"]
  GETIMPORT R9 K14 [UDim2.fromOffset]
  LOADN R10 0
  LOADN R11 0
  CALL R9 2 -1
  CALL R8 -1 2
  GETUPVAL R11 3
  GETTABLEKS R10 R11 K11 ["useState"]
  LOADB R11 0
  CALL R10 1 2
  LOADN R14 1
  LENGTH R12 R2
  LOADN R13 1
  FORNPREP R12
  GETTABLE R15 R2 R14
  GETUPVAL R17 3
  GETTABLEKS R16 R17 K15 ["useRef"]
  LOADNIL R17
  CALL R16 1 1
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K16 ["useEffect"]
  NEWCLOSURE R18 P0
  CAPTURE VAL R16
  CAPTURE VAL R9
  CAPTURE VAL R7
  CAPTURE VAL R11
  CAPTURE VAL R15
  NEWTABLE R19 0 1
  GETTABLEKS R20 R16 K17 ["current"]
  SETLIST R19 R20 1 [1]
  CALL R17 2 0
  MOVE R18 R5
  GETUPVAL R20 3
  GETTABLEKS R19 R20 K18 ["createElement"]
  GETUPVAL R21 4
  GETTABLEKS R20 R21 K19 ["View"]
  DUPTABLE R21 K24 [{"tag", "LayoutOrder", "onActivated", "ref"}]
  LOADK R22 K25 ["size-full-0 auto-y padding-small row align-y-center gap-small stroke-thin stroke-muted"]
  SETTABLEKS R22 R21 K20 ["tag"]
  SETTABLEKS R14 R21 K21 ["LayoutOrder"]
  DUPCLOSURE R22 K26 [PROTO_4]
  SETTABLEKS R22 R21 K22 ["onActivated"]
  SETTABLEKS R16 R21 K23 ["ref"]
  DUPTABLE R22 K30 [{"iconHolder", "textPanel", "show"}]
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K18 ["createElement"]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K19 ["View"]
  DUPTABLE R25 K31 [{"tag"}]
  LOADK R26 K32 ["bg-shift-100 radius-medium align-y-center auto-xy padding-small"]
  SETTABLEKS R26 R25 K20 ["tag"]
  DUPTABLE R26 K34 [{"iconElement"}]
  GETUPVAL R28 3
  GETTABLEKS R27 R28 K18 ["createElement"]
  GETUPVAL R29 4
  GETTABLEKS R28 R29 K35 ["Image"]
  DUPTABLE R29 K37 [{"tag", "Image", "Size", "LayoutOrder"}]
  LOADK R30 K38 ["align-y-center align-x-center"]
  SETTABLEKS R30 R29 K20 ["tag"]
  GETTABLEKS R31 R15 K3 ["assetType"]
  JUMPIFNOTEQKS R31 K35 ["Image"] [+3]
  LOADK R30 K39 ["rbxassetid://123998002949260"]
  JUMP [+1]
  LOADK R30 K40 ["rbxassetid://112965877289990"]
  SETTABLEKS R30 R29 K35 ["Image"]
  GETIMPORT R30 K14 [UDim2.fromOffset]
  LOADN R31 32
  LOADN R32 32
  CALL R30 2 1
  SETTABLEKS R30 R29 K36 ["Size"]
  LOADN R30 1
  SETTABLEKS R30 R29 K21 ["LayoutOrder"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K33 ["iconElement"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K27 ["iconHolder"]
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K18 ["createElement"]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K19 ["View"]
  DUPTABLE R25 K41 [{"tag", "LayoutOrder"}]
  LOADK R26 K42 ["size-0-0 auto-y col align-y-top gap-small grow"]
  SETTABLEKS R26 R25 K20 ["tag"]
  LOADN R26 2
  SETTABLEKS R26 R25 K21 ["LayoutOrder"]
  DUPTABLE R26 K45 [{"MainText", "SupportText"}]
  GETUPVAL R28 3
  GETTABLEKS R27 R28 K18 ["createElement"]
  GETUPVAL R29 4
  GETTABLEKS R28 R29 K46 ["Text"]
  DUPTABLE R29 K47 [{"tag", "Text", "LayoutOrder"}]
  LOADK R30 K48 ["text-align-x-left text-no-wrap text-truncate-end text-body-medium size-full-0 auto-y"]
  SETTABLEKS R30 R29 K20 ["tag"]
  LOADK R31 K49 ["%*: %*"]
  LOADK R35 K50 ["AssetType"]
  GETTABLEKS R36 R15 K3 ["assetType"]
  NAMECALL R33 R1 K51 ["getText"]
  CALL R33 3 1
  GETTABLEKS R34 R15 K5 ["assetId"]
  NAMECALL R31 R31 K52 ["format"]
  CALL R31 3 1
  MOVE R30 R31
  SETTABLEKS R30 R29 K46 ["Text"]
  LOADN R30 1
  SETTABLEKS R30 R29 K21 ["LayoutOrder"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K43 ["MainText"]
  GETUPVAL R28 3
  GETTABLEKS R27 R28 K18 ["createElement"]
  GETUPVAL R29 4
  GETTABLEKS R28 R29 K46 ["Text"]
  DUPTABLE R29 K47 [{"tag", "Text", "LayoutOrder"}]
  LOADK R30 K53 ["text-align-x-left text-wrap text-caption-small size-full-0 auto-y"]
  SETTABLEKS R30 R29 K20 ["tag"]
  LOADK R32 K54 ["Info"]
  GETTABLEKS R34 R15 K6 ["count"]
  LOADN R35 1
  JUMPIFNOTLT R35 R34 [+3]
  LOADK R33 K55 ["UsagePlural"]
  JUMP [+1]
  LOADK R33 K56 ["UsageSingle"]
  NEWTABLE R34 1 0
  GETTABLEKS R36 R15 K6 ["count"]
  FASTCALL1 TOSTRING R36 [+2]
  GETIMPORT R35 K58 [tostring]
  CALL R35 1 1
  SETTABLEKS R35 R34 K6 ["count"]
  NAMECALL R30 R1 K51 ["getText"]
  CALL R30 4 1
  SETTABLEKS R30 R29 K46 ["Text"]
  LOADN R30 2
  SETTABLEKS R30 R29 K21 ["LayoutOrder"]
  CALL R27 2 1
  SETTABLEKS R27 R26 K44 ["SupportText"]
  CALL R23 3 1
  SETTABLEKS R23 R22 K28 ["textPanel"]
  GETUPVAL R24 3
  GETTABLEKS R23 R24 K18 ["createElement"]
  GETUPVAL R25 4
  GETTABLEKS R24 R25 K19 ["View"]
  DUPTABLE R25 K41 [{"tag", "LayoutOrder"}]
  LOADK R26 K59 ["size-0-full auto-xy row align-y-center"]
  SETTABLEKS R26 R25 K20 ["tag"]
  LOADN R26 3
  SETTABLEKS R26 R25 K21 ["LayoutOrder"]
  NEWTABLE R26 0 0
  CALL R23 3 1
  SETTABLEKS R23 R22 K29 ["show"]
  CALL R19 3 -1
  FASTCALL TABLE_INSERT [+2]
  GETIMPORT R17 K10 [table.insert]
  CALL R17 -1 0
  FORNLOOP R12
  NEWTABLE R12 0 2
  DUPTABLE R13 K62 [{"id", "text"}]
  LOADK R14 K63 ["viewInExplorer"]
  SETTABLEKS R14 R13 K60 ["id"]
  LOADK R16 K64 ["Context"]
  LOADK R17 K65 ["Explorer"]
  NAMECALL R14 R1 K51 ["getText"]
  CALL R14 3 1
  SETTABLEKS R14 R13 K61 ["text"]
  DUPTABLE R14 K62 [{"id", "text"}]
  LOADK R15 K66 ["openInBrowser"]
  SETTABLEKS R15 R14 K60 ["id"]
  LOADK R17 K64 ["Context"]
  LOADK R18 K67 ["Browser"]
  NAMECALL R15 R1 K51 ["getText"]
  CALL R15 3 1
  SETTABLEKS R15 R14 K61 ["text"]
  SETLIST R12 R13 2 [1]
  GETUPVAL R14 3
  GETTABLEKS R13 R14 K18 ["createElement"]
  GETUPVAL R15 4
  GETTABLEKS R14 R15 K19 ["View"]
  DUPTABLE R15 K31 [{"tag"}]
  LOADK R16 K68 ["size-full"]
  SETTABLEKS R16 R15 K20 ["tag"]
  NEWTABLE R16 1 1
  GETUPVAL R19 3
  GETTABLEKS R18 R19 K18 ["createElement"]
  GETUPVAL R20 4
  GETTABLEKS R19 R20 K19 ["View"]
  DUPTABLE R20 K70 [{"Size", "Position"}]
  GETIMPORT R21 K14 [UDim2.fromOffset]
  LOADN R22 0
  LOADN R23 0
  CALL R21 2 1
  SETTABLEKS R21 R20 K36 ["Size"]
  SETTABLEKS R8 R20 K69 ["Position"]
  DUPTABLE R21 K72 [{"contextMenu"}]
  GETUPVAL R23 3
  GETTABLEKS R22 R23 K18 ["createElement"]
  GETUPVAL R24 4
  GETTABLEKS R23 R24 K73 ["Menu"]
  DUPTABLE R24 K80 [{"isOpen", "items", "size", "side", "align", "LayoutOrder", "onPressedOutside", "onActivated"}]
  SETTABLEKS R6 R24 K74 ["isOpen"]
  SETTABLEKS R12 R24 K75 ["items"]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K81 ["Enums"]
  GETTABLEKS R26 R27 K82 ["InputSize"]
  GETTABLEKS R25 R26 K83 ["Medium"]
  SETTABLEKS R25 R24 K76 ["size"]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K81 ["Enums"]
  GETTABLEKS R26 R27 K84 ["PopoverSide"]
  GETTABLEKS R25 R26 K85 ["Right"]
  SETTABLEKS R25 R24 K77 ["side"]
  GETUPVAL R28 4
  GETTABLEKS R27 R28 K81 ["Enums"]
  GETTABLEKS R26 R27 K86 ["PopoverAlign"]
  GETTABLEKS R25 R26 K87 ["Center"]
  SETTABLEKS R25 R24 K78 ["align"]
  LOADN R25 3
  SETTABLEKS R25 R24 K21 ["LayoutOrder"]
  NEWCLOSURE R25 P2
  CAPTURE VAL R7
  SETTABLEKS R25 R24 K79 ["onPressedOutside"]
  NEWCLOSURE R25 P3
  CAPTURE VAL R3
  CAPTURE VAL R10
  CAPTURE VAL R7
  SETTABLEKS R25 R24 K22 ["onActivated"]
  NEWTABLE R25 0 0
  CALL R22 3 1
  SETTABLEKS R22 R21 K71 ["contextMenu"]
  CALL R18 3 1
  SETTABLEKS R18 R16 K88 ["contextPosition"]
  GETUPVAL R18 3
  GETTABLEKS R17 R18 K18 ["createElement"]
  GETUPVAL R19 4
  GETTABLEKS R18 R19 K19 ["View"]
  DUPTABLE R19 K31 [{"tag"}]
  LOADK R20 K89 ["size-full bg-surface-300 col padding-medium gap-medium"]
  SETTABLEKS R20 R19 K20 ["tag"]
  DUPTABLE R20 K93 [{"Header", "CenterPanel", "footer"}]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K19 ["View"]
  DUPTABLE R23 K31 [{"tag"}]
  LOADK R24 K94 ["size-full-0 auto-y padding-small row align-y-top gap-small"]
  SETTABLEKS R24 R23 K20 ["tag"]
  DUPTABLE R24 K95 [{"iconElement", "textPanel", "show"}]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K35 ["Image"]
  DUPTABLE R27 K96 [{"Image", "Size", "LayoutOrder"}]
  LOADK R28 K97 ["rbxassetid://113290604845428"]
  SETTABLEKS R28 R27 K35 ["Image"]
  GETIMPORT R28 K14 [UDim2.fromOffset]
  LOADN R29 36
  LOADN R30 37
  CALL R28 2 1
  SETTABLEKS R28 R27 K36 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K21 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K33 ["iconElement"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K19 ["View"]
  DUPTABLE R27 K41 [{"tag", "LayoutOrder"}]
  LOADK R28 K42 ["size-0-0 auto-y col align-y-top gap-small grow"]
  SETTABLEKS R28 R27 K20 ["tag"]
  LOADN R28 2
  SETTABLEKS R28 R27 K21 ["LayoutOrder"]
  DUPTABLE R28 K45 [{"MainText", "SupportText"}]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K18 ["createElement"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K46 ["Text"]
  DUPTABLE R31 K47 [{"tag", "Text", "LayoutOrder"}]
  LOADK R32 K98 ["text-align-x-left text-no-wrap text-truncate-end text-title-medium size-full-0 auto-y"]
  SETTABLEKS R32 R31 K20 ["tag"]
  LOADK R34 K99 ["Title"]
  LOADK R35 K100 ["Review"]
  NAMECALL R32 R1 K51 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K46 ["Text"]
  LOADN R32 1
  SETTABLEKS R32 R31 K21 ["LayoutOrder"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K43 ["MainText"]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K18 ["createElement"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K46 ["Text"]
  DUPTABLE R31 K47 [{"tag", "Text", "LayoutOrder"}]
  LOADK R32 K101 ["text-align-x-left text-wrap text-body-medium size-full-0 auto-y"]
  SETTABLEKS R32 R31 K20 ["tag"]
  LOADK R34 K54 ["Info"]
  LOADK R35 K100 ["Review"]
  NAMECALL R32 R1 K51 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K46 ["Text"]
  LOADN R32 2
  SETTABLEKS R32 R31 K21 ["LayoutOrder"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K44 ["SupportText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K28 ["textPanel"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K19 ["View"]
  DUPTABLE R27 K41 [{"tag", "LayoutOrder"}]
  LOADK R28 K59 ["size-0-full auto-xy row align-y-center"]
  SETTABLEKS R28 R27 K20 ["tag"]
  LOADN R28 3
  SETTABLEKS R28 R27 K21 ["LayoutOrder"]
  NEWTABLE R28 0 0
  CALL R25 3 1
  SETTABLEKS R25 R24 K29 ["show"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K90 ["Header"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K19 ["View"]
  DUPTABLE R23 K41 [{"tag", "LayoutOrder"}]
  LOADK R24 K102 ["size-full-0 grow padding-small row align-y-top gap-small"]
  SETTABLEKS R24 R23 K20 ["tag"]
  LOADN R24 2
  SETTABLEKS R24 R23 K21 ["LayoutOrder"]
  DUPTABLE R24 K105 [{"spacer", "issues"}]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K19 ["View"]
  DUPTABLE R27 K106 [{"Size", "LayoutOrder"}]
  GETIMPORT R28 K14 [UDim2.fromOffset]
  LOADN R29 36
  LOADN R30 36
  CALL R28 2 1
  SETTABLEKS R28 R27 K36 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K21 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K103 ["spacer"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K19 ["View"]
  DUPTABLE R27 K41 [{"tag", "LayoutOrder"}]
  LOADK R28 K107 ["size-0-full grow stroke-standard stroke-muted col"]
  SETTABLEKS R28 R27 K20 ["tag"]
  LOADN R28 2
  SETTABLEKS R28 R27 K21 ["LayoutOrder"]
  DUPTABLE R28 K110 [{"titleBox", "scroll"}]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K18 ["createElement"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K19 ["View"]
  DUPTABLE R31 K41 [{"tag", "LayoutOrder"}]
  LOADK R32 K111 ["size-full-0 auto-y stroke-standard stroke-muted"]
  SETTABLEKS R32 R31 K20 ["tag"]
  LOADN R32 1
  SETTABLEKS R32 R31 K21 ["LayoutOrder"]
  DUPTABLE R32 K113 [{"title"}]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K18 ["createElement"]
  GETUPVAL R35 4
  GETTABLEKS R34 R35 K46 ["Text"]
  DUPTABLE R35 K114 [{"Text", "tag"}]
  LOADK R38 K54 ["Info"]
  LOADK R39 K115 ["Permission"]
  NAMECALL R36 R1 K51 ["getText"]
  CALL R36 3 1
  SETTABLEKS R36 R35 K46 ["Text"]
  LOADK R36 K116 ["size-full-0 auto-y text-title-medium text-align-x-left padding-xsmall"]
  SETTABLEKS R36 R35 K20 ["tag"]
  CALL R33 2 1
  SETTABLEKS R33 R32 K112 ["title"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K108 ["titleBox"]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K18 ["createElement"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K117 ["ScrollView"]
  DUPTABLE R31 K118 [{"tag", "LayoutOrder", "scroll"}]
  LOADK R32 K119 ["size-full-0 grow"]
  SETTABLEKS R32 R31 K20 ["tag"]
  LOADN R32 2
  SETTABLEKS R32 R31 K21 ["LayoutOrder"]
  DUPTABLE R32 K124 [{"scrollBarVisibility", "ScrollingDirection", "AutomaticCanvasSize", "CanvasSize"}]
  GETUPVAL R36 4
  GETTABLEKS R35 R36 K81 ["Enums"]
  GETTABLEKS R34 R35 K125 ["ScrollBarVisibility"]
  GETTABLEKS R33 R34 K126 ["Always"]
  SETTABLEKS R33 R32 K120 ["scrollBarVisibility"]
  GETIMPORT R33 K129 [Enum.ScrollingDirection.Y]
  SETTABLEKS R33 R32 K121 ["ScrollingDirection"]
  GETIMPORT R33 K131 [Enum.AutomaticSize.Y]
  SETTABLEKS R33 R32 K122 ["AutomaticCanvasSize"]
  GETIMPORT R33 K133 [UDim2.fromScale]
  LOADN R34 0
  LOADN R35 0
  CALL R33 2 1
  SETTABLEKS R33 R32 K123 ["CanvasSize"]
  SETTABLEKS R32 R31 K109 ["scroll"]
  DUPTABLE R32 K135 [{"innerView"}]
  GETUPVAL R34 3
  GETTABLEKS R33 R34 K18 ["createElement"]
  GETUPVAL R35 4
  GETTABLEKS R34 R35 K19 ["View"]
  DUPTABLE R35 K31 [{"tag"}]
  LOADK R36 K136 ["size-full-0 auto-y col"]
  SETTABLEKS R36 R35 K20 ["tag"]
  MOVE R36 R5
  CALL R33 3 1
  SETTABLEKS R33 R32 K134 ["innerView"]
  CALL R29 3 1
  SETTABLEKS R29 R28 K109 ["scroll"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K104 ["issues"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K91 ["CenterPanel"]
  GETUPVAL R22 3
  GETTABLEKS R21 R22 K18 ["createElement"]
  GETUPVAL R23 4
  GETTABLEKS R22 R23 K19 ["View"]
  DUPTABLE R23 K41 [{"tag", "LayoutOrder"}]
  LOADK R24 K137 ["bg-surface-300 row align-x-right padding-small size-full-1200 gap-small"]
  SETTABLEKS R24 R23 K20 ["tag"]
  LOADN R24 5
  SETTABLEKS R24 R23 K21 ["LayoutOrder"]
  DUPTABLE R24 K141 [{"spacer", "Link", "Back", "Export"}]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K19 ["View"]
  DUPTABLE R27 K106 [{"Size", "LayoutOrder"}]
  GETIMPORT R28 K14 [UDim2.fromOffset]
  LOADN R29 36
  LOADN R30 1
  CALL R28 2 1
  SETTABLEKS R28 R27 K36 ["Size"]
  LOADN R28 1
  SETTABLEKS R28 R27 K21 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K103 ["spacer"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K19 ["View"]
  DUPTABLE R27 K41 [{"tag", "LayoutOrder"}]
  LOADK R28 K142 ["auto-x gap-small size-0-full col align-y-center grow"]
  SETTABLEKS R28 R27 K20 ["tag"]
  LOADN R28 2
  SETTABLEKS R28 R27 K21 ["LayoutOrder"]
  DUPTABLE R28 K144 [{"LinkText"}]
  GETUPVAL R30 3
  GETTABLEKS R29 R30 K18 ["createElement"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K46 ["Text"]
  DUPTABLE R31 K145 [{"tag", "Text", "onActivated", "LayoutOrder"}]
  LOADK R32 K146 ["text-align-x-left content-link text-align-y-center text-truncate-end text-label-small auto-xy radius-small"]
  SETTABLEKS R32 R31 K20 ["tag"]
  LOADK R34 K54 ["Info"]
  LOADK R35 K147 ["Learn"]
  NAMECALL R32 R1 K51 ["getText"]
  CALL R32 3 1
  SETTABLEKS R32 R31 K46 ["Text"]
  NEWCLOSURE R32 P4
  CAPTURE VAL R3
  SETTABLEKS R32 R31 K22 ["onActivated"]
  LOADN R32 1
  SETTABLEKS R32 R31 K21 ["LayoutOrder"]
  CALL R29 2 1
  SETTABLEKS R29 R28 K143 ["LinkText"]
  CALL R25 3 1
  SETTABLEKS R25 R24 K138 ["Link"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K148 ["Button"]
  DUPTABLE R27 K151 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
  LOADK R30 K152 ["Buttons"]
  LOADK R31 K139 ["Back"]
  NAMECALL R28 R1 K51 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K61 ["text"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K81 ["Enums"]
  GETTABLEKS R29 R30 K153 ["ButtonVariant"]
  GETTABLEKS R28 R29 K154 ["Standard"]
  SETTABLEKS R28 R27 K149 ["variant"]
  NEWCLOSURE R28 P5
  CAPTURE VAL R3
  SETTABLEKS R28 R27 K22 ["onActivated"]
  LOADB R28 0
  SETTABLEKS R28 R27 K150 ["isDisabled"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K81 ["Enums"]
  GETTABLEKS R29 R30 K82 ["InputSize"]
  GETTABLEKS R28 R29 K155 ["Small"]
  SETTABLEKS R28 R27 K76 ["size"]
  LOADN R28 3
  SETTABLEKS R28 R27 K21 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K139 ["Back"]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K18 ["createElement"]
  GETUPVAL R27 4
  GETTABLEKS R26 R27 K148 ["Button"]
  DUPTABLE R27 K151 [{"text", "variant", "onActivated", "isDisabled", "size", "LayoutOrder"}]
  LOADK R30 K152 ["Buttons"]
  LOADK R31 K156 ["ExportRemaining"]
  NAMECALL R28 R1 K51 ["getText"]
  CALL R28 3 1
  SETTABLEKS R28 R27 K61 ["text"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K81 ["Enums"]
  GETTABLEKS R29 R30 K153 ["ButtonVariant"]
  GETTABLEKS R28 R29 K157 ["Emphasis"]
  SETTABLEKS R28 R27 K149 ["variant"]
  NEWCLOSURE R28 P6
  CAPTURE VAL R3
  SETTABLEKS R28 R27 K22 ["onActivated"]
  LOADB R28 0
  SETTABLEKS R28 R27 K150 ["isDisabled"]
  GETUPVAL R31 4
  GETTABLEKS R30 R31 K81 ["Enums"]
  GETTABLEKS R29 R30 K82 ["InputSize"]
  GETTABLEKS R28 R29 K155 ["Small"]
  SETTABLEKS R28 R27 K76 ["size"]
  LOADN R28 4
  SETTABLEKS R28 R27 K21 ["LayoutOrder"]
  CALL R25 2 1
  SETTABLEKS R25 R24 K140 ["Export"]
  CALL R21 3 1
  SETTABLEKS R21 R20 K92 ["footer"]
  CALL R17 3 -1
  SETLIST R16 R17 -1 [1]
  CALL R13 3 -1
  RETURN R13 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R0 K1 [script]
  LOADK R2 K2 ["AssetExport"]
  NAMECALL R0 R0 K3 ["FindFirstAncestor"]
  CALL R0 2 1
  GETIMPORT R1 K5 [require]
  GETTABLEKS R3 R0 K6 ["Packages"]
  GETTABLEKS R2 R3 K7 ["React"]
  CALL R1 1 1
  GETIMPORT R2 K5 [require]
  GETTABLEKS R4 R0 K6 ["Packages"]
  GETTABLEKS R3 R4 K8 ["Framework"]
  CALL R2 1 1
  GETIMPORT R3 K5 [require]
  GETTABLEKS R5 R0 K6 ["Packages"]
  GETTABLEKS R4 R5 K9 ["Foundation"]
  CALL R3 1 1
  GETTABLEKS R4 R2 K10 ["ContextServices"]
  GETTABLEKS R5 R4 K11 ["Localization"]
  GETIMPORT R6 K5 [require]
  GETTABLEKS R9 R0 K12 ["Src"]
  GETTABLEKS R8 R9 K13 ["Controllers"]
  GETTABLEKS R7 R8 K14 ["ExportController"]
  CALL R6 1 1
  GETIMPORT R7 K5 [require]
  GETTABLEKS R10 R0 K12 ["Src"]
  GETTABLEKS R9 R10 K15 ["Hooks"]
  GETTABLEKS R8 R9 K16 ["usePermissionFailures"]
  CALL R7 1 1
  DUPCLOSURE R8 K17 [PROTO_10]
  CAPTURE VAL R5
  CAPTURE VAL R6
  CAPTURE VAL R7
  CAPTURE VAL R1
  CAPTURE VAL R3
  RETURN R8 1
