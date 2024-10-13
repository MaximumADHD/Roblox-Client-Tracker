PROTO_0:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  GETUPVAL R5 0
  GETTABLEKS R4 R5 K3 ["new"]
  CALL R4 0 1
  GETTABLEKS R6 R1 K4 ["TaxRate"]
  JUMPIFNOT R6 [+3]
  GETTABLEKS R5 R1 K4 ["TaxRate"]
  JUMPIF R5 [+1]
  LOADK R5 K5 [0.9]
  GETTABLEKS R8 R1 K6 ["Price"]
  FASTCALL1 TYPE R8 [+2]
  GETIMPORT R7 K8 [type]
  CALL R7 1 1
  JUMPIFNOTEQKS R7 K9 ["number"] [+4]
  GETTABLEKS R6 R1 K6 ["Price"]
  JUMPIF R6 [+1]
  LOADN R6 0
  LOADN R8 0
  JUMPIFNOTLT R8 R6 [+4]
  GETTABLEKS R7 R1 K10 ["MinimumFee"]
  JUMPIF R7 [+1]
  LOADN R7 0
  GETIMPORT R8 K13 [string.format]
  LOADK R9 K14 ["%.f"]
  MOVE R10 R6
  CALL R8 2 1
  GETTABLEKS R9 R1 K15 ["SubText"]
  GETTABLEKS R10 R1 K16 ["Enabled"]
  GETTABLEKS R11 R1 K17 ["OnPriceChanged"]
  LOADK R14 K18 ["Monetization"]
  LOADK R15 K19 ["MarketplaceFee"]
  NAMECALL R12 R3 K20 ["getText"]
  CALL R12 3 1
  GETUPVAL R13 1
  MOVE R14 R12
  GETTABLEKS R17 R2 K21 ["fontStyle"]
  GETTABLEKS R16 R17 K22 ["Normal"]
  GETTABLEKS R15 R16 K23 ["TextSize"]
  GETTABLEKS R18 R2 K21 ["fontStyle"]
  GETTABLEKS R17 R18 K22 ["Normal"]
  GETTABLEKS R16 R17 K24 ["Font"]
  CALL R13 3 1
  LOADK R16 K18 ["Monetization"]
  LOADK R17 K25 ["MarketplaceFeeIs"]
  NEWTABLE R18 0 1
  GETIMPORT R19 K13 [string.format]
  LOADK R20 K26 ["%2d"]
  MULK R21 R5 K27 [100]
  CALL R19 2 -1
  SETLIST R18 R19 -1 [1]
  NAMECALL R14 R3 K20 ["getText"]
  CALL R14 4 1
  GETUPVAL R16 2
  JUMPIFNOT R16 [+2]
  LOADNIL R15
  JUMP [+25]
  GETUPVAL R15 1
  MOVE R16 R14
  GETTABLEKS R19 R2 K21 ["fontStyle"]
  GETTABLEKS R18 R19 K28 ["Subtext"]
  GETTABLEKS R17 R18 K23 ["TextSize"]
  GETTABLEKS R20 R2 K21 ["fontStyle"]
  GETTABLEKS R19 R20 K28 ["Subtext"]
  GETTABLEKS R18 R19 K24 ["Font"]
  GETIMPORT R19 K30 [Vector2.new]
  GETTABLEKS R22 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R21 R22 K32 ["subText"]
  GETTABLEKS R20 R21 K33 ["width"]
  LOADK R21 K34 [∞]
  CALL R19 2 -1
  CALL R15 -1 1
  MUL R19 R6 R5
  FASTCALL1 MATH_CEIL R19 [+2]
  GETIMPORT R18 K37 [math.ceil]
  CALL R18 1 1
  FASTCALL2 MATH_MAX R7 R18 [+4]
  MOVE R17 R7
  GETIMPORT R16 K39 [math.max]
  CALL R16 2 1
  GETIMPORT R17 K13 [string.format]
  LOADK R18 K14 ["%.f"]
  MOVE R19 R16
  CALL R17 2 1
  LOADK R20 K18 ["Monetization"]
  LOADK R21 K40 ["EarnLabel"]
  NAMECALL R18 R3 K20 ["getText"]
  CALL R18 3 1
  GETUPVAL R19 1
  MOVE R20 R18
  GETTABLEKS R23 R2 K21 ["fontStyle"]
  GETTABLEKS R22 R23 K22 ["Normal"]
  GETTABLEKS R21 R22 K23 ["TextSize"]
  GETTABLEKS R24 R2 K21 ["fontStyle"]
  GETTABLEKS R23 R24 K22 ["Normal"]
  GETTABLEKS R22 R23 K24 ["Font"]
  CALL R19 3 1
  SUB R21 R6 R16
  LOADN R22 0
  JUMPIFNOTLT R22 R21 [+3]
  SUB R20 R6 R16
  JUMPIF R20 [+1]
  LOADN R20 0
  GETIMPORT R21 K13 [string.format]
  LOADK R22 K14 ["%.f"]
  MOVE R23 R20
  CALL R21 2 1
  NOT R22 R9
  JUMPIF R22 [+2]
  GETTABLEKS R22 R1 K41 ["ShowPriceChangeWarning"]
  JUMPIFNOT R10 [+7]
  GETTABLEKS R25 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R24 R25 K42 ["transparency"]
  GETTABLEKS R23 R24 K43 ["enabled"]
  JUMPIF R23 [+6]
  GETTABLEKS R25 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R24 R25 K42 ["transparency"]
  GETTABLEKS R23 R24 K44 ["disabled"]
  MOVE R24 R22
  JUMPIFNOT R24 [+258]
  GETUPVAL R25 3
  GETTABLEKS R24 R25 K45 ["createElement"]
  GETUPVAL R26 2
  JUMPIFNOT R26 [+2]
  GETUPVAL R25 4
  JUMP [+1]
  LOADK R25 K46 ["Frame"]
  GETUPVAL R27 2
  JUMPIFNOT R27 [+21]
  DUPTABLE R26 K51 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
  GETIMPORT R27 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R27 R26 K47 ["AutomaticSize"]
  NAMECALL R27 R4 K55 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K48 ["LayoutOrder"]
  GETIMPORT R27 K58 [Enum.FillDirection.Horizontal]
  SETTABLEKS R27 R26 K49 ["Layout"]
  GETTABLEKS R28 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R27 R28 K59 ["spacing"]
  SETTABLEKS R27 R26 K50 ["Spacing"]
  JUMP [+19]
  DUPTABLE R26 K62 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R27 K64 [UDim2.new]
  LOADN R28 1
  LOADN R29 0
  LOADN R30 0
  GETTABLEKS R31 R2 K65 ["rowHeight"]
  CALL R27 4 1
  SETTABLEKS R27 R26 K60 ["Size"]
  LOADN R27 1
  SETTABLEKS R27 R26 K61 ["BackgroundTransparency"]
  NAMECALL R27 R4 K55 ["getNextOrder"]
  CALL R27 1 1
  SETTABLEKS R27 R26 K48 ["LayoutOrder"]
  DUPTABLE R27 K70 [{"HorizontalLayout", "FeeLabel", "RobuxIcon", "FeeAmount"}]
  GETUPVAL R29 2
  JUMPIFNOT R29 [+2]
  LOADNIL R28
  JUMP [+18]
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K45 ["createElement"]
  LOADK R29 K71 ["UIListLayout"]
  DUPTABLE R30 K74 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R31 K58 [Enum.FillDirection.Horizontal]
  SETTABLEKS R31 R30 K56 ["FillDirection"]
  GETIMPORT R31 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R31 R30 K72 ["SortOrder"]
  GETIMPORT R31 K77 [Enum.VerticalAlignment.Center]
  SETTABLEKS R31 R30 K73 ["VerticalAlignment"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K66 ["HorizontalLayout"]
  GETUPVAL R29 2
  JUMPIFNOT R29 [+16]
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K45 ["createElement"]
  GETUPVAL R29 5
  DUPTABLE R30 K79 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R31 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R31 R30 K47 ["AutomaticSize"]
  LOADN R31 1
  SETTABLEKS R31 R30 K48 ["LayoutOrder"]
  SETTABLEKS R12 R30 K78 ["Text"]
  CALL R28 2 1
  JUMP [+44]
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K45 ["createElement"]
  LOADK R29 K80 ["TextLabel"]
  GETUPVAL R32 6
  GETTABLEKS R31 R32 K81 ["Dictionary"]
  GETTABLEKS R30 R31 K82 ["join"]
  GETTABLEKS R32 R2 K21 ["fontStyle"]
  GETTABLEKS R31 R32 K22 ["Normal"]
  DUPTABLE R32 K86 [{"Size", "BackgroundTransparency", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
  GETIMPORT R33 K64 [UDim2.new]
  LOADN R34 0
  GETTABLEKS R35 R13 K87 ["X"]
  LOADN R36 1
  LOADN R37 0
  CALL R33 4 1
  SETTABLEKS R33 R32 K60 ["Size"]
  LOADN R33 1
  SETTABLEKS R33 R32 K61 ["BackgroundTransparency"]
  GETIMPORT R33 K88 [Enum.TextYAlignment.Center]
  SETTABLEKS R33 R32 K83 ["TextYAlignment"]
  GETIMPORT R33 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R33 R32 K84 ["TextXAlignment"]
  SETTABLEKS R23 R32 K85 ["TextTransparency"]
  SETTABLEKS R12 R32 K78 ["Text"]
  LOADN R33 1
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 -1
  CALL R28 -1 1
  SETTABLEKS R28 R27 K67 ["FeeLabel"]
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K45 ["createElement"]
  LOADK R29 K91 ["ImageLabel"]
  DUPTABLE R30 K95 [{"Size", "ImageColor3", "Image", "ImageTransparency", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R31 K64 [UDim2.new]
  LOADN R32 0
  GETTABLEKS R35 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R34 R35 K96 ["icon"]
  GETTABLEKS R33 R34 K97 ["size"]
  LOADN R34 0
  GETTABLEKS R37 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R36 R37 K96 ["icon"]
  GETTABLEKS R35 R36 K97 ["size"]
  CALL R31 4 1
  SETTABLEKS R31 R30 K60 ["Size"]
  GETTABLEKS R33 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R32 R33 K96 ["icon"]
  GETTABLEKS R31 R32 K98 ["imageColor"]
  SETTABLEKS R31 R30 K92 ["ImageColor3"]
  GETTABLEKS R33 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R32 R33 K96 ["icon"]
  GETTABLEKS R31 R32 K99 ["image"]
  SETTABLEKS R31 R30 K93 ["Image"]
  SETTABLEKS R23 R30 K94 ["ImageTransparency"]
  LOADN R31 1
  SETTABLEKS R31 R30 K61 ["BackgroundTransparency"]
  LOADN R31 2
  SETTABLEKS R31 R30 K48 ["LayoutOrder"]
  CALL R28 2 1
  SETTABLEKS R28 R27 K68 ["RobuxIcon"]
  GETUPVAL R29 2
  JUMPIFNOT R29 [+16]
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K45 ["createElement"]
  GETUPVAL R29 5
  DUPTABLE R30 K79 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R31 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R31 R30 K47 ["AutomaticSize"]
  LOADN R31 3
  SETTABLEKS R31 R30 K48 ["LayoutOrder"]
  SETTABLEKS R17 R30 K78 ["Text"]
  CALL R28 2 1
  JUMP [+47]
  GETUPVAL R29 3
  GETTABLEKS R28 R29 K45 ["createElement"]
  LOADK R29 K80 ["TextLabel"]
  GETUPVAL R32 6
  GETTABLEKS R31 R32 K81 ["Dictionary"]
  GETTABLEKS R30 R31 K82 ["join"]
  GETTABLEKS R32 R2 K21 ["fontStyle"]
  GETTABLEKS R31 R32 K22 ["Normal"]
  DUPTABLE R32 K101 [{"Size", "BackgroundTransparency", "BorderSizePixel", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
  GETIMPORT R33 K64 [UDim2.new]
  LOADN R34 1
  LOADN R35 0
  LOADN R36 0
  GETTABLEKS R37 R2 K65 ["rowHeight"]
  CALL R33 4 1
  SETTABLEKS R33 R32 K60 ["Size"]
  LOADN R33 1
  SETTABLEKS R33 R32 K61 ["BackgroundTransparency"]
  LOADN R33 0
  SETTABLEKS R33 R32 K100 ["BorderSizePixel"]
  GETIMPORT R33 K88 [Enum.TextYAlignment.Center]
  SETTABLEKS R33 R32 K83 ["TextYAlignment"]
  GETIMPORT R33 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R33 R32 K84 ["TextXAlignment"]
  SETTABLEKS R23 R32 K85 ["TextTransparency"]
  SETTABLEKS R17 R32 K78 ["Text"]
  LOADN R33 3
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 -1
  CALL R28 -1 1
  SETTABLEKS R28 R27 K69 ["FeeAmount"]
  CALL R24 3 1
  MOVE R25 R22
  JUMPIFNOT R25 [+78]
  GETUPVAL R26 2
  JUMPIFNOT R26 [+24]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K45 ["createElement"]
  GETUPVAL R26 5
  DUPTABLE R27 K104 [{"AutomaticSize", "LayoutOrder", "Style", "Text", "TextWrapped"}]
  GETIMPORT R28 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R28 R27 K47 ["AutomaticSize"]
  NAMECALL R28 R4 K55 ["getNextOrder"]
  CALL R28 1 1
  SETTABLEKS R28 R27 K48 ["LayoutOrder"]
  LOADK R28 K105 ["Label"]
  SETTABLEKS R28 R27 K102 ["Style"]
  SETTABLEKS R14 R27 K78 ["Text"]
  LOADB R28 1
  SETTABLEKS R28 R27 K103 ["TextWrapped"]
  CALL R25 2 1
  JUMP [+52]
  GETUPVAL R26 3
  GETTABLEKS R25 R26 K45 ["createElement"]
  LOADK R26 K80 ["TextLabel"]
  GETUPVAL R29 6
  GETTABLEKS R28 R29 K81 ["Dictionary"]
  GETTABLEKS R27 R28 K82 ["join"]
  GETTABLEKS R29 R2 K21 ["fontStyle"]
  GETTABLEKS R28 R29 K28 ["Subtext"]
  DUPTABLE R29 K106 [{"Size", "BackgroundTransparency", "Text", "TextYAlignment", "TextXAlignment", "TextWrapped", "LayoutOrder"}]
  GETIMPORT R30 K64 [UDim2.new]
  LOADN R31 0
  GETTABLEKS R33 R15 K87 ["X"]
  FASTCALL1 MATH_CEIL R33 [+2]
  GETIMPORT R32 K37 [math.ceil]
  CALL R32 1 1
  LOADN R33 0
  GETTABLEKS R34 R15 K107 ["Y"]
  CALL R30 4 1
  SETTABLEKS R30 R29 K60 ["Size"]
  LOADN R30 1
  SETTABLEKS R30 R29 K61 ["BackgroundTransparency"]
  SETTABLEKS R14 R29 K78 ["Text"]
  GETIMPORT R30 K88 [Enum.TextYAlignment.Center]
  SETTABLEKS R30 R29 K83 ["TextYAlignment"]
  GETIMPORT R30 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R30 R29 K84 ["TextXAlignment"]
  LOADB R30 1
  SETTABLEKS R30 R29 K103 ["TextWrapped"]
  NAMECALL R30 R4 K55 ["getNextOrder"]
  CALL R30 1 1
  SETTABLEKS R30 R29 K48 ["LayoutOrder"]
  CALL R27 2 -1
  CALL R25 -1 1
  MOVE R26 R22
  JUMPIFNOT R26 [+263]
  GETUPVAL R27 3
  GETTABLEKS R26 R27 K45 ["createElement"]
  GETUPVAL R28 2
  JUMPIFNOT R28 [+2]
  GETUPVAL R27 4
  JUMP [+1]
  LOADK R27 K46 ["Frame"]
  GETUPVAL R29 2
  JUMPIFNOT R29 [+21]
  DUPTABLE R28 K51 [{"AutomaticSize", "LayoutOrder", "Layout", "Spacing"}]
  GETIMPORT R29 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R29 R28 K47 ["AutomaticSize"]
  NAMECALL R29 R4 K55 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K48 ["LayoutOrder"]
  GETIMPORT R29 K58 [Enum.FillDirection.Horizontal]
  SETTABLEKS R29 R28 K49 ["Layout"]
  GETTABLEKS R30 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R29 R30 K59 ["spacing"]
  SETTABLEKS R29 R28 K50 ["Spacing"]
  JUMP [+19]
  DUPTABLE R28 K62 [{"Size", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R29 K64 [UDim2.new]
  LOADN R30 1
  LOADN R31 0
  LOADN R32 0
  GETTABLEKS R33 R2 K65 ["rowHeight"]
  CALL R29 4 1
  SETTABLEKS R29 R28 K60 ["Size"]
  LOADN R29 1
  SETTABLEKS R29 R28 K61 ["BackgroundTransparency"]
  NAMECALL R29 R4 K55 ["getNextOrder"]
  CALL R29 1 1
  SETTABLEKS R29 R28 K48 ["LayoutOrder"]
  DUPTABLE R29 K109 [{"HorizontalLayout", "EarnLabel", "RobuxIcon", "EarnAmount"}]
  GETUPVAL R31 2
  JUMPIFNOT R31 [+2]
  LOADNIL R30
  JUMP [+18]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K45 ["createElement"]
  LOADK R31 K71 ["UIListLayout"]
  DUPTABLE R32 K74 [{"FillDirection", "SortOrder", "VerticalAlignment"}]
  GETIMPORT R33 K58 [Enum.FillDirection.Horizontal]
  SETTABLEKS R33 R32 K56 ["FillDirection"]
  GETIMPORT R33 K75 [Enum.SortOrder.LayoutOrder]
  SETTABLEKS R33 R32 K72 ["SortOrder"]
  GETIMPORT R33 K77 [Enum.VerticalAlignment.Center]
  SETTABLEKS R33 R32 K73 ["VerticalAlignment"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K66 ["HorizontalLayout"]
  GETUPVAL R31 2
  JUMPIFNOT R31 [+16]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K45 ["createElement"]
  GETUPVAL R31 5
  DUPTABLE R32 K79 [{"AutomaticSize", "LayoutOrder", "Text"}]
  GETIMPORT R33 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R33 R32 K47 ["AutomaticSize"]
  LOADN R33 1
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  SETTABLEKS R18 R32 K78 ["Text"]
  CALL R30 2 1
  JUMP [+47]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K45 ["createElement"]
  LOADK R31 K80 ["TextLabel"]
  GETUPVAL R34 6
  GETTABLEKS R33 R34 K81 ["Dictionary"]
  GETTABLEKS R32 R33 K82 ["join"]
  GETTABLEKS R34 R2 K21 ["fontStyle"]
  GETTABLEKS R33 R34 K22 ["Normal"]
  DUPTABLE R34 K101 [{"Size", "BackgroundTransparency", "BorderSizePixel", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
  GETIMPORT R35 K64 [UDim2.new]
  LOADN R36 0
  GETTABLEKS R37 R19 K87 ["X"]
  LOADN R38 1
  LOADN R39 0
  CALL R35 4 1
  SETTABLEKS R35 R34 K60 ["Size"]
  LOADN R35 1
  SETTABLEKS R35 R34 K61 ["BackgroundTransparency"]
  LOADN R35 0
  SETTABLEKS R35 R34 K100 ["BorderSizePixel"]
  GETIMPORT R35 K88 [Enum.TextYAlignment.Center]
  SETTABLEKS R35 R34 K83 ["TextYAlignment"]
  GETIMPORT R35 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R35 R34 K84 ["TextXAlignment"]
  SETTABLEKS R23 R34 K85 ["TextTransparency"]
  SETTABLEKS R18 R34 K78 ["Text"]
  LOADN R35 1
  SETTABLEKS R35 R34 K48 ["LayoutOrder"]
  CALL R32 2 -1
  CALL R30 -1 1
  SETTABLEKS R30 R29 K40 ["EarnLabel"]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K45 ["createElement"]
  LOADK R31 K91 ["ImageLabel"]
  DUPTABLE R32 K95 [{"Size", "ImageColor3", "Image", "ImageTransparency", "BackgroundTransparency", "LayoutOrder"}]
  GETIMPORT R33 K64 [UDim2.new]
  LOADN R34 0
  GETTABLEKS R37 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R36 R37 K96 ["icon"]
  GETTABLEKS R35 R36 K97 ["size"]
  LOADN R36 0
  GETTABLEKS R39 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R38 R39 K96 ["icon"]
  GETTABLEKS R37 R38 K97 ["size"]
  CALL R33 4 1
  SETTABLEKS R33 R32 K60 ["Size"]
  GETTABLEKS R35 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R34 R35 K96 ["icon"]
  GETTABLEKS R33 R34 K98 ["imageColor"]
  SETTABLEKS R33 R32 K92 ["ImageColor3"]
  GETTABLEKS R35 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R34 R35 K96 ["icon"]
  GETTABLEKS R33 R34 K99 ["image"]
  SETTABLEKS R33 R32 K93 ["Image"]
  SETTABLEKS R23 R32 K94 ["ImageTransparency"]
  LOADN R33 1
  SETTABLEKS R33 R32 K61 ["BackgroundTransparency"]
  LOADN R33 2
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  CALL R30 2 1
  SETTABLEKS R30 R29 K68 ["RobuxIcon"]
  GETUPVAL R31 2
  JUMPIFNOT R31 [+18]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K45 ["createElement"]
  GETUPVAL R31 5
  DUPTABLE R32 K110 [{"AutomaticSize", "LayoutOrder", "Text", "TextTransparency"}]
  GETIMPORT R33 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R33 R32 K47 ["AutomaticSize"]
  LOADN R33 3
  SETTABLEKS R33 R32 K48 ["LayoutOrder"]
  SETTABLEKS R21 R32 K78 ["Text"]
  SETTABLEKS R23 R32 K85 ["TextTransparency"]
  CALL R30 2 1
  JUMP [+47]
  GETUPVAL R31 3
  GETTABLEKS R30 R31 K45 ["createElement"]
  LOADK R31 K80 ["TextLabel"]
  GETUPVAL R34 6
  GETTABLEKS R33 R34 K81 ["Dictionary"]
  GETTABLEKS R32 R33 K82 ["join"]
  GETTABLEKS R34 R2 K21 ["fontStyle"]
  GETTABLEKS R33 R34 K22 ["Normal"]
  DUPTABLE R34 K101 [{"Size", "BackgroundTransparency", "BorderSizePixel", "TextYAlignment", "TextXAlignment", "TextTransparency", "Text", "LayoutOrder"}]
  GETIMPORT R35 K64 [UDim2.new]
  LOADN R36 1
  LOADN R37 0
  LOADN R38 0
  GETTABLEKS R39 R2 K65 ["rowHeight"]
  CALL R35 4 1
  SETTABLEKS R35 R34 K60 ["Size"]
  LOADN R35 1
  SETTABLEKS R35 R34 K61 ["BackgroundTransparency"]
  LOADN R35 0
  SETTABLEKS R35 R34 K100 ["BorderSizePixel"]
  GETIMPORT R35 K88 [Enum.TextYAlignment.Center]
  SETTABLEKS R35 R34 K83 ["TextYAlignment"]
  GETIMPORT R35 K90 [Enum.TextXAlignment.Left]
  SETTABLEKS R35 R34 K84 ["TextXAlignment"]
  SETTABLEKS R23 R34 K85 ["TextTransparency"]
  SETTABLEKS R21 R34 K78 ["Text"]
  LOADN R35 3
  SETTABLEKS R35 R34 K48 ["LayoutOrder"]
  CALL R32 2 -1
  CALL R30 -1 1
  SETTABLEKS R30 R29 K108 ["EarnAmount"]
  CALL R26 3 1
  GETUPVAL R28 3
  GETTABLEKS R27 R28 K45 ["createElement"]
  GETUPVAL R28 4
  DUPTABLE R29 K112 [{"AutomaticSize", "Layout", "Spacing", "HorizontalAlignment"}]
  GETIMPORT R30 K54 [Enum.AutomaticSize.XY]
  SETTABLEKS R30 R29 K47 ["AutomaticSize"]
  GETIMPORT R30 K114 [Enum.FillDirection.Vertical]
  SETTABLEKS R30 R29 K49 ["Layout"]
  GETUPVAL R31 2
  JUMPIFNOT R31 [+5]
  GETTABLEKS R31 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R30 R31 K115 ["pricePadding"]
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K50 ["Spacing"]
  GETUPVAL R31 2
  JUMPIFNOT R31 [+3]
  GETIMPORT R30 K116 [Enum.HorizontalAlignment.Left]
  JUMP [+1]
  LOADNIL R30
  SETTABLEKS R30 R29 K111 ["HorizontalAlignment"]
  DUPTABLE R30 K121 [{"TextInput", "FeeFrame", "FeeSubText", "EarnFrame"}]
  GETUPVAL R32 3
  GETTABLEKS R31 R32 K45 ["createElement"]
  GETUPVAL R32 7
  DUPTABLE R33 K128 [{"BottomText", "Disabled", "LayoutOrder", "LeadingComponent", "LeadingComponentProps", "OnTextChanged", "Width", "Text"}]
  SETTABLEKS R9 R33 K122 ["BottomText"]
  NOT R34 R10
  SETTABLEKS R34 R33 K123 ["Disabled"]
  LOADN R34 0
  SETTABLEKS R34 R33 K48 ["LayoutOrder"]
  GETUPVAL R34 8
  SETTABLEKS R34 R33 K124 ["LeadingComponent"]
  DUPTABLE R34 K129 [{"ImageColor3", "Image", "Size"}]
  GETTABLEKS R37 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R36 R37 K96 ["icon"]
  GETTABLEKS R35 R36 K98 ["imageColor"]
  SETTABLEKS R35 R34 K92 ["ImageColor3"]
  GETTABLEKS R37 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R36 R37 K96 ["icon"]
  GETTABLEKS R35 R36 K99 ["image"]
  SETTABLEKS R35 R34 K93 ["Image"]
  GETIMPORT R35 K64 [UDim2.new]
  LOADN R36 0
  GETTABLEKS R39 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R38 R39 K96 ["icon"]
  GETTABLEKS R37 R38 K97 ["size"]
  LOADN R38 0
  GETTABLEKS R41 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R40 R41 K96 ["icon"]
  GETTABLEKS R39 R40 K97 ["size"]
  CALL R35 4 1
  SETTABLEKS R35 R34 K60 ["Size"]
  SETTABLEKS R34 R33 K125 ["LeadingComponentProps"]
  SETTABLEKS R11 R33 K126 ["OnTextChanged"]
  GETTABLEKS R36 R2 K31 ["robuxFeeBase"]
  GETTABLEKS R35 R36 K130 ["priceField"]
  GETTABLEKS R34 R35 K33 ["width"]
  SETTABLEKS R34 R33 K127 ["Width"]
  SETTABLEKS R8 R33 K78 ["Text"]
  CALL R31 2 1
  SETTABLEKS R31 R30 K117 ["TextInput"]
  SETTABLEKS R24 R30 K118 ["FeeFrame"]
  SETTABLEKS R25 R30 K119 ["FeeSubText"]
  SETTABLEKS R26 R30 K120 ["EarnFrame"]
  CALL R27 3 -1
  RETURN R27 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R4 K1 [script]
  GETTABLEKS R3 R4 K2 ["Parent"]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [require]
  GETTABLEKS R3 R0 K5 ["Packages"]
  GETTABLEKS R2 R3 K6 ["Cryo"]
  CALL R1 1 1
  GETIMPORT R2 K4 [require]
  GETTABLEKS R4 R0 K5 ["Packages"]
  GETTABLEKS R3 R4 K7 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K4 [require]
  GETTABLEKS R5 R0 K5 ["Packages"]
  GETTABLEKS R4 R5 K8 ["Framework"]
  CALL R3 1 1
  GETIMPORT R4 K4 [require]
  GETTABLEKS R7 R0 K9 ["Src"]
  GETTABLEKS R6 R7 K10 ["Flags"]
  GETTABLEKS R5 R6 K11 ["getFFlagGameSettingsFixMoreLayoutIssues"]
  CALL R4 1 1
  CALL R4 0 1
  GETTABLEKS R5 R3 K12 ["Util"]
  GETTABLEKS R6 R5 K13 ["GetTextSize"]
  GETTABLEKS R7 R5 K14 ["LayoutOrderIterator"]
  GETTABLEKS R8 R3 K15 ["UI"]
  GETTABLEKS R9 R8 K16 ["Image"]
  GETTABLEKS R10 R8 K17 ["Pane"]
  GETTABLEKS R11 R8 K18 ["TextLabel"]
  GETTABLEKS R12 R8 K19 ["TextInput"]
  GETTABLEKS R13 R3 K20 ["ContextServices"]
  GETTABLEKS R14 R13 K21 ["withContext"]
  GETTABLEKS R15 R2 K22 ["PureComponent"]
  LOADK R17 K23 ["RobuxFeeBase"]
  NAMECALL R15 R15 K24 ["extend"]
  CALL R15 2 1
  DUPCLOSURE R16 K25 [PROTO_0]
  CAPTURE VAL R7
  CAPTURE VAL R6
  CAPTURE VAL R4
  CAPTURE VAL R2
  CAPTURE VAL R10
  CAPTURE VAL R11
  CAPTURE VAL R1
  CAPTURE VAL R12
  CAPTURE VAL R9
  SETTABLEKS R16 R15 K26 ["render"]
  MOVE R16 R14
  DUPTABLE R17 K29 [{"Localization", "Stylizer"}]
  GETTABLEKS R18 R13 K27 ["Localization"]
  SETTABLEKS R18 R17 K27 ["Localization"]
  GETTABLEKS R18 R13 K28 ["Stylizer"]
  SETTABLEKS R18 R17 K28 ["Stylizer"]
  CALL R16 1 1
  MOVE R17 R15
  CALL R16 1 1
  MOVE R15 R16
  RETURN R15 1
