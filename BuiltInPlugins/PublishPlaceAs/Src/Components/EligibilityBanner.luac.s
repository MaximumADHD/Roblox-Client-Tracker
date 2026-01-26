PROTO_0:
  GETUPVAL R0 0
  GETUPVAL R2 1
  NAMECALL R0 R0 K0 ["OpenBrowserWindow"]
  CALL R0 2 0
  RETURN R0 0

PROTO_1:
  DUPCLOSURE R1 K0 [PROTO_0]
  CAPTURE UPVAL U0
  CAPTURE UPVAL U1
  SETTABLEKS R1 R0 K1 ["onManageClick"]
  RETURN R0 0

PROTO_2:
  GETTABLEKS R1 R0 K0 ["props"]
  GETTABLEKS R2 R1 K1 ["Stylizer"]
  GETTABLEKS R3 R1 K2 ["Localization"]
  LOADK R6 K3 ["Banner"]
  LOADK R7 K4 ["PublishEligibility"]
  NAMECALL R4 R3 K5 ["getText"]
  CALL R4 3 1
  LOADK R7 K6 ["Button"]
  LOADK R8 K7 ["Manage"]
  NAMECALL R5 R3 K5 ["getText"]
  CALL R5 3 1
  GETUPVAL R7 0
  GETTABLEKS R6 R7 K8 ["createElement"]
  LOADK R7 K9 ["Frame"]
  DUPTABLE R8 K15 [{"Position", "Size", "AutomaticSize", "BackgroundColor3", "BackgroundTransparency"}]
  GETTABLEKS R9 R1 K10 ["Position"]
  SETTABLEKS R9 R8 K10 ["Position"]
  GETIMPORT R9 K18 [UDim2.new]
  LOADN R10 1
  LOADN R11 0
  LOADN R12 0
  LOADN R13 0
  CALL R9 4 1
  SETTABLEKS R9 R8 K11 ["Size"]
  GETIMPORT R9 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R9 R8 K12 ["AutomaticSize"]
  GETTABLEKS R10 R2 K22 ["eligibilityBanner"]
  GETTABLEKS R9 R10 K23 ["backgroundColor"]
  SETTABLEKS R9 R8 K13 ["BackgroundColor3"]
  LOADN R9 0
  SETTABLEKS R9 R8 K14 ["BackgroundTransparency"]
  DUPTABLE R9 K28 [{"UICorner", "UIPadding", "LeftContent", "ManageButton"}]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["createElement"]
  LOADK R11 K24 ["UICorner"]
  DUPTABLE R12 K30 [{"CornerRadius"}]
  GETIMPORT R13 K32 [UDim.new]
  LOADN R14 0
  LOADN R15 8
  CALL R13 2 1
  SETTABLEKS R13 R12 K29 ["CornerRadius"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K24 ["UICorner"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["createElement"]
  LOADK R11 K25 ["UIPadding"]
  DUPTABLE R12 K37 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
  GETIMPORT R13 K32 [UDim.new]
  LOADN R14 0
  LOADN R15 12
  CALL R13 2 1
  SETTABLEKS R13 R12 K33 ["PaddingTop"]
  GETIMPORT R13 K32 [UDim.new]
  LOADN R14 0
  LOADN R15 12
  CALL R13 2 1
  SETTABLEKS R13 R12 K34 ["PaddingBottom"]
  GETIMPORT R13 K32 [UDim.new]
  LOADN R14 0
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K35 ["PaddingLeft"]
  GETIMPORT R13 K32 [UDim.new]
  LOADN R14 0
  LOADN R15 16
  CALL R13 2 1
  SETTABLEKS R13 R12 K36 ["PaddingRight"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K25 ["UIPadding"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 1
  DUPTABLE R12 K42 [{"Size", "AutomaticSize", "Layout", "Spacing", "HorizontalAlignment", "VerticalAlignment", "BackgroundTransparency"}]
  GETIMPORT R13 K18 [UDim2.new]
  LOADN R14 1
  LOADN R15 156
  LOADN R16 0
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K11 ["Size"]
  GETIMPORT R13 K21 [Enum.AutomaticSize.Y]
  SETTABLEKS R13 R12 K12 ["AutomaticSize"]
  GETIMPORT R13 K45 [Enum.FillDirection.Horizontal]
  SETTABLEKS R13 R12 K38 ["Layout"]
  LOADN R13 12
  SETTABLEKS R13 R12 K39 ["Spacing"]
  GETIMPORT R13 K47 [Enum.HorizontalAlignment.Left]
  SETTABLEKS R13 R12 K40 ["HorizontalAlignment"]
  GETIMPORT R13 K49 [Enum.VerticalAlignment.Center]
  SETTABLEKS R13 R12 K41 ["VerticalAlignment"]
  LOADN R13 1
  SETTABLEKS R13 R12 K14 ["BackgroundTransparency"]
  DUPTABLE R13 K52 [{"InfoIcon", "BannerText"}]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K8 ["createElement"]
  LOADK R15 K53 ["ImageLabel"]
  DUPTABLE R16 K56 [{"Image", "BackgroundTransparency", "Size", "LayoutOrder"}]
  GETTABLEKS R18 R2 K57 ["genreInfo"]
  GETTABLEKS R17 R18 K58 ["image"]
  SETTABLEKS R17 R16 K54 ["Image"]
  LOADN R17 1
  SETTABLEKS R17 R16 K14 ["BackgroundTransparency"]
  GETIMPORT R17 K60 [UDim2.fromOffset]
  GETTABLEKS R19 R2 K57 ["genreInfo"]
  GETTABLEKS R18 R19 K61 ["imageSize"]
  GETTABLEKS R20 R2 K57 ["genreInfo"]
  GETTABLEKS R19 R20 K61 ["imageSize"]
  CALL R17 2 1
  SETTABLEKS R17 R16 K11 ["Size"]
  LOADN R17 0
  SETTABLEKS R17 R16 K55 ["LayoutOrder"]
  CALL R14 2 1
  SETTABLEKS R14 R13 K50 ["InfoIcon"]
  GETUPVAL R15 0
  GETTABLEKS R14 R15 K8 ["createElement"]
  LOADK R15 K62 ["TextLabel"]
  GETUPVAL R18 2
  GETTABLEKS R17 R18 K63 ["Dictionary"]
  GETTABLEKS R16 R17 K64 ["join"]
  GETTABLEKS R18 R2 K65 ["fontStyle"]
  GETTABLEKS R17 R18 K66 ["Normal"]
  DUPTABLE R18 K72 [{"Text", "TextColor3", "TextXAlignment", "TextYAlignment", "TextWrapped", "AutomaticSize", "BackgroundTransparency", "LayoutOrder"}]
  SETTABLEKS R4 R18 K67 ["Text"]
  GETTABLEKS R20 R2 K22 ["eligibilityBanner"]
  GETTABLEKS R19 R20 K73 ["textColor"]
  SETTABLEKS R19 R18 K68 ["TextColor3"]
  GETIMPORT R19 K74 [Enum.TextXAlignment.Left]
  SETTABLEKS R19 R18 K69 ["TextXAlignment"]
  GETIMPORT R19 K75 [Enum.TextYAlignment.Center]
  SETTABLEKS R19 R18 K70 ["TextYAlignment"]
  LOADB R19 1
  SETTABLEKS R19 R18 K71 ["TextWrapped"]
  GETIMPORT R19 K77 [Enum.AutomaticSize.XY]
  SETTABLEKS R19 R18 K12 ["AutomaticSize"]
  LOADN R19 1
  SETTABLEKS R19 R18 K14 ["BackgroundTransparency"]
  LOADN R19 1
  SETTABLEKS R19 R18 K55 ["LayoutOrder"]
  CALL R16 2 -1
  CALL R14 -1 1
  SETTABLEKS R14 R13 K51 ["BannerText"]
  CALL R10 3 1
  SETTABLEKS R10 R9 K26 ["LeftContent"]
  GETUPVAL R11 0
  GETTABLEKS R10 R11 K8 ["createElement"]
  GETUPVAL R11 3
  DUPTABLE R12 K81 [{"Text", "Style", "Size", "Position", "AnchorPoint", "OnClick"}]
  SETTABLEKS R5 R12 K67 ["Text"]
  LOADK R13 K27 ["ManageButton"]
  SETTABLEKS R13 R12 K78 ["Style"]
  GETIMPORT R13 K60 [UDim2.fromOffset]
  LOADN R14 80
  LOADN R15 32
  CALL R13 2 1
  SETTABLEKS R13 R12 K11 ["Size"]
  GETIMPORT R13 K18 [UDim2.new]
  LOADN R14 1
  LOADN R15 240
  LOADK R16 K82 [0.5]
  LOADN R17 0
  CALL R13 4 1
  SETTABLEKS R13 R12 K10 ["Position"]
  GETIMPORT R13 K84 [Vector2.new]
  LOADN R14 1
  LOADK R15 K82 [0.5]
  CALL R13 2 1
  SETTABLEKS R13 R12 K79 ["AnchorPoint"]
  GETTABLEKS R13 R0 K85 ["onManageClick"]
  SETTABLEKS R13 R12 K80 ["OnClick"]
  CALL R10 2 1
  SETTABLEKS R10 R9 K27 ["ManageButton"]
  CALL R6 3 -1
  RETURN R6 -1

MAIN:
  PREPVARARGS 0
  GETIMPORT R3 K1 [script]
  GETTABLEKS R2 R3 K2 ["Parent"]
  GETTABLEKS R1 R2 K2 ["Parent"]
  GETTABLEKS R0 R1 K2 ["Parent"]
  GETIMPORT R1 K4 [game]
  LOADK R3 K5 ["GuiService"]
  NAMECALL R1 R1 K6 ["GetService"]
  CALL R1 2 1
  GETIMPORT R2 K8 [require]
  GETTABLEKS R4 R0 K9 ["Packages"]
  GETTABLEKS R3 R4 K10 ["Roact"]
  CALL R2 1 1
  GETIMPORT R3 K8 [require]
  GETTABLEKS R5 R0 K9 ["Packages"]
  GETTABLEKS R4 R5 K11 ["Framework"]
  CALL R3 1 1
  GETTABLEKS R4 R3 K12 ["ContextServices"]
  GETTABLEKS R5 R4 K13 ["withContext"]
  GETIMPORT R6 K8 [require]
  GETTABLEKS R8 R0 K9 ["Packages"]
  GETTABLEKS R7 R8 K14 ["Cryo"]
  CALL R6 1 1
  GETTABLEKS R7 R3 K15 ["UI"]
  GETTABLEKS R8 R7 K16 ["Button"]
  GETTABLEKS R9 R7 K17 ["Pane"]
  GETIMPORT R10 K4 [game]
  LOADK R12 K18 ["StudioPublishEligibilityBannerLink"]
  NAMECALL R10 R10 K19 ["GetFastString"]
  CALL R10 2 1
  GETTABLEKS R11 R2 K20 ["PureComponent"]
  LOADK R13 K21 ["EligibilityBanner"]
  NAMECALL R11 R11 K22 ["extend"]
  CALL R11 2 1
  DUPCLOSURE R12 K23 [PROTO_1]
  CAPTURE VAL R1
  CAPTURE VAL R10
  SETTABLEKS R12 R11 K24 ["init"]
  DUPCLOSURE R12 K25 [PROTO_2]
  CAPTURE VAL R2
  CAPTURE VAL R9
  CAPTURE VAL R6
  CAPTURE VAL R8
  SETTABLEKS R12 R11 K26 ["render"]
  MOVE R12 R5
  DUPTABLE R13 K29 [{"Localization", "Stylizer"}]
  GETTABLEKS R14 R4 K27 ["Localization"]
  SETTABLEKS R14 R13 K27 ["Localization"]
  GETTABLEKS R14 R4 K28 ["Stylizer"]
  SETTABLEKS R14 R13 K28 ["Stylizer"]
  CALL R12 1 1
  MOVE R13 R11
  CALL R12 1 1
  MOVE R11 R12
  RETURN R11 1
